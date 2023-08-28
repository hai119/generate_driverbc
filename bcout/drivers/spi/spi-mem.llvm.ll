; ModuleID = '../bcout/drivers/spi/spi-mem.llvm.bc'
source_filename = "drivers/spi/spi-mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i64 (%struct.spi_device*)*, i64 (%struct.spi_device*)*, %struct.mutex, %struct.spinlock, %struct.mutex, i8, i32 (%struct.spi_device*)*, i32 (%struct.spi_device*, %struct.spi_delay*, %struct.spi_delay*, %struct.spi_delay*)*, i32 (%struct.spi_device*, %struct.spi_message*)*, void (%struct.spi_device*)*, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i8, %struct.kthread_worker*, %struct.kthread_work, %struct.spinlock, %struct.list_head, %struct.spi_message*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i64, i32 (%struct.spi_controller*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*)*, void (%struct.spi_device*, i1)*, i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, void (%struct.spi_controller*, %struct.spi_message*)*, %struct.spi_controller_mem_ops*, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32*, %struct.gpio_desc**, i8, i8, i8, %struct.spi_statistics, %struct.dma_chan*, %struct.dma_chan*, i8*, i8*, i32 (%struct.spi_controller*, i32)*, i8, i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.1, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
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
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.5, %union.anon.6 }
%union.anon.5 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.6 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.spi_device = type { %struct.device, %struct.spi_controller*, %struct.spi_controller*, i32, i8, i8, i8, i32, i32, i8*, i8*, [32 x i8], i8*, i32, %struct.gpio_desc*, %struct.spi_delay, %struct.spi_statistics }
%struct.gpio_desc = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.spi_transfer = type { i8*, i8*, i32, i64, i64, %struct.sg_table, %struct.sg_table, i8, i8, i16, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, %struct.ptp_system_timestamp*, i8, %struct.list_head, i16 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spi_message = type { %struct.list_head, %struct.spi_device*, i8, void (i8*)*, i8*, i32, i32, i32, %struct.list_head, i8*, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spi_controller_mem_ops = type { i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i1 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i8* (%struct.spi_mem*)*, i32 (%struct.spi_mem_dirmap_desc*)*, void (%struct.spi_mem_dirmap_desc*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)* }
%struct.spi_mem = type { %struct.spi_device*, i8*, i8* }
%struct.spi_mem_dirmap_desc = type { %struct.spi_mem*, %struct.spi_mem_dirmap_info, i32, i8* }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.spi_mem_op = type { %struct.anon.68, %struct.anon.69, %struct.anon.70, %struct.anon.71 }
%struct.anon.68 = type { i8, i8, i8, i16 }
%struct.anon.69 = type { i8, i8, i8, i64 }
%struct.anon.70 = type { i8, i8, i8 }
%struct.anon.71 = type { i8, i8, i32, i32, %union.anon.72 }
%union.anon.72 = type { i8* }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [17 x i64], i64 }
%struct.dma_chan = type { %struct.dma_device*, %struct.device*, i32, i32, i32, %struct.dma_chan_dev*, i8*, %struct.list_head, %struct.dma_chan_percpu*, i32, i32, %struct.dma_router*, i8*, i8* }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, %struct.device*, %struct.module*, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, i32 (%struct.dma_chan*)*, void (%struct.dma_chan*)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64*, i32, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64*, i32, i64, i32*, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64*, i64*, i32, i8*, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64*, i64*, i32, i8*, i64, i32*, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i32, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64, i8*)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.dma_interleaved_template*, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64)*, void (%struct.dma_chan*, %struct.dma_slave_caps*)*, i32 (%struct.dma_chan*, %struct.dma_slave_config*)*, i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)*, void (%struct.dma_chan*)*, i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)*, void (%struct.dma_chan*)*, void (%struct.dma_device*)* }
%struct.dma_filter = type { i1 (%struct.dma_chan*, i8*)*, i32, %struct.dma_slave_map* }
%struct.dma_slave_map = type { i8*, i8*, i8* }
%struct.dma_cap_mask_t = type { [1 x i64] }
%struct.ida = type { %struct.xarray }
%struct.dma_async_tx_descriptor = type { i32, i32, i64, %struct.dma_chan*, i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)*, void (i8*)*, void (i8*, %struct.dmaengine_result*)*, i8*, %struct.dmaengine_unmap_data*, i32, %struct.dma_descriptor_metadata_ops* }
%struct.dmaengine_result = type { i32, i32 }
%struct.dmaengine_unmap_data = type { i8, i8, i8, i8, %struct.device*, %struct.kref, i64, [0 x i64] }
%struct.dma_descriptor_metadata_ops = type { i32 (%struct.dma_async_tx_descriptor*, i8*, i64)*, i8* (%struct.dma_async_tx_descriptor*, i64*, i64*)*, i32 (%struct.dma_async_tx_descriptor*, i64)* }
%struct.dma_interleaved_template = type { i64, i64, i32, i8, i8, i8, i8, i64, i64, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i64, i64, i64, i64 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_slave_config = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_chan_dev = type { %struct.dma_chan*, %struct.device, i32 }
%struct.dma_chan_percpu = type { i64, i64 }
%struct.dma_router = type { %struct.device*, void (%struct.device*, i8*)* }
%struct.spi_mem_driver = type { %struct.spi_driver, i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)*, void (%struct.spi_mem*)* }
%struct.spi_driver = type { %struct.spi_device_id*, i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)*, void (%struct.spi_device*)*, %struct.device_driver }
%struct.spi_device_id = type { [32 x i8], i64 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to power device: %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"drivers/spi/spi-mem.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @spi_controller_dma_map_mem_op_data(%struct.spi_controller* %ctlr, %struct.spi_mem_op* %op, %struct.sg_table* %sgt) #0 !dbg !4475 {
entry:
  %retval = alloca i32, align 4
  %ctlr.addr = alloca %struct.spi_controller*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dmadev = alloca %struct.device*, align 8
  store %struct.spi_controller* %ctlr, %struct.spi_controller** %ctlr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr.addr, metadata !4479, metadata !DIExpression()), !dbg !4480
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !4481, metadata !DIExpression()), !dbg !4482
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.declare(metadata %struct.device** %dmadev, metadata !4485, metadata !DIExpression()), !dbg !4486
  %0 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4487
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %0, i32 0, i32 3, !dbg !4489
  %nbytes = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 3, !dbg !4490
  %1 = load i32, i32* %nbytes, align 8, !dbg !4490
  %tobool = icmp ne i32 %1, 0, !dbg !4487
  br i1 %tobool, label %if.end, label %if.then, !dbg !4491

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4492
  br label %return, !dbg !4492

if.end:                                           ; preds = %entry
  %2 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4493
  %data1 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %2, i32 0, i32 3, !dbg !4495
  %dir = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data1, i32 0, i32 2, !dbg !4496
  %3 = load i32, i32* %dir, align 4, !dbg !4496
  %cmp = icmp eq i32 %3, 2, !dbg !4497
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4498

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4499
  %dma_tx = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %4, i32 0, i32 60, !dbg !4500
  %5 = load %struct.dma_chan*, %struct.dma_chan** %dma_tx, align 8, !dbg !4500
  %tobool2 = icmp ne %struct.dma_chan* %5, null, !dbg !4499
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !4501

if.then3:                                         ; preds = %land.lhs.true
  %6 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4502
  %dma_tx4 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 60, !dbg !4503
  %7 = load %struct.dma_chan*, %struct.dma_chan** %dma_tx4, align 8, !dbg !4503
  %device = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0, !dbg !4504
  %8 = load %struct.dma_device*, %struct.dma_device** %device, align 8, !dbg !4504
  %dev = getelementptr inbounds %struct.dma_device, %struct.dma_device* %8, i32 0, i32 15, !dbg !4505
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4505
  store %struct.device* %9, %struct.device** %dmadev, align 8, !dbg !4506
  br label %if.end17, !dbg !4507

if.else:                                          ; preds = %land.lhs.true, %if.end
  %10 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4508
  %data5 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 3, !dbg !4510
  %dir6 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data5, i32 0, i32 2, !dbg !4511
  %11 = load i32, i32* %dir6, align 4, !dbg !4511
  %cmp7 = icmp eq i32 %11, 1, !dbg !4512
  br i1 %cmp7, label %land.lhs.true8, label %if.else14, !dbg !4513

land.lhs.true8:                                   ; preds = %if.else
  %12 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4514
  %dma_rx = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 61, !dbg !4515
  %13 = load %struct.dma_chan*, %struct.dma_chan** %dma_rx, align 8, !dbg !4515
  %tobool9 = icmp ne %struct.dma_chan* %13, null, !dbg !4514
  br i1 %tobool9, label %if.then10, label %if.else14, !dbg !4516

if.then10:                                        ; preds = %land.lhs.true8
  %14 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4517
  %dma_rx11 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %14, i32 0, i32 61, !dbg !4518
  %15 = load %struct.dma_chan*, %struct.dma_chan** %dma_rx11, align 8, !dbg !4518
  %device12 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %15, i32 0, i32 0, !dbg !4519
  %16 = load %struct.dma_device*, %struct.dma_device** %device12, align 8, !dbg !4519
  %dev13 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %16, i32 0, i32 15, !dbg !4520
  %17 = load %struct.device*, %struct.device** %dev13, align 8, !dbg !4520
  store %struct.device* %17, %struct.device** %dmadev, align 8, !dbg !4521
  br label %if.end16, !dbg !4522

if.else14:                                        ; preds = %land.lhs.true8, %if.else
  %18 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4523
  %dev15 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %18, i32 0, i32 0, !dbg !4524
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 1, !dbg !4525
  %19 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4525
  store %struct.device* %19, %struct.device** %dmadev, align 8, !dbg !4526
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then3
  %20 = load %struct.device*, %struct.device** %dmadev, align 8, !dbg !4527
  %tobool18 = icmp ne %struct.device* %20, null, !dbg !4527
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4529

if.then19:                                        ; preds = %if.end17
  store i32 -22, i32* %retval, align 4, !dbg !4530
  br label %return, !dbg !4530

if.end20:                                         ; preds = %if.end17
  %21 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4531
  %22 = load %struct.device*, %struct.device** %dmadev, align 8, !dbg !4532
  %23 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !4533
  %24 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4534
  %data21 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %24, i32 0, i32 3, !dbg !4535
  %buf = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data21, i32 0, i32 4, !dbg !4536
  %in = bitcast %union.anon.72* %buf to i8**, !dbg !4537
  %25 = load i8*, i8** %in, align 8, !dbg !4537
  %26 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4538
  %data22 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %26, i32 0, i32 3, !dbg !4539
  %nbytes23 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data22, i32 0, i32 3, !dbg !4540
  %27 = load i32, i32* %nbytes23, align 8, !dbg !4540
  %conv = zext i32 %27 to i64, !dbg !4538
  %28 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4541
  %data24 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %28, i32 0, i32 3, !dbg !4542
  %dir25 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data24, i32 0, i32 2, !dbg !4543
  %29 = load i32, i32* %dir25, align 4, !dbg !4543
  %cmp26 = icmp eq i32 %29, 1, !dbg !4544
  %30 = zext i1 %cmp26 to i64, !dbg !4541
  %cond = select i1 %cmp26, i32 2, i32 1, !dbg !4541
  %call = call i32 @spi_map_buf(%struct.spi_controller* %21, %struct.device* %22, %struct.sg_table* %23, i8* %25, i64 %conv, i32 %cond) #8, !dbg !4545
  store i32 %call, i32* %retval, align 4, !dbg !4546
  br label %return, !dbg !4546

return:                                           ; preds = %if.end20, %if.then19, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !4547
  ret i32 %31, !dbg !4547
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @spi_map_buf(%struct.spi_controller*, %struct.device*, %struct.sg_table*, i8*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @spi_controller_dma_unmap_mem_op_data(%struct.spi_controller* %ctlr, %struct.spi_mem_op* %op, %struct.sg_table* %sgt) #0 !dbg !4548 {
entry:
  %ctlr.addr = alloca %struct.spi_controller*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dmadev = alloca %struct.device*, align 8
  store %struct.spi_controller* %ctlr, %struct.spi_controller** %ctlr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr.addr, metadata !4551, metadata !DIExpression()), !dbg !4552
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.declare(metadata %struct.device** %dmadev, metadata !4557, metadata !DIExpression()), !dbg !4558
  %0 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4559
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %0, i32 0, i32 3, !dbg !4561
  %nbytes = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 3, !dbg !4562
  %1 = load i32, i32* %nbytes, align 8, !dbg !4562
  %tobool = icmp ne i32 %1, 0, !dbg !4559
  br i1 %tobool, label %if.end, label %if.then, !dbg !4563

if.then:                                          ; preds = %entry
  br label %return, !dbg !4564

if.end:                                           ; preds = %entry
  %2 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4565
  %data1 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %2, i32 0, i32 3, !dbg !4567
  %dir = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data1, i32 0, i32 2, !dbg !4568
  %3 = load i32, i32* %dir, align 4, !dbg !4568
  %cmp = icmp eq i32 %3, 2, !dbg !4569
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4570

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4571
  %dma_tx = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %4, i32 0, i32 60, !dbg !4572
  %5 = load %struct.dma_chan*, %struct.dma_chan** %dma_tx, align 8, !dbg !4572
  %tobool2 = icmp ne %struct.dma_chan* %5, null, !dbg !4571
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !4573

if.then3:                                         ; preds = %land.lhs.true
  %6 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4574
  %dma_tx4 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 60, !dbg !4575
  %7 = load %struct.dma_chan*, %struct.dma_chan** %dma_tx4, align 8, !dbg !4575
  %device = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0, !dbg !4576
  %8 = load %struct.dma_device*, %struct.dma_device** %device, align 8, !dbg !4576
  %dev = getelementptr inbounds %struct.dma_device, %struct.dma_device* %8, i32 0, i32 15, !dbg !4577
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4577
  store %struct.device* %9, %struct.device** %dmadev, align 8, !dbg !4578
  br label %if.end17, !dbg !4579

if.else:                                          ; preds = %land.lhs.true, %if.end
  %10 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4580
  %data5 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 3, !dbg !4582
  %dir6 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data5, i32 0, i32 2, !dbg !4583
  %11 = load i32, i32* %dir6, align 4, !dbg !4583
  %cmp7 = icmp eq i32 %11, 1, !dbg !4584
  br i1 %cmp7, label %land.lhs.true8, label %if.else14, !dbg !4585

land.lhs.true8:                                   ; preds = %if.else
  %12 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4586
  %dma_rx = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 61, !dbg !4587
  %13 = load %struct.dma_chan*, %struct.dma_chan** %dma_rx, align 8, !dbg !4587
  %tobool9 = icmp ne %struct.dma_chan* %13, null, !dbg !4586
  br i1 %tobool9, label %if.then10, label %if.else14, !dbg !4588

if.then10:                                        ; preds = %land.lhs.true8
  %14 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4589
  %dma_rx11 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %14, i32 0, i32 61, !dbg !4590
  %15 = load %struct.dma_chan*, %struct.dma_chan** %dma_rx11, align 8, !dbg !4590
  %device12 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %15, i32 0, i32 0, !dbg !4591
  %16 = load %struct.dma_device*, %struct.dma_device** %device12, align 8, !dbg !4591
  %dev13 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %16, i32 0, i32 15, !dbg !4592
  %17 = load %struct.device*, %struct.device** %dev13, align 8, !dbg !4592
  store %struct.device* %17, %struct.device** %dmadev, align 8, !dbg !4593
  br label %if.end16, !dbg !4594

if.else14:                                        ; preds = %land.lhs.true8, %if.else
  %18 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4595
  %dev15 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %18, i32 0, i32 0, !dbg !4596
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 1, !dbg !4597
  %19 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4597
  store %struct.device* %19, %struct.device** %dmadev, align 8, !dbg !4598
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then3
  %20 = load %struct.spi_controller*, %struct.spi_controller** %ctlr.addr, align 8, !dbg !4599
  %21 = load %struct.device*, %struct.device** %dmadev, align 8, !dbg !4600
  %22 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !4601
  %23 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4602
  %data18 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %23, i32 0, i32 3, !dbg !4603
  %dir19 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data18, i32 0, i32 2, !dbg !4604
  %24 = load i32, i32* %dir19, align 4, !dbg !4604
  %cmp20 = icmp eq i32 %24, 1, !dbg !4605
  %25 = zext i1 %cmp20 to i64, !dbg !4602
  %cond = select i1 %cmp20, i32 2, i32 1, !dbg !4602
  call void @spi_unmap_buf(%struct.spi_controller* %20, %struct.device* %21, %struct.sg_table* %22, i32 %cond) #8, !dbg !4606
  br label %return, !dbg !4607

return:                                           ; preds = %if.end17, %if.then
  ret void, !dbg !4607
}

; Function Attrs: noredzone
declare dso_local void @spi_unmap_buf(%struct.spi_controller*, %struct.device*, %struct.sg_table*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @spi_mem_default_supports_op(%struct.spi_mem* %mem, %struct.spi_mem_op* %op) #0 !dbg !4608 {
entry:
  %retval = alloca i1, align 1
  %mem.addr = alloca %struct.spi_mem*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4613
  %1 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4615
  %cmd = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %1, i32 0, i32 0, !dbg !4616
  %buswidth = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd, i32 0, i32 1, !dbg !4617
  %2 = load i8, i8* %buswidth, align 1, !dbg !4617
  %call = call i32 @spi_check_buswidth_req(%struct.spi_mem* %0, i8 zeroext %2, i1 zeroext true) #8, !dbg !4618
  %tobool = icmp ne i32 %call, 0, !dbg !4618
  br i1 %tobool, label %if.then, label %if.end, !dbg !4619

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4620
  br label %return, !dbg !4620

if.end:                                           ; preds = %entry
  %3 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4621
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %3, i32 0, i32 1, !dbg !4623
  %nbytes = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr, i32 0, i32 0, !dbg !4624
  %4 = load i8, i8* %nbytes, align 8, !dbg !4624
  %conv = zext i8 %4 to i32, !dbg !4621
  %tobool1 = icmp ne i32 %conv, 0, !dbg !4621
  br i1 %tobool1, label %land.lhs.true, label %if.end7, !dbg !4625

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4626
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4627
  %addr2 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 1, !dbg !4628
  %buswidth3 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr2, i32 0, i32 1, !dbg !4629
  %7 = load i8, i8* %buswidth3, align 1, !dbg !4629
  %call4 = call i32 @spi_check_buswidth_req(%struct.spi_mem* %5, i8 zeroext %7, i1 zeroext true) #8, !dbg !4630
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4630
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4631

if.then6:                                         ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !4632
  br label %return, !dbg !4632

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4633
  %dummy = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %8, i32 0, i32 2, !dbg !4635
  %nbytes8 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy, i32 0, i32 0, !dbg !4636
  %9 = load i8, i8* %nbytes8, align 8, !dbg !4636
  %conv9 = zext i8 %9 to i32, !dbg !4633
  %tobool10 = icmp ne i32 %conv9, 0, !dbg !4633
  br i1 %tobool10, label %land.lhs.true11, label %if.end17, !dbg !4637

land.lhs.true11:                                  ; preds = %if.end7
  %10 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4638
  %11 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4639
  %dummy12 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %11, i32 0, i32 2, !dbg !4640
  %buswidth13 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy12, i32 0, i32 1, !dbg !4641
  %12 = load i8, i8* %buswidth13, align 1, !dbg !4641
  %call14 = call i32 @spi_check_buswidth_req(%struct.spi_mem* %10, i8 zeroext %12, i1 zeroext true) #8, !dbg !4642
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4642
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4643

if.then16:                                        ; preds = %land.lhs.true11
  store i1 false, i1* %retval, align 1, !dbg !4644
  br label %return, !dbg !4644

if.end17:                                         ; preds = %land.lhs.true11, %if.end7
  %13 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4645
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %13, i32 0, i32 3, !dbg !4647
  %dir = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 2, !dbg !4648
  %14 = load i32, i32* %dir, align 4, !dbg !4648
  %cmp = icmp ne i32 %14, 0, !dbg !4649
  br i1 %cmp, label %land.lhs.true19, label %if.end29, !dbg !4650

land.lhs.true19:                                  ; preds = %if.end17
  %15 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4651
  %16 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4652
  %data20 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %16, i32 0, i32 3, !dbg !4653
  %buswidth21 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data20, i32 0, i32 0, !dbg !4654
  %17 = load i8, i8* %buswidth21, align 8, !dbg !4654
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4655
  %data22 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 3, !dbg !4656
  %dir23 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data22, i32 0, i32 2, !dbg !4657
  %19 = load i32, i32* %dir23, align 4, !dbg !4657
  %cmp24 = icmp eq i32 %19, 2, !dbg !4658
  %call26 = call i32 @spi_check_buswidth_req(%struct.spi_mem* %15, i8 zeroext %17, i1 zeroext %cmp24) #8, !dbg !4659
  %tobool27 = icmp ne i32 %call26, 0, !dbg !4659
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4660

if.then28:                                        ; preds = %land.lhs.true19
  store i1 false, i1* %retval, align 1, !dbg !4661
  br label %return, !dbg !4661

if.end29:                                         ; preds = %land.lhs.true19, %if.end17
  %20 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4662
  %cmd30 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %20, i32 0, i32 0, !dbg !4664
  %dtr = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd30, i32 0, i32 2, !dbg !4665
  %bf.load = load i8, i8* %dtr, align 2, !dbg !4665
  %bf.clear = and i8 %bf.load, 1, !dbg !4665
  %conv31 = zext i8 %bf.clear to i32, !dbg !4662
  %tobool32 = icmp ne i32 %conv31, 0, !dbg !4662
  br i1 %tobool32, label %if.then53, label %lor.lhs.false, !dbg !4666

lor.lhs.false:                                    ; preds = %if.end29
  %21 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4667
  %addr33 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %21, i32 0, i32 1, !dbg !4668
  %dtr34 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr33, i32 0, i32 2, !dbg !4669
  %bf.load35 = load i8, i8* %dtr34, align 2, !dbg !4669
  %bf.clear36 = and i8 %bf.load35, 1, !dbg !4669
  %conv37 = zext i8 %bf.clear36 to i32, !dbg !4667
  %tobool38 = icmp ne i32 %conv37, 0, !dbg !4667
  br i1 %tobool38, label %if.then53, label %lor.lhs.false39, !dbg !4670

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %22 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4671
  %dummy40 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %22, i32 0, i32 2, !dbg !4672
  %dtr41 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy40, i32 0, i32 2, !dbg !4673
  %bf.load42 = load i8, i8* %dtr41, align 2, !dbg !4673
  %bf.clear43 = and i8 %bf.load42, 1, !dbg !4673
  %conv44 = zext i8 %bf.clear43 to i32, !dbg !4671
  %tobool45 = icmp ne i32 %conv44, 0, !dbg !4671
  br i1 %tobool45, label %if.then53, label %lor.lhs.false46, !dbg !4674

lor.lhs.false46:                                  ; preds = %lor.lhs.false39
  %23 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4675
  %data47 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %23, i32 0, i32 3, !dbg !4676
  %dtr48 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data47, i32 0, i32 1, !dbg !4677
  %bf.load49 = load i8, i8* %dtr48, align 1, !dbg !4677
  %bf.clear50 = and i8 %bf.load49, 1, !dbg !4677
  %conv51 = zext i8 %bf.clear50 to i32, !dbg !4675
  %tobool52 = icmp ne i32 %conv51, 0, !dbg !4675
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4678

if.then53:                                        ; preds = %lor.lhs.false46, %lor.lhs.false39, %lor.lhs.false, %if.end29
  store i1 false, i1* %retval, align 1, !dbg !4679
  br label %return, !dbg !4679

if.end54:                                         ; preds = %lor.lhs.false46
  %24 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4680
  %cmd55 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %24, i32 0, i32 0, !dbg !4682
  %nbytes56 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd55, i32 0, i32 0, !dbg !4683
  %25 = load i8, i8* %nbytes56, align 8, !dbg !4683
  %conv57 = zext i8 %25 to i32, !dbg !4680
  %cmp58 = icmp ne i32 %conv57, 1, !dbg !4684
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !4685

if.then60:                                        ; preds = %if.end54
  store i1 false, i1* %retval, align 1, !dbg !4686
  br label %return, !dbg !4686

if.end61:                                         ; preds = %if.end54
  store i1 true, i1* %retval, align 1, !dbg !4687
  br label %return, !dbg !4687

return:                                           ; preds = %if.end61, %if.then60, %if.then53, %if.then28, %if.then16, %if.then6, %if.then
  %26 = load i1, i1* %retval, align 1, !dbg !4688
  ret i1 %26, !dbg !4688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spi_check_buswidth_req(%struct.spi_mem* %mem, i8 zeroext %buswidth, i1 zeroext %tx) #0 !dbg !4689 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.spi_mem*, align 8
  %buswidth.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %mode = alloca i32, align 4
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !4692, metadata !DIExpression()), !dbg !4693
  store i8 %buswidth, i8* %buswidth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %buswidth.addr, metadata !4694, metadata !DIExpression()), !dbg !4695
  %frombool = zext i1 %tx to i8
  store i8 %frombool, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !4696, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !4698, metadata !DIExpression()), !dbg !4699
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4700
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 0, !dbg !4701
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !4701
  %mode1 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 7, !dbg !4702
  %2 = load i32, i32* %mode1, align 8, !dbg !4702
  store i32 %2, i32* %mode, align 4, !dbg !4699
  %3 = load i8, i8* %buswidth.addr, align 1, !dbg !4703
  %conv = zext i8 %3 to i32, !dbg !4703
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb9
    i32 8, label %sw.bb22
  ], !dbg !4704

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4705
  br label %return, !dbg !4705

sw.bb2:                                           ; preds = %entry
  %4 = load i8, i8* %tx.addr, align 1, !dbg !4707
  %tobool = trunc i8 %4 to i1, !dbg !4707
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !4709

land.lhs.true:                                    ; preds = %sw.bb2
  %5 = load i32, i32* %mode, align 4, !dbg !4710
  %and = and i32 %5, 8960, !dbg !4711
  %tobool4 = icmp ne i32 %and, 0, !dbg !4711
  br i1 %tobool4, label %if.then, label %lor.lhs.false, !dbg !4712

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb2
  %6 = load i8, i8* %tx.addr, align 1, !dbg !4713
  %tobool5 = trunc i8 %6 to i1, !dbg !4713
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !4714

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %7 = load i32, i32* %mode, align 4, !dbg !4715
  %and7 = and i32 %7, 19456, !dbg !4716
  %tobool8 = icmp ne i32 %and7, 0, !dbg !4716
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4717

if.then:                                          ; preds = %land.lhs.true6, %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4718
  br label %return, !dbg !4718

if.end:                                           ; preds = %land.lhs.true6, %lor.lhs.false
  br label %sw.epilog, !dbg !4719

sw.bb9:                                           ; preds = %entry
  %8 = load i8, i8* %tx.addr, align 1, !dbg !4720
  %tobool10 = trunc i8 %8 to i1, !dbg !4720
  br i1 %tobool10, label %land.lhs.true12, label %lor.lhs.false15, !dbg !4722

land.lhs.true12:                                  ; preds = %sw.bb9
  %9 = load i32, i32* %mode, align 4, !dbg !4723
  %and13 = and i32 %9, 8704, !dbg !4724
  %tobool14 = icmp ne i32 %and13, 0, !dbg !4724
  br i1 %tobool14, label %if.then20, label %lor.lhs.false15, !dbg !4725

lor.lhs.false15:                                  ; preds = %land.lhs.true12, %sw.bb9
  %10 = load i8, i8* %tx.addr, align 1, !dbg !4726
  %tobool16 = trunc i8 %10 to i1, !dbg !4726
  br i1 %tobool16, label %if.end21, label %land.lhs.true17, !dbg !4727

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %11 = load i32, i32* %mode, align 4, !dbg !4728
  %and18 = and i32 %11, 18432, !dbg !4729
  %tobool19 = icmp ne i32 %and18, 0, !dbg !4729
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4730

if.then20:                                        ; preds = %land.lhs.true17, %land.lhs.true12
  store i32 0, i32* %retval, align 4, !dbg !4731
  br label %return, !dbg !4731

if.end21:                                         ; preds = %land.lhs.true17, %lor.lhs.false15
  br label %sw.epilog, !dbg !4732

sw.bb22:                                          ; preds = %entry
  %12 = load i8, i8* %tx.addr, align 1, !dbg !4733
  %tobool23 = trunc i8 %12 to i1, !dbg !4733
  br i1 %tobool23, label %land.lhs.true25, label %lor.lhs.false28, !dbg !4735

land.lhs.true25:                                  ; preds = %sw.bb22
  %13 = load i32, i32* %mode, align 4, !dbg !4736
  %and26 = and i32 %13, 8192, !dbg !4737
  %tobool27 = icmp ne i32 %and26, 0, !dbg !4737
  br i1 %tobool27, label %if.then33, label %lor.lhs.false28, !dbg !4738

lor.lhs.false28:                                  ; preds = %land.lhs.true25, %sw.bb22
  %14 = load i8, i8* %tx.addr, align 1, !dbg !4739
  %tobool29 = trunc i8 %14 to i1, !dbg !4739
  br i1 %tobool29, label %if.end34, label %land.lhs.true30, !dbg !4740

land.lhs.true30:                                  ; preds = %lor.lhs.false28
  %15 = load i32, i32* %mode, align 4, !dbg !4741
  %and31 = and i32 %15, 16384, !dbg !4742
  %tobool32 = icmp ne i32 %and31, 0, !dbg !4742
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !4743

if.then33:                                        ; preds = %land.lhs.true30, %land.lhs.true25
  store i32 0, i32* %retval, align 4, !dbg !4744
  br label %return, !dbg !4744

if.end34:                                         ; preds = %land.lhs.true30, %lor.lhs.false28
  br label %sw.epilog, !dbg !4745

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !4746

sw.epilog:                                        ; preds = %sw.default, %if.end34, %if.end21, %if.end
  store i32 -524, i32* %retval, align 4, !dbg !4747
  br label %return, !dbg !4747

return:                                           ; preds = %sw.epilog, %if.then33, %if.then20, %if.then, %sw.bb
  %16 = load i32, i32* %retval, align 4, !dbg !4748
  ret i32 %16, !dbg !4748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @spi_mem_supports_op(%struct.spi_mem* %mem, %struct.spi_mem_op* %op) #0 !dbg !4749 {
entry:
  %retval = alloca i1, align 1
  %mem.addr = alloca %struct.spi_mem*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !4750, metadata !DIExpression()), !dbg !4751
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  %0 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4754
  %call = call i32 @spi_mem_check_op(%struct.spi_mem_op* %0) #8, !dbg !4756
  %tobool = icmp ne i32 %call, 0, !dbg !4756
  br i1 %tobool, label %if.then, label %if.end, !dbg !4757

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4758
  br label %return, !dbg !4758

if.end:                                           ; preds = %entry
  %1 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4759
  %2 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4760
  %call1 = call zeroext i1 @spi_mem_internal_supports_op(%struct.spi_mem* %1, %struct.spi_mem_op* %2) #8, !dbg !4761
  store i1 %call1, i1* %retval, align 1, !dbg !4762
  br label %return, !dbg !4762

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval, align 1, !dbg !4763
  ret i1 %3, !dbg !4763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spi_mem_check_op(%struct.spi_mem_op* %op) #0 !dbg !4764 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.spi_mem_op*, align 8
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  %0 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4769
  %cmd = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %0, i32 0, i32 0, !dbg !4771
  %buswidth = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd, i32 0, i32 1, !dbg !4772
  %1 = load i8, i8* %buswidth, align 1, !dbg !4772
  %tobool = icmp ne i8 %1, 0, !dbg !4769
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4773

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4774
  %cmd1 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %2, i32 0, i32 0, !dbg !4775
  %nbytes = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd1, i32 0, i32 0, !dbg !4776
  %3 = load i8, i8* %nbytes, align 8, !dbg !4776
  %tobool2 = icmp ne i8 %3, 0, !dbg !4774
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4777

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4778
  br label %return, !dbg !4778

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4779
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %4, i32 0, i32 1, !dbg !4781
  %nbytes3 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr, i32 0, i32 0, !dbg !4782
  %5 = load i8, i8* %nbytes3, align 8, !dbg !4782
  %conv = zext i8 %5 to i32, !dbg !4779
  %tobool4 = icmp ne i32 %conv, 0, !dbg !4779
  br i1 %tobool4, label %land.lhs.true, label %lor.lhs.false8, !dbg !4783

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4784
  %addr5 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 1, !dbg !4785
  %buswidth6 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr5, i32 0, i32 1, !dbg !4786
  %7 = load i8, i8* %buswidth6, align 1, !dbg !4786
  %tobool7 = icmp ne i8 %7, 0, !dbg !4784
  br i1 %tobool7, label %lor.lhs.false8, label %if.then23, !dbg !4787

lor.lhs.false8:                                   ; preds = %land.lhs.true, %if.end
  %8 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4788
  %dummy = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %8, i32 0, i32 2, !dbg !4789
  %nbytes9 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy, i32 0, i32 0, !dbg !4790
  %9 = load i8, i8* %nbytes9, align 8, !dbg !4790
  %conv10 = zext i8 %9 to i32, !dbg !4788
  %tobool11 = icmp ne i32 %conv10, 0, !dbg !4788
  br i1 %tobool11, label %land.lhs.true12, label %lor.lhs.false16, !dbg !4791

land.lhs.true12:                                  ; preds = %lor.lhs.false8
  %10 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4792
  %dummy13 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 2, !dbg !4793
  %buswidth14 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy13, i32 0, i32 1, !dbg !4794
  %11 = load i8, i8* %buswidth14, align 1, !dbg !4794
  %tobool15 = icmp ne i8 %11, 0, !dbg !4792
  br i1 %tobool15, label %lor.lhs.false16, label %if.then23, !dbg !4795

lor.lhs.false16:                                  ; preds = %land.lhs.true12, %lor.lhs.false8
  %12 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4796
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %12, i32 0, i32 3, !dbg !4797
  %nbytes17 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 3, !dbg !4798
  %13 = load i32, i32* %nbytes17, align 8, !dbg !4798
  %tobool18 = icmp ne i32 %13, 0, !dbg !4796
  br i1 %tobool18, label %land.lhs.true19, label %if.end24, !dbg !4799

land.lhs.true19:                                  ; preds = %lor.lhs.false16
  %14 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4800
  %data20 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %14, i32 0, i32 3, !dbg !4801
  %buswidth21 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data20, i32 0, i32 0, !dbg !4802
  %15 = load i8, i8* %buswidth21, align 8, !dbg !4802
  %tobool22 = icmp ne i8 %15, 0, !dbg !4800
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !4803

if.then23:                                        ; preds = %land.lhs.true19, %land.lhs.true12, %land.lhs.true
  store i32 -22, i32* %retval, align 4, !dbg !4804
  br label %return, !dbg !4804

if.end24:                                         ; preds = %land.lhs.true19, %lor.lhs.false16
  %16 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4805
  %cmd25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %16, i32 0, i32 0, !dbg !4807
  %buswidth26 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd25, i32 0, i32 1, !dbg !4808
  %17 = load i8, i8* %buswidth26, align 1, !dbg !4808
  %call = call zeroext i1 @spi_mem_buswidth_is_valid(i8 zeroext %17) #8, !dbg !4809
  br i1 %call, label %lor.lhs.false27, label %if.then39, !dbg !4810

lor.lhs.false27:                                  ; preds = %if.end24
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4811
  %addr28 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 1, !dbg !4812
  %buswidth29 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr28, i32 0, i32 1, !dbg !4813
  %19 = load i8, i8* %buswidth29, align 1, !dbg !4813
  %call30 = call zeroext i1 @spi_mem_buswidth_is_valid(i8 zeroext %19) #8, !dbg !4814
  br i1 %call30, label %lor.lhs.false31, label %if.then39, !dbg !4815

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %20 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4816
  %dummy32 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %20, i32 0, i32 2, !dbg !4817
  %buswidth33 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy32, i32 0, i32 1, !dbg !4818
  %21 = load i8, i8* %buswidth33, align 1, !dbg !4818
  %call34 = call zeroext i1 @spi_mem_buswidth_is_valid(i8 zeroext %21) #8, !dbg !4819
  br i1 %call34, label %lor.lhs.false35, label %if.then39, !dbg !4820

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %22 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4821
  %data36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %22, i32 0, i32 3, !dbg !4822
  %buswidth37 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data36, i32 0, i32 0, !dbg !4823
  %23 = load i8, i8* %buswidth37, align 8, !dbg !4823
  %call38 = call zeroext i1 @spi_mem_buswidth_is_valid(i8 zeroext %23) #8, !dbg !4824
  br i1 %call38, label %if.end40, label %if.then39, !dbg !4825

if.then39:                                        ; preds = %lor.lhs.false35, %lor.lhs.false31, %lor.lhs.false27, %if.end24
  store i32 -22, i32* %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

if.end40:                                         ; preds = %lor.lhs.false35
  store i32 0, i32* %retval, align 4, !dbg !4827
  br label %return, !dbg !4827

return:                                           ; preds = %if.end40, %if.then39, %if.then23, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !4828
  ret i32 %24, !dbg !4828
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @spi_mem_internal_supports_op(%struct.spi_mem* %mem, %struct.spi_mem_op* %op) #0 !dbg !4829 {
entry:
  %retval = alloca i1, align 1
  %mem.addr = alloca %struct.spi_mem*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !4834, metadata !DIExpression()), !dbg !4835
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4836
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 0, !dbg !4837
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !4837
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 1, !dbg !4838
  %2 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !4838
  store %struct.spi_controller* %2, %struct.spi_controller** %ctlr, align 8, !dbg !4835
  %3 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !4839
  %mem_ops = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %3, i32 0, i32 50, !dbg !4841
  %4 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops, align 8, !dbg !4841
  %tobool = icmp ne %struct.spi_controller_mem_ops* %4, null, !dbg !4839
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4842

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !4843
  %mem_ops1 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %5, i32 0, i32 50, !dbg !4844
  %6 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops1, align 8, !dbg !4844
  %supports_op = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %6, i32 0, i32 1, !dbg !4845
  %7 = load i1 (%struct.spi_mem*, %struct.spi_mem_op*)*, i1 (%struct.spi_mem*, %struct.spi_mem_op*)** %supports_op, align 8, !dbg !4845
  %tobool2 = icmp ne i1 (%struct.spi_mem*, %struct.spi_mem_op*)* %7, null, !dbg !4843
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4846

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !4847
  %mem_ops3 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %8, i32 0, i32 50, !dbg !4848
  %9 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops3, align 8, !dbg !4848
  %supports_op4 = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %9, i32 0, i32 1, !dbg !4849
  %10 = load i1 (%struct.spi_mem*, %struct.spi_mem_op*)*, i1 (%struct.spi_mem*, %struct.spi_mem_op*)** %supports_op4, align 8, !dbg !4849
  %11 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4850
  %12 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4851
  %call = call zeroext i1 %10(%struct.spi_mem* %11, %struct.spi_mem_op* %12) #8, !dbg !4847
  store i1 %call, i1* %retval, align 1, !dbg !4852
  br label %return, !dbg !4852

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4853
  %14 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4854
  %call5 = call zeroext i1 @spi_mem_default_supports_op(%struct.spi_mem* %13, %struct.spi_mem_op* %14) #8, !dbg !4855
  store i1 %call5, i1* %retval, align 1, !dbg !4856
  br label %return, !dbg !4856

return:                                           ; preds = %if.end, %if.then
  %15 = load i1, i1* %retval, align 1, !dbg !4857
  ret i1 %15, !dbg !4857
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @spi_mem_exec_op(%struct.spi_mem* %mem, %struct.spi_mem_op* %op) #0 !dbg !4858 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.spi_mem*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  %tmpbufsize = alloca i32, align 4
  %xferpos = alloca i32, align 4
  %totalxferlen = alloca i32, align 4
  %ctlr = alloca %struct.spi_controller*, align 8
  %xfers = alloca [4 x %struct.spi_transfer], align 16
  %msg = alloca %struct.spi_message, align 8
  %tmpbuf = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !4859, metadata !DIExpression()), !dbg !4860
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !4861, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.declare(metadata i32* %tmpbufsize, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.declare(metadata i32* %xferpos, metadata !4865, metadata !DIExpression()), !dbg !4866
  store i32 0, i32* %xferpos, align 4, !dbg !4866
  call void @llvm.dbg.declare(metadata i32* %totalxferlen, metadata !4867, metadata !DIExpression()), !dbg !4868
  store i32 0, i32* %totalxferlen, align 4, !dbg !4868
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !4869, metadata !DIExpression()), !dbg !4870
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4871
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 0, !dbg !4872
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !4872
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 1, !dbg !4873
  %2 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !4873
  store %struct.spi_controller* %2, %struct.spi_controller** %ctlr, align 8, !dbg !4870
  call void @llvm.dbg.declare(metadata [4 x %struct.spi_transfer]* %xfers, metadata !4874, metadata !DIExpression()), !dbg !4876
  %3 = bitcast [4 x %struct.spi_transfer]* %xfers to i8*, !dbg !4876
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 576, i1 false), !dbg !4876
  call void @llvm.dbg.declare(metadata %struct.spi_message* %msg, metadata !4877, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.declare(metadata i8** %tmpbuf, metadata !4879, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4882, metadata !DIExpression()), !dbg !4883
  %4 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4884
  %call = call i32 @spi_mem_check_op(%struct.spi_mem_op* %4) #8, !dbg !4885
  store i32 %call, i32* %ret, align 4, !dbg !4886
  %5 = load i32, i32* %ret, align 4, !dbg !4887
  %tobool = icmp ne i32 %5, 0, !dbg !4887
  br i1 %tobool, label %if.then, label %if.end, !dbg !4889

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !4890
  store i32 %6, i32* %retval, align 4, !dbg !4891
  br label %return, !dbg !4891

if.end:                                           ; preds = %entry
  %7 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4892
  %8 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4894
  %call1 = call zeroext i1 @spi_mem_internal_supports_op(%struct.spi_mem* %7, %struct.spi_mem_op* %8) #8, !dbg !4895
  br i1 %call1, label %if.end3, label %if.then2, !dbg !4896

if.then2:                                         ; preds = %if.end
  store i32 -524, i32* %retval, align 4, !dbg !4897
  br label %return, !dbg !4897

if.end3:                                          ; preds = %if.end
  %9 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !4898
  %mem_ops = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %9, i32 0, i32 50, !dbg !4900
  %10 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops, align 8, !dbg !4900
  %tobool4 = icmp ne %struct.spi_controller_mem_ops* %10, null, !dbg !4898
  br i1 %tobool4, label %land.lhs.true, label %if.end17, !dbg !4901

land.lhs.true:                                    ; preds = %if.end3
  %11 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4902
  %spi5 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %11, i32 0, i32 0, !dbg !4903
  %12 = load %struct.spi_device*, %struct.spi_device** %spi5, align 8, !dbg !4903
  %cs_gpiod = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 14, !dbg !4904
  %13 = load %struct.gpio_desc*, %struct.gpio_desc** %cs_gpiod, align 8, !dbg !4904
  %tobool6 = icmp ne %struct.gpio_desc* %13, null, !dbg !4902
  br i1 %tobool6, label %if.end17, label %if.then7, !dbg !4905

if.then7:                                         ; preds = %land.lhs.true
  %14 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4906
  %call8 = call i32 @spi_mem_access_start(%struct.spi_mem* %14) #8, !dbg !4908
  store i32 %call8, i32* %ret, align 4, !dbg !4909
  %15 = load i32, i32* %ret, align 4, !dbg !4910
  %tobool9 = icmp ne i32 %15, 0, !dbg !4910
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4912

if.then10:                                        ; preds = %if.then7
  %16 = load i32, i32* %ret, align 4, !dbg !4913
  store i32 %16, i32* %retval, align 4, !dbg !4914
  br label %return, !dbg !4914

if.end11:                                         ; preds = %if.then7
  %17 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !4915
  %mem_ops12 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %17, i32 0, i32 50, !dbg !4916
  %18 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops12, align 8, !dbg !4916
  %exec_op = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %18, i32 0, i32 2, !dbg !4917
  %19 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %exec_op, align 8, !dbg !4917
  %20 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4918
  %21 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4919
  %call13 = call i32 %19(%struct.spi_mem* %20, %struct.spi_mem_op* %21) #8, !dbg !4915
  store i32 %call13, i32* %ret, align 4, !dbg !4920
  %22 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !4921
  call void @spi_mem_access_end(%struct.spi_mem* %22) #8, !dbg !4922
  %23 = load i32, i32* %ret, align 4, !dbg !4923
  %tobool14 = icmp ne i32 %23, 0, !dbg !4923
  br i1 %tobool14, label %lor.lhs.false, label %if.then15, !dbg !4925

lor.lhs.false:                                    ; preds = %if.end11
  %24 = load i32, i32* %ret, align 4, !dbg !4926
  %cmp = icmp ne i32 %24, -524, !dbg !4927
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !4928

if.then15:                                        ; preds = %lor.lhs.false, %if.end11
  %25 = load i32, i32* %ret, align 4, !dbg !4929
  store i32 %25, i32* %retval, align 4, !dbg !4930
  br label %return, !dbg !4930

if.end16:                                         ; preds = %lor.lhs.false
  br label %if.end17, !dbg !4931

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.end3
  %26 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4932
  %cmd = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %26, i32 0, i32 0, !dbg !4933
  %nbytes = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd, i32 0, i32 0, !dbg !4934
  %27 = load i8, i8* %nbytes, align 8, !dbg !4934
  %conv = zext i8 %27 to i32, !dbg !4932
  %28 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4935
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %28, i32 0, i32 1, !dbg !4936
  %nbytes18 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr, i32 0, i32 0, !dbg !4937
  %29 = load i8, i8* %nbytes18, align 8, !dbg !4937
  %conv19 = zext i8 %29 to i32, !dbg !4935
  %add = add i32 %conv, %conv19, !dbg !4938
  %30 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4939
  %dummy = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %30, i32 0, i32 2, !dbg !4940
  %nbytes20 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy, i32 0, i32 0, !dbg !4941
  %31 = load i8, i8* %nbytes20, align 8, !dbg !4941
  %conv21 = zext i8 %31 to i32, !dbg !4939
  %add22 = add i32 %add, %conv21, !dbg !4942
  store i32 %add22, i32* %tmpbufsize, align 4, !dbg !4943
  %32 = load i32, i32* %tmpbufsize, align 4, !dbg !4944
  %conv23 = zext i32 %32 to i64, !dbg !4944
  %call24 = call i8* @kzalloc(i64 %conv23, i32 3265) #8, !dbg !4945
  store i8* %call24, i8** %tmpbuf, align 8, !dbg !4946
  %33 = load i8*, i8** %tmpbuf, align 8, !dbg !4947
  %tobool25 = icmp ne i8* %33, null, !dbg !4947
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4949

if.then26:                                        ; preds = %if.end17
  store i32 -12, i32* %retval, align 4, !dbg !4950
  br label %return, !dbg !4950

if.end27:                                         ; preds = %if.end17
  call void @spi_message_init(%struct.spi_message* %msg) #8, !dbg !4951
  %34 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4952
  %cmd28 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %34, i32 0, i32 0, !dbg !4953
  %opcode = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd28, i32 0, i32 3, !dbg !4954
  %35 = load i16, i16* %opcode, align 4, !dbg !4954
  %conv29 = trunc i16 %35 to i8, !dbg !4952
  %36 = load i8*, i8** %tmpbuf, align 8, !dbg !4955
  %arrayidx = getelementptr i8, i8* %36, i64 0, !dbg !4955
  store i8 %conv29, i8* %arrayidx, align 1, !dbg !4956
  %37 = load i8*, i8** %tmpbuf, align 8, !dbg !4957
  %38 = load i32, i32* %xferpos, align 4, !dbg !4958
  %idxprom = zext i32 %38 to i64, !dbg !4959
  %arrayidx30 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom, !dbg !4959
  %tx_buf = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx30, i32 0, i32 0, !dbg !4960
  store i8* %37, i8** %tx_buf, align 16, !dbg !4961
  %39 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4962
  %cmd31 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %39, i32 0, i32 0, !dbg !4963
  %nbytes32 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd31, i32 0, i32 0, !dbg !4964
  %40 = load i8, i8* %nbytes32, align 8, !dbg !4964
  %conv33 = zext i8 %40 to i32, !dbg !4962
  %41 = load i32, i32* %xferpos, align 4, !dbg !4965
  %idxprom34 = zext i32 %41 to i64, !dbg !4966
  %arrayidx35 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom34, !dbg !4966
  %len = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx35, i32 0, i32 2, !dbg !4967
  store i32 %conv33, i32* %len, align 16, !dbg !4968
  %42 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4969
  %cmd36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %42, i32 0, i32 0, !dbg !4970
  %buswidth = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd36, i32 0, i32 1, !dbg !4971
  %43 = load i8, i8* %buswidth, align 1, !dbg !4971
  %conv37 = zext i8 %43 to i32, !dbg !4969
  %44 = load i32, i32* %xferpos, align 4, !dbg !4972
  %idxprom38 = zext i32 %44 to i64, !dbg !4973
  %arrayidx39 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom38, !dbg !4973
  %tx_nbits = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx39, i32 0, i32 7, !dbg !4974
  %45 = trunc i32 %conv37 to i8, !dbg !4975
  %bf.load = load i8, i8* %tx_nbits, align 8, !dbg !4975
  %bf.value = and i8 %45, 7, !dbg !4975
  %bf.shl = shl i8 %bf.value, 1, !dbg !4975
  %bf.clear = and i8 %bf.load, -15, !dbg !4975
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !4975
  store i8 %bf.set, i8* %tx_nbits, align 8, !dbg !4975
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !4975
  %46 = load i32, i32* %xferpos, align 4, !dbg !4976
  %idxprom40 = zext i32 %46 to i64, !dbg !4977
  %arrayidx41 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom40, !dbg !4977
  call void @spi_message_add_tail(%struct.spi_transfer* %arrayidx41, %struct.spi_message* %msg) #8, !dbg !4978
  %47 = load i32, i32* %xferpos, align 4, !dbg !4979
  %inc = add i32 %47, 1, !dbg !4979
  store i32 %inc, i32* %xferpos, align 4, !dbg !4979
  %48 = load i32, i32* %totalxferlen, align 4, !dbg !4980
  %inc42 = add i32 %48, 1, !dbg !4980
  store i32 %inc42, i32* %totalxferlen, align 4, !dbg !4980
  %49 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4981
  %addr43 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %49, i32 0, i32 1, !dbg !4983
  %nbytes44 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr43, i32 0, i32 0, !dbg !4984
  %50 = load i8, i8* %nbytes44, align 8, !dbg !4984
  %tobool45 = icmp ne i8 %50, 0, !dbg !4981
  br i1 %tobool45, label %if.then46, label %if.end90, !dbg !4985

if.then46:                                        ; preds = %if.end27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4986, metadata !DIExpression()), !dbg !4988
  store i32 0, i32* %i, align 4, !dbg !4989
  br label %for.cond, !dbg !4991

for.cond:                                         ; preds = %for.inc, %if.then46
  %51 = load i32, i32* %i, align 4, !dbg !4992
  %52 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4994
  %addr47 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %52, i32 0, i32 1, !dbg !4995
  %nbytes48 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr47, i32 0, i32 0, !dbg !4996
  %53 = load i8, i8* %nbytes48, align 8, !dbg !4996
  %conv49 = zext i8 %53 to i32, !dbg !4994
  %cmp50 = icmp slt i32 %51, %conv49, !dbg !4997
  br i1 %cmp50, label %for.body, label %for.end, !dbg !4998

for.body:                                         ; preds = %for.cond
  %54 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !4999
  %addr52 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %54, i32 0, i32 1, !dbg !5000
  %val = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr52, i32 0, i32 3, !dbg !5001
  %55 = load i64, i64* %val, align 8, !dbg !5001
  %56 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5002
  %addr53 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %56, i32 0, i32 1, !dbg !5003
  %nbytes54 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr53, i32 0, i32 0, !dbg !5004
  %57 = load i8, i8* %nbytes54, align 8, !dbg !5004
  %conv55 = zext i8 %57 to i32, !dbg !5002
  %58 = load i32, i32* %i, align 4, !dbg !5005
  %sub = sub i32 %conv55, %58, !dbg !5006
  %sub56 = sub i32 %sub, 1, !dbg !5007
  %mul = mul i32 8, %sub56, !dbg !5008
  %sh_prom = zext i32 %mul to i64, !dbg !5009
  %shr = lshr i64 %55, %sh_prom, !dbg !5009
  %conv57 = trunc i64 %shr to i8, !dbg !4999
  %59 = load i8*, i8** %tmpbuf, align 8, !dbg !5010
  %60 = load i32, i32* %i, align 4, !dbg !5011
  %add58 = add i32 %60, 1, !dbg !5012
  %idxprom59 = sext i32 %add58 to i64, !dbg !5010
  %arrayidx60 = getelementptr i8, i8* %59, i64 %idxprom59, !dbg !5010
  store i8 %conv57, i8* %arrayidx60, align 1, !dbg !5013
  br label %for.inc, !dbg !5010

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %i, align 4, !dbg !5014
  %inc61 = add i32 %61, 1, !dbg !5014
  store i32 %inc61, i32* %i, align 4, !dbg !5014
  br label %for.cond, !dbg !5015, !llvm.loop !5016

for.end:                                          ; preds = %for.cond
  %62 = load i8*, i8** %tmpbuf, align 8, !dbg !5018
  %add.ptr = getelementptr i8, i8* %62, i64 1, !dbg !5019
  %63 = load i32, i32* %xferpos, align 4, !dbg !5020
  %idxprom62 = zext i32 %63 to i64, !dbg !5021
  %arrayidx63 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom62, !dbg !5021
  %tx_buf64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx63, i32 0, i32 0, !dbg !5022
  store i8* %add.ptr, i8** %tx_buf64, align 16, !dbg !5023
  %64 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5024
  %addr65 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %64, i32 0, i32 1, !dbg !5025
  %nbytes66 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr65, i32 0, i32 0, !dbg !5026
  %65 = load i8, i8* %nbytes66, align 8, !dbg !5026
  %conv67 = zext i8 %65 to i32, !dbg !5024
  %66 = load i32, i32* %xferpos, align 4, !dbg !5027
  %idxprom68 = zext i32 %66 to i64, !dbg !5028
  %arrayidx69 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom68, !dbg !5028
  %len70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx69, i32 0, i32 2, !dbg !5029
  store i32 %conv67, i32* %len70, align 16, !dbg !5030
  %67 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5031
  %addr71 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %67, i32 0, i32 1, !dbg !5032
  %buswidth72 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr71, i32 0, i32 1, !dbg !5033
  %68 = load i8, i8* %buswidth72, align 1, !dbg !5033
  %conv73 = zext i8 %68 to i32, !dbg !5031
  %69 = load i32, i32* %xferpos, align 4, !dbg !5034
  %idxprom74 = zext i32 %69 to i64, !dbg !5035
  %arrayidx75 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom74, !dbg !5035
  %tx_nbits76 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx75, i32 0, i32 7, !dbg !5036
  %70 = trunc i32 %conv73 to i8, !dbg !5037
  %bf.load77 = load i8, i8* %tx_nbits76, align 8, !dbg !5037
  %bf.value78 = and i8 %70, 7, !dbg !5037
  %bf.shl79 = shl i8 %bf.value78, 1, !dbg !5037
  %bf.clear80 = and i8 %bf.load77, -15, !dbg !5037
  %bf.set81 = or i8 %bf.clear80, %bf.shl79, !dbg !5037
  store i8 %bf.set81, i8* %tx_nbits76, align 8, !dbg !5037
  %bf.result.cast82 = zext i8 %bf.value78 to i32, !dbg !5037
  %71 = load i32, i32* %xferpos, align 4, !dbg !5038
  %idxprom83 = zext i32 %71 to i64, !dbg !5039
  %arrayidx84 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom83, !dbg !5039
  call void @spi_message_add_tail(%struct.spi_transfer* %arrayidx84, %struct.spi_message* %msg) #8, !dbg !5040
  %72 = load i32, i32* %xferpos, align 4, !dbg !5041
  %inc85 = add i32 %72, 1, !dbg !5041
  store i32 %inc85, i32* %xferpos, align 4, !dbg !5041
  %73 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5042
  %addr86 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %73, i32 0, i32 1, !dbg !5043
  %nbytes87 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr86, i32 0, i32 0, !dbg !5044
  %74 = load i8, i8* %nbytes87, align 8, !dbg !5044
  %conv88 = zext i8 %74 to i32, !dbg !5042
  %75 = load i32, i32* %totalxferlen, align 4, !dbg !5045
  %add89 = add i32 %75, %conv88, !dbg !5045
  store i32 %add89, i32* %totalxferlen, align 4, !dbg !5045
  br label %if.end90, !dbg !5046

if.end90:                                         ; preds = %for.end, %if.end27
  %76 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5047
  %dummy91 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %76, i32 0, i32 2, !dbg !5049
  %nbytes92 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy91, i32 0, i32 0, !dbg !5050
  %77 = load i8, i8* %nbytes92, align 8, !dbg !5050
  %tobool93 = icmp ne i8 %77, 0, !dbg !5047
  br i1 %tobool93, label %if.then94, label %if.end137, !dbg !5051

if.then94:                                        ; preds = %if.end90
  %78 = load i8*, i8** %tmpbuf, align 8, !dbg !5052
  %79 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5054
  %addr95 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %79, i32 0, i32 1, !dbg !5055
  %nbytes96 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr95, i32 0, i32 0, !dbg !5056
  %80 = load i8, i8* %nbytes96, align 8, !dbg !5056
  %conv97 = zext i8 %80 to i32, !dbg !5054
  %idx.ext = sext i32 %conv97 to i64, !dbg !5057
  %add.ptr98 = getelementptr i8, i8* %78, i64 %idx.ext, !dbg !5057
  %add.ptr99 = getelementptr i8, i8* %add.ptr98, i64 1, !dbg !5058
  %81 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5059
  %dummy100 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %81, i32 0, i32 2, !dbg !5060
  %nbytes101 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy100, i32 0, i32 0, !dbg !5061
  %82 = load i8, i8* %nbytes101, align 8, !dbg !5061
  %conv102 = zext i8 %82 to i64, !dbg !5059
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr99, i8 -1, i64 %conv102, i1 false), !dbg !5062
  %83 = load i8*, i8** %tmpbuf, align 8, !dbg !5063
  %84 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5064
  %addr103 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %84, i32 0, i32 1, !dbg !5065
  %nbytes104 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr103, i32 0, i32 0, !dbg !5066
  %85 = load i8, i8* %nbytes104, align 8, !dbg !5066
  %conv105 = zext i8 %85 to i32, !dbg !5064
  %idx.ext106 = sext i32 %conv105 to i64, !dbg !5067
  %add.ptr107 = getelementptr i8, i8* %83, i64 %idx.ext106, !dbg !5067
  %add.ptr108 = getelementptr i8, i8* %add.ptr107, i64 1, !dbg !5068
  %86 = load i32, i32* %xferpos, align 4, !dbg !5069
  %idxprom109 = zext i32 %86 to i64, !dbg !5070
  %arrayidx110 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom109, !dbg !5070
  %tx_buf111 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx110, i32 0, i32 0, !dbg !5071
  store i8* %add.ptr108, i8** %tx_buf111, align 16, !dbg !5072
  %87 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5073
  %dummy112 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %87, i32 0, i32 2, !dbg !5074
  %nbytes113 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy112, i32 0, i32 0, !dbg !5075
  %88 = load i8, i8* %nbytes113, align 8, !dbg !5075
  %conv114 = zext i8 %88 to i32, !dbg !5073
  %89 = load i32, i32* %xferpos, align 4, !dbg !5076
  %idxprom115 = zext i32 %89 to i64, !dbg !5077
  %arrayidx116 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom115, !dbg !5077
  %len117 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx116, i32 0, i32 2, !dbg !5078
  store i32 %conv114, i32* %len117, align 16, !dbg !5079
  %90 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5080
  %dummy118 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %90, i32 0, i32 2, !dbg !5081
  %buswidth119 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy118, i32 0, i32 1, !dbg !5082
  %91 = load i8, i8* %buswidth119, align 1, !dbg !5082
  %conv120 = zext i8 %91 to i32, !dbg !5080
  %92 = load i32, i32* %xferpos, align 4, !dbg !5083
  %idxprom121 = zext i32 %92 to i64, !dbg !5084
  %arrayidx122 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom121, !dbg !5084
  %tx_nbits123 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx122, i32 0, i32 7, !dbg !5085
  %93 = trunc i32 %conv120 to i8, !dbg !5086
  %bf.load124 = load i8, i8* %tx_nbits123, align 8, !dbg !5086
  %bf.value125 = and i8 %93, 7, !dbg !5086
  %bf.shl126 = shl i8 %bf.value125, 1, !dbg !5086
  %bf.clear127 = and i8 %bf.load124, -15, !dbg !5086
  %bf.set128 = or i8 %bf.clear127, %bf.shl126, !dbg !5086
  store i8 %bf.set128, i8* %tx_nbits123, align 8, !dbg !5086
  %bf.result.cast129 = zext i8 %bf.value125 to i32, !dbg !5086
  %94 = load i32, i32* %xferpos, align 4, !dbg !5087
  %idxprom130 = zext i32 %94 to i64, !dbg !5088
  %arrayidx131 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom130, !dbg !5088
  call void @spi_message_add_tail(%struct.spi_transfer* %arrayidx131, %struct.spi_message* %msg) #8, !dbg !5089
  %95 = load i32, i32* %xferpos, align 4, !dbg !5090
  %inc132 = add i32 %95, 1, !dbg !5090
  store i32 %inc132, i32* %xferpos, align 4, !dbg !5090
  %96 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5091
  %dummy133 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %96, i32 0, i32 2, !dbg !5092
  %nbytes134 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy133, i32 0, i32 0, !dbg !5093
  %97 = load i8, i8* %nbytes134, align 8, !dbg !5093
  %conv135 = zext i8 %97 to i32, !dbg !5091
  %98 = load i32, i32* %totalxferlen, align 4, !dbg !5094
  %add136 = add i32 %98, %conv135, !dbg !5094
  store i32 %add136, i32* %totalxferlen, align 4, !dbg !5094
  br label %if.end137, !dbg !5095

if.end137:                                        ; preds = %if.then94, %if.end90
  %99 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5096
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %99, i32 0, i32 3, !dbg !5098
  %nbytes138 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 3, !dbg !5099
  %100 = load i32, i32* %nbytes138, align 8, !dbg !5099
  %tobool139 = icmp ne i32 %100, 0, !dbg !5096
  br i1 %tobool139, label %if.then140, label %if.end188, !dbg !5100

if.then140:                                       ; preds = %if.end137
  %101 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5101
  %data141 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %101, i32 0, i32 3, !dbg !5104
  %dir = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data141, i32 0, i32 2, !dbg !5105
  %102 = load i32, i32* %dir, align 4, !dbg !5105
  %cmp142 = icmp eq i32 %102, 1, !dbg !5106
  br i1 %cmp142, label %if.then144, label %if.else, !dbg !5107

if.then144:                                       ; preds = %if.then140
  %103 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5108
  %data145 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %103, i32 0, i32 3, !dbg !5110
  %buf = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data145, i32 0, i32 4, !dbg !5111
  %in = bitcast %union.anon.72* %buf to i8**, !dbg !5112
  %104 = load i8*, i8** %in, align 8, !dbg !5112
  %105 = load i32, i32* %xferpos, align 4, !dbg !5113
  %idxprom146 = zext i32 %105 to i64, !dbg !5114
  %arrayidx147 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom146, !dbg !5114
  %rx_buf = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx147, i32 0, i32 1, !dbg !5115
  store i8* %104, i8** %rx_buf, align 8, !dbg !5116
  %106 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5117
  %data148 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %106, i32 0, i32 3, !dbg !5118
  %buswidth149 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data148, i32 0, i32 0, !dbg !5119
  %107 = load i8, i8* %buswidth149, align 8, !dbg !5119
  %conv150 = zext i8 %107 to i32, !dbg !5117
  %108 = load i32, i32* %xferpos, align 4, !dbg !5120
  %idxprom151 = zext i32 %108 to i64, !dbg !5121
  %arrayidx152 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom151, !dbg !5121
  %rx_nbits = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx152, i32 0, i32 7, !dbg !5122
  %109 = trunc i32 %conv150 to i8, !dbg !5123
  %bf.load153 = load i8, i8* %rx_nbits, align 8, !dbg !5123
  %bf.value154 = and i8 %109, 7, !dbg !5123
  %bf.shl155 = shl i8 %bf.value154, 4, !dbg !5123
  %bf.clear156 = and i8 %bf.load153, -113, !dbg !5123
  %bf.set157 = or i8 %bf.clear156, %bf.shl155, !dbg !5123
  store i8 %bf.set157, i8* %rx_nbits, align 8, !dbg !5123
  %bf.result.cast158 = zext i8 %bf.value154 to i32, !dbg !5123
  br label %if.end176, !dbg !5124

if.else:                                          ; preds = %if.then140
  %110 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5125
  %data159 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %110, i32 0, i32 3, !dbg !5127
  %buf160 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data159, i32 0, i32 4, !dbg !5128
  %out = bitcast %union.anon.72* %buf160 to i8**, !dbg !5129
  %111 = load i8*, i8** %out, align 8, !dbg !5129
  %112 = load i32, i32* %xferpos, align 4, !dbg !5130
  %idxprom161 = zext i32 %112 to i64, !dbg !5131
  %arrayidx162 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom161, !dbg !5131
  %tx_buf163 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx162, i32 0, i32 0, !dbg !5132
  store i8* %111, i8** %tx_buf163, align 16, !dbg !5133
  %113 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5134
  %data164 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %113, i32 0, i32 3, !dbg !5135
  %buswidth165 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data164, i32 0, i32 0, !dbg !5136
  %114 = load i8, i8* %buswidth165, align 8, !dbg !5136
  %conv166 = zext i8 %114 to i32, !dbg !5134
  %115 = load i32, i32* %xferpos, align 4, !dbg !5137
  %idxprom167 = zext i32 %115 to i64, !dbg !5138
  %arrayidx168 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom167, !dbg !5138
  %tx_nbits169 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx168, i32 0, i32 7, !dbg !5139
  %116 = trunc i32 %conv166 to i8, !dbg !5140
  %bf.load170 = load i8, i8* %tx_nbits169, align 8, !dbg !5140
  %bf.value171 = and i8 %116, 7, !dbg !5140
  %bf.shl172 = shl i8 %bf.value171, 1, !dbg !5140
  %bf.clear173 = and i8 %bf.load170, -15, !dbg !5140
  %bf.set174 = or i8 %bf.clear173, %bf.shl172, !dbg !5140
  store i8 %bf.set174, i8* %tx_nbits169, align 8, !dbg !5140
  %bf.result.cast175 = zext i8 %bf.value171 to i32, !dbg !5140
  br label %if.end176

if.end176:                                        ; preds = %if.else, %if.then144
  %117 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5141
  %data177 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %117, i32 0, i32 3, !dbg !5142
  %nbytes178 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data177, i32 0, i32 3, !dbg !5143
  %118 = load i32, i32* %nbytes178, align 8, !dbg !5143
  %119 = load i32, i32* %xferpos, align 4, !dbg !5144
  %idxprom179 = zext i32 %119 to i64, !dbg !5145
  %arrayidx180 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom179, !dbg !5145
  %len181 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %arrayidx180, i32 0, i32 2, !dbg !5146
  store i32 %118, i32* %len181, align 16, !dbg !5147
  %120 = load i32, i32* %xferpos, align 4, !dbg !5148
  %idxprom182 = zext i32 %120 to i64, !dbg !5149
  %arrayidx183 = getelementptr [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %xfers, i64 0, i64 %idxprom182, !dbg !5149
  call void @spi_message_add_tail(%struct.spi_transfer* %arrayidx183, %struct.spi_message* %msg) #8, !dbg !5150
  %121 = load i32, i32* %xferpos, align 4, !dbg !5151
  %inc184 = add i32 %121, 1, !dbg !5151
  store i32 %inc184, i32* %xferpos, align 4, !dbg !5151
  %122 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5152
  %data185 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %122, i32 0, i32 3, !dbg !5153
  %nbytes186 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data185, i32 0, i32 3, !dbg !5154
  %123 = load i32, i32* %nbytes186, align 8, !dbg !5154
  %124 = load i32, i32* %totalxferlen, align 4, !dbg !5155
  %add187 = add i32 %124, %123, !dbg !5155
  store i32 %add187, i32* %totalxferlen, align 4, !dbg !5155
  br label %if.end188, !dbg !5156

if.end188:                                        ; preds = %if.end176, %if.end137
  %125 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5157
  %spi189 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %125, i32 0, i32 0, !dbg !5158
  %126 = load %struct.spi_device*, %struct.spi_device** %spi189, align 8, !dbg !5158
  %call190 = call i32 @spi_sync(%struct.spi_device* %126, %struct.spi_message* %msg) #8, !dbg !5159
  store i32 %call190, i32* %ret, align 4, !dbg !5160
  %127 = load i8*, i8** %tmpbuf, align 8, !dbg !5161
  call void @kfree(i8* %127) #8, !dbg !5162
  %128 = load i32, i32* %ret, align 4, !dbg !5163
  %tobool191 = icmp ne i32 %128, 0, !dbg !5163
  br i1 %tobool191, label %if.then192, label %if.end193, !dbg !5165

if.then192:                                       ; preds = %if.end188
  %129 = load i32, i32* %ret, align 4, !dbg !5166
  store i32 %129, i32* %retval, align 4, !dbg !5167
  br label %return, !dbg !5167

if.end193:                                        ; preds = %if.end188
  %actual_length = getelementptr inbounds %struct.spi_message, %struct.spi_message* %msg, i32 0, i32 6, !dbg !5168
  %130 = load i32, i32* %actual_length, align 4, !dbg !5168
  %131 = load i32, i32* %totalxferlen, align 4, !dbg !5170
  %cmp194 = icmp ne i32 %130, %131, !dbg !5171
  br i1 %cmp194, label %if.then196, label %if.end197, !dbg !5172

if.then196:                                       ; preds = %if.end193
  store i32 -5, i32* %retval, align 4, !dbg !5173
  br label %return, !dbg !5173

if.end197:                                        ; preds = %if.end193
  store i32 0, i32* %retval, align 4, !dbg !5174
  br label %return, !dbg !5174

return:                                           ; preds = %if.end197, %if.then196, %if.then192, %if.then26, %if.then15, %if.then10, %if.then2, %if.then
  %132 = load i32, i32* %retval, align 4, !dbg !5175
  ret i32 %132, !dbg !5175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spi_mem_access_start(%struct.spi_mem* %mem) #0 !dbg !5176 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.spi_mem*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  %ret = alloca i32, align 4
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5181
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 0, !dbg !5182
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !5182
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 1, !dbg !5183
  %2 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5183
  store %struct.spi_controller* %2, %struct.spi_controller** %ctlr, align 8, !dbg !5180
  %3 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5184
  call void @spi_flush_queue(%struct.spi_controller* %3) #8, !dbg !5185
  %4 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5186
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %4, i32 0, i32 33, !dbg !5188
  %5 = load i8, i8* %auto_runtime_pm, align 4, !dbg !5188
  %tobool = trunc i8 %5 to i1, !dbg !5188
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5189

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5190, metadata !DIExpression()), !dbg !5192
  %6 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5193
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 0, !dbg !5194
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5195
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5195
  %call = call i32 @pm_runtime_get_sync(%struct.device* %7) #8, !dbg !5196
  store i32 %call, i32* %ret, align 4, !dbg !5197
  %8 = load i32, i32* %ret, align 4, !dbg !5198
  %cmp = icmp slt i32 %8, 0, !dbg !5200
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5201

if.then1:                                         ; preds = %if.then
  %9 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5202
  %dev2 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %9, i32 0, i32 0, !dbg !5202
  %10 = load i32, i32* %ret, align 4, !dbg !5202
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10) #9, !dbg !5202
  %11 = load i32, i32* %ret, align 4, !dbg !5204
  store i32 %11, i32* %retval, align 4, !dbg !5205
  br label %return, !dbg !5205

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5206

if.end3:                                          ; preds = %if.end, %entry
  %12 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5207
  %bus_lock_mutex = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 16, !dbg !5208
  call void @mutex_lock(%struct.mutex* %bus_lock_mutex) #8, !dbg !5209
  %13 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5210
  %io_mutex = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 14, !dbg !5211
  call void @mutex_lock(%struct.mutex* %io_mutex) #8, !dbg !5212
  store i32 0, i32* %retval, align 4, !dbg !5213
  br label %return, !dbg !5213

return:                                           ; preds = %if.end3, %if.then1
  %14 = load i32, i32* %retval, align 4, !dbg !5214
  ret i32 %14, !dbg !5214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_mem_access_end(%struct.spi_mem* %mem) #0 !dbg !5215 {
entry:
  %mem.addr = alloca %struct.spi_mem*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !5218, metadata !DIExpression()), !dbg !5219
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5220
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 0, !dbg !5221
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !5221
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 1, !dbg !5222
  %2 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5222
  store %struct.spi_controller* %2, %struct.spi_controller** %ctlr, align 8, !dbg !5219
  %3 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5223
  %io_mutex = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %3, i32 0, i32 14, !dbg !5224
  call void @mutex_unlock(%struct.mutex* %io_mutex) #8, !dbg !5225
  %4 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5226
  %bus_lock_mutex = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %4, i32 0, i32 16, !dbg !5227
  call void @mutex_unlock(%struct.mutex* %bus_lock_mutex) #8, !dbg !5228
  %5 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5229
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %5, i32 0, i32 33, !dbg !5231
  %6 = load i8, i8* %auto_runtime_pm, align 4, !dbg !5231
  %tobool = trunc i8 %6 to i1, !dbg !5231
  br i1 %tobool, label %if.then, label %if.end, !dbg !5232

if.then:                                          ; preds = %entry
  %7 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5233
  %dev = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %7, i32 0, i32 0, !dbg !5234
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5235
  %8 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5235
  %call = call i32 @pm_runtime_put(%struct.device* %8) #8, !dbg !5236
  br label %if.end, !dbg !5236

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5237
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5238 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5241, metadata !DIExpression()), !dbg !5245
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5251, metadata !DIExpression()), !dbg !5252
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5253, metadata !DIExpression()), !dbg !5254
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5255, metadata !DIExpression()), !dbg !5256
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5257, metadata !DIExpression()), !dbg !5261
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5263, metadata !DIExpression()), !dbg !5267
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5269, metadata !DIExpression()), !dbg !5273
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5278, metadata !DIExpression()), !dbg !5279
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5280, metadata !DIExpression()), !dbg !5281
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5282, metadata !DIExpression()), !dbg !5283
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5284, metadata !DIExpression()), !dbg !5285
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5286, metadata !DIExpression()), !dbg !5287
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5288, metadata !DIExpression()), !dbg !5289
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5290, metadata !DIExpression()), !dbg !5291
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5292, metadata !DIExpression()), !dbg !5293
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5296, metadata !DIExpression()), !dbg !5297
  %0 = load i64, i64* %size.addr, align 8, !dbg !5298
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5299
  %or = or i32 %1, 256, !dbg !5300
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5301
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5302
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5303

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5304
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5305
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5306

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5307
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5308
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5309
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5310
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5287
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5311
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5312
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5313
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5314
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5315
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5316
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5317
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5317
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5317
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5317
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5317
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5318
  br label %kmalloc.exit, !dbg !5318

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5319
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5320
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5320
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5322

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5323
  br label %kmalloc_index.exit.i, !dbg !5323

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5324
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5326
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5327

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5328
  br label %kmalloc_index.exit.i, !dbg !5328

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5329
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5331
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5332

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5333
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5334
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5335

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5336
  br label %kmalloc_index.exit.i, !dbg !5336

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5337
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5339
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5340

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5341
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5342
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5343

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5344
  br label %kmalloc_index.exit.i, !dbg !5344

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5345
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5347
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5348

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5349
  br label %kmalloc_index.exit.i, !dbg !5349

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5350
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5352
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5353

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5354
  br label %kmalloc_index.exit.i, !dbg !5354

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5355
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5357
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5358

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5359
  br label %kmalloc_index.exit.i, !dbg !5359

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5360
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5362
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5363

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5364
  br label %kmalloc_index.exit.i, !dbg !5364

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5365
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5367
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5368

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5369
  br label %kmalloc_index.exit.i, !dbg !5369

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5370
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5372
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5373

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5374
  br label %kmalloc_index.exit.i, !dbg !5374

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5375
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5377
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5378

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5379
  br label %kmalloc_index.exit.i, !dbg !5379

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5380
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5382
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5383

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5384
  br label %kmalloc_index.exit.i, !dbg !5384

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5385
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5387
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5388

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5389
  br label %kmalloc_index.exit.i, !dbg !5389

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5390
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5392
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5393

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5394
  br label %kmalloc_index.exit.i, !dbg !5394

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5395
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5397
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5398

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5399
  br label %kmalloc_index.exit.i, !dbg !5399

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5400
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5402
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5403

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5404
  br label %kmalloc_index.exit.i, !dbg !5404

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5405
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5407
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5408

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5409
  br label %kmalloc_index.exit.i, !dbg !5409

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5410
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5412
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5413

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5414
  br label %kmalloc_index.exit.i, !dbg !5414

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5415
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5417
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5418

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5419
  br label %kmalloc_index.exit.i, !dbg !5419

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5420
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5422
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5423

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5424
  br label %kmalloc_index.exit.i, !dbg !5424

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5425
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5427
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5428

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5429
  br label %kmalloc_index.exit.i, !dbg !5429

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5430
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5432
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5433

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5434
  br label %kmalloc_index.exit.i, !dbg !5434

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5435
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5437
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5438

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5439
  br label %kmalloc_index.exit.i, !dbg !5439

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5440
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5442
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5443

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5444
  br label %kmalloc_index.exit.i, !dbg !5444

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5445
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5447
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5448

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5449
  br label %kmalloc_index.exit.i, !dbg !5449

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5450
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5452
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5453

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5454
  br label %kmalloc_index.exit.i, !dbg !5454

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5455
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5457
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5458

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5459
  br label %kmalloc_index.exit.i, !dbg !5459

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5460
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5462
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5463

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5464
  br label %kmalloc_index.exit.i, !dbg !5464

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5465, !srcloc !5468
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 228) #10, !dbg !5469, !srcloc !5472
  unreachable, !dbg !5473

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5474
  store i32 %45, i32* %index.i, align 4, !dbg !5475
  %46 = load i32, i32* %index.i, align 4, !dbg !5476
  %tobool.i = icmp ne i32 %46, 0, !dbg !5476
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5478

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5479
  br label %kmalloc.exit, !dbg !5479

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5480
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5481
  %and.i.i = and i32 %48, 17, !dbg !5481
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5481
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5481
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5481
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5481
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5483

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5484
  br label %kmalloc_type.exit.i, !dbg !5484

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5485
  %and2.i.i = and i32 %49, 1, !dbg !5486
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5485
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5485
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5485
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5487
  br label %kmalloc_type.exit.i, !dbg !5487

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5488
  %idxprom.i = zext i32 %51 to i64, !dbg !5489
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5489
  %52 = load i32, i32* %index.i, align 4, !dbg !5490
  %idxprom6.i = zext i32 %52 to i64, !dbg !5489
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5489
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5489
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5491
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5492
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5493
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5494
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5495
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5495
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5495
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5495
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5495
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5256
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5496
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5497
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5498
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5499
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5500
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5501
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5502
  store i8* %62, i8** %retval.i, align 8, !dbg !5503
  br label %kmalloc.exit, !dbg !5503

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5504
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5505
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5506
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5506
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5506
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5506
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5506
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5507
  br label %kmalloc.exit, !dbg !5507

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5508
  ret i8* %65, !dbg !5509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_message_init(%struct.spi_message* %m) #0 !dbg !5510 {
entry:
  %m.addr = alloca %struct.spi_message*, align 8
  store %struct.spi_message* %m, %struct.spi_message** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_message** %m.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  %0 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !5515
  %1 = bitcast %struct.spi_message* %0 to i8*, !dbg !5516
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 104, i1 false), !dbg !5516
  %2 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !5517
  call void @spi_message_init_no_memset(%struct.spi_message* %2) #8, !dbg !5518
  ret void, !dbg !5519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_message_add_tail(%struct.spi_transfer* %t, %struct.spi_message* %m) #0 !dbg !5520 {
entry:
  %t.addr = alloca %struct.spi_transfer*, align 8
  %m.addr = alloca %struct.spi_message*, align 8
  store %struct.spi_transfer* %t, %struct.spi_transfer** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_transfer** %t.addr, metadata !5523, metadata !DIExpression()), !dbg !5524
  store %struct.spi_message* %m, %struct.spi_message** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_message** %m.addr, metadata !5525, metadata !DIExpression()), !dbg !5526
  %0 = load %struct.spi_transfer*, %struct.spi_transfer** %t.addr, align 8, !dbg !5527
  %transfer_list = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %0, i32 0, i32 19, !dbg !5528
  %1 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !5529
  %transfers = getelementptr inbounds %struct.spi_message, %struct.spi_message* %1, i32 0, i32 0, !dbg !5530
  call void @list_add_tail(%struct.list_head* %transfer_list, %struct.list_head* %transfers) #8, !dbg !5531
  ret void, !dbg !5532
}

; Function Attrs: noredzone
declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @spi_mem_get_name(%struct.spi_mem* %mem) #0 !dbg !5533 {
entry:
  %mem.addr = alloca %struct.spi_mem*, align 8
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5536
  %name = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 2, !dbg !5537
  %1 = load i8*, i8** %name, align 8, !dbg !5537
  ret i8* %1, !dbg !5538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @spi_mem_adjust_op_size(%struct.spi_mem* %mem, %struct.spi_mem_op* %op) #0 !dbg !5539 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.spi_mem*, align 8
  %op.addr = alloca %struct.spi_mem_op*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  %len = alloca i64, align 8
  %__UNIQUE_ID___x235 = alloca i64, align 8
  %__UNIQUE_ID___x233 = alloca i64, align 8
  %__UNIQUE_ID___y234 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y236 = alloca i64, align 8
  %tmp29 = alloca i64, align 8
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  store %struct.spi_mem_op* %op, %struct.spi_mem_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op** %op.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !5544, metadata !DIExpression()), !dbg !5545
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5546
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 0, !dbg !5547
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !5547
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 1, !dbg !5548
  %2 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5548
  store %struct.spi_controller* %2, %struct.spi_controller** %ctlr, align 8, !dbg !5545
  call void @llvm.dbg.declare(metadata i64* %len, metadata !5549, metadata !DIExpression()), !dbg !5550
  %3 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5551
  %mem_ops = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %3, i32 0, i32 50, !dbg !5553
  %4 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops, align 8, !dbg !5553
  %tobool = icmp ne %struct.spi_controller_mem_ops* %4, null, !dbg !5551
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5554

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5555
  %mem_ops1 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %5, i32 0, i32 50, !dbg !5556
  %6 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops1, align 8, !dbg !5556
  %adjust_op_size = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %6, i32 0, i32 0, !dbg !5557
  %7 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %adjust_op_size, align 8, !dbg !5557
  %tobool2 = icmp ne i32 (%struct.spi_mem*, %struct.spi_mem_op*)* %7, null, !dbg !5555
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5558

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5559
  %mem_ops3 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %8, i32 0, i32 50, !dbg !5560
  %9 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops3, align 8, !dbg !5560
  %adjust_op_size4 = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %9, i32 0, i32 0, !dbg !5561
  %10 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %adjust_op_size4, align 8, !dbg !5561
  %11 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5562
  %12 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5563
  %call = call i32 %10(%struct.spi_mem* %11, %struct.spi_mem_op* %12) #8, !dbg !5559
  store i32 %call, i32* %retval, align 4, !dbg !5564
  br label %return, !dbg !5564

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5565
  %mem_ops5 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 50, !dbg !5567
  %14 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops5, align 8, !dbg !5567
  %tobool6 = icmp ne %struct.spi_controller_mem_ops* %14, null, !dbg !5565
  br i1 %tobool6, label %lor.lhs.false, label %if.then9, !dbg !5568

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5569
  %mem_ops7 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %15, i32 0, i32 50, !dbg !5570
  %16 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops7, align 8, !dbg !5570
  %exec_op = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %16, i32 0, i32 2, !dbg !5571
  %17 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %exec_op, align 8, !dbg !5571
  %tobool8 = icmp ne i32 (%struct.spi_mem*, %struct.spi_mem_op*)* %17, null, !dbg !5569
  br i1 %tobool8, label %if.end44, label %if.then9, !dbg !5572

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5573
  %cmd = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 0, !dbg !5575
  %nbytes = getelementptr inbounds %struct.anon.68, %struct.anon.68* %cmd, i32 0, i32 0, !dbg !5576
  %19 = load i8, i8* %nbytes, align 8, !dbg !5576
  %conv = zext i8 %19 to i32, !dbg !5573
  %20 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5577
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %20, i32 0, i32 1, !dbg !5578
  %nbytes10 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr, i32 0, i32 0, !dbg !5579
  %21 = load i8, i8* %nbytes10, align 8, !dbg !5579
  %conv11 = zext i8 %21 to i32, !dbg !5577
  %add = add i32 %conv, %conv11, !dbg !5580
  %22 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5581
  %dummy = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %22, i32 0, i32 2, !dbg !5582
  %nbytes12 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %dummy, i32 0, i32 0, !dbg !5583
  %23 = load i8, i8* %nbytes12, align 8, !dbg !5583
  %conv13 = zext i8 %23 to i32, !dbg !5581
  %add14 = add i32 %add, %conv13, !dbg !5584
  %conv15 = sext i32 %add14 to i64, !dbg !5573
  store i64 %conv15, i64* %len, align 8, !dbg !5585
  %24 = load i64, i64* %len, align 8, !dbg !5586
  %25 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5588
  %spi16 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %25, i32 0, i32 0, !dbg !5589
  %26 = load %struct.spi_device*, %struct.spi_device** %spi16, align 8, !dbg !5589
  %call17 = call i64 @spi_max_transfer_size(%struct.spi_device* %26) #8, !dbg !5590
  %cmp = icmp ugt i64 %24, %call17, !dbg !5591
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !5592

if.then19:                                        ; preds = %if.then9
  store i32 -22, i32* %retval, align 4, !dbg !5593
  br label %return, !dbg !5593

if.end20:                                         ; preds = %if.then9
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x235, metadata !5594, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x233, metadata !5597, metadata !DIExpression()), !dbg !5599
  %27 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5599
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %27, i32 0, i32 3, !dbg !5599
  %nbytes21 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 3, !dbg !5599
  %28 = load i32, i32* %nbytes21, align 8, !dbg !5599
  %conv22 = zext i32 %28 to i64, !dbg !5599
  store i64 %conv22, i64* %__UNIQUE_ID___x233, align 8, !dbg !5599
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y234, metadata !5600, metadata !DIExpression()), !dbg !5599
  %29 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5599
  %spi23 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %29, i32 0, i32 0, !dbg !5599
  %30 = load %struct.spi_device*, %struct.spi_device** %spi23, align 8, !dbg !5599
  %call24 = call i64 @spi_max_transfer_size(%struct.spi_device* %30) #8, !dbg !5599
  store i64 %call24, i64* %__UNIQUE_ID___y234, align 8, !dbg !5599
  %31 = load i64, i64* %__UNIQUE_ID___x233, align 8, !dbg !5599
  %32 = load i64, i64* %__UNIQUE_ID___y234, align 8, !dbg !5599
  %cmp25 = icmp ult i64 %31, %32, !dbg !5599
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !5599

cond.true:                                        ; preds = %if.end20
  %33 = load i64, i64* %__UNIQUE_ID___x233, align 8, !dbg !5599
  br label %cond.end, !dbg !5599

cond.false:                                       ; preds = %if.end20
  %34 = load i64, i64* %__UNIQUE_ID___y234, align 8, !dbg !5599
  br label %cond.end, !dbg !5599

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %33, %cond.true ], [ %34, %cond.false ], !dbg !5599
  store i64 %cond, i64* %tmp, align 8, !dbg !5599
  %35 = load i64, i64* %tmp, align 8, !dbg !5599
  store i64 %35, i64* %__UNIQUE_ID___x235, align 8, !dbg !5596
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y236, metadata !5601, metadata !DIExpression()), !dbg !5596
  %36 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5596
  %spi27 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %36, i32 0, i32 0, !dbg !5596
  %37 = load %struct.spi_device*, %struct.spi_device** %spi27, align 8, !dbg !5596
  %call28 = call i64 @spi_max_message_size(%struct.spi_device* %37) #8, !dbg !5596
  %38 = load i64, i64* %len, align 8, !dbg !5596
  %sub = sub i64 %call28, %38, !dbg !5596
  store i64 %sub, i64* %__UNIQUE_ID___y236, align 8, !dbg !5596
  %39 = load i64, i64* %__UNIQUE_ID___x235, align 8, !dbg !5596
  %40 = load i64, i64* %__UNIQUE_ID___y236, align 8, !dbg !5596
  %cmp30 = icmp ult i64 %39, %40, !dbg !5596
  br i1 %cmp30, label %cond.true32, label %cond.false33, !dbg !5596

cond.true32:                                      ; preds = %cond.end
  %41 = load i64, i64* %__UNIQUE_ID___x235, align 8, !dbg !5596
  br label %cond.end34, !dbg !5596

cond.false33:                                     ; preds = %cond.end
  %42 = load i64, i64* %__UNIQUE_ID___y236, align 8, !dbg !5596
  br label %cond.end34, !dbg !5596

cond.end34:                                       ; preds = %cond.false33, %cond.true32
  %cond35 = phi i64 [ %41, %cond.true32 ], [ %42, %cond.false33 ], !dbg !5596
  store i64 %cond35, i64* %tmp29, align 8, !dbg !5596
  %43 = load i64, i64* %tmp29, align 8, !dbg !5596
  %conv36 = trunc i64 %43 to i32, !dbg !5602
  %44 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5603
  %data37 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %44, i32 0, i32 3, !dbg !5604
  %nbytes38 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data37, i32 0, i32 3, !dbg !5605
  store i32 %conv36, i32* %nbytes38, align 8, !dbg !5606
  %45 = load %struct.spi_mem_op*, %struct.spi_mem_op** %op.addr, align 8, !dbg !5607
  %data39 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %45, i32 0, i32 3, !dbg !5609
  %nbytes40 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data39, i32 0, i32 3, !dbg !5610
  %46 = load i32, i32* %nbytes40, align 8, !dbg !5610
  %tobool41 = icmp ne i32 %46, 0, !dbg !5607
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !5611

if.then42:                                        ; preds = %cond.end34
  store i32 -22, i32* %retval, align 4, !dbg !5612
  br label %return, !dbg !5612

if.end43:                                         ; preds = %cond.end34
  br label %if.end44, !dbg !5613

if.end44:                                         ; preds = %if.end43, %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5614
  br label %return, !dbg !5614

return:                                           ; preds = %if.end44, %if.then42, %if.then19, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !5615
  ret i32 %47, !dbg !5615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @spi_max_transfer_size(%struct.spi_device* %spi) #0 !dbg !5616 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  %tr_max = alloca i64, align 8
  %msg_max = alloca i64, align 8
  %__UNIQUE_ID___x231 = alloca i64, align 8
  %__UNIQUE_ID___y232 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !5619, metadata !DIExpression()), !dbg !5620
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5621
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 1, !dbg !5622
  %1 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5622
  store %struct.spi_controller* %1, %struct.spi_controller** %ctlr, align 8, !dbg !5620
  call void @llvm.dbg.declare(metadata i64* %tr_max, metadata !5623, metadata !DIExpression()), !dbg !5624
  store i64 -1, i64* %tr_max, align 8, !dbg !5624
  call void @llvm.dbg.declare(metadata i64* %msg_max, metadata !5625, metadata !DIExpression()), !dbg !5626
  %2 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5627
  %call = call i64 @spi_max_message_size(%struct.spi_device* %2) #8, !dbg !5628
  store i64 %call, i64* %msg_max, align 8, !dbg !5626
  %3 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5629
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %3, i32 0, i32 12, !dbg !5631
  %4 = load i64 (%struct.spi_device*)*, i64 (%struct.spi_device*)** %max_transfer_size, align 8, !dbg !5631
  %tobool = icmp ne i64 (%struct.spi_device*)* %4, null, !dbg !5629
  br i1 %tobool, label %if.then, label %if.end, !dbg !5632

if.then:                                          ; preds = %entry
  %5 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5633
  %max_transfer_size1 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %5, i32 0, i32 12, !dbg !5634
  %6 = load i64 (%struct.spi_device*)*, i64 (%struct.spi_device*)** %max_transfer_size1, align 8, !dbg !5634
  %7 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5635
  %call2 = call i64 %6(%struct.spi_device* %7) #8, !dbg !5633
  store i64 %call2, i64* %tr_max, align 8, !dbg !5636
  br label %if.end, !dbg !5637

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x231, metadata !5638, metadata !DIExpression()), !dbg !5640
  %8 = load i64, i64* %tr_max, align 8, !dbg !5640
  store i64 %8, i64* %__UNIQUE_ID___x231, align 8, !dbg !5640
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y232, metadata !5641, metadata !DIExpression()), !dbg !5640
  %9 = load i64, i64* %msg_max, align 8, !dbg !5640
  store i64 %9, i64* %__UNIQUE_ID___y232, align 8, !dbg !5640
  %10 = load i64, i64* %__UNIQUE_ID___x231, align 8, !dbg !5640
  %11 = load i64, i64* %__UNIQUE_ID___y232, align 8, !dbg !5640
  %cmp = icmp ult i64 %10, %11, !dbg !5640
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5640

cond.true:                                        ; preds = %if.end
  %12 = load i64, i64* %__UNIQUE_ID___x231, align 8, !dbg !5640
  br label %cond.end, !dbg !5640

cond.false:                                       ; preds = %if.end
  %13 = load i64, i64* %__UNIQUE_ID___y232, align 8, !dbg !5640
  br label %cond.end, !dbg !5640

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ], !dbg !5640
  store i64 %cond, i64* %tmp, align 8, !dbg !5640
  %14 = load i64, i64* %tmp, align 8, !dbg !5640
  ret i64 %14, !dbg !5642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @spi_max_message_size(%struct.spi_device* %spi) #0 !dbg !5643 {
entry:
  %retval = alloca i64, align 8
  %spi.addr = alloca %struct.spi_device*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !5646, metadata !DIExpression()), !dbg !5647
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5648
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 1, !dbg !5649
  %1 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5649
  store %struct.spi_controller* %1, %struct.spi_controller** %ctlr, align 8, !dbg !5647
  %2 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5650
  %max_message_size = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %2, i32 0, i32 13, !dbg !5652
  %3 = load i64 (%struct.spi_device*)*, i64 (%struct.spi_device*)** %max_message_size, align 8, !dbg !5652
  %tobool = icmp ne i64 (%struct.spi_device*)* %3, null, !dbg !5650
  br i1 %tobool, label %if.end, label %if.then, !dbg !5653

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !5654
  br label %return, !dbg !5654

if.end:                                           ; preds = %entry
  %4 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5655
  %max_message_size1 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %4, i32 0, i32 13, !dbg !5656
  %5 = load i64 (%struct.spi_device*)*, i64 (%struct.spi_device*)** %max_message_size1, align 8, !dbg !5656
  %6 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5657
  %call = call i64 %5(%struct.spi_device* %6) #8, !dbg !5655
  store i64 %call, i64* %retval, align 8, !dbg !5658
  br label %return, !dbg !5658

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5659
  ret i64 %7, !dbg !5659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.spi_mem_dirmap_desc* @spi_mem_dirmap_create(%struct.spi_mem* %mem, %struct.spi_mem_dirmap_info* %info) #0 !dbg !5660 {
entry:
  %retval = alloca %struct.spi_mem_dirmap_desc*, align 8
  %mem.addr = alloca %struct.spi_mem*, align 8
  %info.addr = alloca %struct.spi_mem_dirmap_info*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  %desc = alloca %struct.spi_mem_dirmap_desc*, align 8
  %ret = alloca i32, align 4
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  store %struct.spi_mem_dirmap_info* %info, %struct.spi_mem_dirmap_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_info** %info.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !5669, metadata !DIExpression()), !dbg !5670
  %0 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5671
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %0, i32 0, i32 0, !dbg !5672
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !5672
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %1, i32 0, i32 1, !dbg !5673
  %2 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5673
  store %struct.spi_controller* %2, %struct.spi_controller** %ctlr, align 8, !dbg !5670
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc, metadata !5674, metadata !DIExpression()), !dbg !5675
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5676, metadata !DIExpression()), !dbg !5677
  store i32 -524, i32* %ret, align 4, !dbg !5677
  %3 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %info.addr, align 8, !dbg !5678
  %op_tmpl = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %3, i32 0, i32 0, !dbg !5680
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op_tmpl, i32 0, i32 1, !dbg !5681
  %nbytes = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr, i32 0, i32 0, !dbg !5682
  %4 = load i8, i8* %nbytes, align 8, !dbg !5682
  %tobool = icmp ne i8 %4, 0, !dbg !5678
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5683

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %info.addr, align 8, !dbg !5684
  %op_tmpl1 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %5, i32 0, i32 0, !dbg !5685
  %addr2 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op_tmpl1, i32 0, i32 1, !dbg !5686
  %nbytes3 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr2, i32 0, i32 0, !dbg !5687
  %6 = load i8, i8* %nbytes3, align 8, !dbg !5687
  %conv = zext i8 %6 to i32, !dbg !5684
  %cmp = icmp sgt i32 %conv, 8, !dbg !5688
  br i1 %cmp, label %if.then, label %if.end, !dbg !5689

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i8* @ERR_PTR(i64 -22) #8, !dbg !5690
  %7 = bitcast i8* %call to %struct.spi_mem_dirmap_desc*, !dbg !5690
  store %struct.spi_mem_dirmap_desc* %7, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5691
  br label %return, !dbg !5691

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %info.addr, align 8, !dbg !5692
  %op_tmpl5 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %8, i32 0, i32 0, !dbg !5694
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op_tmpl5, i32 0, i32 3, !dbg !5695
  %dir = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 2, !dbg !5696
  %9 = load i32, i32* %dir, align 4, !dbg !5696
  %cmp6 = icmp eq i32 %9, 0, !dbg !5697
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !5698

if.then8:                                         ; preds = %if.end
  %call9 = call i8* @ERR_PTR(i64 -22) #8, !dbg !5699
  %10 = bitcast i8* %call9 to %struct.spi_mem_dirmap_desc*, !dbg !5699
  store %struct.spi_mem_dirmap_desc* %10, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5700
  br label %return, !dbg !5700

if.end10:                                         ; preds = %if.end
  %call11 = call i8* @kzalloc(i64 96, i32 3264) #8, !dbg !5701
  %11 = bitcast i8* %call11 to %struct.spi_mem_dirmap_desc*, !dbg !5701
  store %struct.spi_mem_dirmap_desc* %11, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5702
  %12 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5703
  %tobool12 = icmp ne %struct.spi_mem_dirmap_desc* %12, null, !dbg !5703
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !5705

if.then13:                                        ; preds = %if.end10
  %call14 = call i8* @ERR_PTR(i64 -12) #8, !dbg !5706
  %13 = bitcast i8* %call14 to %struct.spi_mem_dirmap_desc*, !dbg !5706
  store %struct.spi_mem_dirmap_desc* %13, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5707
  br label %return, !dbg !5707

if.end15:                                         ; preds = %if.end10
  %14 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5708
  %15 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5709
  %mem16 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %15, i32 0, i32 0, !dbg !5710
  store %struct.spi_mem* %14, %struct.spi_mem** %mem16, align 8, !dbg !5711
  %16 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5712
  %info17 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %16, i32 0, i32 1, !dbg !5713
  %17 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %info.addr, align 8, !dbg !5714
  %18 = bitcast %struct.spi_mem_dirmap_info* %info17 to i8*, !dbg !5715
  %19 = bitcast %struct.spi_mem_dirmap_info* %17 to i8*, !dbg !5715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 72, i1 false), !dbg !5715
  %20 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5716
  %mem_ops = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %20, i32 0, i32 50, !dbg !5718
  %21 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops, align 8, !dbg !5718
  %tobool18 = icmp ne %struct.spi_controller_mem_ops* %21, null, !dbg !5716
  br i1 %tobool18, label %land.lhs.true, label %if.end25, !dbg !5719

land.lhs.true:                                    ; preds = %if.end15
  %22 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5720
  %mem_ops19 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 50, !dbg !5721
  %23 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops19, align 8, !dbg !5721
  %dirmap_create = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %23, i32 0, i32 4, !dbg !5722
  %24 = load i32 (%struct.spi_mem_dirmap_desc*)*, i32 (%struct.spi_mem_dirmap_desc*)** %dirmap_create, align 8, !dbg !5722
  %tobool20 = icmp ne i32 (%struct.spi_mem_dirmap_desc*)* %24, null, !dbg !5720
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !5723

if.then21:                                        ; preds = %land.lhs.true
  %25 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5724
  %mem_ops22 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %25, i32 0, i32 50, !dbg !5725
  %26 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops22, align 8, !dbg !5725
  %dirmap_create23 = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %26, i32 0, i32 4, !dbg !5726
  %27 = load i32 (%struct.spi_mem_dirmap_desc*)*, i32 (%struct.spi_mem_dirmap_desc*)** %dirmap_create23, align 8, !dbg !5726
  %28 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5727
  %call24 = call i32 %27(%struct.spi_mem_dirmap_desc* %28) #8, !dbg !5724
  store i32 %call24, i32* %ret, align 4, !dbg !5728
  br label %if.end25, !dbg !5729

if.end25:                                         ; preds = %if.then21, %land.lhs.true, %if.end15
  %29 = load i32, i32* %ret, align 4, !dbg !5730
  %tobool26 = icmp ne i32 %29, 0, !dbg !5730
  br i1 %tobool26, label %if.then27, label %if.end34, !dbg !5732

if.then27:                                        ; preds = %if.end25
  %30 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5733
  %nodirmap = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %30, i32 0, i32 2, !dbg !5735
  store i32 1, i32* %nodirmap, align 8, !dbg !5736
  %31 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5737
  %mem28 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %31, i32 0, i32 0, !dbg !5739
  %32 = load %struct.spi_mem*, %struct.spi_mem** %mem28, align 8, !dbg !5739
  %33 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5740
  %info29 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %33, i32 0, i32 1, !dbg !5741
  %op_tmpl30 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %info29, i32 0, i32 0, !dbg !5742
  %call31 = call zeroext i1 @spi_mem_supports_op(%struct.spi_mem* %32, %struct.spi_mem_op* %op_tmpl30) #8, !dbg !5743
  br i1 %call31, label %if.else, label %if.then32, !dbg !5744

if.then32:                                        ; preds = %if.then27
  store i32 -524, i32* %ret, align 4, !dbg !5745
  br label %if.end33, !dbg !5746

if.else:                                          ; preds = %if.then27
  store i32 0, i32* %ret, align 4, !dbg !5747
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then32
  br label %if.end34, !dbg !5748

if.end34:                                         ; preds = %if.end33, %if.end25
  %34 = load i32, i32* %ret, align 4, !dbg !5749
  %tobool35 = icmp ne i32 %34, 0, !dbg !5749
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !5751

if.then36:                                        ; preds = %if.end34
  %35 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5752
  %36 = bitcast %struct.spi_mem_dirmap_desc* %35 to i8*, !dbg !5752
  call void @kfree(i8* %36) #8, !dbg !5754
  %37 = load i32, i32* %ret, align 4, !dbg !5755
  %conv37 = sext i32 %37 to i64, !dbg !5755
  %call38 = call i8* @ERR_PTR(i64 %conv37) #8, !dbg !5756
  %38 = bitcast i8* %call38 to %struct.spi_mem_dirmap_desc*, !dbg !5756
  store %struct.spi_mem_dirmap_desc* %38, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5757
  br label %return, !dbg !5757

if.end39:                                         ; preds = %if.end34
  %39 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5758
  store %struct.spi_mem_dirmap_desc* %39, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5759
  br label %return, !dbg !5759

return:                                           ; preds = %if.end39, %if.then36, %if.then13, %if.then8, %if.then
  %40 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5760
  ret %struct.spi_mem_dirmap_desc* %40, !dbg !5760
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5761 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  %0 = load i64, i64* %error.addr, align 8, !dbg !5767
  %1 = inttoptr i64 %0 to i8*, !dbg !5768
  ret i8* %1, !dbg !5769
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @spi_mem_dirmap_destroy(%struct.spi_mem_dirmap_desc* %desc) #0 !dbg !5770 {
entry:
  %desc.addr = alloca %struct.spi_mem_dirmap_desc*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  store %struct.spi_mem_dirmap_desc* %desc, %struct.spi_mem_dirmap_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !5773, metadata !DIExpression()), !dbg !5774
  %0 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5775
  %mem = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %0, i32 0, i32 0, !dbg !5776
  %1 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !5776
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %1, i32 0, i32 0, !dbg !5777
  %2 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !5777
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %2, i32 0, i32 1, !dbg !5778
  %3 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5778
  store %struct.spi_controller* %3, %struct.spi_controller** %ctlr, align 8, !dbg !5774
  %4 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5779
  %nodirmap = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %4, i32 0, i32 2, !dbg !5781
  %5 = load i32, i32* %nodirmap, align 8, !dbg !5781
  %tobool = icmp ne i32 %5, 0, !dbg !5779
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5782

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5783
  %mem_ops = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 50, !dbg !5784
  %7 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops, align 8, !dbg !5784
  %tobool1 = icmp ne %struct.spi_controller_mem_ops* %7, null, !dbg !5783
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5785

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5786
  %mem_ops3 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %8, i32 0, i32 50, !dbg !5787
  %9 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops3, align 8, !dbg !5787
  %dirmap_destroy = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %9, i32 0, i32 5, !dbg !5788
  %10 = load void (%struct.spi_mem_dirmap_desc*)*, void (%struct.spi_mem_dirmap_desc*)** %dirmap_destroy, align 8, !dbg !5788
  %tobool4 = icmp ne void (%struct.spi_mem_dirmap_desc*)* %10, null, !dbg !5786
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5789

if.then:                                          ; preds = %land.lhs.true2
  %11 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5790
  %mem_ops5 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %11, i32 0, i32 50, !dbg !5791
  %12 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops5, align 8, !dbg !5791
  %dirmap_destroy6 = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %12, i32 0, i32 5, !dbg !5792
  %13 = load void (%struct.spi_mem_dirmap_desc*)*, void (%struct.spi_mem_dirmap_desc*)** %dirmap_destroy6, align 8, !dbg !5792
  %14 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5793
  call void %13(%struct.spi_mem_dirmap_desc* %14) #8, !dbg !5790
  br label %if.end, !dbg !5790

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %15 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5794
  %16 = bitcast %struct.spi_mem_dirmap_desc* %15 to i8*, !dbg !5794
  call void @kfree(i8* %16) #8, !dbg !5795
  ret void, !dbg !5796
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.spi_mem_dirmap_desc* @devm_spi_mem_dirmap_create(%struct.device* %dev, %struct.spi_mem* %mem, %struct.spi_mem_dirmap_info* %info) #0 !dbg !5797 {
entry:
  %retval = alloca %struct.spi_mem_dirmap_desc*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %mem.addr = alloca %struct.spi_mem*, align 8
  %info.addr = alloca %struct.spi_mem_dirmap_info*, align 8
  %ptr = alloca %struct.spi_mem_dirmap_desc**, align 8
  %desc = alloca %struct.spi_mem_dirmap_desc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  store %struct.spi_mem* %mem, %struct.spi_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  store %struct.spi_mem_dirmap_info* %info, %struct.spi_mem_dirmap_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_info** %info.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc*** %ptr, metadata !5806, metadata !DIExpression()), !dbg !5807
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc, metadata !5808, metadata !DIExpression()), !dbg !5809
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_spi_mem_dirmap_release, i64 8, i32 3264) #8, !dbg !5810
  %0 = bitcast i8* %call to %struct.spi_mem_dirmap_desc**, !dbg !5810
  store %struct.spi_mem_dirmap_desc** %0, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5811
  %1 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5812
  %tobool = icmp ne %struct.spi_mem_dirmap_desc** %1, null, !dbg !5812
  br i1 %tobool, label %if.end, label %if.then, !dbg !5814

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #8, !dbg !5815
  %2 = bitcast i8* %call1 to %struct.spi_mem_dirmap_desc*, !dbg !5815
  store %struct.spi_mem_dirmap_desc* %2, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5816
  br label %return, !dbg !5816

if.end:                                           ; preds = %entry
  %3 = load %struct.spi_mem*, %struct.spi_mem** %mem.addr, align 8, !dbg !5817
  %4 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %info.addr, align 8, !dbg !5818
  %call2 = call %struct.spi_mem_dirmap_desc* @spi_mem_dirmap_create(%struct.spi_mem* %3, %struct.spi_mem_dirmap_info* %4) #8, !dbg !5819
  store %struct.spi_mem_dirmap_desc* %call2, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5820
  %5 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5821
  %6 = bitcast %struct.spi_mem_dirmap_desc* %5 to i8*, !dbg !5821
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #8, !dbg !5823
  br i1 %call3, label %if.then4, label %if.else, !dbg !5824

if.then4:                                         ; preds = %if.end
  %7 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5825
  %8 = bitcast %struct.spi_mem_dirmap_desc** %7 to i8*, !dbg !5825
  call void @devres_free(i8* %8) #8, !dbg !5827
  br label %if.end5, !dbg !5828

if.else:                                          ; preds = %if.end
  %9 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5829
  %10 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5831
  store %struct.spi_mem_dirmap_desc* %9, %struct.spi_mem_dirmap_desc** %10, align 8, !dbg !5832
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5833
  %12 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5834
  %13 = bitcast %struct.spi_mem_dirmap_desc** %12 to i8*, !dbg !5834
  call void @devres_add(%struct.device* %11, i8* %13) #8, !dbg !5835
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %14 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5836
  store %struct.spi_mem_dirmap_desc* %14, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5837
  br label %return, !dbg !5837

return:                                           ; preds = %if.end5, %if.then
  %15 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %retval, align 8, !dbg !5838
  ret %struct.spi_mem_dirmap_desc* %15, !dbg !5838
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !5839 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !5849
  %1 = load i64, i64* %size.addr, align 8, !dbg !5850
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5851
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #8, !dbg !5852
  ret i8* %call, !dbg !5853
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_spi_mem_dirmap_release(%struct.device* %dev, i8* %res) #0 !dbg !5854 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %desc = alloca %struct.spi_mem_dirmap_desc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc, metadata !5859, metadata !DIExpression()), !dbg !5860
  %0 = load i8*, i8** %res.addr, align 8, !dbg !5861
  %1 = bitcast i8* %0 to %struct.spi_mem_dirmap_desc**, !dbg !5862
  %2 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %1, align 8, !dbg !5863
  store %struct.spi_mem_dirmap_desc* %2, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5860
  %3 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc, align 8, !dbg !5864
  call void @spi_mem_dirmap_destroy(%struct.spi_mem_dirmap_desc* %3) #8, !dbg !5865
  ret void, !dbg !5866
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5867 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5872
  %1 = ptrtoint i8* %0 to i64, !dbg !5872
  %2 = inttoptr i64 %1 to i8*, !dbg !5872
  %3 = ptrtoint i8* %2 to i64, !dbg !5872
  %cmp = icmp uge i64 %3, -4095, !dbg !5872
  %lnot = xor i1 %cmp, true, !dbg !5872
  %lnot1 = xor i1 %lnot, true, !dbg !5872
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5872
  %conv = sext i32 %lnot.ext to i64, !dbg !5872
  %tobool = icmp ne i64 %conv, 0, !dbg !5872
  ret i1 %tobool, !dbg !5873
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_spi_mem_dirmap_destroy(%struct.device* %dev, %struct.spi_mem_dirmap_desc* %desc) #0 !dbg !5874 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %desc.addr = alloca %struct.spi_mem_dirmap_desc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  store %struct.spi_mem_dirmap_desc* %desc, %struct.spi_mem_dirmap_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5881
  %1 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5882
  %2 = bitcast %struct.spi_mem_dirmap_desc* %1 to i8*, !dbg !5882
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_spi_mem_dirmap_release, i32 (%struct.device*, i8*, i8*)* @devm_spi_mem_dirmap_match, i8* %2) #8, !dbg !5883
  ret void, !dbg !5884
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_spi_mem_dirmap_match(%struct.device* %dev, i8* %res, i8* %data) #0 !dbg !5885 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %ptr = alloca %struct.spi_mem_dirmap_desc**, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5888, metadata !DIExpression()), !dbg !5889
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc*** %ptr, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load i8*, i8** %res.addr, align 8, !dbg !5896
  %1 = bitcast i8* %0 to %struct.spi_mem_dirmap_desc**, !dbg !5896
  store %struct.spi_mem_dirmap_desc** %1, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5895
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5897, metadata !DIExpression()), !dbg !5900
  %2 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5900
  %tobool = icmp ne %struct.spi_mem_dirmap_desc** %2, null, !dbg !5900
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5900

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5900
  %4 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8, !dbg !5900
  %tobool1 = icmp ne %struct.spi_mem_dirmap_desc* %4, null, !dbg !5900
  %lnot = xor i1 %tobool1, true, !dbg !5900
  br label %lor.end, !dbg !5900

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %5, true, !dbg !5900
  %lnot3 = xor i1 %lnot2, true, !dbg !5900
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5900
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5900
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !5901
  %tobool4 = icmp ne i32 %6, 0, !dbg !5901
  %lnot5 = xor i1 %tobool4, true, !dbg !5901
  %lnot7 = xor i1 %lnot5, true, !dbg !5901
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5901
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5901
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5901
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5900

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5901

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !5903

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !5905

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !5903

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 608, i32 2305, i64 12) #10, !dbg !5907, !srcloc !5909
  br label %do.end12, !dbg !5907

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #10, !dbg !5910, !srcloc !5912
  br label %do.body13, !dbg !5903

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5913

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !5903

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !5903

if.end:                                           ; preds = %do.end15, %lor.end
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5900
  %tobool16 = icmp ne i32 %7, 0, !dbg !5900
  %lnot17 = xor i1 %tobool16, true, !dbg !5900
  %lnot19 = xor i1 %lnot17, true, !dbg !5900
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5900
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5900
  store i64 %conv21, i64* %tmp, align 8, !dbg !5901
  %8 = load i64, i64* %tmp, align 8, !dbg !5900
  %tobool22 = icmp ne i64 %8, 0, !dbg !5915
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5916

if.then23:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5917
  br label %return, !dbg !5917

if.end24:                                         ; preds = %if.end
  %9 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %ptr, align 8, !dbg !5918
  %10 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %9, align 8, !dbg !5919
  %11 = load i8*, i8** %data.addr, align 8, !dbg !5920
  %12 = bitcast i8* %11 to %struct.spi_mem_dirmap_desc*, !dbg !5920
  %cmp = icmp eq %struct.spi_mem_dirmap_desc* %10, %12, !dbg !5921
  %conv25 = zext i1 %cmp to i32, !dbg !5921
  store i32 %conv25, i32* %retval, align 4, !dbg !5922
  br label %return, !dbg !5922

return:                                           ; preds = %if.end24, %if.then23
  %13 = load i32, i32* %retval, align 4, !dbg !5923
  ret i32 %13, !dbg !5923
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @spi_mem_dirmap_read(%struct.spi_mem_dirmap_desc* %desc, i64 %offs, i64 %len, i8* %buf) #0 !dbg !5924 {
entry:
  %retval = alloca i64, align 8
  %desc.addr = alloca %struct.spi_mem_dirmap_desc*, align 8
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  %ret = alloca i64, align 8
  store %struct.spi_mem_dirmap_desc* %desc, %struct.spi_mem_dirmap_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5929, metadata !DIExpression()), !dbg !5930
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5931, metadata !DIExpression()), !dbg !5932
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !5933, metadata !DIExpression()), !dbg !5934
  %0 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5935
  %mem = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %0, i32 0, i32 0, !dbg !5936
  %1 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !5936
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %1, i32 0, i32 0, !dbg !5937
  %2 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !5937
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %2, i32 0, i32 1, !dbg !5938
  %3 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !5938
  store %struct.spi_controller* %3, %struct.spi_controller** %ctlr, align 8, !dbg !5934
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5939, metadata !DIExpression()), !dbg !5940
  %4 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5941
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %4, i32 0, i32 1, !dbg !5943
  %op_tmpl = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %info, i32 0, i32 0, !dbg !5944
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op_tmpl, i32 0, i32 3, !dbg !5945
  %dir = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 2, !dbg !5946
  %5 = load i32, i32* %dir, align 4, !dbg !5946
  %cmp = icmp ne i32 %5, 1, !dbg !5947
  br i1 %cmp, label %if.then, label %if.end, !dbg !5948

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !5949
  br label %return, !dbg !5949

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %len.addr, align 8, !dbg !5950
  %tobool = icmp ne i64 %6, 0, !dbg !5950
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !5952

if.then1:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !5953
  br label %return, !dbg !5953

if.end2:                                          ; preds = %if.end
  %7 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5954
  %nodirmap = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %7, i32 0, i32 2, !dbg !5956
  %8 = load i32, i32* %nodirmap, align 8, !dbg !5956
  %tobool3 = icmp ne i32 %8, 0, !dbg !5954
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5957

if.then4:                                         ; preds = %if.end2
  %9 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5958
  %10 = load i64, i64* %offs.addr, align 8, !dbg !5960
  %11 = load i64, i64* %len.addr, align 8, !dbg !5961
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !5962
  %call = call i64 @spi_mem_no_dirmap_read(%struct.spi_mem_dirmap_desc* %9, i64 %10, i64 %11, i8* %12) #8, !dbg !5963
  store i64 %call, i64* %ret, align 8, !dbg !5964
  br label %if.end20, !dbg !5965

if.else:                                          ; preds = %if.end2
  %13 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5966
  %mem_ops = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 50, !dbg !5968
  %14 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops, align 8, !dbg !5968
  %tobool5 = icmp ne %struct.spi_controller_mem_ops* %14, null, !dbg !5966
  br i1 %tobool5, label %land.lhs.true, label %if.else18, !dbg !5969

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5970
  %mem_ops6 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %15, i32 0, i32 50, !dbg !5971
  %16 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops6, align 8, !dbg !5971
  %dirmap_read = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %16, i32 0, i32 6, !dbg !5972
  %17 = load i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)** %dirmap_read, align 8, !dbg !5972
  %tobool7 = icmp ne i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)* %17, null, !dbg !5970
  br i1 %tobool7, label %if.then8, label %if.else18, !dbg !5973

if.then8:                                         ; preds = %land.lhs.true
  %18 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5974
  %mem9 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %18, i32 0, i32 0, !dbg !5976
  %19 = load %struct.spi_mem*, %struct.spi_mem** %mem9, align 8, !dbg !5976
  %call10 = call i32 @spi_mem_access_start(%struct.spi_mem* %19) #8, !dbg !5977
  %conv = sext i32 %call10 to i64, !dbg !5977
  store i64 %conv, i64* %ret, align 8, !dbg !5978
  %20 = load i64, i64* %ret, align 8, !dbg !5979
  %tobool11 = icmp ne i64 %20, 0, !dbg !5979
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5981

if.then12:                                        ; preds = %if.then8
  %21 = load i64, i64* %ret, align 8, !dbg !5982
  store i64 %21, i64* %retval, align 8, !dbg !5983
  br label %return, !dbg !5983

if.end13:                                         ; preds = %if.then8
  %22 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !5984
  %mem_ops14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 50, !dbg !5985
  %23 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops14, align 8, !dbg !5985
  %dirmap_read15 = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %23, i32 0, i32 6, !dbg !5986
  %24 = load i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)** %dirmap_read15, align 8, !dbg !5986
  %25 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5987
  %26 = load i64, i64* %offs.addr, align 8, !dbg !5988
  %27 = load i64, i64* %len.addr, align 8, !dbg !5989
  %28 = load i8*, i8** %buf.addr, align 8, !dbg !5990
  %call16 = call i64 %24(%struct.spi_mem_dirmap_desc* %25, i64 %26, i64 %27, i8* %28) #8, !dbg !5984
  store i64 %call16, i64* %ret, align 8, !dbg !5991
  %29 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !5992
  %mem17 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %29, i32 0, i32 0, !dbg !5993
  %30 = load %struct.spi_mem*, %struct.spi_mem** %mem17, align 8, !dbg !5993
  call void @spi_mem_access_end(%struct.spi_mem* %30) #8, !dbg !5994
  br label %if.end19, !dbg !5995

if.else18:                                        ; preds = %land.lhs.true, %if.else
  store i64 -524, i64* %ret, align 8, !dbg !5996
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.end13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then4
  %31 = load i64, i64* %ret, align 8, !dbg !5998
  store i64 %31, i64* %retval, align 8, !dbg !5999
  br label %return, !dbg !5999

return:                                           ; preds = %if.end20, %if.then12, %if.then1, %if.then
  %32 = load i64, i64* %retval, align 8, !dbg !6000
  ret i64 %32, !dbg !6000
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @spi_mem_no_dirmap_read(%struct.spi_mem_dirmap_desc* %desc, i64 %offs, i64 %len, i8* %buf) #0 !dbg !6001 {
entry:
  %retval = alloca i64, align 8
  %desc.addr = alloca %struct.spi_mem_dirmap_desc*, align 8
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %op = alloca %struct.spi_mem_op, align 8
  %ret = alloca i32, align 4
  store %struct.spi_mem_dirmap_desc* %desc, %struct.spi_mem_dirmap_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !6004, metadata !DIExpression()), !dbg !6005
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !6006, metadata !DIExpression()), !dbg !6007
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6008, metadata !DIExpression()), !dbg !6009
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op* %op, metadata !6010, metadata !DIExpression()), !dbg !6011
  %0 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6012
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %0, i32 0, i32 1, !dbg !6013
  %op_tmpl = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %info, i32 0, i32 0, !dbg !6014
  %1 = bitcast %struct.spi_mem_op* %op to i8*, !dbg !6014
  %2 = bitcast %struct.spi_mem_op* %op_tmpl to i8*, !dbg !6014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false), !dbg !6014
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6015, metadata !DIExpression()), !dbg !6016
  %3 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6017
  %info1 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %3, i32 0, i32 1, !dbg !6018
  %offset = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %info1, i32 0, i32 1, !dbg !6019
  %4 = load i64, i64* %offset, align 8, !dbg !6019
  %5 = load i64, i64* %offs.addr, align 8, !dbg !6020
  %add = add i64 %4, %5, !dbg !6021
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op, i32 0, i32 1, !dbg !6022
  %val = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr, i32 0, i32 3, !dbg !6023
  store i64 %add, i64* %val, align 8, !dbg !6024
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !6025
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op, i32 0, i32 3, !dbg !6026
  %buf2 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 4, !dbg !6027
  %in = bitcast %union.anon.72* %buf2 to i8**, !dbg !6028
  store i8* %6, i8** %in, align 8, !dbg !6029
  %7 = load i64, i64* %len.addr, align 8, !dbg !6030
  %conv = trunc i64 %7 to i32, !dbg !6030
  %data3 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op, i32 0, i32 3, !dbg !6031
  %nbytes = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data3, i32 0, i32 3, !dbg !6032
  store i32 %conv, i32* %nbytes, align 8, !dbg !6033
  %8 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6034
  %mem = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %8, i32 0, i32 0, !dbg !6035
  %9 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6035
  %call = call i32 @spi_mem_adjust_op_size(%struct.spi_mem* %9, %struct.spi_mem_op* %op) #8, !dbg !6036
  store i32 %call, i32* %ret, align 4, !dbg !6037
  %10 = load i32, i32* %ret, align 4, !dbg !6038
  %tobool = icmp ne i32 %10, 0, !dbg !6038
  br i1 %tobool, label %if.then, label %if.end, !dbg !6040

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %ret, align 4, !dbg !6041
  %conv4 = sext i32 %11 to i64, !dbg !6041
  store i64 %conv4, i64* %retval, align 8, !dbg !6042
  br label %return, !dbg !6042

if.end:                                           ; preds = %entry
  %12 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6043
  %mem5 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %12, i32 0, i32 0, !dbg !6044
  %13 = load %struct.spi_mem*, %struct.spi_mem** %mem5, align 8, !dbg !6044
  %call6 = call i32 @spi_mem_exec_op(%struct.spi_mem* %13, %struct.spi_mem_op* %op) #8, !dbg !6045
  store i32 %call6, i32* %ret, align 4, !dbg !6046
  %14 = load i32, i32* %ret, align 4, !dbg !6047
  %tobool7 = icmp ne i32 %14, 0, !dbg !6047
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6049

if.then8:                                         ; preds = %if.end
  %15 = load i32, i32* %ret, align 4, !dbg !6050
  %conv9 = sext i32 %15 to i64, !dbg !6050
  store i64 %conv9, i64* %retval, align 8, !dbg !6051
  br label %return, !dbg !6051

if.end10:                                         ; preds = %if.end
  %data11 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op, i32 0, i32 3, !dbg !6052
  %nbytes12 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data11, i32 0, i32 3, !dbg !6053
  %16 = load i32, i32* %nbytes12, align 8, !dbg !6053
  %conv13 = zext i32 %16 to i64, !dbg !6054
  store i64 %conv13, i64* %retval, align 8, !dbg !6055
  br label %return, !dbg !6055

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %17 = load i64, i64* %retval, align 8, !dbg !6056
  ret i64 %17, !dbg !6056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @spi_mem_dirmap_write(%struct.spi_mem_dirmap_desc* %desc, i64 %offs, i64 %len, i8* %buf) #0 !dbg !6057 {
entry:
  %retval = alloca i64, align 8
  %desc.addr = alloca %struct.spi_mem_dirmap_desc*, align 8
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  %ret = alloca i64, align 8
  store %struct.spi_mem_dirmap_desc* %desc, %struct.spi_mem_dirmap_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !6060, metadata !DIExpression()), !dbg !6061
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !6062, metadata !DIExpression()), !dbg !6063
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !6066, metadata !DIExpression()), !dbg !6067
  %0 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6068
  %mem = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %0, i32 0, i32 0, !dbg !6069
  %1 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6069
  %spi = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %1, i32 0, i32 0, !dbg !6070
  %2 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !6070
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %2, i32 0, i32 1, !dbg !6071
  %3 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !6071
  store %struct.spi_controller* %3, %struct.spi_controller** %ctlr, align 8, !dbg !6067
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !6072, metadata !DIExpression()), !dbg !6073
  %4 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6074
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %4, i32 0, i32 1, !dbg !6076
  %op_tmpl = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %info, i32 0, i32 0, !dbg !6077
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op_tmpl, i32 0, i32 3, !dbg !6078
  %dir = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 2, !dbg !6079
  %5 = load i32, i32* %dir, align 4, !dbg !6079
  %cmp = icmp ne i32 %5, 2, !dbg !6080
  br i1 %cmp, label %if.then, label %if.end, !dbg !6081

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !6082
  br label %return, !dbg !6082

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %len.addr, align 8, !dbg !6083
  %tobool = icmp ne i64 %6, 0, !dbg !6083
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6085

if.then1:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !6086
  br label %return, !dbg !6086

if.end2:                                          ; preds = %if.end
  %7 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6087
  %nodirmap = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %7, i32 0, i32 2, !dbg !6089
  %8 = load i32, i32* %nodirmap, align 8, !dbg !6089
  %tobool3 = icmp ne i32 %8, 0, !dbg !6087
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !6090

if.then4:                                         ; preds = %if.end2
  %9 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6091
  %10 = load i64, i64* %offs.addr, align 8, !dbg !6093
  %11 = load i64, i64* %len.addr, align 8, !dbg !6094
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !6095
  %call = call i64 @spi_mem_no_dirmap_write(%struct.spi_mem_dirmap_desc* %9, i64 %10, i64 %11, i8* %12) #8, !dbg !6096
  store i64 %call, i64* %ret, align 8, !dbg !6097
  br label %if.end20, !dbg !6098

if.else:                                          ; preds = %if.end2
  %13 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !6099
  %mem_ops = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 50, !dbg !6101
  %14 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops, align 8, !dbg !6101
  %tobool5 = icmp ne %struct.spi_controller_mem_ops* %14, null, !dbg !6099
  br i1 %tobool5, label %land.lhs.true, label %if.else18, !dbg !6102

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !6103
  %mem_ops6 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %15, i32 0, i32 50, !dbg !6104
  %16 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops6, align 8, !dbg !6104
  %dirmap_write = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %16, i32 0, i32 7, !dbg !6105
  %17 = load i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)** %dirmap_write, align 8, !dbg !6105
  %tobool7 = icmp ne i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)* %17, null, !dbg !6103
  br i1 %tobool7, label %if.then8, label %if.else18, !dbg !6106

if.then8:                                         ; preds = %land.lhs.true
  %18 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6107
  %mem9 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %18, i32 0, i32 0, !dbg !6109
  %19 = load %struct.spi_mem*, %struct.spi_mem** %mem9, align 8, !dbg !6109
  %call10 = call i32 @spi_mem_access_start(%struct.spi_mem* %19) #8, !dbg !6110
  %conv = sext i32 %call10 to i64, !dbg !6110
  store i64 %conv, i64* %ret, align 8, !dbg !6111
  %20 = load i64, i64* %ret, align 8, !dbg !6112
  %tobool11 = icmp ne i64 %20, 0, !dbg !6112
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6114

if.then12:                                        ; preds = %if.then8
  %21 = load i64, i64* %ret, align 8, !dbg !6115
  store i64 %21, i64* %retval, align 8, !dbg !6116
  br label %return, !dbg !6116

if.end13:                                         ; preds = %if.then8
  %22 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !6117
  %mem_ops14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 50, !dbg !6118
  %23 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops14, align 8, !dbg !6118
  %dirmap_write15 = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %23, i32 0, i32 7, !dbg !6119
  %24 = load i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)** %dirmap_write15, align 8, !dbg !6119
  %25 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6120
  %26 = load i64, i64* %offs.addr, align 8, !dbg !6121
  %27 = load i64, i64* %len.addr, align 8, !dbg !6122
  %28 = load i8*, i8** %buf.addr, align 8, !dbg !6123
  %call16 = call i64 %24(%struct.spi_mem_dirmap_desc* %25, i64 %26, i64 %27, i8* %28) #8, !dbg !6117
  store i64 %call16, i64* %ret, align 8, !dbg !6124
  %29 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6125
  %mem17 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %29, i32 0, i32 0, !dbg !6126
  %30 = load %struct.spi_mem*, %struct.spi_mem** %mem17, align 8, !dbg !6126
  call void @spi_mem_access_end(%struct.spi_mem* %30) #8, !dbg !6127
  br label %if.end19, !dbg !6128

if.else18:                                        ; preds = %land.lhs.true, %if.else
  store i64 -524, i64* %ret, align 8, !dbg !6129
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.end13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then4
  %31 = load i64, i64* %ret, align 8, !dbg !6131
  store i64 %31, i64* %retval, align 8, !dbg !6132
  br label %return, !dbg !6132

return:                                           ; preds = %if.end20, %if.then12, %if.then1, %if.then
  %32 = load i64, i64* %retval, align 8, !dbg !6133
  ret i64 %32, !dbg !6133
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @spi_mem_no_dirmap_write(%struct.spi_mem_dirmap_desc* %desc, i64 %offs, i64 %len, i8* %buf) #0 !dbg !6134 {
entry:
  %retval = alloca i64, align 8
  %desc.addr = alloca %struct.spi_mem_dirmap_desc*, align 8
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %op = alloca %struct.spi_mem_op, align 8
  %ret = alloca i32, align 4
  store %struct.spi_mem_dirmap_desc* %desc, %struct.spi_mem_dirmap_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_dirmap_desc** %desc.addr, metadata !6135, metadata !DIExpression()), !dbg !6136
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6141, metadata !DIExpression()), !dbg !6142
  call void @llvm.dbg.declare(metadata %struct.spi_mem_op* %op, metadata !6143, metadata !DIExpression()), !dbg !6144
  %0 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6145
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %0, i32 0, i32 1, !dbg !6146
  %op_tmpl = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %info, i32 0, i32 0, !dbg !6147
  %1 = bitcast %struct.spi_mem_op* %op to i8*, !dbg !6147
  %2 = bitcast %struct.spi_mem_op* %op_tmpl to i8*, !dbg !6147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false), !dbg !6147
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6148, metadata !DIExpression()), !dbg !6149
  %3 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6150
  %info1 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %3, i32 0, i32 1, !dbg !6151
  %offset = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %info1, i32 0, i32 1, !dbg !6152
  %4 = load i64, i64* %offset, align 8, !dbg !6152
  %5 = load i64, i64* %offs.addr, align 8, !dbg !6153
  %add = add i64 %4, %5, !dbg !6154
  %addr = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op, i32 0, i32 1, !dbg !6155
  %val = getelementptr inbounds %struct.anon.69, %struct.anon.69* %addr, i32 0, i32 3, !dbg !6156
  store i64 %add, i64* %val, align 8, !dbg !6157
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !6158
  %data = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op, i32 0, i32 3, !dbg !6159
  %buf2 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data, i32 0, i32 4, !dbg !6160
  %out = bitcast %union.anon.72* %buf2 to i8**, !dbg !6161
  store i8* %6, i8** %out, align 8, !dbg !6162
  %7 = load i64, i64* %len.addr, align 8, !dbg !6163
  %conv = trunc i64 %7 to i32, !dbg !6163
  %data3 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op, i32 0, i32 3, !dbg !6164
  %nbytes = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data3, i32 0, i32 3, !dbg !6165
  store i32 %conv, i32* %nbytes, align 8, !dbg !6166
  %8 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6167
  %mem = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %8, i32 0, i32 0, !dbg !6168
  %9 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6168
  %call = call i32 @spi_mem_adjust_op_size(%struct.spi_mem* %9, %struct.spi_mem_op* %op) #8, !dbg !6169
  store i32 %call, i32* %ret, align 4, !dbg !6170
  %10 = load i32, i32* %ret, align 4, !dbg !6171
  %tobool = icmp ne i32 %10, 0, !dbg !6171
  br i1 %tobool, label %if.then, label %if.end, !dbg !6173

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %ret, align 4, !dbg !6174
  %conv4 = sext i32 %11 to i64, !dbg !6174
  store i64 %conv4, i64* %retval, align 8, !dbg !6175
  br label %return, !dbg !6175

if.end:                                           ; preds = %entry
  %12 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %desc.addr, align 8, !dbg !6176
  %mem5 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %12, i32 0, i32 0, !dbg !6177
  %13 = load %struct.spi_mem*, %struct.spi_mem** %mem5, align 8, !dbg !6177
  %call6 = call i32 @spi_mem_exec_op(%struct.spi_mem* %13, %struct.spi_mem_op* %op) #8, !dbg !6178
  store i32 %call6, i32* %ret, align 4, !dbg !6179
  %14 = load i32, i32* %ret, align 4, !dbg !6180
  %tobool7 = icmp ne i32 %14, 0, !dbg !6180
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6182

if.then8:                                         ; preds = %if.end
  %15 = load i32, i32* %ret, align 4, !dbg !6183
  %conv9 = sext i32 %15 to i64, !dbg !6183
  store i64 %conv9, i64* %retval, align 8, !dbg !6184
  br label %return, !dbg !6184

if.end10:                                         ; preds = %if.end
  %data11 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %op, i32 0, i32 3, !dbg !6185
  %nbytes12 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %data11, i32 0, i32 3, !dbg !6186
  %16 = load i32, i32* %nbytes12, align 8, !dbg !6186
  %conv13 = zext i32 %16 to i64, !dbg !6187
  store i64 %conv13, i64* %retval, align 8, !dbg !6188
  br label %return, !dbg !6188

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %17 = load i64, i64* %retval, align 8, !dbg !6189
  ret i64 %17, !dbg !6189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @spi_mem_driver_register_with_owner(%struct.spi_mem_driver* %memdrv, %struct.module* %owner) #0 !dbg !6190 {
entry:
  %memdrv.addr = alloca %struct.spi_mem_driver*, align 8
  %owner.addr = alloca %struct.module*, align 8
  store %struct.spi_mem_driver* %memdrv, %struct.spi_mem_driver** %memdrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_driver** %memdrv.addr, metadata !6193, metadata !DIExpression()), !dbg !6194
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !6195, metadata !DIExpression()), !dbg !6196
  %0 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv.addr, align 8, !dbg !6197
  %spidrv = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %0, i32 0, i32 0, !dbg !6198
  %probe = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %spidrv, i32 0, i32 1, !dbg !6199
  store i32 (%struct.spi_device*)* @spi_mem_probe, i32 (%struct.spi_device*)** %probe, align 8, !dbg !6200
  %1 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv.addr, align 8, !dbg !6201
  %spidrv1 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %1, i32 0, i32 0, !dbg !6202
  %remove = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %spidrv1, i32 0, i32 2, !dbg !6203
  store i32 (%struct.spi_device*)* @spi_mem_remove, i32 (%struct.spi_device*)** %remove, align 8, !dbg !6204
  %2 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv.addr, align 8, !dbg !6205
  %spidrv2 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %2, i32 0, i32 0, !dbg !6206
  %shutdown = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %spidrv2, i32 0, i32 3, !dbg !6207
  store void (%struct.spi_device*)* @spi_mem_shutdown, void (%struct.spi_device*)** %shutdown, align 8, !dbg !6208
  %3 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !6209
  %4 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv.addr, align 8, !dbg !6210
  %spidrv3 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %4, i32 0, i32 0, !dbg !6211
  %call = call i32 @__spi_register_driver(%struct.module* %3, %struct.spi_driver* %spidrv3) #8, !dbg !6212
  ret i32 %call, !dbg !6213
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spi_mem_probe(%struct.spi_device* %spi) #0 !dbg !6214 {
entry:
  %retval = alloca i32, align 4
  %spi.addr = alloca %struct.spi_device*, align 8
  %memdrv = alloca %struct.spi_mem_driver*, align 8
  %ctlr = alloca %struct.spi_controller*, align 8
  %mem = alloca %struct.spi_mem*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6215, metadata !DIExpression()), !dbg !6216
  call void @llvm.dbg.declare(metadata %struct.spi_mem_driver** %memdrv, metadata !6217, metadata !DIExpression()), !dbg !6218
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6219
  %dev = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 0, !dbg !6220
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !6221
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6221
  %call = call %struct.spi_mem_driver* @to_spi_mem_drv(%struct.device_driver* %1) #8, !dbg !6222
  store %struct.spi_mem_driver* %call, %struct.spi_mem_driver** %memdrv, align 8, !dbg !6218
  call void @llvm.dbg.declare(metadata %struct.spi_controller** %ctlr, metadata !6223, metadata !DIExpression()), !dbg !6224
  %2 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6225
  %controller = getelementptr inbounds %struct.spi_device, %struct.spi_device* %2, i32 0, i32 1, !dbg !6226
  %3 = load %struct.spi_controller*, %struct.spi_controller** %controller, align 8, !dbg !6226
  store %struct.spi_controller* %3, %struct.spi_controller** %ctlr, align 8, !dbg !6224
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem, metadata !6227, metadata !DIExpression()), !dbg !6228
  %4 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6229
  %dev1 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %4, i32 0, i32 0, !dbg !6230
  %call2 = call i8* @devm_kzalloc(%struct.device* %dev1, i64 24, i32 3264) #8, !dbg !6231
  %5 = bitcast i8* %call2 to %struct.spi_mem*, !dbg !6231
  store %struct.spi_mem* %5, %struct.spi_mem** %mem, align 8, !dbg !6232
  %6 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6233
  %tobool = icmp ne %struct.spi_mem* %6, null, !dbg !6233
  br i1 %tobool, label %if.end, label %if.then, !dbg !6235

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6236
  br label %return, !dbg !6236

if.end:                                           ; preds = %entry
  %7 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6237
  %8 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6238
  %spi3 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %8, i32 0, i32 0, !dbg !6239
  store %struct.spi_device* %7, %struct.spi_device** %spi3, align 8, !dbg !6240
  %9 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !6241
  %mem_ops = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %9, i32 0, i32 50, !dbg !6243
  %10 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops, align 8, !dbg !6243
  %tobool4 = icmp ne %struct.spi_controller_mem_ops* %10, null, !dbg !6241
  br i1 %tobool4, label %land.lhs.true, label %if.else, !dbg !6244

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !6245
  %mem_ops5 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %11, i32 0, i32 50, !dbg !6246
  %12 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops5, align 8, !dbg !6246
  %get_name = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %12, i32 0, i32 3, !dbg !6247
  %13 = load i8* (%struct.spi_mem*)*, i8* (%struct.spi_mem*)** %get_name, align 8, !dbg !6247
  %tobool6 = icmp ne i8* (%struct.spi_mem*)* %13, null, !dbg !6245
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !6248

if.then7:                                         ; preds = %land.lhs.true
  %14 = load %struct.spi_controller*, %struct.spi_controller** %ctlr, align 8, !dbg !6249
  %mem_ops8 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %14, i32 0, i32 50, !dbg !6250
  %15 = load %struct.spi_controller_mem_ops*, %struct.spi_controller_mem_ops** %mem_ops8, align 8, !dbg !6250
  %get_name9 = getelementptr inbounds %struct.spi_controller_mem_ops, %struct.spi_controller_mem_ops* %15, i32 0, i32 3, !dbg !6251
  %16 = load i8* (%struct.spi_mem*)*, i8* (%struct.spi_mem*)** %get_name9, align 8, !dbg !6251
  %17 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6252
  %call10 = call i8* %16(%struct.spi_mem* %17) #8, !dbg !6249
  %18 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6253
  %name = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %18, i32 0, i32 2, !dbg !6254
  store i8* %call10, i8** %name, align 8, !dbg !6255
  br label %if.end14, !dbg !6253

if.else:                                          ; preds = %land.lhs.true, %if.end
  %19 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6256
  %dev11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0, !dbg !6257
  %call12 = call i8* @dev_name(%struct.device* %dev11) #8, !dbg !6258
  %20 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6259
  %name13 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %20, i32 0, i32 2, !dbg !6260
  store i8* %call12, i8** %name13, align 8, !dbg !6261
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %21 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6262
  %name15 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %21, i32 0, i32 2, !dbg !6264
  %22 = load i8*, i8** %name15, align 8, !dbg !6264
  %call16 = call zeroext i1 @IS_ERR_OR_NULL(i8* %22) #8, !dbg !6265
  br i1 %call16, label %if.then17, label %if.end20, !dbg !6266

if.then17:                                        ; preds = %if.end14
  %23 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6267
  %name18 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %23, i32 0, i32 2, !dbg !6268
  %24 = load i8*, i8** %name18, align 8, !dbg !6268
  %call19 = call i64 @PTR_ERR(i8* %24) #8, !dbg !6269
  %conv = trunc i64 %call19 to i32, !dbg !6269
  store i32 %conv, i32* %retval, align 4, !dbg !6270
  br label %return, !dbg !6270

if.end20:                                         ; preds = %if.end14
  %25 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6271
  %26 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6272
  %27 = bitcast %struct.spi_mem* %26 to i8*, !dbg !6272
  call void @spi_set_drvdata(%struct.spi_device* %25, i8* %27) #8, !dbg !6273
  %28 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv, align 8, !dbg !6274
  %probe = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %28, i32 0, i32 1, !dbg !6275
  %29 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %probe, align 8, !dbg !6275
  %30 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6276
  %call21 = call i32 %29(%struct.spi_mem* %30) #8, !dbg !6274
  store i32 %call21, i32* %retval, align 4, !dbg !6277
  br label %return, !dbg !6277

return:                                           ; preds = %if.end20, %if.then17, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !6278
  ret i32 %31, !dbg !6278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spi_mem_remove(%struct.spi_device* %spi) #0 !dbg !6279 {
entry:
  %retval = alloca i32, align 4
  %spi.addr = alloca %struct.spi_device*, align 8
  %memdrv = alloca %struct.spi_mem_driver*, align 8
  %mem = alloca %struct.spi_mem*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6280, metadata !DIExpression()), !dbg !6281
  call void @llvm.dbg.declare(metadata %struct.spi_mem_driver** %memdrv, metadata !6282, metadata !DIExpression()), !dbg !6283
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6284
  %dev = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 0, !dbg !6285
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !6286
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6286
  %call = call %struct.spi_mem_driver* @to_spi_mem_drv(%struct.device_driver* %1) #8, !dbg !6287
  store %struct.spi_mem_driver* %call, %struct.spi_mem_driver** %memdrv, align 8, !dbg !6283
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem, metadata !6288, metadata !DIExpression()), !dbg !6289
  %2 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6290
  %call1 = call i8* @spi_get_drvdata(%struct.spi_device* %2) #8, !dbg !6291
  %3 = bitcast i8* %call1 to %struct.spi_mem*, !dbg !6291
  store %struct.spi_mem* %3, %struct.spi_mem** %mem, align 8, !dbg !6289
  %4 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv, align 8, !dbg !6292
  %remove = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %4, i32 0, i32 2, !dbg !6294
  %5 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %remove, align 8, !dbg !6294
  %tobool = icmp ne i32 (%struct.spi_mem*)* %5, null, !dbg !6292
  br i1 %tobool, label %if.then, label %if.end, !dbg !6295

if.then:                                          ; preds = %entry
  %6 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv, align 8, !dbg !6296
  %remove2 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %6, i32 0, i32 2, !dbg !6297
  %7 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %remove2, align 8, !dbg !6297
  %8 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6298
  %call3 = call i32 %7(%struct.spi_mem* %8) #8, !dbg !6296
  store i32 %call3, i32* %retval, align 4, !dbg !6299
  br label %return, !dbg !6299

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6300
  br label %return, !dbg !6300

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !6301
  ret i32 %9, !dbg !6301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_mem_shutdown(%struct.spi_device* %spi) #0 !dbg !6302 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %memdrv = alloca %struct.spi_mem_driver*, align 8
  %mem = alloca %struct.spi_mem*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  call void @llvm.dbg.declare(metadata %struct.spi_mem_driver** %memdrv, metadata !6305, metadata !DIExpression()), !dbg !6306
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6307
  %dev = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 0, !dbg !6308
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !6309
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6309
  %call = call %struct.spi_mem_driver* @to_spi_mem_drv(%struct.device_driver* %1) #8, !dbg !6310
  store %struct.spi_mem_driver* %call, %struct.spi_mem_driver** %memdrv, align 8, !dbg !6306
  call void @llvm.dbg.declare(metadata %struct.spi_mem** %mem, metadata !6311, metadata !DIExpression()), !dbg !6312
  %2 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6313
  %call1 = call i8* @spi_get_drvdata(%struct.spi_device* %2) #8, !dbg !6314
  %3 = bitcast i8* %call1 to %struct.spi_mem*, !dbg !6314
  store %struct.spi_mem* %3, %struct.spi_mem** %mem, align 8, !dbg !6312
  %4 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv, align 8, !dbg !6315
  %shutdown = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %4, i32 0, i32 3, !dbg !6317
  %5 = load void (%struct.spi_mem*)*, void (%struct.spi_mem*)** %shutdown, align 8, !dbg !6317
  %tobool = icmp ne void (%struct.spi_mem*)* %5, null, !dbg !6315
  br i1 %tobool, label %if.then, label %if.end, !dbg !6318

if.then:                                          ; preds = %entry
  %6 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv, align 8, !dbg !6319
  %shutdown2 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %6, i32 0, i32 3, !dbg !6320
  %7 = load void (%struct.spi_mem*)*, void (%struct.spi_mem*)** %shutdown2, align 8, !dbg !6320
  %8 = load %struct.spi_mem*, %struct.spi_mem** %mem, align 8, !dbg !6321
  call void %7(%struct.spi_mem* %8) #8, !dbg !6319
  br label %if.end, !dbg !6319

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6322
}

; Function Attrs: noredzone
declare dso_local i32 @__spi_register_driver(%struct.module*, %struct.spi_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @spi_mem_driver_unregister(%struct.spi_mem_driver* %memdrv) #0 !dbg !6323 {
entry:
  %memdrv.addr = alloca %struct.spi_mem_driver*, align 8
  store %struct.spi_mem_driver* %memdrv, %struct.spi_mem_driver** %memdrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_mem_driver** %memdrv.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  %0 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %memdrv.addr, align 8, !dbg !6328
  %spidrv = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %0, i32 0, i32 0, !dbg !6329
  call void @spi_unregister_driver(%struct.spi_driver* %spidrv) #8, !dbg !6330
  ret void, !dbg !6331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_unregister_driver(%struct.spi_driver* %sdrv) #0 !dbg !6332 {
entry:
  %sdrv.addr = alloca %struct.spi_driver*, align 8
  store %struct.spi_driver* %sdrv, %struct.spi_driver** %sdrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_driver** %sdrv.addr, metadata !6336, metadata !DIExpression()), !dbg !6337
  %0 = load %struct.spi_driver*, %struct.spi_driver** %sdrv.addr, align 8, !dbg !6338
  %tobool = icmp ne %struct.spi_driver* %0, null, !dbg !6338
  br i1 %tobool, label %if.then, label %if.end, !dbg !6340

if.then:                                          ; preds = %entry
  %1 = load %struct.spi_driver*, %struct.spi_driver** %sdrv.addr, align 8, !dbg !6341
  %driver = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %1, i32 0, i32 4, !dbg !6342
  call void @driver_unregister(%struct.device_driver* %driver) #8, !dbg !6343
  br label %if.end, !dbg !6343

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @spi_mem_buswidth_is_valid(i8 zeroext %buswidth) #0 !dbg !6345 {
entry:
  %retval = alloca i1, align 1
  %buswidth.addr = alloca i8, align 1
  store i8 %buswidth, i8* %buswidth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %buswidth.addr, metadata !6348, metadata !DIExpression()), !dbg !6349
  %0 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %1 = call i1 @llvm.is.constant.i8(i8 %0), !dbg !6350
  br i1 %1, label %cond.true, label %cond.false, !dbg !6350

cond.true:                                        ; preds = %entry
  %2 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv = zext i8 %2 to i64, !dbg !6350
  %and = and i64 %conv, 1, !dbg !6350
  %tobool = icmp ne i64 %and, 0, !dbg !6350
  %lnot = xor i1 %tobool, true, !dbg !6350
  %lnot1 = xor i1 %lnot, true, !dbg !6350
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6350
  %3 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv2 = zext i8 %3 to i64, !dbg !6350
  %and3 = and i64 %conv2, 2, !dbg !6350
  %tobool4 = icmp ne i64 %and3, 0, !dbg !6350
  %lnot5 = xor i1 %tobool4, true, !dbg !6350
  %lnot7 = xor i1 %lnot5, true, !dbg !6350
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6350
  %add = add i32 %lnot.ext, %lnot.ext8, !dbg !6350
  %4 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv9 = zext i8 %4 to i64, !dbg !6350
  %and10 = and i64 %conv9, 4, !dbg !6350
  %tobool11 = icmp ne i64 %and10, 0, !dbg !6350
  %lnot12 = xor i1 %tobool11, true, !dbg !6350
  %lnot14 = xor i1 %lnot12, true, !dbg !6350
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !6350
  %add16 = add i32 %add, %lnot.ext15, !dbg !6350
  %5 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv17 = zext i8 %5 to i64, !dbg !6350
  %and18 = and i64 %conv17, 8, !dbg !6350
  %tobool19 = icmp ne i64 %and18, 0, !dbg !6350
  %lnot20 = xor i1 %tobool19, true, !dbg !6350
  %lnot22 = xor i1 %lnot20, true, !dbg !6350
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6350
  %add24 = add i32 %add16, %lnot.ext23, !dbg !6350
  %6 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv25 = zext i8 %6 to i64, !dbg !6350
  %and26 = and i64 %conv25, 16, !dbg !6350
  %tobool27 = icmp ne i64 %and26, 0, !dbg !6350
  %lnot28 = xor i1 %tobool27, true, !dbg !6350
  %lnot30 = xor i1 %lnot28, true, !dbg !6350
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !6350
  %add32 = add i32 %add24, %lnot.ext31, !dbg !6350
  %7 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv33 = zext i8 %7 to i64, !dbg !6350
  %and34 = and i64 %conv33, 32, !dbg !6350
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6350
  %lnot36 = xor i1 %tobool35, true, !dbg !6350
  %lnot38 = xor i1 %lnot36, true, !dbg !6350
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !6350
  %add40 = add i32 %add32, %lnot.ext39, !dbg !6350
  %8 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv41 = zext i8 %8 to i64, !dbg !6350
  %and42 = and i64 %conv41, 64, !dbg !6350
  %tobool43 = icmp ne i64 %and42, 0, !dbg !6350
  %lnot44 = xor i1 %tobool43, true, !dbg !6350
  %lnot46 = xor i1 %lnot44, true, !dbg !6350
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !6350
  %add48 = add i32 %add40, %lnot.ext47, !dbg !6350
  %9 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv49 = zext i8 %9 to i64, !dbg !6350
  %and50 = and i64 %conv49, 128, !dbg !6350
  %tobool51 = icmp ne i64 %and50, 0, !dbg !6350
  %lnot52 = xor i1 %tobool51, true, !dbg !6350
  %lnot54 = xor i1 %lnot52, true, !dbg !6350
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6350
  %add56 = add i32 %add48, %lnot.ext55, !dbg !6350
  br label %cond.end, !dbg !6350

cond.false:                                       ; preds = %entry
  %10 = load i8, i8* %buswidth.addr, align 1, !dbg !6350
  %conv57 = zext i8 %10 to i32, !dbg !6350
  %call = call i32 @__arch_hweight8(i32 %conv57) #8, !dbg !6350
  br label %cond.end, !dbg !6350

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add56, %cond.true ], [ %call, %cond.false ], !dbg !6350
  %cmp = icmp ugt i32 %cond, 1, !dbg !6352
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6353

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load i8, i8* %buswidth.addr, align 1, !dbg !6354
  %conv59 = zext i8 %11 to i32, !dbg !6354
  %cmp60 = icmp sgt i32 %conv59, 8, !dbg !6355
  br i1 %cmp60, label %if.then, label %if.end, !dbg !6356

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i1 false, i1* %retval, align 1, !dbg !6357
  br label %return, !dbg !6357

if.end:                                           ; preds = %lor.lhs.false
  store i1 true, i1* %retval, align 1, !dbg !6358
  br label %return, !dbg !6358

return:                                           ; preds = %if.end, %if.then
  %12 = load i1, i1* %retval, align 1, !dbg !6359
  ret i1 %12, !dbg !6359
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i8(i8) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__arch_hweight8(i32 %w) #0 !dbg !6360 {
entry:
  %w.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr.i, metadata !6364, metadata !DIExpression()), !dbg !6366
  %res.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %res.i, metadata !6368, metadata !DIExpression()), !dbg !6369
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr, metadata !6370, metadata !DIExpression()), !dbg !6371
  %0 = load i32, i32* %w.addr, align 4, !dbg !6372
  %and = and i32 %0, 255, !dbg !6373
  store i32 %and, i32* %w.addr.i, align 4
  %1 = load i32, i32* %w.addr.i, align 4, !dbg !6374
  %2 = call i32 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight32\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntl $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i32 %1) #13, !dbg !6375, !srcloc !6376
  store i32 %2, i32* %res.i, align 4, !dbg !6375
  %3 = load i32, i32* %res.i, align 4, !dbg !6377
  ret i32 %3, !dbg !6378
}

; Function Attrs: noredzone
declare dso_local void @spi_flush_queue(%struct.spi_controller*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !6379 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6383
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #8, !dbg !6384
  ret i32 %call, !dbg !6385
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put(%struct.device* %dev) #0 !dbg !6386 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6387, metadata !DIExpression()), !dbg !6388
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6389
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) #8, !dbg !6390
  ret i32 %call, !dbg !6391
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6392 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6396, metadata !DIExpression()), !dbg !6401
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6403, metadata !DIExpression()), !dbg !6404
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6405, metadata !DIExpression()), !dbg !6406
  %0 = load i64, i64* %size.addr, align 8, !dbg !6407
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6409
  br i1 %1, label %if.then, label %if.end447, !dbg !6410

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6411
  %tobool = icmp ne i64 %2, 0, !dbg !6411
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6414

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6415
  br label %return, !dbg !6415

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6416
  %cmp = icmp ult i64 %3, 4096, !dbg !6418
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6419

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6420
  br label %return, !dbg !6420

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub = sub i64 %4, 1, !dbg !6421
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6421
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6421

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub4 = sub i64 %6, 1, !dbg !6421
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6421
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6421

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub6 = sub i64 %8, 1, !dbg !6421
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6421
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6421

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6421

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub9 = sub i64 %9, 1, !dbg !6421
  %and = and i64 %sub9, -9223372036854775808, !dbg !6421
  %tobool10 = icmp ne i64 %and, 0, !dbg !6421
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6421

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6421

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub13 = sub i64 %10, 1, !dbg !6421
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6421
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6421
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6421

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6421

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub18 = sub i64 %11, 1, !dbg !6421
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6421
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6421
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6421

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6421

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub23 = sub i64 %12, 1, !dbg !6421
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6421
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6421
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6421

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6421

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub28 = sub i64 %13, 1, !dbg !6421
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6421
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6421
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6421

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6421

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub33 = sub i64 %14, 1, !dbg !6421
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6421
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6421
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6421

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6421

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub38 = sub i64 %15, 1, !dbg !6421
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6421
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6421
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6421

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6421

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub43 = sub i64 %16, 1, !dbg !6421
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6421
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6421
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6421

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6421

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub48 = sub i64 %17, 1, !dbg !6421
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6421
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6421
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6421

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6421

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub53 = sub i64 %18, 1, !dbg !6421
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6421
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6421
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6421

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6421

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub58 = sub i64 %19, 1, !dbg !6421
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6421
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6421
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6421

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6421

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub63 = sub i64 %20, 1, !dbg !6421
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6421
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6421
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6421

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6421

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub68 = sub i64 %21, 1, !dbg !6421
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6421
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6421
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6421

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6421

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub73 = sub i64 %22, 1, !dbg !6421
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6421
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6421
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6421

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6421

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub78 = sub i64 %23, 1, !dbg !6421
  %and79 = and i64 %sub78, 562949953421312, !dbg !6421
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6421
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6421

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6421

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub83 = sub i64 %24, 1, !dbg !6421
  %and84 = and i64 %sub83, 281474976710656, !dbg !6421
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6421
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6421

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6421

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub88 = sub i64 %25, 1, !dbg !6421
  %and89 = and i64 %sub88, 140737488355328, !dbg !6421
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6421
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6421

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6421

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub93 = sub i64 %26, 1, !dbg !6421
  %and94 = and i64 %sub93, 70368744177664, !dbg !6421
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6421
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6421

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6421

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub98 = sub i64 %27, 1, !dbg !6421
  %and99 = and i64 %sub98, 35184372088832, !dbg !6421
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6421
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6421

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6421

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub103 = sub i64 %28, 1, !dbg !6421
  %and104 = and i64 %sub103, 17592186044416, !dbg !6421
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6421
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6421

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6421

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub108 = sub i64 %29, 1, !dbg !6421
  %and109 = and i64 %sub108, 8796093022208, !dbg !6421
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6421
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6421

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6421

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub113 = sub i64 %30, 1, !dbg !6421
  %and114 = and i64 %sub113, 4398046511104, !dbg !6421
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6421
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6421

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6421

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub118 = sub i64 %31, 1, !dbg !6421
  %and119 = and i64 %sub118, 2199023255552, !dbg !6421
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6421
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6421

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6421

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub123 = sub i64 %32, 1, !dbg !6421
  %and124 = and i64 %sub123, 1099511627776, !dbg !6421
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6421
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6421

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6421

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub128 = sub i64 %33, 1, !dbg !6421
  %and129 = and i64 %sub128, 549755813888, !dbg !6421
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6421
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6421

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6421

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub133 = sub i64 %34, 1, !dbg !6421
  %and134 = and i64 %sub133, 274877906944, !dbg !6421
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6421
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6421

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6421

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub138 = sub i64 %35, 1, !dbg !6421
  %and139 = and i64 %sub138, 137438953472, !dbg !6421
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6421
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6421

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6421

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub143 = sub i64 %36, 1, !dbg !6421
  %and144 = and i64 %sub143, 68719476736, !dbg !6421
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6421
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6421

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6421

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub148 = sub i64 %37, 1, !dbg !6421
  %and149 = and i64 %sub148, 34359738368, !dbg !6421
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6421
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6421

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6421

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub153 = sub i64 %38, 1, !dbg !6421
  %and154 = and i64 %sub153, 17179869184, !dbg !6421
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6421
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6421

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6421

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub158 = sub i64 %39, 1, !dbg !6421
  %and159 = and i64 %sub158, 8589934592, !dbg !6421
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6421
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6421

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6421

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub163 = sub i64 %40, 1, !dbg !6421
  %and164 = and i64 %sub163, 4294967296, !dbg !6421
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6421
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6421

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6421

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub168 = sub i64 %41, 1, !dbg !6421
  %and169 = and i64 %sub168, 2147483648, !dbg !6421
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6421
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6421

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6421

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub173 = sub i64 %42, 1, !dbg !6421
  %and174 = and i64 %sub173, 1073741824, !dbg !6421
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6421
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6421

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6421

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub178 = sub i64 %43, 1, !dbg !6421
  %and179 = and i64 %sub178, 536870912, !dbg !6421
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6421
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6421

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6421

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub183 = sub i64 %44, 1, !dbg !6421
  %and184 = and i64 %sub183, 268435456, !dbg !6421
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6421
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6421

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6421

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub188 = sub i64 %45, 1, !dbg !6421
  %and189 = and i64 %sub188, 134217728, !dbg !6421
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6421
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6421

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6421

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub193 = sub i64 %46, 1, !dbg !6421
  %and194 = and i64 %sub193, 67108864, !dbg !6421
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6421
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6421

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6421

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub198 = sub i64 %47, 1, !dbg !6421
  %and199 = and i64 %sub198, 33554432, !dbg !6421
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6421
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6421

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6421

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub203 = sub i64 %48, 1, !dbg !6421
  %and204 = and i64 %sub203, 16777216, !dbg !6421
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6421
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6421

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6421

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub208 = sub i64 %49, 1, !dbg !6421
  %and209 = and i64 %sub208, 8388608, !dbg !6421
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6421
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6421

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6421

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub213 = sub i64 %50, 1, !dbg !6421
  %and214 = and i64 %sub213, 4194304, !dbg !6421
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6421
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6421

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6421

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub218 = sub i64 %51, 1, !dbg !6421
  %and219 = and i64 %sub218, 2097152, !dbg !6421
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6421
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6421

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6421

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub223 = sub i64 %52, 1, !dbg !6421
  %and224 = and i64 %sub223, 1048576, !dbg !6421
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6421
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6421

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6421

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub228 = sub i64 %53, 1, !dbg !6421
  %and229 = and i64 %sub228, 524288, !dbg !6421
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6421
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6421

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6421

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub233 = sub i64 %54, 1, !dbg !6421
  %and234 = and i64 %sub233, 262144, !dbg !6421
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6421
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6421

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6421

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub238 = sub i64 %55, 1, !dbg !6421
  %and239 = and i64 %sub238, 131072, !dbg !6421
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6421
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6421

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6421

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub243 = sub i64 %56, 1, !dbg !6421
  %and244 = and i64 %sub243, 65536, !dbg !6421
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6421
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6421

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6421

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub248 = sub i64 %57, 1, !dbg !6421
  %and249 = and i64 %sub248, 32768, !dbg !6421
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6421
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6421

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6421

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub253 = sub i64 %58, 1, !dbg !6421
  %and254 = and i64 %sub253, 16384, !dbg !6421
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6421
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6421

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6421

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub258 = sub i64 %59, 1, !dbg !6421
  %and259 = and i64 %sub258, 8192, !dbg !6421
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6421
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6421

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6421

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub263 = sub i64 %60, 1, !dbg !6421
  %and264 = and i64 %sub263, 4096, !dbg !6421
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6421
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6421

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6421

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub268 = sub i64 %61, 1, !dbg !6421
  %and269 = and i64 %sub268, 2048, !dbg !6421
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6421
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6421

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6421

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub273 = sub i64 %62, 1, !dbg !6421
  %and274 = and i64 %sub273, 1024, !dbg !6421
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6421
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6421

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6421

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub278 = sub i64 %63, 1, !dbg !6421
  %and279 = and i64 %sub278, 512, !dbg !6421
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6421
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6421

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6421

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub283 = sub i64 %64, 1, !dbg !6421
  %and284 = and i64 %sub283, 256, !dbg !6421
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6421
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6421

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6421

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub288 = sub i64 %65, 1, !dbg !6421
  %and289 = and i64 %sub288, 128, !dbg !6421
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6421
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6421

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6421

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub293 = sub i64 %66, 1, !dbg !6421
  %and294 = and i64 %sub293, 64, !dbg !6421
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6421
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6421

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6421

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub298 = sub i64 %67, 1, !dbg !6421
  %and299 = and i64 %sub298, 32, !dbg !6421
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6421
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6421

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6421

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub303 = sub i64 %68, 1, !dbg !6421
  %and304 = and i64 %sub303, 16, !dbg !6421
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6421
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6421

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6421

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub308 = sub i64 %69, 1, !dbg !6421
  %and309 = and i64 %sub308, 8, !dbg !6421
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6421
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6421

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6421

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub313 = sub i64 %70, 1, !dbg !6421
  %and314 = and i64 %sub313, 4, !dbg !6421
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6421
  %71 = zext i1 %tobool315 to i64, !dbg !6421
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6421
  br label %cond.end, !dbg !6421

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6421
  br label %cond.end317, !dbg !6421

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6421
  br label %cond.end319, !dbg !6421

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6421
  br label %cond.end321, !dbg !6421

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6421
  br label %cond.end323, !dbg !6421

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6421
  br label %cond.end325, !dbg !6421

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6421
  br label %cond.end327, !dbg !6421

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6421
  br label %cond.end329, !dbg !6421

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6421
  br label %cond.end331, !dbg !6421

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6421
  br label %cond.end333, !dbg !6421

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6421
  br label %cond.end335, !dbg !6421

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6421
  br label %cond.end337, !dbg !6421

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6421
  br label %cond.end339, !dbg !6421

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6421
  br label %cond.end341, !dbg !6421

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6421
  br label %cond.end343, !dbg !6421

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6421
  br label %cond.end345, !dbg !6421

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6421
  br label %cond.end347, !dbg !6421

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6421
  br label %cond.end349, !dbg !6421

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6421
  br label %cond.end351, !dbg !6421

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6421
  br label %cond.end353, !dbg !6421

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6421
  br label %cond.end355, !dbg !6421

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6421
  br label %cond.end357, !dbg !6421

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6421
  br label %cond.end359, !dbg !6421

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6421
  br label %cond.end361, !dbg !6421

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6421
  br label %cond.end363, !dbg !6421

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6421
  br label %cond.end365, !dbg !6421

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6421
  br label %cond.end367, !dbg !6421

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6421
  br label %cond.end369, !dbg !6421

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6421
  br label %cond.end371, !dbg !6421

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6421
  br label %cond.end373, !dbg !6421

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6421
  br label %cond.end375, !dbg !6421

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6421
  br label %cond.end377, !dbg !6421

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6421
  br label %cond.end379, !dbg !6421

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6421
  br label %cond.end381, !dbg !6421

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6421
  br label %cond.end383, !dbg !6421

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6421
  br label %cond.end385, !dbg !6421

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6421
  br label %cond.end387, !dbg !6421

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6421
  br label %cond.end389, !dbg !6421

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6421
  br label %cond.end391, !dbg !6421

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6421
  br label %cond.end393, !dbg !6421

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6421
  br label %cond.end395, !dbg !6421

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6421
  br label %cond.end397, !dbg !6421

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6421
  br label %cond.end399, !dbg !6421

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6421
  br label %cond.end401, !dbg !6421

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6421
  br label %cond.end403, !dbg !6421

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6421
  br label %cond.end405, !dbg !6421

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6421
  br label %cond.end407, !dbg !6421

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6421
  br label %cond.end409, !dbg !6421

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6421
  br label %cond.end411, !dbg !6421

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6421
  br label %cond.end413, !dbg !6421

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6421
  br label %cond.end415, !dbg !6421

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6421
  br label %cond.end417, !dbg !6421

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6421
  br label %cond.end419, !dbg !6421

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6421
  br label %cond.end421, !dbg !6421

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6421
  br label %cond.end423, !dbg !6421

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6421
  br label %cond.end425, !dbg !6421

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6421
  br label %cond.end427, !dbg !6421

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6421
  br label %cond.end429, !dbg !6421

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6421
  br label %cond.end431, !dbg !6421

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6421
  br label %cond.end433, !dbg !6421

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6421
  br label %cond.end435, !dbg !6421

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6421
  br label %cond.end437, !dbg !6421

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6421
  br label %cond.end440, !dbg !6421

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6421

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6421
  br label %cond.end444, !dbg !6421

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6421
  %sub443 = sub i64 %72, 1, !dbg !6421
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !6421
  br label %cond.end444, !dbg !6421

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6421
  %sub446 = sub i32 %cond445, 12, !dbg !6422
  %add = add i32 %sub446, 1, !dbg !6423
  store i32 %add, i32* %retval, align 4, !dbg !6424
  br label %return, !dbg !6424

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6425
  %dec = add i64 %73, -1, !dbg !6425
  store i64 %dec, i64* %size.addr, align 8, !dbg !6425
  %74 = load i64, i64* %size.addr, align 8, !dbg !6426
  %shr = lshr i64 %74, 12, !dbg !6426
  store i64 %shr, i64* %size.addr, align 8, !dbg !6426
  %75 = load i64, i64* %size.addr, align 8, !dbg !6427
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6404
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6428
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6429
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6428, !srcloc !6430
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6428
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6431
  %add.i = add i32 %79, 1, !dbg !6432
  store i32 %add.i, i32* %retval, align 4, !dbg !6433
  br label %return, !dbg !6433

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6434
  ret i32 %80, !dbg !6434
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6435 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6396, metadata !DIExpression()), !dbg !6439
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6403, metadata !DIExpression()), !dbg !6441
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6442, metadata !DIExpression()), !dbg !6443
  %0 = load i64, i64* %n.addr, align 8, !dbg !6444
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6441
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6445
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6446
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6445, !srcloc !6430
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6445
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6447
  %add.i = add i32 %4, 1, !dbg !6448
  %sub = sub i32 %add.i, 1, !dbg !6449
  ret i32 %sub, !dbg !6450
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6451 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6455, metadata !DIExpression()), !dbg !6456
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6457, metadata !DIExpression()), !dbg !6458
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6459, metadata !DIExpression()), !dbg !6460
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6461, metadata !DIExpression()), !dbg !6462
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6463
  ret i8* %0, !dbg !6464
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_message_init_no_memset(%struct.spi_message* %m) #0 !dbg !6465 {
entry:
  %m.addr = alloca %struct.spi_message*, align 8
  store %struct.spi_message* %m, %struct.spi_message** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_message** %m.addr, metadata !6466, metadata !DIExpression()), !dbg !6467
  %0 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6468
  %transfers = getelementptr inbounds %struct.spi_message, %struct.spi_message* %0, i32 0, i32 0, !dbg !6469
  call void @INIT_LIST_HEAD(%struct.list_head* %transfers) #8, !dbg !6470
  %1 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6471
  %resources = getelementptr inbounds %struct.spi_message, %struct.spi_message* %1, i32 0, i32 10, !dbg !6472
  call void @INIT_LIST_HEAD(%struct.list_head* %resources) #8, !dbg !6473
  ret void, !dbg !6474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !6475 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6479, metadata !DIExpression()), !dbg !6480
  br label %do.body, !dbg !6481

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6482

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6484

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6482

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6486
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6486
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6486
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !6486
  br label %do.end3, !dbg !6486

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6482

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6488
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6489
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !6490
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !6491
  ret void, !dbg !6492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !6493 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6496, metadata !DIExpression()), !dbg !6497
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6498, metadata !DIExpression()), !dbg !6499
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6500
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6501
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6502
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6502
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6503
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !6504
  ret void, !dbg !6505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6506 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6509, metadata !DIExpression()), !dbg !6510
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6511, metadata !DIExpression()), !dbg !6512
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6513, metadata !DIExpression()), !dbg !6514
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6515
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6517
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6518
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !6519
  br i1 %call, label %if.end, label %if.then, !dbg !6520

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6521

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6522
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6523
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6524
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6525
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6526
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6527
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6528
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6529
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6530
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6531
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6532
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6533
  br label %do.body, !dbg !6534

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6535

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6537

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6535

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6539
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6539
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6539
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6539
  br label %do.end7, !dbg !6539

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6535

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6542 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6545, metadata !DIExpression()), !dbg !6546
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6547, metadata !DIExpression()), !dbg !6548
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6549, metadata !DIExpression()), !dbg !6550
  ret i1 true, !dbg !6551
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.spi_mem_driver* @to_spi_mem_drv(%struct.device_driver* %drv) #0 !dbg !6552 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.spi_mem_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !6555, metadata !DIExpression()), !dbg !6556
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6557, metadata !DIExpression()), !dbg !6559
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !6559
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !6559
  store i8* %1, i8** %__mptr, align 8, !dbg !6559
  br label %do.body, !dbg !6559

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6560

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6559
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !6559
  %3 = bitcast i8* %add.ptr to %struct.spi_mem_driver*, !dbg !6559
  store %struct.spi_mem_driver* %3, %struct.spi_mem_driver** %tmp, align 8, !dbg !6560
  %4 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %tmp, align 8, !dbg !6559
  ret %struct.spi_mem_driver* %4, !dbg !6562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !6563 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6566, metadata !DIExpression()), !dbg !6567
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6568, metadata !DIExpression()), !dbg !6569
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !6570, metadata !DIExpression()), !dbg !6571
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6572
  %1 = load i64, i64* %size.addr, align 8, !dbg !6573
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !6574
  %or = or i32 %2, 256, !dbg !6575
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !6576
  ret i8* %call, !dbg !6577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !6578 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6581, metadata !DIExpression()), !dbg !6582
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6583
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !6585
  %1 = load i8*, i8** %init_name, align 8, !dbg !6585
  %tobool = icmp ne i8* %1, null, !dbg !6583
  br i1 %tobool, label %if.then, label %if.end, !dbg !6586

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6587
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !6588
  %3 = load i8*, i8** %init_name1, align 8, !dbg !6588
  store i8* %3, i8** %retval, align 8, !dbg !6589
  br label %return, !dbg !6589

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6590
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !6591
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !6592
  store i8* %call, i8** %retval, align 8, !dbg !6593
  br label %return, !dbg !6593

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !6594
  ret i8* %5, !dbg !6594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !6595 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6596, metadata !DIExpression()), !dbg !6597
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6598
  %tobool = icmp ne i8* %0, null, !dbg !6598
  %lnot = xor i1 %tobool, true, !dbg !6598
  %lnot1 = xor i1 %lnot, true, !dbg !6598
  %lnot2 = xor i1 %lnot1, true, !dbg !6598
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6598
  %conv = sext i32 %lnot.ext to i64, !dbg !6598
  %tobool3 = icmp ne i64 %conv, 0, !dbg !6598
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !6599

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !6600
  %2 = ptrtoint i8* %1 to i64, !dbg !6600
  %3 = inttoptr i64 %2 to i8*, !dbg !6600
  %4 = ptrtoint i8* %3 to i64, !dbg !6600
  %cmp = icmp uge i64 %4, -4095, !dbg !6600
  %lnot5 = xor i1 %cmp, true, !dbg !6600
  %lnot7 = xor i1 %lnot5, true, !dbg !6600
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6600
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !6600
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !6599
  br label %lor.end, !dbg !6599

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !6601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !6602 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6605, metadata !DIExpression()), !dbg !6606
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6607
  %1 = ptrtoint i8* %0 to i64, !dbg !6608
  ret i64 %1, !dbg !6609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_set_drvdata(%struct.spi_device* %spi, i8* %data) #0 !dbg !6610 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6613, metadata !DIExpression()), !dbg !6614
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6615, metadata !DIExpression()), !dbg !6616
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6617
  %dev = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 0, !dbg !6618
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6619
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !6620
  ret void, !dbg !6621
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6622 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6627, metadata !DIExpression()), !dbg !6628
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6629
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6630
  %1 = load i8*, i8** %name, align 8, !dbg !6630
  ret i8* %1, !dbg !6631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !6632 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6633, metadata !DIExpression()), !dbg !6634
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6635, metadata !DIExpression()), !dbg !6636
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6637
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6638
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6639
  store i8* %0, i8** %driver_data, align 8, !dbg !6640
  ret void, !dbg !6641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @spi_get_drvdata(%struct.spi_device* %spi) #0 !dbg !6642 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6645, metadata !DIExpression()), !dbg !6646
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6647
  %dev = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 0, !dbg !6648
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !6649
  ret i8* %call, !dbg !6650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !6651 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6654, metadata !DIExpression()), !dbg !6655
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6656
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6657
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6657
  ret i8* %1, !dbg !6658
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4470, !4471, !4472, !4473}
!llvm.ident = !{!4474}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/spi/spi-mem.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !97, !103, !112, !117, !129, !135, !139, !146, !157, !164, !171, !176}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !12, line: 546, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !23, line: 16, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 59, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !42, line: 296, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !71, line: 343, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !78, line: 524, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !78, line: 502, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spi_mem_data_dir", file: !92, line: 65, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/spi/spi-mem.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "SPI_MEM_NO_DATA", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "SPI_MEM_DATA_IN", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "SPI_MEM_DATA_OUT", value: 2, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_desc_metadata_mode", file: !98, line: 288, baseType: !5, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/dmaengine.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "DESC_METADATA_NONE", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "DESC_METADATA_CLIENT", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "DESC_METADATA_ENGINE", value: 2, isUnsigned: true)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_alignment", file: !98, line: 732, baseType: !5, size: 32, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111}
!105 = !DIEnumerator(name: "DMAENGINE_ALIGN_1_BYTE", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "DMAENGINE_ALIGN_2_BYTES", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "DMAENGINE_ALIGN_4_BYTES", value: 2, isUnsigned: true)
!108 = !DIEnumerator(name: "DMAENGINE_ALIGN_8_BYTES", value: 3, isUnsigned: true)
!109 = !DIEnumerator(name: "DMAENGINE_ALIGN_16_BYTES", value: 4, isUnsigned: true)
!110 = !DIEnumerator(name: "DMAENGINE_ALIGN_32_BYTES", value: 5, isUnsigned: true)
!111 = !DIEnumerator(name: "DMAENGINE_ALIGN_64_BYTES", value: 6, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_residue_granularity", file: !98, line: 468, baseType: !5, size: 32, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_DESCRIPTOR", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_SEGMENT", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_BURST", value: 2, isUnsigned: true)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_ctrl_flags", file: !98, line: 194, baseType: !5, size: 32, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!119 = !DIEnumerator(name: "DMA_PREP_INTERRUPT", value: 1, isUnsigned: true)
!120 = !DIEnumerator(name: "DMA_CTRL_ACK", value: 2, isUnsigned: true)
!121 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_P", value: 4, isUnsigned: true)
!122 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_Q", value: 8, isUnsigned: true)
!123 = !DIEnumerator(name: "DMA_PREP_CONTINUE", value: 16, isUnsigned: true)
!124 = !DIEnumerator(name: "DMA_PREP_FENCE", value: 32, isUnsigned: true)
!125 = !DIEnumerator(name: "DMA_CTRL_REUSE", value: 64, isUnsigned: true)
!126 = !DIEnumerator(name: "DMA_PREP_CMD", value: 128, isUnsigned: true)
!127 = !DIEnumerator(name: "DMA_PREP_REPEAT", value: 256, isUnsigned: true)
!128 = !DIEnumerator(name: "DMA_PREP_LOAD_EOT", value: 512, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_tx_result", file: !98, line: 533, baseType: !5, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "DMA_TRANS_NOERROR", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "DMA_TRANS_READ_FAILED", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "DMA_TRANS_WRITE_FAILED", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "DMA_TRANS_ABORTED", value: 3, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sum_check_flags", file: !98, line: 220, baseType: !5, size: 32, elements: !136)
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "SUM_CHECK_P_RESULT", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "SUM_CHECK_Q_RESULT", value: 2, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_transfer_direction", file: !98, line: 79, baseType: !5, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145}
!141 = !DIEnumerator(name: "DMA_MEM_TO_MEM", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "DMA_MEM_TO_DEV", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "DMA_DEV_TO_MEM", value: 2, isUnsigned: true)
!144 = !DIEnumerator(name: "DMA_DEV_TO_DEV", value: 3, isUnsigned: true)
!145 = !DIEnumerator(name: "DMA_TRANS_NONE", value: 4, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_slave_buswidth", file: !98, line: 371, baseType: !5, size: 32, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_UNDEFINED", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_1_BYTE", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_2_BYTES", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_3_BYTES", value: 3, isUnsigned: true)
!152 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_4_BYTES", value: 4, isUnsigned: true)
!153 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_8_BYTES", value: 8, isUnsigned: true)
!154 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_16_BYTES", value: 16, isUnsigned: true)
!155 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_32_BYTES", value: 32, isUnsigned: true)
!156 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_64_BYTES", value: 64, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_status", file: !98, line: 37, baseType: !5, size: 32, elements: !158)
!158 = !{!159, !160, !161, !162, !163}
!159 = !DIEnumerator(name: "DMA_COMPLETE", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "DMA_IN_PROGRESS", value: 1, isUnsigned: true)
!161 = !DIEnumerator(name: "DMA_PAUSED", value: 2, isUnsigned: true)
!162 = !DIEnumerator(name: "DMA_ERROR", value: 3, isUnsigned: true)
!163 = !DIEnumerator(name: "DMA_OUT_OF_ORDER", value: 4, isUnsigned: true)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !165, line: 5, baseType: !5, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!170 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 10, baseType: !5, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174, !175}
!174 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!175 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !177, line: 305, baseType: !5, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!180 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!181 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!182 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!183 = !{!184, !186, !5, !191, !192, !199, !190, !4444, !308}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !185, line: 148, baseType: !5)
!185 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !185, line: 55, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !188, line: 72, baseType: !189)
!188 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !188, line: 16, baseType: !190)
!190 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !185, line: 178, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !185, line: 179, baseType: !194, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !195, file: !185, line: 179, baseType: !194, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_dirmap_desc", file: !92, line: 175, size: 768, elements: !202)
!202 = !{!203, !4436, !4442, !4443}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !201, file: !92, line: 176, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem", file: !92, line: 194, size: 192, elements: !206)
!206 = !{!207, !4434, !4435}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !205, file: !92, line: 195, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_device", file: !210, line: 159, size: 8256, elements: !211)
!210 = !DIFile(filename: "./include/linux/spi/spi.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!212, !3847, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !209, file: !210, line: 160, baseType: !213, size: 5568)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !214)
!214 = !{!215, !3400, !3402, !3405, !3406, !3457, !3548, !3549, !3550, !3551, !3552, !3561, !3666, !3679, !3682, !3683, !3687, !3689, !3690, !3691, !3695, !3701, !3702, !3705, !3709, !3799, !3800, !3801, !3802, !3803, !3835, !3836, !3837, !3840, !3843, !3844, !3845, !3846}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !213, file: !71, line: 462, baseType: !216, size: 512)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !217, line: 64, size: 512, elements: !218)
!217 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!218 = !{!219, !223, !224, !226, !287, !3251, !3390, !3395, !3396, !3397, !3398, !3399}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !217, line: 65, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !216, file: !217, line: 66, baseType: !195, size: 128, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !217, line: 67, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !216, file: !217, line: 68, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !217, line: 192, size: 704, elements: !229)
!229 = !{!230, !231, !247, !248}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !228, file: !217, line: 193, baseType: !195, size: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !228, file: !217, line: 194, baseType: !232, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !233, line: 83, baseType: !234)
!233 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !233, line: 71, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !233, line: 72, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !233, line: 72, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !237, file: !233, line: 73, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !233, line: 20, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !240, file: !233, line: 21, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !244, line: 25, baseType: !245)
!244 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !244, line: 25, elements: !246)
!246 = !{}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !228, file: !217, line: 195, baseType: !216, size: 512, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !228, file: !217, line: 196, baseType: !249, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !217, line: 156, size: 192, elements: !252)
!252 = !{!253, !259, !264}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !251, file: !217, line: 157, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !227, !225}
!258 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !217, line: 158, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!220, !227, !225}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !251, file: !217, line: 159, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!258, !227, !225, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !217, line: 148, size: 20736, elements: !271)
!271 = !{!272, !277, !281, !282, !286}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !270, file: !217, line: 149, baseType: !273, size: 192)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 192, elements: !275)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!275 = !{!276}
!276 = !DISubrange(count: 3)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !270, file: !217, line: 150, baseType: !278, size: 4096, offset: 192)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 4096, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !270, file: !217, line: 151, baseType: !258, size: 32, offset: 4288)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !270, file: !217, line: 152, baseType: !283, size: 16384, offset: 4320)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 16384, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 2048)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !270, file: !217, line: 153, baseType: !258, size: 32, offset: 20704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !216, file: !217, line: 69, baseType: !288, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !217, line: 138, size: 448, elements: !290)
!290 = !{!291, !295, !320, !322, !3213, !3241, !3245}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !289, file: !217, line: 139, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !225}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !289, file: !217, line: 140, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !299, line: 230, size: 128, elements: !300)
!299 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!300 = !{!301, !316}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !298, file: !299, line: 231, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !225, !309, !274}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !185, line: 60, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !188, line: 73, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !188, line: 15, baseType: !308)
!308 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !299, line: 30, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !299, line: 31, baseType: !220, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !310, file: !299, line: 32, baseType: !314, size: 16, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !185, line: 19, baseType: !315)
!315 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !298, file: !299, line: 232, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!305, !225, !309, !220, !186}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !289, file: !217, line: 141, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !289, file: !217, line: 142, baseType: !323, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !299, line: 84, size: 320, elements: !327)
!327 = !{!328, !329, !333, !3210, !3211}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !299, line: 85, baseType: !220, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !326, file: !299, line: 86, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!314, !225, !309, !258}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !326, file: !299, line: 88, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!314, !225, !337, !258}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !299, line: 168, size: 448, elements: !339)
!339 = !{!340, !341, !342, !343, !3205, !3206}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !338, file: !299, line: 169, baseType: !310, size: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !338, file: !299, line: 170, baseType: !186, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !338, file: !299, line: 171, baseType: !191, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !338, file: !299, line: 172, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!305, !347, !225, !337, !274, !526, !186}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !349)
!349 = !{!350, !368, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3188, !3189, !3198, !3199, !3200, !3201, !3202, !3203, !3204}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !348, file: !42, line: 920, baseType: !351, size: 128)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !42, line: 917, size: 128, elements: !352)
!352 = !{!353, !359}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !351, file: !42, line: 918, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !355, line: 58, size: 64, elements: !356)
!355 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !355, line: 59, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !351, file: !42, line: 919, baseType: !360, size: 128, align: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !185, line: 216, size: 128, align: 64, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !185, line: 217, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !360, file: !185, line: 218, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !363}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !348, file: !42, line: 921, baseType: !369, size: 128, offset: 128)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !370, line: 8, size: 128, elements: !371)
!370 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!371 = !{!372, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !369, file: !370, line: 9, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !375, line: 18, flags: DIFlagFwdDecl)
!375 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !369, file: !370, line: 10, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !375, line: 89, size: 1536, elements: !379)
!379 = !{!380, !381, !391, !399, !400, !423, !3138, !3140, !3152, !3153, !3154, !3155, !3156, !3162, !3163, !3164}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !378, file: !375, line: 91, baseType: !5, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !378, file: !375, line: 92, baseType: !382, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !383, line: 277, baseType: !384)
!383 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !383, line: 277, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !384, file: !383, line: 277, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !383, line: 70, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !383, line: 65, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !388, file: !383, line: 66, baseType: !5, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !378, file: !375, line: 93, baseType: !392, size: 128, offset: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !393, line: 38, size: 128, elements: !394)
!393 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !393, line: 39, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !392, file: !393, line: 39, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !378, file: !375, line: 94, baseType: !377, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !378, file: !375, line: 95, baseType: !401, size: 128, offset: 256)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !375, line: 47, size: 128, elements: !402)
!402 = !{!403, !419}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !375, line: 48, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !375, line: 48, size: 64, elements: !405)
!405 = !{!406, !415}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !375, line: 49, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !375, line: 49, size: 64, elements: !408)
!408 = !{!409, !414}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !407, file: !375, line: 50, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !411, line: 21, baseType: !412)
!411 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !413, line: 27, baseType: !5)
!413 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !407, file: !375, line: 50, baseType: !410, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !404, file: !375, line: 52, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !411, line: 23, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !413, line: 31, baseType: !418)
!418 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !375, line: 54, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !378, file: !375, line: 96, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !426)
!426 = !{!427, !428, !429, !437, !444, !445, !593, !2841, !2842, !2843, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !3106, !3114, !3115, !3116, !3134, !3135, !3136, !3137}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !425, file: !42, line: 611, baseType: !314, size: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !425, file: !42, line: 612, baseType: !315, size: 16, offset: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !425, file: !42, line: 613, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !431, line: 23, baseType: !432)
!431 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 21, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !432, file: !431, line: 22, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !185, line: 32, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !188, line: 49, baseType: !5)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !425, file: !42, line: 614, baseType: !438, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !431, line: 28, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 26, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !439, file: !431, line: 27, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !185, line: 33, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !188, line: 50, baseType: !5)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !425, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !425, file: !42, line: 622, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !449)
!449 = !{!450, !454, !467, !471, !477, !481, !487, !491, !495, !499, !503, !504, !510, !514, !540, !569, !573, !579, !584, !588, !589}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !448, file: !42, line: 1865, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!377, !424, !377, !5}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !448, file: !42, line: 1866, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!220, !377, !424, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !460, line: 10, size: 128, elements: !461)
!460 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !459, file: !460, line: 11, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !191}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !459, file: !460, line: 12, baseType: !191, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !448, file: !42, line: 1867, baseType: !468, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!258, !424, !258}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !448, file: !42, line: 1868, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !424, !258}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !448, file: !42, line: 1870, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!258, !377, !274, !258}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !448, file: !42, line: 1872, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!258, !424, !377, !314, !485}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !185, line: 30, baseType: !486)
!486 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !448, file: !42, line: 1873, baseType: !488, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!258, !377, !424, !377}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !448, file: !42, line: 1874, baseType: !492, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!258, !424, !377}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !448, file: !42, line: 1875, baseType: !496, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!258, !424, !377, !220}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !448, file: !42, line: 1876, baseType: !500, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!258, !424, !377, !314}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !448, file: !42, line: 1877, baseType: !492, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !448, file: !42, line: 1878, baseType: !505, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!258, !424, !377, !314, !508}
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !185, line: 16, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !185, line: 13, baseType: !410)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !448, file: !42, line: 1879, baseType: !511, size: 64, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!258, !424, !377, !424, !377, !5}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !448, file: !42, line: 1881, baseType: !515, size: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!258, !377, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !529, !537, !538, !539}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !519, file: !42, line: 220, baseType: !5, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !519, file: !42, line: 221, baseType: !314, size: 16, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !519, file: !42, line: 222, baseType: !430, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !519, file: !42, line: 223, baseType: !438, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !519, file: !42, line: 224, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !185, line: 46, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !188, line: 88, baseType: !528)
!528 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !519, file: !42, line: 225, baseType: !530, size: 128, offset: 192)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !531, line: 13, size: 128, elements: !532)
!531 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!532 = !{!533, !536}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !530, file: !531, line: 14, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !531, line: 8, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !413, line: 30, baseType: !528)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !530, file: !531, line: 15, baseType: !308, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !519, file: !42, line: 226, baseType: !530, size: 128, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !519, file: !42, line: 227, baseType: !530, size: 128, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !519, file: !42, line: 234, baseType: !347, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !448, file: !42, line: 1882, baseType: !541, size: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!258, !544, !546, !410, !5}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !548, line: 22, size: 1152, elements: !549)
!548 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550, !551, !552, !553, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !547, file: !548, line: 23, baseType: !410, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !547, file: !548, line: 24, baseType: !314, size: 16, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !547, file: !548, line: 25, baseType: !5, size: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !547, file: !548, line: 26, baseType: !554, size: 32, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !185, line: 104, baseType: !410)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !547, file: !548, line: 27, baseType: !416, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !547, file: !548, line: 28, baseType: !416, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !547, file: !548, line: 37, baseType: !416, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !547, file: !548, line: 38, baseType: !508, size: 32, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !547, file: !548, line: 39, baseType: !508, size: 32, offset: 352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !547, file: !548, line: 40, baseType: !430, size: 32, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !547, file: !548, line: 41, baseType: !438, size: 32, offset: 416)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !547, file: !548, line: 42, baseType: !526, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !547, file: !548, line: 43, baseType: !530, size: 128, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !547, file: !548, line: 44, baseType: !530, size: 128, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !547, file: !548, line: 45, baseType: !530, size: 128, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !547, file: !548, line: 46, baseType: !530, size: 128, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !547, file: !548, line: 47, baseType: !416, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !547, file: !548, line: 48, baseType: !416, size: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !448, file: !42, line: 1883, baseType: !570, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!305, !377, !274, !186}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !448, file: !42, line: 1884, baseType: !574, size: 64, offset: 1024)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!258, !424, !577, !416, !416}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !448, file: !42, line: 1886, baseType: !580, size: 64, offset: 1088)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!258, !424, !583, !258}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !448, file: !42, line: 1887, baseType: !585, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!258, !424, !377, !347, !5, !314}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !448, file: !42, line: 1890, baseType: !500, size: 64, offset: 1216)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !448, file: !42, line: 1891, baseType: !590, size: 64, offset: 1280)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!258, !424, !475, !258}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !425, file: !42, line: 623, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !652, !2448, !2530, !2613, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2629, !2633, !2634, !2637, !2638, !2641, !2642, !2643, !2684, !2711, !2712, !2713, !2714, !2715, !2716, !2719, !2721, !2728, !2729, !2731, !2732, !2733, !2792, !2793, !2808, !2809, !2810, !2811, !2812, !2815, !2816, !2817, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !595, file: !42, line: 1417, baseType: !195, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !595, file: !42, line: 1418, baseType: !508, size: 32, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !595, file: !42, line: 1419, baseType: !422, size: 8, offset: 160)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !595, file: !42, line: 1420, baseType: !190, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !595, file: !42, line: 1421, baseType: !526, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !595, file: !42, line: 1422, baseType: !603, size: 64, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !605)
!605 = !{!606, !607, !608, !615, !619, !623, !627, !631, !632, !642, !645, !646, !647, !649, !650, !651}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !604, file: !42, line: 2229, baseType: !220, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !604, file: !42, line: 2230, baseType: !258, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !604, file: !42, line: 2238, baseType: !609, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!258, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !614, line: 28, flags: DIFlagFwdDecl)
!614 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !604, file: !42, line: 2239, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !604, file: !42, line: 2240, baseType: !620, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!377, !603, !258, !220, !191}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !604, file: !42, line: 2242, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !594}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !604, file: !42, line: 2243, baseType: !628, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !630, line: 76, flags: DIFlagFwdDecl)
!630 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !604, file: !42, line: 2244, baseType: !603, size: 64, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !604, file: !42, line: 2245, baseType: !633, size: 64, offset: 512)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !185, line: 182, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !633, file: !185, line: 183, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !185, line: 186, size: 128, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !637, file: !185, line: 187, baseType: !636, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !637, file: !185, line: 187, baseType: !641, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !604, file: !42, line: 2247, baseType: !643, offset: 576)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !644, line: 187, elements: !246)
!644 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !604, file: !42, line: 2248, baseType: !643, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !604, file: !42, line: 2249, baseType: !643, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !604, file: !42, line: 2250, baseType: !648, offset: 576)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, elements: !275)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !604, file: !42, line: 2252, baseType: !643, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !604, file: !42, line: 2253, baseType: !643, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !604, file: !42, line: 2254, baseType: !643, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !595, file: !42, line: 1423, baseType: !653, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !656)
!656 = !{!657, !661, !665, !666, !670, !676, !680, !681, !682, !686, !690, !691, !692, !693, !699, !704, !705, !712, !713, !714, !715, !2432, !2447}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !655, file: !42, line: 1936, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!424, !594}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !655, file: !42, line: 1937, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !424}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !655, file: !42, line: 1938, baseType: !662, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !655, file: !42, line: 1940, baseType: !667, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !424, !258}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !655, file: !42, line: 1941, baseType: !671, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!258, !424, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !655, file: !42, line: 1942, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!258, !424}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !655, file: !42, line: 1943, baseType: !662, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !655, file: !42, line: 1944, baseType: !624, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !655, file: !42, line: 1945, baseType: !683, size: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!258, !594, !258}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !655, file: !42, line: 1946, baseType: !687, size: 64, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!258, !594}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !655, file: !42, line: 1947, baseType: !687, size: 64, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !655, file: !42, line: 1948, baseType: !687, size: 64, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !655, file: !42, line: 1949, baseType: !687, size: 64, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !655, file: !42, line: 1950, baseType: !694, size: 64, offset: 832)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!258, !377, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !655, file: !42, line: 1951, baseType: !700, size: 64, offset: 896)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!258, !594, !703, !274}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !655, file: !42, line: 1952, baseType: !624, size: 64, offset: 960)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !655, file: !42, line: 1954, baseType: !706, size: 64, offset: 1024)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!258, !709, !377}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !711, line: 539, flags: DIFlagFwdDecl)
!711 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!712 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !655, file: !42, line: 1955, baseType: !706, size: 64, offset: 1088)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !655, file: !42, line: 1956, baseType: !706, size: 64, offset: 1152)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !655, file: !42, line: 1957, baseType: !706, size: 64, offset: 1216)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !655, file: !42, line: 1963, baseType: !716, size: 64, offset: 1280)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!258, !594, !719, !184}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !721, line: 68, size: 512, align: 128, elements: !722)
!721 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!722 = !{!723, !724, !2424, !2431}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !721, line: 69, baseType: !190, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !721, line: 77, baseType: !725, size: 320, offset: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !721, line: 77, size: 320, elements: !726)
!726 = !{!727, !954, !959, !987, !995, !1001, !2355, !2423}
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !721, line: 78, baseType: !728, size: 320)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !721, line: 78, size: 320, elements: !729)
!729 = !{!730, !731, !952, !953}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !728, file: !721, line: 84, baseType: !195, size: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !728, file: !721, line: 86, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !734)
!734 = !{!735, !736, !743, !744, !749, !764, !780, !781, !782, !783, !945, !946, !949, !950, !951}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !733, file: !42, line: 452, baseType: !424, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !733, file: !42, line: 453, baseType: !737, size: 128, offset: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !738, line: 292, size: 128, elements: !739)
!738 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !741, !742}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !737, file: !738, line: 293, baseType: !232)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !737, file: !738, line: 295, baseType: !184, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !737, file: !738, line: 296, baseType: !191, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !733, file: !42, line: 454, baseType: !184, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !733, file: !42, line: 455, baseType: !745, size: 32, offset: 224)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !185, line: 168, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 166, size: 32, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !746, file: !185, line: 167, baseType: !258, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !733, file: !42, line: 460, baseType: !750, size: 128, offset: 256)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !751, line: 125, size: 128, elements: !752)
!751 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !763}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !750, file: !751, line: 126, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !751, line: 31, size: 64, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !754, file: !751, line: 32, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !751, line: 24, size: 192, align: 64, elements: !759)
!759 = !{!760, !761, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !758, file: !751, line: 25, baseType: !190, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !758, file: !751, line: 26, baseType: !757, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !758, file: !751, line: 27, baseType: !757, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !750, file: !751, line: 127, baseType: !757, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !733, file: !42, line: 461, baseType: !765, size: 256, offset: 384)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !766, line: 35, size: 256, elements: !767)
!766 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!767 = !{!768, !776, !777, !779}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !765, file: !766, line: 36, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !770, line: 13, baseType: !771)
!770 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !185, line: 175, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 173, size: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !772, file: !185, line: 174, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !411, line: 22, baseType: !535)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !765, file: !766, line: 42, baseType: !769, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !765, file: !766, line: 46, baseType: !778, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !233, line: 29, baseType: !240)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !765, file: !766, line: 47, baseType: !195, size: 128, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !733, file: !42, line: 462, baseType: !190, size: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !733, file: !42, line: 463, baseType: !190, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !733, file: !42, line: 464, baseType: !190, size: 64, offset: 768)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !733, file: !42, line: 465, baseType: !784, size: 64, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !787)
!787 = !{!788, !792, !796, !800, !804, !808, !814, !820, !824, !829, !833, !837, !841, !909, !913, !919, !920, !921, !925, !930, !934, !941}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !786, file: !42, line: 368, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!258, !719, !674}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !786, file: !42, line: 369, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!258, !347, !719}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !786, file: !42, line: 372, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!258, !732, !674}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !786, file: !42, line: 375, baseType: !801, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!258, !719}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !786, file: !42, line: 381, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!258, !347, !732, !194, !5}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !786, file: !42, line: 383, baseType: !809, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !786, file: !42, line: 385, baseType: !815, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!258, !347, !732, !526, !5, !5, !818, !819}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !786, file: !42, line: 388, baseType: !821, size: 64, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!258, !347, !732, !526, !5, !5, !719, !191}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !786, file: !42, line: 393, baseType: !825, size: 64, offset: 512)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!828, !732, !828}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !185, line: 125, baseType: !416)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !786, file: !42, line: 394, baseType: !830, size: 64, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !719, !5, !5}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !786, file: !42, line: 395, baseType: !834, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!258, !719, !184}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !786, file: !42, line: 396, baseType: !838, size: 64, offset: 704)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !719}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !786, file: !42, line: 397, baseType: !842, size: 64, offset: 768)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!305, !845, !867}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !847)
!847 = !{!848, !849, !850, !854, !855, !856, !859, !860}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !846, file: !42, line: 321, baseType: !347, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !846, file: !42, line: 326, baseType: !526, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !846, file: !42, line: 327, baseType: !851, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !845, !308, !308}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !846, file: !42, line: 328, baseType: !191, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !846, file: !42, line: 329, baseType: !258, size: 32, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !846, file: !42, line: 330, baseType: !857, size: 16, offset: 288)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !411, line: 19, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !413, line: 24, baseType: !315)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !846, file: !42, line: 331, baseType: !857, size: 16, offset: 304)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !42, line: 332, baseType: !861, size: 64, offset: 320)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !42, line: 332, size: 64, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !861, file: !42, line: 333, baseType: !5, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !861, file: !42, line: 334, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !869, line: 29, size: 320, elements: !870)
!869 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!870 = !{!871, !872, !873, !874, !900}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !868, file: !869, line: 35, baseType: !5, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !868, file: !869, line: 36, baseType: !186, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !868, file: !869, line: 37, baseType: !186, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !869, line: 38, baseType: !875, size: 64, offset: 192)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !869, line: 38, size: 64, elements: !876)
!876 = !{!877, !885, !892, !896}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !875, file: !869, line: 39, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !881, line: 17, size: 128, elements: !882)
!881 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !880, file: !881, line: 19, baseType: !191, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !880, file: !881, line: 20, baseType: !187, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !875, file: !869, line: 40, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !869, line: 15, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !888, file: !869, line: 16, baseType: !191, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !888, file: !869, line: 17, baseType: !186, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !875, file: !869, line: 41, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !869, line: 41, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !875, file: !869, line: 42, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !899, line: 53, flags: DIFlagFwdDecl)
!899 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !869, line: 44, baseType: !901, size: 64, offset: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !869, line: 44, size: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !901, file: !869, line: 45, baseType: !190, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !869, line: 46, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !869, line: 46, size: 64, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !905, file: !869, line: 47, baseType: !5, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !905, file: !869, line: 48, baseType: !5, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !786, file: !42, line: 402, baseType: !910, size: 64, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!258, !732, !719, !719, !3}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !786, file: !42, line: 404, baseType: !914, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!485, !719, !917}
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !918, line: 305, baseType: !5)
!918 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!919 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !786, file: !42, line: 405, baseType: !838, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !786, file: !42, line: 406, baseType: !801, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !786, file: !42, line: 407, baseType: !922, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!258, !719, !190, !190}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !786, file: !42, line: 409, baseType: !926, size: 64, offset: 1152)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !719, !929, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !786, file: !42, line: 410, baseType: !931, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!258, !732, !719}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !786, file: !42, line: 413, baseType: !935, size: 64, offset: 1280)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!258, !938, !347, !940}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !786, file: !42, line: 415, baseType: !942, size: 64, offset: 1344)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !347}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !42, line: 466, baseType: !190, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !733, file: !42, line: 467, baseType: !947, size: 32, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !948, line: 8, baseType: !410)
!948 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!949 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !733, file: !42, line: 468, baseType: !232, offset: 992)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !733, file: !42, line: 469, baseType: !195, size: 128, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !733, file: !42, line: 470, baseType: !191, size: 64, offset: 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !728, file: !721, line: 87, baseType: !190, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !728, file: !721, line: 94, baseType: !190, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !721, line: 96, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !721, line: 96, size: 64, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !955, file: !721, line: 101, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !185, line: 143, baseType: !416)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !721, line: 103, baseType: !960, size: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !721, line: 103, size: 320, elements: !961)
!961 = !{!962, !972, !975, !976}
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !721, line: 104, baseType: !963, size: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !721, line: 104, size: 128, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !963, file: !721, line: 105, baseType: !195, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !721, line: 106, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !721, line: 106, size: 128, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !721, line: 107, baseType: !719, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !967, file: !721, line: 109, baseType: !258, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !967, file: !721, line: 110, baseType: !258, size: 32, offset: 96)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !960, file: !721, line: 117, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !721, line: 117, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !960, file: !721, line: 119, baseType: !191, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !721, line: 120, baseType: !977, size: 64, offset: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !721, line: 120, size: 64, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !977, file: !721, line: 121, baseType: !191, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !977, file: !721, line: 122, baseType: !190, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !721, line: 123, baseType: !982, size: 32)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !721, line: 123, size: 32, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !982, file: !721, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !982, file: !721, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !982, file: !721, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !721, line: 130, baseType: !988, size: 192)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !721, line: 130, size: 192, elements: !989)
!989 = !{!990, !991, !992, !993, !994}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !988, file: !721, line: 131, baseType: !190, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !988, file: !721, line: 134, baseType: !422, size: 8, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !988, file: !721, line: 135, baseType: !422, size: 8, offset: 72)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !988, file: !721, line: 136, baseType: !745, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !988, file: !721, line: 137, baseType: !5, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !721, line: 139, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !721, line: 139, size: 256, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !996, file: !721, line: 140, baseType: !190, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !996, file: !721, line: 141, baseType: !745, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !996, file: !721, line: 143, baseType: !195, size: 128, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !721, line: 145, baseType: !1002, size: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !721, line: 145, size: 256, elements: !1003)
!1003 = !{!1004, !1005, !1007, !1008, !2354}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1002, file: !721, line: 146, baseType: !190, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1002, file: !721, line: 147, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !711, line: 509, baseType: !719)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1002, file: !721, line: 148, baseType: !190, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !721, line: 149, baseType: !1009, size: 64, offset: 192)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !721, line: 149, size: 64, elements: !1010)
!1010 = !{!1011, !2353}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1009, file: !721, line: 150, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !721, line: 388, size: 7296, elements: !1014)
!1014 = !{!1015, !2349}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !721, line: 389, baseType: !1016, size: 7296)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !721, line: 389, size: 7296, elements: !1017)
!1017 = !{!1018, !1136, !1137, !1138, !1142, !1143, !1144, !1145, !1146, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1187, !1195, !1198, !1228, !1229, !2333, !2334, !2337, !2338, !2339, !2342, !2343, !2344, !2347, !2348}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1016, file: !721, line: 390, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !721, line: 305, size: 1472, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1036, !1037, !1042, !1043, !1046, !1130, !1131, !1132, !1133, !1134}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1020, file: !721, line: 308, baseType: !190, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1020, file: !721, line: 309, baseType: !190, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1020, file: !721, line: 313, baseType: !1019, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1020, file: !721, line: 313, baseType: !1019, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1020, file: !721, line: 315, baseType: !758, size: 192, align: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1020, file: !721, line: 323, baseType: !190, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1020, file: !721, line: 327, baseType: !1012, size: 64, offset: 512)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1020, file: !721, line: 333, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !711, line: 284, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !711, line: 284, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1031, file: !711, line: 284, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1035, line: 19, baseType: !190)
!1035 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1020, file: !721, line: 334, baseType: !190, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1020, file: !721, line: 343, baseType: !1038, size: 256, offset: 704)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !721, line: 340, size: 256, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1038, file: !721, line: 341, baseType: !758, size: 192, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1038, file: !721, line: 342, baseType: !190, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1020, file: !721, line: 351, baseType: !195, size: 128, offset: 960)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1020, file: !721, line: 353, baseType: !1044, size: 64, offset: 1088)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !721, line: 353, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1020, file: !721, line: 356, baseType: !1047, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1050)
!1050 = !{!1051, !1055, !1056, !1060, !1064, !1104, !1108, !1112, !1116, !1117, !1118, !1122, !1126}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1049, file: !12, line: 558, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1019}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1049, file: !12, line: 559, baseType: !1052, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1049, file: !12, line: 560, baseType: !1057, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!258, !1019, !190}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1049, file: !12, line: 561, baseType: !1061, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!258, !1019}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1049, file: !12, line: 562, baseType: !1065, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !721, line: 682, baseType: !5)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1084, !1091, !1097, !1098, !1099, !1101, !1103}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1070, file: !12, line: 509, baseType: !1019, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1070, file: !12, line: 511, baseType: !184, size: 32, offset: 96)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1070, file: !12, line: 512, baseType: !190, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1070, file: !12, line: 513, baseType: !190, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1070, file: !12, line: 514, baseType: !1078, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !711, line: 385, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 385, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1080, file: !711, line: 385, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1035, line: 15, baseType: !190)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1070, file: !12, line: 516, baseType: !1085, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !711, line: 359, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 359, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1087, file: !711, line: 359, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1035, line: 16, baseType: !190)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1070, file: !12, line: 519, baseType: !1092, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1035, line: 21, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1035, line: 21, size: 64, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1093, file: !1035, line: 21, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1035, line: 14, baseType: !190)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1070, file: !12, line: 521, baseType: !719, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1070, file: !12, line: 522, baseType: !719, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1070, file: !12, line: 528, baseType: !1100, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1070, file: !12, line: 532, baseType: !1102, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1070, file: !12, line: 536, baseType: !1006, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1049, file: !12, line: 563, baseType: !1105, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1068, !1069, !11}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1049, file: !12, line: 565, baseType: !1109, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1069, !190, !190}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1049, file: !12, line: 567, baseType: !1113, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!190, !1019}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1049, file: !12, line: 571, baseType: !1065, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1049, file: !12, line: 574, baseType: !1065, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1049, file: !12, line: 579, baseType: !1119, size: 64, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!258, !1019, !190, !191, !258, !258}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1049, file: !12, line: 585, baseType: !1123, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!220, !1019}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1049, file: !12, line: 615, baseType: !1127, size: 64, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!719, !1019, !190}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1020, file: !721, line: 359, baseType: !190, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1020, file: !721, line: 361, baseType: !347, size: 64, offset: 1280)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1020, file: !721, line: 362, baseType: !191, size: 64, offset: 1344)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1020, file: !721, line: 365, baseType: !769, size: 64, offset: 1408)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1020, file: !721, line: 373, baseType: !1135, offset: 1472)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !721, line: 296, elements: !246)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1016, file: !721, line: 391, baseType: !754, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1016, file: !721, line: 392, baseType: !416, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1016, file: !721, line: 394, baseType: !1139, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!190, !347, !190, !190, !190, !190}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1016, file: !721, line: 398, baseType: !190, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1016, file: !721, line: 399, baseType: !190, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1016, file: !721, line: 405, baseType: !190, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1016, file: !721, line: 406, baseType: !190, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1016, file: !721, line: 407, baseType: !1147, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !711, line: 286, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 286, size: 64, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1149, file: !711, line: 286, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1035, line: 18, baseType: !190)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1016, file: !721, line: 416, baseType: !745, size: 32, offset: 576)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1016, file: !721, line: 428, baseType: !745, size: 32, offset: 608)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1016, file: !721, line: 437, baseType: !745, size: 32, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1016, file: !721, line: 447, baseType: !745, size: 32, offset: 672)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1016, file: !721, line: 450, baseType: !769, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1016, file: !721, line: 452, baseType: !258, size: 32, offset: 768)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1016, file: !721, line: 454, baseType: !232, offset: 800)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1016, file: !721, line: 457, baseType: !765, size: 256, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1016, file: !721, line: 459, baseType: !195, size: 128, offset: 1088)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1016, file: !721, line: 466, baseType: !190, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1016, file: !721, line: 467, baseType: !190, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1016, file: !721, line: 469, baseType: !190, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1016, file: !721, line: 470, baseType: !190, size: 64, offset: 1408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1016, file: !721, line: 471, baseType: !771, size: 64, offset: 1472)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1016, file: !721, line: 472, baseType: !190, size: 64, offset: 1536)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1016, file: !721, line: 473, baseType: !190, size: 64, offset: 1600)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1016, file: !721, line: 474, baseType: !190, size: 64, offset: 1664)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1016, file: !721, line: 475, baseType: !190, size: 64, offset: 1728)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1016, file: !721, line: 477, baseType: !232, offset: 1792)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1016, file: !721, line: 478, baseType: !190, size: 64, offset: 1792)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1016, file: !721, line: 478, baseType: !190, size: 64, offset: 1856)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1016, file: !721, line: 478, baseType: !190, size: 64, offset: 1920)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1016, file: !721, line: 478, baseType: !190, size: 64, offset: 1984)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1016, file: !721, line: 479, baseType: !190, size: 64, offset: 2048)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1016, file: !721, line: 479, baseType: !190, size: 64, offset: 2112)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1016, file: !721, line: 479, baseType: !190, size: 64, offset: 2176)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1016, file: !721, line: 480, baseType: !190, size: 64, offset: 2240)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1016, file: !721, line: 480, baseType: !190, size: 64, offset: 2304)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1016, file: !721, line: 480, baseType: !190, size: 64, offset: 2368)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1016, file: !721, line: 480, baseType: !190, size: 64, offset: 2432)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1016, file: !721, line: 482, baseType: !1184, size: 2816, offset: 2496)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2816, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 44)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1016, file: !721, line: 488, baseType: !1188, size: 256, offset: 5312)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1189, line: 60, size: 256, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1188, file: !1189, line: 61, baseType: !1192, size: 256)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 256, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 4)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1016, file: !721, line: 490, baseType: !1196, size: 64, offset: 5568)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !721, line: 490, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1016, file: !721, line: 493, baseType: !1199, size: 896, offset: 5632)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1200, line: 53, baseType: !1201)
!1200 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 13, size: 896, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1209, !1210, !1217, !1218, !1222, !1223, !1224}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1201, file: !1200, line: 18, baseType: !416, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1201, file: !1200, line: 28, baseType: !771, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1201, file: !1200, line: 31, baseType: !765, size: 256, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1201, file: !1200, line: 32, baseType: !1207, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1200, line: 32, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1201, file: !1200, line: 37, baseType: !315, size: 16, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1201, file: !1200, line: 40, baseType: !1211, size: 192, offset: 512)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1212, line: 53, size: 192, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1215, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1211, file: !1212, line: 54, baseType: !769, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1211, file: !1212, line: 55, baseType: !232, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1211, file: !1212, line: 59, baseType: !195, size: 128, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1201, file: !1200, line: 41, baseType: !191, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1201, file: !1200, line: 42, baseType: !1219, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1200, line: 42, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1201, file: !1200, line: 44, baseType: !745, size: 32, offset: 832)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1201, file: !1200, line: 50, baseType: !857, size: 16, offset: 864)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1201, file: !1200, line: 51, baseType: !1225, size: 16, offset: 880)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !411, line: 18, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !413, line: 23, baseType: !1227)
!1227 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !721, line: 495, baseType: !190, size: 64, offset: 6528)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1016, file: !721, line: 497, baseType: !1230, size: 64, offset: 6592)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !721, line: 381, size: 384, elements: !1232)
!1232 = !{!1233, !1234, !2332}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1231, file: !721, line: 382, baseType: !745, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1231, file: !721, line: 383, baseType: !1235, size: 128, offset: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !721, line: 376, size: 128, elements: !1236)
!1236 = !{!1237, !2330}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1235, file: !721, line: 377, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !899, line: 640, size: 48640, elements: !1240)
!1240 = !{!1241, !1247, !1249, !1250, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1267, !1285, !1296, !1381, !1382, !1383, !1394, !1395, !1397, !1398, !1399, !1400, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1479, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1517, !1519, !1520, !1521, !1533, !1534, !1535, !1536, !1537, !1538, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1562, !1567, !1751, !1752, !1753, !1754, !1758, !1761, !1764, !1767, !1770, !1773, !1874, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1920, !1921, !1922, !1923, !1924, !1929, !1930, !1931, !1934, !1935, !1938, !1941, !1944, !1947, !1990, !1993, !1994, !2073, !2074, !2077, !2078, !2081, !2082, !2083, !2087, !2088, !2089, !2102, !2103, !2104, !2114, !2119, !2120, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1239, file: !899, line: 646, baseType: !1242, size: 128)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1243, line: 56, size: 128, elements: !1244)
!1243 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !1243, line: 57, baseType: !190, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1242, file: !1243, line: 58, baseType: !410, size: 32, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1239, file: !899, line: 649, baseType: !1248, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !308)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1239, file: !899, line: 657, baseType: !191, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1239, file: !899, line: 658, baseType: !1251, size: 32, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1252, line: 113, baseType: !1253)
!1252 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1252, line: 111, size: 32, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1253, file: !1252, line: 112, baseType: !745, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !899, line: 660, baseType: !5, size: 32, offset: 288)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1239, file: !899, line: 661, baseType: !5, size: 32, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1239, file: !899, line: 684, baseType: !258, size: 32, offset: 352)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1239, file: !899, line: 686, baseType: !258, size: 32, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1239, file: !899, line: 687, baseType: !258, size: 32, offset: 416)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1239, file: !899, line: 688, baseType: !258, size: 32, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1239, file: !899, line: 689, baseType: !5, size: 32, offset: 480)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1239, file: !899, line: 691, baseType: !1264, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1266)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !899, line: 691, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1239, file: !899, line: 692, baseType: !1268, size: 832, offset: 576)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !899, line: 451, size: 832, elements: !1269)
!1269 = !{!1270, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1268, file: !899, line: 453, baseType: !1271, size: 128)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !899, line: 325, size: 128, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1271, file: !899, line: 326, baseType: !190, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1271, file: !899, line: 327, baseType: !410, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1268, file: !899, line: 454, baseType: !758, size: 192, align: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1268, file: !899, line: 455, baseType: !195, size: 128, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1268, file: !899, line: 456, baseType: !5, size: 32, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1268, file: !899, line: 458, baseType: !416, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1268, file: !899, line: 459, baseType: !416, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1268, file: !899, line: 460, baseType: !416, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1268, file: !899, line: 461, baseType: !416, size: 64, offset: 704)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1268, file: !899, line: 463, baseType: !416, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1268, file: !899, line: 465, baseType: !1284, offset: 832)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !899, line: 415, elements: !246)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1239, file: !899, line: 693, baseType: !1286, size: 384, offset: 1408)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !899, line: 489, size: 384, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1286, file: !899, line: 490, baseType: !195, size: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1286, file: !899, line: 491, baseType: !190, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1286, file: !899, line: 492, baseType: !190, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1286, file: !899, line: 493, baseType: !5, size: 32, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1286, file: !899, line: 494, baseType: !315, size: 16, offset: 288)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1286, file: !899, line: 495, baseType: !315, size: 16, offset: 304)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1286, file: !899, line: 497, baseType: !1295, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1239, file: !899, line: 697, baseType: !1297, size: 1792, offset: 1792)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !899, line: 507, size: 1792, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1378, !1379}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1297, file: !899, line: 508, baseType: !758, size: 192, align: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1297, file: !899, line: 515, baseType: !416, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1297, file: !899, line: 516, baseType: !416, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1297, file: !899, line: 517, baseType: !416, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1297, file: !899, line: 518, baseType: !416, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1297, file: !899, line: 519, baseType: !416, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1297, file: !899, line: 526, baseType: !775, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1297, file: !899, line: 527, baseType: !416, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1297, file: !899, line: 528, baseType: !5, size: 32, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1297, file: !899, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1297, file: !899, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1297, file: !899, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1297, file: !899, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1297, file: !899, line: 563, baseType: !1313, size: 512, offset: 704)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1314)
!1314 = !{!1315, !1323, !1324, !1329, !1372, !1375, !1376, !1377}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1313, file: !18, line: 119, baseType: !1316, size: 256)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1317, line: 9, size: 256, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1316, file: !1317, line: 10, baseType: !758, size: 192, align: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1316, file: !1317, line: 11, baseType: !1321, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1322, line: 29, baseType: !775)
!1322 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1313, file: !18, line: 120, baseType: !1321, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1313, file: !18, line: 121, baseType: !1325, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!17, !1328}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1313, file: !18, line: 122, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1332)
!1332 = !{!1333, !1353, !1354, !1357, !1362, !1363, !1367, !1371}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1331, file: !18, line: 160, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1335, file: !18, line: 215, baseType: !778)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1335, file: !18, line: 216, baseType: !5, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1335, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1335, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1335, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1335, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1335, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1335, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1335, file: !18, line: 233, baseType: !1321, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1335, file: !18, line: 234, baseType: !1328, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1335, file: !18, line: 235, baseType: !1321, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1335, file: !18, line: 236, baseType: !1328, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1335, file: !18, line: 237, baseType: !1350, size: 4096, offset: 512)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 4096, elements: !1351)
!1351 = !{!1352}
!1352 = !DISubrange(count: 8)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1331, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1331, file: !18, line: 162, baseType: !1355, size: 32, offset: 96)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !185, line: 27, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !188, line: 96, baseType: !258)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1331, file: !18, line: 163, baseType: !1358, size: 32, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !383, line: 276, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !383, line: 276, size: 32, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1359, file: !383, line: 276, baseType: !387, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1331, file: !18, line: 164, baseType: !1328, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1331, file: !18, line: 165, baseType: !1364, size: 128, offset: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1317, line: 14, size: 128, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1364, file: !1317, line: 15, baseType: !750, size: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1331, file: !18, line: 166, baseType: !1368, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1321}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1331, file: !18, line: 167, baseType: !1321, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1313, file: !18, line: 123, baseType: !1373, size: 8, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !411, line: 17, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !413, line: 21, baseType: !422)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1313, file: !18, line: 124, baseType: !1373, size: 8, offset: 456)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1313, file: !18, line: 125, baseType: !1373, size: 8, offset: 464)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1313, file: !18, line: 126, baseType: !1373, size: 8, offset: 472)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1297, file: !899, line: 572, baseType: !1313, size: 512, offset: 1216)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1297, file: !899, line: 580, baseType: !1380, size: 64, offset: 1728)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1239, file: !899, line: 721, baseType: !5, size: 32, offset: 3584)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1239, file: !899, line: 722, baseType: !258, size: 32, offset: 3616)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1239, file: !899, line: 723, baseType: !1384, size: 64, offset: 3648)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1387, line: 17, baseType: !1388)
!1387 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1387, line: 17, size: 64, elements: !1389)
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1388, file: !1387, line: 17, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 1)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1239, file: !899, line: 724, baseType: !1386, size: 64, offset: 3712)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1239, file: !899, line: 749, baseType: !1396, offset: 3776)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !899, line: 290, elements: !246)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1239, file: !899, line: 751, baseType: !195, size: 128, offset: 3776)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1239, file: !899, line: 757, baseType: !1012, size: 64, offset: 3904)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1239, file: !899, line: 758, baseType: !1012, size: 64, offset: 3968)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1239, file: !899, line: 761, baseType: !1401, size: 320, offset: 4032)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1189, line: 34, size: 320, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1401, file: !1189, line: 35, baseType: !416, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1401, file: !1189, line: 36, baseType: !1405, size: 256, offset: 64)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 256, elements: !1193)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1239, file: !899, line: 766, baseType: !258, size: 32, offset: 4352)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1239, file: !899, line: 767, baseType: !258, size: 32, offset: 4384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1239, file: !899, line: 768, baseType: !258, size: 32, offset: 4416)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1239, file: !899, line: 770, baseType: !258, size: 32, offset: 4448)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1239, file: !899, line: 772, baseType: !190, size: 64, offset: 4480)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1239, file: !899, line: 775, baseType: !5, size: 32, offset: 4544)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1239, file: !899, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1239, file: !899, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1239, file: !899, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1239, file: !899, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1239, file: !899, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1239, file: !899, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1239, file: !899, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1239, file: !899, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1239, file: !899, line: 831, baseType: !190, size: 64, offset: 4672)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1239, file: !899, line: 833, baseType: !1422, size: 384, offset: 4736)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1423)
!1423 = !{!1424, !1429}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1422, file: !23, line: 26, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!308, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !23, line: 27, baseType: !1430, size: 320, offset: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !23, line: 27, size: 320, elements: !1431)
!1431 = !{!1432, !1442, !1469}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1430, file: !23, line: 36, baseType: !1433, size: 320)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !23, line: 29, size: 320, elements: !1434)
!1434 = !{!1435, !1437, !1438, !1439, !1440, !1441}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1433, file: !23, line: 30, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1433, file: !23, line: 31, baseType: !410, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1433, file: !23, line: 32, baseType: !410, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1433, file: !23, line: 33, baseType: !410, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1433, file: !23, line: 34, baseType: !416, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1433, file: !23, line: 35, baseType: !1436, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1430, file: !23, line: 46, baseType: !1443, size: 192)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !23, line: 38, size: 192, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1468}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1443, file: !23, line: 39, baseType: !1355, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1443, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !23, line: 41, baseType: !1448, size: 64, offset: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !23, line: 41, size: 64, elements: !1449)
!1449 = !{!1450, !1458}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1448, file: !23, line: 42, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1453, line: 7, size: 128, elements: !1454)
!1453 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1452, file: !1453, line: 8, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !188, line: 93, baseType: !528)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1452, file: !1453, line: 9, baseType: !528, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1448, file: !23, line: 43, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1461, line: 7, size: 64, elements: !1462)
!1461 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !{!1463, !1467}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1460, file: !1461, line: 8, baseType: !1464, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1461, line: 5, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !411, line: 20, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !413, line: 26, baseType: !258)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1460, file: !1461, line: 9, baseType: !1465, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1443, file: !23, line: 45, baseType: !416, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1430, file: !23, line: 54, baseType: !1470, size: 256)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !23, line: 48, size: 256, elements: !1471)
!1471 = !{!1472, !1475, !1476, !1477, !1478}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1470, file: !23, line: 49, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1470, file: !23, line: 50, baseType: !258, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1470, file: !23, line: 51, baseType: !258, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1470, file: !23, line: 52, baseType: !190, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1470, file: !23, line: 53, baseType: !190, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1239, file: !899, line: 835, baseType: !1480, size: 32, offset: 5120)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !185, line: 22, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !188, line: 28, baseType: !258)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1239, file: !899, line: 836, baseType: !1480, size: 32, offset: 5152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1239, file: !899, line: 840, baseType: !190, size: 64, offset: 5184)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1239, file: !899, line: 849, baseType: !1238, size: 64, offset: 5248)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1239, file: !899, line: 852, baseType: !1238, size: 64, offset: 5312)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1239, file: !899, line: 857, baseType: !195, size: 128, offset: 5376)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1239, file: !899, line: 858, baseType: !195, size: 128, offset: 5504)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1239, file: !899, line: 859, baseType: !1238, size: 64, offset: 5632)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1239, file: !899, line: 867, baseType: !195, size: 128, offset: 5696)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1239, file: !899, line: 868, baseType: !195, size: 128, offset: 5824)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1239, file: !899, line: 871, baseType: !1492, size: 64, offset: 5952)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1500, !1501, !1508, !1509}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1493, file: !51, line: 61, baseType: !1251, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1493, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1493, file: !51, line: 63, baseType: !232, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1493, file: !51, line: 65, baseType: !1499, size: 256, offset: 64)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 256, elements: !1193)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1493, file: !51, line: 66, baseType: !633, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1493, file: !51, line: 68, baseType: !1502, size: 128, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1503, line: 40, baseType: !1504)
!1503 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1503, line: 36, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1504, file: !1503, line: 37, baseType: !232)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1504, file: !1503, line: 38, baseType: !195, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1493, file: !51, line: 69, baseType: !360, size: 128, align: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1493, file: !51, line: 70, baseType: !1510, size: 128, offset: 640)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, size: 128, elements: !1392)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1511, file: !51, line: 55, baseType: !258, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1511, file: !51, line: 56, baseType: !1515, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !51, line: 56, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1239, file: !899, line: 872, baseType: !1518, size: 512, offset: 6016)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 512, elements: !1193)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1239, file: !899, line: 873, baseType: !195, size: 128, offset: 6528)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1239, file: !899, line: 874, baseType: !195, size: 128, offset: 6656)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1239, file: !899, line: 876, baseType: !1522, size: 64, offset: 6784)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1524, line: 26, size: 192, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1523, file: !1524, line: 27, baseType: !5, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1523, file: !1524, line: 28, baseType: !1528, size: 128, offset: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1529, line: 43, size: 128, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !1529, line: 44, baseType: !778)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1528, file: !1529, line: 45, baseType: !195, size: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1239, file: !899, line: 879, baseType: !703, size: 64, offset: 6848)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1239, file: !899, line: 882, baseType: !703, size: 64, offset: 6912)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1239, file: !899, line: 884, baseType: !416, size: 64, offset: 6976)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1239, file: !899, line: 885, baseType: !416, size: 64, offset: 7040)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1239, file: !899, line: 890, baseType: !416, size: 64, offset: 7104)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1239, file: !899, line: 891, baseType: !1539, size: 128, offset: 7168)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !899, line: 242, size: 128, elements: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1539, file: !899, line: 244, baseType: !416, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1539, file: !899, line: 245, baseType: !416, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1539, file: !899, line: 246, baseType: !778, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1239, file: !899, line: 900, baseType: !190, size: 64, offset: 7296)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1239, file: !899, line: 901, baseType: !190, size: 64, offset: 7360)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1239, file: !899, line: 904, baseType: !416, size: 64, offset: 7424)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1239, file: !899, line: 907, baseType: !416, size: 64, offset: 7488)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1239, file: !899, line: 910, baseType: !190, size: 64, offset: 7552)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1239, file: !899, line: 911, baseType: !190, size: 64, offset: 7616)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1239, file: !899, line: 914, baseType: !1551, size: 640, offset: 7680)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1552, line: 123, size: 640, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1560, !1561}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1551, file: !1552, line: 124, baseType: !1555, size: 576)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1556, size: 576, elements: !275)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1552, line: 108, size: 192, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1556, file: !1552, line: 109, baseType: !416, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1556, file: !1552, line: 110, baseType: !1364, size: 128, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1551, file: !1552, line: 125, baseType: !5, size: 32, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1551, file: !1552, line: 126, baseType: !5, size: 32, offset: 608)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1239, file: !899, line: 917, baseType: !1563, size: 192, offset: 8320)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1552, line: 134, size: 192, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1563, file: !1552, line: 135, baseType: !360, size: 128, align: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1563, file: !1552, line: 136, baseType: !5, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1239, file: !899, line: 923, baseType: !1568, size: 64, offset: 8512)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1571, line: 111, size: 1280, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1592, !1593, !1594, !1595, !1596, !1597, !1704, !1705, !1706, !1707, !1733, !1736, !1746}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1570, file: !1571, line: 112, baseType: !745, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1570, file: !1571, line: 120, baseType: !430, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1570, file: !1571, line: 121, baseType: !438, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1570, file: !1571, line: 122, baseType: !430, size: 32, offset: 96)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1570, file: !1571, line: 123, baseType: !438, size: 32, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1570, file: !1571, line: 124, baseType: !430, size: 32, offset: 160)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1570, file: !1571, line: 125, baseType: !438, size: 32, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1570, file: !1571, line: 126, baseType: !430, size: 32, offset: 224)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1570, file: !1571, line: 127, baseType: !438, size: 32, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1570, file: !1571, line: 128, baseType: !5, size: 32, offset: 288)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1570, file: !1571, line: 129, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1585, line: 26, baseType: !1586)
!1585 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1585, line: 24, size: 64, elements: !1587)
!1587 = !{!1588}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1586, file: !1585, line: 25, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 64, elements: !1590)
!1590 = !{!1591}
!1591 = !DISubrange(count: 2)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1570, file: !1571, line: 130, baseType: !1584, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1570, file: !1571, line: 131, baseType: !1584, size: 64, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1570, file: !1571, line: 132, baseType: !1584, size: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1570, file: !1571, line: 133, baseType: !1584, size: 64, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1570, file: !1571, line: 135, baseType: !422, size: 8, offset: 640)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1570, file: !1571, line: 137, baseType: !1598, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1600, line: 189, size: 1664, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !{!1602, !1603, !1606, !1611, !1612, !1615, !1616, !1621, !1622, !1623, !1624, !1626, !1627, !1628, !1629, !1630, !1668, !1689}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1599, file: !1600, line: 190, baseType: !1251, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1599, file: !1600, line: 191, baseType: !1604, size: 32, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1600, line: 28, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !185, line: 98, baseType: !1465)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 192, baseType: !1607, size: 192, offset: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 192, size: 192, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1607, file: !1600, line: 193, baseType: !195, size: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1607, file: !1600, line: 194, baseType: !758, size: 192, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1599, file: !1600, line: 199, baseType: !765, size: 256, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1599, file: !1600, line: 200, baseType: !1613, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1600, line: 200, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1599, file: !1600, line: 201, baseType: !191, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 202, baseType: !1617, size: 64, offset: 640)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 202, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1617, file: !1600, line: 203, baseType: !534, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1617, file: !1600, line: 204, baseType: !534, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1599, file: !1600, line: 206, baseType: !534, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1599, file: !1600, line: 207, baseType: !430, size: 32, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1599, file: !1600, line: 208, baseType: !438, size: 32, offset: 800)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1599, file: !1600, line: 209, baseType: !1625, size: 32, offset: 832)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1600, line: 31, baseType: !554)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1599, file: !1600, line: 210, baseType: !315, size: 16, offset: 864)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1599, file: !1600, line: 211, baseType: !315, size: 16, offset: 880)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1599, file: !1600, line: 215, baseType: !1227, size: 16, offset: 896)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1599, file: !1600, line: 222, baseType: !190, size: 64, offset: 960)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 239, baseType: !1631, size: 320, offset: 1024)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 239, size: 320, elements: !1632)
!1632 = !{!1633, !1660}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1631, file: !1600, line: 240, baseType: !1634, size: 320)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1600, line: 108, size: 320, elements: !1635)
!1635 = !{!1636, !1637, !1649, !1652, !1659}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1634, file: !1600, line: 110, baseType: !190, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !1600, line: 111, baseType: !1638, size: 64, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !1600, line: 111, size: 64, elements: !1639)
!1639 = !{!1640, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1600, line: 112, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1600, line: 112, size: 64, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1641, file: !1600, line: 114, baseType: !857, size: 16)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1641, file: !1600, line: 115, baseType: !1645, size: 48, offset: 16)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 48, elements: !1646)
!1646 = !{!1647}
!1647 = !DISubrange(count: 6)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1638, file: !1600, line: 121, baseType: !190, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1634, file: !1600, line: 123, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1600, line: 96, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1634, file: !1600, line: 124, baseType: !1653, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1600, line: 102, size: 192, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1654, file: !1600, line: 103, baseType: !360, size: 128, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1654, file: !1600, line: 104, baseType: !1251, size: 32, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1654, file: !1600, line: 105, baseType: !485, size: 8, offset: 160)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1634, file: !1600, line: 125, baseType: !220, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1600, line: 241, baseType: !1661, size: 320)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1631, file: !1600, line: 241, size: 320, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1661, file: !1600, line: 242, baseType: !190, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1661, file: !1600, line: 243, baseType: !190, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1661, file: !1600, line: 244, baseType: !1650, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1661, file: !1600, line: 245, baseType: !1653, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1661, file: !1600, line: 246, baseType: !274, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 254, baseType: !1669, size: 256, offset: 1344)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 254, size: 256, elements: !1670)
!1670 = !{!1671, !1677}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1669, file: !1600, line: 255, baseType: !1672, size: 256)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1600, line: 128, size: 256, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1672, file: !1600, line: 129, baseType: !191, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1672, file: !1600, line: 130, baseType: !1676, size: 256)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !1193)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1600, line: 256, baseType: !1678, size: 256)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !1600, line: 256, size: 256, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1678, file: !1600, line: 258, baseType: !195, size: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1678, file: !1600, line: 259, baseType: !1682, size: 128, offset: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1683, line: 22, size: 128, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1682, file: !1683, line: 23, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1683, line: 23, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1682, file: !1683, line: 24, baseType: !190, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1599, file: !1600, line: 274, baseType: !1690, size: 64, offset: 1600)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1600, line: 170, size: 192, elements: !1692)
!1692 = !{!1693, !1702, !1703}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1691, file: !1600, line: 171, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1600, line: 165, baseType: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!258, !1598, !1698, !1700, !1598}
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
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1709, file: !1710, line: 15, baseType: !745, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1709, file: !1710, line: 16, baseType: !745, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1709, file: !1710, line: 21, baseType: !769, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1709, file: !1710, line: 27, baseType: !190, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1709, file: !1710, line: 28, baseType: !190, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1709, file: !1710, line: 29, baseType: !769, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1709, file: !1710, line: 32, baseType: !637, size: 128, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1709, file: !1710, line: 33, baseType: !430, size: 32, offset: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1709, file: !1710, line: 37, baseType: !769, size: 64, offset: 576)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1709, file: !1710, line: 44, baseType: !1723, size: 256, offset: 640)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1724, line: 15, size: 256, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1723, file: !1724, line: 16, baseType: !778)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1723, file: !1724, line: 18, baseType: !258, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1723, file: !1724, line: 19, baseType: !258, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1723, file: !1724, line: 20, baseType: !258, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1723, file: !1724, line: 21, baseType: !258, size: 32, offset: 96)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1723, file: !1724, line: 22, baseType: !190, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1723, file: !1724, line: 23, baseType: !190, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1570, file: !1571, line: 146, baseType: !1734, size: 64, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !431, line: 18, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1570, file: !1571, line: 147, baseType: !1737, size: 64, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1571, line: 25, size: 64, elements: !1739)
!1739 = !{!1740, !1741, !1742}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1738, file: !1571, line: 26, baseType: !745, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1738, file: !1571, line: 27, baseType: !258, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1738, file: !1571, line: 28, baseType: !1743, offset: 64)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, elements: !1744)
!1744 = !{!1745}
!1745 = !DISubrange(count: 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !1571, line: 149, baseType: !1747, size: 128, offset: 1152)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !1571, line: 149, size: 128, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1747, file: !1571, line: 150, baseType: !258, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1747, file: !1571, line: 151, baseType: !360, size: 128, align: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1239, file: !899, line: 926, baseType: !1568, size: 64, offset: 8576)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1239, file: !899, line: 929, baseType: !1568, size: 64, offset: 8640)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1239, file: !899, line: 933, baseType: !1598, size: 64, offset: 8704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1239, file: !899, line: 943, baseType: !1755, size: 128, offset: 8768)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 16)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1239, file: !899, line: 945, baseType: !1759, size: 64, offset: 8896)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !899, line: 49, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1239, file: !899, line: 956, baseType: !1762, size: 64, offset: 8960)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !899, line: 45, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1239, file: !899, line: 959, baseType: !1765, size: 64, offset: 9024)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !899, line: 959, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1239, file: !899, line: 962, baseType: !1768, size: 64, offset: 9088)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !899, line: 66, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1239, file: !899, line: 966, baseType: !1771, size: 64, offset: 9152)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !899, line: 50, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1239, file: !899, line: 969, baseType: !1774, size: 64, offset: 9216)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1776, line: 82, size: 7296, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1813, !1822, !1823, !1825, !1826, !1827, !1830, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1860, !1861, !1868, !1869, !1870, !1871, !1872, !1873}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1775, file: !1776, line: 83, baseType: !1251, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1775, file: !1776, line: 84, baseType: !745, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1775, file: !1776, line: 85, baseType: !258, size: 32, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1775, file: !1776, line: 86, baseType: !195, size: 128, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1775, file: !1776, line: 88, baseType: !1502, size: 128, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1775, file: !1776, line: 91, baseType: !1238, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1775, file: !1776, line: 94, baseType: !1785, size: 192, offset: 448)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1786, line: 30, size: 192, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1785, file: !1786, line: 31, baseType: !195, size: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1785, file: !1786, line: 32, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1791, line: 25, baseType: !1792)
!1791 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1791, line: 23, size: 64, elements: !1793)
!1793 = !{!1794}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1792, file: !1791, line: 24, baseType: !1391, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1775, file: !1776, line: 97, baseType: !633, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1775, file: !1776, line: 100, baseType: !258, size: 32, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1775, file: !1776, line: 106, baseType: !258, size: 32, offset: 736)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1775, file: !1776, line: 107, baseType: !1238, size: 64, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1775, file: !1776, line: 110, baseType: !258, size: 32, offset: 832)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1775, file: !1776, line: 111, baseType: !5, size: 32, offset: 864)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1775, file: !1776, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1775, file: !1776, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1775, file: !1776, line: 128, baseType: !258, size: 32, offset: 928)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1775, file: !1776, line: 129, baseType: !195, size: 128, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1775, file: !1776, line: 132, baseType: !1313, size: 512, offset: 1088)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1775, file: !1776, line: 133, baseType: !1321, size: 64, offset: 1600)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1775, file: !1776, line: 140, baseType: !1808, size: 256, offset: 1664)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1809, size: 256, elements: !1590)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1776, line: 38, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1809, file: !1776, line: 39, baseType: !416, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1809, file: !1776, line: 40, baseType: !416, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1775, file: !1776, line: 146, baseType: !1814, size: 192, offset: 1920)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1776, line: 66, size: 192, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1814, file: !1776, line: 67, baseType: !1817, size: 192)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1776, line: 47, size: 192, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1817, file: !1776, line: 48, baseType: !771, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1817, file: !1776, line: 49, baseType: !771, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1817, file: !1776, line: 50, baseType: !771, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1775, file: !1776, line: 150, baseType: !1551, size: 640, offset: 2112)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1775, file: !1776, line: 153, baseType: !1824, size: 256, offset: 2752)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 256, elements: !1193)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1775, file: !1776, line: 159, baseType: !1492, size: 64, offset: 3008)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1775, file: !1776, line: 162, baseType: !258, size: 32, offset: 3072)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1775, file: !1776, line: 164, baseType: !1828, size: 64, offset: 3136)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1776, line: 164, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1775, file: !1776, line: 175, baseType: !1831, size: 32, offset: 3200)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !383, line: 805, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 798, size: 32, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1832, file: !383, line: 803, baseType: !382, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1832, file: !383, line: 804, baseType: !232, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1775, file: !1776, line: 176, baseType: !416, size: 64, offset: 3264)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1775, file: !1776, line: 176, baseType: !416, size: 64, offset: 3328)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1775, file: !1776, line: 176, baseType: !416, size: 64, offset: 3392)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1775, file: !1776, line: 176, baseType: !416, size: 64, offset: 3456)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1775, file: !1776, line: 177, baseType: !416, size: 64, offset: 3520)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1775, file: !1776, line: 178, baseType: !416, size: 64, offset: 3584)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1775, file: !1776, line: 179, baseType: !1539, size: 128, offset: 3648)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1775, file: !1776, line: 180, baseType: !190, size: 64, offset: 3776)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1775, file: !1776, line: 180, baseType: !190, size: 64, offset: 3840)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1775, file: !1776, line: 180, baseType: !190, size: 64, offset: 3904)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1775, file: !1776, line: 180, baseType: !190, size: 64, offset: 3968)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1775, file: !1776, line: 181, baseType: !190, size: 64, offset: 4032)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1775, file: !1776, line: 181, baseType: !190, size: 64, offset: 4096)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1775, file: !1776, line: 181, baseType: !190, size: 64, offset: 4160)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1775, file: !1776, line: 181, baseType: !190, size: 64, offset: 4224)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1775, file: !1776, line: 182, baseType: !190, size: 64, offset: 4288)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1775, file: !1776, line: 182, baseType: !190, size: 64, offset: 4352)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1775, file: !1776, line: 182, baseType: !190, size: 64, offset: 4416)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1775, file: !1776, line: 182, baseType: !190, size: 64, offset: 4480)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1775, file: !1776, line: 183, baseType: !190, size: 64, offset: 4544)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1775, file: !1776, line: 183, baseType: !190, size: 64, offset: 4608)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1775, file: !1776, line: 184, baseType: !1858, offset: 4672)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1859, line: 12, elements: !246)
!1859 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1775, file: !1776, line: 192, baseType: !418, size: 64, offset: 4672)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1775, file: !1776, line: 203, baseType: !1862, size: 2048, offset: 4736)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1863, size: 2048, elements: !1756)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1864, line: 43, size: 128, elements: !1865)
!1864 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1863, file: !1864, line: 44, baseType: !189, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1863, file: !1864, line: 45, baseType: !189, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1775, file: !1776, line: 220, baseType: !485, size: 8, offset: 6784)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1775, file: !1776, line: 221, baseType: !1227, size: 16, offset: 6800)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1775, file: !1776, line: 222, baseType: !1227, size: 16, offset: 6816)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1775, file: !1776, line: 224, baseType: !1012, size: 64, offset: 6848)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1775, file: !1776, line: 227, baseType: !1211, size: 192, offset: 6912)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1775, file: !1776, line: 233, baseType: !1211, size: 192, offset: 7104)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1239, file: !899, line: 970, baseType: !1875, size: 64, offset: 9280)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1776, line: 20, size: 16576, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1876, file: !1776, line: 21, baseType: !232)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1876, file: !1776, line: 22, baseType: !1251, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1876, file: !1776, line: 23, baseType: !1502, size: 128, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1876, file: !1776, line: 24, baseType: !1882, size: 16384, offset: 192)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, size: 16384, elements: !279)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1786, line: 49, size: 256, elements: !1884)
!1884 = !{!1885}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1883, file: !1786, line: 50, baseType: !1886, size: 256)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1786, line: 35, size: 256, elements: !1887)
!1887 = !{!1888, !1895, !1896, !1902}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1886, file: !1786, line: 37, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1890, line: 19, baseType: !1891)
!1890 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1890, line: 18, baseType: !1893)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !258}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1886, file: !1786, line: 38, baseType: !190, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1886, file: !1786, line: 44, baseType: !1897, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1890, line: 22, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1890, line: 21, baseType: !1900)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1886, file: !1786, line: 46, baseType: !1790, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1239, file: !899, line: 971, baseType: !1790, size: 64, offset: 9344)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1239, file: !899, line: 972, baseType: !1790, size: 64, offset: 9408)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1239, file: !899, line: 974, baseType: !1790, size: 64, offset: 9472)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1239, file: !899, line: 975, baseType: !1785, size: 192, offset: 9536)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1239, file: !899, line: 976, baseType: !190, size: 64, offset: 9728)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1239, file: !899, line: 977, baseType: !186, size: 64, offset: 9792)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1239, file: !899, line: 978, baseType: !5, size: 32, offset: 9856)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1239, file: !899, line: 980, baseType: !363, size: 64, offset: 9920)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1239, file: !899, line: 989, baseType: !1912, size: 128, offset: 9984)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1913, line: 35, size: 128, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916, !1917}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1912, file: !1913, line: 36, baseType: !258, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1912, file: !1913, line: 37, baseType: !745, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1912, file: !1913, line: 38, baseType: !1918, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1913, line: 23, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1239, file: !899, line: 992, baseType: !416, size: 64, offset: 10112)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1239, file: !899, line: 993, baseType: !416, size: 64, offset: 10176)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1239, file: !899, line: 996, baseType: !232, offset: 10240)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1239, file: !899, line: 999, baseType: !778, offset: 10240)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1239, file: !899, line: 1001, baseType: !1925, size: 64, offset: 10240)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !899, line: 636, size: 64, elements: !1926)
!1926 = !{!1927}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1925, file: !899, line: 637, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1239, file: !899, line: 1005, baseType: !750, size: 128, offset: 10304)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1239, file: !899, line: 1007, baseType: !1238, size: 64, offset: 10432)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1239, file: !899, line: 1009, baseType: !1932, size: 64, offset: 10496)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !899, line: 1009, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1239, file: !899, line: 1043, baseType: !191, size: 64, offset: 10560)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1239, file: !899, line: 1046, baseType: !1936, size: 64, offset: 10624)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !899, line: 41, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1239, file: !899, line: 1050, baseType: !1939, size: 64, offset: 10688)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !899, line: 42, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1239, file: !899, line: 1054, baseType: !1942, size: 64, offset: 10752)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !899, line: 55, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1239, file: !899, line: 1056, baseType: !1945, size: 64, offset: 10816)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !899, line: 40, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1239, file: !899, line: 1058, baseType: !1948, size: 64, offset: 10880)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1950, line: 99, size: 704, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957, !1958, !1977, !1978}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1949, file: !1950, line: 100, baseType: !769, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1949, file: !1950, line: 101, baseType: !745, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1949, file: !1950, line: 102, baseType: !745, size: 32, offset: 96)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1949, file: !1950, line: 105, baseType: !232, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1949, file: !1950, line: 107, baseType: !315, size: 16, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1949, file: !1950, line: 109, baseType: !737, size: 128, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1949, file: !1950, line: 110, baseType: !1959, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1950, line: 73, size: 448, elements: !1961)
!1961 = !{!1962, !1965, !1966, !1971, !1976}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1960, file: !1950, line: 74, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1950, line: 74, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1960, file: !1950, line: 75, baseType: !1948, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1950, line: 83, baseType: !1967, size: 128, offset: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1960, file: !1950, line: 83, size: 128, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1967, file: !1950, line: 84, baseType: !195, size: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1967, file: !1950, line: 85, baseType: !973, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1950, line: 87, baseType: !1972, size: 128, offset: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1960, file: !1950, line: 87, size: 128, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1972, file: !1950, line: 88, baseType: !637, size: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1972, file: !1950, line: 89, baseType: !360, size: 128, align: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1960, file: !1950, line: 92, baseType: !5, size: 32, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1949, file: !1950, line: 111, baseType: !633, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1949, file: !1950, line: 113, baseType: !1979, size: 256, offset: 448)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1980, line: 102, size: 256, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982, !1983, !1984}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1979, file: !1980, line: 103, baseType: !769, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1979, file: !1980, line: 104, baseType: !195, size: 128, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1979, file: !1980, line: 105, baseType: !1985, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1980, line: 21, baseType: !1986)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1239, file: !899, line: 1061, baseType: !1991, size: 64, offset: 10944)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !899, line: 43, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1239, file: !899, line: 1064, baseType: !190, size: 64, offset: 11008)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1239, file: !899, line: 1065, baseType: !1995, size: 64, offset: 11072)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1786, line: 14, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1786, line: 12, size: 384, elements: !1998)
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !1786, line: 13, baseType: !2000, size: 384)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1786, line: 13, size: 384, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2005}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2000, file: !1786, line: 13, baseType: !258, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2000, file: !1786, line: 13, baseType: !258, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2000, file: !1786, line: 13, baseType: !258, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2000, file: !1786, line: 13, baseType: !2006, size: 256, offset: 128)
!2006 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2007, line: 32, size: 256, elements: !2008)
!2007 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009, !2014, !2027, !2033, !2042, !2062, !2067}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2006, file: !2007, line: 37, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !2007, line: 34, size: 64, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2010, file: !2007, line: 35, baseType: !1481, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2010, file: !2007, line: 36, baseType: !436, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2006, file: !2007, line: 45, baseType: !2015, size: 192)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !2007, line: 40, size: 192, elements: !2016)
!2016 = !{!2017, !2019, !2020, !2026}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2015, file: !2007, line: 41, baseType: !2018, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !188, line: 95, baseType: !258)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2015, file: !2007, line: 42, baseType: !258, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2015, file: !2007, line: 43, baseType: !2021, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2007, line: 11, baseType: !2022)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2007, line: 8, size: 64, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2022, file: !2007, line: 9, baseType: !258, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2022, file: !2007, line: 10, baseType: !191, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2015, file: !2007, line: 44, baseType: !258, size: 32, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2006, file: !2007, line: 52, baseType: !2028, size: 128)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !2007, line: 48, size: 128, elements: !2029)
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2028, file: !2007, line: 49, baseType: !1481, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2028, file: !2007, line: 50, baseType: !436, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2028, file: !2007, line: 51, baseType: !2021, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2006, file: !2007, line: 61, baseType: !2034, size: 256)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !2007, line: 55, size: 256, elements: !2035)
!2035 = !{!2036, !2037, !2038, !2039, !2041}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2034, file: !2007, line: 56, baseType: !1481, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2034, file: !2007, line: 57, baseType: !436, size: 32, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2034, file: !2007, line: 58, baseType: !258, size: 32, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2034, file: !2007, line: 59, baseType: !2040, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !188, line: 94, baseType: !307)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2034, file: !2007, line: 60, baseType: !2040, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2006, file: !2007, line: 95, baseType: !2043, size: 256)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !2007, line: 64, size: 256, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2043, file: !2007, line: 65, baseType: !191, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2043, file: !2007, line: 77, baseType: !2047, size: 192, offset: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2043, file: !2007, line: 77, size: 192, elements: !2048)
!2048 = !{!2049, !2050, !2057}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2047, file: !2007, line: 82, baseType: !1227, size: 16)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2047, file: !2007, line: 88, baseType: !2051, size: 192)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2007, line: 84, size: 192, elements: !2052)
!2052 = !{!2053, !2055, !2056}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2051, file: !2007, line: 85, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 64, elements: !1351)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2051, file: !2007, line: 86, baseType: !191, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2051, file: !2007, line: 87, baseType: !191, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2047, file: !2007, line: 93, baseType: !2058, size: 96)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2007, line: 90, size: 96, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2058, file: !2007, line: 91, baseType: !2054, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2058, file: !2007, line: 92, baseType: !412, size: 32, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2006, file: !2007, line: 101, baseType: !2063, size: 128)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !2007, line: 98, size: 128, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2063, file: !2007, line: 99, baseType: !308, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2063, file: !2007, line: 100, baseType: !258, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2006, file: !2007, line: 108, baseType: !2068, size: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !2007, line: 104, size: 128, elements: !2069)
!2069 = !{!2070, !2071, !2072}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2068, file: !2007, line: 105, baseType: !191, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2068, file: !2007, line: 106, baseType: !258, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2068, file: !2007, line: 107, baseType: !5, size: 32, offset: 96)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1239, file: !899, line: 1067, baseType: !1858, offset: 11136)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1239, file: !899, line: 1099, baseType: !2075, size: 64, offset: 11136)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !899, line: 56, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1239, file: !899, line: 1103, baseType: !195, size: 128, offset: 11200)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1239, file: !899, line: 1104, baseType: !2079, size: 64, offset: 11328)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !899, line: 46, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1239, file: !899, line: 1105, baseType: !1211, size: 192, offset: 11392)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1239, file: !899, line: 1106, baseType: !5, size: 32, offset: 11584)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1239, file: !899, line: 1109, baseType: !2084, size: 128, offset: 11648)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2085, size: 128, elements: !1590)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !899, line: 51, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1239, file: !899, line: 1110, baseType: !1211, size: 192, offset: 11776)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1239, file: !899, line: 1111, baseType: !195, size: 128, offset: 11968)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1239, file: !899, line: 1173, baseType: !2090, size: 64, offset: 12096)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2092, line: 62, size: 256, align: 256, elements: !2093)
!2092 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !{!2094, !2095, !2096, !2101}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2091, file: !2092, line: 75, baseType: !412, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2091, file: !2092, line: 90, baseType: !412, size: 32, offset: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2091, file: !2092, line: 124, baseType: !2097, size: 64, offset: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !2092, line: 109, size: 64, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2097, file: !2092, line: 110, baseType: !417, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2097, file: !2092, line: 112, baseType: !417, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2091, file: !2092, line: 144, baseType: !412, size: 32, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1239, file: !899, line: 1174, baseType: !410, size: 32, offset: 12160)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1239, file: !899, line: 1179, baseType: !190, size: 64, offset: 12224)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1239, file: !899, line: 1182, baseType: !2105, size: 128, offset: 12288)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1189, line: 76, size: 128, elements: !2106)
!2106 = !{!2107, !2112, !2113}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2105, file: !1189, line: 85, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2109, line: 7, size: 64, elements: !2110)
!2109 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2108, file: !2109, line: 12, baseType: !1388, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2105, file: !1189, line: 88, baseType: !485, size: 8, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2105, file: !1189, line: 95, baseType: !485, size: 8, offset: 72)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !899, line: 1184, baseType: !2115, size: 128, offset: 12416)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1239, file: !899, line: 1184, size: 128, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2115, file: !899, line: 1185, baseType: !1251, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2115, file: !899, line: 1186, baseType: !360, size: 128, align: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1239, file: !899, line: 1190, baseType: !897, size: 64, offset: 12544)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1239, file: !899, line: 1192, baseType: !2121, size: 128, offset: 12608)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1189, line: 64, size: 128, elements: !2122)
!2122 = !{!2123, !2124, !2125}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2121, file: !1189, line: 65, baseType: !719, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2121, file: !1189, line: 67, baseType: !412, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2121, file: !1189, line: 68, baseType: !412, size: 32, offset: 96)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1239, file: !899, line: 1206, baseType: !258, size: 32, offset: 12736)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1239, file: !899, line: 1207, baseType: !258, size: 32, offset: 12768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1239, file: !899, line: 1209, baseType: !190, size: 64, offset: 12800)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1239, file: !899, line: 1219, baseType: !416, size: 64, offset: 12864)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1239, file: !899, line: 1220, baseType: !416, size: 64, offset: 12928)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1239, file: !899, line: 1317, baseType: !258, size: 32, offset: 12992)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1239, file: !899, line: 1319, baseType: !1238, size: 64, offset: 13056)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1239, file: !899, line: 1322, baseType: !2134, size: 64, offset: 13120)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2136, line: 56, size: 512, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2139, !2140, !2141, !2142, !2143, !2144, !2146}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2135, file: !2136, line: 57, baseType: !2134, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2135, file: !2136, line: 58, baseType: !191, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2135, file: !2136, line: 59, baseType: !190, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !2136, line: 60, baseType: !190, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2135, file: !2136, line: 61, baseType: !818, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2135, file: !2136, line: 62, baseType: !5, size: 32, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2135, file: !2136, line: 63, baseType: !2145, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !185, line: 153, baseType: !416)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2135, file: !2136, line: 64, baseType: !2147, size: 64, offset: 448)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1239, file: !899, line: 1326, baseType: !1251, size: 32, offset: 13184)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1239, file: !899, line: 1342, baseType: !191, size: 64, offset: 13248)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1239, file: !899, line: 1343, baseType: !417, size: 64, offset: 13312)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1239, file: !899, line: 1344, baseType: !416, size: 64, offset: 13376)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1239, file: !899, line: 1345, baseType: !417, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1239, file: !899, line: 1346, baseType: !417, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1239, file: !899, line: 1347, baseType: !417, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1239, file: !899, line: 1348, baseType: !360, size: 128, align: 64, offset: 13504)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1239, file: !899, line: 1358, baseType: !2158, size: 34816, offset: 13824)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2159, line: 485, size: 34816, elements: !2160)
!2159 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2160 = !{!2161, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2190, !2191, !2192, !2193, !2194, !2195, !2198, !2199, !2200}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2158, file: !2159, line: 487, baseType: !2162, size: 192)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2163, size: 192, elements: !275)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2164, line: 16, size: 64, elements: !2165)
!2164 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2163, file: !2164, line: 17, baseType: !857, size: 16)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2163, file: !2164, line: 18, baseType: !857, size: 16, offset: 16)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2163, file: !2164, line: 19, baseType: !857, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2163, file: !2164, line: 19, baseType: !857, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2163, file: !2164, line: 19, baseType: !857, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2163, file: !2164, line: 19, baseType: !857, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2163, file: !2164, line: 19, baseType: !857, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2163, file: !2164, line: 20, baseType: !857, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2163, file: !2164, line: 20, baseType: !857, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2163, file: !2164, line: 20, baseType: !857, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2163, file: !2164, line: 20, baseType: !857, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2163, file: !2164, line: 20, baseType: !857, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2163, file: !2164, line: 20, baseType: !857, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2158, file: !2159, line: 491, baseType: !190, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2158, file: !2159, line: 495, baseType: !315, size: 16, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2158, file: !2159, line: 496, baseType: !315, size: 16, offset: 272)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2158, file: !2159, line: 497, baseType: !315, size: 16, offset: 288)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2158, file: !2159, line: 498, baseType: !315, size: 16, offset: 304)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2158, file: !2159, line: 502, baseType: !190, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2158, file: !2159, line: 503, baseType: !190, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2158, file: !2159, line: 514, baseType: !2187, size: 256, offset: 448)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, size: 256, elements: !1193)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2159, line: 483, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2158, file: !2159, line: 516, baseType: !190, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2158, file: !2159, line: 518, baseType: !190, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2158, file: !2159, line: 520, baseType: !190, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2158, file: !2159, line: 521, baseType: !190, size: 64, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2158, file: !2159, line: 522, baseType: !190, size: 64, offset: 960)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2158, file: !2159, line: 528, baseType: !2196, size: 64, offset: 1024)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2159, line: 10, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2158, file: !2159, line: 535, baseType: !190, size: 64, offset: 1088)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2158, file: !2159, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2158, file: !2159, line: 540, baseType: !2201, size: 33280, offset: 1536)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2202, line: 317, size: 33280, elements: !2203)
!2202 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2203 = !{!2204, !2205, !2206}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2201, file: !2202, line: 330, baseType: !5, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2201, file: !2202, line: 337, baseType: !190, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2201, file: !2202, line: 348, baseType: !2207, size: 32768, offset: 512)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2202, line: 304, size: 32768, elements: !2208)
!2208 = !{!2209, !2224, !2263, !2313, !2326}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2207, file: !2202, line: 305, baseType: !2210, size: 896)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2202, line: 12, size: 896, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2223}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2210, file: !2202, line: 13, baseType: !410, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2210, file: !2202, line: 14, baseType: !410, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2210, file: !2202, line: 15, baseType: !410, size: 32, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2210, file: !2202, line: 16, baseType: !410, size: 32, offset: 96)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2210, file: !2202, line: 17, baseType: !410, size: 32, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2210, file: !2202, line: 18, baseType: !410, size: 32, offset: 160)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2210, file: !2202, line: 19, baseType: !410, size: 32, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2210, file: !2202, line: 22, baseType: !2220, size: 640, offset: 224)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 640, elements: !2221)
!2221 = !{!2222}
!2222 = !DISubrange(count: 20)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2210, file: !2202, line: 25, baseType: !410, size: 32, offset: 864)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2207, file: !2202, line: 306, baseType: !2225, size: 4096, align: 128)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2202, line: 34, size: 4096, align: 128, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230, !2231, !2246, !2247, !2248, !2252, !2254, !2258}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2225, file: !2202, line: 35, baseType: !857, size: 16)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2225, file: !2202, line: 36, baseType: !857, size: 16, offset: 16)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2225, file: !2202, line: 37, baseType: !857, size: 16, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2225, file: !2202, line: 38, baseType: !857, size: 16, offset: 48)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !2202, line: 39, baseType: !2232, size: 128, offset: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !2202, line: 39, size: 128, elements: !2233)
!2233 = !{!2234, !2239}
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2202, line: 40, baseType: !2235, size: 128)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2232, file: !2202, line: 40, size: 128, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2235, file: !2202, line: 41, baseType: !416, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2235, file: !2202, line: 42, baseType: !416, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2202, line: 44, baseType: !2240, size: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2232, file: !2202, line: 44, size: 128, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2240, file: !2202, line: 45, baseType: !410, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2240, file: !2202, line: 46, baseType: !410, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2240, file: !2202, line: 47, baseType: !410, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2240, file: !2202, line: 48, baseType: !410, size: 32, offset: 96)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2225, file: !2202, line: 51, baseType: !410, size: 32, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2225, file: !2202, line: 52, baseType: !410, size: 32, offset: 224)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2225, file: !2202, line: 55, baseType: !2249, size: 1024, offset: 256)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 1024, elements: !2250)
!2250 = !{!2251}
!2251 = !DISubrange(count: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2225, file: !2202, line: 58, baseType: !2253, size: 2048, offset: 1280)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 2048, elements: !279)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2225, file: !2202, line: 60, baseType: !2255, size: 384, offset: 3328)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 384, elements: !2256)
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
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2264, file: !2202, line: 80, baseType: !410, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2264, file: !2202, line: 81, baseType: !410, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2264, file: !2202, line: 82, baseType: !410, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2264, file: !2202, line: 83, baseType: !410, size: 32, offset: 96)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2264, file: !2202, line: 84, baseType: !410, size: 32, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2264, file: !2202, line: 85, baseType: !410, size: 32, offset: 160)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2264, file: !2202, line: 86, baseType: !410, size: 32, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2264, file: !2202, line: 88, baseType: !2220, size: 640, offset: 224)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2264, file: !2202, line: 89, baseType: !1373, size: 8, offset: 864)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2264, file: !2202, line: 90, baseType: !1373, size: 8, offset: 872)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2264, file: !2202, line: 91, baseType: !1373, size: 8, offset: 880)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2264, file: !2202, line: 92, baseType: !1373, size: 8, offset: 888)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2264, file: !2202, line: 93, baseType: !1373, size: 8, offset: 896)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2264, file: !2202, line: 94, baseType: !1373, size: 8, offset: 904)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2264, file: !2202, line: 95, baseType: !2281, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2283, line: 11, size: 128, elements: !2284)
!2283 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2282, file: !2283, line: 12, baseType: !308, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2282, file: !2283, line: 13, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2289, line: 56, size: 1344, elements: !2290)
!2289 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2288, file: !2289, line: 61, baseType: !190, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2288, file: !2289, line: 62, baseType: !190, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2288, file: !2289, line: 63, baseType: !190, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2288, file: !2289, line: 64, baseType: !190, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2288, file: !2289, line: 65, baseType: !190, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2288, file: !2289, line: 66, baseType: !190, size: 64, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2288, file: !2289, line: 68, baseType: !190, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2288, file: !2289, line: 69, baseType: !190, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2288, file: !2289, line: 70, baseType: !190, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2288, file: !2289, line: 71, baseType: !190, size: 64, offset: 576)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2288, file: !2289, line: 72, baseType: !190, size: 64, offset: 640)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2288, file: !2289, line: 73, baseType: !190, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2288, file: !2289, line: 74, baseType: !190, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2288, file: !2289, line: 75, baseType: !190, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2288, file: !2289, line: 76, baseType: !190, size: 64, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2288, file: !2289, line: 81, baseType: !190, size: 64, offset: 960)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2288, file: !2289, line: 83, baseType: !190, size: 64, offset: 1024)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2288, file: !2289, line: 84, baseType: !190, size: 64, offset: 1088)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2288, file: !2289, line: 85, baseType: !190, size: 64, offset: 1152)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2288, file: !2289, line: 86, baseType: !190, size: 64, offset: 1216)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2288, file: !2289, line: 87, baseType: !190, size: 64, offset: 1280)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2264, file: !2202, line: 96, baseType: !410, size: 32, offset: 1024)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2207, file: !2202, line: 308, baseType: !2314, size: 4608, align: 512)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2202, line: 289, size: 4608, align: 512, elements: !2315)
!2315 = !{!2316, !2317, !2324}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2314, file: !2202, line: 290, baseType: !2225, size: 4096, align: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2314, file: !2202, line: 291, baseType: !2318, size: 512, offset: 4096)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2202, line: 268, size: 512, elements: !2319)
!2319 = !{!2320, !2321, !2322}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2318, file: !2202, line: 269, baseType: !416, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2318, file: !2202, line: 270, baseType: !416, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2318, file: !2202, line: 271, baseType: !2323, size: 384, offset: 128)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !1646)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2314, file: !2202, line: 292, baseType: !2325, offset: 4608)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, elements: !1744)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2207, file: !2202, line: 309, baseType: !2327, size: 32768)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 32768, elements: !2328)
!2328 = !{!2329}
!2329 = !DISubrange(count: 4096)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1235, file: !721, line: 378, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1231, file: !721, line: 384, baseType: !1523, size: 192, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1016, file: !721, line: 500, baseType: !232, offset: 6656)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1016, file: !721, line: 501, baseType: !2335, size: 64, offset: 6656)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !721, line: 387, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1016, file: !721, line: 516, baseType: !1734, size: 64, offset: 6720)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1016, file: !721, line: 519, baseType: !347, size: 64, offset: 6784)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1016, file: !721, line: 521, baseType: !2340, size: 64, offset: 6848)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !721, line: 521, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1016, file: !721, line: 545, baseType: !745, size: 32, offset: 6912)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1016, file: !721, line: 548, baseType: !485, size: 8, offset: 6944)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1016, file: !721, line: 550, baseType: !2345, offset: 6952)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2346, line: 142, elements: !246)
!2346 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1016, file: !721, line: 554, baseType: !1979, size: 256, offset: 6976)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1016, file: !721, line: 557, baseType: !410, size: 32, offset: 7232)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1013, file: !721, line: 565, baseType: !2350, offset: 7296)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !2351)
!2351 = !{!2352}
!2352 = !DISubrange(count: -1)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1009, file: !721, line: 151, baseType: !745, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1002, file: !721, line: 156, baseType: !232, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !721, line: 159, baseType: !2356, size: 128)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !721, line: 159, size: 128, elements: !2357)
!2357 = !{!2358, !2422}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2356, file: !721, line: 161, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2361)
!2361 = !{!2362, !2372, !2393, !2394, !2395, !2396, !2397, !2409, !2410, !2411}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2360, file: !29, line: 111, baseType: !2363, size: 384)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2364)
!2364 = !{!2365, !2367, !2368, !2369, !2370, !2371}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2363, file: !29, line: 20, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2363, file: !29, line: 21, baseType: !2366, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2363, file: !29, line: 22, baseType: !2366, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2363, file: !29, line: 23, baseType: !190, size: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2363, file: !29, line: 24, baseType: !190, size: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2363, file: !29, line: 25, baseType: !190, size: 64, offset: 320)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2360, file: !29, line: 112, baseType: !2373, size: 64, offset: 384)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2375, line: 105, size: 128, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2376 = !{!2377, !2378}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2374, file: !2375, line: 110, baseType: !190, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2374, file: !2375, line: 118, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2375, line: 95, size: 448, elements: !2381)
!2381 = !{!2382, !2383, !2388, !2389, !2390, !2391, !2392}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2380, file: !2375, line: 96, baseType: !769, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2380, file: !2375, line: 97, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2375, line: 60, baseType: !2386)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !2373}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2380, file: !2375, line: 98, baseType: !2384, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2380, file: !2375, line: 99, baseType: !485, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2380, file: !2375, line: 100, baseType: !485, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2380, file: !2375, line: 101, baseType: !360, size: 128, align: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2380, file: !2375, line: 102, baseType: !2373, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2360, file: !29, line: 113, baseType: !2374, size: 128, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2360, file: !29, line: 114, baseType: !1523, size: 192, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2360, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2360, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2360, file: !29, line: 117, baseType: !2398, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2401)
!2401 = !{!2402, !2403, !2407, !2408}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2400, file: !29, line: 73, baseType: !838, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2400, file: !29, line: 78, baseType: !2404, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2359}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2400, file: !29, line: 83, baseType: !2404, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2400, file: !29, line: 89, baseType: !1065, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2360, file: !29, line: 118, baseType: !191, size: 64, offset: 896)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2360, file: !29, line: 119, baseType: !258, size: 32, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !29, line: 120, baseType: !2412, size: 128, offset: 1024)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !29, line: 120, size: 128, elements: !2413)
!2413 = !{!2414, !2420}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2412, file: !29, line: 121, baseType: !2415, size: 128)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2416, line: 6, size: 128, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2415, file: !2416, line: 7, baseType: !416, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2415, file: !2416, line: 8, baseType: !416, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2412, file: !29, line: 122, baseType: !2421)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2415, elements: !1744)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2356, file: !721, line: 162, baseType: !191, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !725, file: !721, line: 176, baseType: !360, size: 128, align: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !721, line: 179, baseType: !2425, size: 32, offset: 384)
!2425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !721, line: 179, size: 32, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2425, file: !721, line: 184, baseType: !745, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2425, file: !721, line: 192, baseType: !5, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2425, file: !721, line: 194, baseType: !5, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2425, file: !721, line: 195, baseType: !258, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !720, file: !721, line: 199, baseType: !745, size: 32, offset: 416)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !655, file: !42, line: 1964, baseType: !2433, size: 64, offset: 1344)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!308, !594, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2438, line: 12, size: 256, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2439 = !{!2440, !2441, !2442, !2443, !2444}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2437, file: !2438, line: 13, baseType: !184, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2437, file: !2438, line: 16, baseType: !258, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2437, file: !2438, line: 23, baseType: !190, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2437, file: !2438, line: 30, baseType: !190, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2437, file: !2438, line: 33, baseType: !2445, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !721, line: 27, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !655, file: !42, line: 1966, baseType: !2433, size: 64, offset: 1408)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !595, file: !42, line: 1424, baseType: !2449, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2452)
!2452 = !{!2453, !2499, !2503, !2507, !2508, !2509, !2510, !2511, !2516, !2521, !2525}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2451, file: !36, line: 323, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!258, !2457}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2459)
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2484, !2485, !2486}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2458, file: !36, line: 295, baseType: !637, size: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2458, file: !36, line: 296, baseType: !195, size: 128, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2458, file: !36, line: 297, baseType: !195, size: 128, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2458, file: !36, line: 298, baseType: !195, size: 128, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2458, file: !36, line: 299, baseType: !1211, size: 192, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2458, file: !36, line: 300, baseType: !232, offset: 704)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2458, file: !36, line: 301, baseType: !745, size: 32, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2458, file: !36, line: 302, baseType: !594, size: 64, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2458, file: !36, line: 303, baseType: !2469, size: 64, offset: 832)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2470)
!2470 = !{!2471, !2483}
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !36, line: 69, baseType: !2472, size: 32)
!2472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !36, line: 69, size: 32, elements: !2473)
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2472, file: !36, line: 70, baseType: !430, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2472, file: !36, line: 71, baseType: !438, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2472, file: !36, line: 72, baseType: !2477, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2478, line: 24, baseType: !2479)
!2478 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2478, line: 22, size: 32, elements: !2480)
!2480 = !{!2481}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2479, file: !2478, line: 23, baseType: !2482, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2478, line: 20, baseType: !436)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2469, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2458, file: !36, line: 304, baseType: !526, size: 64, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2458, file: !36, line: 305, baseType: !190, size: 64, offset: 960)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2458, file: !36, line: 306, baseType: !2487, size: 576, offset: 1024)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2488)
!2488 = !{!2489, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2487, file: !36, line: 206, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !528)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2487, file: !36, line: 207, baseType: !2490, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2487, file: !36, line: 208, baseType: !2490, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2487, file: !36, line: 209, baseType: !2490, size: 64, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2487, file: !36, line: 210, baseType: !2490, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2487, file: !36, line: 211, baseType: !2490, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2487, file: !36, line: 212, baseType: !2490, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2487, file: !36, line: 213, baseType: !534, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2487, file: !36, line: 214, baseType: !534, size: 64, offset: 512)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2451, file: !36, line: 324, baseType: !2500, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!2457, !594, !258}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2451, file: !36, line: 325, baseType: !2504, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2457}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2451, file: !36, line: 326, baseType: !2454, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2451, file: !36, line: 327, baseType: !2454, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2451, file: !36, line: 328, baseType: !2454, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2451, file: !36, line: 329, baseType: !683, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2451, file: !36, line: 332, baseType: !2512, size: 64, offset: 448)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!2515, !424}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2451, file: !36, line: 333, baseType: !2517, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!258, !424, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2451, file: !36, line: 335, baseType: !2522, size: 64, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!258, !424, !2515}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2451, file: !36, line: 337, baseType: !2526, size: 64, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!258, !594, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !595, file: !42, line: 1425, baseType: !2531, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2534)
!2534 = !{!2535, !2539, !2540, !2544, !2545, !2546, !2561, !2584, !2588, !2589, !2612}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2533, file: !36, line: 429, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!258, !594, !258, !258, !544}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2533, file: !36, line: 430, baseType: !683, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2533, file: !36, line: 431, baseType: !2541, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!258, !594, !5}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2533, file: !36, line: 432, baseType: !2541, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2533, file: !36, line: 433, baseType: !683, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2533, file: !36, line: 434, baseType: !2547, size: 64, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!258, !594, !258, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2551, file: !36, line: 416, baseType: !258, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2551, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2551, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2551, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2551, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2551, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2551, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2551, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2533, file: !36, line: 435, baseType: !2562, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!258, !594, !2469, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2567)
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2566, file: !36, line: 344, baseType: !258, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2566, file: !36, line: 345, baseType: !416, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2566, file: !36, line: 346, baseType: !416, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2566, file: !36, line: 347, baseType: !416, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2566, file: !36, line: 348, baseType: !416, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2566, file: !36, line: 349, baseType: !416, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2566, file: !36, line: 350, baseType: !416, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2566, file: !36, line: 351, baseType: !775, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2566, file: !36, line: 353, baseType: !775, size: 64, offset: 512)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2566, file: !36, line: 354, baseType: !258, size: 32, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2566, file: !36, line: 355, baseType: !258, size: 32, offset: 608)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2566, file: !36, line: 356, baseType: !416, size: 64, offset: 640)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2566, file: !36, line: 357, baseType: !416, size: 64, offset: 704)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2566, file: !36, line: 358, baseType: !416, size: 64, offset: 768)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2566, file: !36, line: 359, baseType: !775, size: 64, offset: 832)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2566, file: !36, line: 360, baseType: !258, size: 32, offset: 896)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2533, file: !36, line: 436, baseType: !2585, size: 64, offset: 448)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!258, !594, !2529, !2565}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2533, file: !36, line: 438, baseType: !2562, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2533, file: !36, line: 439, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!258, !594, !2593}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2594, file: !36, line: 410, baseType: !5, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2594, file: !36, line: 411, baseType: !2598, size: 1344, offset: 64)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2599, size: 1344, elements: !275)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2611}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !36, line: 396, baseType: !5, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2599, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2599, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2599, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2599, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2599, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2599, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2599, file: !36, line: 404, baseType: !418, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2599, file: !36, line: 405, baseType: !2610, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !185, line: 126, baseType: !416)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2599, file: !36, line: 406, baseType: !2610, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2533, file: !36, line: 440, baseType: !2541, size: 64, offset: 640)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !595, file: !42, line: 1426, baseType: !2614, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !595, file: !42, line: 1427, baseType: !190, size: 64, offset: 640)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !595, file: !42, line: 1428, baseType: !190, size: 64, offset: 704)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !595, file: !42, line: 1429, baseType: !190, size: 64, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !595, file: !42, line: 1430, baseType: !377, size: 64, offset: 832)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !595, file: !42, line: 1431, baseType: !765, size: 256, offset: 896)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !595, file: !42, line: 1432, baseType: !258, size: 32, offset: 1152)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !595, file: !42, line: 1433, baseType: !745, size: 32, offset: 1184)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !595, file: !42, line: 1437, baseType: !2625, size: 64, offset: 1216)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2628)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !595, file: !42, line: 1449, baseType: !2630, size: 64, offset: 1280)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !393, line: 34, size: 64, elements: !2631)
!2631 = !{!2632}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2630, file: !393, line: 35, baseType: !396, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !595, file: !42, line: 1450, baseType: !195, size: 128, offset: 1344)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !595, file: !42, line: 1451, baseType: !2635, size: 64, offset: 1472)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !595, file: !42, line: 1452, baseType: !1945, size: 64, offset: 1536)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !595, file: !42, line: 1453, baseType: !2639, size: 64, offset: 1600)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !595, file: !42, line: 1454, baseType: !637, size: 128, offset: 1664)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !595, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !595, file: !42, line: 1456, baseType: !2644, size: 2432, offset: 1856)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2650, !2682}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2644, file: !36, line: 519, baseType: !5, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2644, file: !36, line: 520, baseType: !765, size: 256, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2644, file: !36, line: 521, baseType: !2649, size: 192, offset: 320)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 192, elements: !275)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2644, file: !36, line: 522, baseType: !2651, size: 1728, offset: 512)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2652, size: 1728, elements: !275)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2653)
!2653 = !{!2654, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2652, file: !36, line: 223, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2657)
!2657 = !{!2658, !2659, !2672, !2673}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2656, file: !36, line: 444, baseType: !258, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2656, file: !36, line: 445, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2662, file: !36, line: 311, baseType: !683, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2662, file: !36, line: 312, baseType: !683, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2662, file: !36, line: 313, baseType: !683, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2662, file: !36, line: 314, baseType: !683, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2662, file: !36, line: 315, baseType: !2454, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2662, file: !36, line: 316, baseType: !2454, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2662, file: !36, line: 317, baseType: !2454, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2662, file: !36, line: 318, baseType: !2526, size: 64, offset: 448)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2656, file: !36, line: 446, baseType: !628, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2656, file: !36, line: 447, baseType: !2655, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2652, file: !36, line: 224, baseType: !258, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2652, file: !36, line: 226, baseType: !195, size: 128, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2652, file: !36, line: 227, baseType: !190, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2652, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2652, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2652, file: !36, line: 230, baseType: !2490, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2652, file: !36, line: 231, baseType: !2490, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2652, file: !36, line: 232, baseType: !191, size: 64, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2644, file: !36, line: 523, baseType: !2683, size: 192, offset: 2240)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2660, size: 192, elements: !275)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !595, file: !42, line: 1458, baseType: !2685, size: 2112, offset: 4288)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2686)
!2686 = !{!2687, !2688, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2685, file: !42, line: 1411, baseType: !258, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2685, file: !42, line: 1412, baseType: !1502, size: 128, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2685, file: !42, line: 1413, baseType: !2690, size: 1920, offset: 192)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2691, size: 1920, elements: !275)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2692, line: 12, size: 640, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2693 = !{!2694, !2702, !2704, !2709, !2710}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2691, file: !2692, line: 13, baseType: !2695, size: 320)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2696, line: 17, size: 320, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2695, file: !2696, line: 18, baseType: !258, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2695, file: !2696, line: 19, baseType: !258, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2695, file: !2696, line: 20, baseType: !1502, size: 128, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2695, file: !2696, line: 22, baseType: !360, size: 128, align: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2691, file: !2692, line: 14, baseType: !2703, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2691, file: !2692, line: 15, baseType: !2705, size: 64, offset: 384)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2706, line: 16, size: 64, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2707 = !{!2708}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2705, file: !2706, line: 17, baseType: !1238, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2691, file: !2692, line: 16, baseType: !1502, size: 128, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2691, file: !2692, line: 17, baseType: !745, size: 32, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !595, file: !42, line: 1465, baseType: !191, size: 64, offset: 6400)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !595, file: !42, line: 1468, baseType: !410, size: 32, offset: 6464)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !595, file: !42, line: 1470, baseType: !534, size: 64, offset: 6528)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !595, file: !42, line: 1471, baseType: !534, size: 64, offset: 6592)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !595, file: !42, line: 1473, baseType: !412, size: 32, offset: 6656)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !595, file: !42, line: 1474, baseType: !2717, size: 64, offset: 6720)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !595, file: !42, line: 1477, baseType: !2720, size: 256, offset: 6784)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !2250)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !595, file: !42, line: 1478, baseType: !2722, size: 128, offset: 7040)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2723, line: 18, baseType: !2724)
!2723 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2723, line: 16, size: 128, elements: !2725)
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2724, file: !2723, line: 17, baseType: !2727, size: 128)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 128, elements: !1756)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !595, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !595, file: !42, line: 1481, baseType: !2730, size: 32, offset: 7200)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !185, line: 150, baseType: !5)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !595, file: !42, line: 1487, baseType: !1211, size: 192, offset: 7232)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !595, file: !42, line: 1493, baseType: !220, size: 64, offset: 7424)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !595, file: !42, line: 1495, baseType: !2734, size: 64, offset: 7488)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2736)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !375, line: 135, size: 1024, align: 512, elements: !2737)
!2737 = !{!2738, !2742, !2743, !2750, !2756, !2760, !2764, !2768, !2769, !2773, !2777, !2782, !2786}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2736, file: !375, line: 136, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!258, !377, !5}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2736, file: !375, line: 137, baseType: !2739, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2736, file: !375, line: 138, baseType: !2744, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!258, !2747, !2749}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2736, file: !375, line: 139, baseType: !2751, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!258, !2747, !5, !220, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2736, file: !375, line: 141, baseType: !2757, size: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!258, !2747}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2736, file: !375, line: 142, baseType: !2761, size: 64, offset: 320)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!258, !377}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2736, file: !375, line: 143, baseType: !2765, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !377}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2736, file: !375, line: 144, baseType: !2765, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2736, file: !375, line: 145, baseType: !2770, size: 64, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !377, !424}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2736, file: !375, line: 146, baseType: !2774, size: 64, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!274, !377, !274, !258}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2736, file: !375, line: 147, baseType: !2778, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!373, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2736, file: !375, line: 148, baseType: !2783, size: 64, offset: 704)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!258, !544, !485}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2736, file: !375, line: 149, baseType: !2787, size: 64, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!377, !377, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !595, file: !42, line: 1500, baseType: !258, size: 32, offset: 7552)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !595, file: !42, line: 1502, baseType: !2794, size: 448, offset: 7616)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2438, line: 60, size: 448, elements: !2795)
!2795 = !{!2796, !2801, !2802, !2803, !2804, !2805, !2806}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2794, file: !2438, line: 61, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!190, !2800, !2436}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2794, file: !2438, line: 63, baseType: !2797, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2794, file: !2438, line: 66, baseType: !308, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2794, file: !2438, line: 67, baseType: !258, size: 32, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2794, file: !2438, line: 68, baseType: !5, size: 32, offset: 224)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2794, file: !2438, line: 71, baseType: !195, size: 128, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2794, file: !2438, line: 77, baseType: !2807, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !595, file: !42, line: 1505, baseType: !769, size: 64, offset: 8064)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !595, file: !42, line: 1508, baseType: !769, size: 64, offset: 8128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !595, file: !42, line: 1511, baseType: !258, size: 32, offset: 8192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !595, file: !42, line: 1514, baseType: !947, size: 32, offset: 8224)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !595, file: !42, line: 1517, baseType: !2813, size: 64, offset: 8256)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1980, line: 18, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !595, file: !42, line: 1518, baseType: !633, size: 64, offset: 8320)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !595, file: !42, line: 1525, baseType: !1734, size: 64, offset: 8384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !595, file: !42, line: 1532, baseType: !2818, size: 64, offset: 8448)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2819, line: 52, size: 64, elements: !2820)
!2819 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2820 = !{!2821}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2818, file: !2819, line: 53, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2819, line: 40, size: 256, elements: !2824)
!2824 = !{!2825, !2826, !2831}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2823, file: !2819, line: 42, baseType: !232)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2823, file: !2819, line: 44, baseType: !2827, size: 192)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2819, line: 28, size: 192, elements: !2828)
!2828 = !{!2829, !2830}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2827, file: !2819, line: 29, baseType: !195, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2827, file: !2819, line: 31, baseType: !308, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2823, file: !2819, line: 49, baseType: !308, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !595, file: !42, line: 1533, baseType: !2818, size: 64, offset: 8512)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !595, file: !42, line: 1534, baseType: !360, size: 128, align: 64, offset: 8576)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !595, file: !42, line: 1535, baseType: !1979, size: 256, offset: 8704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !595, file: !42, line: 1537, baseType: !1211, size: 192, offset: 8960)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !595, file: !42, line: 1542, baseType: !258, size: 32, offset: 9152)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !595, file: !42, line: 1545, baseType: !232, offset: 9184)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !595, file: !42, line: 1546, baseType: !195, size: 128, offset: 9216)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !595, file: !42, line: 1548, baseType: !232, offset: 9344)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !595, file: !42, line: 1549, baseType: !195, size: 128, offset: 9344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !425, file: !42, line: 624, baseType: !732, size: 64, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !425, file: !42, line: 631, baseType: !190, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !42, line: 639, baseType: !2844, size: 32, offset: 384)
!2844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !42, line: 639, size: 32, elements: !2845)
!2845 = !{!2846, !2848}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2844, file: !42, line: 640, baseType: !2847, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2844, file: !42, line: 641, baseType: !5, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !425, file: !42, line: 643, baseType: !508, size: 32, offset: 416)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !425, file: !42, line: 644, baseType: !526, size: 64, offset: 448)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !425, file: !42, line: 645, baseType: !530, size: 128, offset: 512)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !425, file: !42, line: 646, baseType: !530, size: 128, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !425, file: !42, line: 647, baseType: !530, size: 128, offset: 768)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !425, file: !42, line: 648, baseType: !232, offset: 896)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !425, file: !42, line: 649, baseType: !315, size: 16, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !425, file: !42, line: 650, baseType: !1373, size: 8, offset: 912)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !425, file: !42, line: 651, baseType: !1373, size: 8, offset: 920)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !425, file: !42, line: 652, baseType: !2610, size: 64, offset: 960)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !425, file: !42, line: 659, baseType: !190, size: 64, offset: 1024)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !425, file: !42, line: 660, baseType: !765, size: 256, offset: 1088)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !425, file: !42, line: 662, baseType: !190, size: 64, offset: 1344)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !425, file: !42, line: 663, baseType: !190, size: 64, offset: 1408)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !425, file: !42, line: 665, baseType: !637, size: 128, offset: 1472)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !425, file: !42, line: 666, baseType: !195, size: 128, offset: 1600)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !425, file: !42, line: 675, baseType: !195, size: 128, offset: 1728)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !425, file: !42, line: 676, baseType: !195, size: 128, offset: 1856)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !425, file: !42, line: 677, baseType: !195, size: 128, offset: 1984)
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !42, line: 678, baseType: !2869, size: 128, offset: 2112)
!2869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !42, line: 678, size: 128, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2869, file: !42, line: 679, baseType: !633, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2869, file: !42, line: 680, baseType: !360, size: 128, align: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !425, file: !42, line: 682, baseType: !771, size: 64, offset: 2240)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !425, file: !42, line: 683, baseType: !771, size: 64, offset: 2304)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !425, file: !42, line: 684, baseType: !745, size: 32, offset: 2368)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !425, file: !42, line: 685, baseType: !745, size: 32, offset: 2400)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !425, file: !42, line: 686, baseType: !745, size: 32, offset: 2432)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !425, file: !42, line: 688, baseType: !745, size: 32, offset: 2464)
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !42, line: 690, baseType: !2880, size: 64, offset: 2496)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !42, line: 690, size: 64, elements: !2881)
!2881 = !{!2882, !3105}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2880, file: !42, line: 691, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2886)
!2886 = !{!2887, !2888, !2892, !2897, !2901, !2902, !2903, !2907, !2920, !2921, !2929, !2933, !2934, !2938, !2939, !2943, !2948, !2949, !2953, !2957, !3065, !3069, !3070, !3074, !3075, !3079, !3083, !3088, !3092, !3096, !3100, !3104}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2885, file: !42, line: 1823, baseType: !628, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2885, file: !42, line: 1824, baseType: !2889, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!526, !347, !526, !258}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2885, file: !42, line: 1825, baseType: !2893, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!305, !347, !274, !186, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2885, file: !42, line: 1826, baseType: !2898, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!305, !347, !220, !186, !2896}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2885, file: !42, line: 1827, baseType: !842, size: 64, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2885, file: !42, line: 1828, baseType: !842, size: 64, offset: 320)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2885, file: !42, line: 1829, baseType: !2904, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!258, !845, !485}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2885, file: !42, line: 1830, baseType: !2908, size: 64, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!258, !347, !2911}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !2913)
!2913 = !{!2914, !2919}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2912, file: !42, line: 1777, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !2916)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!258, !2911, !220, !258, !526, !416, !5}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2912, file: !42, line: 1778, baseType: !526, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2885, file: !42, line: 1831, baseType: !2908, size: 64, offset: 512)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2885, file: !42, line: 1832, baseType: !2922, size: 64, offset: 576)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!2925, !347, !2927}
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2926, line: 52, baseType: !5)
!2926 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !614, line: 27, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2885, file: !42, line: 1833, baseType: !2930, size: 64, offset: 640)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!308, !347, !5, !190}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2885, file: !42, line: 1834, baseType: !2930, size: 64, offset: 704)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2885, file: !42, line: 1835, baseType: !2935, size: 64, offset: 768)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!258, !347, !1019}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2885, file: !42, line: 1836, baseType: !190, size: 64, offset: 832)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2885, file: !42, line: 1837, baseType: !2940, size: 64, offset: 896)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!258, !424, !347}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2885, file: !42, line: 1838, baseType: !2944, size: 64, offset: 960)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!258, !347, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !191)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2885, file: !42, line: 1839, baseType: !2940, size: 64, offset: 1024)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2885, file: !42, line: 1840, baseType: !2950, size: 64, offset: 1088)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!258, !347, !526, !526, !258}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2885, file: !42, line: 1841, baseType: !2954, size: 64, offset: 1152)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!258, !258, !347, !258}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2885, file: !42, line: 1842, baseType: !2958, size: 64, offset: 1216)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!258, !347, !258, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2995, !2996, !2997, !3010, !3041}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2962, file: !42, line: 1063, baseType: !2961, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2962, file: !42, line: 1064, baseType: !195, size: 128, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2962, file: !42, line: 1065, baseType: !637, size: 128, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2962, file: !42, line: 1066, baseType: !195, size: 128, offset: 320)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2962, file: !42, line: 1069, baseType: !195, size: 128, offset: 448)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2962, file: !42, line: 1072, baseType: !2947, size: 64, offset: 576)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2962, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2962, file: !42, line: 1074, baseType: !422, size: 8, offset: 672)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2962, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2962, file: !42, line: 1076, baseType: !258, size: 32, offset: 736)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2962, file: !42, line: 1077, baseType: !1502, size: 128, offset: 768)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2962, file: !42, line: 1078, baseType: !347, size: 64, offset: 896)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2962, file: !42, line: 1079, baseType: !526, size: 64, offset: 960)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2962, file: !42, line: 1080, baseType: !526, size: 64, offset: 1024)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2962, file: !42, line: 1082, baseType: !2979, size: 64, offset: 1088)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !2981)
!2981 = !{!2982, !2990, !2991, !2992, !2993, !2994}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2980, file: !42, line: 1315, baseType: !2983)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2984, line: 20, baseType: !2985)
!2984 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2984, line: 11, elements: !2986)
!2986 = !{!2987}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2985, file: !2984, line: 12, baseType: !2988)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !244, line: 33, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !244, line: 31, elements: !246)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2980, file: !42, line: 1316, baseType: !258, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2980, file: !42, line: 1317, baseType: !258, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2980, file: !42, line: 1318, baseType: !2979, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2980, file: !42, line: 1319, baseType: !347, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2980, file: !42, line: 1320, baseType: !360, size: 128, align: 64, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2962, file: !42, line: 1084, baseType: !190, size: 64, offset: 1152)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2962, file: !42, line: 1085, baseType: !190, size: 64, offset: 1216)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2962, file: !42, line: 1087, baseType: !2998, size: 64, offset: 1280)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !3001)
!3001 = !{!3002, !3006}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3000, file: !42, line: 1012, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !2961, !2961}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3000, file: !42, line: 1013, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2961}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2962, file: !42, line: 1088, baseType: !3011, size: 64, offset: 1344)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3013)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3014)
!3014 = !{!3015, !3019, !3023, !3024, !3028, !3032, !3036, !3040}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3013, file: !42, line: 1017, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!2947, !2947}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3013, file: !42, line: 1018, baseType: !3020, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2947}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3013, file: !42, line: 1019, baseType: !3007, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3013, file: !42, line: 1020, baseType: !3025, size: 64, offset: 192)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!258, !2961, !258}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3013, file: !42, line: 1021, baseType: !3029, size: 64, offset: 256)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!485, !2961}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3013, file: !42, line: 1022, baseType: !3033, size: 64, offset: 320)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!258, !2961, !258, !194}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3013, file: !42, line: 1023, baseType: !3037, size: 64, offset: 384)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null, !2961, !819}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3013, file: !42, line: 1024, baseType: !3029, size: 64, offset: 448)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2962, file: !42, line: 1097, baseType: !3042, size: 256, offset: 1408)
!3042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2962, file: !42, line: 1089, size: 256, elements: !3043)
!3043 = !{!3044, !3053, !3059}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3042, file: !42, line: 1090, baseType: !3045, size: 256)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3046, line: 10, size: 256, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3047 = !{!3048, !3049, !3052}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3045, file: !3046, line: 11, baseType: !410, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3045, file: !3046, line: 12, baseType: !3050, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3046, line: 5, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3045, file: !3046, line: 13, baseType: !195, size: 128, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3042, file: !42, line: 1091, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3046, line: 17, size: 64, elements: !3055)
!3055 = !{!3056}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3054, file: !3046, line: 18, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3046, line: 16, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3042, file: !42, line: 1096, baseType: !3060, size: 192)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3042, file: !42, line: 1092, size: 192, elements: !3061)
!3061 = !{!3062, !3063, !3064}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3060, file: !42, line: 1093, baseType: !195, size: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3060, file: !42, line: 1094, baseType: !258, size: 32, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3060, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2885, file: !42, line: 1843, baseType: !3066, size: 64, offset: 1280)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!305, !347, !719, !258, !186, !2896, !258}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2885, file: !42, line: 1844, baseType: !1139, size: 64, offset: 1344)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2885, file: !42, line: 1845, baseType: !3071, size: 64, offset: 1408)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!258, !258}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2885, file: !42, line: 1846, baseType: !2958, size: 64, offset: 1472)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2885, file: !42, line: 1847, baseType: !3076, size: 64, offset: 1536)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!305, !897, !347, !2896, !186, !5}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2885, file: !42, line: 1848, baseType: !3080, size: 64, offset: 1600)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!305, !347, !2896, !897, !186, !5}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2885, file: !42, line: 1849, baseType: !3084, size: 64, offset: 1664)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!258, !347, !308, !3087, !819}
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2885, file: !42, line: 1850, baseType: !3089, size: 64, offset: 1728)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!308, !347, !258, !526, !526}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2885, file: !42, line: 1852, baseType: !3093, size: 64, offset: 1792)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !709, !347}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2885, file: !42, line: 1856, baseType: !3097, size: 64, offset: 1856)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!305, !347, !526, !347, !526, !186, !5}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2885, file: !42, line: 1858, baseType: !3101, size: 64, offset: 1920)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!526, !347, !526, !347, !526, !526, !5}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2885, file: !42, line: 1861, baseType: !2950, size: 64, offset: 1984)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2880, file: !42, line: 692, baseType: !662, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !425, file: !42, line: 694, baseType: !3107, size: 64, offset: 2560)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3108, file: !42, line: 1101, baseType: !232)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3108, file: !42, line: 1102, baseType: !195, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3108, file: !42, line: 1103, baseType: !195, size: 128, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3108, file: !42, line: 1104, baseType: !195, size: 128, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !425, file: !42, line: 695, baseType: !733, size: 1216, align: 64, offset: 2624)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !425, file: !42, line: 696, baseType: !195, size: 128, offset: 3840)
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !42, line: 697, baseType: !3117, size: 64, offset: 3968)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !42, line: 697, size: 64, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3132, !3133}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3117, file: !42, line: 698, baseType: !897, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3117, file: !42, line: 699, baseType: !2635, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3117, file: !42, line: 700, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3124, line: 14, size: 832, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3123, file: !3124, line: 15, baseType: !216, size: 512)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3123, file: !3124, line: 16, baseType: !628, size: 64, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3123, file: !3124, line: 17, baseType: !2883, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3123, file: !3124, line: 18, baseType: !195, size: 128, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3123, file: !3124, line: 19, baseType: !508, size: 32, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3123, file: !3124, line: 20, baseType: !5, size: 32, offset: 800)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3117, file: !42, line: 701, baseType: !274, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3117, file: !42, line: 702, baseType: !5, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !425, file: !42, line: 705, baseType: !412, size: 32, offset: 4032)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !425, file: !42, line: 708, baseType: !412, size: 32, offset: 4064)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !425, file: !42, line: 709, baseType: !2717, size: 64, offset: 4096)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !425, file: !42, line: 720, baseType: !191, size: 64, offset: 4160)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !378, file: !375, line: 98, baseType: !3139, size: 256, offset: 448)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 256, elements: !2250)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !378, file: !375, line: 101, baseType: !3141, size: 32, offset: 704)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3142, line: 25, size: 32, elements: !3143)
!3142 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3143 = !{!3144}
!3144 = !DIDerivedType(tag: DW_TAG_member, scope: !3141, file: !3142, line: 26, baseType: !3145, size: 32)
!3145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3141, file: !3142, line: 26, size: 32, elements: !3146)
!3146 = !{!3147}
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3145, file: !3142, line: 30, baseType: !3148, size: 32)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3145, file: !3142, line: 30, size: 32, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3148, file: !3142, line: 31, baseType: !232)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3148, file: !3142, line: 32, baseType: !258, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !378, file: !375, line: 102, baseType: !2734, size: 64, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !378, file: !375, line: 103, baseType: !594, size: 64, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !378, file: !375, line: 104, baseType: !190, size: 64, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !378, file: !375, line: 105, baseType: !191, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !375, line: 107, baseType: !3157, size: 128, offset: 1024)
!3157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !375, line: 107, size: 128, elements: !3158)
!3158 = !{!3159, !3160}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3157, file: !375, line: 108, baseType: !195, size: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3157, file: !375, line: 109, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !378, file: !375, line: 111, baseType: !195, size: 128, offset: 1152)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !378, file: !375, line: 112, baseType: !195, size: 128, offset: 1280)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !378, file: !375, line: 120, baseType: !3165, size: 128, offset: 1408)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !375, line: 116, size: 128, elements: !3166)
!3166 = !{!3167, !3168, !3169}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3165, file: !375, line: 117, baseType: !637, size: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3165, file: !375, line: 118, baseType: !392, size: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3165, file: !375, line: 119, baseType: !360, size: 128, align: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !348, file: !42, line: 922, baseType: !424, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !348, file: !42, line: 923, baseType: !2883, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !348, file: !42, line: 929, baseType: !232, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !348, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !348, file: !42, line: 931, baseType: !769, size: 64, offset: 448)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !348, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !348, file: !42, line: 933, baseType: !2730, size: 32, offset: 544)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !348, file: !42, line: 934, baseType: !1211, size: 192, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !348, file: !42, line: 935, baseType: !526, size: 64, offset: 768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !348, file: !42, line: 936, baseType: !3180, size: 192, offset: 832)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3186, !3187}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3180, file: !42, line: 886, baseType: !2983)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3180, file: !42, line: 887, baseType: !1492, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3180, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3180, file: !42, line: 889, baseType: !430, size: 32, offset: 96)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3180, file: !42, line: 889, baseType: !430, size: 32, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3180, file: !42, line: 890, baseType: !258, size: 32, offset: 160)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !348, file: !42, line: 937, baseType: !1568, size: 64, offset: 1024)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !348, file: !42, line: 938, baseType: !3190, size: 256, offset: 1088)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3190, file: !42, line: 897, baseType: !190, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3190, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3190, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3190, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3190, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3190, file: !42, line: 904, baseType: !526, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !348, file: !42, line: 940, baseType: !416, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !348, file: !42, line: 945, baseType: !191, size: 64, offset: 1408)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !348, file: !42, line: 949, baseType: !195, size: 128, offset: 1472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !348, file: !42, line: 950, baseType: !195, size: 128, offset: 1600)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !348, file: !42, line: 952, baseType: !732, size: 64, offset: 1728)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !348, file: !42, line: 953, baseType: !947, size: 32, offset: 1792)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !348, file: !42, line: 954, baseType: !947, size: 32, offset: 1824)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !338, file: !299, line: 174, baseType: !344, size: 64, offset: 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !338, file: !299, line: 176, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!258, !347, !225, !337, !1019}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !326, file: !299, line: 90, baseType: !321, size: 64, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !326, file: !299, line: 91, baseType: !3212, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !289, file: !217, line: 143, baseType: !3214, size: 64, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!3217, !225}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3220)
!3220 = !{!3221, !3222, !3226, !3230, !3236, !3240}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3219, file: !59, line: 40, baseType: !58, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3219, file: !59, line: 41, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!485}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3219, file: !59, line: 42, baseType: !3227, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!191}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3219, file: !59, line: 43, baseType: !3231, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!2147, !3234}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3219, file: !59, line: 44, baseType: !3237, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!2147}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3219, file: !59, line: 45, baseType: !463, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !289, file: !217, line: 144, baseType: !3242, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!2147, !225}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !289, file: !217, line: 145, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !225, !3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !216, file: !217, line: 70, baseType: !3252, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !614, line: 123, size: 1024, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3383, !3384, !3385, !3386, !3387}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3253, file: !614, line: 124, baseType: !745, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3253, file: !614, line: 125, baseType: !745, size: 32, offset: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3253, file: !614, line: 135, baseType: !3252, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3253, file: !614, line: 136, baseType: !220, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3253, file: !614, line: 138, baseType: !758, size: 192, align: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3253, file: !614, line: 140, baseType: !2147, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3253, file: !614, line: 141, baseType: !5, size: 32, offset: 448)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3253, file: !614, line: 142, baseType: !3263, size: 256, offset: 512)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3253, file: !614, line: 142, size: 256, elements: !3264)
!3264 = !{!3265, !3311, !3315}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3263, file: !614, line: 143, baseType: !3266, size: 192)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !614, line: 91, size: 192, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3266, file: !614, line: 92, baseType: !190, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3266, file: !614, line: 94, baseType: !754, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3266, file: !614, line: 100, baseType: !3271, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !614, line: 180, size: 704, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3283, !3284, !3285, !3309, !3310}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3272, file: !614, line: 182, baseType: !3252, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !614, line: 183, baseType: !5, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3272, file: !614, line: 186, baseType: !3277, size: 192, offset: 128)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3278, line: 19, size: 192, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3277, file: !3278, line: 20, baseType: !737, size: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3277, file: !3278, line: 21, baseType: !5, size: 32, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3277, file: !3278, line: 22, baseType: !5, size: 32, offset: 160)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3272, file: !614, line: 187, baseType: !410, size: 32, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3272, file: !614, line: 188, baseType: !410, size: 32, offset: 352)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3272, file: !614, line: 189, baseType: !3286, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !614, line: 168, size: 320, elements: !3288)
!3288 = !{!3289, !3293, !3297, !3301, !3305}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3287, file: !614, line: 169, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!258, !709, !3271}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3287, file: !614, line: 171, baseType: !3294, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!258, !3252, !220, !314}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3287, file: !614, line: 173, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!258, !3252}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3287, file: !614, line: 174, baseType: !3302, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!258, !3252, !3252, !220}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3287, file: !614, line: 176, baseType: !3306, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!258, !709, !3252, !3271}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3272, file: !614, line: 192, baseType: !195, size: 128, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3272, file: !614, line: 194, baseType: !1502, size: 128, offset: 576)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3263, file: !614, line: 144, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !614, line: 103, size: 64, elements: !3313)
!3313 = !{!3314}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3312, file: !614, line: 104, baseType: !3252, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3263, file: !614, line: 145, baseType: !3316, size: 256)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !614, line: 107, size: 256, elements: !3317)
!3317 = !{!3318, !3378, !3381, !3382}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3316, file: !614, line: 108, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !614, line: 217, size: 768, elements: !3322)
!3322 = !{!3323, !3343, !3347, !3351, !3355, !3359, !3363, !3367, !3368, !3369, !3370, !3374}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3321, file: !614, line: 222, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!258, !3327}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !614, line: 197, size: 1088, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3328, file: !614, line: 199, baseType: !3252, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3328, file: !614, line: 200, baseType: !347, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3328, file: !614, line: 201, baseType: !709, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3328, file: !614, line: 202, baseType: !191, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3328, file: !614, line: 205, baseType: !1211, size: 192, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3328, file: !614, line: 206, baseType: !1211, size: 192, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3328, file: !614, line: 207, baseType: !258, size: 32, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3328, file: !614, line: 208, baseType: !195, size: 128, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3328, file: !614, line: 209, baseType: !274, size: 64, offset: 832)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3328, file: !614, line: 211, baseType: !186, size: 64, offset: 896)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3328, file: !614, line: 212, baseType: !485, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3328, file: !614, line: 213, baseType: !485, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3328, file: !614, line: 214, baseType: !1047, size: 64, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3321, file: !614, line: 223, baseType: !3344, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{null, !3327}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3321, file: !614, line: 236, baseType: !3348, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!258, !709, !191}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3321, file: !614, line: 238, baseType: !3352, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!191, !709, !2896}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3321, file: !614, line: 239, baseType: !3356, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!191, !709, !191, !2896}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3321, file: !614, line: 240, baseType: !3360, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !709, !191}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3321, file: !614, line: 242, baseType: !3364, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!305, !3327, !274, !186, !526}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3321, file: !614, line: 252, baseType: !186, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3321, file: !614, line: 259, baseType: !485, size: 8, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3321, file: !614, line: 260, baseType: !3364, size: 64, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3321, file: !614, line: 263, baseType: !3371, size: 64, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!2925, !3327, !2927}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3321, file: !614, line: 266, baseType: !3375, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!258, !3327, !1019}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3316, file: !614, line: 109, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !614, line: 31, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3316, file: !614, line: 110, baseType: !526, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3316, file: !614, line: 111, baseType: !3252, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3253, file: !614, line: 148, baseType: !191, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3253, file: !614, line: 154, baseType: !416, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3253, file: !614, line: 156, baseType: !315, size: 16, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3253, file: !614, line: 157, baseType: !314, size: 16, offset: 912)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3253, file: !614, line: 158, baseType: !3388, size: 64, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !614, line: 32, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !216, file: !217, line: 71, baseType: !3391, size: 32, offset: 448)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3392, line: 19, size: 32, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3393 = !{!3394}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3391, file: !3392, line: 20, baseType: !1251, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !216, file: !217, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !216, file: !217, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !216, file: !217, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !216, file: !217, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !216, file: !217, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !71, line: 463, baseType: !3401, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !213, file: !71, line: 465, baseType: !3403, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !213, file: !71, line: 467, baseType: !220, size: 64, offset: 640)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !71, line: 468, baseType: !3407, size: 64, offset: 704)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3409)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3417, !3422, !3426}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3409, file: !71, line: 88, baseType: !220, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3409, file: !71, line: 89, baseType: !323, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3409, file: !71, line: 90, baseType: !3414, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!258, !3401, !269}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3409, file: !71, line: 91, baseType: !3418, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!274, !3401, !3421, !3249, !3250}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3409, file: !71, line: 93, baseType: !3423, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !3401}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3409, file: !71, line: 95, baseType: !3427, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3430)
!3430 = !{!3431, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3429, file: !78, line: 279, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!258, !3401}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3429, file: !78, line: 280, baseType: !3423, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3429, file: !78, line: 281, baseType: !3432, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3429, file: !78, line: 282, baseType: !3432, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3429, file: !78, line: 283, baseType: !3432, size: 64, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3429, file: !78, line: 284, baseType: !3432, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3429, file: !78, line: 285, baseType: !3432, size: 64, offset: 384)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3429, file: !78, line: 286, baseType: !3432, size: 64, offset: 448)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3429, file: !78, line: 287, baseType: !3432, size: 64, offset: 512)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3429, file: !78, line: 288, baseType: !3432, size: 64, offset: 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3429, file: !78, line: 289, baseType: !3432, size: 64, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3429, file: !78, line: 290, baseType: !3432, size: 64, offset: 704)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3429, file: !78, line: 291, baseType: !3432, size: 64, offset: 768)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3429, file: !78, line: 292, baseType: !3432, size: 64, offset: 832)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3429, file: !78, line: 293, baseType: !3432, size: 64, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3429, file: !78, line: 294, baseType: !3432, size: 64, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3429, file: !78, line: 295, baseType: !3432, size: 64, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3429, file: !78, line: 296, baseType: !3432, size: 64, offset: 1088)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3429, file: !78, line: 297, baseType: !3432, size: 64, offset: 1152)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3429, file: !78, line: 298, baseType: !3432, size: 64, offset: 1216)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3429, file: !78, line: 299, baseType: !3432, size: 64, offset: 1280)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3429, file: !78, line: 300, baseType: !3432, size: 64, offset: 1344)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3429, file: !78, line: 301, baseType: !3432, size: 64, offset: 1408)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !213, file: !71, line: 470, baseType: !3458, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3460, line: 82, size: 1408, elements: !3461)
!3460 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467, !3468, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3543, !3546, !3547}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3459, file: !3460, line: 83, baseType: !220, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3459, file: !3460, line: 84, baseType: !220, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3459, file: !3460, line: 85, baseType: !3401, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3459, file: !3460, line: 86, baseType: !323, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3459, file: !3460, line: 87, baseType: !323, size: 64, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3459, file: !3460, line: 88, baseType: !323, size: 64, offset: 320)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3459, file: !3460, line: 90, baseType: !3469, size: 64, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!258, !3401, !3472}
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3494, !3507, !3508, !3509, !3510, !3511, !3519, !3520, !3521, !3522, !3523, !3524}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !65, line: 96, baseType: !220, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3473, file: !65, line: 97, baseType: !3458, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3473, file: !65, line: 99, baseType: !628, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3473, file: !65, line: 100, baseType: !220, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3473, file: !65, line: 102, baseType: !485, size: 8, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3473, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3473, file: !65, line: 105, baseType: !3482, size: 64, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3485, line: 262, size: 1600, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !{!3487, !3488, !3489, !3493}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3484, file: !3485, line: 263, baseType: !2720, size: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3484, file: !3485, line: 264, baseType: !2720, size: 256, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3484, file: !3485, line: 265, baseType: !3490, size: 1024, offset: 512)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1024, elements: !3491)
!3491 = !{!3492}
!3492 = !DISubrange(count: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3484, file: !3485, line: 266, baseType: !2147, size: 64, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3473, file: !65, line: 106, baseType: !3495, size: 64, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3485, line: 210, size: 256, elements: !3498)
!3498 = !{!3499, !3503, !3505, !3506}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3497, file: !3485, line: 211, baseType: !3500, size: 72)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 72, elements: !3501)
!3501 = !{!3502}
!3502 = !DISubrange(count: 9)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3497, file: !3485, line: 212, baseType: !3504, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3485, line: 14, baseType: !190)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3497, file: !3485, line: 213, baseType: !412, size: 32, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3497, file: !3485, line: 214, baseType: !412, size: 32, offset: 224)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3473, file: !65, line: 108, baseType: !3432, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3473, file: !65, line: 109, baseType: !3423, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3473, file: !65, line: 110, baseType: !3432, size: 64, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3473, file: !65, line: 111, baseType: !3423, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3473, file: !65, line: 112, baseType: !3512, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!258, !3401, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3517)
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3516, file: !78, line: 51, baseType: !258, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3473, file: !65, line: 113, baseType: !3432, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3473, file: !65, line: 114, baseType: !323, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3473, file: !65, line: 115, baseType: !323, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3473, file: !65, line: 117, baseType: !3427, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3473, file: !65, line: 118, baseType: !3423, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3473, file: !65, line: 120, baseType: !3525, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
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
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3459, file: !3460, line: 112, baseType: !643, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3459, file: !3460, line: 114, baseType: !485, size: 8, offset: 1344)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !213, file: !71, line: 471, baseType: !3472, size: 64, offset: 832)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !213, file: !71, line: 473, baseType: !191, size: 64, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !213, file: !71, line: 475, baseType: !191, size: 64, offset: 960)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !213, file: !71, line: 480, baseType: !1211, size: 192, offset: 1024)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !213, file: !71, line: 484, baseType: !3553, size: 576, offset: 1216)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3553, file: !71, line: 362, baseType: !195, size: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3553, file: !71, line: 363, baseType: !195, size: 128, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3553, file: !71, line: 364, baseType: !195, size: 128, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3553, file: !71, line: 365, baseType: !195, size: 128, offset: 384)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3553, file: !71, line: 366, baseType: !485, size: 8, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3553, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !213, file: !71, line: 485, baseType: !3562, size: 2304, offset: 1792)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3659, !3663}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3562, file: !78, line: 566, baseType: !3515, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3562, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3562, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3562, file: !78, line: 569, baseType: !485, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3562, file: !78, line: 570, baseType: !485, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3562, file: !78, line: 571, baseType: !485, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3562, file: !78, line: 572, baseType: !485, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3562, file: !78, line: 573, baseType: !485, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3562, file: !78, line: 574, baseType: !485, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3562, file: !78, line: 575, baseType: !485, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3562, file: !78, line: 576, baseType: !485, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3562, file: !78, line: 577, baseType: !410, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3562, file: !78, line: 578, baseType: !232, offset: 96)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3562, file: !78, line: 580, baseType: !195, size: 128, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3562, file: !78, line: 581, baseType: !1523, size: 192, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3562, file: !78, line: 582, baseType: !3580, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3582, line: 43, size: 1472, elements: !3583)
!3582 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3591, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3581, file: !3582, line: 44, baseType: !220, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3581, file: !3582, line: 45, baseType: !258, size: 32, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3581, file: !3582, line: 46, baseType: !195, size: 128, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3581, file: !3582, line: 47, baseType: !232, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3581, file: !3582, line: 48, baseType: !3589, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3581, file: !3582, line: 49, baseType: !3592, size: 320, offset: 320)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3593, line: 11, size: 320, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3594 = !{!3595, !3596, !3597, !3602}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3592, file: !3593, line: 16, baseType: !637, size: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3592, file: !3593, line: 17, baseType: !190, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3592, file: !3593, line: 18, baseType: !3598, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3592, file: !3593, line: 19, baseType: !410, size: 32, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3581, file: !3582, line: 50, baseType: !190, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3581, file: !3582, line: 51, baseType: !1321, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3581, file: !3582, line: 52, baseType: !1321, size: 64, offset: 768)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3581, file: !3582, line: 53, baseType: !1321, size: 64, offset: 832)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3581, file: !3582, line: 54, baseType: !1321, size: 64, offset: 896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3581, file: !3582, line: 55, baseType: !1321, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3581, file: !3582, line: 56, baseType: !190, size: 64, offset: 1024)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3581, file: !3582, line: 57, baseType: !190, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3581, file: !3582, line: 58, baseType: !190, size: 64, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3581, file: !3582, line: 59, baseType: !190, size: 64, offset: 1216)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3581, file: !3582, line: 60, baseType: !190, size: 64, offset: 1280)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3581, file: !3582, line: 61, baseType: !3401, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3581, file: !3582, line: 62, baseType: !485, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3581, file: !3582, line: 63, baseType: !485, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3562, file: !78, line: 583, baseType: !485, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3562, file: !78, line: 584, baseType: !485, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3562, file: !78, line: 585, baseType: !485, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3562, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3562, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3562, file: !78, line: 592, baseType: !1313, size: 512, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3562, file: !78, line: 593, baseType: !416, size: 64, offset: 1088)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3562, file: !78, line: 594, baseType: !1979, size: 256, offset: 1152)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3562, file: !78, line: 595, baseType: !1502, size: 128, offset: 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3562, file: !78, line: 596, baseType: !3589, size: 64, offset: 1536)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3562, file: !78, line: 597, baseType: !745, size: 32, offset: 1600)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3562, file: !78, line: 598, baseType: !745, size: 32, offset: 1632)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3562, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3562, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3562, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3562, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3562, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3562, file: !78, line: 604, baseType: !485, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3562, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3562, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3562, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3562, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3562, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3562, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3562, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3562, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3562, file: !78, line: 613, baseType: !258, size: 32, offset: 1792)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3562, file: !78, line: 614, baseType: !258, size: 32, offset: 1824)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3562, file: !78, line: 615, baseType: !416, size: 64, offset: 1856)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3562, file: !78, line: 616, baseType: !416, size: 64, offset: 1920)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3562, file: !78, line: 617, baseType: !416, size: 64, offset: 1984)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3562, file: !78, line: 618, baseType: !416, size: 64, offset: 2048)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3562, file: !78, line: 620, baseType: !3650, size: 64, offset: 2112)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3651, file: !78, line: 537, baseType: !232)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3651, file: !78, line: 538, baseType: !5, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3651, file: !78, line: 540, baseType: !195, size: 128, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3651, file: !78, line: 543, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3562, file: !78, line: 621, baseType: !3660, size: 64, offset: 2176)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !3401, !1465}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3562, file: !78, line: 622, baseType: !3664, size: 64, offset: 2240)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !213, file: !71, line: 486, baseType: !3667, size: 64, offset: 4096)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3676, !3677, !3678}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3668, file: !78, line: 643, baseType: !3429, size: 1472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3668, file: !78, line: 644, baseType: !3432, size: 64, offset: 1472)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3668, file: !78, line: 645, baseType: !3673, size: 64, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !3401, !485}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3668, file: !78, line: 646, baseType: !3432, size: 64, offset: 1600)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3668, file: !78, line: 647, baseType: !3423, size: 64, offset: 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3668, file: !78, line: 648, baseType: !3423, size: 64, offset: 1728)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !213, file: !71, line: 493, baseType: !3680, size: 64, offset: 4160)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !71, line: 493, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !213, file: !71, line: 499, baseType: !195, size: 128, offset: 4224)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !213, file: !71, line: 502, baseType: !3684, size: 64, offset: 4352)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !213, file: !71, line: 504, baseType: !3688, size: 64, offset: 4416)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !213, file: !71, line: 505, baseType: !416, size: 64, offset: 4480)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !213, file: !71, line: 510, baseType: !416, size: 64, offset: 4544)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !213, file: !71, line: 511, baseType: !3692, size: 64, offset: 4608)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3694)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !213, file: !71, line: 513, baseType: !3696, size: 64, offset: 4672)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3697, file: !71, line: 293, baseType: !5, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3697, file: !71, line: 294, baseType: !190, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !213, file: !71, line: 515, baseType: !195, size: 128, offset: 4736)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !213, file: !71, line: 526, baseType: !3703, offset: 4864)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3704, line: 5, elements: !246)
!3704 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !213, file: !71, line: 528, baseType: !3706, size: 64, offset: 4864)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3708, line: 14, flags: DIFlagFwdDecl)
!3708 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !213, file: !71, line: 529, baseType: !3710, size: 64, offset: 4928)
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
!3731 = !{!485, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3718, file: !3712, line: 114, baseType: !3735, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!2147, !3732, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3718, file: !3712, line: 116, baseType: !3741, size: 64, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!485, !3732, !220}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3718, file: !3712, line: 118, baseType: !3745, size: 64, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!258, !3732, !220, !5, !191, !186}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3718, file: !3712, line: 123, baseType: !3749, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!258, !3732, !220, !3752, !186}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3718, file: !3712, line: 126, baseType: !3754, size: 64, offset: 448)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!220, !3732}
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
!3769 = !{!3710, !3732, !220}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3718, file: !3712, line: 135, baseType: !3771, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!258, !3732, !220, !220, !5, !5, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3712, line: 43, size: 640, elements: !3776)
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3775, file: !3712, line: 44, baseType: !3710, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3775, file: !3712, line: 45, baseType: !5, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3775, file: !3712, line: 46, baseType: !3780, size: 512, offset: 128)
!3780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !1351)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3718, file: !3712, line: 140, baseType: !3763, size: 64, offset: 832)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3718, file: !3712, line: 143, baseType: !3759, size: 64, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3718, file: !3712, line: 145, baseType: !3721, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3718, file: !3712, line: 146, baseType: !3785, size: 64, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!258, !3732, !3788}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3712, line: 29, size: 128, elements: !3790)
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3789, file: !3712, line: 30, baseType: !5, size: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3789, file: !3712, line: 31, baseType: !5, size: 32, offset: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3789, file: !3712, line: 32, baseType: !3732, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3718, file: !3712, line: 148, baseType: !3795, size: 64, offset: 1088)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!258, !3732, !3401}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3711, file: !3712, line: 20, baseType: !3401, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !213, file: !71, line: 534, baseType: !508, size: 32, offset: 4992)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !213, file: !71, line: 535, baseType: !410, size: 32, offset: 5024)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !213, file: !71, line: 537, baseType: !232, offset: 5056)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !213, file: !71, line: 538, baseType: !195, size: 128, offset: 5056)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !213, file: !71, line: 540, baseType: !3804, size: 64, offset: 5184)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3806, line: 54, size: 960, elements: !3807)
!3806 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814, !3818, !3822, !3823, !3824, !3825, !3829, !3833, !3834}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3805, file: !3806, line: 55, baseType: !220, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3805, file: !3806, line: 56, baseType: !628, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3805, file: !3806, line: 58, baseType: !323, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3805, file: !3806, line: 59, baseType: !323, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3805, file: !3806, line: 60, baseType: !225, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3805, file: !3806, line: 62, baseType: !3414, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3805, file: !3806, line: 63, baseType: !3815, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!274, !3401, !3421}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3805, file: !3806, line: 65, baseType: !3819, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3804}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3805, file: !3806, line: 66, baseType: !3423, size: 64, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3805, file: !3806, line: 68, baseType: !3432, size: 64, offset: 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3805, file: !3806, line: 70, baseType: !3217, size: 64, offset: 640)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3805, file: !3806, line: 71, baseType: !3826, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!2147, !3401}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3805, file: !3806, line: 73, baseType: !3830, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3401, !3249, !3250}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3805, file: !3806, line: 75, baseType: !3427, size: 64, offset: 832)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3805, file: !3806, line: 77, baseType: !3544, size: 64, offset: 896)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !213, file: !71, line: 541, baseType: !323, size: 64, offset: 5248)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !213, file: !71, line: 543, baseType: !3423, size: 64, offset: 5312)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !213, file: !71, line: 544, baseType: !3838, size: 64, offset: 5376)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !213, file: !71, line: 545, baseType: !3841, size: 64, offset: 5440)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !213, file: !71, line: 547, baseType: !485, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !213, file: !71, line: 548, baseType: !485, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !213, file: !71, line: 549, baseType: !485, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !213, file: !71, line: 550, baseType: !485, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !209, file: !210, line: 161, baseType: !3848, size: 64, offset: 5568)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_controller", file: !210, line: 466, size: 11072, elements: !3850)
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3867, !3868, !3869, !3870, !3871, !3872, !3876, !3885, !3903, !3907, !3957, !3958, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !4000, !4004, !4005, !4006, !4007, !4008, !4012, !4016, !4020, !4094, !4095, !4096, !4097, !4098, !4103, !4104, !4105, !4106, !4125, !4410, !4411, !4412, !4413, !4417, !4418}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3849, file: !210, line: 467, baseType: !213, size: 5568)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3849, file: !210, line: 469, baseType: !195, size: 128, offset: 5568)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bus_num", scope: !3849, file: !210, line: 477, baseType: !1225, size: 16, offset: 5696)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "num_chipselect", scope: !3849, file: !210, line: 482, baseType: !857, size: 16, offset: 5712)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3849, file: !210, line: 487, baseType: !857, size: 16, offset: 5728)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !3849, file: !210, line: 490, baseType: !410, size: 32, offset: 5760)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth_override_bits", scope: !3849, file: !210, line: 493, baseType: !410, size: 32, offset: 5792)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word_mask", scope: !3849, file: !210, line: 496, baseType: !410, size: 32, offset: 5824)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "min_speed_hz", scope: !3849, file: !210, line: 501, baseType: !410, size: 32, offset: 5856)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed_hz", scope: !3849, file: !210, line: 502, baseType: !410, size: 32, offset: 5888)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3849, file: !210, line: 505, baseType: !857, size: 16, offset: 5920)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !3849, file: !210, line: 515, baseType: !485, size: 8, offset: 5936)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "max_transfer_size", scope: !3849, file: !210, line: 521, baseType: !3864, size: 64, offset: 5952)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!186, !208}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "max_message_size", scope: !3849, file: !210, line: 522, baseType: !3864, size: 64, offset: 6016)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "io_mutex", scope: !3849, file: !210, line: 525, baseType: !1211, size: 192, offset: 6080)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_spinlock", scope: !3849, file: !210, line: 528, baseType: !232, offset: 6272)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_mutex", scope: !3849, file: !210, line: 529, baseType: !1211, size: 192, offset: 6272)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_flag", scope: !3849, file: !210, line: 532, baseType: !485, size: 8, offset: 6464)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3849, file: !210, line: 540, baseType: !3873, size: 64, offset: 6528)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!258, !208}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs_timing", scope: !3849, file: !210, line: 550, baseType: !3877, size: 64, offset: 6592)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!258, !208, !3880, !3880, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_delay", file: !210, line: 98, size: 32, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3881, file: !210, line: 102, baseType: !857, size: 16)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !3881, file: !210, line: 103, baseType: !1373, size: 8, offset: 16)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !3849, file: !210, line: 572, baseType: !3886, size: 64, offset: 6656)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!258, !208, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_message", file: !210, line: 999, size: 832, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !3890, file: !210, line: 1000, baseType: !195, size: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !3890, file: !210, line: 1002, baseType: !208, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "is_dma_mapped", scope: !3890, file: !210, line: 1004, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3890, file: !210, line: 1018, baseType: !463, size: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3890, file: !210, line: 1019, baseType: !191, size: 64, offset: 320)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "frame_length", scope: !3890, file: !210, line: 1020, baseType: !5, size: 32, offset: 384)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3890, file: !210, line: 1021, baseType: !5, size: 32, offset: 416)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3890, file: !210, line: 1022, baseType: !258, size: 32, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3890, file: !210, line: 1028, baseType: !195, size: 128, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3890, file: !210, line: 1029, baseType: !191, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3890, file: !210, line: 1032, baseType: !195, size: 128, offset: 704)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3849, file: !210, line: 576, baseType: !3904, size: 64, offset: 6720)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !208}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma", scope: !3849, file: !210, line: 585, baseType: !3908, size: 64, offset: 6784)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!485, !3848, !208, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_transfer", file: !210, line: 926, size: 1152, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3954, !3955, !3956}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "tx_buf", scope: !3912, file: !210, line: 932, baseType: !2147, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf", scope: !3912, file: !210, line: 933, baseType: !191, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3912, file: !210, line: 934, baseType: !5, size: 32, offset: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dma", scope: !3912, file: !210, line: 936, baseType: !958, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dma", scope: !3912, file: !210, line: 937, baseType: !958, size: 64, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "tx_sg", scope: !3912, file: !210, line: 938, baseType: !3920, size: 128, offset: 320)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !3921, line: 42, size: 128, elements: !3922)
!3921 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!3922 = !{!3923, !3932, !3933}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !3920, file: !3921, line: 43, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3921, line: 11, size: 256, elements: !3926)
!3926 = !{!3927, !3928, !3929, !3930, !3931}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !3925, file: !3921, line: 12, baseType: !190, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3925, file: !3921, line: 13, baseType: !5, size: 32, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3925, file: !3921, line: 14, baseType: !5, size: 32, offset: 96)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3925, file: !3921, line: 15, baseType: !958, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3925, file: !3921, line: 17, baseType: !5, size: 32, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !3920, file: !3921, line: 44, baseType: !5, size: 32, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !3920, file: !3921, line: 45, baseType: !5, size: 32, offset: 96)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "rx_sg", scope: !3912, file: !210, line: 939, baseType: !3920, size: 128, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "cs_change", scope: !3912, file: !210, line: 941, baseType: !5, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "tx_nbits", scope: !3912, file: !210, line: 942, baseType: !5, size: 3, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "rx_nbits", scope: !3912, file: !210, line: 943, baseType: !5, size: 3, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word", scope: !3912, file: !210, line: 947, baseType: !1373, size: 8, offset: 584)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "delay_usecs", scope: !3912, file: !210, line: 948, baseType: !857, size: 16, offset: 592)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3912, file: !210, line: 949, baseType: !3881, size: 32, offset: 608)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "cs_change_delay", scope: !3912, file: !210, line: 950, baseType: !3881, size: 32, offset: 640)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "word_delay", scope: !3912, file: !210, line: 951, baseType: !3881, size: 32, offset: 672)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "speed_hz", scope: !3912, file: !210, line: 952, baseType: !410, size: 32, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "effective_speed_hz", scope: !3912, file: !210, line: 954, baseType: !410, size: 32, offset: 736)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_word_pre", scope: !3912, file: !210, line: 956, baseType: !5, size: 32, offset: 768)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_word_post", scope: !3912, file: !210, line: 957, baseType: !5, size: 32, offset: 800)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts", scope: !3912, file: !210, line: 959, baseType: !3948, size: 64, offset: 832)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !3950, line: 33, size: 256, elements: !3951)
!3950 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!3951 = !{!3952, !3953}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !3949, file: !3950, line: 34, baseType: !530, size: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !3949, file: !3950, line: 35, baseType: !530, size: 128, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "timestamped", scope: !3912, file: !210, line: 961, baseType: !485, size: 8, offset: 896)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_list", scope: !3912, file: !210, line: 963, baseType: !195, size: 128, offset: 960)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3912, file: !210, line: 966, baseType: !857, size: 16, offset: 1088)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !3849, file: !210, line: 595, baseType: !485, size: 8, offset: 6848)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !3849, file: !210, line: 596, baseType: !3959, size: 64, offset: 6912)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !3961, line: 89, size: 448, elements: !3962)
!3961 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3960, file: !3961, line: 90, baseType: !5, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3960, file: !3961, line: 91, baseType: !778, offset: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3960, file: !3961, line: 92, baseType: !195, size: 128, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !3960, file: !3961, line: 93, baseType: !195, size: 128, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3960, file: !3961, line: 94, baseType: !1238, size: 64, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !3960, file: !3961, line: 95, baseType: !3969, size: 64, offset: 384)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !3961, line: 98, size: 320, elements: !3971)
!3971 = !{!3972, !3973, !3978, !3979}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3970, file: !3961, line: 99, baseType: !195, size: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3970, file: !3961, line: 100, baseType: !3974, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !3961, line: 82, baseType: !3975)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{null, !3969}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !3970, file: !3961, line: 101, baseType: !3959, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !3970, file: !3961, line: 103, baseType: !258, size: 32, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "pump_messages", scope: !3849, file: !210, line: 597, baseType: !3970, size: 320, offset: 6976)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !3849, file: !210, line: 598, baseType: !232, offset: 7296)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3849, file: !210, line: 599, baseType: !195, size: 128, offset: 7296)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg", scope: !3849, file: !210, line: 600, baseType: !3889, size: 64, offset: 7424)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "idling", scope: !3849, file: !210, line: 601, baseType: !485, size: 8, offset: 7488)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3849, file: !210, line: 602, baseType: !485, size: 8, offset: 7496)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3849, file: !210, line: 603, baseType: !485, size: 8, offset: 7504)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3849, file: !210, line: 604, baseType: !485, size: 8, offset: 7512)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "auto_runtime_pm", scope: !3849, file: !210, line: 605, baseType: !485, size: 8, offset: 7520)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg_prepared", scope: !3849, file: !210, line: 606, baseType: !485, size: 8, offset: 7528)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg_mapped", scope: !3849, file: !210, line: 607, baseType: !485, size: 8, offset: 7536)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "last_cs_enable", scope: !3849, file: !210, line: 608, baseType: !485, size: 8, offset: 7544)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "last_cs_mode_high", scope: !3849, file: !210, line: 609, baseType: !485, size: 8, offset: 7552)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "fallback", scope: !3849, file: !210, line: 610, baseType: !485, size: 8, offset: 7560)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_completion", scope: !3849, file: !210, line: 611, baseType: !1523, size: 192, offset: 7616)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "max_dma_len", scope: !3849, file: !210, line: 612, baseType: !186, size: 64, offset: 7808)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_transfer_hardware", scope: !3849, file: !210, line: 614, baseType: !3997, size: 64, offset: 7872)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!258, !3848}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_one_message", scope: !3849, file: !210, line: 615, baseType: !4001, size: 64, offset: 7936)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!258, !3848, !3889}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_transfer_hardware", scope: !3849, file: !210, line: 617, baseType: !3997, size: 64, offset: 8000)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_message", scope: !3849, file: !210, line: 618, baseType: !4001, size: 64, offset: 8064)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_message", scope: !3849, file: !210, line: 620, baseType: !4001, size: 64, offset: 8128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "slave_abort", scope: !3849, file: !210, line: 622, baseType: !3997, size: 64, offset: 8192)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs", scope: !3849, file: !210, line: 628, baseType: !4009, size: 64, offset: 8256)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !208, !485}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_one", scope: !3849, file: !210, line: 629, baseType: !4013, size: 64, offset: 8320)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!258, !3848, !208, !3911}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "handle_err", scope: !3849, file: !210, line: 631, baseType: !4017, size: 64, offset: 8384)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !3848, !3889}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mem_ops", scope: !3849, file: !210, line: 635, baseType: !4021, size: 64, offset: 8448)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_controller_mem_ops", file: !92, line: 264, size: 512, elements: !4024)
!4024 = !{!4025, !4064, !4070, !4074, !4078, !4082, !4086, !4090}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_op_size", scope: !4023, file: !92, line: 265, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!258, !204, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_op", file: !92, line: 98, size: 448, elements: !4031)
!4031 = !{!4032, !4039, !4046, !4052}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4030, file: !92, line: 104, baseType: !4033, size: 48)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4030, file: !92, line: 99, size: 48, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4033, file: !92, line: 100, baseType: !1373, size: 8)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4033, file: !92, line: 101, baseType: !1373, size: 8, offset: 8)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4033, file: !92, line: 102, baseType: !1373, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4033, file: !92, line: 103, baseType: !857, size: 16, offset: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4030, file: !92, line: 111, baseType: !4040, size: 128, offset: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4030, file: !92, line: 106, size: 128, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4040, file: !92, line: 107, baseType: !1373, size: 8)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4040, file: !92, line: 108, baseType: !1373, size: 8, offset: 8)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4040, file: !92, line: 109, baseType: !1373, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4040, file: !92, line: 110, baseType: !416, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !4030, file: !92, line: 117, baseType: !4047, size: 24, offset: 192)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4030, file: !92, line: 113, size: 24, elements: !4048)
!4048 = !{!4049, !4050, !4051}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4047, file: !92, line: 114, baseType: !1373, size: 8)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4047, file: !92, line: 115, baseType: !1373, size: 8, offset: 8)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4047, file: !92, line: 116, baseType: !1373, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4030, file: !92, line: 128, baseType: !4053, size: 192, offset: 256)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4030, file: !92, line: 119, size: 192, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4058, !4059}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4053, file: !92, line: 120, baseType: !1373, size: 8)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4053, file: !92, line: 121, baseType: !1373, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4053, file: !92, line: 122, baseType: !91, size: 32, offset: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4053, file: !92, line: 123, baseType: !5, size: 32, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4053, file: !92, line: 127, baseType: !4060, size: 64, offset: 128)
!4060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !92, line: 124, size: 64, elements: !4061)
!4061 = !{!4062, !4063}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4060, file: !92, line: 125, baseType: !191, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4060, file: !92, line: 126, baseType: !2147, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "supports_op", scope: !4023, file: !92, line: 266, baseType: !4065, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!485, !204, !4068}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4030)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !4023, file: !92, line: 268, baseType: !4071, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!258, !204, !4068}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4023, file: !92, line: 270, baseType: !4075, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!220, !204}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_create", scope: !4023, file: !92, line: 271, baseType: !4079, size: 64, offset: 256)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!258, !200}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_destroy", scope: !4023, file: !92, line: 272, baseType: !4083, size: 64, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !200}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_read", scope: !4023, file: !92, line: 273, baseType: !4087, size: 64, offset: 384)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!305, !200, !416, !186, !191}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_write", scope: !4023, file: !92, line: 275, baseType: !4091, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!305, !200, !416, !186, !2147}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "cs_setup", scope: !3849, file: !210, line: 638, baseType: !3881, size: 32, offset: 8512)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cs_hold", scope: !3849, file: !210, line: 639, baseType: !3881, size: 32, offset: 8544)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "cs_inactive", scope: !3849, file: !210, line: 640, baseType: !3881, size: 32, offset: 8576)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpios", scope: !3849, file: !210, line: 643, baseType: !703, size: 64, offset: 8640)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpiods", scope: !3849, file: !210, line: 644, baseType: !4099, size: 64, offset: 8704)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4102, line: 19, flags: DIFlagFwdDecl)
!4102 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "use_gpio_descriptors", scope: !3849, file: !210, line: 645, baseType: !485, size: 8, offset: 8768)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "unused_native_cs", scope: !3849, file: !210, line: 646, baseType: !1373, size: 8, offset: 8776)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "max_native_cs", scope: !3849, file: !210, line: 647, baseType: !1373, size: 8, offset: 8784)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !3849, file: !210, line: 650, baseType: !4107, size: 1792, offset: 8832)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_statistics", file: !210, line: 56, size: 1792, elements: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4124}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4107, file: !210, line: 57, baseType: !232)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !4107, file: !210, line: 59, baseType: !190, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4107, file: !210, line: 60, baseType: !190, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4107, file: !210, line: 61, baseType: !190, size: 64, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !4107, file: !210, line: 62, baseType: !190, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "spi_sync", scope: !4107, file: !210, line: 64, baseType: !190, size: 64, offset: 256)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "spi_sync_immediate", scope: !4107, file: !210, line: 65, baseType: !190, size: 64, offset: 320)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "spi_async", scope: !4107, file: !210, line: 66, baseType: !190, size: 64, offset: 384)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4107, file: !210, line: 68, baseType: !418, size: 64, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_rx", scope: !4107, file: !210, line: 69, baseType: !418, size: 64, offset: 512)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_tx", scope: !4107, file: !210, line: 70, baseType: !418, size: 64, offset: 576)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_bytes_histo", scope: !4107, file: !210, line: 73, baseType: !4121, size: 1088, offset: 640)
!4121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 1088, elements: !4122)
!4122 = !{!4123}
!4123 = !DISubrange(count: 17)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "transfers_split_maxsize", scope: !4107, file: !210, line: 75, baseType: !190, size: 64, offset: 1728)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dma_tx", scope: !3849, file: !210, line: 653, baseType: !4126, size: 64, offset: 10624)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !98, line: 329, size: 832, elements: !4128)
!4128 = !{!4129, !4378, !4379, !4380, !4381, !4382, !4389, !4390, !4391, !4397, !4398, !4399, !4408, !4409}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4127, file: !98, line: 330, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_device", file: !98, line: 844, size: 3072, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4138, !4155, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4187, !4191, !4256, !4261, !4266, !4270, !4274, !4278, !4282, !4286, !4290, !4294, !4318, !4322, !4340, !4358, !4359, !4360, !4361, !4362, !4373, !4374}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4131, file: !98, line: 845, baseType: !3391, size: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "chancnt", scope: !4131, file: !98, line: 846, baseType: !5, size: 32, offset: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "privatecnt", scope: !4131, file: !98, line: 847, baseType: !5, size: 32, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !4131, file: !98, line: 848, baseType: !195, size: 128, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "global_node", scope: !4131, file: !98, line: 849, baseType: !195, size: 128, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4131, file: !98, line: 850, baseType: !4139, size: 192, offset: 384)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_filter", file: !98, line: 762, size: 192, elements: !4140)
!4140 = !{!4141, !4146, !4147}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4139, file: !98, line: 763, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_filter_fn", file: !98, line: 529, baseType: !4143)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!485, !4126, !191}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "mapcnt", scope: !4139, file: !98, line: 764, baseType: !258, size: 32, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4139, file: !98, line: 765, baseType: !4148, size: 64, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4150)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_map", file: !98, line: 749, size: 192, elements: !4151)
!4151 = !{!4152, !4153, !4154}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !4150, file: !98, line: 750, baseType: !220, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !4150, file: !98, line: 751, baseType: !220, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4150, file: !98, line: 752, baseType: !191, size: 64, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "cap_mask", scope: !4131, file: !98, line: 851, baseType: !4156, size: 64, offset: 576)
!4156 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cap_mask_t", file: !98, line: 230, baseType: !4157)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 230, size: 64, elements: !4158)
!4158 = !{!4159}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4157, file: !98, line: 230, baseType: !1391, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_modes", scope: !4131, file: !98, line: 852, baseType: !97, size: 32, offset: 640)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "max_xor", scope: !4131, file: !98, line: 853, baseType: !315, size: 16, offset: 672)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "max_pq", scope: !4131, file: !98, line: 854, baseType: !315, size: 16, offset: 688)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "copy_align", scope: !4131, file: !98, line: 855, baseType: !103, size: 32, offset: 704)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "xor_align", scope: !4131, file: !98, line: 856, baseType: !103, size: 32, offset: 736)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "pq_align", scope: !4131, file: !98, line: 857, baseType: !103, size: 32, offset: 768)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "fill_align", scope: !4131, file: !98, line: 858, baseType: !103, size: 32, offset: 800)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4131, file: !98, line: 861, baseType: !258, size: 32, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4131, file: !98, line: 862, baseType: !3401, size: 64, offset: 896)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4131, file: !98, line: 863, baseType: !628, size: 64, offset: 960)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "chan_ida", scope: !4131, file: !98, line: 864, baseType: !4171, size: 128, offset: 1024)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3278, line: 244, size: 128, elements: !4172)
!4172 = !{!4173}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4171, file: !3278, line: 245, baseType: !737, size: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "chan_mutex", scope: !4131, file: !98, line: 865, baseType: !1211, size: 192, offset: 1152)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !4131, file: !98, line: 867, baseType: !410, size: 32, offset: 1344)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !4131, file: !98, line: 868, baseType: !410, size: 32, offset: 1376)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !4131, file: !98, line: 869, baseType: !410, size: 32, offset: 1408)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !4131, file: !98, line: 870, baseType: !410, size: 32, offset: 1440)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !4131, file: !98, line: 871, baseType: !410, size: 32, offset: 1472)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !4131, file: !98, line: 872, baseType: !410, size: 32, offset: 1504)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !4131, file: !98, line: 873, baseType: !485, size: 8, offset: 1536)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !4131, file: !98, line: 874, baseType: !112, size: 32, offset: 1568)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "device_alloc_chan_resources", scope: !4131, file: !98, line: 876, baseType: !4184, size: 64, offset: 1600)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!258, !4126}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "device_free_chan_resources", scope: !4131, file: !98, line: 877, baseType: !4188, size: 64, offset: 1664)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{null, !4126}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memcpy", scope: !4131, file: !98, line: 879, baseType: !4192, size: 64, offset: 1728)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!4195, !4126, !958, !958, !186, !190}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_async_tx_descriptor", file: !98, line: 598, size: 704, elements: !4197)
!4197 = !{!4198, !4200, !4201, !4202, !4203, !4207, !4211, !4213, !4224, !4225, !4238, !4239}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !4196, file: !98, line: 599, baseType: !4199, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cookie_t", file: !98, line: 22, baseType: !1465)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4196, file: !98, line: 600, baseType: !117, size: 32, offset: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4196, file: !98, line: 601, baseType: !958, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4196, file: !98, line: 602, baseType: !4126, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "tx_submit", scope: !4196, file: !98, line: 603, baseType: !4204, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!4199, !4195}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "desc_free", scope: !4196, file: !98, line: 604, baseType: !4208, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!258, !4195}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4196, file: !98, line: 605, baseType: !4212, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback", file: !98, line: 531, baseType: !463)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !4196, file: !98, line: 606, baseType: !4214, size: 64, offset: 384)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback_result", file: !98, line: 545, baseType: !4215)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !191, !4218}
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4220)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_result", file: !98, line: 540, size: 64, elements: !4221)
!4221 = !{!4222, !4223}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4220, file: !98, line: 541, baseType: !129, size: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !4220, file: !98, line: 542, baseType: !410, size: 32, offset: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "callback_param", scope: !4196, file: !98, line: 607, baseType: !191, size: 64, offset: 448)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4196, file: !98, line: 608, baseType: !4226, size: 64, offset: 512)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_unmap_data", file: !98, line: 548, size: 256, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "map_cnt", scope: !4227, file: !98, line: 552, baseType: !1373, size: 8)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "to_cnt", scope: !4227, file: !98, line: 554, baseType: !1373, size: 8, offset: 8)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "from_cnt", scope: !4227, file: !98, line: 555, baseType: !1373, size: 8, offset: 16)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "bidi_cnt", scope: !4227, file: !98, line: 556, baseType: !1373, size: 8, offset: 24)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4227, file: !98, line: 557, baseType: !3401, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4227, file: !98, line: 558, baseType: !3391, size: 32, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4227, file: !98, line: 559, baseType: !186, size: 64, offset: 192)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4227, file: !98, line: 560, baseType: !4237, offset: 256)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, elements: !2351)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_mode", scope: !4196, file: !98, line: 609, baseType: !97, size: 32, offset: 576)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_ops", scope: !4196, file: !98, line: 610, baseType: !4240, size: 64, offset: 640)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_descriptor_metadata_ops", file: !98, line: 565, size: 192, elements: !4242)
!4242 = !{!4243, !4247, !4252}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4241, file: !98, line: 566, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!258, !4195, !191, !186}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "get_ptr", scope: !4241, file: !98, line: 569, baseType: !4248, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!191, !4195, !4251, !4251}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "set_len", scope: !4241, file: !98, line: 571, baseType: !4253, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!258, !4195, !186}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor", scope: !4131, file: !98, line: 882, baseType: !4257, size: 64, offset: 1792)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!4195, !4126, !958, !4260, !5, !186, !190}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor_val", scope: !4131, file: !98, line: 885, baseType: !4262, size: 64, offset: 1856)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!4195, !4126, !4260, !5, !186, !4265, !190}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq", scope: !4131, file: !98, line: 888, baseType: !4267, size: 64, offset: 1920)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!4195, !4126, !4260, !4260, !5, !420, !186, !190}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq_val", scope: !4131, file: !98, line: 892, baseType: !4271, size: 64, offset: 1984)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!4195, !4126, !4260, !4260, !5, !420, !186, !4265, !190}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset", scope: !4131, file: !98, line: 896, baseType: !4275, size: 64, offset: 2048)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!4195, !4126, !958, !258, !186, !190}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset_sg", scope: !4131, file: !98, line: 899, baseType: !4279, size: 64, offset: 2112)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!4195, !4126, !3924, !5, !258, !190}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_interrupt", scope: !4131, file: !98, line: 902, baseType: !4283, size: 64, offset: 2176)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!4195, !4126, !190}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_slave_sg", scope: !4131, file: !98, line: 905, baseType: !4287, size: 64, offset: 2240)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!4195, !4126, !3924, !5, !139, !190, !191}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_cyclic", scope: !4131, file: !98, line: 909, baseType: !4291, size: 64, offset: 2304)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!4195, !4126, !958, !186, !186, !139, !190}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_interleaved_dma", scope: !4131, file: !98, line: 913, baseType: !4295, size: 64, offset: 2368)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!4195, !4126, !4298, !190}
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_interleaved_template", file: !98, line: 150, size: 320, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "src_start", scope: !4299, file: !98, line: 151, baseType: !958, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dst_start", scope: !4299, file: !98, line: 152, baseType: !958, size: 64, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4299, file: !98, line: 153, baseType: !139, size: 32, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "src_inc", scope: !4299, file: !98, line: 154, baseType: !485, size: 8, offset: 160)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dst_inc", scope: !4299, file: !98, line: 155, baseType: !485, size: 8, offset: 168)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "src_sgl", scope: !4299, file: !98, line: 156, baseType: !485, size: 8, offset: 176)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dst_sgl", scope: !4299, file: !98, line: 157, baseType: !485, size: 8, offset: 184)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "numf", scope: !4299, file: !98, line: 158, baseType: !186, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !4299, file: !98, line: 159, baseType: !186, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4299, file: !98, line: 160, baseType: !4311, offset: 320)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4312, elements: !2351)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_chunk", file: !98, line: 125, size: 256, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4317}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4312, file: !98, line: 126, baseType: !186, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "icg", scope: !4312, file: !98, line: 127, baseType: !186, size: 64, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "dst_icg", scope: !4312, file: !98, line: 128, baseType: !186, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "src_icg", scope: !4312, file: !98, line: 129, baseType: !186, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_imm_data", scope: !4131, file: !98, line: 916, baseType: !4319, size: 64, offset: 2432)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!4195, !4126, !958, !416, !190}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !4131, file: !98, line: 920, baseType: !4323, size: 64, offset: 2496)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{null, !4126, !4326}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_caps", file: !98, line: 497, size: 288, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !4327, file: !98, line: 498, baseType: !410, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !4327, file: !98, line: 499, baseType: !410, size: 32, offset: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !4327, file: !98, line: 500, baseType: !410, size: 32, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !4327, file: !98, line: 501, baseType: !410, size: 32, offset: 96)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !4327, file: !98, line: 502, baseType: !410, size: 32, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !4327, file: !98, line: 503, baseType: !410, size: 32, offset: 160)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_pause", scope: !4327, file: !98, line: 504, baseType: !485, size: 8, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_resume", scope: !4327, file: !98, line: 505, baseType: !485, size: 8, offset: 200)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_terminate", scope: !4327, file: !98, line: 506, baseType: !485, size: 8, offset: 208)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !4327, file: !98, line: 507, baseType: !112, size: 32, offset: 224)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !4327, file: !98, line: 508, baseType: !485, size: 8, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "device_config", scope: !4131, file: !98, line: 922, baseType: !4341, size: 64, offset: 2560)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!258, !4126, !4344}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_config", file: !98, line: 434, size: 448, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4345, file: !98, line: 435, baseType: !139, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !4345, file: !98, line: 436, baseType: !2145, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !4345, file: !98, line: 437, baseType: !2145, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_width", scope: !4345, file: !98, line: 438, baseType: !146, size: 32, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_width", scope: !4345, file: !98, line: 439, baseType: !146, size: 32, offset: 224)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "src_maxburst", scope: !4345, file: !98, line: 440, baseType: !410, size: 32, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "dst_maxburst", scope: !4345, file: !98, line: 441, baseType: !410, size: 32, offset: 288)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "src_port_window_size", scope: !4345, file: !98, line: 442, baseType: !410, size: 32, offset: 320)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port_window_size", scope: !4345, file: !98, line: 443, baseType: !410, size: 32, offset: 352)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "device_fc", scope: !4345, file: !98, line: 444, baseType: !485, size: 8, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "slave_id", scope: !4345, file: !98, line: 445, baseType: !5, size: 32, offset: 416)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "device_pause", scope: !4131, file: !98, line: 924, baseType: !4184, size: 64, offset: 2624)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "device_resume", scope: !4131, file: !98, line: 925, baseType: !4184, size: 64, offset: 2688)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "device_terminate_all", scope: !4131, file: !98, line: 926, baseType: !4184, size: 64, offset: 2752)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "device_synchronize", scope: !4131, file: !98, line: 927, baseType: !4188, size: 64, offset: 2816)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "device_tx_status", scope: !4131, file: !98, line: 929, baseType: !4363, size: 64, offset: 2880)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!157, !4126, !4199, !4366}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_tx_state", file: !98, line: 721, size: 128, elements: !4368)
!4368 = !{!4369, !4370, !4371, !4372}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4367, file: !98, line: 722, baseType: !4199, size: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4367, file: !98, line: 723, baseType: !4199, size: 32, offset: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !4367, file: !98, line: 724, baseType: !410, size: 32, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "in_flight_bytes", scope: !4367, file: !98, line: 725, baseType: !410, size: 32, offset: 96)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "device_issue_pending", scope: !4131, file: !98, line: 932, baseType: !4188, size: 64, offset: 2944)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !4131, file: !98, line: 933, baseType: !4375, size: 64, offset: 3008)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !4130}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !4127, file: !98, line: 331, baseType: !3401, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !4127, file: !98, line: 332, baseType: !4199, size: 32, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "completed_cookie", scope: !4127, file: !98, line: 333, baseType: !4199, size: 32, offset: 160)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !4127, file: !98, line: 336, baseType: !258, size: 32, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4127, file: !98, line: 337, baseType: !4383, size: 64, offset: 256)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_dev", file: !98, line: 361, size: 5696, elements: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4384, file: !98, line: 362, baseType: !4126, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4384, file: !98, line: 363, baseType: !213, size: 5568, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4384, file: !98, line: 364, baseType: !258, size: 32, offset: 5632)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4127, file: !98, line: 338, baseType: !220, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !4127, file: !98, line: 343, baseType: !195, size: 128, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !4127, file: !98, line: 344, baseType: !4392, size: 64, offset: 512)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_percpu", file: !98, line: 294, size: 128, elements: !4394)
!4394 = !{!4395, !4396}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_count", scope: !4393, file: !98, line: 296, baseType: !190, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_transferred", scope: !4393, file: !98, line: 297, baseType: !190, size: 64, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !4127, file: !98, line: 345, baseType: !258, size: 32, offset: 576)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "table_count", scope: !4127, file: !98, line: 346, baseType: !258, size: 32, offset: 608)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !4127, file: !98, line: 349, baseType: !4400, size: 64, offset: 640)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_router", file: !98, line: 305, size: 128, elements: !4402)
!4402 = !{!4403, !4404}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4401, file: !98, line: 306, baseType: !3401, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "route_free", scope: !4401, file: !98, line: 307, baseType: !4405, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{null, !3401, !191}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "route_data", scope: !4127, file: !98, line: 350, baseType: !191, size: 64, offset: 704)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4127, file: !98, line: 352, baseType: !191, size: 64, offset: 768)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "dma_rx", scope: !3849, file: !210, line: 654, baseType: !4126, size: 64, offset: 10688)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_rx", scope: !3849, file: !210, line: 657, baseType: !191, size: 64, offset: 10752)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_tx", scope: !3849, file: !210, line: 658, baseType: !191, size: 64, offset: 10816)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "fw_translate_cs", scope: !3849, file: !210, line: 660, baseType: !4414, size: 64, offset: 10880)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!258, !3848, !5}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_supported", scope: !3849, file: !210, line: 666, baseType: !485, size: 8, offset: 10944)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags", scope: !3849, file: !210, line: 669, baseType: !190, size: 64, offset: 11008)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !209, file: !210, line: 162, baseType: !3848, size: 64, offset: 5632)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed_hz", scope: !209, file: !210, line: 163, baseType: !410, size: 32, offset: 5696)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !209, file: !210, line: 164, baseType: !1373, size: 8, offset: 5728)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word", scope: !209, file: !210, line: 165, baseType: !1373, size: 8, offset: 5736)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !209, file: !210, line: 166, baseType: !485, size: 8, offset: 5744)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !209, file: !210, line: 167, baseType: !410, size: 32, offset: 5760)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !209, file: !210, line: 188, baseType: !258, size: 32, offset: 5792)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "controller_state", scope: !209, file: !210, line: 189, baseType: !191, size: 64, offset: 5824)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "controller_data", scope: !209, file: !210, line: 190, baseType: !191, size: 64, offset: 5888)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "modalias", scope: !209, file: !210, line: 191, baseType: !2720, size: 256, offset: 5952)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !209, file: !210, line: 192, baseType: !220, size: 64, offset: 6208)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpio", scope: !209, file: !210, line: 193, baseType: !258, size: 32, offset: 6272)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpiod", scope: !209, file: !210, line: 194, baseType: !4100, size: 64, offset: 6336)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "word_delay", scope: !209, file: !210, line: 195, baseType: !3881, size: 32, offset: 6400)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !209, file: !210, line: 198, baseType: !4107, size: 1792, offset: 6464)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "drvpriv", scope: !205, file: !92, line: 196, baseType: !191, size: 64, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !92, line: 197, baseType: !220, size: 64, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !201, file: !92, line: 177, baseType: !4437, size: 576, offset: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_dirmap_info", file: !92, line: 152, size: 576, elements: !4438)
!4438 = !{!4439, !4440, !4441}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "op_tmpl", scope: !4437, file: !92, line: 153, baseType: !4030, size: 448)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4437, file: !92, line: 154, baseType: !416, size: 64, offset: 448)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4437, file: !92, line: 155, baseType: !416, size: 64, offset: 512)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "nodirmap", scope: !201, file: !92, line: 178, baseType: !5, size: 32, offset: 640)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !201, file: !92, line: 179, baseType: !191, size: 64, offset: 704)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_driver", file: !92, line: 295, size: 1600, elements: !4446)
!4446 = !{!4447, !4461, !4465, !4466}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "spidrv", scope: !4445, file: !92, line: 296, baseType: !4448, size: 1408)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_driver", file: !210, line: 278, size: 1408, elements: !4449)
!4449 = !{!4450, !4457, !4458, !4459, !4460}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4448, file: !210, line: 279, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_device_id", file: !3485, line: 494, size: 320, elements: !4454)
!4454 = !{!4455, !4456}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4453, file: !3485, line: 495, baseType: !2720, size: 256)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4453, file: !3485, line: 496, baseType: !3504, size: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4448, file: !210, line: 280, baseType: !3873, size: 64, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4448, file: !210, line: 281, baseType: !3873, size: 64, offset: 128)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4448, file: !210, line: 282, baseType: !3904, size: 64, offset: 192)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4448, file: !210, line: 283, baseType: !3473, size: 1152, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4445, file: !92, line: 297, baseType: !4462, size: 64, offset: 1408)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!258, !204}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4445, file: !92, line: 298, baseType: !4462, size: 64, offset: 1472)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4445, file: !92, line: 299, baseType: !4467, size: 64, offset: 1536)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{null, !204}
!4470 = !{i32 7, !"Dwarf Version", i32 4}
!4471 = !{i32 2, !"Debug Info Version", i32 3}
!4472 = !{i32 1, !"wchar_size", i32 2}
!4473 = !{i32 1, !"Code Model", i32 2}
!4474 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4475 = distinct !DISubprogram(name: "spi_controller_dma_map_mem_op_data", scope: !1, file: !1, line: 34, type: !4476, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!258, !3848, !4068, !4478}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!4479 = !DILocalVariable(name: "ctlr", arg: 1, scope: !4475, file: !1, line: 34, type: !3848)
!4480 = !DILocation(line: 34, column: 63, scope: !4475)
!4481 = !DILocalVariable(name: "op", arg: 2, scope: !4475, file: !1, line: 35, type: !4068)
!4482 = !DILocation(line: 35, column: 37, scope: !4475)
!4483 = !DILocalVariable(name: "sgt", arg: 3, scope: !4475, file: !1, line: 36, type: !4478)
!4484 = !DILocation(line: 36, column: 29, scope: !4475)
!4485 = !DILocalVariable(name: "dmadev", scope: !4475, file: !1, line: 38, type: !3401)
!4486 = !DILocation(line: 38, column: 17, scope: !4475)
!4487 = !DILocation(line: 40, column: 7, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 40, column: 6)
!4489 = !DILocation(line: 40, column: 11, scope: !4488)
!4490 = !DILocation(line: 40, column: 16, scope: !4488)
!4491 = !DILocation(line: 40, column: 6, scope: !4475)
!4492 = !DILocation(line: 41, column: 3, scope: !4488)
!4493 = !DILocation(line: 43, column: 6, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 43, column: 6)
!4495 = !DILocation(line: 43, column: 10, scope: !4494)
!4496 = !DILocation(line: 43, column: 15, scope: !4494)
!4497 = !DILocation(line: 43, column: 19, scope: !4494)
!4498 = !DILocation(line: 43, column: 39, scope: !4494)
!4499 = !DILocation(line: 43, column: 42, scope: !4494)
!4500 = !DILocation(line: 43, column: 48, scope: !4494)
!4501 = !DILocation(line: 43, column: 6, scope: !4475)
!4502 = !DILocation(line: 44, column: 12, scope: !4494)
!4503 = !DILocation(line: 44, column: 18, scope: !4494)
!4504 = !DILocation(line: 44, column: 26, scope: !4494)
!4505 = !DILocation(line: 44, column: 34, scope: !4494)
!4506 = !DILocation(line: 44, column: 10, scope: !4494)
!4507 = !DILocation(line: 44, column: 3, scope: !4494)
!4508 = !DILocation(line: 45, column: 11, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4494, file: !1, line: 45, column: 11)
!4510 = !DILocation(line: 45, column: 15, scope: !4509)
!4511 = !DILocation(line: 45, column: 20, scope: !4509)
!4512 = !DILocation(line: 45, column: 24, scope: !4509)
!4513 = !DILocation(line: 45, column: 43, scope: !4509)
!4514 = !DILocation(line: 45, column: 46, scope: !4509)
!4515 = !DILocation(line: 45, column: 52, scope: !4509)
!4516 = !DILocation(line: 45, column: 11, scope: !4494)
!4517 = !DILocation(line: 46, column: 12, scope: !4509)
!4518 = !DILocation(line: 46, column: 18, scope: !4509)
!4519 = !DILocation(line: 46, column: 26, scope: !4509)
!4520 = !DILocation(line: 46, column: 34, scope: !4509)
!4521 = !DILocation(line: 46, column: 10, scope: !4509)
!4522 = !DILocation(line: 46, column: 3, scope: !4509)
!4523 = !DILocation(line: 48, column: 12, scope: !4509)
!4524 = !DILocation(line: 48, column: 18, scope: !4509)
!4525 = !DILocation(line: 48, column: 22, scope: !4509)
!4526 = !DILocation(line: 48, column: 10, scope: !4509)
!4527 = !DILocation(line: 50, column: 7, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 50, column: 6)
!4529 = !DILocation(line: 50, column: 6, scope: !4475)
!4530 = !DILocation(line: 51, column: 3, scope: !4528)
!4531 = !DILocation(line: 53, column: 21, scope: !4475)
!4532 = !DILocation(line: 53, column: 27, scope: !4475)
!4533 = !DILocation(line: 53, column: 35, scope: !4475)
!4534 = !DILocation(line: 53, column: 40, scope: !4475)
!4535 = !DILocation(line: 53, column: 44, scope: !4475)
!4536 = !DILocation(line: 53, column: 49, scope: !4475)
!4537 = !DILocation(line: 53, column: 53, scope: !4475)
!4538 = !DILocation(line: 53, column: 57, scope: !4475)
!4539 = !DILocation(line: 53, column: 61, scope: !4475)
!4540 = !DILocation(line: 53, column: 66, scope: !4475)
!4541 = !DILocation(line: 54, column: 7, scope: !4475)
!4542 = !DILocation(line: 54, column: 11, scope: !4475)
!4543 = !DILocation(line: 54, column: 16, scope: !4475)
!4544 = !DILocation(line: 54, column: 20, scope: !4475)
!4545 = !DILocation(line: 53, column: 9, scope: !4475)
!4546 = !DILocation(line: 53, column: 2, scope: !4475)
!4547 = !DILocation(line: 56, column: 1, scope: !4475)
!4548 = distinct !DISubprogram(name: "spi_controller_dma_unmap_mem_op_data", scope: !1, file: !1, line: 80, type: !4549, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{null, !3848, !4068, !4478}
!4551 = !DILocalVariable(name: "ctlr", arg: 1, scope: !4548, file: !1, line: 80, type: !3848)
!4552 = !DILocation(line: 80, column: 66, scope: !4548)
!4553 = !DILocalVariable(name: "op", arg: 2, scope: !4548, file: !1, line: 81, type: !4068)
!4554 = !DILocation(line: 81, column: 33, scope: !4548)
!4555 = !DILocalVariable(name: "sgt", arg: 3, scope: !4548, file: !1, line: 82, type: !4478)
!4556 = !DILocation(line: 82, column: 25, scope: !4548)
!4557 = !DILocalVariable(name: "dmadev", scope: !4548, file: !1, line: 84, type: !3401)
!4558 = !DILocation(line: 84, column: 17, scope: !4548)
!4559 = !DILocation(line: 86, column: 7, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4548, file: !1, line: 86, column: 6)
!4561 = !DILocation(line: 86, column: 11, scope: !4560)
!4562 = !DILocation(line: 86, column: 16, scope: !4560)
!4563 = !DILocation(line: 86, column: 6, scope: !4548)
!4564 = !DILocation(line: 87, column: 3, scope: !4560)
!4565 = !DILocation(line: 89, column: 6, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4548, file: !1, line: 89, column: 6)
!4567 = !DILocation(line: 89, column: 10, scope: !4566)
!4568 = !DILocation(line: 89, column: 15, scope: !4566)
!4569 = !DILocation(line: 89, column: 19, scope: !4566)
!4570 = !DILocation(line: 89, column: 39, scope: !4566)
!4571 = !DILocation(line: 89, column: 42, scope: !4566)
!4572 = !DILocation(line: 89, column: 48, scope: !4566)
!4573 = !DILocation(line: 89, column: 6, scope: !4548)
!4574 = !DILocation(line: 90, column: 12, scope: !4566)
!4575 = !DILocation(line: 90, column: 18, scope: !4566)
!4576 = !DILocation(line: 90, column: 26, scope: !4566)
!4577 = !DILocation(line: 90, column: 34, scope: !4566)
!4578 = !DILocation(line: 90, column: 10, scope: !4566)
!4579 = !DILocation(line: 90, column: 3, scope: !4566)
!4580 = !DILocation(line: 91, column: 11, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4566, file: !1, line: 91, column: 11)
!4582 = !DILocation(line: 91, column: 15, scope: !4581)
!4583 = !DILocation(line: 91, column: 20, scope: !4581)
!4584 = !DILocation(line: 91, column: 24, scope: !4581)
!4585 = !DILocation(line: 91, column: 43, scope: !4581)
!4586 = !DILocation(line: 91, column: 46, scope: !4581)
!4587 = !DILocation(line: 91, column: 52, scope: !4581)
!4588 = !DILocation(line: 91, column: 11, scope: !4566)
!4589 = !DILocation(line: 92, column: 12, scope: !4581)
!4590 = !DILocation(line: 92, column: 18, scope: !4581)
!4591 = !DILocation(line: 92, column: 26, scope: !4581)
!4592 = !DILocation(line: 92, column: 34, scope: !4581)
!4593 = !DILocation(line: 92, column: 10, scope: !4581)
!4594 = !DILocation(line: 92, column: 3, scope: !4581)
!4595 = !DILocation(line: 94, column: 12, scope: !4581)
!4596 = !DILocation(line: 94, column: 18, scope: !4581)
!4597 = !DILocation(line: 94, column: 22, scope: !4581)
!4598 = !DILocation(line: 94, column: 10, scope: !4581)
!4599 = !DILocation(line: 96, column: 16, scope: !4548)
!4600 = !DILocation(line: 96, column: 22, scope: !4548)
!4601 = !DILocation(line: 96, column: 30, scope: !4548)
!4602 = !DILocation(line: 97, column: 9, scope: !4548)
!4603 = !DILocation(line: 97, column: 13, scope: !4548)
!4604 = !DILocation(line: 97, column: 18, scope: !4548)
!4605 = !DILocation(line: 97, column: 22, scope: !4548)
!4606 = !DILocation(line: 96, column: 2, scope: !4548)
!4607 = !DILocation(line: 99, column: 1, scope: !4548)
!4608 = distinct !DISubprogram(name: "spi_mem_default_supports_op", scope: !1, file: !1, line: 140, type: !4066, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!4609 = !DILocalVariable(name: "mem", arg: 1, scope: !4608, file: !1, line: 140, type: !204)
!4610 = !DILocation(line: 140, column: 50, scope: !4608)
!4611 = !DILocalVariable(name: "op", arg: 2, scope: !4608, file: !1, line: 141, type: !4068)
!4612 = !DILocation(line: 141, column: 31, scope: !4608)
!4613 = !DILocation(line: 143, column: 29, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 143, column: 6)
!4615 = !DILocation(line: 143, column: 34, scope: !4614)
!4616 = !DILocation(line: 143, column: 38, scope: !4614)
!4617 = !DILocation(line: 143, column: 42, scope: !4614)
!4618 = !DILocation(line: 143, column: 6, scope: !4614)
!4619 = !DILocation(line: 143, column: 6, scope: !4608)
!4620 = !DILocation(line: 144, column: 3, scope: !4614)
!4621 = !DILocation(line: 146, column: 6, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 146, column: 6)
!4623 = !DILocation(line: 146, column: 10, scope: !4622)
!4624 = !DILocation(line: 146, column: 15, scope: !4622)
!4625 = !DILocation(line: 146, column: 22, scope: !4622)
!4626 = !DILocation(line: 147, column: 29, scope: !4622)
!4627 = !DILocation(line: 147, column: 34, scope: !4622)
!4628 = !DILocation(line: 147, column: 38, scope: !4622)
!4629 = !DILocation(line: 147, column: 43, scope: !4622)
!4630 = !DILocation(line: 147, column: 6, scope: !4622)
!4631 = !DILocation(line: 146, column: 6, scope: !4608)
!4632 = !DILocation(line: 148, column: 3, scope: !4622)
!4633 = !DILocation(line: 150, column: 6, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 150, column: 6)
!4635 = !DILocation(line: 150, column: 10, scope: !4634)
!4636 = !DILocation(line: 150, column: 16, scope: !4634)
!4637 = !DILocation(line: 150, column: 23, scope: !4634)
!4638 = !DILocation(line: 151, column: 29, scope: !4634)
!4639 = !DILocation(line: 151, column: 34, scope: !4634)
!4640 = !DILocation(line: 151, column: 38, scope: !4634)
!4641 = !DILocation(line: 151, column: 44, scope: !4634)
!4642 = !DILocation(line: 151, column: 6, scope: !4634)
!4643 = !DILocation(line: 150, column: 6, scope: !4608)
!4644 = !DILocation(line: 152, column: 3, scope: !4634)
!4645 = !DILocation(line: 154, column: 6, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 154, column: 6)
!4647 = !DILocation(line: 154, column: 10, scope: !4646)
!4648 = !DILocation(line: 154, column: 15, scope: !4646)
!4649 = !DILocation(line: 154, column: 19, scope: !4646)
!4650 = !DILocation(line: 154, column: 38, scope: !4646)
!4651 = !DILocation(line: 155, column: 29, scope: !4646)
!4652 = !DILocation(line: 155, column: 34, scope: !4646)
!4653 = !DILocation(line: 155, column: 38, scope: !4646)
!4654 = !DILocation(line: 155, column: 43, scope: !4646)
!4655 = !DILocation(line: 156, column: 8, scope: !4646)
!4656 = !DILocation(line: 156, column: 12, scope: !4646)
!4657 = !DILocation(line: 156, column: 17, scope: !4646)
!4658 = !DILocation(line: 156, column: 21, scope: !4646)
!4659 = !DILocation(line: 155, column: 6, scope: !4646)
!4660 = !DILocation(line: 154, column: 6, scope: !4608)
!4661 = !DILocation(line: 157, column: 3, scope: !4646)
!4662 = !DILocation(line: 159, column: 6, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 159, column: 6)
!4664 = !DILocation(line: 159, column: 10, scope: !4663)
!4665 = !DILocation(line: 159, column: 14, scope: !4663)
!4666 = !DILocation(line: 159, column: 18, scope: !4663)
!4667 = !DILocation(line: 159, column: 21, scope: !4663)
!4668 = !DILocation(line: 159, column: 25, scope: !4663)
!4669 = !DILocation(line: 159, column: 30, scope: !4663)
!4670 = !DILocation(line: 159, column: 34, scope: !4663)
!4671 = !DILocation(line: 159, column: 37, scope: !4663)
!4672 = !DILocation(line: 159, column: 41, scope: !4663)
!4673 = !DILocation(line: 159, column: 47, scope: !4663)
!4674 = !DILocation(line: 159, column: 51, scope: !4663)
!4675 = !DILocation(line: 159, column: 54, scope: !4663)
!4676 = !DILocation(line: 159, column: 58, scope: !4663)
!4677 = !DILocation(line: 159, column: 63, scope: !4663)
!4678 = !DILocation(line: 159, column: 6, scope: !4608)
!4679 = !DILocation(line: 160, column: 3, scope: !4663)
!4680 = !DILocation(line: 162, column: 6, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 162, column: 6)
!4682 = !DILocation(line: 162, column: 10, scope: !4681)
!4683 = !DILocation(line: 162, column: 14, scope: !4681)
!4684 = !DILocation(line: 162, column: 21, scope: !4681)
!4685 = !DILocation(line: 162, column: 6, scope: !4608)
!4686 = !DILocation(line: 163, column: 3, scope: !4681)
!4687 = !DILocation(line: 165, column: 2, scope: !4608)
!4688 = !DILocation(line: 166, column: 1, scope: !4608)
!4689 = distinct !DISubprogram(name: "spi_check_buswidth_req", scope: !1, file: !1, line: 102, type: !4690, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!258, !204, !1373, !485}
!4692 = !DILocalVariable(name: "mem", arg: 1, scope: !4689, file: !1, line: 102, type: !204)
!4693 = !DILocation(line: 102, column: 51, scope: !4689)
!4694 = !DILocalVariable(name: "buswidth", arg: 2, scope: !4689, file: !1, line: 102, type: !1373)
!4695 = !DILocation(line: 102, column: 59, scope: !4689)
!4696 = !DILocalVariable(name: "tx", arg: 3, scope: !4689, file: !1, line: 102, type: !485)
!4697 = !DILocation(line: 102, column: 74, scope: !4689)
!4698 = !DILocalVariable(name: "mode", scope: !4689, file: !1, line: 104, type: !410)
!4699 = !DILocation(line: 104, column: 6, scope: !4689)
!4700 = !DILocation(line: 104, column: 13, scope: !4689)
!4701 = !DILocation(line: 104, column: 18, scope: !4689)
!4702 = !DILocation(line: 104, column: 23, scope: !4689)
!4703 = !DILocation(line: 106, column: 10, scope: !4689)
!4704 = !DILocation(line: 106, column: 2, scope: !4689)
!4705 = !DILocation(line: 108, column: 3, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4689, file: !1, line: 106, column: 20)
!4707 = !DILocation(line: 111, column: 8, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4706, file: !1, line: 111, column: 7)
!4709 = !DILocation(line: 111, column: 11, scope: !4708)
!4710 = !DILocation(line: 112, column: 9, scope: !4708)
!4711 = !DILocation(line: 112, column: 14, scope: !4708)
!4712 = !DILocation(line: 112, column: 61, scope: !4708)
!4713 = !DILocation(line: 113, column: 9, scope: !4708)
!4714 = !DILocation(line: 113, column: 12, scope: !4708)
!4715 = !DILocation(line: 114, column: 9, scope: !4708)
!4716 = !DILocation(line: 114, column: 14, scope: !4708)
!4717 = !DILocation(line: 111, column: 7, scope: !4706)
!4718 = !DILocation(line: 115, column: 4, scope: !4708)
!4719 = !DILocation(line: 117, column: 3, scope: !4706)
!4720 = !DILocation(line: 120, column: 8, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4706, file: !1, line: 120, column: 7)
!4722 = !DILocation(line: 120, column: 11, scope: !4721)
!4723 = !DILocation(line: 120, column: 15, scope: !4721)
!4724 = !DILocation(line: 120, column: 20, scope: !4721)
!4725 = !DILocation(line: 120, column: 53, scope: !4721)
!4726 = !DILocation(line: 121, column: 9, scope: !4721)
!4727 = !DILocation(line: 121, column: 12, scope: !4721)
!4728 = !DILocation(line: 121, column: 16, scope: !4721)
!4729 = !DILocation(line: 121, column: 21, scope: !4721)
!4730 = !DILocation(line: 120, column: 7, scope: !4706)
!4731 = !DILocation(line: 122, column: 4, scope: !4721)
!4732 = !DILocation(line: 124, column: 3, scope: !4706)
!4733 = !DILocation(line: 127, column: 8, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4706, file: !1, line: 127, column: 7)
!4735 = !DILocation(line: 127, column: 11, scope: !4734)
!4736 = !DILocation(line: 127, column: 15, scope: !4734)
!4737 = !DILocation(line: 127, column: 20, scope: !4734)
!4738 = !DILocation(line: 127, column: 37, scope: !4734)
!4739 = !DILocation(line: 128, column: 9, scope: !4734)
!4740 = !DILocation(line: 128, column: 12, scope: !4734)
!4741 = !DILocation(line: 128, column: 16, scope: !4734)
!4742 = !DILocation(line: 128, column: 21, scope: !4734)
!4743 = !DILocation(line: 127, column: 7, scope: !4706)
!4744 = !DILocation(line: 129, column: 4, scope: !4734)
!4745 = !DILocation(line: 131, column: 3, scope: !4706)
!4746 = !DILocation(line: 134, column: 3, scope: !4706)
!4747 = !DILocation(line: 137, column: 2, scope: !4689)
!4748 = !DILocation(line: 138, column: 1, scope: !4689)
!4749 = distinct !DISubprogram(name: "spi_mem_supports_op", scope: !1, file: !1, line: 222, type: !4066, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!4750 = !DILocalVariable(name: "mem", arg: 1, scope: !4749, file: !1, line: 222, type: !204)
!4751 = !DILocation(line: 222, column: 42, scope: !4749)
!4752 = !DILocalVariable(name: "op", arg: 2, scope: !4749, file: !1, line: 222, type: !4068)
!4753 = !DILocation(line: 222, column: 72, scope: !4749)
!4754 = !DILocation(line: 224, column: 23, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 224, column: 6)
!4756 = !DILocation(line: 224, column: 6, scope: !4755)
!4757 = !DILocation(line: 224, column: 6, scope: !4749)
!4758 = !DILocation(line: 225, column: 3, scope: !4755)
!4759 = !DILocation(line: 227, column: 38, scope: !4749)
!4760 = !DILocation(line: 227, column: 43, scope: !4749)
!4761 = !DILocation(line: 227, column: 9, scope: !4749)
!4762 = !DILocation(line: 227, column: 2, scope: !4749)
!4763 = !DILocation(line: 228, column: 1, scope: !4749)
!4764 = distinct !DISubprogram(name: "spi_mem_check_op", scope: !1, file: !1, line: 177, type: !4765, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!258, !4068}
!4767 = !DILocalVariable(name: "op", arg: 1, scope: !4764, file: !1, line: 177, type: !4068)
!4768 = !DILocation(line: 177, column: 54, scope: !4764)
!4769 = !DILocation(line: 179, column: 7, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4764, file: !1, line: 179, column: 6)
!4771 = !DILocation(line: 179, column: 11, scope: !4770)
!4772 = !DILocation(line: 179, column: 15, scope: !4770)
!4773 = !DILocation(line: 179, column: 24, scope: !4770)
!4774 = !DILocation(line: 179, column: 28, scope: !4770)
!4775 = !DILocation(line: 179, column: 32, scope: !4770)
!4776 = !DILocation(line: 179, column: 36, scope: !4770)
!4777 = !DILocation(line: 179, column: 6, scope: !4764)
!4778 = !DILocation(line: 180, column: 3, scope: !4770)
!4779 = !DILocation(line: 182, column: 7, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4764, file: !1, line: 182, column: 6)
!4781 = !DILocation(line: 182, column: 11, scope: !4780)
!4782 = !DILocation(line: 182, column: 16, scope: !4780)
!4783 = !DILocation(line: 182, column: 23, scope: !4780)
!4784 = !DILocation(line: 182, column: 27, scope: !4780)
!4785 = !DILocation(line: 182, column: 31, scope: !4780)
!4786 = !DILocation(line: 182, column: 36, scope: !4780)
!4787 = !DILocation(line: 182, column: 46, scope: !4780)
!4788 = !DILocation(line: 183, column: 7, scope: !4780)
!4789 = !DILocation(line: 183, column: 11, scope: !4780)
!4790 = !DILocation(line: 183, column: 17, scope: !4780)
!4791 = !DILocation(line: 183, column: 24, scope: !4780)
!4792 = !DILocation(line: 183, column: 28, scope: !4780)
!4793 = !DILocation(line: 183, column: 32, scope: !4780)
!4794 = !DILocation(line: 183, column: 38, scope: !4780)
!4795 = !DILocation(line: 183, column: 48, scope: !4780)
!4796 = !DILocation(line: 184, column: 7, scope: !4780)
!4797 = !DILocation(line: 184, column: 11, scope: !4780)
!4798 = !DILocation(line: 184, column: 16, scope: !4780)
!4799 = !DILocation(line: 184, column: 23, scope: !4780)
!4800 = !DILocation(line: 184, column: 27, scope: !4780)
!4801 = !DILocation(line: 184, column: 31, scope: !4780)
!4802 = !DILocation(line: 184, column: 36, scope: !4780)
!4803 = !DILocation(line: 182, column: 6, scope: !4764)
!4804 = !DILocation(line: 185, column: 3, scope: !4780)
!4805 = !DILocation(line: 187, column: 33, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4764, file: !1, line: 187, column: 6)
!4807 = !DILocation(line: 187, column: 37, scope: !4806)
!4808 = !DILocation(line: 187, column: 41, scope: !4806)
!4809 = !DILocation(line: 187, column: 7, scope: !4806)
!4810 = !DILocation(line: 187, column: 51, scope: !4806)
!4811 = !DILocation(line: 188, column: 33, scope: !4806)
!4812 = !DILocation(line: 188, column: 37, scope: !4806)
!4813 = !DILocation(line: 188, column: 42, scope: !4806)
!4814 = !DILocation(line: 188, column: 7, scope: !4806)
!4815 = !DILocation(line: 188, column: 52, scope: !4806)
!4816 = !DILocation(line: 189, column: 33, scope: !4806)
!4817 = !DILocation(line: 189, column: 37, scope: !4806)
!4818 = !DILocation(line: 189, column: 43, scope: !4806)
!4819 = !DILocation(line: 189, column: 7, scope: !4806)
!4820 = !DILocation(line: 189, column: 53, scope: !4806)
!4821 = !DILocation(line: 190, column: 33, scope: !4806)
!4822 = !DILocation(line: 190, column: 37, scope: !4806)
!4823 = !DILocation(line: 190, column: 42, scope: !4806)
!4824 = !DILocation(line: 190, column: 7, scope: !4806)
!4825 = !DILocation(line: 187, column: 6, scope: !4764)
!4826 = !DILocation(line: 191, column: 3, scope: !4806)
!4827 = !DILocation(line: 193, column: 2, scope: !4764)
!4828 = !DILocation(line: 194, column: 1, scope: !4764)
!4829 = distinct !DISubprogram(name: "spi_mem_internal_supports_op", scope: !1, file: !1, line: 196, type: !4066, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!4830 = !DILocalVariable(name: "mem", arg: 1, scope: !4829, file: !1, line: 196, type: !204)
!4831 = !DILocation(line: 196, column: 58, scope: !4829)
!4832 = !DILocalVariable(name: "op", arg: 2, scope: !4829, file: !1, line: 197, type: !4068)
!4833 = !DILocation(line: 197, column: 32, scope: !4829)
!4834 = !DILocalVariable(name: "ctlr", scope: !4829, file: !1, line: 199, type: !3848)
!4835 = !DILocation(line: 199, column: 25, scope: !4829)
!4836 = !DILocation(line: 199, column: 32, scope: !4829)
!4837 = !DILocation(line: 199, column: 37, scope: !4829)
!4838 = !DILocation(line: 199, column: 42, scope: !4829)
!4839 = !DILocation(line: 201, column: 6, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4829, file: !1, line: 201, column: 6)
!4841 = !DILocation(line: 201, column: 12, scope: !4840)
!4842 = !DILocation(line: 201, column: 20, scope: !4840)
!4843 = !DILocation(line: 201, column: 23, scope: !4840)
!4844 = !DILocation(line: 201, column: 29, scope: !4840)
!4845 = !DILocation(line: 201, column: 38, scope: !4840)
!4846 = !DILocation(line: 201, column: 6, scope: !4829)
!4847 = !DILocation(line: 202, column: 10, scope: !4840)
!4848 = !DILocation(line: 202, column: 16, scope: !4840)
!4849 = !DILocation(line: 202, column: 25, scope: !4840)
!4850 = !DILocation(line: 202, column: 37, scope: !4840)
!4851 = !DILocation(line: 202, column: 42, scope: !4840)
!4852 = !DILocation(line: 202, column: 3, scope: !4840)
!4853 = !DILocation(line: 204, column: 37, scope: !4829)
!4854 = !DILocation(line: 204, column: 42, scope: !4829)
!4855 = !DILocation(line: 204, column: 9, scope: !4829)
!4856 = !DILocation(line: 204, column: 2, scope: !4829)
!4857 = !DILocation(line: 205, column: 1, scope: !4829)
!4858 = distinct !DISubprogram(name: "spi_mem_exec_op", scope: !1, file: !1, line: 281, type: !4072, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!4859 = !DILocalVariable(name: "mem", arg: 1, scope: !4858, file: !1, line: 281, type: !204)
!4860 = !DILocation(line: 281, column: 37, scope: !4858)
!4861 = !DILocalVariable(name: "op", arg: 2, scope: !4858, file: !1, line: 281, type: !4068)
!4862 = !DILocation(line: 281, column: 67, scope: !4858)
!4863 = !DILocalVariable(name: "tmpbufsize", scope: !4858, file: !1, line: 283, type: !5)
!4864 = !DILocation(line: 283, column: 15, scope: !4858)
!4865 = !DILocalVariable(name: "xferpos", scope: !4858, file: !1, line: 283, type: !5)
!4866 = !DILocation(line: 283, column: 27, scope: !4858)
!4867 = !DILocalVariable(name: "totalxferlen", scope: !4858, file: !1, line: 283, type: !5)
!4868 = !DILocation(line: 283, column: 40, scope: !4858)
!4869 = !DILocalVariable(name: "ctlr", scope: !4858, file: !1, line: 284, type: !3848)
!4870 = !DILocation(line: 284, column: 25, scope: !4858)
!4871 = !DILocation(line: 284, column: 32, scope: !4858)
!4872 = !DILocation(line: 284, column: 37, scope: !4858)
!4873 = !DILocation(line: 284, column: 42, scope: !4858)
!4874 = !DILocalVariable(name: "xfers", scope: !4858, file: !1, line: 285, type: !4875)
!4875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3912, size: 4608, elements: !1193)
!4876 = !DILocation(line: 285, column: 22, scope: !4858)
!4877 = !DILocalVariable(name: "msg", scope: !4858, file: !1, line: 286, type: !3890)
!4878 = !DILocation(line: 286, column: 21, scope: !4858)
!4879 = !DILocalVariable(name: "tmpbuf", scope: !4858, file: !1, line: 287, type: !4880)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!4881 = !DILocation(line: 287, column: 6, scope: !4858)
!4882 = !DILocalVariable(name: "ret", scope: !4858, file: !1, line: 288, type: !258)
!4883 = !DILocation(line: 288, column: 6, scope: !4858)
!4884 = !DILocation(line: 290, column: 25, scope: !4858)
!4885 = !DILocation(line: 290, column: 8, scope: !4858)
!4886 = !DILocation(line: 290, column: 6, scope: !4858)
!4887 = !DILocation(line: 291, column: 6, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 291, column: 6)
!4889 = !DILocation(line: 291, column: 6, scope: !4858)
!4890 = !DILocation(line: 292, column: 10, scope: !4888)
!4891 = !DILocation(line: 292, column: 3, scope: !4888)
!4892 = !DILocation(line: 294, column: 36, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 294, column: 6)
!4894 = !DILocation(line: 294, column: 41, scope: !4893)
!4895 = !DILocation(line: 294, column: 7, scope: !4893)
!4896 = !DILocation(line: 294, column: 6, scope: !4858)
!4897 = !DILocation(line: 295, column: 3, scope: !4893)
!4898 = !DILocation(line: 297, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 297, column: 6)
!4900 = !DILocation(line: 297, column: 12, scope: !4899)
!4901 = !DILocation(line: 297, column: 20, scope: !4899)
!4902 = !DILocation(line: 297, column: 24, scope: !4899)
!4903 = !DILocation(line: 297, column: 29, scope: !4899)
!4904 = !DILocation(line: 297, column: 34, scope: !4899)
!4905 = !DILocation(line: 297, column: 6, scope: !4858)
!4906 = !DILocation(line: 298, column: 30, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 297, column: 44)
!4908 = !DILocation(line: 298, column: 9, scope: !4907)
!4909 = !DILocation(line: 298, column: 7, scope: !4907)
!4910 = !DILocation(line: 299, column: 7, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4907, file: !1, line: 299, column: 7)
!4912 = !DILocation(line: 299, column: 7, scope: !4907)
!4913 = !DILocation(line: 300, column: 11, scope: !4911)
!4914 = !DILocation(line: 300, column: 4, scope: !4911)
!4915 = !DILocation(line: 302, column: 9, scope: !4907)
!4916 = !DILocation(line: 302, column: 15, scope: !4907)
!4917 = !DILocation(line: 302, column: 24, scope: !4907)
!4918 = !DILocation(line: 302, column: 32, scope: !4907)
!4919 = !DILocation(line: 302, column: 37, scope: !4907)
!4920 = !DILocation(line: 302, column: 7, scope: !4907)
!4921 = !DILocation(line: 304, column: 22, scope: !4907)
!4922 = !DILocation(line: 304, column: 3, scope: !4907)
!4923 = !DILocation(line: 311, column: 8, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4907, file: !1, line: 311, column: 7)
!4925 = !DILocation(line: 311, column: 12, scope: !4924)
!4926 = !DILocation(line: 311, column: 15, scope: !4924)
!4927 = !DILocation(line: 311, column: 19, scope: !4924)
!4928 = !DILocation(line: 311, column: 7, scope: !4907)
!4929 = !DILocation(line: 312, column: 11, scope: !4924)
!4930 = !DILocation(line: 312, column: 4, scope: !4924)
!4931 = !DILocation(line: 313, column: 2, scope: !4907)
!4932 = !DILocation(line: 315, column: 15, scope: !4858)
!4933 = !DILocation(line: 315, column: 19, scope: !4858)
!4934 = !DILocation(line: 315, column: 23, scope: !4858)
!4935 = !DILocation(line: 315, column: 32, scope: !4858)
!4936 = !DILocation(line: 315, column: 36, scope: !4858)
!4937 = !DILocation(line: 315, column: 41, scope: !4858)
!4938 = !DILocation(line: 315, column: 30, scope: !4858)
!4939 = !DILocation(line: 315, column: 50, scope: !4858)
!4940 = !DILocation(line: 315, column: 54, scope: !4858)
!4941 = !DILocation(line: 315, column: 60, scope: !4858)
!4942 = !DILocation(line: 315, column: 48, scope: !4858)
!4943 = !DILocation(line: 315, column: 13, scope: !4858)
!4944 = !DILocation(line: 322, column: 19, scope: !4858)
!4945 = !DILocation(line: 322, column: 11, scope: !4858)
!4946 = !DILocation(line: 322, column: 9, scope: !4858)
!4947 = !DILocation(line: 323, column: 7, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 323, column: 6)
!4949 = !DILocation(line: 323, column: 6, scope: !4858)
!4950 = !DILocation(line: 324, column: 3, scope: !4948)
!4951 = !DILocation(line: 326, column: 2, scope: !4858)
!4952 = !DILocation(line: 328, column: 14, scope: !4858)
!4953 = !DILocation(line: 328, column: 18, scope: !4858)
!4954 = !DILocation(line: 328, column: 22, scope: !4858)
!4955 = !DILocation(line: 328, column: 2, scope: !4858)
!4956 = !DILocation(line: 328, column: 12, scope: !4858)
!4957 = !DILocation(line: 329, column: 26, scope: !4858)
!4958 = !DILocation(line: 329, column: 8, scope: !4858)
!4959 = !DILocation(line: 329, column: 2, scope: !4858)
!4960 = !DILocation(line: 329, column: 17, scope: !4858)
!4961 = !DILocation(line: 329, column: 24, scope: !4858)
!4962 = !DILocation(line: 330, column: 23, scope: !4858)
!4963 = !DILocation(line: 330, column: 27, scope: !4858)
!4964 = !DILocation(line: 330, column: 31, scope: !4858)
!4965 = !DILocation(line: 330, column: 8, scope: !4858)
!4966 = !DILocation(line: 330, column: 2, scope: !4858)
!4967 = !DILocation(line: 330, column: 17, scope: !4858)
!4968 = !DILocation(line: 330, column: 21, scope: !4858)
!4969 = !DILocation(line: 331, column: 28, scope: !4858)
!4970 = !DILocation(line: 331, column: 32, scope: !4858)
!4971 = !DILocation(line: 331, column: 36, scope: !4858)
!4972 = !DILocation(line: 331, column: 8, scope: !4858)
!4973 = !DILocation(line: 331, column: 2, scope: !4858)
!4974 = !DILocation(line: 331, column: 17, scope: !4858)
!4975 = !DILocation(line: 331, column: 26, scope: !4858)
!4976 = !DILocation(line: 332, column: 30, scope: !4858)
!4977 = !DILocation(line: 332, column: 24, scope: !4858)
!4978 = !DILocation(line: 332, column: 2, scope: !4858)
!4979 = !DILocation(line: 333, column: 9, scope: !4858)
!4980 = !DILocation(line: 334, column: 14, scope: !4858)
!4981 = !DILocation(line: 336, column: 6, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 336, column: 6)
!4983 = !DILocation(line: 336, column: 10, scope: !4982)
!4984 = !DILocation(line: 336, column: 15, scope: !4982)
!4985 = !DILocation(line: 336, column: 6, scope: !4858)
!4986 = !DILocalVariable(name: "i", scope: !4987, file: !1, line: 337, type: !258)
!4987 = distinct !DILexicalBlock(scope: !4982, file: !1, line: 336, column: 23)
!4988 = !DILocation(line: 337, column: 7, scope: !4987)
!4989 = !DILocation(line: 339, column: 10, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4987, file: !1, line: 339, column: 3)
!4991 = !DILocation(line: 339, column: 8, scope: !4990)
!4992 = !DILocation(line: 339, column: 15, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4990, file: !1, line: 339, column: 3)
!4994 = !DILocation(line: 339, column: 19, scope: !4993)
!4995 = !DILocation(line: 339, column: 23, scope: !4993)
!4996 = !DILocation(line: 339, column: 28, scope: !4993)
!4997 = !DILocation(line: 339, column: 17, scope: !4993)
!4998 = !DILocation(line: 339, column: 3, scope: !4990)
!4999 = !DILocation(line: 340, column: 20, scope: !4993)
!5000 = !DILocation(line: 340, column: 24, scope: !4993)
!5001 = !DILocation(line: 340, column: 29, scope: !4993)
!5002 = !DILocation(line: 341, column: 12, scope: !4993)
!5003 = !DILocation(line: 341, column: 16, scope: !4993)
!5004 = !DILocation(line: 341, column: 21, scope: !4993)
!5005 = !DILocation(line: 341, column: 30, scope: !4993)
!5006 = !DILocation(line: 341, column: 28, scope: !4993)
!5007 = !DILocation(line: 341, column: 32, scope: !4993)
!5008 = !DILocation(line: 341, column: 9, scope: !4993)
!5009 = !DILocation(line: 340, column: 33, scope: !4993)
!5010 = !DILocation(line: 340, column: 4, scope: !4993)
!5011 = !DILocation(line: 340, column: 11, scope: !4993)
!5012 = !DILocation(line: 340, column: 13, scope: !4993)
!5013 = !DILocation(line: 340, column: 18, scope: !4993)
!5014 = !DILocation(line: 339, column: 37, scope: !4993)
!5015 = !DILocation(line: 339, column: 3, scope: !4993)
!5016 = distinct !{!5016, !4998, !5017}
!5017 = !DILocation(line: 341, column: 36, scope: !4990)
!5018 = !DILocation(line: 343, column: 27, scope: !4987)
!5019 = !DILocation(line: 343, column: 34, scope: !4987)
!5020 = !DILocation(line: 343, column: 9, scope: !4987)
!5021 = !DILocation(line: 343, column: 3, scope: !4987)
!5022 = !DILocation(line: 343, column: 18, scope: !4987)
!5023 = !DILocation(line: 343, column: 25, scope: !4987)
!5024 = !DILocation(line: 344, column: 24, scope: !4987)
!5025 = !DILocation(line: 344, column: 28, scope: !4987)
!5026 = !DILocation(line: 344, column: 33, scope: !4987)
!5027 = !DILocation(line: 344, column: 9, scope: !4987)
!5028 = !DILocation(line: 344, column: 3, scope: !4987)
!5029 = !DILocation(line: 344, column: 18, scope: !4987)
!5030 = !DILocation(line: 344, column: 22, scope: !4987)
!5031 = !DILocation(line: 345, column: 29, scope: !4987)
!5032 = !DILocation(line: 345, column: 33, scope: !4987)
!5033 = !DILocation(line: 345, column: 38, scope: !4987)
!5034 = !DILocation(line: 345, column: 9, scope: !4987)
!5035 = !DILocation(line: 345, column: 3, scope: !4987)
!5036 = !DILocation(line: 345, column: 18, scope: !4987)
!5037 = !DILocation(line: 345, column: 27, scope: !4987)
!5038 = !DILocation(line: 346, column: 31, scope: !4987)
!5039 = !DILocation(line: 346, column: 25, scope: !4987)
!5040 = !DILocation(line: 346, column: 3, scope: !4987)
!5041 = !DILocation(line: 347, column: 10, scope: !4987)
!5042 = !DILocation(line: 348, column: 19, scope: !4987)
!5043 = !DILocation(line: 348, column: 23, scope: !4987)
!5044 = !DILocation(line: 348, column: 28, scope: !4987)
!5045 = !DILocation(line: 348, column: 16, scope: !4987)
!5046 = !DILocation(line: 349, column: 2, scope: !4987)
!5047 = !DILocation(line: 351, column: 6, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 351, column: 6)
!5049 = !DILocation(line: 351, column: 10, scope: !5048)
!5050 = !DILocation(line: 351, column: 16, scope: !5048)
!5051 = !DILocation(line: 351, column: 6, scope: !4858)
!5052 = !DILocation(line: 352, column: 10, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5048, file: !1, line: 351, column: 24)
!5054 = !DILocation(line: 352, column: 19, scope: !5053)
!5055 = !DILocation(line: 352, column: 23, scope: !5053)
!5056 = !DILocation(line: 352, column: 28, scope: !5053)
!5057 = !DILocation(line: 352, column: 17, scope: !5053)
!5058 = !DILocation(line: 352, column: 35, scope: !5053)
!5059 = !DILocation(line: 352, column: 46, scope: !5053)
!5060 = !DILocation(line: 352, column: 50, scope: !5053)
!5061 = !DILocation(line: 352, column: 56, scope: !5053)
!5062 = !DILocation(line: 352, column: 3, scope: !5053)
!5063 = !DILocation(line: 353, column: 27, scope: !5053)
!5064 = !DILocation(line: 353, column: 36, scope: !5053)
!5065 = !DILocation(line: 353, column: 40, scope: !5053)
!5066 = !DILocation(line: 353, column: 45, scope: !5053)
!5067 = !DILocation(line: 353, column: 34, scope: !5053)
!5068 = !DILocation(line: 353, column: 52, scope: !5053)
!5069 = !DILocation(line: 353, column: 9, scope: !5053)
!5070 = !DILocation(line: 353, column: 3, scope: !5053)
!5071 = !DILocation(line: 353, column: 18, scope: !5053)
!5072 = !DILocation(line: 353, column: 25, scope: !5053)
!5073 = !DILocation(line: 354, column: 24, scope: !5053)
!5074 = !DILocation(line: 354, column: 28, scope: !5053)
!5075 = !DILocation(line: 354, column: 34, scope: !5053)
!5076 = !DILocation(line: 354, column: 9, scope: !5053)
!5077 = !DILocation(line: 354, column: 3, scope: !5053)
!5078 = !DILocation(line: 354, column: 18, scope: !5053)
!5079 = !DILocation(line: 354, column: 22, scope: !5053)
!5080 = !DILocation(line: 355, column: 29, scope: !5053)
!5081 = !DILocation(line: 355, column: 33, scope: !5053)
!5082 = !DILocation(line: 355, column: 39, scope: !5053)
!5083 = !DILocation(line: 355, column: 9, scope: !5053)
!5084 = !DILocation(line: 355, column: 3, scope: !5053)
!5085 = !DILocation(line: 355, column: 18, scope: !5053)
!5086 = !DILocation(line: 355, column: 27, scope: !5053)
!5087 = !DILocation(line: 356, column: 31, scope: !5053)
!5088 = !DILocation(line: 356, column: 25, scope: !5053)
!5089 = !DILocation(line: 356, column: 3, scope: !5053)
!5090 = !DILocation(line: 357, column: 10, scope: !5053)
!5091 = !DILocation(line: 358, column: 19, scope: !5053)
!5092 = !DILocation(line: 358, column: 23, scope: !5053)
!5093 = !DILocation(line: 358, column: 29, scope: !5053)
!5094 = !DILocation(line: 358, column: 16, scope: !5053)
!5095 = !DILocation(line: 359, column: 2, scope: !5053)
!5096 = !DILocation(line: 361, column: 6, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 361, column: 6)
!5098 = !DILocation(line: 361, column: 10, scope: !5097)
!5099 = !DILocation(line: 361, column: 15, scope: !5097)
!5100 = !DILocation(line: 361, column: 6, scope: !4858)
!5101 = !DILocation(line: 362, column: 7, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5103, file: !1, line: 362, column: 7)
!5103 = distinct !DILexicalBlock(scope: !5097, file: !1, line: 361, column: 23)
!5104 = !DILocation(line: 362, column: 11, scope: !5102)
!5105 = !DILocation(line: 362, column: 16, scope: !5102)
!5106 = !DILocation(line: 362, column: 20, scope: !5102)
!5107 = !DILocation(line: 362, column: 7, scope: !5103)
!5108 = !DILocation(line: 363, column: 28, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5102, file: !1, line: 362, column: 40)
!5110 = !DILocation(line: 363, column: 32, scope: !5109)
!5111 = !DILocation(line: 363, column: 37, scope: !5109)
!5112 = !DILocation(line: 363, column: 41, scope: !5109)
!5113 = !DILocation(line: 363, column: 10, scope: !5109)
!5114 = !DILocation(line: 363, column: 4, scope: !5109)
!5115 = !DILocation(line: 363, column: 19, scope: !5109)
!5116 = !DILocation(line: 363, column: 26, scope: !5109)
!5117 = !DILocation(line: 364, column: 30, scope: !5109)
!5118 = !DILocation(line: 364, column: 34, scope: !5109)
!5119 = !DILocation(line: 364, column: 39, scope: !5109)
!5120 = !DILocation(line: 364, column: 10, scope: !5109)
!5121 = !DILocation(line: 364, column: 4, scope: !5109)
!5122 = !DILocation(line: 364, column: 19, scope: !5109)
!5123 = !DILocation(line: 364, column: 28, scope: !5109)
!5124 = !DILocation(line: 365, column: 3, scope: !5109)
!5125 = !DILocation(line: 366, column: 28, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5102, file: !1, line: 365, column: 10)
!5127 = !DILocation(line: 366, column: 32, scope: !5126)
!5128 = !DILocation(line: 366, column: 37, scope: !5126)
!5129 = !DILocation(line: 366, column: 41, scope: !5126)
!5130 = !DILocation(line: 366, column: 10, scope: !5126)
!5131 = !DILocation(line: 366, column: 4, scope: !5126)
!5132 = !DILocation(line: 366, column: 19, scope: !5126)
!5133 = !DILocation(line: 366, column: 26, scope: !5126)
!5134 = !DILocation(line: 367, column: 30, scope: !5126)
!5135 = !DILocation(line: 367, column: 34, scope: !5126)
!5136 = !DILocation(line: 367, column: 39, scope: !5126)
!5137 = !DILocation(line: 367, column: 10, scope: !5126)
!5138 = !DILocation(line: 367, column: 4, scope: !5126)
!5139 = !DILocation(line: 367, column: 19, scope: !5126)
!5140 = !DILocation(line: 367, column: 28, scope: !5126)
!5141 = !DILocation(line: 370, column: 24, scope: !5103)
!5142 = !DILocation(line: 370, column: 28, scope: !5103)
!5143 = !DILocation(line: 370, column: 33, scope: !5103)
!5144 = !DILocation(line: 370, column: 9, scope: !5103)
!5145 = !DILocation(line: 370, column: 3, scope: !5103)
!5146 = !DILocation(line: 370, column: 18, scope: !5103)
!5147 = !DILocation(line: 370, column: 22, scope: !5103)
!5148 = !DILocation(line: 371, column: 31, scope: !5103)
!5149 = !DILocation(line: 371, column: 25, scope: !5103)
!5150 = !DILocation(line: 371, column: 3, scope: !5103)
!5151 = !DILocation(line: 372, column: 10, scope: !5103)
!5152 = !DILocation(line: 373, column: 19, scope: !5103)
!5153 = !DILocation(line: 373, column: 23, scope: !5103)
!5154 = !DILocation(line: 373, column: 28, scope: !5103)
!5155 = !DILocation(line: 373, column: 16, scope: !5103)
!5156 = !DILocation(line: 374, column: 2, scope: !5103)
!5157 = !DILocation(line: 376, column: 17, scope: !4858)
!5158 = !DILocation(line: 376, column: 22, scope: !4858)
!5159 = !DILocation(line: 376, column: 8, scope: !4858)
!5160 = !DILocation(line: 376, column: 6, scope: !4858)
!5161 = !DILocation(line: 378, column: 8, scope: !4858)
!5162 = !DILocation(line: 378, column: 2, scope: !4858)
!5163 = !DILocation(line: 380, column: 6, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 380, column: 6)
!5165 = !DILocation(line: 380, column: 6, scope: !4858)
!5166 = !DILocation(line: 381, column: 10, scope: !5164)
!5167 = !DILocation(line: 381, column: 3, scope: !5164)
!5168 = !DILocation(line: 383, column: 10, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !4858, file: !1, line: 383, column: 6)
!5170 = !DILocation(line: 383, column: 27, scope: !5169)
!5171 = !DILocation(line: 383, column: 24, scope: !5169)
!5172 = !DILocation(line: 383, column: 6, scope: !4858)
!5173 = !DILocation(line: 384, column: 3, scope: !5169)
!5174 = !DILocation(line: 386, column: 2, scope: !4858)
!5175 = !DILocation(line: 387, column: 1, scope: !4858)
!5176 = distinct !DISubprogram(name: "spi_mem_access_start", scope: !1, file: !1, line: 231, type: !4463, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5177 = !DILocalVariable(name: "mem", arg: 1, scope: !5176, file: !1, line: 231, type: !204)
!5178 = !DILocation(line: 231, column: 49, scope: !5176)
!5179 = !DILocalVariable(name: "ctlr", scope: !5176, file: !1, line: 233, type: !3848)
!5180 = !DILocation(line: 233, column: 25, scope: !5176)
!5181 = !DILocation(line: 233, column: 32, scope: !5176)
!5182 = !DILocation(line: 233, column: 37, scope: !5176)
!5183 = !DILocation(line: 233, column: 42, scope: !5176)
!5184 = !DILocation(line: 239, column: 18, scope: !5176)
!5185 = !DILocation(line: 239, column: 2, scope: !5176)
!5186 = !DILocation(line: 241, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5176, file: !1, line: 241, column: 6)
!5188 = !DILocation(line: 241, column: 12, scope: !5187)
!5189 = !DILocation(line: 241, column: 6, scope: !5176)
!5190 = !DILocalVariable(name: "ret", scope: !5191, file: !1, line: 242, type: !258)
!5191 = distinct !DILexicalBlock(scope: !5187, file: !1, line: 241, column: 29)
!5192 = !DILocation(line: 242, column: 7, scope: !5191)
!5193 = !DILocation(line: 244, column: 29, scope: !5191)
!5194 = !DILocation(line: 244, column: 35, scope: !5191)
!5195 = !DILocation(line: 244, column: 39, scope: !5191)
!5196 = !DILocation(line: 244, column: 9, scope: !5191)
!5197 = !DILocation(line: 244, column: 7, scope: !5191)
!5198 = !DILocation(line: 245, column: 7, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5191, file: !1, line: 245, column: 7)
!5200 = !DILocation(line: 245, column: 11, scope: !5199)
!5201 = !DILocation(line: 245, column: 7, scope: !5191)
!5202 = !DILocation(line: 246, column: 4, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5199, file: !1, line: 245, column: 16)
!5204 = !DILocation(line: 248, column: 11, scope: !5203)
!5205 = !DILocation(line: 248, column: 4, scope: !5203)
!5206 = !DILocation(line: 250, column: 2, scope: !5191)
!5207 = !DILocation(line: 252, column: 14, scope: !5176)
!5208 = !DILocation(line: 252, column: 20, scope: !5176)
!5209 = !DILocation(line: 252, column: 2, scope: !5176)
!5210 = !DILocation(line: 253, column: 14, scope: !5176)
!5211 = !DILocation(line: 253, column: 20, scope: !5176)
!5212 = !DILocation(line: 253, column: 2, scope: !5176)
!5213 = !DILocation(line: 255, column: 2, scope: !5176)
!5214 = !DILocation(line: 256, column: 1, scope: !5176)
!5215 = distinct !DISubprogram(name: "spi_mem_access_end", scope: !1, file: !1, line: 258, type: !4468, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5216 = !DILocalVariable(name: "mem", arg: 1, scope: !5215, file: !1, line: 258, type: !204)
!5217 = !DILocation(line: 258, column: 48, scope: !5215)
!5218 = !DILocalVariable(name: "ctlr", scope: !5215, file: !1, line: 260, type: !3848)
!5219 = !DILocation(line: 260, column: 25, scope: !5215)
!5220 = !DILocation(line: 260, column: 32, scope: !5215)
!5221 = !DILocation(line: 260, column: 37, scope: !5215)
!5222 = !DILocation(line: 260, column: 42, scope: !5215)
!5223 = !DILocation(line: 262, column: 16, scope: !5215)
!5224 = !DILocation(line: 262, column: 22, scope: !5215)
!5225 = !DILocation(line: 262, column: 2, scope: !5215)
!5226 = !DILocation(line: 263, column: 16, scope: !5215)
!5227 = !DILocation(line: 263, column: 22, scope: !5215)
!5228 = !DILocation(line: 263, column: 2, scope: !5215)
!5229 = !DILocation(line: 265, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5215, file: !1, line: 265, column: 6)
!5231 = !DILocation(line: 265, column: 12, scope: !5230)
!5232 = !DILocation(line: 265, column: 6, scope: !5215)
!5233 = !DILocation(line: 266, column: 18, scope: !5230)
!5234 = !DILocation(line: 266, column: 24, scope: !5230)
!5235 = !DILocation(line: 266, column: 28, scope: !5230)
!5236 = !DILocation(line: 266, column: 3, scope: !5230)
!5237 = !DILocation(line: 267, column: 1, scope: !5215)
!5238 = distinct !DISubprogram(name: "kzalloc", scope: !177, file: !177, line: 662, type: !5239, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!191, !186, !184}
!5241 = !DILocalVariable(name: "s", arg: 1, scope: !5242, file: !177, line: 445, type: !973)
!5242 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !177, file: !177, line: 445, type: !5243, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!191, !973, !184, !186}
!5245 = !DILocation(line: 445, column: 72, scope: !5242, inlinedAt: !5246)
!5246 = distinct !DILocation(line: 552, column: 10, scope: !5247, inlinedAt: !5250)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !177, line: 540, column: 34)
!5248 = distinct !DILexicalBlock(scope: !5249, file: !177, line: 540, column: 6)
!5249 = distinct !DISubprogram(name: "kmalloc", scope: !177, file: !177, line: 538, type: !5239, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5250 = distinct !DILocation(line: 664, column: 9, scope: !5238)
!5251 = !DILocalVariable(name: "flags", arg: 2, scope: !5242, file: !177, line: 446, type: !184)
!5252 = !DILocation(line: 446, column: 9, scope: !5242, inlinedAt: !5246)
!5253 = !DILocalVariable(name: "size", arg: 3, scope: !5242, file: !177, line: 446, type: !186)
!5254 = !DILocation(line: 446, column: 23, scope: !5242, inlinedAt: !5246)
!5255 = !DILocalVariable(name: "ret", scope: !5242, file: !177, line: 448, type: !191)
!5256 = !DILocation(line: 448, column: 8, scope: !5242, inlinedAt: !5246)
!5257 = !DILocalVariable(name: "flags", arg: 1, scope: !5258, file: !177, line: 318, type: !184)
!5258 = distinct !DISubprogram(name: "kmalloc_type", scope: !177, file: !177, line: 318, type: !5259, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!176, !184}
!5261 = !DILocation(line: 318, column: 67, scope: !5258, inlinedAt: !5262)
!5262 = distinct !DILocation(line: 553, column: 20, scope: !5247, inlinedAt: !5250)
!5263 = !DILocalVariable(name: "size", arg: 1, scope: !5264, file: !177, line: 346, type: !186)
!5264 = distinct !DISubprogram(name: "kmalloc_index", scope: !177, file: !177, line: 346, type: !5265, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!5, !186}
!5267 = !DILocation(line: 346, column: 58, scope: !5264, inlinedAt: !5268)
!5268 = distinct !DILocation(line: 547, column: 11, scope: !5247, inlinedAt: !5250)
!5269 = !DILocalVariable(name: "size", arg: 1, scope: !5270, file: !177, line: 472, type: !186)
!5270 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !177, file: !177, line: 472, type: !5271, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!191, !186, !184, !5}
!5273 = !DILocation(line: 472, column: 28, scope: !5270, inlinedAt: !5274)
!5274 = distinct !DILocation(line: 481, column: 9, scope: !5275, inlinedAt: !5276)
!5275 = distinct !DISubprogram(name: "kmalloc_large", scope: !177, file: !177, line: 478, type: !5239, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5276 = distinct !DILocation(line: 545, column: 11, scope: !5277, inlinedAt: !5250)
!5277 = distinct !DILexicalBlock(scope: !5247, file: !177, line: 544, column: 7)
!5278 = !DILocalVariable(name: "flags", arg: 2, scope: !5270, file: !177, line: 472, type: !184)
!5279 = !DILocation(line: 472, column: 40, scope: !5270, inlinedAt: !5274)
!5280 = !DILocalVariable(name: "order", arg: 3, scope: !5270, file: !177, line: 472, type: !5)
!5281 = !DILocation(line: 472, column: 60, scope: !5270, inlinedAt: !5274)
!5282 = !DILocalVariable(name: "size", arg: 1, scope: !5275, file: !177, line: 478, type: !186)
!5283 = !DILocation(line: 478, column: 51, scope: !5275, inlinedAt: !5276)
!5284 = !DILocalVariable(name: "flags", arg: 2, scope: !5275, file: !177, line: 478, type: !184)
!5285 = !DILocation(line: 478, column: 63, scope: !5275, inlinedAt: !5276)
!5286 = !DILocalVariable(name: "order", scope: !5275, file: !177, line: 480, type: !5)
!5287 = !DILocation(line: 480, column: 15, scope: !5275, inlinedAt: !5276)
!5288 = !DILocalVariable(name: "size", arg: 1, scope: !5249, file: !177, line: 538, type: !186)
!5289 = !DILocation(line: 538, column: 45, scope: !5249, inlinedAt: !5250)
!5290 = !DILocalVariable(name: "flags", arg: 2, scope: !5249, file: !177, line: 538, type: !184)
!5291 = !DILocation(line: 538, column: 57, scope: !5249, inlinedAt: !5250)
!5292 = !DILocalVariable(name: "index", scope: !5247, file: !177, line: 542, type: !5)
!5293 = !DILocation(line: 542, column: 16, scope: !5247, inlinedAt: !5250)
!5294 = !DILocalVariable(name: "size", arg: 1, scope: !5238, file: !177, line: 662, type: !186)
!5295 = !DILocation(line: 662, column: 36, scope: !5238)
!5296 = !DILocalVariable(name: "flags", arg: 2, scope: !5238, file: !177, line: 662, type: !184)
!5297 = !DILocation(line: 662, column: 48, scope: !5238)
!5298 = !DILocation(line: 664, column: 17, scope: !5238)
!5299 = !DILocation(line: 664, column: 23, scope: !5238)
!5300 = !DILocation(line: 664, column: 29, scope: !5238)
!5301 = !DILocation(line: 540, column: 27, scope: !5248, inlinedAt: !5250)
!5302 = !DILocation(line: 540, column: 6, scope: !5248, inlinedAt: !5250)
!5303 = !DILocation(line: 540, column: 6, scope: !5249, inlinedAt: !5250)
!5304 = !DILocation(line: 544, column: 7, scope: !5277, inlinedAt: !5250)
!5305 = !DILocation(line: 544, column: 12, scope: !5277, inlinedAt: !5250)
!5306 = !DILocation(line: 544, column: 7, scope: !5247, inlinedAt: !5250)
!5307 = !DILocation(line: 545, column: 25, scope: !5277, inlinedAt: !5250)
!5308 = !DILocation(line: 545, column: 31, scope: !5277, inlinedAt: !5250)
!5309 = !DILocation(line: 480, column: 33, scope: !5275, inlinedAt: !5276)
!5310 = !DILocation(line: 480, column: 23, scope: !5275, inlinedAt: !5276)
!5311 = !DILocation(line: 481, column: 29, scope: !5275, inlinedAt: !5276)
!5312 = !DILocation(line: 481, column: 35, scope: !5275, inlinedAt: !5276)
!5313 = !DILocation(line: 481, column: 42, scope: !5275, inlinedAt: !5276)
!5314 = !DILocation(line: 474, column: 23, scope: !5270, inlinedAt: !5274)
!5315 = !DILocation(line: 474, column: 29, scope: !5270, inlinedAt: !5274)
!5316 = !DILocation(line: 474, column: 36, scope: !5270, inlinedAt: !5274)
!5317 = !DILocation(line: 474, column: 9, scope: !5270, inlinedAt: !5274)
!5318 = !DILocation(line: 545, column: 4, scope: !5277, inlinedAt: !5250)
!5319 = !DILocation(line: 547, column: 25, scope: !5247, inlinedAt: !5250)
!5320 = !DILocation(line: 348, column: 7, scope: !5321, inlinedAt: !5268)
!5321 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 348, column: 6)
!5322 = !DILocation(line: 348, column: 6, scope: !5264, inlinedAt: !5268)
!5323 = !DILocation(line: 349, column: 3, scope: !5321, inlinedAt: !5268)
!5324 = !DILocation(line: 351, column: 6, scope: !5325, inlinedAt: !5268)
!5325 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 351, column: 6)
!5326 = !DILocation(line: 351, column: 11, scope: !5325, inlinedAt: !5268)
!5327 = !DILocation(line: 351, column: 6, scope: !5264, inlinedAt: !5268)
!5328 = !DILocation(line: 352, column: 3, scope: !5325, inlinedAt: !5268)
!5329 = !DILocation(line: 354, column: 32, scope: !5330, inlinedAt: !5268)
!5330 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 354, column: 6)
!5331 = !DILocation(line: 354, column: 37, scope: !5330, inlinedAt: !5268)
!5332 = !DILocation(line: 354, column: 42, scope: !5330, inlinedAt: !5268)
!5333 = !DILocation(line: 354, column: 45, scope: !5330, inlinedAt: !5268)
!5334 = !DILocation(line: 354, column: 50, scope: !5330, inlinedAt: !5268)
!5335 = !DILocation(line: 354, column: 6, scope: !5264, inlinedAt: !5268)
!5336 = !DILocation(line: 355, column: 3, scope: !5330, inlinedAt: !5268)
!5337 = !DILocation(line: 356, column: 32, scope: !5338, inlinedAt: !5268)
!5338 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 356, column: 6)
!5339 = !DILocation(line: 356, column: 37, scope: !5338, inlinedAt: !5268)
!5340 = !DILocation(line: 356, column: 43, scope: !5338, inlinedAt: !5268)
!5341 = !DILocation(line: 356, column: 46, scope: !5338, inlinedAt: !5268)
!5342 = !DILocation(line: 356, column: 51, scope: !5338, inlinedAt: !5268)
!5343 = !DILocation(line: 356, column: 6, scope: !5264, inlinedAt: !5268)
!5344 = !DILocation(line: 357, column: 3, scope: !5338, inlinedAt: !5268)
!5345 = !DILocation(line: 358, column: 6, scope: !5346, inlinedAt: !5268)
!5346 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 358, column: 6)
!5347 = !DILocation(line: 358, column: 11, scope: !5346, inlinedAt: !5268)
!5348 = !DILocation(line: 358, column: 6, scope: !5264, inlinedAt: !5268)
!5349 = !DILocation(line: 358, column: 26, scope: !5346, inlinedAt: !5268)
!5350 = !DILocation(line: 359, column: 6, scope: !5351, inlinedAt: !5268)
!5351 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 359, column: 6)
!5352 = !DILocation(line: 359, column: 11, scope: !5351, inlinedAt: !5268)
!5353 = !DILocation(line: 359, column: 6, scope: !5264, inlinedAt: !5268)
!5354 = !DILocation(line: 359, column: 26, scope: !5351, inlinedAt: !5268)
!5355 = !DILocation(line: 360, column: 6, scope: !5356, inlinedAt: !5268)
!5356 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 360, column: 6)
!5357 = !DILocation(line: 360, column: 11, scope: !5356, inlinedAt: !5268)
!5358 = !DILocation(line: 360, column: 6, scope: !5264, inlinedAt: !5268)
!5359 = !DILocation(line: 360, column: 26, scope: !5356, inlinedAt: !5268)
!5360 = !DILocation(line: 361, column: 6, scope: !5361, inlinedAt: !5268)
!5361 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 361, column: 6)
!5362 = !DILocation(line: 361, column: 11, scope: !5361, inlinedAt: !5268)
!5363 = !DILocation(line: 361, column: 6, scope: !5264, inlinedAt: !5268)
!5364 = !DILocation(line: 361, column: 26, scope: !5361, inlinedAt: !5268)
!5365 = !DILocation(line: 362, column: 6, scope: !5366, inlinedAt: !5268)
!5366 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 362, column: 6)
!5367 = !DILocation(line: 362, column: 11, scope: !5366, inlinedAt: !5268)
!5368 = !DILocation(line: 362, column: 6, scope: !5264, inlinedAt: !5268)
!5369 = !DILocation(line: 362, column: 26, scope: !5366, inlinedAt: !5268)
!5370 = !DILocation(line: 363, column: 6, scope: !5371, inlinedAt: !5268)
!5371 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 363, column: 6)
!5372 = !DILocation(line: 363, column: 11, scope: !5371, inlinedAt: !5268)
!5373 = !DILocation(line: 363, column: 6, scope: !5264, inlinedAt: !5268)
!5374 = !DILocation(line: 363, column: 26, scope: !5371, inlinedAt: !5268)
!5375 = !DILocation(line: 364, column: 6, scope: !5376, inlinedAt: !5268)
!5376 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 364, column: 6)
!5377 = !DILocation(line: 364, column: 11, scope: !5376, inlinedAt: !5268)
!5378 = !DILocation(line: 364, column: 6, scope: !5264, inlinedAt: !5268)
!5379 = !DILocation(line: 364, column: 26, scope: !5376, inlinedAt: !5268)
!5380 = !DILocation(line: 365, column: 6, scope: !5381, inlinedAt: !5268)
!5381 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 365, column: 6)
!5382 = !DILocation(line: 365, column: 11, scope: !5381, inlinedAt: !5268)
!5383 = !DILocation(line: 365, column: 6, scope: !5264, inlinedAt: !5268)
!5384 = !DILocation(line: 365, column: 26, scope: !5381, inlinedAt: !5268)
!5385 = !DILocation(line: 366, column: 6, scope: !5386, inlinedAt: !5268)
!5386 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 366, column: 6)
!5387 = !DILocation(line: 366, column: 11, scope: !5386, inlinedAt: !5268)
!5388 = !DILocation(line: 366, column: 6, scope: !5264, inlinedAt: !5268)
!5389 = !DILocation(line: 366, column: 26, scope: !5386, inlinedAt: !5268)
!5390 = !DILocation(line: 367, column: 6, scope: !5391, inlinedAt: !5268)
!5391 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 367, column: 6)
!5392 = !DILocation(line: 367, column: 11, scope: !5391, inlinedAt: !5268)
!5393 = !DILocation(line: 367, column: 6, scope: !5264, inlinedAt: !5268)
!5394 = !DILocation(line: 367, column: 26, scope: !5391, inlinedAt: !5268)
!5395 = !DILocation(line: 368, column: 6, scope: !5396, inlinedAt: !5268)
!5396 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 368, column: 6)
!5397 = !DILocation(line: 368, column: 11, scope: !5396, inlinedAt: !5268)
!5398 = !DILocation(line: 368, column: 6, scope: !5264, inlinedAt: !5268)
!5399 = !DILocation(line: 368, column: 26, scope: !5396, inlinedAt: !5268)
!5400 = !DILocation(line: 369, column: 6, scope: !5401, inlinedAt: !5268)
!5401 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 369, column: 6)
!5402 = !DILocation(line: 369, column: 11, scope: !5401, inlinedAt: !5268)
!5403 = !DILocation(line: 369, column: 6, scope: !5264, inlinedAt: !5268)
!5404 = !DILocation(line: 369, column: 26, scope: !5401, inlinedAt: !5268)
!5405 = !DILocation(line: 370, column: 6, scope: !5406, inlinedAt: !5268)
!5406 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 370, column: 6)
!5407 = !DILocation(line: 370, column: 11, scope: !5406, inlinedAt: !5268)
!5408 = !DILocation(line: 370, column: 6, scope: !5264, inlinedAt: !5268)
!5409 = !DILocation(line: 370, column: 26, scope: !5406, inlinedAt: !5268)
!5410 = !DILocation(line: 371, column: 6, scope: !5411, inlinedAt: !5268)
!5411 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 371, column: 6)
!5412 = !DILocation(line: 371, column: 11, scope: !5411, inlinedAt: !5268)
!5413 = !DILocation(line: 371, column: 6, scope: !5264, inlinedAt: !5268)
!5414 = !DILocation(line: 371, column: 26, scope: !5411, inlinedAt: !5268)
!5415 = !DILocation(line: 372, column: 6, scope: !5416, inlinedAt: !5268)
!5416 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 372, column: 6)
!5417 = !DILocation(line: 372, column: 11, scope: !5416, inlinedAt: !5268)
!5418 = !DILocation(line: 372, column: 6, scope: !5264, inlinedAt: !5268)
!5419 = !DILocation(line: 372, column: 26, scope: !5416, inlinedAt: !5268)
!5420 = !DILocation(line: 373, column: 6, scope: !5421, inlinedAt: !5268)
!5421 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 373, column: 6)
!5422 = !DILocation(line: 373, column: 11, scope: !5421, inlinedAt: !5268)
!5423 = !DILocation(line: 373, column: 6, scope: !5264, inlinedAt: !5268)
!5424 = !DILocation(line: 373, column: 26, scope: !5421, inlinedAt: !5268)
!5425 = !DILocation(line: 374, column: 6, scope: !5426, inlinedAt: !5268)
!5426 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 374, column: 6)
!5427 = !DILocation(line: 374, column: 11, scope: !5426, inlinedAt: !5268)
!5428 = !DILocation(line: 374, column: 6, scope: !5264, inlinedAt: !5268)
!5429 = !DILocation(line: 374, column: 26, scope: !5426, inlinedAt: !5268)
!5430 = !DILocation(line: 375, column: 6, scope: !5431, inlinedAt: !5268)
!5431 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 375, column: 6)
!5432 = !DILocation(line: 375, column: 11, scope: !5431, inlinedAt: !5268)
!5433 = !DILocation(line: 375, column: 6, scope: !5264, inlinedAt: !5268)
!5434 = !DILocation(line: 375, column: 27, scope: !5431, inlinedAt: !5268)
!5435 = !DILocation(line: 376, column: 6, scope: !5436, inlinedAt: !5268)
!5436 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 376, column: 6)
!5437 = !DILocation(line: 376, column: 11, scope: !5436, inlinedAt: !5268)
!5438 = !DILocation(line: 376, column: 6, scope: !5264, inlinedAt: !5268)
!5439 = !DILocation(line: 376, column: 32, scope: !5436, inlinedAt: !5268)
!5440 = !DILocation(line: 377, column: 6, scope: !5441, inlinedAt: !5268)
!5441 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 377, column: 6)
!5442 = !DILocation(line: 377, column: 11, scope: !5441, inlinedAt: !5268)
!5443 = !DILocation(line: 377, column: 6, scope: !5264, inlinedAt: !5268)
!5444 = !DILocation(line: 377, column: 32, scope: !5441, inlinedAt: !5268)
!5445 = !DILocation(line: 378, column: 6, scope: !5446, inlinedAt: !5268)
!5446 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 378, column: 6)
!5447 = !DILocation(line: 378, column: 11, scope: !5446, inlinedAt: !5268)
!5448 = !DILocation(line: 378, column: 6, scope: !5264, inlinedAt: !5268)
!5449 = !DILocation(line: 378, column: 32, scope: !5446, inlinedAt: !5268)
!5450 = !DILocation(line: 379, column: 6, scope: !5451, inlinedAt: !5268)
!5451 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 379, column: 6)
!5452 = !DILocation(line: 379, column: 11, scope: !5451, inlinedAt: !5268)
!5453 = !DILocation(line: 379, column: 6, scope: !5264, inlinedAt: !5268)
!5454 = !DILocation(line: 379, column: 33, scope: !5451, inlinedAt: !5268)
!5455 = !DILocation(line: 380, column: 6, scope: !5456, inlinedAt: !5268)
!5456 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 380, column: 6)
!5457 = !DILocation(line: 380, column: 11, scope: !5456, inlinedAt: !5268)
!5458 = !DILocation(line: 380, column: 6, scope: !5264, inlinedAt: !5268)
!5459 = !DILocation(line: 380, column: 33, scope: !5456, inlinedAt: !5268)
!5460 = !DILocation(line: 381, column: 6, scope: !5461, inlinedAt: !5268)
!5461 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 381, column: 6)
!5462 = !DILocation(line: 381, column: 11, scope: !5461, inlinedAt: !5268)
!5463 = !DILocation(line: 381, column: 6, scope: !5264, inlinedAt: !5268)
!5464 = !DILocation(line: 381, column: 33, scope: !5461, inlinedAt: !5268)
!5465 = !DILocation(line: 382, column: 2, scope: !5466, inlinedAt: !5268)
!5466 = distinct !DILexicalBlock(scope: !5467, file: !177, line: 382, column: 2)
!5467 = distinct !DILexicalBlock(scope: !5264, file: !177, line: 382, column: 2)
!5468 = !{i32 -2142107881, i32 -2142107852, i32 -2142107806, i32 -2142107748, i32 -2142107694, i32 -2142107640, i32 -2142107585, i32 -2142107554}
!5469 = !DILocation(line: 382, column: 2, scope: !5470, inlinedAt: !5268)
!5470 = distinct !DILexicalBlock(scope: !5471, file: !177, line: 382, column: 2)
!5471 = distinct !DILexicalBlock(scope: !5467, file: !177, line: 382, column: 2)
!5472 = !{i32 -2142107111, i32 -2142107104, i32 -2142107050, i32 -2142107019, i32 -2142106989}
!5473 = !DILocation(line: 382, column: 2, scope: !5471, inlinedAt: !5268)
!5474 = !DILocation(line: 386, column: 1, scope: !5264, inlinedAt: !5268)
!5475 = !DILocation(line: 547, column: 9, scope: !5247, inlinedAt: !5250)
!5476 = !DILocation(line: 549, column: 8, scope: !5477, inlinedAt: !5250)
!5477 = distinct !DILexicalBlock(scope: !5247, file: !177, line: 549, column: 7)
!5478 = !DILocation(line: 549, column: 7, scope: !5247, inlinedAt: !5250)
!5479 = !DILocation(line: 550, column: 4, scope: !5477, inlinedAt: !5250)
!5480 = !DILocation(line: 553, column: 33, scope: !5247, inlinedAt: !5250)
!5481 = !DILocation(line: 325, column: 6, scope: !5482, inlinedAt: !5262)
!5482 = distinct !DILexicalBlock(scope: !5258, file: !177, line: 325, column: 6)
!5483 = !DILocation(line: 325, column: 6, scope: !5258, inlinedAt: !5262)
!5484 = !DILocation(line: 326, column: 3, scope: !5482, inlinedAt: !5262)
!5485 = !DILocation(line: 332, column: 9, scope: !5258, inlinedAt: !5262)
!5486 = !DILocation(line: 332, column: 15, scope: !5258, inlinedAt: !5262)
!5487 = !DILocation(line: 332, column: 2, scope: !5258, inlinedAt: !5262)
!5488 = !DILocation(line: 336, column: 1, scope: !5258, inlinedAt: !5262)
!5489 = !DILocation(line: 553, column: 5, scope: !5247, inlinedAt: !5250)
!5490 = !DILocation(line: 553, column: 41, scope: !5247, inlinedAt: !5250)
!5491 = !DILocation(line: 554, column: 5, scope: !5247, inlinedAt: !5250)
!5492 = !DILocation(line: 554, column: 12, scope: !5247, inlinedAt: !5250)
!5493 = !DILocation(line: 448, column: 31, scope: !5242, inlinedAt: !5246)
!5494 = !DILocation(line: 448, column: 34, scope: !5242, inlinedAt: !5246)
!5495 = !DILocation(line: 448, column: 14, scope: !5242, inlinedAt: !5246)
!5496 = !DILocation(line: 450, column: 22, scope: !5242, inlinedAt: !5246)
!5497 = !DILocation(line: 450, column: 25, scope: !5242, inlinedAt: !5246)
!5498 = !DILocation(line: 450, column: 30, scope: !5242, inlinedAt: !5246)
!5499 = !DILocation(line: 450, column: 36, scope: !5242, inlinedAt: !5246)
!5500 = !DILocation(line: 450, column: 8, scope: !5242, inlinedAt: !5246)
!5501 = !DILocation(line: 450, column: 6, scope: !5242, inlinedAt: !5246)
!5502 = !DILocation(line: 451, column: 9, scope: !5242, inlinedAt: !5246)
!5503 = !DILocation(line: 552, column: 3, scope: !5247, inlinedAt: !5250)
!5504 = !DILocation(line: 557, column: 19, scope: !5249, inlinedAt: !5250)
!5505 = !DILocation(line: 557, column: 25, scope: !5249, inlinedAt: !5250)
!5506 = !DILocation(line: 557, column: 9, scope: !5249, inlinedAt: !5250)
!5507 = !DILocation(line: 557, column: 2, scope: !5249, inlinedAt: !5250)
!5508 = !DILocation(line: 558, column: 1, scope: !5249, inlinedAt: !5250)
!5509 = !DILocation(line: 664, column: 2, scope: !5238)
!5510 = distinct !DISubprogram(name: "spi_message_init", scope: !210, file: !210, line: 1041, type: !5511, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{null, !3889}
!5513 = !DILocalVariable(name: "m", arg: 1, scope: !5510, file: !210, line: 1041, type: !3889)
!5514 = !DILocation(line: 1041, column: 57, scope: !5510)
!5515 = !DILocation(line: 1043, column: 9, scope: !5510)
!5516 = !DILocation(line: 1043, column: 2, scope: !5510)
!5517 = !DILocation(line: 1044, column: 29, scope: !5510)
!5518 = !DILocation(line: 1044, column: 2, scope: !5510)
!5519 = !DILocation(line: 1045, column: 1, scope: !5510)
!5520 = distinct !DISubprogram(name: "spi_message_add_tail", scope: !210, file: !210, line: 1048, type: !5521, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{null, !3911, !3889}
!5523 = !DILocalVariable(name: "t", arg: 1, scope: !5520, file: !210, line: 1048, type: !3911)
!5524 = !DILocation(line: 1048, column: 43, scope: !5520)
!5525 = !DILocalVariable(name: "m", arg: 2, scope: !5520, file: !210, line: 1048, type: !3889)
!5526 = !DILocation(line: 1048, column: 66, scope: !5520)
!5527 = !DILocation(line: 1050, column: 17, scope: !5520)
!5528 = !DILocation(line: 1050, column: 20, scope: !5520)
!5529 = !DILocation(line: 1050, column: 36, scope: !5520)
!5530 = !DILocation(line: 1050, column: 39, scope: !5520)
!5531 = !DILocation(line: 1050, column: 2, scope: !5520)
!5532 = !DILocation(line: 1051, column: 1, scope: !5520)
!5533 = distinct !DISubprogram(name: "spi_mem_get_name", scope: !1, file: !1, line: 402, type: !4076, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5534 = !DILocalVariable(name: "mem", arg: 1, scope: !5533, file: !1, line: 402, type: !204)
!5535 = !DILocation(line: 402, column: 46, scope: !5533)
!5536 = !DILocation(line: 404, column: 9, scope: !5533)
!5537 = !DILocation(line: 404, column: 14, scope: !5533)
!5538 = !DILocation(line: 404, column: 2, scope: !5533)
!5539 = distinct !DISubprogram(name: "spi_mem_adjust_op_size", scope: !1, file: !1, line: 423, type: !4027, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5540 = !DILocalVariable(name: "mem", arg: 1, scope: !5539, file: !1, line: 423, type: !204)
!5541 = !DILocation(line: 423, column: 44, scope: !5539)
!5542 = !DILocalVariable(name: "op", arg: 2, scope: !5539, file: !1, line: 423, type: !4029)
!5543 = !DILocation(line: 423, column: 68, scope: !5539)
!5544 = !DILocalVariable(name: "ctlr", scope: !5539, file: !1, line: 425, type: !3848)
!5545 = !DILocation(line: 425, column: 25, scope: !5539)
!5546 = !DILocation(line: 425, column: 32, scope: !5539)
!5547 = !DILocation(line: 425, column: 37, scope: !5539)
!5548 = !DILocation(line: 425, column: 42, scope: !5539)
!5549 = !DILocalVariable(name: "len", scope: !5539, file: !1, line: 426, type: !186)
!5550 = !DILocation(line: 426, column: 9, scope: !5539)
!5551 = !DILocation(line: 428, column: 6, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5539, file: !1, line: 428, column: 6)
!5553 = !DILocation(line: 428, column: 12, scope: !5552)
!5554 = !DILocation(line: 428, column: 20, scope: !5552)
!5555 = !DILocation(line: 428, column: 23, scope: !5552)
!5556 = !DILocation(line: 428, column: 29, scope: !5552)
!5557 = !DILocation(line: 428, column: 38, scope: !5552)
!5558 = !DILocation(line: 428, column: 6, scope: !5539)
!5559 = !DILocation(line: 429, column: 10, scope: !5552)
!5560 = !DILocation(line: 429, column: 16, scope: !5552)
!5561 = !DILocation(line: 429, column: 25, scope: !5552)
!5562 = !DILocation(line: 429, column: 40, scope: !5552)
!5563 = !DILocation(line: 429, column: 45, scope: !5552)
!5564 = !DILocation(line: 429, column: 3, scope: !5552)
!5565 = !DILocation(line: 431, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5539, file: !1, line: 431, column: 6)
!5567 = !DILocation(line: 431, column: 13, scope: !5566)
!5568 = !DILocation(line: 431, column: 21, scope: !5566)
!5569 = !DILocation(line: 431, column: 25, scope: !5566)
!5570 = !DILocation(line: 431, column: 31, scope: !5566)
!5571 = !DILocation(line: 431, column: 40, scope: !5566)
!5572 = !DILocation(line: 431, column: 6, scope: !5539)
!5573 = !DILocation(line: 432, column: 9, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5566, file: !1, line: 431, column: 49)
!5575 = !DILocation(line: 432, column: 13, scope: !5574)
!5576 = !DILocation(line: 432, column: 17, scope: !5574)
!5577 = !DILocation(line: 432, column: 26, scope: !5574)
!5578 = !DILocation(line: 432, column: 30, scope: !5574)
!5579 = !DILocation(line: 432, column: 35, scope: !5574)
!5580 = !DILocation(line: 432, column: 24, scope: !5574)
!5581 = !DILocation(line: 432, column: 44, scope: !5574)
!5582 = !DILocation(line: 432, column: 48, scope: !5574)
!5583 = !DILocation(line: 432, column: 54, scope: !5574)
!5584 = !DILocation(line: 432, column: 42, scope: !5574)
!5585 = !DILocation(line: 432, column: 7, scope: !5574)
!5586 = !DILocation(line: 434, column: 7, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5574, file: !1, line: 434, column: 7)
!5588 = !DILocation(line: 434, column: 35, scope: !5587)
!5589 = !DILocation(line: 434, column: 40, scope: !5587)
!5590 = !DILocation(line: 434, column: 13, scope: !5587)
!5591 = !DILocation(line: 434, column: 11, scope: !5587)
!5592 = !DILocation(line: 434, column: 7, scope: !5574)
!5593 = !DILocation(line: 435, column: 4, scope: !5587)
!5594 = !DILocalVariable(name: "__UNIQUE_ID___x235", scope: !5595, file: !1, line: 437, type: !186)
!5595 = distinct !DILexicalBlock(scope: !5574, file: !1, line: 437, column: 21)
!5596 = !DILocation(line: 437, column: 21, scope: !5595)
!5597 = !DILocalVariable(name: "__UNIQUE_ID___x233", scope: !5598, file: !1, line: 437, type: !186)
!5598 = distinct !DILexicalBlock(scope: !5595, file: !1, line: 437, column: 21)
!5599 = !DILocation(line: 437, column: 21, scope: !5598)
!5600 = !DILocalVariable(name: "__UNIQUE_ID___y234", scope: !5598, file: !1, line: 437, type: !186)
!5601 = !DILocalVariable(name: "__UNIQUE_ID___y236", scope: !5595, file: !1, line: 437, type: !190)
!5602 = !DILocation(line: 437, column: 21, scope: !5574)
!5603 = !DILocation(line: 437, column: 3, scope: !5574)
!5604 = !DILocation(line: 437, column: 7, scope: !5574)
!5605 = !DILocation(line: 437, column: 12, scope: !5574)
!5606 = !DILocation(line: 437, column: 19, scope: !5574)
!5607 = !DILocation(line: 441, column: 8, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5574, file: !1, line: 441, column: 7)
!5609 = !DILocation(line: 441, column: 12, scope: !5608)
!5610 = !DILocation(line: 441, column: 17, scope: !5608)
!5611 = !DILocation(line: 441, column: 7, scope: !5574)
!5612 = !DILocation(line: 442, column: 4, scope: !5608)
!5613 = !DILocation(line: 443, column: 2, scope: !5574)
!5614 = !DILocation(line: 445, column: 2, scope: !5539)
!5615 = !DILocation(line: 446, column: 1, scope: !5539)
!5616 = distinct !DISubprogram(name: "spi_max_transfer_size", scope: !210, file: !210, line: 1142, type: !3865, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5617 = !DILocalVariable(name: "spi", arg: 1, scope: !5616, file: !210, line: 1142, type: !208)
!5618 = !DILocation(line: 1142, column: 42, scope: !5616)
!5619 = !DILocalVariable(name: "ctlr", scope: !5616, file: !210, line: 1144, type: !3848)
!5620 = !DILocation(line: 1144, column: 25, scope: !5616)
!5621 = !DILocation(line: 1144, column: 32, scope: !5616)
!5622 = !DILocation(line: 1144, column: 37, scope: !5616)
!5623 = !DILocalVariable(name: "tr_max", scope: !5616, file: !210, line: 1145, type: !186)
!5624 = !DILocation(line: 1145, column: 9, scope: !5616)
!5625 = !DILocalVariable(name: "msg_max", scope: !5616, file: !210, line: 1146, type: !186)
!5626 = !DILocation(line: 1146, column: 9, scope: !5616)
!5627 = !DILocation(line: 1146, column: 40, scope: !5616)
!5628 = !DILocation(line: 1146, column: 19, scope: !5616)
!5629 = !DILocation(line: 1148, column: 6, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5616, file: !210, line: 1148, column: 6)
!5631 = !DILocation(line: 1148, column: 12, scope: !5630)
!5632 = !DILocation(line: 1148, column: 6, scope: !5616)
!5633 = !DILocation(line: 1149, column: 12, scope: !5630)
!5634 = !DILocation(line: 1149, column: 18, scope: !5630)
!5635 = !DILocation(line: 1149, column: 36, scope: !5630)
!5636 = !DILocation(line: 1149, column: 10, scope: !5630)
!5637 = !DILocation(line: 1149, column: 3, scope: !5630)
!5638 = !DILocalVariable(name: "__UNIQUE_ID___x231", scope: !5639, file: !210, line: 1152, type: !186)
!5639 = distinct !DILexicalBlock(scope: !5616, file: !210, line: 1152, column: 9)
!5640 = !DILocation(line: 1152, column: 9, scope: !5639)
!5641 = !DILocalVariable(name: "__UNIQUE_ID___y232", scope: !5639, file: !210, line: 1152, type: !186)
!5642 = !DILocation(line: 1152, column: 2, scope: !5616)
!5643 = distinct !DISubprogram(name: "spi_max_message_size", scope: !210, file: !210, line: 1132, type: !3865, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5644 = !DILocalVariable(name: "spi", arg: 1, scope: !5643, file: !210, line: 1132, type: !208)
!5645 = !DILocation(line: 1132, column: 41, scope: !5643)
!5646 = !DILocalVariable(name: "ctlr", scope: !5643, file: !210, line: 1134, type: !3848)
!5647 = !DILocation(line: 1134, column: 25, scope: !5643)
!5648 = !DILocation(line: 1134, column: 32, scope: !5643)
!5649 = !DILocation(line: 1134, column: 37, scope: !5643)
!5650 = !DILocation(line: 1136, column: 7, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5643, file: !210, line: 1136, column: 6)
!5652 = !DILocation(line: 1136, column: 13, scope: !5651)
!5653 = !DILocation(line: 1136, column: 6, scope: !5643)
!5654 = !DILocation(line: 1137, column: 3, scope: !5651)
!5655 = !DILocation(line: 1138, column: 9, scope: !5643)
!5656 = !DILocation(line: 1138, column: 15, scope: !5643)
!5657 = !DILocation(line: 1138, column: 32, scope: !5643)
!5658 = !DILocation(line: 1138, column: 2, scope: !5643)
!5659 = !DILocation(line: 1139, column: 1, scope: !5643)
!5660 = distinct !DISubprogram(name: "spi_mem_dirmap_create", scope: !1, file: !1, line: 503, type: !5661, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!200, !204, !5663}
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4437)
!5665 = !DILocalVariable(name: "mem", arg: 1, scope: !5660, file: !1, line: 503, type: !204)
!5666 = !DILocation(line: 503, column: 39, scope: !5660)
!5667 = !DILocalVariable(name: "info", arg: 2, scope: !5660, file: !1, line: 504, type: !5663)
!5668 = !DILocation(line: 504, column: 43, scope: !5660)
!5669 = !DILocalVariable(name: "ctlr", scope: !5660, file: !1, line: 506, type: !3848)
!5670 = !DILocation(line: 506, column: 25, scope: !5660)
!5671 = !DILocation(line: 506, column: 32, scope: !5660)
!5672 = !DILocation(line: 506, column: 37, scope: !5660)
!5673 = !DILocation(line: 506, column: 42, scope: !5660)
!5674 = !DILocalVariable(name: "desc", scope: !5660, file: !1, line: 507, type: !200)
!5675 = !DILocation(line: 507, column: 30, scope: !5660)
!5676 = !DILocalVariable(name: "ret", scope: !5660, file: !1, line: 508, type: !258)
!5677 = !DILocation(line: 508, column: 6, scope: !5660)
!5678 = !DILocation(line: 511, column: 7, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5660, file: !1, line: 511, column: 6)
!5680 = !DILocation(line: 511, column: 13, scope: !5679)
!5681 = !DILocation(line: 511, column: 21, scope: !5679)
!5682 = !DILocation(line: 511, column: 26, scope: !5679)
!5683 = !DILocation(line: 511, column: 33, scope: !5679)
!5684 = !DILocation(line: 511, column: 36, scope: !5679)
!5685 = !DILocation(line: 511, column: 42, scope: !5679)
!5686 = !DILocation(line: 511, column: 50, scope: !5679)
!5687 = !DILocation(line: 511, column: 55, scope: !5679)
!5688 = !DILocation(line: 511, column: 62, scope: !5679)
!5689 = !DILocation(line: 511, column: 6, scope: !5660)
!5690 = !DILocation(line: 512, column: 10, scope: !5679)
!5691 = !DILocation(line: 512, column: 3, scope: !5679)
!5692 = !DILocation(line: 515, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5660, file: !1, line: 515, column: 6)
!5694 = !DILocation(line: 515, column: 12, scope: !5693)
!5695 = !DILocation(line: 515, column: 20, scope: !5693)
!5696 = !DILocation(line: 515, column: 25, scope: !5693)
!5697 = !DILocation(line: 515, column: 29, scope: !5693)
!5698 = !DILocation(line: 515, column: 6, scope: !5660)
!5699 = !DILocation(line: 516, column: 10, scope: !5693)
!5700 = !DILocation(line: 516, column: 3, scope: !5693)
!5701 = !DILocation(line: 518, column: 9, scope: !5660)
!5702 = !DILocation(line: 518, column: 7, scope: !5660)
!5703 = !DILocation(line: 519, column: 7, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5660, file: !1, line: 519, column: 6)
!5705 = !DILocation(line: 519, column: 6, scope: !5660)
!5706 = !DILocation(line: 520, column: 10, scope: !5704)
!5707 = !DILocation(line: 520, column: 3, scope: !5704)
!5708 = !DILocation(line: 522, column: 14, scope: !5660)
!5709 = !DILocation(line: 522, column: 2, scope: !5660)
!5710 = !DILocation(line: 522, column: 8, scope: !5660)
!5711 = !DILocation(line: 522, column: 12, scope: !5660)
!5712 = !DILocation(line: 523, column: 2, scope: !5660)
!5713 = !DILocation(line: 523, column: 8, scope: !5660)
!5714 = !DILocation(line: 523, column: 16, scope: !5660)
!5715 = !DILocation(line: 523, column: 15, scope: !5660)
!5716 = !DILocation(line: 524, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5660, file: !1, line: 524, column: 6)
!5718 = !DILocation(line: 524, column: 12, scope: !5717)
!5719 = !DILocation(line: 524, column: 20, scope: !5717)
!5720 = !DILocation(line: 524, column: 23, scope: !5717)
!5721 = !DILocation(line: 524, column: 29, scope: !5717)
!5722 = !DILocation(line: 524, column: 38, scope: !5717)
!5723 = !DILocation(line: 524, column: 6, scope: !5660)
!5724 = !DILocation(line: 525, column: 9, scope: !5717)
!5725 = !DILocation(line: 525, column: 15, scope: !5717)
!5726 = !DILocation(line: 525, column: 24, scope: !5717)
!5727 = !DILocation(line: 525, column: 38, scope: !5717)
!5728 = !DILocation(line: 525, column: 7, scope: !5717)
!5729 = !DILocation(line: 525, column: 3, scope: !5717)
!5730 = !DILocation(line: 527, column: 6, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5660, file: !1, line: 527, column: 6)
!5732 = !DILocation(line: 527, column: 6, scope: !5660)
!5733 = !DILocation(line: 528, column: 3, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5731, file: !1, line: 527, column: 11)
!5735 = !DILocation(line: 528, column: 9, scope: !5734)
!5736 = !DILocation(line: 528, column: 18, scope: !5734)
!5737 = !DILocation(line: 529, column: 28, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5734, file: !1, line: 529, column: 7)
!5739 = !DILocation(line: 529, column: 34, scope: !5738)
!5740 = !DILocation(line: 529, column: 40, scope: !5738)
!5741 = !DILocation(line: 529, column: 46, scope: !5738)
!5742 = !DILocation(line: 529, column: 51, scope: !5738)
!5743 = !DILocation(line: 529, column: 8, scope: !5738)
!5744 = !DILocation(line: 529, column: 7, scope: !5734)
!5745 = !DILocation(line: 530, column: 8, scope: !5738)
!5746 = !DILocation(line: 530, column: 4, scope: !5738)
!5747 = !DILocation(line: 532, column: 8, scope: !5738)
!5748 = !DILocation(line: 533, column: 2, scope: !5734)
!5749 = !DILocation(line: 535, column: 6, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5660, file: !1, line: 535, column: 6)
!5751 = !DILocation(line: 535, column: 6, scope: !5660)
!5752 = !DILocation(line: 536, column: 9, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5750, file: !1, line: 535, column: 11)
!5754 = !DILocation(line: 536, column: 3, scope: !5753)
!5755 = !DILocation(line: 537, column: 18, scope: !5753)
!5756 = !DILocation(line: 537, column: 10, scope: !5753)
!5757 = !DILocation(line: 537, column: 3, scope: !5753)
!5758 = !DILocation(line: 540, column: 9, scope: !5660)
!5759 = !DILocation(line: 540, column: 2, scope: !5660)
!5760 = !DILocation(line: 541, column: 1, scope: !5660)
!5761 = distinct !DISubprogram(name: "ERR_PTR", scope: !5762, file: !5762, line: 24, type: !5763, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5762 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!191, !308}
!5765 = !DILocalVariable(name: "error", arg: 1, scope: !5761, file: !5762, line: 24, type: !308)
!5766 = !DILocation(line: 24, column: 48, scope: !5761)
!5767 = !DILocation(line: 26, column: 18, scope: !5761)
!5768 = !DILocation(line: 26, column: 9, scope: !5761)
!5769 = !DILocation(line: 26, column: 2, scope: !5761)
!5770 = distinct !DISubprogram(name: "spi_mem_dirmap_destroy", scope: !1, file: !1, line: 551, type: !4084, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5771 = !DILocalVariable(name: "desc", arg: 1, scope: !5770, file: !1, line: 551, type: !200)
!5772 = !DILocation(line: 551, column: 57, scope: !5770)
!5773 = !DILocalVariable(name: "ctlr", scope: !5770, file: !1, line: 553, type: !3848)
!5774 = !DILocation(line: 553, column: 25, scope: !5770)
!5775 = !DILocation(line: 553, column: 32, scope: !5770)
!5776 = !DILocation(line: 553, column: 38, scope: !5770)
!5777 = !DILocation(line: 553, column: 43, scope: !5770)
!5778 = !DILocation(line: 553, column: 48, scope: !5770)
!5779 = !DILocation(line: 555, column: 7, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5770, file: !1, line: 555, column: 6)
!5781 = !DILocation(line: 555, column: 13, scope: !5780)
!5782 = !DILocation(line: 555, column: 22, scope: !5780)
!5783 = !DILocation(line: 555, column: 25, scope: !5780)
!5784 = !DILocation(line: 555, column: 31, scope: !5780)
!5785 = !DILocation(line: 555, column: 39, scope: !5780)
!5786 = !DILocation(line: 555, column: 42, scope: !5780)
!5787 = !DILocation(line: 555, column: 48, scope: !5780)
!5788 = !DILocation(line: 555, column: 57, scope: !5780)
!5789 = !DILocation(line: 555, column: 6, scope: !5770)
!5790 = !DILocation(line: 556, column: 3, scope: !5780)
!5791 = !DILocation(line: 556, column: 9, scope: !5780)
!5792 = !DILocation(line: 556, column: 18, scope: !5780)
!5793 = !DILocation(line: 556, column: 33, scope: !5780)
!5794 = !DILocation(line: 558, column: 8, scope: !5770)
!5795 = !DILocation(line: 558, column: 2, scope: !5770)
!5796 = !DILocation(line: 559, column: 1, scope: !5770)
!5797 = distinct !DISubprogram(name: "devm_spi_mem_dirmap_create", scope: !1, file: !1, line: 582, type: !5798, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!200, !3401, !204, !5663}
!5800 = !DILocalVariable(name: "dev", arg: 1, scope: !5797, file: !1, line: 582, type: !3401)
!5801 = !DILocation(line: 582, column: 43, scope: !5797)
!5802 = !DILocalVariable(name: "mem", arg: 2, scope: !5797, file: !1, line: 582, type: !204)
!5803 = !DILocation(line: 582, column: 64, scope: !5797)
!5804 = !DILocalVariable(name: "info", arg: 3, scope: !5797, file: !1, line: 583, type: !5663)
!5805 = !DILocation(line: 583, column: 41, scope: !5797)
!5806 = !DILocalVariable(name: "ptr", scope: !5797, file: !1, line: 585, type: !199)
!5807 = !DILocation(line: 585, column: 31, scope: !5797)
!5808 = !DILocalVariable(name: "desc", scope: !5797, file: !1, line: 585, type: !200)
!5809 = !DILocation(line: 585, column: 37, scope: !5797)
!5810 = !DILocation(line: 587, column: 8, scope: !5797)
!5811 = !DILocation(line: 587, column: 6, scope: !5797)
!5812 = !DILocation(line: 589, column: 7, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5797, file: !1, line: 589, column: 6)
!5814 = !DILocation(line: 589, column: 6, scope: !5797)
!5815 = !DILocation(line: 590, column: 10, scope: !5813)
!5816 = !DILocation(line: 590, column: 3, scope: !5813)
!5817 = !DILocation(line: 592, column: 31, scope: !5797)
!5818 = !DILocation(line: 592, column: 36, scope: !5797)
!5819 = !DILocation(line: 592, column: 9, scope: !5797)
!5820 = !DILocation(line: 592, column: 7, scope: !5797)
!5821 = !DILocation(line: 593, column: 13, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5797, file: !1, line: 593, column: 6)
!5823 = !DILocation(line: 593, column: 6, scope: !5822)
!5824 = !DILocation(line: 593, column: 6, scope: !5797)
!5825 = !DILocation(line: 594, column: 15, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5822, file: !1, line: 593, column: 20)
!5827 = !DILocation(line: 594, column: 3, scope: !5826)
!5828 = !DILocation(line: 595, column: 2, scope: !5826)
!5829 = !DILocation(line: 596, column: 10, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5822, file: !1, line: 595, column: 9)
!5831 = !DILocation(line: 596, column: 4, scope: !5830)
!5832 = !DILocation(line: 596, column: 8, scope: !5830)
!5833 = !DILocation(line: 597, column: 14, scope: !5830)
!5834 = !DILocation(line: 597, column: 19, scope: !5830)
!5835 = !DILocation(line: 597, column: 3, scope: !5830)
!5836 = !DILocation(line: 600, column: 9, scope: !5797)
!5837 = !DILocation(line: 600, column: 2, scope: !5797)
!5838 = !DILocation(line: 601, column: 1, scope: !5797)
!5839 = distinct !DISubprogram(name: "devres_alloc", scope: !71, file: !71, line: 178, type: !5840, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5840 = !DISubroutineType(types: !5841)
!5841 = !{!191, !5842, !186, !184}
!5842 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !71, line: 165, baseType: !4405)
!5843 = !DILocalVariable(name: "release", arg: 1, scope: !5839, file: !71, line: 178, type: !5842)
!5844 = !DILocation(line: 178, column: 47, scope: !5839)
!5845 = !DILocalVariable(name: "size", arg: 2, scope: !5839, file: !71, line: 178, type: !186)
!5846 = !DILocation(line: 178, column: 63, scope: !5839)
!5847 = !DILocalVariable(name: "gfp", arg: 3, scope: !5839, file: !71, line: 178, type: !184)
!5848 = !DILocation(line: 178, column: 75, scope: !5839)
!5849 = !DILocation(line: 180, column: 27, scope: !5839)
!5850 = !DILocation(line: 180, column: 36, scope: !5839)
!5851 = !DILocation(line: 180, column: 42, scope: !5839)
!5852 = !DILocation(line: 180, column: 9, scope: !5839)
!5853 = !DILocation(line: 180, column: 2, scope: !5839)
!5854 = distinct !DISubprogram(name: "devm_spi_mem_dirmap_release", scope: !1, file: !1, line: 562, type: !4406, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5855 = !DILocalVariable(name: "dev", arg: 1, scope: !5854, file: !1, line: 562, type: !3401)
!5856 = !DILocation(line: 562, column: 56, scope: !5854)
!5857 = !DILocalVariable(name: "res", arg: 2, scope: !5854, file: !1, line: 562, type: !191)
!5858 = !DILocation(line: 562, column: 67, scope: !5854)
!5859 = !DILocalVariable(name: "desc", scope: !5854, file: !1, line: 564, type: !200)
!5860 = !DILocation(line: 564, column: 30, scope: !5854)
!5861 = !DILocation(line: 564, column: 69, scope: !5854)
!5862 = !DILocation(line: 564, column: 38, scope: !5854)
!5863 = !DILocation(line: 564, column: 37, scope: !5854)
!5864 = !DILocation(line: 566, column: 25, scope: !5854)
!5865 = !DILocation(line: 566, column: 2, scope: !5854)
!5866 = !DILocation(line: 567, column: 1, scope: !5854)
!5867 = distinct !DISubprogram(name: "IS_ERR", scope: !5762, file: !5762, line: 34, type: !5868, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5868 = !DISubroutineType(types: !5869)
!5869 = !{!485, !2147}
!5870 = !DILocalVariable(name: "ptr", arg: 1, scope: !5867, file: !5762, line: 34, type: !2147)
!5871 = !DILocation(line: 34, column: 60, scope: !5867)
!5872 = !DILocation(line: 36, column: 9, scope: !5867)
!5873 = !DILocation(line: 36, column: 2, scope: !5867)
!5874 = distinct !DISubprogram(name: "devm_spi_mem_dirmap_destroy", scope: !1, file: !1, line: 623, type: !5875, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{null, !3401, !200}
!5877 = !DILocalVariable(name: "dev", arg: 1, scope: !5874, file: !1, line: 623, type: !3401)
!5878 = !DILocation(line: 623, column: 49, scope: !5874)
!5879 = !DILocalVariable(name: "desc", arg: 2, scope: !5874, file: !1, line: 624, type: !200)
!5880 = !DILocation(line: 624, column: 34, scope: !5874)
!5881 = !DILocation(line: 626, column: 17, scope: !5874)
!5882 = !DILocation(line: 627, column: 37, scope: !5874)
!5883 = !DILocation(line: 626, column: 2, scope: !5874)
!5884 = !DILocation(line: 628, column: 1, scope: !5874)
!5885 = distinct !DISubprogram(name: "devm_spi_mem_dirmap_match", scope: !1, file: !1, line: 604, type: !5886, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{!258, !3401, !191, !191}
!5888 = !DILocalVariable(name: "dev", arg: 1, scope: !5885, file: !1, line: 604, type: !3401)
!5889 = !DILocation(line: 604, column: 53, scope: !5885)
!5890 = !DILocalVariable(name: "res", arg: 2, scope: !5885, file: !1, line: 604, type: !191)
!5891 = !DILocation(line: 604, column: 64, scope: !5885)
!5892 = !DILocalVariable(name: "data", arg: 3, scope: !5885, file: !1, line: 604, type: !191)
!5893 = !DILocation(line: 604, column: 75, scope: !5885)
!5894 = !DILocalVariable(name: "ptr", scope: !5885, file: !1, line: 606, type: !199)
!5895 = !DILocation(line: 606, column: 38, scope: !5885)
!5896 = !DILocation(line: 606, column: 44, scope: !5885)
!5897 = !DILocalVariable(name: "__ret_warn_on", scope: !5898, file: !1, line: 608, type: !258)
!5898 = distinct !DILexicalBlock(scope: !5899, file: !1, line: 608, column: 13)
!5899 = distinct !DILexicalBlock(scope: !5885, file: !1, line: 608, column: 13)
!5900 = !DILocation(line: 608, column: 13, scope: !5898)
!5901 = !DILocation(line: 608, column: 13, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5898, file: !1, line: 608, column: 13)
!5903 = !DILocation(line: 608, column: 13, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5902, file: !1, line: 608, column: 13)
!5905 = !DILocation(line: 608, column: 13, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5904, file: !1, line: 608, column: 13)
!5907 = !DILocation(line: 608, column: 13, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5904, file: !1, line: 608, column: 13)
!5909 = !{i32 -2141993875, i32 -2141993846, i32 -2141993800, i32 -2141993742, i32 -2141993688, i32 -2141993634, i32 -2141993579, i32 -2141993548}
!5910 = !DILocation(line: 608, column: 13, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5904, file: !1, line: 608, column: 13)
!5912 = !{i32 -2141993145, i32 -2141993138, i32 -2141993086, i32 -2141993055, i32 -2141993025}
!5913 = !DILocation(line: 608, column: 13, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5904, file: !1, line: 608, column: 13)
!5915 = !DILocation(line: 608, column: 13, scope: !5899)
!5916 = !DILocation(line: 608, column: 13, scope: !5885)
!5917 = !DILocation(line: 609, column: 17, scope: !5899)
!5918 = !DILocation(line: 611, column: 10, scope: !5885)
!5919 = !DILocation(line: 611, column: 9, scope: !5885)
!5920 = !DILocation(line: 611, column: 17, scope: !5885)
!5921 = !DILocation(line: 611, column: 14, scope: !5885)
!5922 = !DILocation(line: 611, column: 2, scope: !5885)
!5923 = !DILocation(line: 612, column: 1, scope: !5885)
!5924 = distinct !DISubprogram(name: "spi_mem_dirmap_read", scope: !1, file: !1, line: 647, type: !4088, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!5925 = !DILocalVariable(name: "desc", arg: 1, scope: !5924, file: !1, line: 647, type: !200)
!5926 = !DILocation(line: 647, column: 57, scope: !5924)
!5927 = !DILocalVariable(name: "offs", arg: 2, scope: !5924, file: !1, line: 648, type: !416)
!5928 = !DILocation(line: 648, column: 12, scope: !5924)
!5929 = !DILocalVariable(name: "len", arg: 3, scope: !5924, file: !1, line: 648, type: !186)
!5930 = !DILocation(line: 648, column: 25, scope: !5924)
!5931 = !DILocalVariable(name: "buf", arg: 4, scope: !5924, file: !1, line: 648, type: !191)
!5932 = !DILocation(line: 648, column: 36, scope: !5924)
!5933 = !DILocalVariable(name: "ctlr", scope: !5924, file: !1, line: 650, type: !3848)
!5934 = !DILocation(line: 650, column: 25, scope: !5924)
!5935 = !DILocation(line: 650, column: 32, scope: !5924)
!5936 = !DILocation(line: 650, column: 38, scope: !5924)
!5937 = !DILocation(line: 650, column: 43, scope: !5924)
!5938 = !DILocation(line: 650, column: 48, scope: !5924)
!5939 = !DILocalVariable(name: "ret", scope: !5924, file: !1, line: 651, type: !305)
!5940 = !DILocation(line: 651, column: 10, scope: !5924)
!5941 = !DILocation(line: 653, column: 6, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5924, file: !1, line: 653, column: 6)
!5943 = !DILocation(line: 653, column: 12, scope: !5942)
!5944 = !DILocation(line: 653, column: 17, scope: !5942)
!5945 = !DILocation(line: 653, column: 25, scope: !5942)
!5946 = !DILocation(line: 653, column: 30, scope: !5942)
!5947 = !DILocation(line: 653, column: 34, scope: !5942)
!5948 = !DILocation(line: 653, column: 6, scope: !5924)
!5949 = !DILocation(line: 654, column: 3, scope: !5942)
!5950 = !DILocation(line: 656, column: 7, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5924, file: !1, line: 656, column: 6)
!5952 = !DILocation(line: 656, column: 6, scope: !5924)
!5953 = !DILocation(line: 657, column: 3, scope: !5951)
!5954 = !DILocation(line: 659, column: 6, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5924, file: !1, line: 659, column: 6)
!5956 = !DILocation(line: 659, column: 12, scope: !5955)
!5957 = !DILocation(line: 659, column: 6, scope: !5924)
!5958 = !DILocation(line: 660, column: 32, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5955, file: !1, line: 659, column: 22)
!5960 = !DILocation(line: 660, column: 38, scope: !5959)
!5961 = !DILocation(line: 660, column: 44, scope: !5959)
!5962 = !DILocation(line: 660, column: 49, scope: !5959)
!5963 = !DILocation(line: 660, column: 9, scope: !5959)
!5964 = !DILocation(line: 660, column: 7, scope: !5959)
!5965 = !DILocation(line: 661, column: 2, scope: !5959)
!5966 = !DILocation(line: 661, column: 13, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5955, file: !1, line: 661, column: 13)
!5968 = !DILocation(line: 661, column: 19, scope: !5967)
!5969 = !DILocation(line: 661, column: 27, scope: !5967)
!5970 = !DILocation(line: 661, column: 30, scope: !5967)
!5971 = !DILocation(line: 661, column: 36, scope: !5967)
!5972 = !DILocation(line: 661, column: 45, scope: !5967)
!5973 = !DILocation(line: 661, column: 13, scope: !5955)
!5974 = !DILocation(line: 662, column: 30, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5967, file: !1, line: 661, column: 58)
!5976 = !DILocation(line: 662, column: 36, scope: !5975)
!5977 = !DILocation(line: 662, column: 9, scope: !5975)
!5978 = !DILocation(line: 662, column: 7, scope: !5975)
!5979 = !DILocation(line: 663, column: 7, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5975, file: !1, line: 663, column: 7)
!5981 = !DILocation(line: 663, column: 7, scope: !5975)
!5982 = !DILocation(line: 664, column: 11, scope: !5980)
!5983 = !DILocation(line: 664, column: 4, scope: !5980)
!5984 = !DILocation(line: 666, column: 9, scope: !5975)
!5985 = !DILocation(line: 666, column: 15, scope: !5975)
!5986 = !DILocation(line: 666, column: 24, scope: !5975)
!5987 = !DILocation(line: 666, column: 36, scope: !5975)
!5988 = !DILocation(line: 666, column: 42, scope: !5975)
!5989 = !DILocation(line: 666, column: 48, scope: !5975)
!5990 = !DILocation(line: 666, column: 53, scope: !5975)
!5991 = !DILocation(line: 666, column: 7, scope: !5975)
!5992 = !DILocation(line: 668, column: 22, scope: !5975)
!5993 = !DILocation(line: 668, column: 28, scope: !5975)
!5994 = !DILocation(line: 668, column: 3, scope: !5975)
!5995 = !DILocation(line: 669, column: 2, scope: !5975)
!5996 = !DILocation(line: 670, column: 7, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5967, file: !1, line: 669, column: 9)
!5998 = !DILocation(line: 673, column: 9, scope: !5924)
!5999 = !DILocation(line: 673, column: 2, scope: !5924)
!6000 = !DILocation(line: 674, column: 1, scope: !5924)
!6001 = distinct !DISubprogram(name: "spi_mem_no_dirmap_read", scope: !1, file: !1, line: 449, type: !4088, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6002 = !DILocalVariable(name: "desc", arg: 1, scope: !6001, file: !1, line: 449, type: !200)
!6003 = !DILocation(line: 449, column: 67, scope: !6001)
!6004 = !DILocalVariable(name: "offs", arg: 2, scope: !6001, file: !1, line: 450, type: !416)
!6005 = !DILocation(line: 450, column: 15, scope: !6001)
!6006 = !DILocalVariable(name: "len", arg: 3, scope: !6001, file: !1, line: 450, type: !186)
!6007 = !DILocation(line: 450, column: 28, scope: !6001)
!6008 = !DILocalVariable(name: "buf", arg: 4, scope: !6001, file: !1, line: 450, type: !191)
!6009 = !DILocation(line: 450, column: 39, scope: !6001)
!6010 = !DILocalVariable(name: "op", scope: !6001, file: !1, line: 452, type: !4030)
!6011 = !DILocation(line: 452, column: 20, scope: !6001)
!6012 = !DILocation(line: 452, column: 25, scope: !6001)
!6013 = !DILocation(line: 452, column: 31, scope: !6001)
!6014 = !DILocation(line: 452, column: 36, scope: !6001)
!6015 = !DILocalVariable(name: "ret", scope: !6001, file: !1, line: 453, type: !258)
!6016 = !DILocation(line: 453, column: 6, scope: !6001)
!6017 = !DILocation(line: 455, column: 16, scope: !6001)
!6018 = !DILocation(line: 455, column: 22, scope: !6001)
!6019 = !DILocation(line: 455, column: 27, scope: !6001)
!6020 = !DILocation(line: 455, column: 36, scope: !6001)
!6021 = !DILocation(line: 455, column: 34, scope: !6001)
!6022 = !DILocation(line: 455, column: 5, scope: !6001)
!6023 = !DILocation(line: 455, column: 10, scope: !6001)
!6024 = !DILocation(line: 455, column: 14, scope: !6001)
!6025 = !DILocation(line: 456, column: 19, scope: !6001)
!6026 = !DILocation(line: 456, column: 5, scope: !6001)
!6027 = !DILocation(line: 456, column: 10, scope: !6001)
!6028 = !DILocation(line: 456, column: 14, scope: !6001)
!6029 = !DILocation(line: 456, column: 17, scope: !6001)
!6030 = !DILocation(line: 457, column: 19, scope: !6001)
!6031 = !DILocation(line: 457, column: 5, scope: !6001)
!6032 = !DILocation(line: 457, column: 10, scope: !6001)
!6033 = !DILocation(line: 457, column: 17, scope: !6001)
!6034 = !DILocation(line: 458, column: 31, scope: !6001)
!6035 = !DILocation(line: 458, column: 37, scope: !6001)
!6036 = !DILocation(line: 458, column: 8, scope: !6001)
!6037 = !DILocation(line: 458, column: 6, scope: !6001)
!6038 = !DILocation(line: 459, column: 6, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6001, file: !1, line: 459, column: 6)
!6040 = !DILocation(line: 459, column: 6, scope: !6001)
!6041 = !DILocation(line: 460, column: 10, scope: !6039)
!6042 = !DILocation(line: 460, column: 3, scope: !6039)
!6043 = !DILocation(line: 462, column: 24, scope: !6001)
!6044 = !DILocation(line: 462, column: 30, scope: !6001)
!6045 = !DILocation(line: 462, column: 8, scope: !6001)
!6046 = !DILocation(line: 462, column: 6, scope: !6001)
!6047 = !DILocation(line: 463, column: 6, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6001, file: !1, line: 463, column: 6)
!6049 = !DILocation(line: 463, column: 6, scope: !6001)
!6050 = !DILocation(line: 464, column: 10, scope: !6048)
!6051 = !DILocation(line: 464, column: 3, scope: !6048)
!6052 = !DILocation(line: 466, column: 12, scope: !6001)
!6053 = !DILocation(line: 466, column: 17, scope: !6001)
!6054 = !DILocation(line: 466, column: 9, scope: !6001)
!6055 = !DILocation(line: 466, column: 2, scope: !6001)
!6056 = !DILocation(line: 467, column: 1, scope: !6001)
!6057 = distinct !DISubprogram(name: "spi_mem_dirmap_write", scope: !1, file: !1, line: 693, type: !4092, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6058 = !DILocalVariable(name: "desc", arg: 1, scope: !6057, file: !1, line: 693, type: !200)
!6059 = !DILocation(line: 693, column: 58, scope: !6057)
!6060 = !DILocalVariable(name: "offs", arg: 2, scope: !6057, file: !1, line: 694, type: !416)
!6061 = !DILocation(line: 694, column: 13, scope: !6057)
!6062 = !DILocalVariable(name: "len", arg: 3, scope: !6057, file: !1, line: 694, type: !186)
!6063 = !DILocation(line: 694, column: 26, scope: !6057)
!6064 = !DILocalVariable(name: "buf", arg: 4, scope: !6057, file: !1, line: 694, type: !2147)
!6065 = !DILocation(line: 694, column: 43, scope: !6057)
!6066 = !DILocalVariable(name: "ctlr", scope: !6057, file: !1, line: 696, type: !3848)
!6067 = !DILocation(line: 696, column: 25, scope: !6057)
!6068 = !DILocation(line: 696, column: 32, scope: !6057)
!6069 = !DILocation(line: 696, column: 38, scope: !6057)
!6070 = !DILocation(line: 696, column: 43, scope: !6057)
!6071 = !DILocation(line: 696, column: 48, scope: !6057)
!6072 = !DILocalVariable(name: "ret", scope: !6057, file: !1, line: 697, type: !305)
!6073 = !DILocation(line: 697, column: 10, scope: !6057)
!6074 = !DILocation(line: 699, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6057, file: !1, line: 699, column: 6)
!6076 = !DILocation(line: 699, column: 12, scope: !6075)
!6077 = !DILocation(line: 699, column: 17, scope: !6075)
!6078 = !DILocation(line: 699, column: 25, scope: !6075)
!6079 = !DILocation(line: 699, column: 30, scope: !6075)
!6080 = !DILocation(line: 699, column: 34, scope: !6075)
!6081 = !DILocation(line: 699, column: 6, scope: !6057)
!6082 = !DILocation(line: 700, column: 3, scope: !6075)
!6083 = !DILocation(line: 702, column: 7, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6057, file: !1, line: 702, column: 6)
!6085 = !DILocation(line: 702, column: 6, scope: !6057)
!6086 = !DILocation(line: 703, column: 3, scope: !6084)
!6087 = !DILocation(line: 705, column: 6, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6057, file: !1, line: 705, column: 6)
!6089 = !DILocation(line: 705, column: 12, scope: !6088)
!6090 = !DILocation(line: 705, column: 6, scope: !6057)
!6091 = !DILocation(line: 706, column: 33, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6088, file: !1, line: 705, column: 22)
!6093 = !DILocation(line: 706, column: 39, scope: !6092)
!6094 = !DILocation(line: 706, column: 45, scope: !6092)
!6095 = !DILocation(line: 706, column: 50, scope: !6092)
!6096 = !DILocation(line: 706, column: 9, scope: !6092)
!6097 = !DILocation(line: 706, column: 7, scope: !6092)
!6098 = !DILocation(line: 707, column: 2, scope: !6092)
!6099 = !DILocation(line: 707, column: 13, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6088, file: !1, line: 707, column: 13)
!6101 = !DILocation(line: 707, column: 19, scope: !6100)
!6102 = !DILocation(line: 707, column: 27, scope: !6100)
!6103 = !DILocation(line: 707, column: 30, scope: !6100)
!6104 = !DILocation(line: 707, column: 36, scope: !6100)
!6105 = !DILocation(line: 707, column: 45, scope: !6100)
!6106 = !DILocation(line: 707, column: 13, scope: !6088)
!6107 = !DILocation(line: 708, column: 30, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6100, file: !1, line: 707, column: 59)
!6109 = !DILocation(line: 708, column: 36, scope: !6108)
!6110 = !DILocation(line: 708, column: 9, scope: !6108)
!6111 = !DILocation(line: 708, column: 7, scope: !6108)
!6112 = !DILocation(line: 709, column: 7, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6108, file: !1, line: 709, column: 7)
!6114 = !DILocation(line: 709, column: 7, scope: !6108)
!6115 = !DILocation(line: 710, column: 11, scope: !6113)
!6116 = !DILocation(line: 710, column: 4, scope: !6113)
!6117 = !DILocation(line: 712, column: 9, scope: !6108)
!6118 = !DILocation(line: 712, column: 15, scope: !6108)
!6119 = !DILocation(line: 712, column: 24, scope: !6108)
!6120 = !DILocation(line: 712, column: 37, scope: !6108)
!6121 = !DILocation(line: 712, column: 43, scope: !6108)
!6122 = !DILocation(line: 712, column: 49, scope: !6108)
!6123 = !DILocation(line: 712, column: 54, scope: !6108)
!6124 = !DILocation(line: 712, column: 7, scope: !6108)
!6125 = !DILocation(line: 714, column: 22, scope: !6108)
!6126 = !DILocation(line: 714, column: 28, scope: !6108)
!6127 = !DILocation(line: 714, column: 3, scope: !6108)
!6128 = !DILocation(line: 715, column: 2, scope: !6108)
!6129 = !DILocation(line: 716, column: 7, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6100, file: !1, line: 715, column: 9)
!6131 = !DILocation(line: 719, column: 9, scope: !6057)
!6132 = !DILocation(line: 719, column: 2, scope: !6057)
!6133 = !DILocation(line: 720, column: 1, scope: !6057)
!6134 = distinct !DISubprogram(name: "spi_mem_no_dirmap_write", scope: !1, file: !1, line: 469, type: !4092, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6135 = !DILocalVariable(name: "desc", arg: 1, scope: !6134, file: !1, line: 469, type: !200)
!6136 = !DILocation(line: 469, column: 68, scope: !6134)
!6137 = !DILocalVariable(name: "offs", arg: 2, scope: !6134, file: !1, line: 470, type: !416)
!6138 = !DILocation(line: 470, column: 16, scope: !6134)
!6139 = !DILocalVariable(name: "len", arg: 3, scope: !6134, file: !1, line: 470, type: !186)
!6140 = !DILocation(line: 470, column: 29, scope: !6134)
!6141 = !DILocalVariable(name: "buf", arg: 4, scope: !6134, file: !1, line: 470, type: !2147)
!6142 = !DILocation(line: 470, column: 46, scope: !6134)
!6143 = !DILocalVariable(name: "op", scope: !6134, file: !1, line: 472, type: !4030)
!6144 = !DILocation(line: 472, column: 20, scope: !6134)
!6145 = !DILocation(line: 472, column: 25, scope: !6134)
!6146 = !DILocation(line: 472, column: 31, scope: !6134)
!6147 = !DILocation(line: 472, column: 36, scope: !6134)
!6148 = !DILocalVariable(name: "ret", scope: !6134, file: !1, line: 473, type: !258)
!6149 = !DILocation(line: 473, column: 6, scope: !6134)
!6150 = !DILocation(line: 475, column: 16, scope: !6134)
!6151 = !DILocation(line: 475, column: 22, scope: !6134)
!6152 = !DILocation(line: 475, column: 27, scope: !6134)
!6153 = !DILocation(line: 475, column: 36, scope: !6134)
!6154 = !DILocation(line: 475, column: 34, scope: !6134)
!6155 = !DILocation(line: 475, column: 5, scope: !6134)
!6156 = !DILocation(line: 475, column: 10, scope: !6134)
!6157 = !DILocation(line: 475, column: 14, scope: !6134)
!6158 = !DILocation(line: 476, column: 20, scope: !6134)
!6159 = !DILocation(line: 476, column: 5, scope: !6134)
!6160 = !DILocation(line: 476, column: 10, scope: !6134)
!6161 = !DILocation(line: 476, column: 14, scope: !6134)
!6162 = !DILocation(line: 476, column: 18, scope: !6134)
!6163 = !DILocation(line: 477, column: 19, scope: !6134)
!6164 = !DILocation(line: 477, column: 5, scope: !6134)
!6165 = !DILocation(line: 477, column: 10, scope: !6134)
!6166 = !DILocation(line: 477, column: 17, scope: !6134)
!6167 = !DILocation(line: 478, column: 31, scope: !6134)
!6168 = !DILocation(line: 478, column: 37, scope: !6134)
!6169 = !DILocation(line: 478, column: 8, scope: !6134)
!6170 = !DILocation(line: 478, column: 6, scope: !6134)
!6171 = !DILocation(line: 479, column: 6, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6134, file: !1, line: 479, column: 6)
!6173 = !DILocation(line: 479, column: 6, scope: !6134)
!6174 = !DILocation(line: 480, column: 10, scope: !6172)
!6175 = !DILocation(line: 480, column: 3, scope: !6172)
!6176 = !DILocation(line: 482, column: 24, scope: !6134)
!6177 = !DILocation(line: 482, column: 30, scope: !6134)
!6178 = !DILocation(line: 482, column: 8, scope: !6134)
!6179 = !DILocation(line: 482, column: 6, scope: !6134)
!6180 = !DILocation(line: 483, column: 6, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6134, file: !1, line: 483, column: 6)
!6182 = !DILocation(line: 483, column: 6, scope: !6134)
!6183 = !DILocation(line: 484, column: 10, scope: !6181)
!6184 = !DILocation(line: 484, column: 3, scope: !6181)
!6185 = !DILocation(line: 486, column: 12, scope: !6134)
!6186 = !DILocation(line: 486, column: 17, scope: !6134)
!6187 = !DILocation(line: 486, column: 9, scope: !6134)
!6188 = !DILocation(line: 486, column: 2, scope: !6134)
!6189 = !DILocation(line: 487, column: 1, scope: !6134)
!6190 = distinct !DISubprogram(name: "spi_mem_driver_register_with_owner", scope: !1, file: !1, line: 783, type: !6191, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{!258, !4444, !628}
!6193 = !DILocalVariable(name: "memdrv", arg: 1, scope: !6190, file: !1, line: 783, type: !4444)
!6194 = !DILocation(line: 783, column: 63, scope: !6190)
!6195 = !DILocalVariable(name: "owner", arg: 2, scope: !6190, file: !1, line: 784, type: !628)
!6196 = !DILocation(line: 784, column: 27, scope: !6190)
!6197 = !DILocation(line: 786, column: 2, scope: !6190)
!6198 = !DILocation(line: 786, column: 10, scope: !6190)
!6199 = !DILocation(line: 786, column: 17, scope: !6190)
!6200 = !DILocation(line: 786, column: 23, scope: !6190)
!6201 = !DILocation(line: 787, column: 2, scope: !6190)
!6202 = !DILocation(line: 787, column: 10, scope: !6190)
!6203 = !DILocation(line: 787, column: 17, scope: !6190)
!6204 = !DILocation(line: 787, column: 24, scope: !6190)
!6205 = !DILocation(line: 788, column: 2, scope: !6190)
!6206 = !DILocation(line: 788, column: 10, scope: !6190)
!6207 = !DILocation(line: 788, column: 17, scope: !6190)
!6208 = !DILocation(line: 788, column: 26, scope: !6190)
!6209 = !DILocation(line: 790, column: 31, scope: !6190)
!6210 = !DILocation(line: 790, column: 39, scope: !6190)
!6211 = !DILocation(line: 790, column: 47, scope: !6190)
!6212 = !DILocation(line: 790, column: 9, scope: !6190)
!6213 = !DILocation(line: 790, column: 2, scope: !6190)
!6214 = distinct !DISubprogram(name: "spi_mem_probe", scope: !1, file: !1, line: 728, type: !3874, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6215 = !DILocalVariable(name: "spi", arg: 1, scope: !6214, file: !1, line: 728, type: !208)
!6216 = !DILocation(line: 728, column: 45, scope: !6214)
!6217 = !DILocalVariable(name: "memdrv", scope: !6214, file: !1, line: 730, type: !4444)
!6218 = !DILocation(line: 730, column: 25, scope: !6214)
!6219 = !DILocation(line: 730, column: 49, scope: !6214)
!6220 = !DILocation(line: 730, column: 54, scope: !6214)
!6221 = !DILocation(line: 730, column: 58, scope: !6214)
!6222 = !DILocation(line: 730, column: 34, scope: !6214)
!6223 = !DILocalVariable(name: "ctlr", scope: !6214, file: !1, line: 731, type: !3848)
!6224 = !DILocation(line: 731, column: 25, scope: !6214)
!6225 = !DILocation(line: 731, column: 32, scope: !6214)
!6226 = !DILocation(line: 731, column: 37, scope: !6214)
!6227 = !DILocalVariable(name: "mem", scope: !6214, file: !1, line: 732, type: !204)
!6228 = !DILocation(line: 732, column: 18, scope: !6214)
!6229 = !DILocation(line: 734, column: 22, scope: !6214)
!6230 = !DILocation(line: 734, column: 27, scope: !6214)
!6231 = !DILocation(line: 734, column: 8, scope: !6214)
!6232 = !DILocation(line: 734, column: 6, scope: !6214)
!6233 = !DILocation(line: 735, column: 7, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6214, file: !1, line: 735, column: 6)
!6235 = !DILocation(line: 735, column: 6, scope: !6214)
!6236 = !DILocation(line: 736, column: 3, scope: !6234)
!6237 = !DILocation(line: 738, column: 13, scope: !6214)
!6238 = !DILocation(line: 738, column: 2, scope: !6214)
!6239 = !DILocation(line: 738, column: 7, scope: !6214)
!6240 = !DILocation(line: 738, column: 11, scope: !6214)
!6241 = !DILocation(line: 740, column: 6, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6214, file: !1, line: 740, column: 6)
!6243 = !DILocation(line: 740, column: 12, scope: !6242)
!6244 = !DILocation(line: 740, column: 20, scope: !6242)
!6245 = !DILocation(line: 740, column: 23, scope: !6242)
!6246 = !DILocation(line: 740, column: 29, scope: !6242)
!6247 = !DILocation(line: 740, column: 38, scope: !6242)
!6248 = !DILocation(line: 740, column: 6, scope: !6214)
!6249 = !DILocation(line: 741, column: 15, scope: !6242)
!6250 = !DILocation(line: 741, column: 21, scope: !6242)
!6251 = !DILocation(line: 741, column: 30, scope: !6242)
!6252 = !DILocation(line: 741, column: 39, scope: !6242)
!6253 = !DILocation(line: 741, column: 3, scope: !6242)
!6254 = !DILocation(line: 741, column: 8, scope: !6242)
!6255 = !DILocation(line: 741, column: 13, scope: !6242)
!6256 = !DILocation(line: 743, column: 25, scope: !6242)
!6257 = !DILocation(line: 743, column: 30, scope: !6242)
!6258 = !DILocation(line: 743, column: 15, scope: !6242)
!6259 = !DILocation(line: 743, column: 3, scope: !6242)
!6260 = !DILocation(line: 743, column: 8, scope: !6242)
!6261 = !DILocation(line: 743, column: 13, scope: !6242)
!6262 = !DILocation(line: 745, column: 21, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6214, file: !1, line: 745, column: 6)
!6264 = !DILocation(line: 745, column: 26, scope: !6263)
!6265 = !DILocation(line: 745, column: 6, scope: !6263)
!6266 = !DILocation(line: 745, column: 6, scope: !6214)
!6267 = !DILocation(line: 746, column: 18, scope: !6263)
!6268 = !DILocation(line: 746, column: 23, scope: !6263)
!6269 = !DILocation(line: 746, column: 10, scope: !6263)
!6270 = !DILocation(line: 746, column: 3, scope: !6263)
!6271 = !DILocation(line: 748, column: 18, scope: !6214)
!6272 = !DILocation(line: 748, column: 23, scope: !6214)
!6273 = !DILocation(line: 748, column: 2, scope: !6214)
!6274 = !DILocation(line: 750, column: 9, scope: !6214)
!6275 = !DILocation(line: 750, column: 17, scope: !6214)
!6276 = !DILocation(line: 750, column: 23, scope: !6214)
!6277 = !DILocation(line: 750, column: 2, scope: !6214)
!6278 = !DILocation(line: 751, column: 1, scope: !6214)
!6279 = distinct !DISubprogram(name: "spi_mem_remove", scope: !1, file: !1, line: 753, type: !3874, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6280 = !DILocalVariable(name: "spi", arg: 1, scope: !6279, file: !1, line: 753, type: !208)
!6281 = !DILocation(line: 753, column: 46, scope: !6279)
!6282 = !DILocalVariable(name: "memdrv", scope: !6279, file: !1, line: 755, type: !4444)
!6283 = !DILocation(line: 755, column: 25, scope: !6279)
!6284 = !DILocation(line: 755, column: 49, scope: !6279)
!6285 = !DILocation(line: 755, column: 54, scope: !6279)
!6286 = !DILocation(line: 755, column: 58, scope: !6279)
!6287 = !DILocation(line: 755, column: 34, scope: !6279)
!6288 = !DILocalVariable(name: "mem", scope: !6279, file: !1, line: 756, type: !204)
!6289 = !DILocation(line: 756, column: 18, scope: !6279)
!6290 = !DILocation(line: 756, column: 40, scope: !6279)
!6291 = !DILocation(line: 756, column: 24, scope: !6279)
!6292 = !DILocation(line: 758, column: 6, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6279, file: !1, line: 758, column: 6)
!6294 = !DILocation(line: 758, column: 14, scope: !6293)
!6295 = !DILocation(line: 758, column: 6, scope: !6279)
!6296 = !DILocation(line: 759, column: 10, scope: !6293)
!6297 = !DILocation(line: 759, column: 18, scope: !6293)
!6298 = !DILocation(line: 759, column: 25, scope: !6293)
!6299 = !DILocation(line: 759, column: 3, scope: !6293)
!6300 = !DILocation(line: 761, column: 2, scope: !6279)
!6301 = !DILocation(line: 762, column: 1, scope: !6279)
!6302 = distinct !DISubprogram(name: "spi_mem_shutdown", scope: !1, file: !1, line: 764, type: !3905, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6303 = !DILocalVariable(name: "spi", arg: 1, scope: !6302, file: !1, line: 764, type: !208)
!6304 = !DILocation(line: 764, column: 49, scope: !6302)
!6305 = !DILocalVariable(name: "memdrv", scope: !6302, file: !1, line: 766, type: !4444)
!6306 = !DILocation(line: 766, column: 25, scope: !6302)
!6307 = !DILocation(line: 766, column: 49, scope: !6302)
!6308 = !DILocation(line: 766, column: 54, scope: !6302)
!6309 = !DILocation(line: 766, column: 58, scope: !6302)
!6310 = !DILocation(line: 766, column: 34, scope: !6302)
!6311 = !DILocalVariable(name: "mem", scope: !6302, file: !1, line: 767, type: !204)
!6312 = !DILocation(line: 767, column: 18, scope: !6302)
!6313 = !DILocation(line: 767, column: 40, scope: !6302)
!6314 = !DILocation(line: 767, column: 24, scope: !6302)
!6315 = !DILocation(line: 769, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6302, file: !1, line: 769, column: 6)
!6317 = !DILocation(line: 769, column: 14, scope: !6316)
!6318 = !DILocation(line: 769, column: 6, scope: !6302)
!6319 = !DILocation(line: 770, column: 3, scope: !6316)
!6320 = !DILocation(line: 770, column: 11, scope: !6316)
!6321 = !DILocation(line: 770, column: 20, scope: !6316)
!6322 = !DILocation(line: 771, column: 1, scope: !6302)
!6323 = distinct !DISubprogram(name: "spi_mem_driver_unregister", scope: !1, file: !1, line: 800, type: !6324, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{null, !4444}
!6326 = !DILocalVariable(name: "memdrv", arg: 1, scope: !6323, file: !1, line: 800, type: !4444)
!6327 = !DILocation(line: 800, column: 55, scope: !6323)
!6328 = !DILocation(line: 802, column: 25, scope: !6323)
!6329 = !DILocation(line: 802, column: 33, scope: !6323)
!6330 = !DILocation(line: 802, column: 2, scope: !6323)
!6331 = !DILocation(line: 803, column: 1, scope: !6323)
!6332 = distinct !DISubprogram(name: "spi_unregister_driver", scope: !210, file: !210, line: 298, type: !6333, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6333 = !DISubroutineType(types: !6334)
!6334 = !{null, !6335}
!6335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!6336 = !DILocalVariable(name: "sdrv", arg: 1, scope: !6332, file: !210, line: 298, type: !6335)
!6337 = !DILocation(line: 298, column: 61, scope: !6332)
!6338 = !DILocation(line: 300, column: 6, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6332, file: !210, line: 300, column: 6)
!6340 = !DILocation(line: 300, column: 6, scope: !6332)
!6341 = !DILocation(line: 301, column: 22, scope: !6339)
!6342 = !DILocation(line: 301, column: 28, scope: !6339)
!6343 = !DILocation(line: 301, column: 3, scope: !6339)
!6344 = !DILocation(line: 302, column: 1, scope: !6332)
!6345 = distinct !DISubprogram(name: "spi_mem_buswidth_is_valid", scope: !1, file: !1, line: 169, type: !6346, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6346 = !DISubroutineType(types: !6347)
!6347 = !{!485, !1373}
!6348 = !DILocalVariable(name: "buswidth", arg: 1, scope: !6345, file: !1, line: 169, type: !1373)
!6349 = !DILocation(line: 169, column: 42, scope: !6345)
!6350 = !DILocation(line: 171, column: 6, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6345, file: !1, line: 171, column: 6)
!6352 = !DILocation(line: 171, column: 25, scope: !6351)
!6353 = !DILocation(line: 171, column: 29, scope: !6351)
!6354 = !DILocation(line: 171, column: 32, scope: !6351)
!6355 = !DILocation(line: 171, column: 41, scope: !6351)
!6356 = !DILocation(line: 171, column: 6, scope: !6345)
!6357 = !DILocation(line: 172, column: 3, scope: !6351)
!6358 = !DILocation(line: 174, column: 2, scope: !6345)
!6359 = !DILocation(line: 175, column: 1, scope: !6345)
!6360 = distinct !DISubprogram(name: "__arch_hweight8", scope: !6361, file: !6361, line: 31, type: !6362, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6361 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/lizy2001/genbc/linux")
!6362 = !DISubroutineType(types: !6363)
!6363 = !{!5, !5}
!6364 = !DILocalVariable(name: "w", arg: 1, scope: !6365, file: !6361, line: 15, type: !5)
!6365 = distinct !DISubprogram(name: "__arch_hweight32", scope: !6361, file: !6361, line: 15, type: !6362, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6366 = !DILocation(line: 15, column: 67, scope: !6365, inlinedAt: !6367)
!6367 = distinct !DILocation(line: 33, column: 9, scope: !6360)
!6368 = !DILocalVariable(name: "res", scope: !6365, file: !6361, line: 17, type: !5)
!6369 = !DILocation(line: 17, column: 15, scope: !6365, inlinedAt: !6367)
!6370 = !DILocalVariable(name: "w", arg: 1, scope: !6360, file: !6361, line: 31, type: !5)
!6371 = !DILocation(line: 31, column: 57, scope: !6360)
!6372 = !DILocation(line: 33, column: 26, scope: !6360)
!6373 = !DILocation(line: 33, column: 28, scope: !6360)
!6374 = !DILocation(line: 21, column: 15, scope: !6365, inlinedAt: !6367)
!6375 = !DILocation(line: 19, column: 2, scope: !6365, inlinedAt: !6367)
!6376 = !{i32 -2146952295, i32 -2146952267, i32 -2146952261, i32 -2146952245, i32 -2146952229, i32 -2146952202, i32 -2146951869, i32 -2146952587, i32 -2146951863, i32 -2146951815, i32 -2146951751, i32 -2146951689, i32 -2146951632, i32 -2146951576, i32 -2146952507, i32 -2146952482, i32 -2146951342, i32 -2146951212, i32 -2146951281, i32 -2146951198, i32 -2146952382}
!6377 = !DILocation(line: 23, column: 9, scope: !6365, inlinedAt: !6367)
!6378 = !DILocation(line: 33, column: 2, scope: !6360)
!6379 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !6380, file: !6380, line: 384, type: !3433, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6380 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!6381 = !DILocalVariable(name: "dev", arg: 1, scope: !6379, file: !6380, line: 384, type: !3401)
!6382 = !DILocation(line: 384, column: 54, scope: !6379)
!6383 = !DILocation(line: 386, column: 29, scope: !6379)
!6384 = !DILocation(line: 386, column: 9, scope: !6379)
!6385 = !DILocation(line: 386, column: 2, scope: !6379)
!6386 = distinct !DISubprogram(name: "pm_runtime_put", scope: !6380, file: !6380, line: 417, type: !3433, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6387 = !DILocalVariable(name: "dev", arg: 1, scope: !6386, file: !6380, line: 417, type: !3401)
!6388 = !DILocation(line: 417, column: 49, scope: !6386)
!6389 = !DILocation(line: 419, column: 27, scope: !6386)
!6390 = !DILocation(line: 419, column: 9, scope: !6386)
!6391 = !DILocation(line: 419, column: 2, scope: !6386)
!6392 = distinct !DISubprogram(name: "get_order", scope: !6393, file: !6393, line: 29, type: !6394, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6393 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6394 = !DISubroutineType(types: !6395)
!6395 = !{!258, !190}
!6396 = !DILocalVariable(name: "x", arg: 1, scope: !6397, file: !6398, line: 366, type: !417)
!6397 = distinct !DISubprogram(name: "fls64", scope: !6398, file: !6398, line: 366, type: !6399, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6398 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6399 = !DISubroutineType(types: !6400)
!6400 = !{!258, !417}
!6401 = !DILocation(line: 366, column: 40, scope: !6397, inlinedAt: !6402)
!6402 = distinct !DILocation(line: 46, column: 9, scope: !6392)
!6403 = !DILocalVariable(name: "bitpos", scope: !6397, file: !6398, line: 368, type: !258)
!6404 = !DILocation(line: 368, column: 6, scope: !6397, inlinedAt: !6402)
!6405 = !DILocalVariable(name: "size", arg: 1, scope: !6392, file: !6393, line: 29, type: !190)
!6406 = !DILocation(line: 29, column: 63, scope: !6392)
!6407 = !DILocation(line: 31, column: 27, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6392, file: !6393, line: 31, column: 6)
!6409 = !DILocation(line: 31, column: 6, scope: !6408)
!6410 = !DILocation(line: 31, column: 6, scope: !6392)
!6411 = !DILocation(line: 32, column: 8, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !6393, line: 32, column: 7)
!6413 = distinct !DILexicalBlock(scope: !6408, file: !6393, line: 31, column: 34)
!6414 = !DILocation(line: 32, column: 7, scope: !6413)
!6415 = !DILocation(line: 33, column: 4, scope: !6412)
!6416 = !DILocation(line: 35, column: 7, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6413, file: !6393, line: 35, column: 7)
!6418 = !DILocation(line: 35, column: 12, scope: !6417)
!6419 = !DILocation(line: 35, column: 7, scope: !6413)
!6420 = !DILocation(line: 36, column: 4, scope: !6417)
!6421 = !DILocation(line: 38, column: 10, scope: !6413)
!6422 = !DILocation(line: 38, column: 28, scope: !6413)
!6423 = !DILocation(line: 38, column: 41, scope: !6413)
!6424 = !DILocation(line: 38, column: 3, scope: !6413)
!6425 = !DILocation(line: 41, column: 6, scope: !6392)
!6426 = !DILocation(line: 42, column: 7, scope: !6392)
!6427 = !DILocation(line: 46, column: 15, scope: !6392)
!6428 = !DILocation(line: 374, column: 2, scope: !6397, inlinedAt: !6402)
!6429 = !DILocation(line: 376, column: 14, scope: !6397, inlinedAt: !6402)
!6430 = !{i32 451172}
!6431 = !DILocation(line: 377, column: 9, scope: !6397, inlinedAt: !6402)
!6432 = !DILocation(line: 377, column: 16, scope: !6397, inlinedAt: !6402)
!6433 = !DILocation(line: 46, column: 2, scope: !6392)
!6434 = !DILocation(line: 48, column: 1, scope: !6392)
!6435 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6436, file: !6436, line: 30, type: !6437, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6436 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!258, !416}
!6439 = !DILocation(line: 366, column: 40, scope: !6397, inlinedAt: !6440)
!6440 = distinct !DILocation(line: 32, column: 9, scope: !6435)
!6441 = !DILocation(line: 368, column: 6, scope: !6397, inlinedAt: !6440)
!6442 = !DILocalVariable(name: "n", arg: 1, scope: !6435, file: !6436, line: 30, type: !416)
!6443 = !DILocation(line: 30, column: 21, scope: !6435)
!6444 = !DILocation(line: 32, column: 15, scope: !6435)
!6445 = !DILocation(line: 374, column: 2, scope: !6397, inlinedAt: !6440)
!6446 = !DILocation(line: 376, column: 14, scope: !6397, inlinedAt: !6440)
!6447 = !DILocation(line: 377, column: 9, scope: !6397, inlinedAt: !6440)
!6448 = !DILocation(line: 377, column: 16, scope: !6397, inlinedAt: !6440)
!6449 = !DILocation(line: 32, column: 18, scope: !6435)
!6450 = !DILocation(line: 32, column: 2, scope: !6435)
!6451 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6452, file: !6452, line: 137, type: !6453, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6452 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6453 = !DISubroutineType(types: !6454)
!6454 = !{!191, !973, !2147, !186, !184}
!6455 = !DILocalVariable(name: "s", arg: 1, scope: !6451, file: !6452, line: 137, type: !973)
!6456 = !DILocation(line: 137, column: 54, scope: !6451)
!6457 = !DILocalVariable(name: "object", arg: 2, scope: !6451, file: !6452, line: 137, type: !2147)
!6458 = !DILocation(line: 137, column: 69, scope: !6451)
!6459 = !DILocalVariable(name: "size", arg: 3, scope: !6451, file: !6452, line: 138, type: !186)
!6460 = !DILocation(line: 138, column: 12, scope: !6451)
!6461 = !DILocalVariable(name: "flags", arg: 4, scope: !6451, file: !6452, line: 138, type: !184)
!6462 = !DILocation(line: 138, column: 24, scope: !6451)
!6463 = !DILocation(line: 140, column: 17, scope: !6451)
!6464 = !DILocation(line: 140, column: 2, scope: !6451)
!6465 = distinct !DISubprogram(name: "spi_message_init_no_memset", scope: !210, file: !210, line: 1035, type: !5511, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6466 = !DILocalVariable(name: "m", arg: 1, scope: !6465, file: !210, line: 1035, type: !3889)
!6467 = !DILocation(line: 1035, column: 67, scope: !6465)
!6468 = !DILocation(line: 1037, column: 18, scope: !6465)
!6469 = !DILocation(line: 1037, column: 21, scope: !6465)
!6470 = !DILocation(line: 1037, column: 2, scope: !6465)
!6471 = !DILocation(line: 1038, column: 18, scope: !6465)
!6472 = !DILocation(line: 1038, column: 21, scope: !6465)
!6473 = !DILocation(line: 1038, column: 2, scope: !6465)
!6474 = !DILocation(line: 1039, column: 1, scope: !6465)
!6475 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6476, file: !6476, line: 33, type: !6477, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6476 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!6477 = !DISubroutineType(types: !6478)
!6478 = !{null, !194}
!6479 = !DILocalVariable(name: "list", arg: 1, scope: !6475, file: !6476, line: 33, type: !194)
!6480 = !DILocation(line: 33, column: 53, scope: !6475)
!6481 = !DILocation(line: 35, column: 2, scope: !6475)
!6482 = !DILocation(line: 35, column: 2, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6475, file: !6476, line: 35, column: 2)
!6484 = !DILocation(line: 35, column: 2, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6483, file: !6476, line: 35, column: 2)
!6486 = !DILocation(line: 35, column: 2, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6483, file: !6476, line: 35, column: 2)
!6488 = !DILocation(line: 36, column: 15, scope: !6475)
!6489 = !DILocation(line: 36, column: 2, scope: !6475)
!6490 = !DILocation(line: 36, column: 8, scope: !6475)
!6491 = !DILocation(line: 36, column: 13, scope: !6475)
!6492 = !DILocation(line: 37, column: 1, scope: !6475)
!6493 = distinct !DISubprogram(name: "list_add_tail", scope: !6476, file: !6476, line: 98, type: !6494, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6494 = !DISubroutineType(types: !6495)
!6495 = !{null, !194, !194}
!6496 = !DILocalVariable(name: "new", arg: 1, scope: !6493, file: !6476, line: 98, type: !194)
!6497 = !DILocation(line: 98, column: 52, scope: !6493)
!6498 = !DILocalVariable(name: "head", arg: 2, scope: !6493, file: !6476, line: 98, type: !194)
!6499 = !DILocation(line: 98, column: 75, scope: !6493)
!6500 = !DILocation(line: 100, column: 13, scope: !6493)
!6501 = !DILocation(line: 100, column: 18, scope: !6493)
!6502 = !DILocation(line: 100, column: 24, scope: !6493)
!6503 = !DILocation(line: 100, column: 30, scope: !6493)
!6504 = !DILocation(line: 100, column: 2, scope: !6493)
!6505 = !DILocation(line: 101, column: 1, scope: !6493)
!6506 = distinct !DISubprogram(name: "__list_add", scope: !6476, file: !6476, line: 63, type: !6507, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6507 = !DISubroutineType(types: !6508)
!6508 = !{null, !194, !194, !194}
!6509 = !DILocalVariable(name: "new", arg: 1, scope: !6506, file: !6476, line: 63, type: !194)
!6510 = !DILocation(line: 63, column: 49, scope: !6506)
!6511 = !DILocalVariable(name: "prev", arg: 2, scope: !6506, file: !6476, line: 64, type: !194)
!6512 = !DILocation(line: 64, column: 28, scope: !6506)
!6513 = !DILocalVariable(name: "next", arg: 3, scope: !6506, file: !6476, line: 65, type: !194)
!6514 = !DILocation(line: 65, column: 28, scope: !6506)
!6515 = !DILocation(line: 67, column: 24, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6506, file: !6476, line: 67, column: 6)
!6517 = !DILocation(line: 67, column: 29, scope: !6516)
!6518 = !DILocation(line: 67, column: 35, scope: !6516)
!6519 = !DILocation(line: 67, column: 7, scope: !6516)
!6520 = !DILocation(line: 67, column: 6, scope: !6506)
!6521 = !DILocation(line: 68, column: 3, scope: !6516)
!6522 = !DILocation(line: 70, column: 15, scope: !6506)
!6523 = !DILocation(line: 70, column: 2, scope: !6506)
!6524 = !DILocation(line: 70, column: 8, scope: !6506)
!6525 = !DILocation(line: 70, column: 13, scope: !6506)
!6526 = !DILocation(line: 71, column: 14, scope: !6506)
!6527 = !DILocation(line: 71, column: 2, scope: !6506)
!6528 = !DILocation(line: 71, column: 7, scope: !6506)
!6529 = !DILocation(line: 71, column: 12, scope: !6506)
!6530 = !DILocation(line: 72, column: 14, scope: !6506)
!6531 = !DILocation(line: 72, column: 2, scope: !6506)
!6532 = !DILocation(line: 72, column: 7, scope: !6506)
!6533 = !DILocation(line: 72, column: 12, scope: !6506)
!6534 = !DILocation(line: 73, column: 2, scope: !6506)
!6535 = !DILocation(line: 73, column: 2, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6506, file: !6476, line: 73, column: 2)
!6537 = !DILocation(line: 73, column: 2, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6536, file: !6476, line: 73, column: 2)
!6539 = !DILocation(line: 73, column: 2, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6536, file: !6476, line: 73, column: 2)
!6541 = !DILocation(line: 74, column: 1, scope: !6506)
!6542 = distinct !DISubprogram(name: "__list_add_valid", scope: !6476, file: !6476, line: 45, type: !6543, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6543 = !DISubroutineType(types: !6544)
!6544 = !{!485, !194, !194, !194}
!6545 = !DILocalVariable(name: "new", arg: 1, scope: !6542, file: !6476, line: 45, type: !194)
!6546 = !DILocation(line: 45, column: 55, scope: !6542)
!6547 = !DILocalVariable(name: "prev", arg: 2, scope: !6542, file: !6476, line: 46, type: !194)
!6548 = !DILocation(line: 46, column: 23, scope: !6542)
!6549 = !DILocalVariable(name: "next", arg: 3, scope: !6542, file: !6476, line: 47, type: !194)
!6550 = !DILocation(line: 47, column: 23, scope: !6542)
!6551 = !DILocation(line: 49, column: 2, scope: !6542)
!6552 = distinct !DISubprogram(name: "to_spi_mem_drv", scope: !1, file: !1, line: 723, type: !6553, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{!4444, !3472}
!6555 = !DILocalVariable(name: "drv", arg: 1, scope: !6552, file: !1, line: 723, type: !3472)
!6556 = !DILocation(line: 723, column: 75, scope: !6552)
!6557 = !DILocalVariable(name: "__mptr", scope: !6558, file: !1, line: 725, type: !191)
!6558 = distinct !DILexicalBlock(scope: !6552, file: !1, line: 725, column: 9)
!6559 = !DILocation(line: 725, column: 9, scope: !6558)
!6560 = !DILocation(line: 725, column: 9, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6558, file: !1, line: 725, column: 9)
!6562 = !DILocation(line: 725, column: 2, scope: !6552)
!6563 = distinct !DISubprogram(name: "devm_kzalloc", scope: !71, file: !71, line: 215, type: !6564, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6564 = !DISubroutineType(types: !6565)
!6565 = !{!191, !3401, !186, !184}
!6566 = !DILocalVariable(name: "dev", arg: 1, scope: !6563, file: !71, line: 215, type: !3401)
!6567 = !DILocation(line: 215, column: 49, scope: !6563)
!6568 = !DILocalVariable(name: "size", arg: 2, scope: !6563, file: !71, line: 215, type: !186)
!6569 = !DILocation(line: 215, column: 61, scope: !6563)
!6570 = !DILocalVariable(name: "gfp", arg: 3, scope: !6563, file: !71, line: 215, type: !184)
!6571 = !DILocation(line: 215, column: 73, scope: !6563)
!6572 = !DILocation(line: 217, column: 22, scope: !6563)
!6573 = !DILocation(line: 217, column: 27, scope: !6563)
!6574 = !DILocation(line: 217, column: 33, scope: !6563)
!6575 = !DILocation(line: 217, column: 37, scope: !6563)
!6576 = !DILocation(line: 217, column: 9, scope: !6563)
!6577 = !DILocation(line: 217, column: 2, scope: !6563)
!6578 = distinct !DISubprogram(name: "dev_name", scope: !71, file: !71, line: 609, type: !6579, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6579 = !DISubroutineType(types: !6580)
!6580 = !{!220, !3738}
!6581 = !DILocalVariable(name: "dev", arg: 1, scope: !6578, file: !71, line: 609, type: !3738)
!6582 = !DILocation(line: 609, column: 57, scope: !6578)
!6583 = !DILocation(line: 612, column: 6, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6578, file: !71, line: 612, column: 6)
!6585 = !DILocation(line: 612, column: 11, scope: !6584)
!6586 = !DILocation(line: 612, column: 6, scope: !6578)
!6587 = !DILocation(line: 613, column: 10, scope: !6584)
!6588 = !DILocation(line: 613, column: 15, scope: !6584)
!6589 = !DILocation(line: 613, column: 3, scope: !6584)
!6590 = !DILocation(line: 615, column: 23, scope: !6578)
!6591 = !DILocation(line: 615, column: 28, scope: !6578)
!6592 = !DILocation(line: 615, column: 9, scope: !6578)
!6593 = !DILocation(line: 615, column: 2, scope: !6578)
!6594 = !DILocation(line: 616, column: 1, scope: !6578)
!6595 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !5762, file: !5762, line: 39, type: !5868, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6596 = !DILocalVariable(name: "ptr", arg: 1, scope: !6595, file: !5762, line: 39, type: !2147)
!6597 = !DILocation(line: 39, column: 68, scope: !6595)
!6598 = !DILocation(line: 41, column: 9, scope: !6595)
!6599 = !DILocation(line: 41, column: 24, scope: !6595)
!6600 = !DILocation(line: 41, column: 27, scope: !6595)
!6601 = !DILocation(line: 41, column: 2, scope: !6595)
!6602 = distinct !DISubprogram(name: "PTR_ERR", scope: !5762, file: !5762, line: 29, type: !6603, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6603 = !DISubroutineType(types: !6604)
!6604 = !{!308, !2147}
!6605 = !DILocalVariable(name: "ptr", arg: 1, scope: !6602, file: !5762, line: 29, type: !2147)
!6606 = !DILocation(line: 29, column: 61, scope: !6602)
!6607 = !DILocation(line: 31, column: 16, scope: !6602)
!6608 = !DILocation(line: 31, column: 9, scope: !6602)
!6609 = !DILocation(line: 31, column: 2, scope: !6602)
!6610 = distinct !DISubprogram(name: "spi_set_drvdata", scope: !210, file: !210, line: 240, type: !6611, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6611 = !DISubroutineType(types: !6612)
!6612 = !{null, !208, !191}
!6613 = !DILocalVariable(name: "spi", arg: 1, scope: !6610, file: !210, line: 240, type: !208)
!6614 = !DILocation(line: 240, column: 55, scope: !6610)
!6615 = !DILocalVariable(name: "data", arg: 2, scope: !6610, file: !210, line: 240, type: !191)
!6616 = !DILocation(line: 240, column: 66, scope: !6610)
!6617 = !DILocation(line: 242, column: 19, scope: !6610)
!6618 = !DILocation(line: 242, column: 24, scope: !6610)
!6619 = !DILocation(line: 242, column: 29, scope: !6610)
!6620 = !DILocation(line: 242, column: 2, scope: !6610)
!6621 = !DILocation(line: 243, column: 1, scope: !6610)
!6622 = distinct !DISubprogram(name: "kobject_name", scope: !217, file: !217, line: 88, type: !6623, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6623 = !DISubroutineType(types: !6624)
!6624 = !{!220, !6625}
!6625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6626, size: 64)
!6626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!6627 = !DILocalVariable(name: "kobj", arg: 1, scope: !6622, file: !217, line: 88, type: !6625)
!6628 = !DILocation(line: 88, column: 62, scope: !6622)
!6629 = !DILocation(line: 90, column: 9, scope: !6622)
!6630 = !DILocation(line: 90, column: 15, scope: !6622)
!6631 = !DILocation(line: 90, column: 2, scope: !6622)
!6632 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !71, file: !71, line: 660, type: !4406, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6633 = !DILocalVariable(name: "dev", arg: 1, scope: !6632, file: !71, line: 660, type: !3401)
!6634 = !DILocation(line: 660, column: 51, scope: !6632)
!6635 = !DILocalVariable(name: "data", arg: 2, scope: !6632, file: !71, line: 660, type: !191)
!6636 = !DILocation(line: 660, column: 62, scope: !6632)
!6637 = !DILocation(line: 662, column: 21, scope: !6632)
!6638 = !DILocation(line: 662, column: 2, scope: !6632)
!6639 = !DILocation(line: 662, column: 7, scope: !6632)
!6640 = !DILocation(line: 662, column: 19, scope: !6632)
!6641 = !DILocation(line: 663, column: 1, scope: !6632)
!6642 = distinct !DISubprogram(name: "spi_get_drvdata", scope: !210, file: !210, line: 245, type: !6643, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!191, !208}
!6645 = !DILocalVariable(name: "spi", arg: 1, scope: !6642, file: !210, line: 245, type: !208)
!6646 = !DILocation(line: 245, column: 56, scope: !6642)
!6647 = !DILocation(line: 247, column: 26, scope: !6642)
!6648 = !DILocation(line: 247, column: 31, scope: !6642)
!6649 = !DILocation(line: 247, column: 9, scope: !6642)
!6650 = !DILocation(line: 247, column: 2, scope: !6642)
!6651 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !71, file: !71, line: 655, type: !6652, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !246)
!6652 = !DISubroutineType(types: !6653)
!6653 = !{!191, !3738}
!6654 = !DILocalVariable(name: "dev", arg: 1, scope: !6651, file: !71, line: 655, type: !3738)
!6655 = !DILocation(line: 655, column: 58, scope: !6651)
!6656 = !DILocation(line: 657, column: 9, scope: !6651)
!6657 = !DILocation(line: 657, column: 14, scope: !6651)
!6658 = !DILocation(line: 657, column: 2, scope: !6651)
