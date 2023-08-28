; ModuleID = '../bcout/drivers/xen/xen-pciback/xenbus.llvm.bc'
source_filename = "drivers/xen/xen-pciback/xenbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.xen_pcibk_backend = type { i8*, i32 (%struct.xen_pcibk_device*)*, void (%struct.xen_pcibk_device*)*, i32 (%struct.pci_dev*, %struct.xen_pcibk_device*, i32*, i32*, i32*)*, i32 (%struct.xen_pcibk_device*, i32 (%struct.xen_pcibk_device*, i32, i32)*)*, void (%struct.xen_pcibk_device*, %struct.pci_dev*, i1)*, i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)*)*, %struct.pci_dev* (%struct.xen_pcibk_device*, i32, i32, i32)* }
%struct.xen_pcibk_device = type { i8*, %struct.mutex, %struct.xenbus_device*, %struct.xenbus_watch, i8, i32, %struct.xen_pci_sharedinfo*, i64, %struct.work_struct, %struct.xen_pci_op }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.xenbus_device = type { i8*, i8*, i8*, i32, %struct.xenbus_watch, %struct.device, i32, %struct.completion, %struct.work_struct, %struct.semaphore }
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
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
%struct.page = type { i64, %union.anon.3, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
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
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
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
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.66 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i32, %struct.anon.68, %union.anon.69 }
%struct.anon.68 = type { i16, i16, i32 }
%union.anon.69 = type { i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.xen_pci_sharedinfo = type { i32, %struct.xen_pci_op, %struct.xen_pcie_aer_op }
%struct.xen_pcie_aer_op = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.xen_pci_op = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x %struct.xen_msix_entry] }
%struct.xen_msix_entry = type { i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.70, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type { %struct.module*, %struct.device*, %struct.device_node*, %struct.list_head, i32 (%struct.msi_controller*, %struct.pci_dev*, %struct.msi_desc*)*, i32 (%struct.msi_controller*, %struct.pci_dev*, i32, i32)*, void (%struct.msi_controller*, i32)* }
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.70 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.xenbus_driver = type { i8*, %struct.xenbus_device_id*, i8, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)*, void (%struct.xenbus_device*, i32)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)*, %struct.device_driver, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, void (%struct.xenbus_device*)* }
%struct.xenbus_device_id = type { [32 x i8] }
%struct.kmem_cache = type opaque
%struct.xenbus_transaction = type { i32 }

@__param_str_passthrough = internal constant [24 x i8] c"xen_pciback.passthrough\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@passthrough = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4307
@__param_passthrough = internal constant %struct.kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__param_str_passthrough, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @passthrough } }, section "__param", align 8, !dbg !4245
@__UNIQUE_ID_passthroughtype238 = internal constant [38 x i8] c"xen_pciback.parmtype=passthrough:bool\00", section ".modinfo", align 1, !dbg !4297
@__UNIQUE_ID_passthrough239 = internal constant [698 x i8] c"xen_pciback.parm=passthrough:Option to specify how to export PCI topology to guest:\0A 0 - (default) Hide the true PCI topology and makes the frontend\0A   there is a single PCI bus with only the exported devices on it.\0A   For example, a device at 03:05.0 will be re-assigned to 00:00.0\0A   while second device at 02:1a.1 will be re-assigned to 00:01.1.\0A 1 - Passthrough provides a real view of the PCI topology to the\0A   frontend (for example, a device at 06:01.b will still appear at\0A   06:01.b to the frontend). This is similar to how Xen 2.0.x\0A   exposed PCI devices to its driver domains. This may be required\0A   for drivers which depend on finding their hardward in certain\0A   bus/slot locations.\00", section ".modinfo", align 1, !dbg !4302
@xen_pcibk_vpci_backend = external dso_local constant %struct.xen_pcibk_backend, align 8
@xen_pcibk_backend = dso_local global %struct.xen_pcibk_backend* null, section ".data..read_mostly", align 8, !dbg !4309
@xen_pcibk_passthrough_backend = external dso_local constant %struct.xen_pcibk_backend, align 8
@.str = private unnamed_addr constant [30 x i8] c"\016xen_pciback: backend is %s\0A\00", align 1
@xen_pcibk_driver = internal global %struct.xenbus_driver { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct.xenbus_device_id* getelementptr inbounds ([2 x %struct.xenbus_device_id], [2 x %struct.xenbus_device_id]* @xen_pcibk_ids, i32 0, i32 0), i8 0, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @xen_pcibk_xenbus_probe, void (%struct.xenbus_device*, i32)* @xen_pcibk_frontend_changed, i32 (%struct.xenbus_device*)* @xen_pcibk_xenbus_remove, i32 (%struct.xenbus_device*)* null, i32 (%struct.xenbus_device*)* null, i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)* null, %struct.device_driver zeroinitializer, i32 (%struct.xenbus_device*)* null, i32 (%struct.xenbus_device*)* null, void (%struct.xenbus_device*)* null }, align 8, !dbg !4643
@.str.1 = private unnamed_addr constant [12 x i8] c"xen_pciback\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"xen-pciback\00", align 1
@xen_pcibk_ids = internal constant [2 x %struct.xenbus_device_id] [%struct.xenbus_device_id { [32 x i8] c"pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.xenbus_device_id zeroinitializer], align 16, !dbg !4680
@.str.3 = private unnamed_addr constant [41 x i8] c"Error allocating xen_pcibk_device struct\00", align 1
@alloc_pdev.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4683
@.str.4 = private unnamed_addr constant [16 x i8] c"&pdev->dev_lock\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"num_devs\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Error reading number of devices\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"dev-%d\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"String overflow while reading configuration\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%x:%x:%x.%x\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Error reading device configuration\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Error parsing pci device configuration\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"state-%d\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Error switching substate of dev-%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"Error while publish PCI root buses for frontend\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Error switching to initialised state!\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"Couldn't locate PCI device (%04x:%02x:%02x.%d)! perhaps already in-use?\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"registering for %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Stealing ownership from dom%d.\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"vdev-%d\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%04x:%02x:%02x.%02x\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"root_num\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"root-%d\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%x:%x\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"%04x:%02x\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"pci-op-ref\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Error reading configuration from frontend\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"version mismatch (%s/%s) with pcifront - halting xen-pciback\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Error switching to connected state!\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"Error mapping other domain page in ours.\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"Error binding event channel to IRQ\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"Error while publish PCI rootbuses for frontend\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Error switching to reconfigured state!\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (%struct.kernel_param* @__param_passthrough to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_passthroughtype238, i32 0, i32 0), i8* getelementptr inbounds ([698 x i8], [698 x i8]* @__UNIQUE_ID_passthrough239, i32 0, i32 0), i8* bitcast (void ()* @xen_pcibk_xenbus_unregister to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_pcibk_xenbus_register() #0 section ".init.text" !dbg !4696 {
entry:
  store %struct.xen_pcibk_backend* @xen_pcibk_vpci_backend, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !4699
  %0 = load i8, i8* @passthrough, align 1, !dbg !4700
  %tobool = trunc i8 %0 to i1, !dbg !4700
  br i1 %tobool, label %if.then, label %if.end, !dbg !4702

if.then:                                          ; preds = %entry
  store %struct.xen_pcibk_backend* @xen_pcibk_passthrough_backend, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !4703
  br label %if.end, !dbg !4704

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !4705
  %name = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %1, i32 0, i32 0, !dbg !4705
  %2 = load i8*, i8** %name, align 8, !dbg !4705
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %2) #9, !dbg !4705
  %call1 = call i32 @__xenbus_register_backend(%struct.xenbus_driver* @xen_pcibk_driver, %struct.module* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4706
  ret i32 %call1, !dbg !4707
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @__xenbus_register_backend(%struct.xenbus_driver*, %struct.module*, i8*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_pcibk_xenbus_unregister() #0 section ".exit.text" !dbg !4708 {
entry:
  call void @xenbus_unregister_driver(%struct.xenbus_driver* @xen_pcibk_driver) #10, !dbg !4709
  ret void, !dbg !4710
}

; Function Attrs: noredzone
declare dso_local void @xenbus_unregister_driver(%struct.xenbus_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_xenbus_probe(%struct.xenbus_device* %dev, %struct.xenbus_device_id* %id) #3 !dbg !4711 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %id.addr = alloca %struct.xenbus_device_id*, align 8
  %err = alloca i32, align 4
  %pdev = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4712, metadata !DIExpression()), !dbg !4713
  store %struct.xenbus_device_id* %id, %struct.xenbus_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device_id** %id.addr, metadata !4714, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4716, metadata !DIExpression()), !dbg !4717
  store i32 0, i32* %err, align 4, !dbg !4717
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev, metadata !4718, metadata !DIExpression()), !dbg !4719
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4720
  %call = call %struct.xen_pcibk_device* @alloc_pdev(%struct.xenbus_device* %0) #10, !dbg !4721
  store %struct.xen_pcibk_device* %call, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4719
  %1 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4722
  %cmp = icmp eq %struct.xen_pcibk_device* %1, null, !dbg !4724
  br i1 %cmp, label %if.then, label %if.end, !dbg !4725

if.then:                                          ; preds = %entry
  store i32 -12, i32* %err, align 4, !dbg !4726
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4728
  %3 = load i32, i32* %err, align 4, !dbg !4729
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %2, i32 %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !4730
  br label %out, !dbg !4731

if.end:                                           ; preds = %entry
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4732
  %call1 = call i32 @xenbus_switch_state(%struct.xenbus_device* %4, i32 2) #10, !dbg !4733
  store i32 %call1, i32* %err, align 4, !dbg !4734
  %5 = load i32, i32* %err, align 4, !dbg !4735
  %tobool = icmp ne i32 %5, 0, !dbg !4735
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4737

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !4738

if.end3:                                          ; preds = %if.end
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4739
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4740
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 1, !dbg !4741
  %8 = load i8*, i8** %nodename, align 8, !dbg !4741
  %9 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4742
  %be_watch = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %9, i32 0, i32 3, !dbg !4743
  %call4 = call i32 @xenbus_watch_path(%struct.xenbus_device* %6, i8* %8, %struct.xenbus_watch* %be_watch, void (%struct.xenbus_watch*, i8*, i8*)* @xen_pcibk_be_watch) #10, !dbg !4744
  store i32 %call4, i32* %err, align 4, !dbg !4745
  %10 = load i32, i32* %err, align 4, !dbg !4746
  %tobool5 = icmp ne i32 %10, 0, !dbg !4746
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4748

if.then6:                                         ; preds = %if.end3
  br label %out, !dbg !4749

if.end7:                                          ; preds = %if.end3
  %11 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4750
  %be_watching = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %11, i32 0, i32 4, !dbg !4751
  store i8 1, i8* %be_watching, align 8, !dbg !4752
  %12 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4753
  %be_watch8 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %12, i32 0, i32 3, !dbg !4754
  call void @xen_pcibk_be_watch(%struct.xenbus_watch* %be_watch8, i8* null, i8* null) #10, !dbg !4755
  br label %out, !dbg !4755

out:                                              ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !4756), !dbg !4757
  %13 = load i32, i32* %err, align 4, !dbg !4758
  ret i32 %13, !dbg !4759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_pcibk_frontend_changed(%struct.xenbus_device* %xdev, i32 %fe_state) #3 !dbg !4760 {
entry:
  %xdev.addr = alloca %struct.xenbus_device*, align 8
  %fe_state.addr = alloca i32, align 4
  %pdev = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xenbus_device* %xdev, %struct.xenbus_device** %xdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xdev.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store i32 %fe_state, i32* %fe_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fe_state.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev, metadata !4765, metadata !DIExpression()), !dbg !4766
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev.addr, align 8, !dbg !4767
  %dev = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 5, !dbg !4768
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #10, !dbg !4769
  %1 = bitcast i8* %call to %struct.xen_pcibk_device*, !dbg !4769
  store %struct.xen_pcibk_device* %1, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4766
  %2 = load i32, i32* %fe_state.addr, align 4, !dbg !4770
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 7, label %sw.bb2
    i32 4, label %sw.bb4
    i32 5, label %sw.bb6
    i32 6, label %sw.bb8
    i32 0, label %sw.bb11
  ], !dbg !4771

sw.bb:                                            ; preds = %entry
  %3 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4772
  %call1 = call i32 @xen_pcibk_attach(%struct.xen_pcibk_device* %3) #10, !dbg !4774
  br label %sw.epilog, !dbg !4775

sw.bb2:                                           ; preds = %entry
  %4 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4776
  %call3 = call i32 @xen_pcibk_reconfigure(%struct.xen_pcibk_device* %4) #10, !dbg !4777
  br label %sw.epilog, !dbg !4778

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev.addr, align 8, !dbg !4779
  %call5 = call i32 @xenbus_switch_state(%struct.xenbus_device* %5, i32 4) #10, !dbg !4780
  br label %sw.epilog, !dbg !4781

sw.bb6:                                           ; preds = %entry
  %6 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4782
  call void @xen_pcibk_disconnect(%struct.xen_pcibk_device* %6) #10, !dbg !4783
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev.addr, align 8, !dbg !4784
  %call7 = call i32 @xenbus_switch_state(%struct.xenbus_device* %7, i32 5) #10, !dbg !4785
  br label %sw.epilog, !dbg !4786

sw.bb8:                                           ; preds = %entry
  %8 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4787
  call void @xen_pcibk_disconnect(%struct.xen_pcibk_device* %8) #10, !dbg !4788
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev.addr, align 8, !dbg !4789
  %call9 = call i32 @xenbus_switch_state(%struct.xenbus_device* %9, i32 6) #10, !dbg !4790
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev.addr, align 8, !dbg !4791
  %call10 = call i32 @xenbus_dev_is_online(%struct.xenbus_device* %10) #10, !dbg !4793
  %tobool = icmp ne i32 %call10, 0, !dbg !4793
  br i1 %tobool, label %if.then, label %if.end, !dbg !4794

if.then:                                          ; preds = %sw.bb8
  br label %sw.epilog, !dbg !4795

if.end:                                           ; preds = %sw.bb8
  br label %sw.bb11, !dbg !4796

sw.bb11:                                          ; preds = %entry, %if.end
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev.addr, align 8, !dbg !4797
  %dev12 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 5, !dbg !4798
  call void @device_unregister(%struct.device* %dev12) #10, !dbg !4799
  br label %sw.epilog, !dbg !4800

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !4801

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %if.then, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  ret void, !dbg !4802
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_xenbus_remove(%struct.xenbus_device* %dev) #3 !dbg !4803 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %pdev = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev, metadata !4806, metadata !DIExpression()), !dbg !4807
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4808
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 5, !dbg !4809
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #10, !dbg !4810
  %1 = bitcast i8* %call to %struct.xen_pcibk_device*, !dbg !4810
  store %struct.xen_pcibk_device* %1, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4807
  %2 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4811
  %cmp = icmp ne %struct.xen_pcibk_device* %2, null, !dbg !4813
  br i1 %cmp, label %if.then, label %if.end, !dbg !4814

if.then:                                          ; preds = %entry
  %3 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4815
  call void @free_pdev(%struct.xen_pcibk_device* %3) #10, !dbg !4816
  br label %if.end, !dbg !4816

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !4817
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xen_pcibk_device* @alloc_pdev(%struct.xenbus_device* %xdev) #3 !dbg !4685 {
entry:
  %xdev.addr = alloca %struct.xenbus_device*, align 8
  %pdev = alloca %struct.xen_pcibk_device*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.xenbus_device* %xdev, %struct.xenbus_device** %xdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xdev.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev, metadata !4820, metadata !DIExpression()), !dbg !4821
  %call = call i8* @kzalloc(i64 680, i32 3264) #10, !dbg !4822
  %0 = bitcast i8* %call to %struct.xen_pcibk_device*, !dbg !4822
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4823
  %1 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4824
  %cmp = icmp eq %struct.xen_pcibk_device* %1, null, !dbg !4826
  br i1 %cmp, label %if.then, label %if.end, !dbg !4827

if.then:                                          ; preds = %entry
  br label %out, !dbg !4828

if.end:                                           ; preds = %entry
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev.addr, align 8, !dbg !4829
  %3 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4830
  %xdev1 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %3, i32 0, i32 2, !dbg !4831
  store %struct.xenbus_device* %2, %struct.xenbus_device** %xdev1, align 8, !dbg !4832
  br label %do.body, !dbg !4833

do.body:                                          ; preds = %if.end
  %4 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4834
  %dev_lock = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %4, i32 0, i32 1, !dbg !4834
  call void @__mutex_init(%struct.mutex* %dev_lock, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @alloc_pdev.__key) #10, !dbg !4834
  br label %do.end, !dbg !4834

do.end:                                           ; preds = %do.body
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4836
  %sh_info = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %5, i32 0, i32 6, !dbg !4837
  store %struct.xen_pci_sharedinfo* null, %struct.xen_pci_sharedinfo** %sh_info, align 8, !dbg !4838
  %6 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4839
  %evtchn_irq = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %6, i32 0, i32 5, !dbg !4840
  store i32 -1, i32* %evtchn_irq, align 4, !dbg !4841
  %7 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4842
  %be_watching = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %7, i32 0, i32 4, !dbg !4843
  store i8 0, i8* %be_watching, align 8, !dbg !4844
  br label %do.body2, !dbg !4845

do.body2:                                         ; preds = %do.end
  %8 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4846
  %op_work = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %8, i32 0, i32 8, !dbg !4846
  call void @__init_work(%struct.work_struct* %op_work, i32 0) #10, !dbg !4846
  %9 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4846
  %op_work3 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %9, i32 0, i32 8, !dbg !4846
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %op_work3, i32 0, i32 0, !dbg !4846
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4846
  store i64 68719476704, i64* %counter, align 8, !dbg !4846
  %10 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4846
  %11 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !4846
  %12 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4846
  %op_work4 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %12, i32 0, i32 8, !dbg !4846
  %entry5 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %op_work4, i32 0, i32 1, !dbg !4846
  call void @INIT_LIST_HEAD(%struct.list_head* %entry5) #10, !dbg !4846
  %13 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4846
  %op_work6 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %13, i32 0, i32 8, !dbg !4846
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %op_work6, i32 0, i32 2, !dbg !4846
  store void (%struct.work_struct*)* @xen_pcibk_do_op, void (%struct.work_struct*)** %func, align 8, !dbg !4846
  br label %do.end7, !dbg !4846

do.end7:                                          ; preds = %do.body2
  %14 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4848
  %call8 = call i32 @xen_pcibk_init_devices(%struct.xen_pcibk_device* %14) #10, !dbg !4850
  %tobool = icmp ne i32 %call8, 0, !dbg !4850
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !4851

if.then9:                                         ; preds = %do.end7
  %15 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4852
  %16 = bitcast %struct.xen_pcibk_device* %15 to i8*, !dbg !4852
  call void @kfree(i8* %16) #10, !dbg !4854
  store %struct.xen_pcibk_device* null, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4855
  br label %if.end10, !dbg !4856

if.end10:                                         ; preds = %if.then9, %do.end7
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev.addr, align 8, !dbg !4857
  %dev = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %17, i32 0, i32 5, !dbg !4858
  %18 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4859
  %19 = bitcast %struct.xen_pcibk_device* %18 to i8*, !dbg !4859
  call void @dev_set_drvdata(%struct.device* %dev, i8* %19) #10, !dbg !4860
  br label %out, !dbg !4860

out:                                              ; preds = %if.end10, %if.then
  call void @llvm.dbg.label(metadata !4861), !dbg !4862
  %20 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4863
  ret %struct.xen_pcibk_device* %20, !dbg !4864
}

; Function Attrs: noredzone
declare dso_local void @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_watch_path(%struct.xenbus_device*, i8*, %struct.xenbus_watch*, void (%struct.xenbus_watch*, i8*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_pcibk_be_watch(%struct.xenbus_watch* %watch, i8* %path, i8* %token) #3 !dbg !4865 {
entry:
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %pdev = alloca %struct.xen_pcibk_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev, metadata !4872, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4874, metadata !DIExpression()), !dbg !4876
  %0 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4876
  %1 = bitcast %struct.xenbus_watch* %0 to i8*, !dbg !4876
  store i8* %1, i8** %__mptr, align 8, !dbg !4876
  br label %do.body, !dbg !4876

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4877

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4876
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !4876
  %3 = bitcast i8* %add.ptr to %struct.xen_pcibk_device*, !dbg !4876
  store %struct.xen_pcibk_device* %3, %struct.xen_pcibk_device** %tmp, align 8, !dbg !4877
  %4 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %tmp, align 8, !dbg !4876
  store %struct.xen_pcibk_device* %4, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4873
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4879
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %5, i32 0, i32 2, !dbg !4880
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !4880
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 1, !dbg !4881
  %7 = load i8*, i8** %nodename, align 8, !dbg !4881
  %call = call i32 @xenbus_read_driver_state(i8* %7) #10, !dbg !4882
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
  ], !dbg !4883

sw.bb:                                            ; preds = %do.end
  %8 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev, align 8, !dbg !4884
  %call1 = call i32 @xen_pcibk_setup_backend(%struct.xen_pcibk_device* %8) #10, !dbg !4886
  br label %sw.epilog, !dbg !4887

sw.default:                                       ; preds = %do.end
  br label %sw.epilog, !dbg !4888

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void, !dbg !4889
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #3 !dbg !4890 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4893, metadata !DIExpression()), !dbg !4897
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4903, metadata !DIExpression()), !dbg !4904
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4905, metadata !DIExpression()), !dbg !4906
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4907, metadata !DIExpression()), !dbg !4908
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4909, metadata !DIExpression()), !dbg !4913
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4915, metadata !DIExpression()), !dbg !4919
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4921, metadata !DIExpression()), !dbg !4925
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4930, metadata !DIExpression()), !dbg !4931
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4932, metadata !DIExpression()), !dbg !4933
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4934, metadata !DIExpression()), !dbg !4935
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4936, metadata !DIExpression()), !dbg !4937
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4938, metadata !DIExpression()), !dbg !4939
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4940, metadata !DIExpression()), !dbg !4941
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4942, metadata !DIExpression()), !dbg !4943
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4944, metadata !DIExpression()), !dbg !4945
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4948, metadata !DIExpression()), !dbg !4949
  %0 = load i64, i64* %size.addr, align 8, !dbg !4950
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4951
  %or = or i32 %1, 256, !dbg !4952
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4953
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4954
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4955

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4956
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4957
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4958

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4959
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4960
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4961
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4962
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4939
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4963
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4964
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4965
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4966
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4967
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4968
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4969
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4969
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4969
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4969
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4969
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4970
  br label %kmalloc.exit, !dbg !4970

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4971
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4972
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4972
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4974

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4975
  br label %kmalloc_index.exit.i, !dbg !4975

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4976
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4978
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4979

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4980
  br label %kmalloc_index.exit.i, !dbg !4980

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4981
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4983
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4984

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4985
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4986
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4987

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4988
  br label %kmalloc_index.exit.i, !dbg !4988

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4989
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4991
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4992

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4993
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4994
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4995

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4996
  br label %kmalloc_index.exit.i, !dbg !4996

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4997
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4999
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5000

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5001
  br label %kmalloc_index.exit.i, !dbg !5001

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5002
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5004
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5005

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5006
  br label %kmalloc_index.exit.i, !dbg !5006

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5007
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5009
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5010

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5011
  br label %kmalloc_index.exit.i, !dbg !5011

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5012
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5014
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5015

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5016
  br label %kmalloc_index.exit.i, !dbg !5016

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5017
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5019
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5020

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5021
  br label %kmalloc_index.exit.i, !dbg !5021

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5022
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5024
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5025

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5026
  br label %kmalloc_index.exit.i, !dbg !5026

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5027
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5029
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5030

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5031
  br label %kmalloc_index.exit.i, !dbg !5031

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5032
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5034
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5035

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5036
  br label %kmalloc_index.exit.i, !dbg !5036

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5037
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5039
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5040

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5044
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5045

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5046
  br label %kmalloc_index.exit.i, !dbg !5046

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5047
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5049
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5050

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5051
  br label %kmalloc_index.exit.i, !dbg !5051

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5052
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5054
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5055

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5056
  br label %kmalloc_index.exit.i, !dbg !5056

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5057
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5059
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5060

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5061
  br label %kmalloc_index.exit.i, !dbg !5061

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5062
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5064
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5065

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5066
  br label %kmalloc_index.exit.i, !dbg !5066

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5067
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5069
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5070

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5071
  br label %kmalloc_index.exit.i, !dbg !5071

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5072
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5074
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5075

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5076
  br label %kmalloc_index.exit.i, !dbg !5076

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5077
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5079
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5080

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5081
  br label %kmalloc_index.exit.i, !dbg !5081

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5082
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5084
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5085

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5086
  br label %kmalloc_index.exit.i, !dbg !5086

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5087
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5089
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5090

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5091
  br label %kmalloc_index.exit.i, !dbg !5091

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5092
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5094
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5095

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5096
  br label %kmalloc_index.exit.i, !dbg !5096

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5097
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5099
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5100

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5101
  br label %kmalloc_index.exit.i, !dbg !5101

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5102
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5104
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5105

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5106
  br label %kmalloc_index.exit.i, !dbg !5106

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5107
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5109
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5110

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5111
  br label %kmalloc_index.exit.i, !dbg !5111

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5112
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5114
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5115

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5116
  br label %kmalloc_index.exit.i, !dbg !5116

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5117, !srcloc !5120
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 198) #11, !dbg !5121, !srcloc !5124
  unreachable, !dbg !5125

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5126
  store i32 %45, i32* %index.i, align 4, !dbg !5127
  %46 = load i32, i32* %index.i, align 4, !dbg !5128
  %tobool.i = icmp ne i32 %46, 0, !dbg !5128
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5130

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5131
  br label %kmalloc.exit, !dbg !5131

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5132
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5133
  %and.i.i = and i32 %48, 17, !dbg !5133
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5133
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5133
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5133
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5133
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5135

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5136
  br label %kmalloc_type.exit.i, !dbg !5136

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5137
  %and2.i.i = and i32 %49, 1, !dbg !5138
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5137
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5137
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5137
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5139
  br label %kmalloc_type.exit.i, !dbg !5139

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5140
  %idxprom.i = zext i32 %51 to i64, !dbg !5141
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5141
  %52 = load i32, i32* %index.i, align 4, !dbg !5142
  %idxprom6.i = zext i32 %52 to i64, !dbg !5141
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5141
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5141
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5143
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5144
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5145
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5146
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5147
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5147
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5147
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5147
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5147
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4908
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5148
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5149
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5150
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5151
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5152
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5153
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5154
  store i8* %62, i8** %retval.i, align 8, !dbg !5155
  br label %kmalloc.exit, !dbg !5155

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5156
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5157
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5158
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5158
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5158
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5158
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5158
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5159
  br label %kmalloc.exit, !dbg !5159

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5160
  ret i8* %65, !dbg !5161
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #3 !dbg !5162 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  ret void, !dbg !5169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #3 !dbg !5170 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  br label %do.body, !dbg !5176

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5177

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5179

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5177

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5181
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5181
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5181
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5181
  br label %do.end3, !dbg !5181

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5177

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5183
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5184
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5185
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5186
  ret void, !dbg !5187
}

; Function Attrs: noredzone
declare dso_local void @xen_pcibk_do_op(%struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_init_devices(%struct.xen_pcibk_device* %pdev) #3 !dbg !5188 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  %0 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5191
  %tobool = icmp ne %struct.xen_pcibk_backend* %0, null, !dbg !5191
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5193

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5194
  %init = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %1, i32 0, i32 1, !dbg !5195
  %2 = load i32 (%struct.xen_pcibk_device*)*, i32 (%struct.xen_pcibk_device*)** %init, align 8, !dbg !5195
  %tobool1 = icmp ne i32 (%struct.xen_pcibk_device*)* %2, null, !dbg !5194
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5196

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5197
  %init2 = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %3, i32 0, i32 1, !dbg !5198
  %4 = load i32 (%struct.xen_pcibk_device*)*, i32 (%struct.xen_pcibk_device*)** %init2, align 8, !dbg !5198
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5199
  %call = call i32 %4(%struct.xen_pcibk_device* %5) #10, !dbg !5197
  store i32 %call, i32* %retval, align 4, !dbg !5200
  br label %return, !dbg !5200

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %retval, align 4, !dbg !5201
  br label %return, !dbg !5201

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5202
  ret i32 %6, !dbg !5202
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #3 !dbg !5203 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5210
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5211
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5212
  store i8* %0, i8** %driver_data, align 8, !dbg !5213
  ret void, !dbg !5214
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5215 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5219, metadata !DIExpression()), !dbg !5224
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5226, metadata !DIExpression()), !dbg !5227
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  %0 = load i64, i64* %size.addr, align 8, !dbg !5230
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5232
  br i1 %1, label %if.then, label %if.end447, !dbg !5233

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5234
  %tobool = icmp ne i64 %2, 0, !dbg !5234
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5237

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5238
  br label %return, !dbg !5238

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5239
  %cmp = icmp ult i64 %3, 4096, !dbg !5241
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5242

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5243
  br label %return, !dbg !5243

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub = sub i64 %4, 1, !dbg !5244
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5244
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5244

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub4 = sub i64 %6, 1, !dbg !5244
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5244
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5244

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub6 = sub i64 %8, 1, !dbg !5244
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5244
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5244

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5244

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub9 = sub i64 %9, 1, !dbg !5244
  %and = and i64 %sub9, -9223372036854775808, !dbg !5244
  %tobool10 = icmp ne i64 %and, 0, !dbg !5244
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5244

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5244

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub13 = sub i64 %10, 1, !dbg !5244
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5244
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5244
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5244

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5244

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub18 = sub i64 %11, 1, !dbg !5244
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5244
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5244
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5244

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5244

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub23 = sub i64 %12, 1, !dbg !5244
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5244
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5244
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5244

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5244

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub28 = sub i64 %13, 1, !dbg !5244
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5244
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5244
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5244

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5244

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub33 = sub i64 %14, 1, !dbg !5244
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5244
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5244
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5244

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5244

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub38 = sub i64 %15, 1, !dbg !5244
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5244
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5244
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5244

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5244

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub43 = sub i64 %16, 1, !dbg !5244
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5244
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5244
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5244

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5244

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub48 = sub i64 %17, 1, !dbg !5244
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5244
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5244
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5244

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5244

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub53 = sub i64 %18, 1, !dbg !5244
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5244
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5244
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5244

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5244

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub58 = sub i64 %19, 1, !dbg !5244
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5244
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5244
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5244

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5244

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub63 = sub i64 %20, 1, !dbg !5244
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5244
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5244
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5244

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5244

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub68 = sub i64 %21, 1, !dbg !5244
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5244
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5244
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5244

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5244

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub73 = sub i64 %22, 1, !dbg !5244
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5244
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5244
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5244

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5244

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub78 = sub i64 %23, 1, !dbg !5244
  %and79 = and i64 %sub78, 562949953421312, !dbg !5244
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5244
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5244

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5244

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub83 = sub i64 %24, 1, !dbg !5244
  %and84 = and i64 %sub83, 281474976710656, !dbg !5244
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5244
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5244

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5244

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub88 = sub i64 %25, 1, !dbg !5244
  %and89 = and i64 %sub88, 140737488355328, !dbg !5244
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5244
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5244

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5244

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub93 = sub i64 %26, 1, !dbg !5244
  %and94 = and i64 %sub93, 70368744177664, !dbg !5244
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5244
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5244

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5244

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub98 = sub i64 %27, 1, !dbg !5244
  %and99 = and i64 %sub98, 35184372088832, !dbg !5244
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5244
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5244

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5244

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub103 = sub i64 %28, 1, !dbg !5244
  %and104 = and i64 %sub103, 17592186044416, !dbg !5244
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5244
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5244

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5244

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub108 = sub i64 %29, 1, !dbg !5244
  %and109 = and i64 %sub108, 8796093022208, !dbg !5244
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5244
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5244

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5244

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub113 = sub i64 %30, 1, !dbg !5244
  %and114 = and i64 %sub113, 4398046511104, !dbg !5244
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5244
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5244

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5244

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub118 = sub i64 %31, 1, !dbg !5244
  %and119 = and i64 %sub118, 2199023255552, !dbg !5244
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5244
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5244

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5244

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub123 = sub i64 %32, 1, !dbg !5244
  %and124 = and i64 %sub123, 1099511627776, !dbg !5244
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5244
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5244

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5244

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub128 = sub i64 %33, 1, !dbg !5244
  %and129 = and i64 %sub128, 549755813888, !dbg !5244
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5244
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5244

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5244

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub133 = sub i64 %34, 1, !dbg !5244
  %and134 = and i64 %sub133, 274877906944, !dbg !5244
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5244
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5244

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5244

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub138 = sub i64 %35, 1, !dbg !5244
  %and139 = and i64 %sub138, 137438953472, !dbg !5244
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5244
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5244

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5244

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub143 = sub i64 %36, 1, !dbg !5244
  %and144 = and i64 %sub143, 68719476736, !dbg !5244
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5244
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5244

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5244

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub148 = sub i64 %37, 1, !dbg !5244
  %and149 = and i64 %sub148, 34359738368, !dbg !5244
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5244
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5244

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5244

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub153 = sub i64 %38, 1, !dbg !5244
  %and154 = and i64 %sub153, 17179869184, !dbg !5244
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5244
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5244

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5244

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub158 = sub i64 %39, 1, !dbg !5244
  %and159 = and i64 %sub158, 8589934592, !dbg !5244
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5244
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5244

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5244

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub163 = sub i64 %40, 1, !dbg !5244
  %and164 = and i64 %sub163, 4294967296, !dbg !5244
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5244
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5244

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5244

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub168 = sub i64 %41, 1, !dbg !5244
  %and169 = and i64 %sub168, 2147483648, !dbg !5244
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5244
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5244

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5244

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub173 = sub i64 %42, 1, !dbg !5244
  %and174 = and i64 %sub173, 1073741824, !dbg !5244
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5244
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5244

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5244

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub178 = sub i64 %43, 1, !dbg !5244
  %and179 = and i64 %sub178, 536870912, !dbg !5244
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5244
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5244

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5244

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub183 = sub i64 %44, 1, !dbg !5244
  %and184 = and i64 %sub183, 268435456, !dbg !5244
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5244
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5244

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5244

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub188 = sub i64 %45, 1, !dbg !5244
  %and189 = and i64 %sub188, 134217728, !dbg !5244
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5244
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5244

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5244

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub193 = sub i64 %46, 1, !dbg !5244
  %and194 = and i64 %sub193, 67108864, !dbg !5244
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5244
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5244

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5244

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub198 = sub i64 %47, 1, !dbg !5244
  %and199 = and i64 %sub198, 33554432, !dbg !5244
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5244
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5244

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5244

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub203 = sub i64 %48, 1, !dbg !5244
  %and204 = and i64 %sub203, 16777216, !dbg !5244
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5244
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5244

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5244

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub208 = sub i64 %49, 1, !dbg !5244
  %and209 = and i64 %sub208, 8388608, !dbg !5244
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5244
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5244

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5244

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub213 = sub i64 %50, 1, !dbg !5244
  %and214 = and i64 %sub213, 4194304, !dbg !5244
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5244
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5244

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5244

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub218 = sub i64 %51, 1, !dbg !5244
  %and219 = and i64 %sub218, 2097152, !dbg !5244
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5244
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5244

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5244

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub223 = sub i64 %52, 1, !dbg !5244
  %and224 = and i64 %sub223, 1048576, !dbg !5244
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5244
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5244

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5244

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub228 = sub i64 %53, 1, !dbg !5244
  %and229 = and i64 %sub228, 524288, !dbg !5244
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5244
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5244

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5244

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub233 = sub i64 %54, 1, !dbg !5244
  %and234 = and i64 %sub233, 262144, !dbg !5244
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5244
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5244

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5244

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub238 = sub i64 %55, 1, !dbg !5244
  %and239 = and i64 %sub238, 131072, !dbg !5244
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5244
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5244

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5244

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub243 = sub i64 %56, 1, !dbg !5244
  %and244 = and i64 %sub243, 65536, !dbg !5244
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5244
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5244

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5244

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub248 = sub i64 %57, 1, !dbg !5244
  %and249 = and i64 %sub248, 32768, !dbg !5244
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5244
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5244

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5244

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub253 = sub i64 %58, 1, !dbg !5244
  %and254 = and i64 %sub253, 16384, !dbg !5244
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5244
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5244

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5244

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub258 = sub i64 %59, 1, !dbg !5244
  %and259 = and i64 %sub258, 8192, !dbg !5244
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5244
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5244

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5244

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub263 = sub i64 %60, 1, !dbg !5244
  %and264 = and i64 %sub263, 4096, !dbg !5244
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5244
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5244

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5244

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub268 = sub i64 %61, 1, !dbg !5244
  %and269 = and i64 %sub268, 2048, !dbg !5244
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5244
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5244

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5244

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub273 = sub i64 %62, 1, !dbg !5244
  %and274 = and i64 %sub273, 1024, !dbg !5244
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5244
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5244

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5244

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub278 = sub i64 %63, 1, !dbg !5244
  %and279 = and i64 %sub278, 512, !dbg !5244
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5244
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5244

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5244

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub283 = sub i64 %64, 1, !dbg !5244
  %and284 = and i64 %sub283, 256, !dbg !5244
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5244
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5244

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5244

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub288 = sub i64 %65, 1, !dbg !5244
  %and289 = and i64 %sub288, 128, !dbg !5244
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5244
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5244

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5244

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub293 = sub i64 %66, 1, !dbg !5244
  %and294 = and i64 %sub293, 64, !dbg !5244
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5244
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5244

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5244

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub298 = sub i64 %67, 1, !dbg !5244
  %and299 = and i64 %sub298, 32, !dbg !5244
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5244
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5244

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5244

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub303 = sub i64 %68, 1, !dbg !5244
  %and304 = and i64 %sub303, 16, !dbg !5244
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5244
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5244

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5244

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub308 = sub i64 %69, 1, !dbg !5244
  %and309 = and i64 %sub308, 8, !dbg !5244
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5244
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5244

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5244

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub313 = sub i64 %70, 1, !dbg !5244
  %and314 = and i64 %sub313, 4, !dbg !5244
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5244
  %71 = zext i1 %tobool315 to i64, !dbg !5244
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5244
  br label %cond.end, !dbg !5244

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5244
  br label %cond.end317, !dbg !5244

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5244
  br label %cond.end319, !dbg !5244

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5244
  br label %cond.end321, !dbg !5244

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5244
  br label %cond.end323, !dbg !5244

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5244
  br label %cond.end325, !dbg !5244

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5244
  br label %cond.end327, !dbg !5244

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5244
  br label %cond.end329, !dbg !5244

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5244
  br label %cond.end331, !dbg !5244

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5244
  br label %cond.end333, !dbg !5244

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5244
  br label %cond.end335, !dbg !5244

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5244
  br label %cond.end337, !dbg !5244

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5244
  br label %cond.end339, !dbg !5244

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5244
  br label %cond.end341, !dbg !5244

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5244
  br label %cond.end343, !dbg !5244

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5244
  br label %cond.end345, !dbg !5244

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5244
  br label %cond.end347, !dbg !5244

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5244
  br label %cond.end349, !dbg !5244

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5244
  br label %cond.end351, !dbg !5244

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5244
  br label %cond.end353, !dbg !5244

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5244
  br label %cond.end355, !dbg !5244

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5244
  br label %cond.end357, !dbg !5244

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5244
  br label %cond.end359, !dbg !5244

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5244
  br label %cond.end361, !dbg !5244

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5244
  br label %cond.end363, !dbg !5244

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5244
  br label %cond.end365, !dbg !5244

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5244
  br label %cond.end367, !dbg !5244

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5244
  br label %cond.end369, !dbg !5244

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5244
  br label %cond.end371, !dbg !5244

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5244
  br label %cond.end373, !dbg !5244

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5244
  br label %cond.end375, !dbg !5244

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5244
  br label %cond.end377, !dbg !5244

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5244
  br label %cond.end379, !dbg !5244

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5244
  br label %cond.end381, !dbg !5244

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5244
  br label %cond.end383, !dbg !5244

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5244
  br label %cond.end385, !dbg !5244

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5244
  br label %cond.end387, !dbg !5244

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5244
  br label %cond.end389, !dbg !5244

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5244
  br label %cond.end391, !dbg !5244

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5244
  br label %cond.end393, !dbg !5244

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5244
  br label %cond.end395, !dbg !5244

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5244
  br label %cond.end397, !dbg !5244

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5244
  br label %cond.end399, !dbg !5244

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5244
  br label %cond.end401, !dbg !5244

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5244
  br label %cond.end403, !dbg !5244

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5244
  br label %cond.end405, !dbg !5244

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5244
  br label %cond.end407, !dbg !5244

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5244
  br label %cond.end409, !dbg !5244

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5244
  br label %cond.end411, !dbg !5244

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5244
  br label %cond.end413, !dbg !5244

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5244
  br label %cond.end415, !dbg !5244

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5244
  br label %cond.end417, !dbg !5244

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5244
  br label %cond.end419, !dbg !5244

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5244
  br label %cond.end421, !dbg !5244

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5244
  br label %cond.end423, !dbg !5244

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5244
  br label %cond.end425, !dbg !5244

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5244
  br label %cond.end427, !dbg !5244

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5244
  br label %cond.end429, !dbg !5244

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5244
  br label %cond.end431, !dbg !5244

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5244
  br label %cond.end433, !dbg !5244

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5244
  br label %cond.end435, !dbg !5244

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5244
  br label %cond.end437, !dbg !5244

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5244
  br label %cond.end440, !dbg !5244

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5244

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5244
  br label %cond.end444, !dbg !5244

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5244
  %sub443 = sub i64 %72, 1, !dbg !5244
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5244
  br label %cond.end444, !dbg !5244

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5244
  %sub446 = sub i32 %cond445, 12, !dbg !5245
  %add = add i32 %sub446, 1, !dbg !5246
  store i32 %add, i32* %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5248
  %dec = add i64 %73, -1, !dbg !5248
  store i64 %dec, i64* %size.addr, align 8, !dbg !5248
  %74 = load i64, i64* %size.addr, align 8, !dbg !5249
  %shr = lshr i64 %74, 12, !dbg !5249
  store i64 %shr, i64* %size.addr, align 8, !dbg !5249
  %75 = load i64, i64* %size.addr, align 8, !dbg !5250
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5227
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5251
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5252
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5251, !srcloc !5253
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5251
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5254
  %add.i = add i32 %79, 1, !dbg !5255
  store i32 %add.i, i32* %retval, align 4, !dbg !5256
  br label %return, !dbg !5256

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5257
  ret i32 %80, !dbg !5257
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5258 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5219, metadata !DIExpression()), !dbg !5262
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5226, metadata !DIExpression()), !dbg !5264
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load i64, i64* %n.addr, align 8, !dbg !5267
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5264
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5268
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5269
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5268, !srcloc !5253
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5268
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5270
  %add.i = add i32 %4, 1, !dbg !5271
  %sub = sub i32 %add.i, 1, !dbg !5272
  ret i32 %sub, !dbg !5273
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #3 !dbg !5274 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5286
  ret i8* %0, !dbg !5287
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_read_driver_state(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_setup_backend(%struct.xen_pcibk_device* %pdev) #3 !dbg !5288 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %domain = alloca i32, align 4
  %bus = alloca i32, align 4
  %slot = alloca i32, align 4
  %func = alloca i32, align 4
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %num_devs = alloca i32, align 4
  %dev_str = alloca [64 x i8], align 16
  %state_str = alloca [64 x i8], align 16
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %l = alloca i32, align 4
  %.compoundliteral20 = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral55 = alloca %struct.xenbus_transaction, align 4
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5289, metadata !DIExpression()), !dbg !5290
  call void @llvm.dbg.declare(metadata i32* %domain, metadata !5291, metadata !DIExpression()), !dbg !5292
  call void @llvm.dbg.declare(metadata i32* %bus, metadata !5293, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.declare(metadata i32* %slot, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata i32* %func, metadata !5297, metadata !DIExpression()), !dbg !5298
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5299, metadata !DIExpression()), !dbg !5300
  store i32 0, i32* %err, align 4, !dbg !5300
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5301, metadata !DIExpression()), !dbg !5302
  call void @llvm.dbg.declare(metadata i32* %num_devs, metadata !5303, metadata !DIExpression()), !dbg !5304
  call void @llvm.dbg.declare(metadata [64 x i8]* %dev_str, metadata !5305, metadata !DIExpression()), !dbg !5307
  call void @llvm.dbg.declare(metadata [64 x i8]* %state_str, metadata !5308, metadata !DIExpression()), !dbg !5309
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5310
  %dev_lock = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %0, i32 0, i32 1, !dbg !5311
  call void @mutex_lock(%struct.mutex* %dev_lock) #10, !dbg !5312
  %1 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5313
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %1, i32 0, i32 2, !dbg !5315
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5315
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 1, !dbg !5316
  %3 = load i8*, i8** %nodename, align 8, !dbg !5316
  %call = call i32 @xenbus_read_driver_state(i8* %3) #10, !dbg !5317
  %cmp = icmp ne i32 %call, 2, !dbg !5318
  br i1 %cmp, label %if.then, label %if.end, !dbg !5319

if.then:                                          ; preds = %entry
  br label %out, !dbg !5320

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5321
  store i32 0, i32* %id, align 4, !dbg !5321
  %4 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5322
  %xdev1 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %4, i32 0, i32 2, !dbg !5323
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev1, align 8, !dbg !5323
  %nodename2 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 1, !dbg !5324
  %6 = load i8*, i8** %nodename2, align 8, !dbg !5324
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5325
  %7 = load i32, i32* %coerce.dive, align 4, !dbg !5325
  %call3 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %7, i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %num_devs) #10, !dbg !5325
  store i32 %call3, i32* %err, align 4, !dbg !5326
  %8 = load i32, i32* %err, align 4, !dbg !5327
  %cmp4 = icmp ne i32 %8, 1, !dbg !5329
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !5330

if.then5:                                         ; preds = %if.end
  %9 = load i32, i32* %err, align 4, !dbg !5331
  %cmp6 = icmp sge i32 %9, 0, !dbg !5334
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5335

if.then7:                                         ; preds = %if.then5
  store i32 -22, i32* %err, align 4, !dbg !5336
  br label %if.end8, !dbg !5337

if.end8:                                          ; preds = %if.then7, %if.then5
  %10 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5338
  %xdev9 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %10, i32 0, i32 2, !dbg !5339
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev9, align 8, !dbg !5339
  %12 = load i32, i32* %err, align 4, !dbg !5340
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %11, i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !5341
  br label %out, !dbg !5342

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5343
  br label %for.cond, !dbg !5345

for.cond:                                         ; preds = %for.inc, %if.end10
  %13 = load i32, i32* %i, align 4, !dbg !5346
  %14 = load i32, i32* %num_devs, align 4, !dbg !5348
  %cmp11 = icmp slt i32 %13, %14, !dbg !5349
  br i1 %cmp11, label %for.body, label %for.end, !dbg !5350

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %l, metadata !5351, metadata !DIExpression()), !dbg !5353
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %dev_str, i64 0, i64 0, !dbg !5354
  %15 = load i32, i32* %i, align 4, !dbg !5355
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %15) #10, !dbg !5356
  store i32 %call12, i32* %l, align 4, !dbg !5353
  %16 = load i32, i32* %l, align 4, !dbg !5357
  %conv = sext i32 %16 to i64, !dbg !5357
  %cmp13 = icmp uge i64 %conv, 63, !dbg !5357
  %lnot = xor i1 %cmp13, true, !dbg !5357
  %lnot15 = xor i1 %lnot, true, !dbg !5357
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5357
  %conv16 = sext i32 %lnot.ext to i64, !dbg !5357
  %tobool = icmp ne i64 %conv16, 0, !dbg !5357
  br i1 %tobool, label %if.then17, label %if.end19, !dbg !5359

if.then17:                                        ; preds = %for.body
  store i32 -12, i32* %err, align 4, !dbg !5360
  %17 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5362
  %xdev18 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %17, i32 0, i32 2, !dbg !5363
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev18, align 8, !dbg !5363
  %19 = load i32, i32* %err, align 4, !dbg !5364
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %18, i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !5365
  br label %out, !dbg !5366

if.end19:                                         ; preds = %for.body
  %id21 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral20, i32 0, i32 0, !dbg !5367
  store i32 0, i32* %id21, align 4, !dbg !5367
  %20 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5368
  %xdev22 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %20, i32 0, i32 2, !dbg !5369
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev22, align 8, !dbg !5369
  %nodename23 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %21, i32 0, i32 1, !dbg !5370
  %22 = load i8*, i8** %nodename23, align 8, !dbg !5370
  %arraydecay24 = getelementptr inbounds [64 x i8], [64 x i8]* %dev_str, i64 0, i64 0, !dbg !5371
  %coerce.dive25 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral20, i32 0, i32 0, !dbg !5372
  %23 = load i32, i32* %coerce.dive25, align 4, !dbg !5372
  %call26 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %23, i8* %22, i8* %arraydecay24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %domain, i32* %bus, i32* %slot, i32* %func) #10, !dbg !5372
  store i32 %call26, i32* %err, align 4, !dbg !5373
  %24 = load i32, i32* %err, align 4, !dbg !5374
  %cmp27 = icmp slt i32 %24, 0, !dbg !5376
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !5377

if.then29:                                        ; preds = %if.end19
  %25 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5378
  %xdev30 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %25, i32 0, i32 2, !dbg !5380
  %26 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev30, align 8, !dbg !5380
  %27 = load i32, i32* %err, align 4, !dbg !5381
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %26, i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5382
  br label %out, !dbg !5383

if.end31:                                         ; preds = %if.end19
  %28 = load i32, i32* %err, align 4, !dbg !5384
  %cmp32 = icmp ne i32 %28, 4, !dbg !5386
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !5387

if.then34:                                        ; preds = %if.end31
  store i32 -22, i32* %err, align 4, !dbg !5388
  %29 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5390
  %xdev35 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %29, i32 0, i32 2, !dbg !5391
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev35, align 8, !dbg !5391
  %31 = load i32, i32* %err, align 4, !dbg !5392
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %30, i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !5393
  br label %out, !dbg !5394

if.end36:                                         ; preds = %if.end31
  %32 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5395
  %33 = load i32, i32* %domain, align 4, !dbg !5396
  %34 = load i32, i32* %bus, align 4, !dbg !5397
  %35 = load i32, i32* %slot, align 4, !dbg !5398
  %36 = load i32, i32* %func, align 4, !dbg !5399
  %37 = load i32, i32* %i, align 4, !dbg !5400
  %call37 = call i32 @xen_pcibk_export_device(%struct.xen_pcibk_device* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37) #10, !dbg !5401
  store i32 %call37, i32* %err, align 4, !dbg !5402
  %38 = load i32, i32* %err, align 4, !dbg !5403
  %tobool38 = icmp ne i32 %38, 0, !dbg !5403
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5405

if.then39:                                        ; preds = %if.end36
  br label %out, !dbg !5406

if.end40:                                         ; preds = %if.end36
  %arraydecay41 = getelementptr inbounds [64 x i8], [64 x i8]* %state_str, i64 0, i64 0, !dbg !5407
  %39 = load i32, i32* %i, align 4, !dbg !5408
  %call42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay41, i64 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %39) #10, !dbg !5409
  store i32 %call42, i32* %l, align 4, !dbg !5410
  %40 = load i32, i32* %l, align 4, !dbg !5411
  %conv43 = sext i32 %40 to i64, !dbg !5411
  %cmp44 = icmp uge i64 %conv43, 63, !dbg !5411
  %lnot46 = xor i1 %cmp44, true, !dbg !5411
  %lnot48 = xor i1 %lnot46, true, !dbg !5411
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !5411
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !5411
  %tobool51 = icmp ne i64 %conv50, 0, !dbg !5411
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !5413

if.then52:                                        ; preds = %if.end40
  store i32 -12, i32* %err, align 4, !dbg !5414
  %41 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5416
  %xdev53 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %41, i32 0, i32 2, !dbg !5417
  %42 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev53, align 8, !dbg !5417
  %43 = load i32, i32* %err, align 4, !dbg !5418
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %42, i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !5419
  br label %out, !dbg !5420

if.end54:                                         ; preds = %if.end40
  %id56 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral55, i32 0, i32 0, !dbg !5421
  store i32 0, i32* %id56, align 4, !dbg !5421
  %44 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5422
  %xdev57 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %44, i32 0, i32 2, !dbg !5423
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev57, align 8, !dbg !5423
  %nodename58 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %45, i32 0, i32 1, !dbg !5424
  %46 = load i8*, i8** %nodename58, align 8, !dbg !5424
  %arraydecay59 = getelementptr inbounds [64 x i8], [64 x i8]* %state_str, i64 0, i64 0, !dbg !5425
  %coerce.dive60 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral55, i32 0, i32 0, !dbg !5426
  %47 = load i32, i32* %coerce.dive60, align 4, !dbg !5426
  %call61 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %47, i8* %46, i8* %arraydecay59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 3) #10, !dbg !5426
  store i32 %call61, i32* %err, align 4, !dbg !5427
  %48 = load i32, i32* %err, align 4, !dbg !5428
  %tobool62 = icmp ne i32 %48, 0, !dbg !5428
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !5430

if.then63:                                        ; preds = %if.end54
  %49 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5431
  %xdev64 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %49, i32 0, i32 2, !dbg !5433
  %50 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev64, align 8, !dbg !5433
  %51 = load i32, i32* %err, align 4, !dbg !5434
  %52 = load i32, i32* %i, align 4, !dbg !5435
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %50, i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %52) #10, !dbg !5436
  br label %out, !dbg !5437

if.end65:                                         ; preds = %if.end54
  br label %for.inc, !dbg !5438

for.inc:                                          ; preds = %if.end65
  %53 = load i32, i32* %i, align 4, !dbg !5439
  %inc = add i32 %53, 1, !dbg !5439
  store i32 %inc, i32* %i, align 4, !dbg !5439
  br label %for.cond, !dbg !5440, !llvm.loop !5441

for.end:                                          ; preds = %for.cond
  %54 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5443
  %call66 = call i32 @xen_pcibk_publish_pci_roots(%struct.xen_pcibk_device* %54, i32 (%struct.xen_pcibk_device*, i32, i32)* @xen_pcibk_publish_pci_root) #10, !dbg !5444
  store i32 %call66, i32* %err, align 4, !dbg !5445
  %55 = load i32, i32* %err, align 4, !dbg !5446
  %tobool67 = icmp ne i32 %55, 0, !dbg !5446
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !5448

if.then68:                                        ; preds = %for.end
  %56 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5449
  %xdev69 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %56, i32 0, i32 2, !dbg !5451
  %57 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev69, align 8, !dbg !5451
  %58 = load i32, i32* %err, align 4, !dbg !5452
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %57, i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !5453
  br label %out, !dbg !5454

if.end70:                                         ; preds = %for.end
  %59 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5455
  %xdev71 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %59, i32 0, i32 2, !dbg !5456
  %60 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev71, align 8, !dbg !5456
  %call72 = call i32 @xenbus_switch_state(%struct.xenbus_device* %60, i32 3) #10, !dbg !5457
  store i32 %call72, i32* %err, align 4, !dbg !5458
  %61 = load i32, i32* %err, align 4, !dbg !5459
  %tobool73 = icmp ne i32 %61, 0, !dbg !5459
  br i1 %tobool73, label %if.then74, label %if.end76, !dbg !5461

if.then74:                                        ; preds = %if.end70
  %62 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5462
  %xdev75 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %62, i32 0, i32 2, !dbg !5463
  %63 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev75, align 8, !dbg !5463
  %64 = load i32, i32* %err, align 4, !dbg !5464
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %63, i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !5465
  br label %if.end76, !dbg !5465

if.end76:                                         ; preds = %if.then74, %if.end70
  br label %out, !dbg !5459

out:                                              ; preds = %if.end76, %if.then68, %if.then63, %if.then52, %if.then39, %if.then34, %if.then29, %if.then17, %if.end8, %if.then
  call void @llvm.dbg.label(metadata !5466), !dbg !5467
  %65 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5468
  %dev_lock77 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %65, i32 0, i32 1, !dbg !5469
  call void @mutex_unlock(%struct.mutex* %dev_lock77) #10, !dbg !5470
  %66 = load i32, i32* %err, align 4, !dbg !5471
  %tobool78 = icmp ne i32 %66, 0, !dbg !5471
  br i1 %tobool78, label %if.end81, label %if.then79, !dbg !5473

if.then79:                                        ; preds = %out
  %67 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5474
  %call80 = call i32 @xen_pcibk_attach(%struct.xen_pcibk_device* %67) #10, !dbg !5475
  br label %if.end81, !dbg !5475

if.end81:                                         ; preds = %if.then79, %out
  %68 = load i32, i32* %err, align 4, !dbg !5476
  ret i32 %68, !dbg !5477
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_scanf(i32, i8*, i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_export_device(%struct.xen_pcibk_device* %pdev, i32 %domain, i32 %bus, i32 %slot, i32 %func, i32 %devid) #3 !dbg !5478 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %domain.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %devid.addr = alloca i32, align 4
  %dev = alloca %struct.pci_dev*, align 8
  %err = alloca i32, align 4
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5481, metadata !DIExpression()), !dbg !5482
  store i32 %domain, i32* %domain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %domain.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  store i32 %bus, i32* %bus.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  store i32 %func, i32* %func.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %func.addr, metadata !5489, metadata !DIExpression()), !dbg !5490
  store i32 %devid, i32* %devid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devid.addr, metadata !5491, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5493, metadata !DIExpression()), !dbg !5494
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5495, metadata !DIExpression()), !dbg !5496
  store i32 0, i32* %err, align 4, !dbg !5496
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5497
  %1 = load i32, i32* %domain.addr, align 4, !dbg !5498
  %2 = load i32, i32* %bus.addr, align 4, !dbg !5499
  %3 = load i32, i32* %slot.addr, align 4, !dbg !5500
  %4 = load i32, i32* %func.addr, align 4, !dbg !5501
  %call = call %struct.pci_dev* @pcistub_get_pci_dev_by_slot(%struct.xen_pcibk_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #10, !dbg !5502
  store %struct.pci_dev* %call, %struct.pci_dev** %dev, align 8, !dbg !5503
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5504
  %tobool = icmp ne %struct.pci_dev* %5, null, !dbg !5504
  br i1 %tobool, label %if.end, label %if.then, !dbg !5506

if.then:                                          ; preds = %entry
  store i32 -22, i32* %err, align 4, !dbg !5507
  %6 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5509
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %6, i32 0, i32 2, !dbg !5510
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5510
  %8 = load i32, i32* %err, align 4, !dbg !5511
  %9 = load i32, i32* %domain.addr, align 4, !dbg !5512
  %10 = load i32, i32* %bus.addr, align 4, !dbg !5513
  %11 = load i32, i32* %slot.addr, align 4, !dbg !5514
  %12 = load i32, i32* %func.addr, align 4, !dbg !5515
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %7, i32 %8, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i64 0, i64 0), i32 %9, i32 %10, i32 %11, i32 %12) #10, !dbg !5516
  br label %out, !dbg !5517

if.end:                                           ; preds = %entry
  %13 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5518
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5519
  %15 = load i32, i32* %devid.addr, align 4, !dbg !5520
  %call1 = call i32 @xen_pcibk_add_pci_dev(%struct.xen_pcibk_device* %13, %struct.pci_dev* %14, i32 %15, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)* @xen_pcibk_publish_pci_dev) #10, !dbg !5521
  store i32 %call1, i32* %err, align 4, !dbg !5522
  %16 = load i32, i32* %err, align 4, !dbg !5523
  %tobool2 = icmp ne i32 %16, 0, !dbg !5523
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5525

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !5526

if.end4:                                          ; preds = %if.end
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5527
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 41, !dbg !5527
  %18 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5527
  %xdev6 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %18, i32 0, i32 2, !dbg !5527
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev6, align 8, !dbg !5527
  %otherend_id = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %19, i32 0, i32 3, !dbg !5527
  %20 = load i32, i32* %otherend_id, align 8, !dbg !5527
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %20) #9, !dbg !5527
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5528
  %22 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5530
  %xdev7 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %22, i32 0, i32 2, !dbg !5531
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev7, align 8, !dbg !5531
  %otherend_id8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %23, i32 0, i32 3, !dbg !5532
  %24 = load i32, i32* %otherend_id8, align 8, !dbg !5532
  %conv = trunc i32 %24 to i16, !dbg !5530
  %call9 = call i32 @xen_register_device_domain_owner(%struct.pci_dev* %21, i16 zeroext %conv) #10, !dbg !5533
  %cmp = icmp ne i32 %call9, 0, !dbg !5534
  br i1 %cmp, label %if.then11, label %if.end19, !dbg !5535

if.then11:                                        ; preds = %if.end4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5536
  %dev12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 41, !dbg !5536
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5536
  %call13 = call i32 @xen_find_device_domain_owner(%struct.pci_dev* %26) #10, !dbg !5536
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 %call13) #9, !dbg !5536
  %27 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5538
  %call14 = call i32 @xen_unregister_device_domain_owner(%struct.pci_dev* %27) #10, !dbg !5539
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5540
  %29 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5541
  %xdev15 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %29, i32 0, i32 2, !dbg !5542
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev15, align 8, !dbg !5542
  %otherend_id16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %30, i32 0, i32 3, !dbg !5543
  %31 = load i32, i32* %otherend_id16, align 8, !dbg !5543
  %conv17 = trunc i32 %31 to i16, !dbg !5541
  %call18 = call i32 @xen_register_device_domain_owner(%struct.pci_dev* %28, i16 zeroext %conv17) #10, !dbg !5544
  br label %if.end19, !dbg !5545

if.end19:                                         ; preds = %if.then11, %if.end4
  br label %out, !dbg !5546

out:                                              ; preds = %if.end19, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !5547), !dbg !5548
  %32 = load i32, i32* %err, align 4, !dbg !5549
  ret i32 %32, !dbg !5550
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_publish_pci_roots(%struct.xen_pcibk_device* %pdev, i32 (%struct.xen_pcibk_device*, i32, i32)* %cb) #3 !dbg !5551 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %cb.addr = alloca i32 (%struct.xen_pcibk_device*, i32, i32)*, align 8
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5552, metadata !DIExpression()), !dbg !5553
  store i32 (%struct.xen_pcibk_device*, i32, i32)* %cb, i32 (%struct.xen_pcibk_device*, i32, i32)** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.xen_pcibk_device*, i32, i32)** %cb.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5556
  %tobool = icmp ne %struct.xen_pcibk_backend* %0, null, !dbg !5556
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5558

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5559
  %publish = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %1, i32 0, i32 4, !dbg !5560
  %2 = load i32 (%struct.xen_pcibk_device*, i32 (%struct.xen_pcibk_device*, i32, i32)*)*, i32 (%struct.xen_pcibk_device*, i32 (%struct.xen_pcibk_device*, i32, i32)*)** %publish, align 8, !dbg !5560
  %tobool1 = icmp ne i32 (%struct.xen_pcibk_device*, i32 (%struct.xen_pcibk_device*, i32, i32)*)* %2, null, !dbg !5559
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5561

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5562
  %publish2 = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %3, i32 0, i32 4, !dbg !5563
  %4 = load i32 (%struct.xen_pcibk_device*, i32 (%struct.xen_pcibk_device*, i32, i32)*)*, i32 (%struct.xen_pcibk_device*, i32 (%struct.xen_pcibk_device*, i32, i32)*)** %publish2, align 8, !dbg !5563
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5564
  %6 = load i32 (%struct.xen_pcibk_device*, i32, i32)*, i32 (%struct.xen_pcibk_device*, i32, i32)** %cb.addr, align 8, !dbg !5565
  %call = call i32 %4(%struct.xen_pcibk_device* %5, i32 (%struct.xen_pcibk_device*, i32, i32)* %6) #10, !dbg !5562
  store i32 %call, i32* %retval, align 4, !dbg !5566
  br label %return, !dbg !5566

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %retval, align 4, !dbg !5567
  br label %return, !dbg !5567

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5568
  ret i32 %7, !dbg !5568
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_publish_pci_root(%struct.xen_pcibk_device* %pdev, i32 %domain, i32 %bus) #3 !dbg !5569 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %domain.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %root_num = alloca i32, align 4
  %len = alloca i32, align 4
  %err = alloca i32, align 4
  %str = alloca [64 x i8], align 16
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral13 = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral47 = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral57 = alloca %struct.xenbus_transaction, align 4
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5570, metadata !DIExpression()), !dbg !5571
  store i32 %domain, i32* %domain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %domain.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  store i32 %bus, i32* %bus.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus.addr, metadata !5574, metadata !DIExpression()), !dbg !5575
  call void @llvm.dbg.declare(metadata i32* %d, metadata !5576, metadata !DIExpression()), !dbg !5577
  call void @llvm.dbg.declare(metadata i32* %b, metadata !5578, metadata !DIExpression()), !dbg !5579
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5580, metadata !DIExpression()), !dbg !5581
  call void @llvm.dbg.declare(metadata i32* %root_num, metadata !5582, metadata !DIExpression()), !dbg !5583
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5584, metadata !DIExpression()), !dbg !5585
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5586, metadata !DIExpression()), !dbg !5587
  call void @llvm.dbg.declare(metadata [64 x i8]* %str, metadata !5588, metadata !DIExpression()), !dbg !5589
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5590
  store i32 0, i32* %id, align 4, !dbg !5590
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5591
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %0, i32 0, i32 2, !dbg !5592
  %1 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5592
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %1, i32 0, i32 1, !dbg !5593
  %2 = load i8*, i8** %nodename, align 8, !dbg !5593
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5594
  %3 = load i32, i32* %coerce.dive, align 4, !dbg !5594
  %call = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %3, i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %root_num) #10, !dbg !5594
  store i32 %call, i32* %err, align 4, !dbg !5595
  %4 = load i32, i32* %err, align 4, !dbg !5596
  %cmp = icmp eq i32 %4, 0, !dbg !5598
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5599

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %err, align 4, !dbg !5600
  %cmp1 = icmp eq i32 %5, -2, !dbg !5601
  br i1 %cmp1, label %if.then, label %if.else, !dbg !5602

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %root_num, align 4, !dbg !5603
  br label %if.end4, !dbg !5604

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %err, align 4, !dbg !5605
  %cmp2 = icmp slt i32 %6, 0, !dbg !5607
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5608

if.then3:                                         ; preds = %if.else
  br label %out, !dbg !5609

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  store i32 0, i32* %i, align 4, !dbg !5610
  br label %for.cond, !dbg !5612

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = load i32, i32* %i, align 4, !dbg !5613
  %8 = load i32, i32* %root_num, align 4, !dbg !5615
  %cmp5 = icmp slt i32 %7, %8, !dbg !5616
  br i1 %cmp5, label %for.body, label %for.end, !dbg !5617

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %str, i64 0, i64 0, !dbg !5618
  %9 = load i32, i32* %i, align 4, !dbg !5620
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %9) #10, !dbg !5621
  store i32 %call6, i32* %len, align 4, !dbg !5622
  %10 = load i32, i32* %len, align 4, !dbg !5623
  %conv = sext i32 %10 to i64, !dbg !5623
  %cmp7 = icmp uge i64 %conv, 63, !dbg !5623
  %lnot = xor i1 %cmp7, true, !dbg !5623
  %lnot9 = xor i1 %lnot, true, !dbg !5623
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5623
  %conv10 = sext i32 %lnot.ext to i64, !dbg !5623
  %tobool = icmp ne i64 %conv10, 0, !dbg !5623
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !5625

if.then11:                                        ; preds = %for.body
  store i32 -12, i32* %err, align 4, !dbg !5626
  br label %out, !dbg !5628

if.end12:                                         ; preds = %for.body
  %id14 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral13, i32 0, i32 0, !dbg !5629
  store i32 0, i32* %id14, align 4, !dbg !5629
  %11 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5630
  %xdev15 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %11, i32 0, i32 2, !dbg !5631
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev15, align 8, !dbg !5631
  %nodename16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 1, !dbg !5632
  %13 = load i8*, i8** %nodename16, align 8, !dbg !5632
  %arraydecay17 = getelementptr inbounds [64 x i8], [64 x i8]* %str, i64 0, i64 0, !dbg !5633
  %coerce.dive18 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral13, i32 0, i32 0, !dbg !5634
  %14 = load i32, i32* %coerce.dive18, align 4, !dbg !5634
  %call19 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %14, i8* %13, i8* %arraydecay17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32* %d, i32* %b) #10, !dbg !5634
  store i32 %call19, i32* %err, align 4, !dbg !5635
  %15 = load i32, i32* %err, align 4, !dbg !5636
  %cmp20 = icmp slt i32 %15, 0, !dbg !5638
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5639

if.then22:                                        ; preds = %if.end12
  br label %out, !dbg !5640

if.end23:                                         ; preds = %if.end12
  %16 = load i32, i32* %err, align 4, !dbg !5641
  %cmp24 = icmp ne i32 %16, 2, !dbg !5643
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5644

if.then26:                                        ; preds = %if.end23
  store i32 -22, i32* %err, align 4, !dbg !5645
  br label %out, !dbg !5647

if.end27:                                         ; preds = %if.end23
  %17 = load i32, i32* %d, align 4, !dbg !5648
  %18 = load i32, i32* %domain.addr, align 4, !dbg !5650
  %cmp28 = icmp eq i32 %17, %18, !dbg !5651
  br i1 %cmp28, label %land.lhs.true, label %if.end33, !dbg !5652

land.lhs.true:                                    ; preds = %if.end27
  %19 = load i32, i32* %b, align 4, !dbg !5653
  %20 = load i32, i32* %bus.addr, align 4, !dbg !5654
  %cmp30 = icmp eq i32 %19, %20, !dbg !5655
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5656

if.then32:                                        ; preds = %land.lhs.true
  store i32 0, i32* %err, align 4, !dbg !5657
  br label %out, !dbg !5659

if.end33:                                         ; preds = %land.lhs.true, %if.end27
  br label %for.inc, !dbg !5660

for.inc:                                          ; preds = %if.end33
  %21 = load i32, i32* %i, align 4, !dbg !5661
  %inc = add i32 %21, 1, !dbg !5661
  store i32 %inc, i32* %i, align 4, !dbg !5661
  br label %for.cond, !dbg !5662, !llvm.loop !5663

for.end:                                          ; preds = %for.cond
  %arraydecay34 = getelementptr inbounds [64 x i8], [64 x i8]* %str, i64 0, i64 0, !dbg !5665
  %22 = load i32, i32* %root_num, align 4, !dbg !5666
  %call35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay34, i64 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %22) #10, !dbg !5667
  store i32 %call35, i32* %len, align 4, !dbg !5668
  %23 = load i32, i32* %len, align 4, !dbg !5669
  %conv36 = sext i32 %23 to i64, !dbg !5669
  %cmp37 = icmp uge i64 %conv36, 63, !dbg !5669
  %lnot39 = xor i1 %cmp37, true, !dbg !5669
  %lnot41 = xor i1 %lnot39, true, !dbg !5669
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5669
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5669
  %tobool44 = icmp ne i64 %conv43, 0, !dbg !5669
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !5671

if.then45:                                        ; preds = %for.end
  store i32 -12, i32* %err, align 4, !dbg !5672
  br label %out, !dbg !5674

if.end46:                                         ; preds = %for.end
  %id48 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral47, i32 0, i32 0, !dbg !5675
  store i32 0, i32* %id48, align 4, !dbg !5675
  %24 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5676
  %xdev49 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %24, i32 0, i32 2, !dbg !5677
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev49, align 8, !dbg !5677
  %nodename50 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %25, i32 0, i32 1, !dbg !5678
  %26 = load i8*, i8** %nodename50, align 8, !dbg !5678
  %arraydecay51 = getelementptr inbounds [64 x i8], [64 x i8]* %str, i64 0, i64 0, !dbg !5679
  %27 = load i32, i32* %domain.addr, align 4, !dbg !5680
  %28 = load i32, i32* %bus.addr, align 4, !dbg !5681
  %coerce.dive52 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral47, i32 0, i32 0, !dbg !5682
  %29 = load i32, i32* %coerce.dive52, align 4, !dbg !5682
  %call53 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %29, i8* %26, i8* %arraydecay51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 %27, i32 %28) #10, !dbg !5682
  store i32 %call53, i32* %err, align 4, !dbg !5683
  %30 = load i32, i32* %err, align 4, !dbg !5684
  %tobool54 = icmp ne i32 %30, 0, !dbg !5684
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !5686

if.then55:                                        ; preds = %if.end46
  br label %out, !dbg !5687

if.end56:                                         ; preds = %if.end46
  %id58 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral57, i32 0, i32 0, !dbg !5688
  store i32 0, i32* %id58, align 4, !dbg !5688
  %31 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5689
  %xdev59 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %31, i32 0, i32 2, !dbg !5690
  %32 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev59, align 8, !dbg !5690
  %nodename60 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %32, i32 0, i32 1, !dbg !5691
  %33 = load i8*, i8** %nodename60, align 8, !dbg !5691
  %34 = load i32, i32* %root_num, align 4, !dbg !5692
  %add = add i32 %34, 1, !dbg !5693
  %coerce.dive61 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral57, i32 0, i32 0, !dbg !5694
  %35 = load i32, i32* %coerce.dive61, align 4, !dbg !5694
  %call62 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %35, i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %add) #10, !dbg !5694
  store i32 %call62, i32* %err, align 4, !dbg !5695
  br label %out, !dbg !5696

out:                                              ; preds = %if.end56, %if.then55, %if.then45, %if.then32, %if.then26, %if.then22, %if.then11, %if.then3
  call void @llvm.dbg.label(metadata !5697), !dbg !5698
  %36 = load i32, i32* %err, align 4, !dbg !5699
  ret i32 %36, !dbg !5700
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_attach(%struct.xen_pcibk_device* %pdev) #3 !dbg !5701 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %err = alloca i32, align 4
  %gnt_ref = alloca i32, align 4
  %remote_evtchn = alloca i32, align 4
  %magic = alloca i8*, align 8
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5702, metadata !DIExpression()), !dbg !5703
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5704, metadata !DIExpression()), !dbg !5705
  store i32 0, i32* %err, align 4, !dbg !5705
  call void @llvm.dbg.declare(metadata i32* %gnt_ref, metadata !5706, metadata !DIExpression()), !dbg !5707
  call void @llvm.dbg.declare(metadata i32* %remote_evtchn, metadata !5708, metadata !DIExpression()), !dbg !5711
  call void @llvm.dbg.declare(metadata i8** %magic, metadata !5712, metadata !DIExpression()), !dbg !5713
  store i8* null, i8** %magic, align 8, !dbg !5713
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5714
  %dev_lock = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %0, i32 0, i32 1, !dbg !5715
  call void @mutex_lock(%struct.mutex* %dev_lock) #10, !dbg !5716
  %1 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5717
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %1, i32 0, i32 2, !dbg !5719
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5719
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 1, !dbg !5720
  %3 = load i8*, i8** %nodename, align 8, !dbg !5720
  %call = call i32 @xenbus_read_driver_state(i8* %3) #10, !dbg !5721
  %cmp = icmp ne i32 %call, 3, !dbg !5722
  br i1 %cmp, label %if.then, label %if.end, !dbg !5723

if.then:                                          ; preds = %entry
  br label %out, !dbg !5724

if.end:                                           ; preds = %entry
  %4 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5725
  %xdev1 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %4, i32 0, i32 2, !dbg !5727
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev1, align 8, !dbg !5727
  %otherend = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 2, !dbg !5728
  %6 = load i8*, i8** %otherend, align 8, !dbg !5728
  %call2 = call i32 @xenbus_read_driver_state(i8* %6) #10, !dbg !5729
  %cmp3 = icmp ne i32 %call2, 3, !dbg !5730
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5731

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !5732

if.end5:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5733
  store i32 0, i32* %id, align 4, !dbg !5733
  %7 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5734
  %xdev6 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %7, i32 0, i32 2, !dbg !5735
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev6, align 8, !dbg !5735
  %otherend7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %8, i32 0, i32 2, !dbg !5736
  %9 = load i8*, i8** %otherend7, align 8, !dbg !5736
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5737
  %10 = load i32, i32* %coerce.dive, align 4, !dbg !5737
  %call8 = call i32 (i32, i8*, ...) @xenbus_gather(i32 %10, i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32* %gnt_ref, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32* %remote_evtchn, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* null, i8** %magic, i8* null) #10, !dbg !5737
  store i32 %call8, i32* %err, align 4, !dbg !5738
  %11 = load i32, i32* %err, align 4, !dbg !5739
  %tobool = icmp ne i32 %11, 0, !dbg !5739
  br i1 %tobool, label %if.then9, label %if.end11, !dbg !5741

if.then9:                                         ; preds = %if.end5
  %12 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5742
  %xdev10 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %12, i32 0, i32 2, !dbg !5744
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev10, align 8, !dbg !5744
  %14 = load i32, i32* %err, align 4, !dbg !5745
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %13, i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !5746
  br label %out, !dbg !5747

if.end11:                                         ; preds = %if.end5
  %15 = load i8*, i8** %magic, align 8, !dbg !5748
  %cmp12 = icmp eq i8* %15, null, !dbg !5750
  br i1 %cmp12, label %if.then15, label %lor.lhs.false, !dbg !5751

lor.lhs.false:                                    ; preds = %if.end11
  %16 = load i8*, i8** %magic, align 8, !dbg !5752
  %call13 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !5753
  %cmp14 = icmp ne i32 %call13, 0, !dbg !5754
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !5755

if.then15:                                        ; preds = %lor.lhs.false, %if.end11
  %17 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5756
  %xdev16 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %17, i32 0, i32 2, !dbg !5758
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev16, align 8, !dbg !5758
  %19 = load i8*, i8** %magic, align 8, !dbg !5759
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %18, i32 -14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.33, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !5760
  store i32 -14, i32* %err, align 4, !dbg !5761
  br label %out, !dbg !5762

if.end17:                                         ; preds = %lor.lhs.false
  %20 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5763
  %21 = load i32, i32* %gnt_ref, align 4, !dbg !5764
  %22 = load i32, i32* %remote_evtchn, align 4, !dbg !5765
  %call18 = call i32 @xen_pcibk_do_attach(%struct.xen_pcibk_device* %20, i32 %21, i32 %22) #10, !dbg !5766
  store i32 %call18, i32* %err, align 4, !dbg !5767
  %23 = load i32, i32* %err, align 4, !dbg !5768
  %tobool19 = icmp ne i32 %23, 0, !dbg !5768
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5770

if.then20:                                        ; preds = %if.end17
  br label %out, !dbg !5771

if.end21:                                         ; preds = %if.end17
  %24 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5772
  %xdev22 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %24, i32 0, i32 2, !dbg !5773
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev22, align 8, !dbg !5773
  %call23 = call i32 @xenbus_switch_state(%struct.xenbus_device* %25, i32 4) #10, !dbg !5774
  store i32 %call23, i32* %err, align 4, !dbg !5775
  %26 = load i32, i32* %err, align 4, !dbg !5776
  %tobool24 = icmp ne i32 %26, 0, !dbg !5776
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !5778

if.then25:                                        ; preds = %if.end21
  %27 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5779
  %xdev26 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %27, i32 0, i32 2, !dbg !5780
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev26, align 8, !dbg !5780
  %29 = load i32, i32* %err, align 4, !dbg !5781
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %28, i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !5782
  br label %if.end27, !dbg !5782

if.end27:                                         ; preds = %if.then25, %if.end21
  br label %out, !dbg !5783

out:                                              ; preds = %if.end27, %if.then20, %if.then15, %if.then9, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !5784), !dbg !5785
  %30 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5786
  %dev_lock28 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %30, i32 0, i32 1, !dbg !5787
  call void @mutex_unlock(%struct.mutex* %dev_lock28) #10, !dbg !5788
  %31 = load i8*, i8** %magic, align 8, !dbg !5789
  call void @kfree(i8* %31) #10, !dbg !5790
  %32 = load i32, i32* %err, align 4, !dbg !5791
  ret i32 %32, !dbg !5792
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pcistub_get_pci_dev_by_slot(%struct.xen_pcibk_device*, i32, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_add_pci_dev(%struct.xen_pcibk_device* %pdev, %struct.pci_dev* %dev, i32 %devid, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)* %publish_cb) #3 !dbg !5793 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %devid.addr = alloca i32, align 4
  %publish_cb.addr = alloca i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)*, align 8
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store i32 %devid, i32* %devid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devid.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  store i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)* %publish_cb, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)** %publish_cb.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)** %publish_cb.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  %0 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5802
  %tobool = icmp ne %struct.xen_pcibk_backend* %0, null, !dbg !5802
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5804

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5805
  %add = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %1, i32 0, i32 6, !dbg !5806
  %2 = load i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)*)*, i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)*)** %add, align 8, !dbg !5806
  %tobool1 = icmp ne i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)*)* %2, null, !dbg !5805
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5807

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !5808
  %add2 = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %3, i32 0, i32 6, !dbg !5809
  %4 = load i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)*)*, i32 (%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)*)** %add2, align 8, !dbg !5809
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5810
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5811
  %7 = load i32, i32* %devid.addr, align 4, !dbg !5812
  %8 = load i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)*, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)** %publish_cb.addr, align 8, !dbg !5813
  %call = call i32 %4(%struct.xen_pcibk_device* %5, %struct.pci_dev* %6, i32 %7, i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)* %8) #10, !dbg !5808
  store i32 %call, i32* %retval, align 4, !dbg !5814
  br label %return, !dbg !5814

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %retval, align 4, !dbg !5815
  br label %return, !dbg !5815

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5816
  ret i32 %9, !dbg !5816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_publish_pci_dev(%struct.xen_pcibk_device* %pdev, i32 %domain, i32 %bus, i32 %devfn, i32 %devid) #3 !dbg !5817 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %domain.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %devid.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %len = alloca i32, align 4
  %str = alloca [64 x i8], align 16
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  store i32 %domain, i32* %domain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %domain.addr, metadata !5820, metadata !DIExpression()), !dbg !5821
  store i32 %bus, i32* %bus.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  store i32 %devid, i32* %devid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devid.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5828, metadata !DIExpression()), !dbg !5829
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5830, metadata !DIExpression()), !dbg !5831
  call void @llvm.dbg.declare(metadata [64 x i8]* %str, metadata !5832, metadata !DIExpression()), !dbg !5833
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %str, i64 0, i64 0, !dbg !5834
  %0 = load i32, i32* %devid.addr, align 4, !dbg !5835
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %0) #10, !dbg !5836
  store i32 %call, i32* %len, align 4, !dbg !5837
  %1 = load i32, i32* %len, align 4, !dbg !5838
  %conv = sext i32 %1 to i64, !dbg !5838
  %cmp = icmp uge i64 %conv, 63, !dbg !5838
  %lnot = xor i1 %cmp, true, !dbg !5838
  %lnot2 = xor i1 %lnot, true, !dbg !5838
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5838
  %conv3 = sext i32 %lnot.ext to i64, !dbg !5838
  %tobool = icmp ne i64 %conv3, 0, !dbg !5838
  br i1 %tobool, label %if.then, label %if.end, !dbg !5840

if.then:                                          ; preds = %entry
  store i32 -12, i32* %err, align 4, !dbg !5841
  br label %out, !dbg !5843

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5844
  store i32 0, i32* %id, align 4, !dbg !5844
  %2 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5845
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %2, i32 0, i32 2, !dbg !5846
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5846
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %3, i32 0, i32 1, !dbg !5847
  %4 = load i8*, i8** %nodename, align 8, !dbg !5847
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %str, i64 0, i64 0, !dbg !5848
  %5 = load i32, i32* %domain.addr, align 4, !dbg !5849
  %6 = load i32, i32* %bus.addr, align 4, !dbg !5850
  %7 = load i32, i32* %devfn.addr, align 4, !dbg !5851
  %shr = lshr i32 %7, 3, !dbg !5851
  %and = and i32 %shr, 31, !dbg !5851
  %8 = load i32, i32* %devfn.addr, align 4, !dbg !5852
  %and5 = and i32 %8, 7, !dbg !5852
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5853
  %9 = load i32, i32* %coerce.dive, align 4, !dbg !5853
  %call6 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %9, i8* %4, i8* %arraydecay4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %5, i32 %6, i32 %and, i32 %and5) #10, !dbg !5853
  store i32 %call6, i32* %err, align 4, !dbg !5854
  br label %out, !dbg !5855

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !5856), !dbg !5857
  %10 = load i32, i32* %err, align 4, !dbg !5858
  ret i32 %10, !dbg !5859
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @xen_register_device_domain_owner(%struct.pci_dev*, i16 zeroext) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @xen_find_device_domain_owner(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @xen_unregister_device_domain_owner(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_gather(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_do_attach(%struct.xen_pcibk_device* %pdev, i32 %gnt_ref, i32 %remote_evtchn) #3 !dbg !5860 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %gnt_ref.addr = alloca i32, align 4
  %remote_evtchn.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %vaddr = alloca i8*, align 8
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  store i32 %gnt_ref, i32* %gnt_ref.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gnt_ref.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  store i32 %remote_evtchn, i32* %remote_evtchn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %remote_evtchn.addr, metadata !5867, metadata !DIExpression()), !dbg !5868
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5869, metadata !DIExpression()), !dbg !5870
  store i32 0, i32* %err, align 4, !dbg !5870
  call void @llvm.dbg.declare(metadata i8** %vaddr, metadata !5871, metadata !DIExpression()), !dbg !5872
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5873
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %0, i32 0, i32 2, !dbg !5874
  %1 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5874
  %call = call i32 @xenbus_map_ring_valloc(%struct.xenbus_device* %1, i32* %gnt_ref.addr, i32 1, i8** %vaddr) #10, !dbg !5875
  store i32 %call, i32* %err, align 4, !dbg !5876
  %2 = load i32, i32* %err, align 4, !dbg !5877
  %cmp = icmp slt i32 %2, 0, !dbg !5879
  br i1 %cmp, label %if.then, label %if.end, !dbg !5880

if.then:                                          ; preds = %entry
  %3 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5881
  %xdev1 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %3, i32 0, i32 2, !dbg !5883
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev1, align 8, !dbg !5883
  %5 = load i32, i32* %err, align 4, !dbg !5884
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %4, i32 %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !5885
  br label %out, !dbg !5886

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %vaddr, align 8, !dbg !5887
  %7 = bitcast i8* %6 to %struct.xen_pci_sharedinfo*, !dbg !5887
  %8 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5888
  %sh_info = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %8, i32 0, i32 6, !dbg !5889
  store %struct.xen_pci_sharedinfo* %7, %struct.xen_pci_sharedinfo** %sh_info, align 8, !dbg !5890
  %9 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5891
  %xdev2 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %9, i32 0, i32 2, !dbg !5892
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev2, align 8, !dbg !5892
  %otherend_id = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 3, !dbg !5893
  %11 = load i32, i32* %otherend_id, align 8, !dbg !5893
  %12 = load i32, i32* %remote_evtchn.addr, align 4, !dbg !5894
  %13 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5895
  %14 = bitcast %struct.xen_pcibk_device* %13 to i8*, !dbg !5895
  %call3 = call i32 @bind_interdomain_evtchn_to_irqhandler_lateeoi(i32 %11, i32 %12, i32 (i32, i8*)* @xen_pcibk_handle_event, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %14) #10, !dbg !5896
  store i32 %call3, i32* %err, align 4, !dbg !5897
  %15 = load i32, i32* %err, align 4, !dbg !5898
  %cmp4 = icmp slt i32 %15, 0, !dbg !5900
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !5901

if.then5:                                         ; preds = %if.end
  %16 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5902
  %xdev6 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %16, i32 0, i32 2, !dbg !5904
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev6, align 8, !dbg !5904
  %18 = load i32, i32* %err, align 4, !dbg !5905
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %17, i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !5906
  br label %out, !dbg !5907

if.end7:                                          ; preds = %if.end
  %19 = load i32, i32* %err, align 4, !dbg !5908
  %20 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5909
  %evtchn_irq = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %20, i32 0, i32 5, !dbg !5910
  store i32 %19, i32* %evtchn_irq, align 4, !dbg !5911
  store i32 0, i32* %err, align 4, !dbg !5912
  br label %out, !dbg !5913

out:                                              ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !5914), !dbg !5915
  %21 = load i32, i32* %err, align 4, !dbg !5916
  ret i32 %21, !dbg !5917
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_map_ring_valloc(%struct.xenbus_device*, i32*, i32, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @bind_interdomain_evtchn_to_irqhandler_lateeoi(i32, i32, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @xen_pcibk_handle_event(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #3 !dbg !5918 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5921, metadata !DIExpression()), !dbg !5922
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5923
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5924
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5924
  ret i8* %1, !dbg !5925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_reconfigure(%struct.xen_pcibk_device* %pdev) #3 !dbg !5926 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %err = alloca i32, align 4
  %num_devs = alloca i32, align 4
  %domain = alloca i32, align 4
  %bus = alloca i32, align 4
  %slot = alloca i32, align 4
  %func = alloca i32, align 4
  %substate = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %state_str = alloca [64 x i8], align 16
  %dev_str = alloca [64 x i8], align 16
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral38 = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral64 = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral90 = alloca %struct.xenbus_transaction, align 4
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5929, metadata !DIExpression()), !dbg !5930
  store i32 0, i32* %err, align 4, !dbg !5930
  call void @llvm.dbg.declare(metadata i32* %num_devs, metadata !5931, metadata !DIExpression()), !dbg !5932
  call void @llvm.dbg.declare(metadata i32* %domain, metadata !5933, metadata !DIExpression()), !dbg !5934
  call void @llvm.dbg.declare(metadata i32* %bus, metadata !5935, metadata !DIExpression()), !dbg !5936
  call void @llvm.dbg.declare(metadata i32* %slot, metadata !5937, metadata !DIExpression()), !dbg !5938
  call void @llvm.dbg.declare(metadata i32* %func, metadata !5939, metadata !DIExpression()), !dbg !5940
  call void @llvm.dbg.declare(metadata i32* %substate, metadata !5941, metadata !DIExpression()), !dbg !5942
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5943, metadata !DIExpression()), !dbg !5944
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5945, metadata !DIExpression()), !dbg !5946
  call void @llvm.dbg.declare(metadata [64 x i8]* %state_str, metadata !5947, metadata !DIExpression()), !dbg !5948
  call void @llvm.dbg.declare(metadata [64 x i8]* %dev_str, metadata !5949, metadata !DIExpression()), !dbg !5950
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5951
  %dev_lock = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %0, i32 0, i32 1, !dbg !5952
  call void @mutex_lock(%struct.mutex* %dev_lock) #10, !dbg !5953
  %1 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5954
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %1, i32 0, i32 2, !dbg !5956
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5956
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 1, !dbg !5957
  %3 = load i8*, i8** %nodename, align 8, !dbg !5957
  %call = call i32 @xenbus_read_driver_state(i8* %3) #10, !dbg !5958
  %cmp = icmp ne i32 %call, 7, !dbg !5959
  br i1 %cmp, label %if.then, label %if.end, !dbg !5960

if.then:                                          ; preds = %entry
  br label %out, !dbg !5961

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5962
  store i32 0, i32* %id, align 4, !dbg !5962
  %4 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5963
  %xdev1 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %4, i32 0, i32 2, !dbg !5964
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev1, align 8, !dbg !5964
  %nodename2 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 1, !dbg !5965
  %6 = load i8*, i8** %nodename2, align 8, !dbg !5965
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5966
  %7 = load i32, i32* %coerce.dive, align 4, !dbg !5966
  %call3 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %7, i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %num_devs) #10, !dbg !5966
  store i32 %call3, i32* %err, align 4, !dbg !5967
  %8 = load i32, i32* %err, align 4, !dbg !5968
  %cmp4 = icmp ne i32 %8, 1, !dbg !5970
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !5971

if.then5:                                         ; preds = %if.end
  %9 = load i32, i32* %err, align 4, !dbg !5972
  %cmp6 = icmp sge i32 %9, 0, !dbg !5975
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5976

if.then7:                                         ; preds = %if.then5
  store i32 -22, i32* %err, align 4, !dbg !5977
  br label %if.end8, !dbg !5978

if.end8:                                          ; preds = %if.then7, %if.then5
  %10 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !5979
  %xdev9 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %10, i32 0, i32 2, !dbg !5980
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev9, align 8, !dbg !5980
  %12 = load i32, i32* %err, align 4, !dbg !5981
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %11, i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !5982
  br label %out, !dbg !5983

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5984
  br label %for.cond, !dbg !5986

for.cond:                                         ; preds = %for.inc, %if.end10
  %13 = load i32, i32* %i, align 4, !dbg !5987
  %14 = load i32, i32* %num_devs, align 4, !dbg !5989
  %cmp11 = icmp slt i32 %13, %14, !dbg !5990
  br i1 %cmp11, label %for.body, label %for.end, !dbg !5991

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %state_str, i64 0, i64 0, !dbg !5992
  %15 = load i32, i32* %i, align 4, !dbg !5994
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %15) #10, !dbg !5995
  store i32 %call12, i32* %len, align 4, !dbg !5996
  %16 = load i32, i32* %len, align 4, !dbg !5997
  %conv = sext i32 %16 to i64, !dbg !5997
  %cmp13 = icmp uge i64 %conv, 63, !dbg !5997
  %lnot = xor i1 %cmp13, true, !dbg !5997
  %lnot15 = xor i1 %lnot, true, !dbg !5997
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5997
  %conv16 = sext i32 %lnot.ext to i64, !dbg !5997
  %tobool = icmp ne i64 %conv16, 0, !dbg !5997
  br i1 %tobool, label %if.then17, label %if.end19, !dbg !5999

if.then17:                                        ; preds = %for.body
  store i32 -12, i32* %err, align 4, !dbg !6000
  %17 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6002
  %xdev18 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %17, i32 0, i32 2, !dbg !6003
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev18, align 8, !dbg !6003
  %19 = load i32, i32* %err, align 4, !dbg !6004
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %18, i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !6005
  br label %out, !dbg !6006

if.end19:                                         ; preds = %for.body
  %20 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6007
  %xdev20 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %20, i32 0, i32 2, !dbg !6008
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev20, align 8, !dbg !6008
  %nodename21 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %21, i32 0, i32 1, !dbg !6009
  %22 = load i8*, i8** %nodename21, align 8, !dbg !6009
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %state_str, i64 0, i64 0, !dbg !6010
  %call23 = call i32 @xenbus_read_unsigned(i8* %22, i8* %arraydecay22, i32 0) #10, !dbg !6011
  store i32 %call23, i32* %substate, align 4, !dbg !6012
  %23 = load i32, i32* %substate, align 4, !dbg !6013
  switch i32 %23, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb75
  ], !dbg !6014

sw.bb:                                            ; preds = %if.end19
  %arraydecay24 = getelementptr inbounds [64 x i8], [64 x i8]* %dev_str, i64 0, i64 0, !dbg !6015
  %24 = load i32, i32* %i, align 4, !dbg !6017
  %call25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay24, i64 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %24) #10, !dbg !6018
  store i32 %call25, i32* %len, align 4, !dbg !6019
  %25 = load i32, i32* %len, align 4, !dbg !6020
  %conv26 = sext i32 %25 to i64, !dbg !6020
  %cmp27 = icmp uge i64 %conv26, 63, !dbg !6020
  %lnot29 = xor i1 %cmp27, true, !dbg !6020
  %lnot31 = xor i1 %lnot29, true, !dbg !6020
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !6020
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !6020
  %tobool34 = icmp ne i64 %conv33, 0, !dbg !6020
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !6022

if.then35:                                        ; preds = %sw.bb
  store i32 -12, i32* %err, align 4, !dbg !6023
  %26 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6025
  %xdev36 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %26, i32 0, i32 2, !dbg !6026
  %27 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev36, align 8, !dbg !6026
  %28 = load i32, i32* %err, align 4, !dbg !6027
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %27, i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !6028
  br label %out, !dbg !6029

if.end37:                                         ; preds = %sw.bb
  %id39 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral38, i32 0, i32 0, !dbg !6030
  store i32 0, i32* %id39, align 4, !dbg !6030
  %29 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6031
  %xdev40 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %29, i32 0, i32 2, !dbg !6032
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev40, align 8, !dbg !6032
  %nodename41 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %30, i32 0, i32 1, !dbg !6033
  %31 = load i8*, i8** %nodename41, align 8, !dbg !6033
  %arraydecay42 = getelementptr inbounds [64 x i8], [64 x i8]* %dev_str, i64 0, i64 0, !dbg !6034
  %coerce.dive43 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral38, i32 0, i32 0, !dbg !6035
  %32 = load i32, i32* %coerce.dive43, align 4, !dbg !6035
  %call44 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %32, i8* %31, i8* %arraydecay42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %domain, i32* %bus, i32* %slot, i32* %func) #10, !dbg !6035
  store i32 %call44, i32* %err, align 4, !dbg !6036
  %33 = load i32, i32* %err, align 4, !dbg !6037
  %cmp45 = icmp slt i32 %33, 0, !dbg !6039
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !6040

if.then47:                                        ; preds = %if.end37
  %34 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6041
  %xdev48 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %34, i32 0, i32 2, !dbg !6043
  %35 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev48, align 8, !dbg !6043
  %36 = load i32, i32* %err, align 4, !dbg !6044
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %35, i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !6045
  br label %out, !dbg !6046

if.end49:                                         ; preds = %if.end37
  %37 = load i32, i32* %err, align 4, !dbg !6047
  %cmp50 = icmp ne i32 %37, 4, !dbg !6049
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !6050

if.then52:                                        ; preds = %if.end49
  store i32 -22, i32* %err, align 4, !dbg !6051
  %38 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6053
  %xdev53 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %38, i32 0, i32 2, !dbg !6054
  %39 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev53, align 8, !dbg !6054
  %40 = load i32, i32* %err, align 4, !dbg !6055
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %39, i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !6056
  br label %out, !dbg !6057

if.end54:                                         ; preds = %if.end49
  %41 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6058
  %42 = load i32, i32* %domain, align 4, !dbg !6059
  %43 = load i32, i32* %bus, align 4, !dbg !6060
  %44 = load i32, i32* %slot, align 4, !dbg !6061
  %45 = load i32, i32* %func, align 4, !dbg !6062
  %46 = load i32, i32* %i, align 4, !dbg !6063
  %call55 = call i32 @xen_pcibk_export_device(%struct.xen_pcibk_device* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46) #10, !dbg !6064
  store i32 %call55, i32* %err, align 4, !dbg !6065
  %47 = load i32, i32* %err, align 4, !dbg !6066
  %tobool56 = icmp ne i32 %47, 0, !dbg !6066
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !6068

if.then57:                                        ; preds = %if.end54
  br label %out, !dbg !6069

if.end58:                                         ; preds = %if.end54
  %48 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6070
  %call59 = call i32 @xen_pcibk_publish_pci_roots(%struct.xen_pcibk_device* %48, i32 (%struct.xen_pcibk_device*, i32, i32)* @xen_pcibk_publish_pci_root) #10, !dbg !6071
  store i32 %call59, i32* %err, align 4, !dbg !6072
  %49 = load i32, i32* %err, align 4, !dbg !6073
  %tobool60 = icmp ne i32 %49, 0, !dbg !6073
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !6075

if.then61:                                        ; preds = %if.end58
  %50 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6076
  %xdev62 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %50, i32 0, i32 2, !dbg !6078
  %51 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev62, align 8, !dbg !6078
  %52 = load i32, i32* %err, align 4, !dbg !6079
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %51, i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !6080
  br label %out, !dbg !6081

if.end63:                                         ; preds = %if.end58
  %id65 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral64, i32 0, i32 0, !dbg !6082
  store i32 0, i32* %id65, align 4, !dbg !6082
  %53 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6083
  %xdev66 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %53, i32 0, i32 2, !dbg !6084
  %54 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev66, align 8, !dbg !6084
  %nodename67 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %54, i32 0, i32 1, !dbg !6085
  %55 = load i8*, i8** %nodename67, align 8, !dbg !6085
  %arraydecay68 = getelementptr inbounds [64 x i8], [64 x i8]* %state_str, i64 0, i64 0, !dbg !6086
  %coerce.dive69 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral64, i32 0, i32 0, !dbg !6087
  %56 = load i32, i32* %coerce.dive69, align 4, !dbg !6087
  %call70 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %56, i8* %55, i8* %arraydecay68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 3) #10, !dbg !6087
  store i32 %call70, i32* %err, align 4, !dbg !6088
  %57 = load i32, i32* %err, align 4, !dbg !6089
  %tobool71 = icmp ne i32 %57, 0, !dbg !6089
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !6091

if.then72:                                        ; preds = %if.end63
  %58 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6092
  %xdev73 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %58, i32 0, i32 2, !dbg !6094
  %59 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev73, align 8, !dbg !6094
  %60 = load i32, i32* %err, align 4, !dbg !6095
  %61 = load i32, i32* %i, align 4, !dbg !6096
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %59, i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %61) #10, !dbg !6097
  br label %out, !dbg !6098

if.end74:                                         ; preds = %if.end63
  br label %sw.epilog, !dbg !6099

sw.bb75:                                          ; preds = %if.end19
  %arraydecay76 = getelementptr inbounds [64 x i8], [64 x i8]* %dev_str, i64 0, i64 0, !dbg !6100
  %62 = load i32, i32* %i, align 4, !dbg !6101
  %call77 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay76, i64 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %62) #10, !dbg !6102
  store i32 %call77, i32* %len, align 4, !dbg !6103
  %63 = load i32, i32* %len, align 4, !dbg !6104
  %conv78 = sext i32 %63 to i64, !dbg !6104
  %cmp79 = icmp uge i64 %conv78, 63, !dbg !6104
  %lnot81 = xor i1 %cmp79, true, !dbg !6104
  %lnot83 = xor i1 %lnot81, true, !dbg !6104
  %lnot.ext84 = zext i1 %lnot83 to i32, !dbg !6104
  %conv85 = sext i32 %lnot.ext84 to i64, !dbg !6104
  %tobool86 = icmp ne i64 %conv85, 0, !dbg !6104
  br i1 %tobool86, label %if.then87, label %if.end89, !dbg !6106

if.then87:                                        ; preds = %sw.bb75
  store i32 -12, i32* %err, align 4, !dbg !6107
  %64 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6109
  %xdev88 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %64, i32 0, i32 2, !dbg !6110
  %65 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev88, align 8, !dbg !6110
  %66 = load i32, i32* %err, align 4, !dbg !6111
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %65, i32 %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !6112
  br label %out, !dbg !6113

if.end89:                                         ; preds = %sw.bb75
  %id91 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral90, i32 0, i32 0, !dbg !6114
  store i32 0, i32* %id91, align 4, !dbg !6114
  %67 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6115
  %xdev92 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %67, i32 0, i32 2, !dbg !6116
  %68 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev92, align 8, !dbg !6116
  %nodename93 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %68, i32 0, i32 1, !dbg !6117
  %69 = load i8*, i8** %nodename93, align 8, !dbg !6117
  %arraydecay94 = getelementptr inbounds [64 x i8], [64 x i8]* %dev_str, i64 0, i64 0, !dbg !6118
  %coerce.dive95 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral90, i32 0, i32 0, !dbg !6119
  %70 = load i32, i32* %coerce.dive95, align 4, !dbg !6119
  %call96 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %70, i8* %69, i8* %arraydecay94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %domain, i32* %bus, i32* %slot, i32* %func) #10, !dbg !6119
  store i32 %call96, i32* %err, align 4, !dbg !6120
  %71 = load i32, i32* %err, align 4, !dbg !6121
  %cmp97 = icmp slt i32 %71, 0, !dbg !6123
  br i1 %cmp97, label %if.then99, label %if.end101, !dbg !6124

if.then99:                                        ; preds = %if.end89
  %72 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6125
  %xdev100 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %72, i32 0, i32 2, !dbg !6127
  %73 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev100, align 8, !dbg !6127
  %74 = load i32, i32* %err, align 4, !dbg !6128
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %73, i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !6129
  br label %out, !dbg !6130

if.end101:                                        ; preds = %if.end89
  %75 = load i32, i32* %err, align 4, !dbg !6131
  %cmp102 = icmp ne i32 %75, 4, !dbg !6133
  br i1 %cmp102, label %if.then104, label %if.end106, !dbg !6134

if.then104:                                       ; preds = %if.end101
  store i32 -22, i32* %err, align 4, !dbg !6135
  %76 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6137
  %xdev105 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %76, i32 0, i32 2, !dbg !6138
  %77 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev105, align 8, !dbg !6138
  %78 = load i32, i32* %err, align 4, !dbg !6139
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %77, i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !6140
  br label %out, !dbg !6141

if.end106:                                        ; preds = %if.end101
  %79 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6142
  %80 = load i32, i32* %domain, align 4, !dbg !6143
  %81 = load i32, i32* %bus, align 4, !dbg !6144
  %82 = load i32, i32* %slot, align 4, !dbg !6145
  %83 = load i32, i32* %func, align 4, !dbg !6146
  %call107 = call i32 @xen_pcibk_remove_device(%struct.xen_pcibk_device* %79, i32 %80, i32 %81, i32 %82, i32 %83) #10, !dbg !6147
  store i32 %call107, i32* %err, align 4, !dbg !6148
  %84 = load i32, i32* %err, align 4, !dbg !6149
  %tobool108 = icmp ne i32 %84, 0, !dbg !6149
  br i1 %tobool108, label %if.then109, label %if.end110, !dbg !6151

if.then109:                                       ; preds = %if.end106
  br label %out, !dbg !6152

if.end110:                                        ; preds = %if.end106
  br label %sw.epilog, !dbg !6153

sw.default:                                       ; preds = %if.end19
  br label %sw.epilog, !dbg !6154

sw.epilog:                                        ; preds = %sw.default, %if.end110, %if.end74
  br label %for.inc, !dbg !6155

for.inc:                                          ; preds = %sw.epilog
  %85 = load i32, i32* %i, align 4, !dbg !6156
  %inc = add i32 %85, 1, !dbg !6156
  store i32 %inc, i32* %i, align 4, !dbg !6156
  br label %for.cond, !dbg !6157, !llvm.loop !6158

for.end:                                          ; preds = %for.cond
  %86 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6160
  %xdev111 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %86, i32 0, i32 2, !dbg !6161
  %87 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev111, align 8, !dbg !6161
  %call112 = call i32 @xenbus_switch_state(%struct.xenbus_device* %87, i32 8) #10, !dbg !6162
  store i32 %call112, i32* %err, align 4, !dbg !6163
  %88 = load i32, i32* %err, align 4, !dbg !6164
  %tobool113 = icmp ne i32 %88, 0, !dbg !6164
  br i1 %tobool113, label %if.then114, label %if.end116, !dbg !6166

if.then114:                                       ; preds = %for.end
  %89 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6167
  %xdev115 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %89, i32 0, i32 2, !dbg !6169
  %90 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev115, align 8, !dbg !6169
  %91 = load i32, i32* %err, align 4, !dbg !6170
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %90, i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0)) #10, !dbg !6171
  br label %out, !dbg !6172

if.end116:                                        ; preds = %for.end
  br label %out, !dbg !6164

out:                                              ; preds = %if.end116, %if.then114, %if.then109, %if.then104, %if.then99, %if.then87, %if.then72, %if.then61, %if.then57, %if.then52, %if.then47, %if.then35, %if.then17, %if.end8, %if.then
  call void @llvm.dbg.label(metadata !6173), !dbg !6174
  %92 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6175
  %dev_lock117 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %92, i32 0, i32 1, !dbg !6176
  call void @mutex_unlock(%struct.mutex* %dev_lock117) #10, !dbg !6177
  ret i32 0, !dbg !6178
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_pcibk_disconnect(%struct.xen_pcibk_device* %pdev) #3 !dbg !6179 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !6180, metadata !DIExpression()), !dbg !6181
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6182
  %dev_lock = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %0, i32 0, i32 1, !dbg !6183
  call void @mutex_lock(%struct.mutex* %dev_lock) #10, !dbg !6184
  %1 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6185
  %evtchn_irq = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %1, i32 0, i32 5, !dbg !6187
  %2 = load i32, i32* %evtchn_irq, align 4, !dbg !6187
  %cmp = icmp ne i32 %2, -1, !dbg !6188
  br i1 %cmp, label %if.then, label %if.end, !dbg !6189

if.then:                                          ; preds = %entry
  %3 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6190
  %evtchn_irq1 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %3, i32 0, i32 5, !dbg !6192
  %4 = load i32, i32* %evtchn_irq1, align 4, !dbg !6192
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6193
  %6 = bitcast %struct.xen_pcibk_device* %5 to i8*, !dbg !6193
  call void @unbind_from_irqhandler(i32 %4, i8* %6) #10, !dbg !6194
  %7 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6195
  %evtchn_irq2 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %7, i32 0, i32 5, !dbg !6196
  store i32 -1, i32* %evtchn_irq2, align 4, !dbg !6197
  br label %if.end, !dbg !6198

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6199
  %op_work = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %8, i32 0, i32 8, !dbg !6200
  %call = call zeroext i1 @flush_work(%struct.work_struct* %op_work) #10, !dbg !6201
  %9 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6202
  %sh_info = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %9, i32 0, i32 6, !dbg !6204
  %10 = load %struct.xen_pci_sharedinfo*, %struct.xen_pci_sharedinfo** %sh_info, align 8, !dbg !6204
  %cmp3 = icmp ne %struct.xen_pci_sharedinfo* %10, null, !dbg !6205
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !6206

if.then4:                                         ; preds = %if.end
  %11 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6207
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %11, i32 0, i32 2, !dbg !6209
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !6209
  %13 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6210
  %sh_info5 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %13, i32 0, i32 6, !dbg !6211
  %14 = load %struct.xen_pci_sharedinfo*, %struct.xen_pci_sharedinfo** %sh_info5, align 8, !dbg !6211
  %15 = bitcast %struct.xen_pci_sharedinfo* %14 to i8*, !dbg !6210
  %call6 = call i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device* %12, i8* %15) #10, !dbg !6212
  %16 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6213
  %sh_info7 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %16, i32 0, i32 6, !dbg !6214
  store %struct.xen_pci_sharedinfo* null, %struct.xen_pci_sharedinfo** %sh_info7, align 8, !dbg !6215
  br label %if.end8, !dbg !6216

if.end8:                                          ; preds = %if.then4, %if.end
  %17 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6217
  %dev_lock9 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %17, i32 0, i32 1, !dbg !6218
  call void @mutex_unlock(%struct.mutex* %dev_lock9) #10, !dbg !6219
  ret void, !dbg !6220
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_dev_is_online(%struct.xenbus_device*) #2

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_read_unsigned(i8*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcibk_remove_device(%struct.xen_pcibk_device* %pdev, i32 %domain, i32 %bus, i32 %slot, i32 %func) #3 !dbg !6221 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %domain.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %dev = alloca %struct.pci_dev*, align 8
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !6224, metadata !DIExpression()), !dbg !6225
  store i32 %domain, i32* %domain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %domain.addr, metadata !6226, metadata !DIExpression()), !dbg !6227
  store i32 %bus, i32* %bus.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus.addr, metadata !6228, metadata !DIExpression()), !dbg !6229
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !6230, metadata !DIExpression()), !dbg !6231
  store i32 %func, i32* %func.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %func.addr, metadata !6232, metadata !DIExpression()), !dbg !6233
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6234, metadata !DIExpression()), !dbg !6235
  store i32 0, i32* %err, align 4, !dbg !6235
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !6236, metadata !DIExpression()), !dbg !6237
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6238
  %1 = load i32, i32* %domain.addr, align 4, !dbg !6239
  %2 = load i32, i32* %bus.addr, align 4, !dbg !6240
  %3 = load i32, i32* %slot.addr, align 4, !dbg !6241
  %and = and i32 %3, 31, !dbg !6241
  %shl = shl i32 %and, 3, !dbg !6241
  %4 = load i32, i32* %func.addr, align 4, !dbg !6241
  %and1 = and i32 %4, 7, !dbg !6241
  %or = or i32 %shl, %and1, !dbg !6241
  %call = call %struct.pci_dev* @xen_pcibk_get_pci_dev(%struct.xen_pcibk_device* %0, i32 %1, i32 %2, i32 %or) #10, !dbg !6242
  store %struct.pci_dev* %call, %struct.pci_dev** %dev, align 8, !dbg !6243
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !6244
  %tobool = icmp ne %struct.pci_dev* %5, null, !dbg !6244
  br i1 %tobool, label %if.end, label %if.then, !dbg !6246

if.then:                                          ; preds = %entry
  store i32 -22, i32* %err, align 4, !dbg !6247
  br label %out, !dbg !6249

if.end:                                           ; preds = %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !6250
  %call2 = call i32 @xen_unregister_device_domain_owner(%struct.pci_dev* %6) #10, !dbg !6251
  %7 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6252
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !6253
  call void @xen_pcibk_release_pci_dev(%struct.xen_pcibk_device* %7, %struct.pci_dev* %8, i1 zeroext true) #10, !dbg !6254
  br label %out, !dbg !6254

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !6255), !dbg !6256
  %9 = load i32, i32* %err, align 4, !dbg !6257
  ret i32 %9, !dbg !6258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pci_dev* @xen_pcibk_get_pci_dev(%struct.xen_pcibk_device* %pdev, i32 %domain, i32 %bus, i32 %devfn) #3 !dbg !6259 {
entry:
  %retval = alloca %struct.pci_dev*, align 8
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %domain.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !6260, metadata !DIExpression()), !dbg !6261
  store i32 %domain, i32* %domain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %domain.addr, metadata !6262, metadata !DIExpression()), !dbg !6263
  store i32 %bus, i32* %bus.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus.addr, metadata !6264, metadata !DIExpression()), !dbg !6265
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  %0 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6268
  %tobool = icmp ne %struct.xen_pcibk_backend* %0, null, !dbg !6268
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6270

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6271
  %get = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %1, i32 0, i32 7, !dbg !6272
  %2 = load %struct.pci_dev* (%struct.xen_pcibk_device*, i32, i32, i32)*, %struct.pci_dev* (%struct.xen_pcibk_device*, i32, i32, i32)** %get, align 8, !dbg !6272
  %tobool1 = icmp ne %struct.pci_dev* (%struct.xen_pcibk_device*, i32, i32, i32)* %2, null, !dbg !6271
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6273

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6274
  %get2 = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %3, i32 0, i32 7, !dbg !6275
  %4 = load %struct.pci_dev* (%struct.xen_pcibk_device*, i32, i32, i32)*, %struct.pci_dev* (%struct.xen_pcibk_device*, i32, i32, i32)** %get2, align 8, !dbg !6275
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6276
  %6 = load i32, i32* %domain.addr, align 4, !dbg !6277
  %7 = load i32, i32* %bus.addr, align 4, !dbg !6278
  %8 = load i32, i32* %devfn.addr, align 4, !dbg !6279
  %call = call %struct.pci_dev* %4(%struct.xen_pcibk_device* %5, i32 %6, i32 %7, i32 %8) #10, !dbg !6274
  store %struct.pci_dev* %call, %struct.pci_dev** %retval, align 8, !dbg !6280
  br label %return, !dbg !6280

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct.pci_dev* null, %struct.pci_dev** %retval, align 8, !dbg !6281
  br label %return, !dbg !6281

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.pci_dev*, %struct.pci_dev** %retval, align 8, !dbg !6282
  ret %struct.pci_dev* %9, !dbg !6282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_pcibk_release_pci_dev(%struct.xen_pcibk_device* %pdev, %struct.pci_dev* %dev, i1 zeroext %lock) #3 !dbg !6283 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %lock.addr = alloca i8, align 1
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !6284, metadata !DIExpression()), !dbg !6285
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6286, metadata !DIExpression()), !dbg !6287
  %frombool = zext i1 %lock to i8
  store i8 %frombool, i8* %lock.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %lock.addr, metadata !6288, metadata !DIExpression()), !dbg !6289
  %0 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6290
  %tobool = icmp ne %struct.xen_pcibk_backend* %0, null, !dbg !6290
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6292

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6293
  %release = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %1, i32 0, i32 5, !dbg !6294
  %2 = load void (%struct.xen_pcibk_device*, %struct.pci_dev*, i1)*, void (%struct.xen_pcibk_device*, %struct.pci_dev*, i1)** %release, align 8, !dbg !6294
  %tobool1 = icmp ne void (%struct.xen_pcibk_device*, %struct.pci_dev*, i1)* %2, null, !dbg !6293
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6295

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6296
  %release2 = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %3, i32 0, i32 5, !dbg !6297
  %4 = load void (%struct.xen_pcibk_device*, %struct.pci_dev*, i1)*, void (%struct.xen_pcibk_device*, %struct.pci_dev*, i1)** %release2, align 8, !dbg !6297
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6298
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6299
  %7 = load i8, i8* %lock.addr, align 1, !dbg !6300
  %tobool3 = trunc i8 %7 to i1, !dbg !6300
  call void %4(%struct.xen_pcibk_device* %5, %struct.pci_dev* %6, i1 zeroext %tobool3) #10, !dbg !6296
  br label %if.end, !dbg !6301

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !6302
}

; Function Attrs: noredzone
declare dso_local void @unbind_from_irqhandler(i32, i8*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @flush_work(%struct.work_struct*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_pdev(%struct.xen_pcibk_device* %pdev) #3 !dbg !6303 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !6304, metadata !DIExpression()), !dbg !6305
  %0 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6306
  %be_watching = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %0, i32 0, i32 4, !dbg !6308
  %1 = load i8, i8* %be_watching, align 8, !dbg !6308
  %tobool = icmp ne i8 %1, 0, !dbg !6306
  br i1 %tobool, label %if.then, label %if.end, !dbg !6309

if.then:                                          ; preds = %entry
  %2 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6310
  %be_watch = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %2, i32 0, i32 3, !dbg !6312
  call void @unregister_xenbus_watch(%struct.xenbus_watch* %be_watch) #10, !dbg !6313
  %3 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6314
  %be_watching1 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %3, i32 0, i32 4, !dbg !6315
  store i8 0, i8* %be_watching1, align 8, !dbg !6316
  br label %if.end, !dbg !6317

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6318
  call void @xen_pcibk_disconnect(%struct.xen_pcibk_device* %4) #10, !dbg !6319
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6320
  call void @xen_pcibk_release_devices(%struct.xen_pcibk_device* %5) #10, !dbg !6321
  %6 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6322
  %xdev = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %6, i32 0, i32 2, !dbg !6323
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !6323
  %dev = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 5, !dbg !6324
  call void @dev_set_drvdata(%struct.device* %dev, i8* null) #10, !dbg !6325
  %8 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6326
  %xdev2 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %8, i32 0, i32 2, !dbg !6327
  store %struct.xenbus_device* null, %struct.xenbus_device** %xdev2, align 8, !dbg !6328
  %9 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6329
  %10 = bitcast %struct.xen_pcibk_device* %9 to i8*, !dbg !6329
  call void @kfree(i8* %10) #10, !dbg !6330
  ret void, !dbg !6331
}

; Function Attrs: noredzone
declare dso_local void @unregister_xenbus_watch(%struct.xenbus_watch*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_pcibk_release_devices(%struct.xen_pcibk_device* %pdev) #3 !dbg !6332 {
entry:
  %pdev.addr = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xen_pcibk_device* %pdev, %struct.xen_pcibk_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_pcibk_device** %pdev.addr, metadata !6333, metadata !DIExpression()), !dbg !6334
  %0 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6335
  %tobool = icmp ne %struct.xen_pcibk_backend* %0, null, !dbg !6335
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6337

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6338
  %free = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %1, i32 0, i32 2, !dbg !6339
  %2 = load void (%struct.xen_pcibk_device*)*, void (%struct.xen_pcibk_device*)** %free, align 8, !dbg !6339
  %tobool1 = icmp ne void (%struct.xen_pcibk_device*)* %2, null, !dbg !6338
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6340

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.xen_pcibk_backend*, %struct.xen_pcibk_backend** @xen_pcibk_backend, align 8, !dbg !6341
  %free2 = getelementptr inbounds %struct.xen_pcibk_backend, %struct.xen_pcibk_backend* %3, i32 0, i32 2, !dbg !6342
  %4 = load void (%struct.xen_pcibk_device*)*, void (%struct.xen_pcibk_device*)** %free2, align 8, !dbg !6342
  %5 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %pdev.addr, align 8, !dbg !6343
  call void %4(%struct.xen_pcibk_device* %5) #10, !dbg !6341
  br label %if.end, !dbg !6344

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !6345
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4691, !4692, !4693, !4694}
!llvm.ident = !{!4695}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_passthrough", scope: !2, file: !3, line: 23, type: !4688, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !185, globals: !4244, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/xen-pciback/xenbus.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !140, !173, !180}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !108, line: 478, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !115, line: 1084, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!121 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !123, line: 11, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xenbus_state", file: !129, line: 17, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/xen/interface/io/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139}
!131 = !DIEnumerator(name: "XenbusStateUnknown", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "XenbusStateInitialising", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "XenbusStateInitWait", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "XenbusStateInitialised", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "XenbusStateConnected", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "XenbusStateClosing", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "XenbusStateClosed", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "XenbusStateReconfiguring", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "XenbusStateReconfigured", value: 8, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 30, baseType: !142, size: 64, elements: !143)
!141 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!144 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!145 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!146 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!147 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!148 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!149 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!150 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!151 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!152 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!153 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!154 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!155 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!156 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!157 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!158 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!159 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!160 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!161 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!162 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!163 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!164 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!165 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!166 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!167 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!168 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!169 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!170 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!171 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!172 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !174, line: 305, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !177, !178, !179}
!176 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 10, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !184}
!183 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!185 = !{!186, !189, !190, !192, !193, !200}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !188, line: 76, flags: DIFlagFwdDecl)
!188 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !191, line: 148, baseType: !7)
!191 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !191, line: 178, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !191, line: 179, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !196, file: !191, line: 179, baseType: !195, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_pcibk_device", file: !202, line: 34, size: 5440, elements: !203)
!202 = !DIFile(filename: "drivers/xen/xen-pciback/pciback.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !205, !238, !4205, !4206, !4207, !4208, !4241, !4242, !4243}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev_data", scope: !201, file: !202, line: 35, baseType: !189, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_lock", scope: !201, file: !202, line: 36, baseType: !206, size: 192, offset: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !207, line: 53, size: 192, elements: !208)
!207 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!208 = !{!209, !221, !237}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !206, file: !207, line: 54, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !211, line: 13, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !191, line: 175, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 173, size: 64, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !213, file: !191, line: 174, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !217, line: 22, baseType: !218)
!217 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !219, line: 30, baseType: !220)
!219 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!220 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !206, file: !207, line: 55, baseType: !222, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !223, line: 83, baseType: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !223, line: 71, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !223, line: 72, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !223, line: 72, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !227, file: !223, line: 73, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !223, line: 20, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !230, file: !223, line: 21, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !234, line: 25, baseType: !235)
!234 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 25, elements: !236)
!236 = !{}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !206, file: !207, line: 59, baseType: !196, size: 128, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "xdev", scope: !201, file: !202, line: 37, baseType: !239, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device", file: !241, line: 71, size: 6784, elements: !242)
!241 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243, !247, !248, !249, !251, !261, !4195, !4196, !4197, !4198}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !240, file: !241, line: 72, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !240, file: !241, line: 73, baseType: !244, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "otherend", scope: !240, file: !241, line: 74, baseType: !244, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_id", scope: !240, file: !241, line: 75, baseType: !250, size: 32, offset: 192)
!250 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_watch", scope: !240, file: !241, line: 76, baseType: !252, size: 256, offset: 256)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !241, line: 57, size: 256, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !252, file: !241, line: 59, baseType: !196, size: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !252, file: !241, line: 62, baseType: !244, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !252, file: !241, line: 65, baseType: !257, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !260, !244, !244}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !240, file: !241, line: 77, baseType: !262, size: 5568, offset: 512)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !263)
!263 = !{!264, !3367, !3369, !3372, !3373, !3424, !3515, !3516, !3517, !3518, !3519, !3528, !3633, !3646, !4122, !4123, !4127, !4129, !4130, !4131, !4135, !4141, !4142, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4183, !4184, !4185, !4188, !4191, !4192, !4193, !4194}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !262, file: !73, line: 462, baseType: !265, size: 512)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !266, line: 64, size: 512, elements: !267)
!266 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !270, !272, !317, !3218, !3357, !3362, !3363, !3364, !3365, !3366}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !266, line: 65, baseType: !244, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !265, file: !266, line: 66, baseType: !196, size: 128, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !266, line: 67, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !265, file: !266, line: 68, baseType: !273, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !266, line: 192, size: 704, elements: !275)
!275 = !{!276, !277, !278, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !274, file: !266, line: 193, baseType: !196, size: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !274, file: !266, line: 194, baseType: !222, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !274, file: !266, line: 195, baseType: !265, size: 512, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !274, file: !266, line: 196, baseType: !280, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !266, line: 156, size: 192, elements: !283)
!283 = !{!284, !289, !294}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !282, file: !266, line: 157, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!250, !273, !271}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !266, line: 158, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!244, !273, !271}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !282, file: !266, line: 159, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!250, !273, !271, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !266, line: 148, size: 20736, elements: !301)
!301 = !{!302, !307, !311, !312, !316}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !300, file: !266, line: 149, baseType: !303, size: 192)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 192, elements: !305)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!305 = !{!306}
!306 = !DISubrange(count: 3)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !300, file: !266, line: 150, baseType: !308, size: 4096, offset: 192)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 4096, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !300, file: !266, line: 151, baseType: !250, size: 32, offset: 4288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !300, file: !266, line: 152, baseType: !313, size: 16384, offset: 4320)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 16384, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !300, file: !266, line: 153, baseType: !250, size: 32, offset: 20704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !265, file: !266, line: 69, baseType: !318, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !266, line: 138, size: 448, elements: !320)
!320 = !{!321, !325, !353, !355, !3180, !3208, !3212}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !319, file: !266, line: 139, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !271}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !319, file: !266, line: 140, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !329, line: 230, size: 128, elements: !330)
!329 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331, !346}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !328, file: !329, line: 231, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !271, !339, !304}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !191, line: 60, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !337, line: 73, baseType: !338)
!337 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !337, line: 15, baseType: !142)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !329, line: 30, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !329, line: 31, baseType: !244, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !340, file: !329, line: 32, baseType: !344, size: 16, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !191, line: 19, baseType: !345)
!345 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !328, file: !329, line: 232, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!335, !271, !339, !244, !350}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !191, line: 55, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !337, line: 72, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !337, line: 16, baseType: !192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !319, file: !266, line: 141, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !319, file: !266, line: 142, baseType: !356, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !329, line: 84, size: 320, elements: !360)
!360 = !{!361, !362, !366, !3177, !3178}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !359, file: !329, line: 85, baseType: !244, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !359, file: !329, line: 86, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!344, !271, !339, !250}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !359, file: !329, line: 88, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!344, !271, !370, !250}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !329, line: 168, size: 448, elements: !372)
!372 = !{!373, !374, !375, !376, !3172, !3173}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !371, file: !329, line: 169, baseType: !340, size: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !371, file: !329, line: 170, baseType: !350, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !371, file: !329, line: 171, baseType: !189, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !371, file: !329, line: 172, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!335, !380, !271, !370, !304, !557, !350}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !382)
!382 = !{!383, !401, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3155, !3156, !3165, !3166, !3167, !3168, !3169, !3170, !3171}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !381, file: !44, line: 920, baseType: !384, size: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !44, line: 917, size: 128, elements: !385)
!385 = !{!386, !392}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !384, file: !44, line: 918, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !388, line: 58, size: 64, elements: !389)
!388 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !388, line: 59, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !384, file: !44, line: 919, baseType: !393, size: 128, align: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !191, line: 216, size: 128, align: 64, elements: !394)
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !191, line: 217, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !393, file: !191, line: 218, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !396}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !381, file: !44, line: 921, baseType: !402, size: 128, offset: 128)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !403, line: 8, size: 128, elements: !404)
!403 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405, !409}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !402, file: !403, line: 9, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !408, line: 18, flags: DIFlagFwdDecl)
!408 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !402, file: !403, line: 10, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !408, line: 89, size: 1536, elements: !412)
!412 = !{!413, !414, !424, !432, !433, !454, !3105, !3107, !3119, !3120, !3121, !3122, !3123, !3129, !3130, !3131}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !411, file: !408, line: 91, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !411, file: !408, line: 92, baseType: !415, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !416, line: 277, baseType: !417)
!416 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !416, line: 277, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !417, file: !416, line: 277, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !416, line: 70, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !416, line: 65, size: 32, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !421, file: !416, line: 66, baseType: !7, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !411, file: !408, line: 93, baseType: !425, size: 128, offset: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !426, line: 38, size: 128, elements: !427)
!426 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !426, line: 39, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !425, file: !426, line: 39, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !411, file: !408, line: 94, baseType: !410, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !411, file: !408, line: 95, baseType: !434, size: 128, offset: 256)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !408, line: 47, size: 128, elements: !435)
!435 = !{!436, !450}
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !408, line: 48, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !408, line: 48, size: 64, elements: !438)
!438 = !{!439, !446}
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !408, line: 49, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !437, file: !408, line: 49, size: 64, elements: !441)
!441 = !{!442, !445}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !440, file: !408, line: 50, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !217, line: 21, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !219, line: 27, baseType: !7)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !440, file: !408, line: 50, baseType: !443, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !437, file: !408, line: 52, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !217, line: 23, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !219, line: 31, baseType: !449)
!449 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !434, file: !408, line: 54, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !411, file: !408, line: 96, baseType: !455, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !457)
!457 = !{!458, !459, !460, !468, !475, !476, !622, !2816, !2817, !2818, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !3081, !3089, !3090, !3091, !3101, !3102, !3103, !3104}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !456, file: !44, line: 611, baseType: !344, size: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !456, file: !44, line: 612, baseType: !345, size: 16, offset: 16)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !456, file: !44, line: 613, baseType: !461, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !462, line: 23, baseType: !463)
!462 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 21, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !463, file: !462, line: 22, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !191, line: 32, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !337, line: 49, baseType: !7)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !456, file: !44, line: 614, baseType: !469, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !462, line: 28, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 26, size: 32, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !470, file: !462, line: 27, baseType: !473, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !191, line: 33, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !337, line: 50, baseType: !7)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !456, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !456, file: !44, line: 622, baseType: !477, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !480)
!480 = !{!481, !485, !498, !502, !508, !512, !518, !522, !526, !530, !534, !535, !541, !545, !569, !598, !602, !608, !613, !617, !618}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !479, file: !44, line: 1865, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!410, !455, !410, !7}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !479, file: !44, line: 1866, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!244, !410, !455, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !491, line: 10, size: 128, elements: !492)
!491 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!492 = !{!493, !497}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !490, file: !491, line: 11, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !189}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !490, file: !491, line: 12, baseType: !189, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !479, file: !44, line: 1867, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!250, !455, !250}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !479, file: !44, line: 1868, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !455, !250}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !479, file: !44, line: 1870, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!250, !410, !304, !250}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !479, file: !44, line: 1872, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!250, !455, !410, !344, !516}
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !191, line: 30, baseType: !517)
!517 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !479, file: !44, line: 1873, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!250, !410, !455, !410}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !479, file: !44, line: 1874, baseType: !523, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!250, !455, !410}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !479, file: !44, line: 1875, baseType: !527, size: 64, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!250, !455, !410, !244}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !479, file: !44, line: 1876, baseType: !531, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!250, !455, !410, !344}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !479, file: !44, line: 1877, baseType: !523, size: 64, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !479, file: !44, line: 1878, baseType: !536, size: 64, offset: 704)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!250, !455, !410, !344, !539}
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !191, line: 16, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !191, line: 13, baseType: !443)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !479, file: !44, line: 1879, baseType: !542, size: 64, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!250, !455, !410, !455, !410, !7}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !479, file: !44, line: 1881, baseType: !546, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!250, !410, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !559, !566, !567, !568}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !550, file: !44, line: 220, baseType: !7, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !550, file: !44, line: 221, baseType: !344, size: 16, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !550, file: !44, line: 222, baseType: !461, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !550, file: !44, line: 223, baseType: !469, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !550, file: !44, line: 224, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !191, line: 46, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !337, line: 88, baseType: !220)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !550, file: !44, line: 225, baseType: !560, size: 128, offset: 192)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !561, line: 13, size: 128, elements: !562)
!561 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!562 = !{!563, !565}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !560, file: !561, line: 14, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !561, line: 8, baseType: !218)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !560, file: !561, line: 15, baseType: !142, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !550, file: !44, line: 226, baseType: !560, size: 128, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !550, file: !44, line: 227, baseType: !560, size: 128, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !550, file: !44, line: 234, baseType: !380, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !479, file: !44, line: 1882, baseType: !570, size: 64, offset: 896)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!250, !573, !575, !443, !7}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !577, line: 22, size: 1152, elements: !578)
!577 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!578 = !{!579, !580, !581, !582, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !576, file: !577, line: 23, baseType: !443, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !576, file: !577, line: 24, baseType: !344, size: 16, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !576, file: !577, line: 25, baseType: !7, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !576, file: !577, line: 26, baseType: !583, size: 32, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !191, line: 104, baseType: !443)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !576, file: !577, line: 27, baseType: !447, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !576, file: !577, line: 28, baseType: !447, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !576, file: !577, line: 37, baseType: !447, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !576, file: !577, line: 38, baseType: !539, size: 32, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !576, file: !577, line: 39, baseType: !539, size: 32, offset: 352)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !576, file: !577, line: 40, baseType: !461, size: 32, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !576, file: !577, line: 41, baseType: !469, size: 32, offset: 416)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !576, file: !577, line: 42, baseType: !557, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !576, file: !577, line: 43, baseType: !560, size: 128, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !576, file: !577, line: 44, baseType: !560, size: 128, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !576, file: !577, line: 45, baseType: !560, size: 128, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !576, file: !577, line: 46, baseType: !560, size: 128, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !576, file: !577, line: 47, baseType: !447, size: 64, offset: 1024)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !576, file: !577, line: 48, baseType: !447, size: 64, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !479, file: !44, line: 1883, baseType: !599, size: 64, offset: 960)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!335, !410, !304, !350}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !479, file: !44, line: 1884, baseType: !603, size: 64, offset: 1024)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!250, !455, !606, !447, !447}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !479, file: !44, line: 1886, baseType: !609, size: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!250, !455, !612, !250}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !479, file: !44, line: 1887, baseType: !614, size: 64, offset: 1152)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!250, !455, !410, !380, !7, !344}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !479, file: !44, line: 1890, baseType: !531, size: 64, offset: 1216)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !479, file: !44, line: 1891, baseType: !619, size: 64, offset: 1280)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!250, !455, !506, !250}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !456, file: !44, line: 623, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !678, !2423, !2505, !2588, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2604, !2608, !2609, !2612, !2613, !2616, !2617, !2618, !2659, !2686, !2687, !2688, !2689, !2690, !2691, !2694, !2696, !2703, !2704, !2706, !2707, !2708, !2767, !2768, !2783, !2784, !2785, !2786, !2787, !2790, !2791, !2792, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !624, file: !44, line: 1417, baseType: !196, size: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !624, file: !44, line: 1418, baseType: !539, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !624, file: !44, line: 1419, baseType: !453, size: 8, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !624, file: !44, line: 1420, baseType: !192, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !624, file: !44, line: 1421, baseType: !557, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !624, file: !44, line: 1422, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !634)
!634 = !{!635, !636, !637, !644, !648, !652, !656, !657, !658, !668, !671, !672, !673, !675, !676, !677}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !44, line: 2229, baseType: !244, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !633, file: !44, line: 2230, baseType: !250, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !633, file: !44, line: 2238, baseType: !638, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!250, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !643, line: 28, flags: DIFlagFwdDecl)
!643 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!644 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !633, file: !44, line: 2239, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !633, file: !44, line: 2240, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!410, !632, !250, !244, !189}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !633, file: !44, line: 2242, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !623}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !633, file: !44, line: 2243, baseType: !186, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !633, file: !44, line: 2244, baseType: !632, size: 64, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !633, file: !44, line: 2245, baseType: !659, size: 64, offset: 512)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !191, line: 182, size: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !659, file: !191, line: 183, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !191, line: 186, size: 128, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !191, line: 187, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !663, file: !191, line: 187, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !633, file: !44, line: 2247, baseType: !669, offset: 576)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !670, line: 187, elements: !236)
!670 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !633, file: !44, line: 2248, baseType: !669, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !633, file: !44, line: 2249, baseType: !669, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !633, file: !44, line: 2250, baseType: !674, offset: 576)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, elements: !305)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !633, file: !44, line: 2252, baseType: !669, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !633, file: !44, line: 2253, baseType: !669, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !633, file: !44, line: 2254, baseType: !669, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !624, file: !44, line: 1423, baseType: !679, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !682)
!682 = !{!683, !687, !691, !692, !696, !702, !706, !707, !708, !712, !716, !717, !718, !719, !725, !730, !731, !738, !739, !740, !741, !2407, !2422}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !681, file: !44, line: 1936, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!455, !623}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !681, file: !44, line: 1937, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !455}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !681, file: !44, line: 1938, baseType: !688, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !681, file: !44, line: 1940, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !455, !250}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !681, file: !44, line: 1941, baseType: !697, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!250, !455, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !681, file: !44, line: 1942, baseType: !703, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!250, !455}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !681, file: !44, line: 1943, baseType: !688, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !681, file: !44, line: 1944, baseType: !653, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !681, file: !44, line: 1945, baseType: !709, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!250, !623, !250}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !681, file: !44, line: 1946, baseType: !713, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!250, !623}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !681, file: !44, line: 1947, baseType: !713, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !681, file: !44, line: 1948, baseType: !713, size: 64, offset: 704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !681, file: !44, line: 1949, baseType: !713, size: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !681, file: !44, line: 1950, baseType: !720, size: 64, offset: 832)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!250, !410, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !681, file: !44, line: 1951, baseType: !726, size: 64, offset: 896)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!250, !623, !729, !304}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !681, file: !44, line: 1952, baseType: !653, size: 64, offset: 960)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !681, file: !44, line: 1954, baseType: !732, size: 64, offset: 1024)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!250, !735, !410}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !737, line: 539, flags: DIFlagFwdDecl)
!737 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!738 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !681, file: !44, line: 1955, baseType: !732, size: 64, offset: 1088)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !681, file: !44, line: 1956, baseType: !732, size: 64, offset: 1152)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !681, file: !44, line: 1957, baseType: !732, size: 64, offset: 1216)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !681, file: !44, line: 1963, baseType: !742, size: 64, offset: 1280)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!250, !623, !745, !190}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !747, line: 68, size: 512, align: 128, elements: !748)
!747 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !750, !2399, !2406}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !747, line: 69, baseType: !192, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !747, line: 77, baseType: !751, size: 320, offset: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !747, line: 77, size: 320, elements: !752)
!752 = !{!753, !933, !938, !966, !974, !980, !2330, !2398}
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !747, line: 78, baseType: !754, size: 320)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !747, line: 78, size: 320, elements: !755)
!755 = !{!756, !757, !931, !932}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !754, file: !747, line: 84, baseType: !196, size: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !754, file: !747, line: 86, baseType: !758, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !760)
!760 = !{!761, !762, !769, !770, !775, !790, !799, !800, !801, !802, !924, !925, !928, !929, !930}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !759, file: !44, line: 452, baseType: !455, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !759, file: !44, line: 453, baseType: !763, size: 128, offset: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !764, line: 292, size: 128, elements: !765)
!764 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !763, file: !764, line: 293, baseType: !222)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !763, file: !764, line: 295, baseType: !190, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !763, file: !764, line: 296, baseType: !189, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !759, file: !44, line: 454, baseType: !190, size: 32, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !759, file: !44, line: 455, baseType: !771, size: 32, offset: 224)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !191, line: 168, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 166, size: 32, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !772, file: !191, line: 167, baseType: !250, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !759, file: !44, line: 460, baseType: !776, size: 128, offset: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !777, line: 125, size: 128, elements: !778)
!777 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !789}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !776, file: !777, line: 126, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !777, line: 31, size: 64, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !780, file: !777, line: 32, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !777, line: 24, size: 192, align: 64, elements: !785)
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !784, file: !777, line: 25, baseType: !192, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !784, file: !777, line: 26, baseType: !783, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !784, file: !777, line: 27, baseType: !783, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !776, file: !777, line: 127, baseType: !783, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !759, file: !44, line: 461, baseType: !791, size: 256, offset: 384)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !792, line: 35, size: 256, elements: !793)
!792 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{!794, !795, !796, !798}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !791, file: !792, line: 36, baseType: !210, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !791, file: !792, line: 42, baseType: !210, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !791, file: !792, line: 46, baseType: !797, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !223, line: 29, baseType: !230)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !791, file: !792, line: 47, baseType: !196, size: 128, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !759, file: !44, line: 462, baseType: !192, size: 64, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !759, file: !44, line: 463, baseType: !192, size: 64, offset: 704)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !759, file: !44, line: 464, baseType: !192, size: 64, offset: 768)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !759, file: !44, line: 465, baseType: !803, size: 64, offset: 832)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !806)
!806 = !{!807, !811, !815, !819, !823, !827, !833, !839, !843, !848, !852, !856, !860, !888, !892, !898, !899, !900, !904, !909, !913, !920}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !805, file: !44, line: 368, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!250, !745, !700}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !805, file: !44, line: 369, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!250, !380, !745}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !805, file: !44, line: 372, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!250, !758, !700}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !805, file: !44, line: 375, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!250, !745}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !805, file: !44, line: 381, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!250, !380, !758, !195, !7}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !805, file: !44, line: 383, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !805, file: !44, line: 385, baseType: !834, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!250, !380, !758, !557, !7, !7, !837, !838}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !805, file: !44, line: 388, baseType: !840, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!250, !380, !758, !557, !7, !7, !745, !189}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !805, file: !44, line: 393, baseType: !844, size: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!847, !758, !847}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !191, line: 125, baseType: !447)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !805, file: !44, line: 394, baseType: !849, size: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !745, !7, !7}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !805, file: !44, line: 395, baseType: !853, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!250, !745, !190}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !805, file: !44, line: 396, baseType: !857, size: 64, offset: 704)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !745}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !805, file: !44, line: 397, baseType: !861, size: 64, offset: 768)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!335, !864, !886}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !866)
!866 = !{!867, !868, !869, !873, !874, !875, !878, !879}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !865, file: !44, line: 321, baseType: !380, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !865, file: !44, line: 326, baseType: !557, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !865, file: !44, line: 327, baseType: !870, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !864, !142, !142}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !865, file: !44, line: 328, baseType: !189, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !865, file: !44, line: 329, baseType: !250, size: 32, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !865, file: !44, line: 330, baseType: !876, size: 16, offset: 288)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !217, line: 19, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !219, line: 24, baseType: !345)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !865, file: !44, line: 331, baseType: !876, size: 16, offset: 304)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !44, line: 332, baseType: !880, size: 64, offset: 320)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !865, file: !44, line: 332, size: 64, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !880, file: !44, line: 333, baseType: !7, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !880, file: !44, line: 334, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !805, file: !44, line: 402, baseType: !889, size: 64, offset: 832)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!250, !758, !745, !745, !5}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !805, file: !44, line: 404, baseType: !893, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!516, !745, !896}
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !897, line: 305, baseType: !7)
!897 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !805, file: !44, line: 405, baseType: !857, size: 64, offset: 960)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !805, file: !44, line: 406, baseType: !820, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !805, file: !44, line: 407, baseType: !901, size: 64, offset: 1088)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!250, !745, !192, !192}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !805, file: !44, line: 409, baseType: !905, size: 64, offset: 1152)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !745, !908, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !805, file: !44, line: 410, baseType: !910, size: 64, offset: 1216)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!250, !758, !745}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !805, file: !44, line: 413, baseType: !914, size: 64, offset: 1280)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!250, !917, !380, !919}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !805, file: !44, line: 415, baseType: !921, size: 64, offset: 1344)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !380}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !44, line: 466, baseType: !192, size: 64, offset: 896)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !759, file: !44, line: 467, baseType: !926, size: 32, offset: 960)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !927, line: 8, baseType: !443)
!927 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!928 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !759, file: !44, line: 468, baseType: !222, offset: 992)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !759, file: !44, line: 469, baseType: !196, size: 128, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !759, file: !44, line: 470, baseType: !189, size: 64, offset: 1152)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !754, file: !747, line: 87, baseType: !192, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !754, file: !747, line: 94, baseType: !192, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !747, line: 96, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !747, line: 96, size: 64, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !934, file: !747, line: 101, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !191, line: 143, baseType: !447)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !747, line: 103, baseType: !939, size: 320)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !747, line: 103, size: 320, elements: !940)
!940 = !{!941, !951, !954, !955}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !747, line: 104, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !747, line: 104, size: 128, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !942, file: !747, line: 105, baseType: !196, size: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !747, line: 106, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !747, line: 106, size: 128, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !946, file: !747, line: 107, baseType: !745, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !946, file: !747, line: 109, baseType: !250, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !946, file: !747, line: 110, baseType: !250, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !939, file: !747, line: 117, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !747, line: 117, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !939, file: !747, line: 119, baseType: !189, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !747, line: 120, baseType: !956, size: 64, offset: 256)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !747, line: 120, size: 64, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !956, file: !747, line: 121, baseType: !189, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !956, file: !747, line: 122, baseType: !192, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !956, file: !747, line: 123, baseType: !961, size: 32)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !956, file: !747, line: 123, size: 32, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !961, file: !747, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !961, file: !747, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !961, file: !747, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !747, line: 130, baseType: !967, size: 192)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !747, line: 130, size: 192, elements: !968)
!968 = !{!969, !970, !971, !972, !973}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !967, file: !747, line: 131, baseType: !192, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !967, file: !747, line: 134, baseType: !453, size: 8, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !967, file: !747, line: 135, baseType: !453, size: 8, offset: 72)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !967, file: !747, line: 136, baseType: !771, size: 32, offset: 96)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !967, file: !747, line: 137, baseType: !7, size: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !747, line: 139, baseType: !975, size: 256)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !747, line: 139, size: 256, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !975, file: !747, line: 140, baseType: !192, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !975, file: !747, line: 141, baseType: !771, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !975, file: !747, line: 143, baseType: !196, size: 128, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !747, line: 145, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !747, line: 145, size: 256, elements: !982)
!982 = !{!983, !984, !986, !987, !2329}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !981, file: !747, line: 146, baseType: !192, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !981, file: !747, line: 147, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !737, line: 509, baseType: !745)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !981, file: !747, line: 148, baseType: !192, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !747, line: 149, baseType: !988, size: 64, offset: 192)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !747, line: 149, size: 64, elements: !989)
!989 = !{!990, !2328}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !988, file: !747, line: 150, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !747, line: 388, size: 7296, elements: !993)
!993 = !{!994, !2324}
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !747, line: 389, baseType: !995, size: 7296)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !747, line: 389, size: 7296, elements: !996)
!996 = !{!997, !1115, !1116, !1117, !1121, !1122, !1123, !1124, !1125, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1166, !1174, !1177, !1201, !1202, !2308, !2309, !2312, !2313, !2314, !2317, !2318, !2319, !2322, !2323}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !995, file: !747, line: 390, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !747, line: 305, size: 1472, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1015, !1016, !1021, !1022, !1025, !1109, !1110, !1111, !1112, !1113}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !999, file: !747, line: 308, baseType: !192, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !999, file: !747, line: 309, baseType: !192, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !999, file: !747, line: 313, baseType: !998, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !999, file: !747, line: 313, baseType: !998, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !999, file: !747, line: 315, baseType: !784, size: 192, align: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !999, file: !747, line: 323, baseType: !192, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !999, file: !747, line: 327, baseType: !991, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !999, file: !747, line: 333, baseType: !1009, size: 64, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !737, line: 284, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !737, line: 284, size: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1010, file: !737, line: 284, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1014, line: 19, baseType: !192)
!1014 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !999, file: !747, line: 334, baseType: !192, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !999, file: !747, line: 343, baseType: !1017, size: 256, offset: 704)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !747, line: 340, size: 256, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1017, file: !747, line: 341, baseType: !784, size: 192, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1017, file: !747, line: 342, baseType: !192, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !999, file: !747, line: 351, baseType: !196, size: 128, offset: 960)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !999, file: !747, line: 353, baseType: !1023, size: 64, offset: 1088)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !747, line: 353, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !999, file: !747, line: 356, baseType: !1026, size: 64, offset: 1152)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1029)
!1029 = !{!1030, !1034, !1035, !1039, !1043, !1083, !1087, !1091, !1095, !1096, !1097, !1101, !1105}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1028, file: !14, line: 558, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !998}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1028, file: !14, line: 559, baseType: !1031, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1028, file: !14, line: 560, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!250, !998, !192}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1028, file: !14, line: 561, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!250, !998}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1028, file: !14, line: 562, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !747, line: 682, baseType: !7)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1063, !1070, !1076, !1077, !1078, !1080, !1082}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1049, file: !14, line: 509, baseType: !998, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1049, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1049, file: !14, line: 511, baseType: !190, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1049, file: !14, line: 512, baseType: !192, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1049, file: !14, line: 513, baseType: !192, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1049, file: !14, line: 514, baseType: !1057, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !737, line: 385, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 385, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1059, file: !737, line: 385, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1014, line: 15, baseType: !192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1049, file: !14, line: 516, baseType: !1064, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !737, line: 359, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 359, size: 64, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1066, file: !737, line: 359, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1014, line: 16, baseType: !192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1049, file: !14, line: 519, baseType: !1071, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1014, line: 21, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1014, line: 21, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1072, file: !1014, line: 21, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1014, line: 14, baseType: !192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1049, file: !14, line: 521, baseType: !745, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1049, file: !14, line: 522, baseType: !745, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1049, file: !14, line: 528, baseType: !1079, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1049, file: !14, line: 532, baseType: !1081, size: 64, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1049, file: !14, line: 536, baseType: !985, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1028, file: !14, line: 563, baseType: !1084, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1047, !1048, !13}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1028, file: !14, line: 565, baseType: !1088, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1048, !192, !192}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1028, file: !14, line: 567, baseType: !1092, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!192, !998}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1028, file: !14, line: 571, baseType: !1044, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1028, file: !14, line: 574, baseType: !1044, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1028, file: !14, line: 579, baseType: !1098, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!250, !998, !192, !189, !250, !250}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1028, file: !14, line: 585, baseType: !1102, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!244, !998}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1028, file: !14, line: 615, baseType: !1106, size: 64, offset: 768)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!745, !998, !192}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !999, file: !747, line: 359, baseType: !192, size: 64, offset: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !999, file: !747, line: 361, baseType: !380, size: 64, offset: 1280)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !999, file: !747, line: 362, baseType: !189, size: 64, offset: 1344)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !999, file: !747, line: 365, baseType: !210, size: 64, offset: 1408)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !999, file: !747, line: 373, baseType: !1114, offset: 1472)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !747, line: 296, elements: !236)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !995, file: !747, line: 391, baseType: !780, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !995, file: !747, line: 392, baseType: !447, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !995, file: !747, line: 394, baseType: !1118, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!192, !380, !192, !192, !192, !192}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !995, file: !747, line: 398, baseType: !192, size: 64, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !995, file: !747, line: 399, baseType: !192, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !995, file: !747, line: 405, baseType: !192, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !995, file: !747, line: 406, baseType: !192, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !995, file: !747, line: 407, baseType: !1126, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !737, line: 286, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 286, size: 64, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1128, file: !737, line: 286, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1014, line: 18, baseType: !192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !995, file: !747, line: 416, baseType: !771, size: 32, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !995, file: !747, line: 428, baseType: !771, size: 32, offset: 608)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !995, file: !747, line: 437, baseType: !771, size: 32, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !995, file: !747, line: 447, baseType: !771, size: 32, offset: 672)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !995, file: !747, line: 450, baseType: !210, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !995, file: !747, line: 452, baseType: !250, size: 32, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !995, file: !747, line: 454, baseType: !222, offset: 800)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !995, file: !747, line: 457, baseType: !791, size: 256, offset: 832)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !995, file: !747, line: 459, baseType: !196, size: 128, offset: 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !995, file: !747, line: 466, baseType: !192, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !995, file: !747, line: 467, baseType: !192, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !995, file: !747, line: 469, baseType: !192, size: 64, offset: 1344)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !995, file: !747, line: 470, baseType: !192, size: 64, offset: 1408)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !995, file: !747, line: 471, baseType: !212, size: 64, offset: 1472)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !995, file: !747, line: 472, baseType: !192, size: 64, offset: 1536)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !995, file: !747, line: 473, baseType: !192, size: 64, offset: 1600)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !995, file: !747, line: 474, baseType: !192, size: 64, offset: 1664)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !995, file: !747, line: 475, baseType: !192, size: 64, offset: 1728)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !995, file: !747, line: 477, baseType: !222, offset: 1792)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !995, file: !747, line: 478, baseType: !192, size: 64, offset: 1792)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !995, file: !747, line: 478, baseType: !192, size: 64, offset: 1856)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !995, file: !747, line: 478, baseType: !192, size: 64, offset: 1920)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !995, file: !747, line: 478, baseType: !192, size: 64, offset: 1984)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !995, file: !747, line: 479, baseType: !192, size: 64, offset: 2048)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !995, file: !747, line: 479, baseType: !192, size: 64, offset: 2112)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !995, file: !747, line: 479, baseType: !192, size: 64, offset: 2176)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !995, file: !747, line: 480, baseType: !192, size: 64, offset: 2240)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !995, file: !747, line: 480, baseType: !192, size: 64, offset: 2304)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !995, file: !747, line: 480, baseType: !192, size: 64, offset: 2368)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !995, file: !747, line: 480, baseType: !192, size: 64, offset: 2432)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !995, file: !747, line: 482, baseType: !1163, size: 2816, offset: 2496)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 2816, elements: !1164)
!1164 = !{!1165}
!1165 = !DISubrange(count: 44)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !995, file: !747, line: 488, baseType: !1167, size: 256, offset: 5312)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1168, line: 60, size: 256, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1167, file: !1168, line: 61, baseType: !1171, size: 256)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 4)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !995, file: !747, line: 490, baseType: !1175, size: 64, offset: 5568)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !747, line: 490, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !995, file: !747, line: 493, baseType: !1178, size: 896, offset: 5632)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1179, line: 53, baseType: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1179, line: 13, size: 896, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1188, !1189, !1190, !1191, !1195, !1196, !1197}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1180, file: !1179, line: 18, baseType: !447, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1180, file: !1179, line: 28, baseType: !212, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1180, file: !1179, line: 31, baseType: !791, size: 256, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1180, file: !1179, line: 32, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1179, line: 32, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1180, file: !1179, line: 37, baseType: !345, size: 16, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1180, file: !1179, line: 40, baseType: !206, size: 192, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1180, file: !1179, line: 41, baseType: !189, size: 64, offset: 704)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1180, file: !1179, line: 42, baseType: !1192, size: 64, offset: 768)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1179, line: 42, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1180, file: !1179, line: 44, baseType: !771, size: 32, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1180, file: !1179, line: 50, baseType: !876, size: 16, offset: 864)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1180, file: !1179, line: 51, baseType: !1198, size: 16, offset: 880)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !217, line: 18, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !219, line: 23, baseType: !1200)
!1200 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !747, line: 495, baseType: !192, size: 64, offset: 6528)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !995, file: !747, line: 497, baseType: !1203, size: 64, offset: 6592)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !747, line: 381, size: 384, elements: !1205)
!1205 = !{!1206, !1207, !2307}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1204, file: !747, line: 382, baseType: !771, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1204, file: !747, line: 383, baseType: !1208, size: 128, offset: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !747, line: 376, size: 128, elements: !1209)
!1209 = !{!1210, !2305}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1208, file: !747, line: 377, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1213, line: 640, size: 48640, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1221, !1223, !1224, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1241, !1259, !1270, !1355, !1356, !1357, !1368, !1369, !1371, !1372, !1373, !1374, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1453, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1491, !1493, !1494, !1495, !1507, !1508, !1509, !1510, !1511, !1512, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1536, !1541, !1725, !1726, !1727, !1728, !1732, !1735, !1738, !1741, !1744, !1747, !1848, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1894, !1895, !1896, !1897, !1898, !1903, !1904, !1905, !1908, !1909, !1912, !1915, !1918, !1921, !1963, !1966, !1967, !2046, !2047, !2050, !2051, !2054, !2055, !2056, !2060, !2061, !2062, !2075, !2076, !2077, !2087, !2092, !2095, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1212, file: !1213, line: 646, baseType: !1216, size: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1217, line: 56, size: 128, elements: !1218)
!1217 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !1217, line: 57, baseType: !192, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1216, file: !1217, line: 58, baseType: !443, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1212, file: !1213, line: 649, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !142)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1212, file: !1213, line: 657, baseType: !189, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1212, file: !1213, line: 658, baseType: !1225, size: 32, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1226, line: 113, baseType: !1227)
!1226 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1226, line: 111, size: 32, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1227, file: !1226, line: 112, baseType: !771, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1213, line: 660, baseType: !7, size: 32, offset: 288)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1212, file: !1213, line: 661, baseType: !7, size: 32, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1212, file: !1213, line: 684, baseType: !250, size: 32, offset: 352)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1212, file: !1213, line: 686, baseType: !250, size: 32, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1212, file: !1213, line: 687, baseType: !250, size: 32, offset: 416)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1212, file: !1213, line: 688, baseType: !250, size: 32, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1212, file: !1213, line: 689, baseType: !7, size: 32, offset: 480)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1212, file: !1213, line: 691, baseType: !1238, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1213, line: 691, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1212, file: !1213, line: 692, baseType: !1242, size: 832, offset: 576)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1213, line: 451, size: 832, elements: !1243)
!1243 = !{!1244, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1242, file: !1213, line: 453, baseType: !1245, size: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1213, line: 325, size: 128, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1245, file: !1213, line: 326, baseType: !192, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1245, file: !1213, line: 327, baseType: !443, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1242, file: !1213, line: 454, baseType: !784, size: 192, align: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1242, file: !1213, line: 455, baseType: !196, size: 128, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1242, file: !1213, line: 456, baseType: !7, size: 32, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1242, file: !1213, line: 458, baseType: !447, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1242, file: !1213, line: 459, baseType: !447, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1242, file: !1213, line: 460, baseType: !447, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1242, file: !1213, line: 461, baseType: !447, size: 64, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1242, file: !1213, line: 463, baseType: !447, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1242, file: !1213, line: 465, baseType: !1258, offset: 832)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1213, line: 415, elements: !236)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1212, file: !1213, line: 693, baseType: !1260, size: 384, offset: 1408)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1213, line: 489, size: 384, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1260, file: !1213, line: 490, baseType: !196, size: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1260, file: !1213, line: 491, baseType: !192, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1260, file: !1213, line: 492, baseType: !192, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1260, file: !1213, line: 493, baseType: !7, size: 32, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1260, file: !1213, line: 494, baseType: !345, size: 16, offset: 288)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1260, file: !1213, line: 495, baseType: !345, size: 16, offset: 304)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1260, file: !1213, line: 497, baseType: !1269, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1212, file: !1213, line: 697, baseType: !1271, size: 1792, offset: 1792)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1213, line: 507, size: 1792, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1352, !1353}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1271, file: !1213, line: 508, baseType: !784, size: 192, align: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1271, file: !1213, line: 515, baseType: !447, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1271, file: !1213, line: 516, baseType: !447, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1271, file: !1213, line: 517, baseType: !447, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1271, file: !1213, line: 518, baseType: !447, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1271, file: !1213, line: 519, baseType: !447, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1271, file: !1213, line: 526, baseType: !216, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1271, file: !1213, line: 527, baseType: !447, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !1213, line: 528, baseType: !7, size: 32, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1271, file: !1213, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1271, file: !1213, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1271, file: !1213, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1271, file: !1213, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1271, file: !1213, line: 563, baseType: !1287, size: 512, offset: 704)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1288)
!1288 = !{!1289, !1297, !1298, !1303, !1346, !1349, !1350, !1351}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1287, file: !20, line: 119, baseType: !1290, size: 256)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1291, line: 9, size: 256, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1290, file: !1291, line: 10, baseType: !784, size: 192, align: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1290, file: !1291, line: 11, baseType: !1295, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1296, line: 29, baseType: !216)
!1296 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1287, file: !20, line: 120, baseType: !1295, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1287, file: !20, line: 121, baseType: !1299, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!19, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1287, file: !20, line: 122, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1306)
!1306 = !{!1307, !1327, !1328, !1331, !1336, !1337, !1341, !1345}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1305, file: !20, line: 160, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1309, file: !20, line: 215, baseType: !797)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1309, file: !20, line: 216, baseType: !7, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1309, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1309, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1309, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1309, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1309, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1309, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1309, file: !20, line: 233, baseType: !1295, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1309, file: !20, line: 234, baseType: !1302, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1309, file: !20, line: 235, baseType: !1295, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1309, file: !20, line: 236, baseType: !1302, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1309, file: !20, line: 237, baseType: !1324, size: 4096, offset: 512)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 4096, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 8)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1305, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1305, file: !20, line: 162, baseType: !1329, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !191, line: 27, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !337, line: 96, baseType: !250)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1305, file: !20, line: 163, baseType: !1332, size: 32, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !416, line: 276, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !416, line: 276, size: 32, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1333, file: !416, line: 276, baseType: !420, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1305, file: !20, line: 164, baseType: !1302, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1305, file: !20, line: 165, baseType: !1338, size: 128, offset: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1291, line: 14, size: 128, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1338, file: !1291, line: 15, baseType: !776, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1305, file: !20, line: 166, baseType: !1342, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1295}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1305, file: !20, line: 167, baseType: !1295, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1287, file: !20, line: 123, baseType: !1347, size: 8, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !217, line: 17, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !219, line: 21, baseType: !453)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1287, file: !20, line: 124, baseType: !1347, size: 8, offset: 456)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1287, file: !20, line: 125, baseType: !1347, size: 8, offset: 464)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1287, file: !20, line: 126, baseType: !1347, size: 8, offset: 472)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1271, file: !1213, line: 572, baseType: !1287, size: 512, offset: 1216)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1271, file: !1213, line: 580, baseType: !1354, size: 64, offset: 1728)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1212, file: !1213, line: 721, baseType: !7, size: 32, offset: 3584)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1212, file: !1213, line: 722, baseType: !250, size: 32, offset: 3616)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1212, file: !1213, line: 723, baseType: !1358, size: 64, offset: 3648)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1361, line: 17, baseType: !1362)
!1361 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1361, line: 17, size: 64, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1362, file: !1361, line: 17, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 1)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1212, file: !1213, line: 724, baseType: !1360, size: 64, offset: 3712)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1212, file: !1213, line: 749, baseType: !1370, offset: 3776)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1213, line: 290, elements: !236)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1212, file: !1213, line: 751, baseType: !196, size: 128, offset: 3776)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1212, file: !1213, line: 757, baseType: !991, size: 64, offset: 3904)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1212, file: !1213, line: 758, baseType: !991, size: 64, offset: 3968)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1212, file: !1213, line: 761, baseType: !1375, size: 320, offset: 4032)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1168, line: 34, size: 320, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1375, file: !1168, line: 35, baseType: !447, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1375, file: !1168, line: 36, baseType: !1379, size: 256, offset: 64)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !998, size: 256, elements: !1172)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1212, file: !1213, line: 766, baseType: !250, size: 32, offset: 4352)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1212, file: !1213, line: 767, baseType: !250, size: 32, offset: 4384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1212, file: !1213, line: 768, baseType: !250, size: 32, offset: 4416)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1212, file: !1213, line: 770, baseType: !250, size: 32, offset: 4448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1212, file: !1213, line: 772, baseType: !192, size: 64, offset: 4480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1212, file: !1213, line: 775, baseType: !7, size: 32, offset: 4544)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1212, file: !1213, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1212, file: !1213, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1212, file: !1213, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1212, file: !1213, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1212, file: !1213, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1212, file: !1213, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1212, file: !1213, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1212, file: !1213, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1212, file: !1213, line: 831, baseType: !192, size: 64, offset: 4672)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1212, file: !1213, line: 833, baseType: !1396, size: 384, offset: 4736)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1397)
!1397 = !{!1398, !1403}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1396, file: !25, line: 26, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!142, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !25, line: 27, baseType: !1404, size: 320, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !25, line: 27, size: 320, elements: !1405)
!1405 = !{!1406, !1416, !1443}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1404, file: !25, line: 36, baseType: !1407, size: 320)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 29, size: 320, elements: !1408)
!1408 = !{!1409, !1411, !1412, !1413, !1414, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1407, file: !25, line: 30, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1407, file: !25, line: 31, baseType: !443, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !25, line: 32, baseType: !443, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1407, file: !25, line: 33, baseType: !443, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1407, file: !25, line: 34, baseType: !447, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1407, file: !25, line: 35, baseType: !1410, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1404, file: !25, line: 46, baseType: !1417, size: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 38, size: 192, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1442}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1417, file: !25, line: 39, baseType: !1329, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1417, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !25, line: 41, baseType: !1422, size: 64, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !25, line: 41, size: 64, elements: !1423)
!1423 = !{!1424, !1432}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1422, file: !25, line: 42, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1427, line: 7, size: 128, elements: !1428)
!1427 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1426, file: !1427, line: 8, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !337, line: 93, baseType: !220)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1426, file: !1427, line: 9, baseType: !220, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1422, file: !25, line: 43, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1435, line: 7, size: 64, elements: !1436)
!1435 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1441}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1434, file: !1435, line: 8, baseType: !1438, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1435, line: 5, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !217, line: 20, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !219, line: 26, baseType: !250)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1434, file: !1435, line: 9, baseType: !1439, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1417, file: !25, line: 45, baseType: !447, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1404, file: !25, line: 54, baseType: !1444, size: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 48, size: 256, elements: !1445)
!1445 = !{!1446, !1449, !1450, !1451, !1452}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1444, file: !25, line: 49, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1444, file: !25, line: 50, baseType: !250, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1444, file: !25, line: 51, baseType: !250, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1444, file: !25, line: 52, baseType: !192, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1444, file: !25, line: 53, baseType: !192, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1212, file: !1213, line: 835, baseType: !1454, size: 32, offset: 5120)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !191, line: 22, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !337, line: 28, baseType: !250)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1212, file: !1213, line: 836, baseType: !1454, size: 32, offset: 5152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1212, file: !1213, line: 840, baseType: !192, size: 64, offset: 5184)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1212, file: !1213, line: 849, baseType: !1211, size: 64, offset: 5248)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1212, file: !1213, line: 852, baseType: !1211, size: 64, offset: 5312)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1212, file: !1213, line: 857, baseType: !196, size: 128, offset: 5376)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1212, file: !1213, line: 858, baseType: !196, size: 128, offset: 5504)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1212, file: !1213, line: 859, baseType: !1211, size: 64, offset: 5632)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1212, file: !1213, line: 867, baseType: !196, size: 128, offset: 5696)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1212, file: !1213, line: 868, baseType: !196, size: 128, offset: 5824)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1212, file: !1213, line: 871, baseType: !1466, size: 64, offset: 5952)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1474, !1475, !1482, !1483}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1467, file: !53, line: 61, baseType: !1225, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1467, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !53, line: 63, baseType: !222, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1467, file: !53, line: 65, baseType: !1473, size: 256, offset: 64)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 256, elements: !1172)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1467, file: !53, line: 66, baseType: !659, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1467, file: !53, line: 68, baseType: !1476, size: 128, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1477, line: 40, baseType: !1478)
!1477 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1477, line: 36, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !1477, line: 37, baseType: !222)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1478, file: !1477, line: 38, baseType: !196, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1467, file: !53, line: 69, baseType: !393, size: 128, align: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1467, file: !53, line: 70, baseType: !1484, size: 128, offset: 640)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, size: 128, elements: !1366)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1485, file: !53, line: 55, baseType: !250, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1485, file: !53, line: 56, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1212, file: !1213, line: 872, baseType: !1492, size: 512, offset: 6016)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 512, elements: !1172)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1212, file: !1213, line: 873, baseType: !196, size: 128, offset: 6528)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1212, file: !1213, line: 874, baseType: !196, size: 128, offset: 6656)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1212, file: !1213, line: 876, baseType: !1496, size: 64, offset: 6784)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1498, line: 26, size: 192, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1497, file: !1498, line: 27, baseType: !7, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1497, file: !1498, line: 28, baseType: !1502, size: 128, offset: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1503, line: 43, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !1503, line: 44, baseType: !797)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1502, file: !1503, line: 45, baseType: !196, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1212, file: !1213, line: 879, baseType: !729, size: 64, offset: 6848)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1212, file: !1213, line: 882, baseType: !729, size: 64, offset: 6912)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1212, file: !1213, line: 884, baseType: !447, size: 64, offset: 6976)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1212, file: !1213, line: 885, baseType: !447, size: 64, offset: 7040)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1212, file: !1213, line: 890, baseType: !447, size: 64, offset: 7104)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1212, file: !1213, line: 891, baseType: !1513, size: 128, offset: 7168)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1213, line: 242, size: 128, elements: !1514)
!1514 = !{!1515, !1516, !1517}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1513, file: !1213, line: 244, baseType: !447, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1513, file: !1213, line: 245, baseType: !447, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !1213, line: 246, baseType: !797, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1212, file: !1213, line: 900, baseType: !192, size: 64, offset: 7296)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1212, file: !1213, line: 901, baseType: !192, size: 64, offset: 7360)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1212, file: !1213, line: 904, baseType: !447, size: 64, offset: 7424)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1212, file: !1213, line: 907, baseType: !447, size: 64, offset: 7488)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1212, file: !1213, line: 910, baseType: !192, size: 64, offset: 7552)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1212, file: !1213, line: 911, baseType: !192, size: 64, offset: 7616)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1212, file: !1213, line: 914, baseType: !1525, size: 640, offset: 7680)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1526, line: 123, size: 640, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1534, !1535}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1525, file: !1526, line: 124, baseType: !1529, size: 576)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 576, elements: !305)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1526, line: 108, size: 192, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1530, file: !1526, line: 109, baseType: !447, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1530, file: !1526, line: 110, baseType: !1338, size: 128, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1525, file: !1526, line: 125, baseType: !7, size: 32, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1525, file: !1526, line: 126, baseType: !7, size: 32, offset: 608)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1212, file: !1213, line: 917, baseType: !1537, size: 192, offset: 8320)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1526, line: 134, size: 192, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1537, file: !1526, line: 135, baseType: !393, size: 128, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1537, file: !1526, line: 136, baseType: !7, size: 32, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1212, file: !1213, line: 923, baseType: !1542, size: 64, offset: 8512)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1545, line: 111, size: 1280, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1566, !1567, !1568, !1569, !1570, !1571, !1678, !1679, !1680, !1681, !1707, !1710, !1720}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1544, file: !1545, line: 112, baseType: !771, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1544, file: !1545, line: 120, baseType: !461, size: 32, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1544, file: !1545, line: 121, baseType: !469, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1544, file: !1545, line: 122, baseType: !461, size: 32, offset: 96)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1544, file: !1545, line: 123, baseType: !469, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1544, file: !1545, line: 124, baseType: !461, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1544, file: !1545, line: 125, baseType: !469, size: 32, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1544, file: !1545, line: 126, baseType: !461, size: 32, offset: 224)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1544, file: !1545, line: 127, baseType: !469, size: 32, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1544, file: !1545, line: 128, baseType: !7, size: 32, offset: 288)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1544, file: !1545, line: 129, baseType: !1558, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1559, line: 26, baseType: !1560)
!1559 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1559, line: 24, size: 64, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1560, file: !1559, line: 25, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 64, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 2)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1544, file: !1545, line: 130, baseType: !1558, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1544, file: !1545, line: 131, baseType: !1558, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1544, file: !1545, line: 132, baseType: !1558, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1544, file: !1545, line: 133, baseType: !1558, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1544, file: !1545, line: 135, baseType: !453, size: 8, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1544, file: !1545, line: 137, baseType: !1572, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1574, line: 189, size: 1664, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577, !1580, !1585, !1586, !1589, !1590, !1595, !1596, !1597, !1598, !1600, !1601, !1602, !1603, !1604, !1642, !1663}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1573, file: !1574, line: 190, baseType: !1225, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1573, file: !1574, line: 191, baseType: !1578, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1574, line: 28, baseType: !1579)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !191, line: 98, baseType: !1439)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 192, baseType: !1581, size: 192, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 192, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1581, file: !1574, line: 193, baseType: !196, size: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1581, file: !1574, line: 194, baseType: !784, size: 192, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1573, file: !1574, line: 199, baseType: !791, size: 256, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1573, file: !1574, line: 200, baseType: !1587, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1574, line: 200, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1573, file: !1574, line: 201, baseType: !189, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 202, baseType: !1591, size: 64, offset: 640)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 202, size: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1591, file: !1574, line: 203, baseType: !564, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1591, file: !1574, line: 204, baseType: !564, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1573, file: !1574, line: 206, baseType: !564, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1573, file: !1574, line: 207, baseType: !461, size: 32, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1573, file: !1574, line: 208, baseType: !469, size: 32, offset: 800)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1573, file: !1574, line: 209, baseType: !1599, size: 32, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1574, line: 31, baseType: !583)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1573, file: !1574, line: 210, baseType: !345, size: 16, offset: 864)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1573, file: !1574, line: 211, baseType: !345, size: 16, offset: 880)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1573, file: !1574, line: 215, baseType: !1200, size: 16, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1573, file: !1574, line: 222, baseType: !192, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 239, baseType: !1605, size: 320, offset: 1024)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 239, size: 320, elements: !1606)
!1606 = !{!1607, !1634}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1605, file: !1574, line: 240, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1574, line: 108, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1623, !1626, !1633}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1608, file: !1574, line: 110, baseType: !192, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1574, line: 111, baseType: !1612, size: 64, offset: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1574, line: 111, size: 64, elements: !1613)
!1613 = !{!1614, !1622}
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !1574, line: 112, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !1574, line: 112, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1615, file: !1574, line: 114, baseType: !876, size: 16)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1615, file: !1574, line: 115, baseType: !1619, size: 48, offset: 16)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 48, elements: !1620)
!1620 = !{!1621}
!1621 = !DISubrange(count: 6)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1612, file: !1574, line: 121, baseType: !192, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !1574, line: 123, baseType: !1624, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1574, line: 96, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1608, file: !1574, line: 124, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1574, line: 102, size: 192, elements: !1629)
!1629 = !{!1630, !1631, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !1574, line: 103, baseType: !393, size: 128, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1628, file: !1574, line: 104, baseType: !1225, size: 32, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1628, file: !1574, line: 105, baseType: !516, size: 8, offset: 160)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1608, file: !1574, line: 125, baseType: !244, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1574, line: 241, baseType: !1635, size: 320)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !1574, line: 241, size: 320, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1635, file: !1574, line: 242, baseType: !192, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1635, file: !1574, line: 243, baseType: !192, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1635, file: !1574, line: 244, baseType: !1624, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1635, file: !1574, line: 245, baseType: !1627, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1635, file: !1574, line: 246, baseType: !304, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 254, baseType: !1643, size: 256, offset: 1344)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 254, size: 256, elements: !1644)
!1644 = !{!1645, !1651}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1643, file: !1574, line: 255, baseType: !1646, size: 256)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1574, line: 128, size: 256, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1646, file: !1574, line: 129, baseType: !189, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1646, file: !1574, line: 130, baseType: !1650, size: 256)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !1172)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1574, line: 256, baseType: !1652, size: 256)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1574, line: 256, size: 256, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1652, file: !1574, line: 258, baseType: !196, size: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1652, file: !1574, line: 259, baseType: !1656, size: 128, offset: 128)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1657, line: 22, size: 128, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1662}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1656, file: !1657, line: 23, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1657, line: 23, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1656, file: !1657, line: 24, baseType: !192, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1573, file: !1574, line: 274, baseType: !1664, size: 64, offset: 1600)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1574, line: 170, size: 192, elements: !1666)
!1666 = !{!1667, !1676, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1665, file: !1574, line: 171, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1574, line: 165, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!250, !1572, !1672, !1674, !1572}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1665, file: !1574, line: 172, baseType: !1572, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1665, file: !1574, line: 173, baseType: !1624, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1544, file: !1545, line: 138, baseType: !1572, size: 64, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1544, file: !1545, line: 139, baseType: !1572, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1544, file: !1545, line: 140, baseType: !1572, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1544, file: !1545, line: 145, baseType: !1682, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1684, line: 13, size: 896, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1683, file: !1684, line: 14, baseType: !1225, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1683, file: !1684, line: 15, baseType: !771, size: 32, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1683, file: !1684, line: 16, baseType: !771, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1683, file: !1684, line: 21, baseType: !210, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1683, file: !1684, line: 27, baseType: !192, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1683, file: !1684, line: 28, baseType: !192, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1683, file: !1684, line: 29, baseType: !210, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1683, file: !1684, line: 32, baseType: !663, size: 128, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1683, file: !1684, line: 33, baseType: !461, size: 32, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1683, file: !1684, line: 37, baseType: !210, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1683, file: !1684, line: 44, baseType: !1697, size: 256, offset: 640)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1698, line: 15, size: 256, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !1698, line: 16, baseType: !797)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1697, file: !1698, line: 18, baseType: !250, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1697, file: !1698, line: 19, baseType: !250, size: 32, offset: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1697, file: !1698, line: 20, baseType: !250, size: 32, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1697, file: !1698, line: 21, baseType: !250, size: 32, offset: 96)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1697, file: !1698, line: 22, baseType: !192, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1697, file: !1698, line: 23, baseType: !192, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1544, file: !1545, line: 146, baseType: !1708, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !462, line: 18, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1544, file: !1545, line: 147, baseType: !1711, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1545, line: 25, size: 64, elements: !1713)
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1712, file: !1545, line: 26, baseType: !771, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1712, file: !1545, line: 27, baseType: !250, size: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1712, file: !1545, line: 28, baseType: !1717, offset: 64)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1545, line: 149, baseType: !1721, size: 128, offset: 1152)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1544, file: !1545, line: 149, size: 128, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1721, file: !1545, line: 150, baseType: !250, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1721, file: !1545, line: 151, baseType: !393, size: 128, align: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1212, file: !1213, line: 926, baseType: !1542, size: 64, offset: 8576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1212, file: !1213, line: 929, baseType: !1542, size: 64, offset: 8640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1212, file: !1213, line: 933, baseType: !1572, size: 64, offset: 8704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1212, file: !1213, line: 943, baseType: !1729, size: 128, offset: 8768)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, elements: !1730)
!1730 = !{!1731}
!1731 = !DISubrange(count: 16)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1212, file: !1213, line: 945, baseType: !1733, size: 64, offset: 8896)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1213, line: 49, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1212, file: !1213, line: 956, baseType: !1736, size: 64, offset: 8960)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1213, line: 45, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1212, file: !1213, line: 959, baseType: !1739, size: 64, offset: 9024)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1213, line: 959, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1212, file: !1213, line: 962, baseType: !1742, size: 64, offset: 9088)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1213, line: 66, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1212, file: !1213, line: 966, baseType: !1745, size: 64, offset: 9152)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1213, line: 50, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1212, file: !1213, line: 969, baseType: !1748, size: 64, offset: 9216)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1750, line: 82, size: 7296, elements: !1751)
!1750 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1787, !1796, !1797, !1799, !1800, !1801, !1804, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1834, !1835, !1842, !1843, !1844, !1845, !1846, !1847}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1749, file: !1750, line: 83, baseType: !1225, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1749, file: !1750, line: 84, baseType: !771, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1749, file: !1750, line: 85, baseType: !250, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1749, file: !1750, line: 86, baseType: !196, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1749, file: !1750, line: 88, baseType: !1476, size: 128, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1749, file: !1750, line: 91, baseType: !1211, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1749, file: !1750, line: 94, baseType: !1759, size: 192, offset: 448)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1760, line: 30, size: 192, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1759, file: !1760, line: 31, baseType: !196, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1759, file: !1760, line: 32, baseType: !1764, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1765, line: 25, baseType: !1766)
!1765 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1765, line: 23, size: 64, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1766, file: !1765, line: 24, baseType: !1365, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1749, file: !1750, line: 97, baseType: !659, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1749, file: !1750, line: 100, baseType: !250, size: 32, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1749, file: !1750, line: 106, baseType: !250, size: 32, offset: 736)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1749, file: !1750, line: 107, baseType: !1211, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1749, file: !1750, line: 110, baseType: !250, size: 32, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1749, file: !1750, line: 111, baseType: !7, size: 32, offset: 864)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1749, file: !1750, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1749, file: !1750, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1749, file: !1750, line: 128, baseType: !250, size: 32, offset: 928)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1749, file: !1750, line: 129, baseType: !196, size: 128, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1749, file: !1750, line: 132, baseType: !1287, size: 512, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1749, file: !1750, line: 133, baseType: !1295, size: 64, offset: 1600)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1749, file: !1750, line: 140, baseType: !1782, size: 256, offset: 1664)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, size: 256, elements: !1564)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1750, line: 38, size: 128, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1783, file: !1750, line: 39, baseType: !447, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1783, file: !1750, line: 40, baseType: !447, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1749, file: !1750, line: 146, baseType: !1788, size: 192, offset: 1920)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1750, line: 66, size: 192, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1788, file: !1750, line: 67, baseType: !1791, size: 192)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1750, line: 47, size: 192, elements: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1791, file: !1750, line: 48, baseType: !212, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1791, file: !1750, line: 49, baseType: !212, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1791, file: !1750, line: 50, baseType: !212, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1749, file: !1750, line: 150, baseType: !1525, size: 640, offset: 2112)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1749, file: !1750, line: 153, baseType: !1798, size: 256, offset: 2752)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 256, elements: !1172)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1749, file: !1750, line: 159, baseType: !1466, size: 64, offset: 3008)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1749, file: !1750, line: 162, baseType: !250, size: 32, offset: 3072)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1749, file: !1750, line: 164, baseType: !1802, size: 64, offset: 3136)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1750, line: 164, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1749, file: !1750, line: 175, baseType: !1805, size: 32, offset: 3200)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !416, line: 805, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 798, size: 32, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1806, file: !416, line: 803, baseType: !415, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1806, file: !416, line: 804, baseType: !222, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1749, file: !1750, line: 176, baseType: !447, size: 64, offset: 3264)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1749, file: !1750, line: 176, baseType: !447, size: 64, offset: 3328)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1749, file: !1750, line: 176, baseType: !447, size: 64, offset: 3392)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1749, file: !1750, line: 176, baseType: !447, size: 64, offset: 3456)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1749, file: !1750, line: 177, baseType: !447, size: 64, offset: 3520)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1749, file: !1750, line: 178, baseType: !447, size: 64, offset: 3584)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1749, file: !1750, line: 179, baseType: !1513, size: 128, offset: 3648)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1749, file: !1750, line: 180, baseType: !192, size: 64, offset: 3776)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1749, file: !1750, line: 180, baseType: !192, size: 64, offset: 3840)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1749, file: !1750, line: 180, baseType: !192, size: 64, offset: 3904)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1749, file: !1750, line: 180, baseType: !192, size: 64, offset: 3968)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1749, file: !1750, line: 181, baseType: !192, size: 64, offset: 4032)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1749, file: !1750, line: 181, baseType: !192, size: 64, offset: 4096)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1749, file: !1750, line: 181, baseType: !192, size: 64, offset: 4160)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1749, file: !1750, line: 181, baseType: !192, size: 64, offset: 4224)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1749, file: !1750, line: 182, baseType: !192, size: 64, offset: 4288)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1749, file: !1750, line: 182, baseType: !192, size: 64, offset: 4352)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1749, file: !1750, line: 182, baseType: !192, size: 64, offset: 4416)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1749, file: !1750, line: 182, baseType: !192, size: 64, offset: 4480)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1749, file: !1750, line: 183, baseType: !192, size: 64, offset: 4544)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1749, file: !1750, line: 183, baseType: !192, size: 64, offset: 4608)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1749, file: !1750, line: 184, baseType: !1832, offset: 4672)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1833, line: 12, elements: !236)
!1833 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1749, file: !1750, line: 192, baseType: !449, size: 64, offset: 4672)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1749, file: !1750, line: 203, baseType: !1836, size: 2048, offset: 4736)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1837, size: 2048, elements: !1730)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1838, line: 43, size: 128, elements: !1839)
!1838 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1837, file: !1838, line: 44, baseType: !352, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1837, file: !1838, line: 45, baseType: !352, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1749, file: !1750, line: 220, baseType: !516, size: 8, offset: 6784)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1749, file: !1750, line: 221, baseType: !1200, size: 16, offset: 6800)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1749, file: !1750, line: 222, baseType: !1200, size: 16, offset: 6816)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1749, file: !1750, line: 224, baseType: !991, size: 64, offset: 6848)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1749, file: !1750, line: 227, baseType: !206, size: 192, offset: 6912)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1749, file: !1750, line: 233, baseType: !206, size: 192, offset: 7104)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1212, file: !1213, line: 970, baseType: !1849, size: 64, offset: 9280)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1750, line: 20, size: 16576, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1850, file: !1750, line: 21, baseType: !222)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1850, file: !1750, line: 22, baseType: !1225, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1850, file: !1750, line: 23, baseType: !1476, size: 128, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1850, file: !1750, line: 24, baseType: !1856, size: 16384, offset: 192)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 16384, elements: !309)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1760, line: 49, size: 256, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1857, file: !1760, line: 50, baseType: !1860, size: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1760, line: 35, size: 256, elements: !1861)
!1861 = !{!1862, !1869, !1870, !1876}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1860, file: !1760, line: 37, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1864, line: 19, baseType: !1865)
!1864 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1864, line: 18, baseType: !1867)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !250}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1860, file: !1760, line: 38, baseType: !192, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1860, file: !1760, line: 44, baseType: !1871, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1864, line: 22, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1864, line: 21, baseType: !1874)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1860, file: !1760, line: 46, baseType: !1764, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1212, file: !1213, line: 971, baseType: !1764, size: 64, offset: 9344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1212, file: !1213, line: 972, baseType: !1764, size: 64, offset: 9408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1212, file: !1213, line: 974, baseType: !1764, size: 64, offset: 9472)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1212, file: !1213, line: 975, baseType: !1759, size: 192, offset: 9536)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1212, file: !1213, line: 976, baseType: !192, size: 64, offset: 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1212, file: !1213, line: 977, baseType: !350, size: 64, offset: 9792)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1212, file: !1213, line: 978, baseType: !7, size: 32, offset: 9856)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1212, file: !1213, line: 980, baseType: !396, size: 64, offset: 9920)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1212, file: !1213, line: 989, baseType: !1886, size: 128, offset: 9984)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1887, line: 35, size: 128, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1886, file: !1887, line: 36, baseType: !250, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1886, file: !1887, line: 37, baseType: !771, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1886, file: !1887, line: 38, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1887, line: 23, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1212, file: !1213, line: 992, baseType: !447, size: 64, offset: 10112)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1212, file: !1213, line: 993, baseType: !447, size: 64, offset: 10176)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1212, file: !1213, line: 996, baseType: !222, offset: 10240)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1212, file: !1213, line: 999, baseType: !797, offset: 10240)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1212, file: !1213, line: 1001, baseType: !1899, size: 64, offset: 10240)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1213, line: 636, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1899, file: !1213, line: 637, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1212, file: !1213, line: 1005, baseType: !776, size: 128, offset: 10304)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1212, file: !1213, line: 1007, baseType: !1211, size: 64, offset: 10432)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1212, file: !1213, line: 1009, baseType: !1906, size: 64, offset: 10496)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1213, line: 1009, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1212, file: !1213, line: 1043, baseType: !189, size: 64, offset: 10560)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1212, file: !1213, line: 1046, baseType: !1910, size: 64, offset: 10624)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1213, line: 41, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1212, file: !1213, line: 1050, baseType: !1913, size: 64, offset: 10688)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1213, line: 42, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1212, file: !1213, line: 1054, baseType: !1916, size: 64, offset: 10752)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1213, line: 55, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1212, file: !1213, line: 1056, baseType: !1919, size: 64, offset: 10816)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1213, line: 40, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1212, file: !1213, line: 1058, baseType: !1922, size: 64, offset: 10880)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1924, line: 99, size: 704, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1951, !1952}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1923, file: !1924, line: 100, baseType: !210, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1923, file: !1924, line: 101, baseType: !771, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1923, file: !1924, line: 102, baseType: !771, size: 32, offset: 96)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1923, file: !1924, line: 105, baseType: !222, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1923, file: !1924, line: 107, baseType: !345, size: 16, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1923, file: !1924, line: 109, baseType: !763, size: 128, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1923, file: !1924, line: 110, baseType: !1933, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1924, line: 73, size: 448, elements: !1935)
!1935 = !{!1936, !1939, !1940, !1945, !1950}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1934, file: !1924, line: 74, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1924, line: 74, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1934, file: !1924, line: 75, baseType: !1922, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1924, line: 83, baseType: !1941, size: 128, offset: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1924, line: 83, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1941, file: !1924, line: 84, baseType: !196, size: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1941, file: !1924, line: 85, baseType: !952, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1924, line: 87, baseType: !1946, size: 128, offset: 256)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1924, line: 87, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1946, file: !1924, line: 88, baseType: !663, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1946, file: !1924, line: 89, baseType: !393, size: 128, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !1924, line: 92, baseType: !7, size: 32, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1923, file: !1924, line: 111, baseType: !659, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1923, file: !1924, line: 113, baseType: !1953, size: 256, offset: 448)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !141, line: 102, size: 256, elements: !1954)
!1954 = !{!1955, !1956, !1957}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1953, file: !141, line: 103, baseType: !210, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1953, file: !141, line: 104, baseType: !196, size: 128, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1953, file: !141, line: 105, baseType: !1958, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !141, line: 21, baseType: !1959)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1212, file: !1213, line: 1061, baseType: !1964, size: 64, offset: 10944)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1213, line: 43, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1212, file: !1213, line: 1064, baseType: !192, size: 64, offset: 11008)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1212, file: !1213, line: 1065, baseType: !1968, size: 64, offset: 11072)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1760, line: 14, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1760, line: 12, size: 384, elements: !1971)
!1971 = !{!1972}
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1760, line: 13, baseType: !1973, size: 384)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1970, file: !1760, line: 13, size: 384, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1973, file: !1760, line: 13, baseType: !250, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1973, file: !1760, line: 13, baseType: !250, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1973, file: !1760, line: 13, baseType: !250, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1973, file: !1760, line: 13, baseType: !1979, size: 256, offset: 128)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1980, line: 32, size: 256, elements: !1981)
!1980 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982, !1987, !2000, !2006, !2015, !2035, !2040}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1979, file: !1980, line: 37, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 34, size: 64, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1983, file: !1980, line: 35, baseType: !1455, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1983, file: !1980, line: 36, baseType: !467, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1979, file: !1980, line: 45, baseType: !1988, size: 192)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 40, size: 192, elements: !1989)
!1989 = !{!1990, !1992, !1993, !1999}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1988, file: !1980, line: 41, baseType: !1991, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !337, line: 95, baseType: !250)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1988, file: !1980, line: 42, baseType: !250, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1988, file: !1980, line: 43, baseType: !1994, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1980, line: 11, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1980, line: 8, size: 64, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1995, file: !1980, line: 9, baseType: !250, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1995, file: !1980, line: 10, baseType: !189, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1988, file: !1980, line: 44, baseType: !250, size: 32, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1979, file: !1980, line: 52, baseType: !2001, size: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 48, size: 128, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2001, file: !1980, line: 49, baseType: !1455, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2001, file: !1980, line: 50, baseType: !467, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2001, file: !1980, line: 51, baseType: !1994, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1979, file: !1980, line: 61, baseType: !2007, size: 256)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 55, size: 256, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2014}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2007, file: !1980, line: 56, baseType: !1455, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2007, file: !1980, line: 57, baseType: !467, size: 32, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2007, file: !1980, line: 58, baseType: !250, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2007, file: !1980, line: 59, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !337, line: 94, baseType: !338)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2007, file: !1980, line: 60, baseType: !2013, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1979, file: !1980, line: 95, baseType: !2016, size: 256)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 64, size: 256, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2016, file: !1980, line: 65, baseType: !189, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !2016, file: !1980, line: 77, baseType: !2020, size: 192, offset: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2016, file: !1980, line: 77, size: 192, elements: !2021)
!2021 = !{!2022, !2023, !2030}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2020, file: !1980, line: 82, baseType: !1200, size: 16)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2020, file: !1980, line: 88, baseType: !2024, size: 192)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !1980, line: 84, size: 192, elements: !2025)
!2025 = !{!2026, !2028, !2029}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2024, file: !1980, line: 85, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 64, elements: !1325)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2024, file: !1980, line: 86, baseType: !189, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2024, file: !1980, line: 87, baseType: !189, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2020, file: !1980, line: 93, baseType: !2031, size: 96)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !1980, line: 90, size: 96, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2031, file: !1980, line: 91, baseType: !2027, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2031, file: !1980, line: 92, baseType: !444, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1979, file: !1980, line: 101, baseType: !2036, size: 128)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 98, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2036, file: !1980, line: 99, baseType: !142, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2036, file: !1980, line: 100, baseType: !250, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1979, file: !1980, line: 108, baseType: !2041, size: 128)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 104, size: 128, elements: !2042)
!2042 = !{!2043, !2044, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2041, file: !1980, line: 105, baseType: !189, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2041, file: !1980, line: 106, baseType: !250, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2041, file: !1980, line: 107, baseType: !7, size: 32, offset: 96)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1212, file: !1213, line: 1067, baseType: !1832, offset: 11136)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1212, file: !1213, line: 1099, baseType: !2048, size: 64, offset: 11136)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1213, line: 56, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1212, file: !1213, line: 1103, baseType: !196, size: 128, offset: 11200)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1212, file: !1213, line: 1104, baseType: !2052, size: 64, offset: 11328)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1213, line: 46, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1212, file: !1213, line: 1105, baseType: !206, size: 192, offset: 11392)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1212, file: !1213, line: 1106, baseType: !7, size: 32, offset: 11584)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1212, file: !1213, line: 1109, baseType: !2057, size: 128, offset: 11648)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2058, size: 128, elements: !1564)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1213, line: 51, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1212, file: !1213, line: 1110, baseType: !206, size: 192, offset: 11776)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1212, file: !1213, line: 1111, baseType: !196, size: 128, offset: 11968)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1212, file: !1213, line: 1173, baseType: !2063, size: 64, offset: 12096)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2065, line: 62, size: 256, align: 256, elements: !2066)
!2065 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !{!2067, !2068, !2069, !2074}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2064, file: !2065, line: 75, baseType: !444, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2064, file: !2065, line: 90, baseType: !444, size: 32, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2064, file: !2065, line: 124, baseType: !2070, size: 64, offset: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2065, line: 109, size: 64, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2070, file: !2065, line: 110, baseType: !448, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2070, file: !2065, line: 112, baseType: !448, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !2065, line: 144, baseType: !444, size: 32, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1212, file: !1213, line: 1174, baseType: !443, size: 32, offset: 12160)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1212, file: !1213, line: 1179, baseType: !192, size: 64, offset: 12224)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1212, file: !1213, line: 1182, baseType: !2078, size: 128, offset: 12288)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1168, line: 76, size: 128, elements: !2079)
!2079 = !{!2080, !2085, !2086}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2078, file: !1168, line: 85, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2082, line: 7, size: 64, elements: !2083)
!2082 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2081, file: !2082, line: 12, baseType: !1362, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2078, file: !1168, line: 88, baseType: !516, size: 8, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2078, file: !1168, line: 95, baseType: !516, size: 8, offset: 72)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1213, line: 1184, baseType: !2088, size: 128, offset: 12416)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1213, line: 1184, size: 128, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2088, file: !1213, line: 1185, baseType: !1225, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2088, file: !1213, line: 1186, baseType: !393, size: 128, align: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1212, file: !1213, line: 1190, baseType: !2093, size: 64, offset: 12544)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1213, line: 53, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1212, file: !1213, line: 1192, baseType: !2096, size: 128, offset: 12608)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1168, line: 64, size: 128, elements: !2097)
!2097 = !{!2098, !2099, !2100}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2096, file: !1168, line: 65, baseType: !745, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2096, file: !1168, line: 67, baseType: !444, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2096, file: !1168, line: 68, baseType: !444, size: 32, offset: 96)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1212, file: !1213, line: 1206, baseType: !250, size: 32, offset: 12736)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1212, file: !1213, line: 1207, baseType: !250, size: 32, offset: 12768)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1212, file: !1213, line: 1209, baseType: !192, size: 64, offset: 12800)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1212, file: !1213, line: 1219, baseType: !447, size: 64, offset: 12864)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1212, file: !1213, line: 1220, baseType: !447, size: 64, offset: 12928)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1212, file: !1213, line: 1317, baseType: !250, size: 32, offset: 12992)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1212, file: !1213, line: 1319, baseType: !1211, size: 64, offset: 13056)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1212, file: !1213, line: 1322, baseType: !2109, size: 64, offset: 13120)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2111, line: 56, size: 512, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2121}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2110, file: !2111, line: 57, baseType: !2109, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2110, file: !2111, line: 58, baseType: !189, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2110, file: !2111, line: 59, baseType: !192, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2110, file: !2111, line: 60, baseType: !192, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2110, file: !2111, line: 61, baseType: !837, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2110, file: !2111, line: 62, baseType: !7, size: 32, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2110, file: !2111, line: 63, baseType: !2120, size: 64, offset: 384)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !191, line: 153, baseType: !447)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2110, file: !2111, line: 64, baseType: !2122, size: 64, offset: 448)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1212, file: !1213, line: 1326, baseType: !1225, size: 32, offset: 13184)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1212, file: !1213, line: 1342, baseType: !189, size: 64, offset: 13248)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1212, file: !1213, line: 1343, baseType: !448, size: 64, offset: 13312)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1212, file: !1213, line: 1344, baseType: !447, size: 64, offset: 13376)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1212, file: !1213, line: 1345, baseType: !448, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1212, file: !1213, line: 1346, baseType: !448, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1212, file: !1213, line: 1347, baseType: !448, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1212, file: !1213, line: 1348, baseType: !393, size: 128, align: 64, offset: 13504)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1212, file: !1213, line: 1358, baseType: !2133, size: 34816, offset: 13824)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2134, line: 485, size: 34816, elements: !2135)
!2134 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2165, !2166, !2167, !2168, !2169, !2170, !2173, !2174, !2175}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2133, file: !2134, line: 487, baseType: !2137, size: 192)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 192, elements: !305)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2139, line: 16, size: 64, elements: !2140)
!2139 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2138, file: !2139, line: 17, baseType: !876, size: 16)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2138, file: !2139, line: 18, baseType: !876, size: 16, offset: 16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2138, file: !2139, line: 19, baseType: !876, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2138, file: !2139, line: 19, baseType: !876, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2138, file: !2139, line: 19, baseType: !876, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2138, file: !2139, line: 19, baseType: !876, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2138, file: !2139, line: 19, baseType: !876, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2138, file: !2139, line: 20, baseType: !876, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2138, file: !2139, line: 20, baseType: !876, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2138, file: !2139, line: 20, baseType: !876, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2138, file: !2139, line: 20, baseType: !876, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2138, file: !2139, line: 20, baseType: !876, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2138, file: !2139, line: 20, baseType: !876, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2133, file: !2134, line: 491, baseType: !192, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2133, file: !2134, line: 495, baseType: !345, size: 16, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2133, file: !2134, line: 496, baseType: !345, size: 16, offset: 272)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2133, file: !2134, line: 497, baseType: !345, size: 16, offset: 288)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2133, file: !2134, line: 498, baseType: !345, size: 16, offset: 304)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2133, file: !2134, line: 502, baseType: !192, size: 64, offset: 320)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2133, file: !2134, line: 503, baseType: !192, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2133, file: !2134, line: 514, baseType: !2162, size: 256, offset: 448)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2163, size: 256, elements: !1172)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2134, line: 483, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2133, file: !2134, line: 516, baseType: !192, size: 64, offset: 704)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2133, file: !2134, line: 518, baseType: !192, size: 64, offset: 768)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2133, file: !2134, line: 520, baseType: !192, size: 64, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2133, file: !2134, line: 521, baseType: !192, size: 64, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2133, file: !2134, line: 522, baseType: !192, size: 64, offset: 960)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2133, file: !2134, line: 528, baseType: !2171, size: 64, offset: 1024)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2134, line: 10, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2133, file: !2134, line: 535, baseType: !192, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2133, file: !2134, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2133, file: !2134, line: 540, baseType: !2176, size: 33280, offset: 1536)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2177, line: 317, size: 33280, elements: !2178)
!2177 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2178 = !{!2179, !2180, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2176, file: !2177, line: 330, baseType: !7, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2176, file: !2177, line: 337, baseType: !192, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2176, file: !2177, line: 348, baseType: !2182, size: 32768, offset: 512)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2177, line: 304, size: 32768, elements: !2183)
!2183 = !{!2184, !2199, !2238, !2288, !2301}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2182, file: !2177, line: 305, baseType: !2185, size: 896)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2177, line: 12, size: 896, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2198}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2185, file: !2177, line: 13, baseType: !443, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2185, file: !2177, line: 14, baseType: !443, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2185, file: !2177, line: 15, baseType: !443, size: 32, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2185, file: !2177, line: 16, baseType: !443, size: 32, offset: 96)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2185, file: !2177, line: 17, baseType: !443, size: 32, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2185, file: !2177, line: 18, baseType: !443, size: 32, offset: 160)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2185, file: !2177, line: 19, baseType: !443, size: 32, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2185, file: !2177, line: 22, baseType: !2195, size: 640, offset: 224)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 640, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 20)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2185, file: !2177, line: 25, baseType: !443, size: 32, offset: 864)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2182, file: !2177, line: 306, baseType: !2200, size: 4096, align: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2177, line: 34, size: 4096, align: 128, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2221, !2222, !2223, !2227, !2229, !2233}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2200, file: !2177, line: 35, baseType: !876, size: 16)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2200, file: !2177, line: 36, baseType: !876, size: 16, offset: 16)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2200, file: !2177, line: 37, baseType: !876, size: 16, offset: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2200, file: !2177, line: 38, baseType: !876, size: 16, offset: 48)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2200, file: !2177, line: 39, baseType: !2207, size: 128, offset: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2200, file: !2177, line: 39, size: 128, elements: !2208)
!2208 = !{!2209, !2214}
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !2177, line: 40, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !2177, line: 40, size: 128, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2210, file: !2177, line: 41, baseType: !447, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2210, file: !2177, line: 42, baseType: !447, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !2177, line: 44, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !2177, line: 44, size: 128, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2215, file: !2177, line: 45, baseType: !443, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2215, file: !2177, line: 46, baseType: !443, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2215, file: !2177, line: 47, baseType: !443, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2215, file: !2177, line: 48, baseType: !443, size: 32, offset: 96)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2200, file: !2177, line: 51, baseType: !443, size: 32, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2200, file: !2177, line: 52, baseType: !443, size: 32, offset: 224)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2200, file: !2177, line: 55, baseType: !2224, size: 1024, offset: 256)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 1024, elements: !2225)
!2225 = !{!2226}
!2226 = !DISubrange(count: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2200, file: !2177, line: 58, baseType: !2228, size: 2048, offset: 1280)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 2048, elements: !309)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2200, file: !2177, line: 60, baseType: !2230, size: 384, offset: 3328)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, elements: !2231)
!2231 = !{!2232}
!2232 = !DISubrange(count: 12)
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2200, file: !2177, line: 62, baseType: !2234, size: 384, offset: 3712)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2200, file: !2177, line: 62, size: 384, elements: !2235)
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2234, file: !2177, line: 63, baseType: !2230, size: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2234, file: !2177, line: 64, baseType: !2230, size: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2182, file: !2177, line: 307, baseType: !2239, size: 1088)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2177, line: 79, size: 1088, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2287}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2239, file: !2177, line: 80, baseType: !443, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2239, file: !2177, line: 81, baseType: !443, size: 32, offset: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2239, file: !2177, line: 82, baseType: !443, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2239, file: !2177, line: 83, baseType: !443, size: 32, offset: 96)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2239, file: !2177, line: 84, baseType: !443, size: 32, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2239, file: !2177, line: 85, baseType: !443, size: 32, offset: 160)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2239, file: !2177, line: 86, baseType: !443, size: 32, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2239, file: !2177, line: 88, baseType: !2195, size: 640, offset: 224)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2239, file: !2177, line: 89, baseType: !1347, size: 8, offset: 864)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2239, file: !2177, line: 90, baseType: !1347, size: 8, offset: 872)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2239, file: !2177, line: 91, baseType: !1347, size: 8, offset: 880)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2239, file: !2177, line: 92, baseType: !1347, size: 8, offset: 888)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2239, file: !2177, line: 93, baseType: !1347, size: 8, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2239, file: !2177, line: 94, baseType: !1347, size: 8, offset: 904)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2239, file: !2177, line: 95, baseType: !2256, size: 64, offset: 960)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2258, line: 11, size: 128, elements: !2259)
!2258 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2259 = !{!2260, !2261}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2257, file: !2258, line: 12, baseType: !142, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2257, file: !2258, line: 13, baseType: !2262, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2264, line: 56, size: 1344, elements: !2265)
!2264 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2263, file: !2264, line: 61, baseType: !192, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2263, file: !2264, line: 62, baseType: !192, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2263, file: !2264, line: 63, baseType: !192, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2263, file: !2264, line: 64, baseType: !192, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2263, file: !2264, line: 65, baseType: !192, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2263, file: !2264, line: 66, baseType: !192, size: 64, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2263, file: !2264, line: 68, baseType: !192, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2263, file: !2264, line: 69, baseType: !192, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2263, file: !2264, line: 70, baseType: !192, size: 64, offset: 512)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2263, file: !2264, line: 71, baseType: !192, size: 64, offset: 576)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2263, file: !2264, line: 72, baseType: !192, size: 64, offset: 640)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2263, file: !2264, line: 73, baseType: !192, size: 64, offset: 704)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2263, file: !2264, line: 74, baseType: !192, size: 64, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2263, file: !2264, line: 75, baseType: !192, size: 64, offset: 832)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2263, file: !2264, line: 76, baseType: !192, size: 64, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2263, file: !2264, line: 81, baseType: !192, size: 64, offset: 960)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2263, file: !2264, line: 83, baseType: !192, size: 64, offset: 1024)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2263, file: !2264, line: 84, baseType: !192, size: 64, offset: 1088)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2263, file: !2264, line: 85, baseType: !192, size: 64, offset: 1152)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2263, file: !2264, line: 86, baseType: !192, size: 64, offset: 1216)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2263, file: !2264, line: 87, baseType: !192, size: 64, offset: 1280)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2239, file: !2177, line: 96, baseType: !443, size: 32, offset: 1024)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2182, file: !2177, line: 308, baseType: !2289, size: 4608, align: 512)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2177, line: 289, size: 4608, align: 512, elements: !2290)
!2290 = !{!2291, !2292, !2299}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2289, file: !2177, line: 290, baseType: !2200, size: 4096, align: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2289, file: !2177, line: 291, baseType: !2293, size: 512, offset: 4096)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2177, line: 268, size: 512, elements: !2294)
!2294 = !{!2295, !2296, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2293, file: !2177, line: 269, baseType: !447, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2293, file: !2177, line: 270, baseType: !447, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2293, file: !2177, line: 271, baseType: !2298, size: 384, offset: 128)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 384, elements: !1620)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2289, file: !2177, line: 292, baseType: !2300, offset: 4608)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, elements: !1718)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2182, file: !2177, line: 309, baseType: !2302, size: 32768)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, size: 32768, elements: !2303)
!2303 = !{!2304}
!2304 = !DISubrange(count: 4096)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1208, file: !747, line: 378, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1204, file: !747, line: 384, baseType: !1497, size: 192, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !995, file: !747, line: 500, baseType: !222, offset: 6656)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !995, file: !747, line: 501, baseType: !2310, size: 64, offset: 6656)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !747, line: 387, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !995, file: !747, line: 516, baseType: !1708, size: 64, offset: 6720)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !995, file: !747, line: 519, baseType: !380, size: 64, offset: 6784)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !995, file: !747, line: 521, baseType: !2315, size: 64, offset: 6848)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !747, line: 521, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !995, file: !747, line: 545, baseType: !771, size: 32, offset: 6912)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !995, file: !747, line: 548, baseType: !516, size: 8, offset: 6944)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !995, file: !747, line: 550, baseType: !2320, offset: 6952)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2321, line: 142, elements: !236)
!2321 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !995, file: !747, line: 554, baseType: !1953, size: 256, offset: 6976)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !995, file: !747, line: 557, baseType: !443, size: 32, offset: 7232)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !992, file: !747, line: 565, baseType: !2325, offset: 7296)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, elements: !2326)
!2326 = !{!2327}
!2327 = !DISubrange(count: -1)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !988, file: !747, line: 151, baseType: !771, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !981, file: !747, line: 156, baseType: !222, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !747, line: 159, baseType: !2331, size: 128)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !747, line: 159, size: 128, elements: !2332)
!2332 = !{!2333, !2397}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2331, file: !747, line: 161, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2336)
!2336 = !{!2337, !2347, !2368, !2369, !2370, !2371, !2372, !2384, !2385, !2386}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2335, file: !31, line: 111, baseType: !2338, size: 384)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2339)
!2339 = !{!2340, !2342, !2343, !2344, !2345, !2346}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2338, file: !31, line: 20, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2338, file: !31, line: 21, baseType: !2341, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2338, file: !31, line: 22, baseType: !2341, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2338, file: !31, line: 23, baseType: !192, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2338, file: !31, line: 24, baseType: !192, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2338, file: !31, line: 25, baseType: !192, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2335, file: !31, line: 112, baseType: !2348, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2350, line: 105, size: 128, elements: !2351)
!2350 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2349, file: !2350, line: 110, baseType: !192, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2349, file: !2350, line: 118, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2350, line: 95, size: 448, elements: !2356)
!2356 = !{!2357, !2358, !2363, !2364, !2365, !2366, !2367}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2355, file: !2350, line: 96, baseType: !210, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2355, file: !2350, line: 97, baseType: !2359, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2350, line: 60, baseType: !2361)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !2348}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2355, file: !2350, line: 98, baseType: !2359, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2355, file: !2350, line: 99, baseType: !516, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2355, file: !2350, line: 100, baseType: !516, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2355, file: !2350, line: 101, baseType: !393, size: 128, align: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2355, file: !2350, line: 102, baseType: !2348, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2335, file: !31, line: 113, baseType: !2349, size: 128, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2335, file: !31, line: 114, baseType: !1497, size: 192, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2335, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2335, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2335, file: !31, line: 117, baseType: !2373, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2376)
!2376 = !{!2377, !2378, !2382, !2383}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2375, file: !31, line: 73, baseType: !857, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2375, file: !31, line: 78, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2334}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2375, file: !31, line: 83, baseType: !2379, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2375, file: !31, line: 89, baseType: !1044, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2335, file: !31, line: 118, baseType: !189, size: 64, offset: 896)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2335, file: !31, line: 119, baseType: !250, size: 32, offset: 960)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !31, line: 120, baseType: !2387, size: 128, offset: 1024)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2335, file: !31, line: 120, size: 128, elements: !2388)
!2388 = !{!2389, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2387, file: !31, line: 121, baseType: !2390, size: 128)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2391, line: 6, size: 128, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2390, file: !2391, line: 7, baseType: !447, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2390, file: !2391, line: 8, baseType: !447, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2387, file: !31, line: 122, baseType: !2396)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2390, elements: !1718)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2331, file: !747, line: 162, baseType: !189, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !751, file: !747, line: 176, baseType: !393, size: 128, align: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !747, line: 179, baseType: !2400, size: 32, offset: 384)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !747, line: 179, size: 32, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2400, file: !747, line: 184, baseType: !771, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2400, file: !747, line: 192, baseType: !7, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2400, file: !747, line: 194, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2400, file: !747, line: 195, baseType: !250, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !746, file: !747, line: 199, baseType: !771, size: 32, offset: 416)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !681, file: !44, line: 1964, baseType: !2408, size: 64, offset: 1344)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!142, !623, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2413, line: 12, size: 256, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416, !2417, !2418, !2419}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2412, file: !2413, line: 13, baseType: !190, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2412, file: !2413, line: 16, baseType: !250, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2412, file: !2413, line: 23, baseType: !192, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2412, file: !2413, line: 30, baseType: !192, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2412, file: !2413, line: 33, baseType: !2420, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !747, line: 27, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !681, file: !44, line: 1966, baseType: !2408, size: 64, offset: 1408)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !624, file: !44, line: 1424, baseType: !2424, size: 64, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2426)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2427)
!2427 = !{!2428, !2474, !2478, !2482, !2483, !2484, !2485, !2486, !2491, !2496, !2500}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2426, file: !38, line: 323, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!250, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2459, !2460, !2461}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2433, file: !38, line: 295, baseType: !663, size: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2433, file: !38, line: 296, baseType: !196, size: 128, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2433, file: !38, line: 297, baseType: !196, size: 128, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2433, file: !38, line: 298, baseType: !196, size: 128, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2433, file: !38, line: 299, baseType: !206, size: 192, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2433, file: !38, line: 300, baseType: !222, offset: 704)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2433, file: !38, line: 301, baseType: !771, size: 32, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2433, file: !38, line: 302, baseType: !623, size: 64, offset: 768)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2433, file: !38, line: 303, baseType: !2444, size: 64, offset: 832)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2445)
!2445 = !{!2446, !2458}
!2446 = !DIDerivedType(tag: DW_TAG_member, scope: !2444, file: !38, line: 69, baseType: !2447, size: 32)
!2447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2444, file: !38, line: 69, size: 32, elements: !2448)
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2447, file: !38, line: 70, baseType: !461, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2447, file: !38, line: 71, baseType: !469, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2447, file: !38, line: 72, baseType: !2452, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2453, line: 24, baseType: !2454)
!2453 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2453, line: 22, size: 32, elements: !2455)
!2455 = !{!2456}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2454, file: !2453, line: 23, baseType: !2457, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2453, line: 20, baseType: !467)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2444, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2433, file: !38, line: 304, baseType: !557, size: 64, offset: 896)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2433, file: !38, line: 305, baseType: !192, size: 64, offset: 960)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2433, file: !38, line: 306, baseType: !2462, size: 576, offset: 1024)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2463)
!2463 = !{!2464, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2462, file: !38, line: 206, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !220)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2462, file: !38, line: 207, baseType: !2465, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2462, file: !38, line: 208, baseType: !2465, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2462, file: !38, line: 209, baseType: !2465, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2462, file: !38, line: 210, baseType: !2465, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2462, file: !38, line: 211, baseType: !2465, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2462, file: !38, line: 212, baseType: !2465, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2462, file: !38, line: 213, baseType: !564, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2462, file: !38, line: 214, baseType: !564, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2426, file: !38, line: 324, baseType: !2475, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!2432, !623, !250}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2426, file: !38, line: 325, baseType: !2479, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !2432}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2426, file: !38, line: 326, baseType: !2429, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2426, file: !38, line: 327, baseType: !2429, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2426, file: !38, line: 328, baseType: !2429, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2426, file: !38, line: 329, baseType: !709, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2426, file: !38, line: 332, baseType: !2487, size: 64, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!2490, !455}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2426, file: !38, line: 333, baseType: !2492, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!250, !455, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2426, file: !38, line: 335, baseType: !2497, size: 64, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!250, !455, !2490}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2426, file: !38, line: 337, baseType: !2501, size: 64, offset: 640)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!250, !623, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !624, file: !44, line: 1425, baseType: !2506, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2508)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2509)
!2509 = !{!2510, !2514, !2515, !2519, !2520, !2521, !2536, !2559, !2563, !2564, !2587}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2508, file: !38, line: 429, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!250, !623, !250, !250, !573}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2508, file: !38, line: 430, baseType: !709, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2508, file: !38, line: 431, baseType: !2516, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!250, !623, !7}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2508, file: !38, line: 432, baseType: !2516, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2508, file: !38, line: 433, baseType: !709, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2508, file: !38, line: 434, baseType: !2522, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!250, !623, !250, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2526, file: !38, line: 416, baseType: !250, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2526, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2526, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2526, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2526, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2526, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2526, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2526, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2508, file: !38, line: 435, baseType: !2537, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!250, !623, !2444, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2541, file: !38, line: 344, baseType: !250, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2541, file: !38, line: 345, baseType: !447, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2541, file: !38, line: 346, baseType: !447, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2541, file: !38, line: 347, baseType: !447, size: 64, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2541, file: !38, line: 348, baseType: !447, size: 64, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2541, file: !38, line: 349, baseType: !447, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2541, file: !38, line: 350, baseType: !447, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2541, file: !38, line: 351, baseType: !216, size: 64, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2541, file: !38, line: 353, baseType: !216, size: 64, offset: 512)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2541, file: !38, line: 354, baseType: !250, size: 32, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2541, file: !38, line: 355, baseType: !250, size: 32, offset: 608)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2541, file: !38, line: 356, baseType: !447, size: 64, offset: 640)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2541, file: !38, line: 357, baseType: !447, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2541, file: !38, line: 358, baseType: !447, size: 64, offset: 768)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2541, file: !38, line: 359, baseType: !216, size: 64, offset: 832)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2541, file: !38, line: 360, baseType: !250, size: 32, offset: 896)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2508, file: !38, line: 436, baseType: !2560, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!250, !623, !2504, !2540}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2508, file: !38, line: 438, baseType: !2537, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2508, file: !38, line: 439, baseType: !2565, size: 64, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!250, !623, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2569, file: !38, line: 410, baseType: !7, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2569, file: !38, line: 411, baseType: !2573, size: 1344, offset: 64)
!2573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2574, size: 1344, elements: !305)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2586}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !38, line: 396, baseType: !7, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2574, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2574, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2574, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2574, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2574, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2574, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2574, file: !38, line: 404, baseType: !449, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2574, file: !38, line: 405, baseType: !2585, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !191, line: 126, baseType: !447)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2574, file: !38, line: 406, baseType: !2585, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2508, file: !38, line: 440, baseType: !2516, size: 64, offset: 640)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !624, file: !44, line: 1426, baseType: !2589, size: 64, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2591)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !624, file: !44, line: 1427, baseType: !192, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !624, file: !44, line: 1428, baseType: !192, size: 64, offset: 704)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !624, file: !44, line: 1429, baseType: !192, size: 64, offset: 768)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !624, file: !44, line: 1430, baseType: !410, size: 64, offset: 832)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !624, file: !44, line: 1431, baseType: !791, size: 256, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !624, file: !44, line: 1432, baseType: !250, size: 32, offset: 1152)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !624, file: !44, line: 1433, baseType: !771, size: 32, offset: 1184)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !624, file: !44, line: 1437, baseType: !2600, size: 64, offset: 1216)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !624, file: !44, line: 1449, baseType: !2605, size: 64, offset: 1280)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !426, line: 34, size: 64, elements: !2606)
!2606 = !{!2607}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2605, file: !426, line: 35, baseType: !429, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !624, file: !44, line: 1450, baseType: !196, size: 128, offset: 1344)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !624, file: !44, line: 1451, baseType: !2610, size: 64, offset: 1472)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !624, file: !44, line: 1452, baseType: !1919, size: 64, offset: 1536)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !624, file: !44, line: 1453, baseType: !2614, size: 64, offset: 1600)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !624, file: !44, line: 1454, baseType: !663, size: 128, offset: 1664)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !624, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !624, file: !44, line: 1456, baseType: !2619, size: 2432, offset: 1856)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2625, !2657}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2619, file: !38, line: 519, baseType: !7, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2619, file: !38, line: 520, baseType: !791, size: 256, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2619, file: !38, line: 521, baseType: !2624, size: 192, offset: 320)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 192, elements: !305)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2619, file: !38, line: 522, baseType: !2626, size: 1728, offset: 512)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2627, size: 1728, elements: !305)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2628)
!2628 = !{!2629, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2627, file: !38, line: 223, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2632)
!2632 = !{!2633, !2634, !2647, !2648}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2631, file: !38, line: 444, baseType: !250, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2631, file: !38, line: 445, baseType: !2635, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2637, file: !38, line: 311, baseType: !709, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2637, file: !38, line: 312, baseType: !709, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2637, file: !38, line: 313, baseType: !709, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2637, file: !38, line: 314, baseType: !709, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2637, file: !38, line: 315, baseType: !2429, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2637, file: !38, line: 316, baseType: !2429, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2637, file: !38, line: 317, baseType: !2429, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2637, file: !38, line: 318, baseType: !2501, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2631, file: !38, line: 446, baseType: !186, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2631, file: !38, line: 447, baseType: !2630, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2627, file: !38, line: 224, baseType: !250, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2627, file: !38, line: 226, baseType: !196, size: 128, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2627, file: !38, line: 227, baseType: !192, size: 64, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2627, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2627, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2627, file: !38, line: 230, baseType: !2465, size: 64, offset: 384)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2627, file: !38, line: 231, baseType: !2465, size: 64, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2627, file: !38, line: 232, baseType: !189, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2619, file: !38, line: 523, baseType: !2658, size: 192, offset: 2240)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2635, size: 192, elements: !305)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !624, file: !44, line: 1458, baseType: !2660, size: 2112, offset: 4288)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2661)
!2661 = !{!2662, !2663, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2660, file: !44, line: 1411, baseType: !250, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2660, file: !44, line: 1412, baseType: !1476, size: 128, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2660, file: !44, line: 1413, baseType: !2665, size: 1920, offset: 192)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2666, size: 1920, elements: !305)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2667, line: 12, size: 640, elements: !2668)
!2667 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2668 = !{!2669, !2677, !2679, !2684, !2685}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2666, file: !2667, line: 13, baseType: !2670, size: 320)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2671, line: 17, size: 320, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2672 = !{!2673, !2674, !2675, !2676}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2670, file: !2671, line: 18, baseType: !250, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2670, file: !2671, line: 19, baseType: !250, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2670, file: !2671, line: 20, baseType: !1476, size: 128, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2670, file: !2671, line: 22, baseType: !393, size: 128, align: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2666, file: !2667, line: 14, baseType: !2678, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2666, file: !2667, line: 15, baseType: !2680, size: 64, offset: 384)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2681, line: 16, size: 64, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2682 = !{!2683}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2680, file: !2681, line: 17, baseType: !1211, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2666, file: !2667, line: 16, baseType: !1476, size: 128, offset: 448)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2666, file: !2667, line: 17, baseType: !771, size: 32, offset: 576)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !624, file: !44, line: 1465, baseType: !189, size: 64, offset: 6400)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !624, file: !44, line: 1468, baseType: !443, size: 32, offset: 6464)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !624, file: !44, line: 1470, baseType: !564, size: 64, offset: 6528)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !624, file: !44, line: 1471, baseType: !564, size: 64, offset: 6592)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !624, file: !44, line: 1473, baseType: !444, size: 32, offset: 6656)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !624, file: !44, line: 1474, baseType: !2692, size: 64, offset: 6720)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !624, file: !44, line: 1477, baseType: !2695, size: 256, offset: 6784)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !2225)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !624, file: !44, line: 1478, baseType: !2697, size: 128, offset: 7040)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2698, line: 18, baseType: !2699)
!2698 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2698, line: 16, size: 128, elements: !2700)
!2700 = !{!2701}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2699, file: !2698, line: 17, baseType: !2702, size: 128)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 128, elements: !1730)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !624, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !624, file: !44, line: 1481, baseType: !2705, size: 32, offset: 7200)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !191, line: 150, baseType: !7)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !624, file: !44, line: 1487, baseType: !206, size: 192, offset: 7232)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !624, file: !44, line: 1493, baseType: !244, size: 64, offset: 7424)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !624, file: !44, line: 1495, baseType: !2709, size: 64, offset: 7488)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2711)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !408, line: 135, size: 1024, align: 512, elements: !2712)
!2712 = !{!2713, !2717, !2718, !2725, !2731, !2735, !2739, !2743, !2744, !2748, !2752, !2757, !2761}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2711, file: !408, line: 136, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!250, !410, !7}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2711, file: !408, line: 137, baseType: !2714, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2711, file: !408, line: 138, baseType: !2719, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!250, !2722, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2711, file: !408, line: 139, baseType: !2726, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!250, !2722, !7, !244, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2711, file: !408, line: 141, baseType: !2732, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!250, !2722}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2711, file: !408, line: 142, baseType: !2736, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!250, !410}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2711, file: !408, line: 143, baseType: !2740, size: 64, offset: 384)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{null, !410}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2711, file: !408, line: 144, baseType: !2740, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2711, file: !408, line: 145, baseType: !2745, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !410, !455}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2711, file: !408, line: 146, baseType: !2749, size: 64, offset: 576)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!304, !410, !304, !250}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2711, file: !408, line: 147, baseType: !2753, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!406, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2711, file: !408, line: 148, baseType: !2758, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!250, !573, !516}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2711, file: !408, line: 149, baseType: !2762, size: 64, offset: 768)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!410, !410, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !624, file: !44, line: 1500, baseType: !250, size: 32, offset: 7552)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !624, file: !44, line: 1502, baseType: !2769, size: 448, offset: 7616)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2413, line: 60, size: 448, elements: !2770)
!2770 = !{!2771, !2776, !2777, !2778, !2779, !2780, !2781}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2769, file: !2413, line: 61, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!192, !2775, !2411}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2769, file: !2413, line: 63, baseType: !2772, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2769, file: !2413, line: 66, baseType: !142, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2769, file: !2413, line: 67, baseType: !250, size: 32, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2769, file: !2413, line: 68, baseType: !7, size: 32, offset: 224)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2769, file: !2413, line: 71, baseType: !196, size: 128, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2769, file: !2413, line: 77, baseType: !2782, size: 64, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !624, file: !44, line: 1505, baseType: !210, size: 64, offset: 8064)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !624, file: !44, line: 1508, baseType: !210, size: 64, offset: 8128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !624, file: !44, line: 1511, baseType: !250, size: 32, offset: 8192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !624, file: !44, line: 1514, baseType: !926, size: 32, offset: 8224)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !624, file: !44, line: 1517, baseType: !2788, size: 64, offset: 8256)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !141, line: 18, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !624, file: !44, line: 1518, baseType: !659, size: 64, offset: 8320)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !624, file: !44, line: 1525, baseType: !1708, size: 64, offset: 8384)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !624, file: !44, line: 1532, baseType: !2793, size: 64, offset: 8448)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2794, line: 52, size: 64, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2793, file: !2794, line: 53, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2794, line: 40, size: 256, elements: !2799)
!2799 = !{!2800, !2801, !2806}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2798, file: !2794, line: 42, baseType: !222)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2798, file: !2794, line: 44, baseType: !2802, size: 192)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2794, line: 28, size: 192, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2802, file: !2794, line: 29, baseType: !196, size: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2802, file: !2794, line: 31, baseType: !142, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2798, file: !2794, line: 49, baseType: !142, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !624, file: !44, line: 1533, baseType: !2793, size: 64, offset: 8512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !624, file: !44, line: 1534, baseType: !393, size: 128, align: 64, offset: 8576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !624, file: !44, line: 1535, baseType: !1953, size: 256, offset: 8704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !624, file: !44, line: 1537, baseType: !206, size: 192, offset: 8960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !624, file: !44, line: 1542, baseType: !250, size: 32, offset: 9152)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !624, file: !44, line: 1545, baseType: !222, offset: 9184)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !624, file: !44, line: 1546, baseType: !196, size: 128, offset: 9216)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !624, file: !44, line: 1548, baseType: !222, offset: 9344)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !624, file: !44, line: 1549, baseType: !196, size: 128, offset: 9344)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !456, file: !44, line: 624, baseType: !758, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !456, file: !44, line: 631, baseType: !192, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !44, line: 639, baseType: !2819, size: 32, offset: 384)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !44, line: 639, size: 32, elements: !2820)
!2820 = !{!2821, !2823}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2819, file: !44, line: 640, baseType: !2822, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2819, file: !44, line: 641, baseType: !7, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !456, file: !44, line: 643, baseType: !539, size: 32, offset: 416)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !456, file: !44, line: 644, baseType: !557, size: 64, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !456, file: !44, line: 645, baseType: !560, size: 128, offset: 512)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !456, file: !44, line: 646, baseType: !560, size: 128, offset: 640)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !456, file: !44, line: 647, baseType: !560, size: 128, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !456, file: !44, line: 648, baseType: !222, offset: 896)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !456, file: !44, line: 649, baseType: !345, size: 16, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !456, file: !44, line: 650, baseType: !1347, size: 8, offset: 912)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !456, file: !44, line: 651, baseType: !1347, size: 8, offset: 920)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !456, file: !44, line: 652, baseType: !2585, size: 64, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !456, file: !44, line: 659, baseType: !192, size: 64, offset: 1024)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !456, file: !44, line: 660, baseType: !791, size: 256, offset: 1088)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !456, file: !44, line: 662, baseType: !192, size: 64, offset: 1344)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !456, file: !44, line: 663, baseType: !192, size: 64, offset: 1408)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !456, file: !44, line: 665, baseType: !663, size: 128, offset: 1472)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !456, file: !44, line: 666, baseType: !196, size: 128, offset: 1600)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !456, file: !44, line: 675, baseType: !196, size: 128, offset: 1728)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !456, file: !44, line: 676, baseType: !196, size: 128, offset: 1856)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !456, file: !44, line: 677, baseType: !196, size: 128, offset: 1984)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !44, line: 678, baseType: !2844, size: 128, offset: 2112)
!2844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !44, line: 678, size: 128, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2844, file: !44, line: 679, baseType: !659, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2844, file: !44, line: 680, baseType: !393, size: 128, align: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !456, file: !44, line: 682, baseType: !212, size: 64, offset: 2240)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !456, file: !44, line: 683, baseType: !212, size: 64, offset: 2304)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !456, file: !44, line: 684, baseType: !771, size: 32, offset: 2368)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !456, file: !44, line: 685, baseType: !771, size: 32, offset: 2400)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !456, file: !44, line: 686, baseType: !771, size: 32, offset: 2432)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !456, file: !44, line: 688, baseType: !771, size: 32, offset: 2464)
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !44, line: 690, baseType: !2855, size: 64, offset: 2496)
!2855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !44, line: 690, size: 64, elements: !2856)
!2856 = !{!2857, !3080}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2855, file: !44, line: 691, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2860)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2861)
!2861 = !{!2862, !2863, !2867, !2872, !2876, !2877, !2878, !2882, !2895, !2896, !2904, !2908, !2909, !2913, !2914, !2918, !2923, !2924, !2928, !2932, !3040, !3044, !3045, !3049, !3050, !3054, !3058, !3063, !3067, !3071, !3075, !3079}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2860, file: !44, line: 1823, baseType: !186, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2860, file: !44, line: 1824, baseType: !2864, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!557, !380, !557, !250}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2860, file: !44, line: 1825, baseType: !2868, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!335, !380, !304, !350, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2860, file: !44, line: 1826, baseType: !2873, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!335, !380, !244, !350, !2871}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2860, file: !44, line: 1827, baseType: !861, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2860, file: !44, line: 1828, baseType: !861, size: 64, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2860, file: !44, line: 1829, baseType: !2879, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!250, !864, !516}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2860, file: !44, line: 1830, baseType: !2883, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!250, !380, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2888)
!2888 = !{!2889, !2894}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2887, file: !44, line: 1777, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!250, !2886, !244, !250, !557, !447, !7}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2887, file: !44, line: 1778, baseType: !557, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2860, file: !44, line: 1831, baseType: !2883, size: 64, offset: 512)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2860, file: !44, line: 1832, baseType: !2897, size: 64, offset: 576)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!2900, !380, !2902}
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2901, line: 52, baseType: !7)
!2901 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !643, line: 27, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2860, file: !44, line: 1833, baseType: !2905, size: 64, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!142, !380, !7, !192}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2860, file: !44, line: 1834, baseType: !2905, size: 64, offset: 704)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2860, file: !44, line: 1835, baseType: !2910, size: 64, offset: 768)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!250, !380, !998}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2860, file: !44, line: 1836, baseType: !192, size: 64, offset: 832)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2860, file: !44, line: 1837, baseType: !2915, size: 64, offset: 896)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!250, !455, !380}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2860, file: !44, line: 1838, baseType: !2919, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!250, !380, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !189)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2860, file: !44, line: 1839, baseType: !2915, size: 64, offset: 1024)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2860, file: !44, line: 1840, baseType: !2925, size: 64, offset: 1088)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!250, !380, !557, !557, !250}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2860, file: !44, line: 1841, baseType: !2929, size: 64, offset: 1152)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!250, !250, !380, !250}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2860, file: !44, line: 1842, baseType: !2933, size: 64, offset: 1216)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!250, !380, !250, !2936}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2970, !2971, !2972, !2985, !3016}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2937, file: !44, line: 1063, baseType: !2936, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2937, file: !44, line: 1064, baseType: !196, size: 128, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2937, file: !44, line: 1065, baseType: !663, size: 128, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2937, file: !44, line: 1066, baseType: !196, size: 128, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2937, file: !44, line: 1069, baseType: !196, size: 128, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2937, file: !44, line: 1072, baseType: !2922, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2937, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2937, file: !44, line: 1074, baseType: !453, size: 8, offset: 672)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2937, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2937, file: !44, line: 1076, baseType: !250, size: 32, offset: 736)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2937, file: !44, line: 1077, baseType: !1476, size: 128, offset: 768)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2937, file: !44, line: 1078, baseType: !380, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2937, file: !44, line: 1079, baseType: !557, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2937, file: !44, line: 1080, baseType: !557, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2937, file: !44, line: 1082, baseType: !2954, size: 64, offset: 1088)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2956)
!2956 = !{!2957, !2965, !2966, !2967, !2968, !2969}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2955, file: !44, line: 1315, baseType: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2959, line: 20, baseType: !2960)
!2959 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2959, line: 11, elements: !2961)
!2961 = !{!2962}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2960, file: !2959, line: 12, baseType: !2963)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !234, line: 33, baseType: !2964)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 31, elements: !236)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2955, file: !44, line: 1316, baseType: !250, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2955, file: !44, line: 1317, baseType: !250, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2955, file: !44, line: 1318, baseType: !2954, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2955, file: !44, line: 1319, baseType: !380, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2955, file: !44, line: 1320, baseType: !393, size: 128, align: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2937, file: !44, line: 1084, baseType: !192, size: 64, offset: 1152)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2937, file: !44, line: 1085, baseType: !192, size: 64, offset: 1216)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2937, file: !44, line: 1087, baseType: !2973, size: 64, offset: 1280)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2975)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2976)
!2976 = !{!2977, !2981}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2975, file: !44, line: 1012, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2936, !2936}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2975, file: !44, line: 1013, baseType: !2982, size: 64, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2936}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2937, file: !44, line: 1088, baseType: !2986, size: 64, offset: 1344)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2989)
!2989 = !{!2990, !2994, !2998, !2999, !3003, !3007, !3011, !3015}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2988, file: !44, line: 1017, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!2922, !2922}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2988, file: !44, line: 1018, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !2922}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2988, file: !44, line: 1019, baseType: !2982, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2988, file: !44, line: 1020, baseType: !3000, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!250, !2936, !250}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2988, file: !44, line: 1021, baseType: !3004, size: 64, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!516, !2936}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2988, file: !44, line: 1022, baseType: !3008, size: 64, offset: 320)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!250, !2936, !250, !195}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2988, file: !44, line: 1023, baseType: !3012, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2936, !838}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2988, file: !44, line: 1024, baseType: !3004, size: 64, offset: 448)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2937, file: !44, line: 1097, baseType: !3017, size: 256, offset: 1408)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2937, file: !44, line: 1089, size: 256, elements: !3018)
!3018 = !{!3019, !3028, !3034}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3017, file: !44, line: 1090, baseType: !3020, size: 256)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3021, line: 10, size: 256, elements: !3022)
!3021 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3022 = !{!3023, !3024, !3027}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3020, file: !3021, line: 11, baseType: !443, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3020, file: !3021, line: 12, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3021, line: 5, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3020, file: !3021, line: 13, baseType: !196, size: 128, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3017, file: !44, line: 1091, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3021, line: 17, size: 64, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3029, file: !3021, line: 18, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3021, line: 16, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3017, file: !44, line: 1096, baseType: !3035, size: 192)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3017, file: !44, line: 1092, size: 192, elements: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3035, file: !44, line: 1093, baseType: !196, size: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3035, file: !44, line: 1094, baseType: !250, size: 32, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3035, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2860, file: !44, line: 1843, baseType: !3041, size: 64, offset: 1280)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!335, !380, !745, !250, !350, !2871, !250}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2860, file: !44, line: 1844, baseType: !1118, size: 64, offset: 1344)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2860, file: !44, line: 1845, baseType: !3046, size: 64, offset: 1408)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!250, !250}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2860, file: !44, line: 1846, baseType: !2933, size: 64, offset: 1472)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2860, file: !44, line: 1847, baseType: !3051, size: 64, offset: 1536)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!335, !2093, !380, !2871, !350, !7}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2860, file: !44, line: 1848, baseType: !3055, size: 64, offset: 1600)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!335, !380, !2871, !2093, !350, !7}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2860, file: !44, line: 1849, baseType: !3059, size: 64, offset: 1664)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!250, !380, !142, !3062, !838}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2860, file: !44, line: 1850, baseType: !3064, size: 64, offset: 1728)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!142, !380, !250, !557, !557}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2860, file: !44, line: 1852, baseType: !3068, size: 64, offset: 1792)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !735, !380}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2860, file: !44, line: 1856, baseType: !3072, size: 64, offset: 1856)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!335, !380, !557, !380, !557, !350, !7}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2860, file: !44, line: 1858, baseType: !3076, size: 64, offset: 1920)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!557, !380, !557, !380, !557, !557, !7}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2860, file: !44, line: 1861, baseType: !2925, size: 64, offset: 1984)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2855, file: !44, line: 692, baseType: !688, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !456, file: !44, line: 694, baseType: !3082, size: 64, offset: 2560)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3083, file: !44, line: 1101, baseType: !222)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3083, file: !44, line: 1102, baseType: !196, size: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3083, file: !44, line: 1103, baseType: !196, size: 128, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3083, file: !44, line: 1104, baseType: !196, size: 128, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !456, file: !44, line: 695, baseType: !759, size: 1216, align: 64, offset: 2624)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !456, file: !44, line: 696, baseType: !196, size: 128, offset: 3840)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !44, line: 697, baseType: !3092, size: 64, offset: 3968)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !44, line: 697, size: 64, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3099, !3100}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3092, file: !44, line: 698, baseType: !2093, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3092, file: !44, line: 699, baseType: !2610, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3092, file: !44, line: 700, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3092, file: !44, line: 701, baseType: !304, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3092, file: !44, line: 702, baseType: !7, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !456, file: !44, line: 705, baseType: !444, size: 32, offset: 4032)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !456, file: !44, line: 708, baseType: !444, size: 32, offset: 4064)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !456, file: !44, line: 709, baseType: !2692, size: 64, offset: 4096)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !456, file: !44, line: 720, baseType: !189, size: 64, offset: 4160)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !411, file: !408, line: 98, baseType: !3106, size: 256, offset: 448)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 256, elements: !2225)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !411, file: !408, line: 101, baseType: !3108, size: 32, offset: 704)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3109, line: 25, size: 32, elements: !3110)
!3109 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3110 = !{!3111}
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3108, file: !3109, line: 26, baseType: !3112, size: 32)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3108, file: !3109, line: 26, size: 32, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !3109, line: 30, baseType: !3115, size: 32)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3109, line: 30, size: 32, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3115, file: !3109, line: 31, baseType: !222)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3115, file: !3109, line: 32, baseType: !250, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !411, file: !408, line: 102, baseType: !2709, size: 64, offset: 768)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !411, file: !408, line: 103, baseType: !623, size: 64, offset: 832)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !411, file: !408, line: 104, baseType: !192, size: 64, offset: 896)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !411, file: !408, line: 105, baseType: !189, size: 64, offset: 960)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !408, line: 107, baseType: !3124, size: 128, offset: 1024)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !408, line: 107, size: 128, elements: !3125)
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3124, file: !408, line: 108, baseType: !196, size: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3124, file: !408, line: 109, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !411, file: !408, line: 111, baseType: !196, size: 128, offset: 1152)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !411, file: !408, line: 112, baseType: !196, size: 128, offset: 1280)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !411, file: !408, line: 120, baseType: !3132, size: 128, offset: 1408)
!3132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !408, line: 116, size: 128, elements: !3133)
!3133 = !{!3134, !3135, !3136}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3132, file: !408, line: 117, baseType: !663, size: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3132, file: !408, line: 118, baseType: !425, size: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3132, file: !408, line: 119, baseType: !393, size: 128, align: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !381, file: !44, line: 922, baseType: !455, size: 64, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !381, file: !44, line: 923, baseType: !2858, size: 64, offset: 320)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !381, file: !44, line: 929, baseType: !222, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !381, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !381, file: !44, line: 931, baseType: !210, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !381, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !381, file: !44, line: 933, baseType: !2705, size: 32, offset: 544)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !381, file: !44, line: 934, baseType: !206, size: 192, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !381, file: !44, line: 935, baseType: !557, size: 64, offset: 768)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !381, file: !44, line: 936, baseType: !3147, size: 192, offset: 832)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3147, file: !44, line: 886, baseType: !2958)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3147, file: !44, line: 887, baseType: !1466, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3147, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3147, file: !44, line: 889, baseType: !461, size: 32, offset: 96)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3147, file: !44, line: 889, baseType: !461, size: 32, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3147, file: !44, line: 890, baseType: !250, size: 32, offset: 160)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !381, file: !44, line: 937, baseType: !1542, size: 64, offset: 1024)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !381, file: !44, line: 938, baseType: !3157, size: 256, offset: 1088)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3157, file: !44, line: 897, baseType: !192, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3157, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3157, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3157, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3157, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3157, file: !44, line: 904, baseType: !557, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !381, file: !44, line: 940, baseType: !447, size: 64, offset: 1344)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !381, file: !44, line: 945, baseType: !189, size: 64, offset: 1408)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !381, file: !44, line: 949, baseType: !196, size: 128, offset: 1472)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !381, file: !44, line: 950, baseType: !196, size: 128, offset: 1600)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !381, file: !44, line: 952, baseType: !758, size: 64, offset: 1728)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !381, file: !44, line: 953, baseType: !926, size: 32, offset: 1792)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !381, file: !44, line: 954, baseType: !926, size: 32, offset: 1824)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !371, file: !329, line: 174, baseType: !377, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !371, file: !329, line: 176, baseType: !3174, size: 64, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!250, !380, !271, !370, !998}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !359, file: !329, line: 90, baseType: !354, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !359, file: !329, line: 91, baseType: !3179, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !319, file: !266, line: 143, baseType: !3181, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!3184, !271}
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3187)
!3187 = !{!3188, !3189, !3193, !3197, !3203, !3207}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3186, file: !61, line: 40, baseType: !60, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3186, file: !61, line: 41, baseType: !3190, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!516}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3186, file: !61, line: 42, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!189}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3186, file: !61, line: 43, baseType: !3198, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!2122, !3201}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3186, file: !61, line: 44, baseType: !3204, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!2122}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3186, file: !61, line: 45, baseType: !494, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !319, file: !266, line: 144, baseType: !3209, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!2122, !271}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !319, file: !266, line: 145, baseType: !3213, size: 64, offset: 384)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !271, !3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !265, file: !266, line: 70, baseType: !3219, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !643, line: 123, size: 1024, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3350, !3351, !3352, !3353, !3354}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3220, file: !643, line: 124, baseType: !771, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3220, file: !643, line: 125, baseType: !771, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3220, file: !643, line: 135, baseType: !3219, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3220, file: !643, line: 136, baseType: !244, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3220, file: !643, line: 138, baseType: !784, size: 192, align: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3220, file: !643, line: 140, baseType: !2122, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3220, file: !643, line: 141, baseType: !7, size: 32, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, scope: !3220, file: !643, line: 142, baseType: !3230, size: 256, offset: 512)
!3230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3220, file: !643, line: 142, size: 256, elements: !3231)
!3231 = !{!3232, !3278, !3282}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3230, file: !643, line: 143, baseType: !3233, size: 192)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !643, line: 91, size: 192, elements: !3234)
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3233, file: !643, line: 92, baseType: !192, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3233, file: !643, line: 94, baseType: !780, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3233, file: !643, line: 100, baseType: !3238, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !643, line: 180, size: 704, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3250, !3251, !3252, !3276, !3277}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3239, file: !643, line: 182, baseType: !3219, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3239, file: !643, line: 183, baseType: !7, size: 32, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3239, file: !643, line: 186, baseType: !3244, size: 192, offset: 128)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3245, line: 19, size: 192, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3244, file: !3245, line: 20, baseType: !763, size: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3244, file: !3245, line: 21, baseType: !7, size: 32, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3244, file: !3245, line: 22, baseType: !7, size: 32, offset: 160)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3239, file: !643, line: 187, baseType: !443, size: 32, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3239, file: !643, line: 188, baseType: !443, size: 32, offset: 352)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3239, file: !643, line: 189, baseType: !3253, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !643, line: 168, size: 320, elements: !3255)
!3255 = !{!3256, !3260, !3264, !3268, !3272}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3254, file: !643, line: 169, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!250, !735, !3238}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3254, file: !643, line: 171, baseType: !3261, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!250, !3219, !244, !344}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3254, file: !643, line: 173, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!250, !3219}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3254, file: !643, line: 174, baseType: !3269, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!250, !3219, !3219, !244}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3254, file: !643, line: 176, baseType: !3273, size: 64, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!250, !735, !3219, !3238}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3239, file: !643, line: 192, baseType: !196, size: 128, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3239, file: !643, line: 194, baseType: !1476, size: 128, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3230, file: !643, line: 144, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !643, line: 103, size: 64, elements: !3280)
!3280 = !{!3281}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3279, file: !643, line: 104, baseType: !3219, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3230, file: !643, line: 145, baseType: !3283, size: 256)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !643, line: 107, size: 256, elements: !3284)
!3284 = !{!3285, !3345, !3348, !3349}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3283, file: !643, line: 108, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3288)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !643, line: 217, size: 768, elements: !3289)
!3289 = !{!3290, !3310, !3314, !3318, !3322, !3326, !3330, !3334, !3335, !3336, !3337, !3341}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3288, file: !643, line: 222, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!250, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !643, line: 197, size: 1088, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3295, file: !643, line: 199, baseType: !3219, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3295, file: !643, line: 200, baseType: !380, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3295, file: !643, line: 201, baseType: !735, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3295, file: !643, line: 202, baseType: !189, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3295, file: !643, line: 205, baseType: !206, size: 192, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3295, file: !643, line: 206, baseType: !206, size: 192, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3295, file: !643, line: 207, baseType: !250, size: 32, offset: 640)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3295, file: !643, line: 208, baseType: !196, size: 128, offset: 704)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3295, file: !643, line: 209, baseType: !304, size: 64, offset: 832)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3295, file: !643, line: 211, baseType: !350, size: 64, offset: 896)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3295, file: !643, line: 212, baseType: !516, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3295, file: !643, line: 213, baseType: !516, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3295, file: !643, line: 214, baseType: !1026, size: 64, offset: 1024)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3288, file: !643, line: 223, baseType: !3311, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !3294}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3288, file: !643, line: 236, baseType: !3315, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!250, !735, !189}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3288, file: !643, line: 238, baseType: !3319, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!189, !735, !2871}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3288, file: !643, line: 239, baseType: !3323, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!189, !735, !189, !2871}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3288, file: !643, line: 240, baseType: !3327, size: 64, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !735, !189}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3288, file: !643, line: 242, baseType: !3331, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!335, !3294, !304, !350, !557}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3288, file: !643, line: 252, baseType: !350, size: 64, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3288, file: !643, line: 259, baseType: !516, size: 8, offset: 512)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3288, file: !643, line: 260, baseType: !3331, size: 64, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3288, file: !643, line: 263, baseType: !3338, size: 64, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!2900, !3294, !2902}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3288, file: !643, line: 266, baseType: !3342, size: 64, offset: 704)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!250, !3294, !998}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3283, file: !643, line: 109, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !643, line: 31, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3283, file: !643, line: 110, baseType: !557, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3283, file: !643, line: 111, baseType: !3219, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3220, file: !643, line: 148, baseType: !189, size: 64, offset: 768)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3220, file: !643, line: 154, baseType: !447, size: 64, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3220, file: !643, line: 156, baseType: !345, size: 16, offset: 896)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3220, file: !643, line: 157, baseType: !344, size: 16, offset: 912)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3220, file: !643, line: 158, baseType: !3355, size: 64, offset: 960)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !643, line: 32, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !265, file: !266, line: 71, baseType: !3358, size: 32, offset: 448)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3359, line: 19, size: 32, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !{!3361}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3358, file: !3359, line: 20, baseType: !1225, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !265, file: !266, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !265, file: !266, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !265, file: !266, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !265, file: !266, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !265, file: !266, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !262, file: !73, line: 463, baseType: !3368, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !262, file: !73, line: 465, baseType: !3370, size: 64, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !262, file: !73, line: 467, baseType: !244, size: 64, offset: 640)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !262, file: !73, line: 468, baseType: !3374, size: 64, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3376)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3377)
!3377 = !{!3378, !3379, !3380, !3384, !3389, !3393}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3376, file: !73, line: 88, baseType: !244, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3376, file: !73, line: 89, baseType: !356, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3376, file: !73, line: 90, baseType: !3381, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!250, !3368, !299}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3376, file: !73, line: 91, baseType: !3385, size: 64, offset: 192)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!304, !3368, !3388, !3216, !3217}
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3376, file: !73, line: 93, baseType: !3390, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !3368}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3376, file: !73, line: 95, baseType: !3394, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3396)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3397)
!3397 = !{!3398, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3396, file: !80, line: 279, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!250, !3368}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3396, file: !80, line: 280, baseType: !3390, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3396, file: !80, line: 281, baseType: !3399, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3396, file: !80, line: 282, baseType: !3399, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3396, file: !80, line: 283, baseType: !3399, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3396, file: !80, line: 284, baseType: !3399, size: 64, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3396, file: !80, line: 285, baseType: !3399, size: 64, offset: 384)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3396, file: !80, line: 286, baseType: !3399, size: 64, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3396, file: !80, line: 287, baseType: !3399, size: 64, offset: 512)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3396, file: !80, line: 288, baseType: !3399, size: 64, offset: 576)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3396, file: !80, line: 289, baseType: !3399, size: 64, offset: 640)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3396, file: !80, line: 290, baseType: !3399, size: 64, offset: 704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3396, file: !80, line: 291, baseType: !3399, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3396, file: !80, line: 292, baseType: !3399, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3396, file: !80, line: 293, baseType: !3399, size: 64, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3396, file: !80, line: 294, baseType: !3399, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3396, file: !80, line: 295, baseType: !3399, size: 64, offset: 1024)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3396, file: !80, line: 296, baseType: !3399, size: 64, offset: 1088)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3396, file: !80, line: 297, baseType: !3399, size: 64, offset: 1152)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3396, file: !80, line: 298, baseType: !3399, size: 64, offset: 1216)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3396, file: !80, line: 299, baseType: !3399, size: 64, offset: 1280)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3396, file: !80, line: 300, baseType: !3399, size: 64, offset: 1344)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3396, file: !80, line: 301, baseType: !3399, size: 64, offset: 1408)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !262, file: !73, line: 470, baseType: !3425, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3427, line: 82, size: 1408, elements: !3428)
!3427 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3510, !3513, !3514}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3426, file: !3427, line: 83, baseType: !244, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3426, file: !3427, line: 84, baseType: !244, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3426, file: !3427, line: 85, baseType: !3368, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3426, file: !3427, line: 86, baseType: !356, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3426, file: !3427, line: 87, baseType: !356, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3426, file: !3427, line: 88, baseType: !356, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3426, file: !3427, line: 90, baseType: !3436, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!250, !3368, !3439}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448, !3461, !3474, !3475, !3476, !3477, !3478, !3486, !3487, !3488, !3489, !3490, !3491}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3440, file: !67, line: 96, baseType: !244, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3440, file: !67, line: 97, baseType: !3425, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3440, file: !67, line: 99, baseType: !186, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3440, file: !67, line: 100, baseType: !244, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3440, file: !67, line: 102, baseType: !516, size: 8, offset: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3440, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3440, file: !67, line: 105, baseType: !3449, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3452, line: 262, size: 1600, elements: !3453)
!3452 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3453 = !{!3454, !3455, !3456, !3460}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !3452, line: 263, baseType: !2695, size: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3451, file: !3452, line: 264, baseType: !2695, size: 256, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3451, file: !3452, line: 265, baseType: !3457, size: 1024, offset: 512)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 1024, elements: !3458)
!3458 = !{!3459}
!3459 = !DISubrange(count: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3451, file: !3452, line: 266, baseType: !2122, size: 64, offset: 1536)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3440, file: !67, line: 106, baseType: !3462, size: 64, offset: 384)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3464)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3452, line: 210, size: 256, elements: !3465)
!3465 = !{!3466, !3470, !3472, !3473}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3464, file: !3452, line: 211, baseType: !3467, size: 72)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 72, elements: !3468)
!3468 = !{!3469}
!3469 = !DISubrange(count: 9)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3464, file: !3452, line: 212, baseType: !3471, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3452, line: 14, baseType: !192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3464, file: !3452, line: 213, baseType: !444, size: 32, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3464, file: !3452, line: 214, baseType: !444, size: 32, offset: 224)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3440, file: !67, line: 108, baseType: !3399, size: 64, offset: 448)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3440, file: !67, line: 109, baseType: !3390, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3440, file: !67, line: 110, baseType: !3399, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3440, file: !67, line: 111, baseType: !3390, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3440, file: !67, line: 112, baseType: !3479, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!250, !3368, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3484)
!3484 = !{!3485}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3483, file: !80, line: 51, baseType: !250, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3440, file: !67, line: 113, baseType: !3399, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3440, file: !67, line: 114, baseType: !356, size: 64, offset: 832)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3440, file: !67, line: 115, baseType: !356, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3440, file: !67, line: 117, baseType: !3394, size: 64, offset: 960)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3440, file: !67, line: 118, baseType: !3390, size: 64, offset: 1024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3440, file: !67, line: 120, baseType: !3492, size: 64, offset: 1088)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3426, file: !3427, line: 91, baseType: !3381, size: 64, offset: 448)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3426, file: !3427, line: 92, baseType: !3399, size: 64, offset: 512)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3426, file: !3427, line: 93, baseType: !3390, size: 64, offset: 576)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3426, file: !3427, line: 94, baseType: !3399, size: 64, offset: 640)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3426, file: !3427, line: 95, baseType: !3390, size: 64, offset: 704)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3426, file: !3427, line: 97, baseType: !3399, size: 64, offset: 768)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3426, file: !3427, line: 98, baseType: !3399, size: 64, offset: 832)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3426, file: !3427, line: 100, baseType: !3479, size: 64, offset: 896)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3426, file: !3427, line: 101, baseType: !3399, size: 64, offset: 960)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3426, file: !3427, line: 103, baseType: !3399, size: 64, offset: 1024)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3426, file: !3427, line: 105, baseType: !3399, size: 64, offset: 1088)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3426, file: !3427, line: 107, baseType: !3394, size: 64, offset: 1152)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3426, file: !3427, line: 109, baseType: !3507, size: 64, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3427, line: 109, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3426, file: !3427, line: 111, baseType: !3511, size: 64, offset: 1280)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3427, line: 111, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3426, file: !3427, line: 112, baseType: !669, offset: 1344)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3426, file: !3427, line: 114, baseType: !516, size: 8, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !262, file: !73, line: 471, baseType: !3439, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !262, file: !73, line: 473, baseType: !189, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !262, file: !73, line: 475, baseType: !189, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !262, file: !73, line: 480, baseType: !206, size: 192, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !262, file: !73, line: 484, baseType: !3520, size: 576, offset: 1216)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3527}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3520, file: !73, line: 362, baseType: !196, size: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3520, file: !73, line: 363, baseType: !196, size: 128, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3520, file: !73, line: 364, baseType: !196, size: 128, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3520, file: !73, line: 365, baseType: !196, size: 128, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3520, file: !73, line: 366, baseType: !516, size: 8, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3520, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !262, file: !73, line: 485, baseType: !3529, size: 2304, offset: 1792)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3626, !3630}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3529, file: !80, line: 566, baseType: !3482, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3529, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3529, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3529, file: !80, line: 569, baseType: !516, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3529, file: !80, line: 570, baseType: !516, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3529, file: !80, line: 571, baseType: !516, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3529, file: !80, line: 572, baseType: !516, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3529, file: !80, line: 573, baseType: !516, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3529, file: !80, line: 574, baseType: !516, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3529, file: !80, line: 575, baseType: !516, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3529, file: !80, line: 576, baseType: !516, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3529, file: !80, line: 577, baseType: !443, size: 32, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3529, file: !80, line: 578, baseType: !222, offset: 96)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3529, file: !80, line: 580, baseType: !196, size: 128, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3529, file: !80, line: 581, baseType: !1497, size: 192, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3529, file: !80, line: 582, baseType: !3547, size: 64, offset: 448)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3549, line: 43, size: 1472, elements: !3550)
!3549 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3558, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3548, file: !3549, line: 44, baseType: !244, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3548, file: !3549, line: 45, baseType: !250, size: 32, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3548, file: !3549, line: 46, baseType: !196, size: 128, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3548, file: !3549, line: 47, baseType: !222, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3548, file: !3549, line: 48, baseType: !3556, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3548, file: !3549, line: 49, baseType: !3559, size: 320, offset: 320)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3560, line: 11, size: 320, elements: !3561)
!3560 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3561 = !{!3562, !3563, !3564, !3569}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3559, file: !3560, line: 16, baseType: !663, size: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3559, file: !3560, line: 17, baseType: !192, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3559, file: !3560, line: 18, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3559, file: !3560, line: 19, baseType: !443, size: 32, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3548, file: !3549, line: 50, baseType: !192, size: 64, offset: 640)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3548, file: !3549, line: 51, baseType: !1295, size: 64, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3548, file: !3549, line: 52, baseType: !1295, size: 64, offset: 768)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3548, file: !3549, line: 53, baseType: !1295, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3548, file: !3549, line: 54, baseType: !1295, size: 64, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3548, file: !3549, line: 55, baseType: !1295, size: 64, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3548, file: !3549, line: 56, baseType: !192, size: 64, offset: 1024)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3548, file: !3549, line: 57, baseType: !192, size: 64, offset: 1088)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3548, file: !3549, line: 58, baseType: !192, size: 64, offset: 1152)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3548, file: !3549, line: 59, baseType: !192, size: 64, offset: 1216)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3548, file: !3549, line: 60, baseType: !192, size: 64, offset: 1280)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3548, file: !3549, line: 61, baseType: !3368, size: 64, offset: 1344)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3548, file: !3549, line: 62, baseType: !516, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3548, file: !3549, line: 63, baseType: !516, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3529, file: !80, line: 583, baseType: !516, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3529, file: !80, line: 584, baseType: !516, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3529, file: !80, line: 585, baseType: !516, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3529, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3529, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3529, file: !80, line: 592, baseType: !1287, size: 512, offset: 576)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3529, file: !80, line: 593, baseType: !447, size: 64, offset: 1088)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3529, file: !80, line: 594, baseType: !1953, size: 256, offset: 1152)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3529, file: !80, line: 595, baseType: !1476, size: 128, offset: 1408)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3529, file: !80, line: 596, baseType: !3556, size: 64, offset: 1536)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3529, file: !80, line: 597, baseType: !771, size: 32, offset: 1600)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3529, file: !80, line: 598, baseType: !771, size: 32, offset: 1632)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3529, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3529, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3529, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3529, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3529, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3529, file: !80, line: 604, baseType: !516, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3529, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3529, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3529, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3529, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3529, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3529, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3529, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3529, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3529, file: !80, line: 613, baseType: !250, size: 32, offset: 1792)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3529, file: !80, line: 614, baseType: !250, size: 32, offset: 1824)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3529, file: !80, line: 615, baseType: !447, size: 64, offset: 1856)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3529, file: !80, line: 616, baseType: !447, size: 64, offset: 1920)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3529, file: !80, line: 617, baseType: !447, size: 64, offset: 1984)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3529, file: !80, line: 618, baseType: !447, size: 64, offset: 2048)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3529, file: !80, line: 620, baseType: !3617, size: 64, offset: 2112)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3618, file: !80, line: 537, baseType: !222)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3618, file: !80, line: 538, baseType: !7, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3618, file: !80, line: 540, baseType: !196, size: 128, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3618, file: !80, line: 543, baseType: !3624, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3529, file: !80, line: 621, baseType: !3627, size: 64, offset: 2176)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3368, !1439}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3529, file: !80, line: 622, baseType: !3631, size: 64, offset: 2240)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !262, file: !73, line: 486, baseType: !3634, size: 64, offset: 4096)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3643, !3644, !3645}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3635, file: !80, line: 643, baseType: !3396, size: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3635, file: !80, line: 644, baseType: !3399, size: 64, offset: 1472)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3635, file: !80, line: 645, baseType: !3640, size: 64, offset: 1536)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{null, !3368, !516}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3635, file: !80, line: 646, baseType: !3399, size: 64, offset: 1600)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3635, file: !80, line: 647, baseType: !3390, size: 64, offset: 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3635, file: !80, line: 648, baseType: !3390, size: 64, offset: 1728)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !262, file: !73, line: 493, baseType: !3647, size: 64, offset: 4160)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3983, !3984, !3985, !3986, !3987, !3988, !4114, !4115, !4116, !4117, !4118, !4119, !4120}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3648, file: !94, line: 163, baseType: !196, size: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3648, file: !94, line: 164, baseType: !244, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3648, file: !94, line: 165, baseType: !3653, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3655)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3656)
!3656 = !{!3657, !3775, !3786, !3791, !3795, !3802, !3806, !3810, !3975, !3979}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3655, file: !94, line: 106, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!250, !3647, !3661, !93}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3663, line: 51, size: 1344, elements: !3664)
!3663 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3664 = !{!3665, !3666, !3668, !3669, !3759, !3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3662, file: !3663, line: 52, baseType: !244, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3662, file: !3663, line: 53, baseType: !3667, size: 32, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3663, line: 28, baseType: !443)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3662, file: !3663, line: 54, baseType: !244, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3662, file: !3663, line: 55, baseType: !3670, size: 192, offset: 192)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3671, line: 17, size: 192, elements: !3672)
!3671 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3672 = !{!3673, !3675, !3758}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3670, file: !3671, line: 18, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3670, file: !3671, line: 19, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3678)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3671, line: 110, size: 1152, elements: !3679)
!3679 = !{!3680, !3684, !3688, !3694, !3700, !3704, !3708, !3713, !3717, !3718, !3722, !3726, !3730, !3741, !3742, !3743, !3744, !3754}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3678, file: !3671, line: 111, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!3674, !3674}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3678, file: !3671, line: 112, baseType: !3685, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !3674}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3678, file: !3671, line: 113, baseType: !3689, size: 64, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!516, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3678, file: !3671, line: 114, baseType: !3695, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!2122, !3692, !3698}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3678, file: !3671, line: 116, baseType: !3701, size: 64, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!516, !3692, !244}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3678, file: !3671, line: 118, baseType: !3705, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!250, !3692, !244, !7, !189, !350}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3678, file: !3671, line: 123, baseType: !3709, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!250, !3692, !244, !3712, !350}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3678, file: !3671, line: 126, baseType: !3714, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!244, !3692}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3678, file: !3671, line: 127, baseType: !3714, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3678, file: !3671, line: 128, baseType: !3719, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!3674, !3692}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3678, file: !3671, line: 130, baseType: !3723, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!3674, !3692, !3674}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3678, file: !3671, line: 133, baseType: !3727, size: 64, offset: 704)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!3674, !3692, !244}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3678, file: !3671, line: 135, baseType: !3731, size: 64, offset: 768)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!250, !3692, !244, !244, !7, !7, !3734}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3671, line: 43, size: 640, elements: !3736)
!3736 = !{!3737, !3738, !3739}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3735, file: !3671, line: 44, baseType: !3674, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3735, file: !3671, line: 45, baseType: !7, size: 32, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3735, file: !3671, line: 46, baseType: !3740, size: 512, offset: 128)
!3740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 512, elements: !1325)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3678, file: !3671, line: 140, baseType: !3723, size: 64, offset: 832)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3678, file: !3671, line: 143, baseType: !3719, size: 64, offset: 896)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3678, file: !3671, line: 145, baseType: !3681, size: 64, offset: 960)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3678, file: !3671, line: 146, baseType: !3745, size: 64, offset: 1024)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!250, !3692, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3671, line: 29, size: 128, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3749, file: !3671, line: 30, baseType: !7, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3749, file: !3671, line: 31, baseType: !7, size: 32, offset: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3749, file: !3671, line: 32, baseType: !3692, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3678, file: !3671, line: 148, baseType: !3755, size: 64, offset: 1088)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!250, !3692, !3368}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3670, file: !3671, line: 20, baseType: !3368, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3662, file: !3663, line: 57, baseType: !3760, size: 64, offset: 384)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3663, line: 31, size: 704, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3766, !3767}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3761, file: !3663, line: 32, baseType: !304, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3761, file: !3663, line: 33, baseType: !250, size: 32, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3761, file: !3663, line: 34, baseType: !189, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3761, file: !3663, line: 35, baseType: !3760, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3761, file: !3663, line: 43, baseType: !371, size: 448, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3662, file: !3663, line: 58, baseType: !3760, size: 64, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3662, file: !3663, line: 59, baseType: !3661, size: 64, offset: 512)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3662, file: !3663, line: 60, baseType: !3661, size: 64, offset: 576)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3662, file: !3663, line: 61, baseType: !3661, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3662, file: !3663, line: 63, baseType: !265, size: 512, offset: 704)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3662, file: !3663, line: 65, baseType: !192, size: 64, offset: 1216)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3662, file: !3663, line: 66, baseType: !189, size: 64, offset: 1280)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3655, file: !94, line: 108, baseType: !3776, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!250, !3647, !3779, !93}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3780, file: !94, line: 64, baseType: !3674, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3780, file: !94, line: 65, baseType: !250, size: 32, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3780, file: !94, line: 66, baseType: !3785, size: 512, offset: 96)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 512, elements: !1730)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3655, file: !94, line: 110, baseType: !3787, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!250, !3647, !7, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !191, line: 164, baseType: !192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3655, file: !94, line: 111, baseType: !3792, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{null, !3647, !7}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3655, file: !94, line: 112, baseType: !3796, size: 64, offset: 256)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!250, !3647, !3661, !3799, !7, !3801, !2678}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3655, file: !94, line: 117, baseType: !3803, size: 64, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!250, !3647, !7, !7, !189}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3655, file: !94, line: 119, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3647, !7, !7}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3655, file: !94, line: 121, baseType: !3811, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!250, !3647, !3814, !516}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3820, !3893, !3972, !3973, !3974}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3815, file: !115, line: 176, baseType: !443, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3815, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3815, file: !115, line: 178, baseType: !192, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3815, file: !115, line: 179, baseType: !3821, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3890}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3822, file: !115, line: 146, baseType: !7, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3822, file: !115, line: 150, baseType: !189, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3822, file: !115, line: 151, baseType: !3827, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3829, line: 85, size: 768, elements: !3830)
!3829 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3841, !3847, !3851, !3852}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3828, file: !3829, line: 87, baseType: !196, size: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3828, file: !3829, line: 88, baseType: !7, size: 32, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !3828, file: !3829, line: 89, baseType: !7, size: 32, offset: 160)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3828, file: !3829, line: 90, baseType: !3368, size: 64, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3828, file: !3829, line: 91, baseType: !3836, size: 96, offset: 256)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3829, line: 8, size: 96, elements: !3837)
!3837 = !{!3838, !3839, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !3836, file: !3829, line: 9, baseType: !443, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !3836, file: !3829, line: 10, baseType: !443, size: 32, offset: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3836, file: !3829, line: 11, baseType: !443, size: 32, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3828, file: !3829, line: 92, baseType: !3842, size: 64, offset: 384)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !108, line: 308, size: 128, elements: !3844)
!3844 = !{!3845, !3846}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3843, file: !108, line: 309, baseType: !1362, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3843, file: !108, line: 310, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !3828, file: !3829, line: 97, baseType: !3848, size: 64, offset: 448)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !3827, !189}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !3828, file: !3829, line: 98, baseType: !189, size: 64, offset: 512)
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !3828, file: !3829, line: 100, baseType: !3853, size: 192, offset: 576)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3828, file: !3829, line: 100, size: 192, elements: !3854)
!3854 = !{!3855, !3875, !3882, !3886}
!3855 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !3829, line: 102, baseType: !3856, size: 192)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !3829, line: 102, size: 192, elements: !3857)
!3857 = !{!3858, !3859, !3870}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !3856, file: !3829, line: 103, baseType: !443, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !3856, file: !3829, line: 113, baseType: !3860, size: 64, offset: 32)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !3829, line: 104, size: 64, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !3860, file: !3829, line: 105, baseType: !1347, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !3860, file: !3829, line: 106, baseType: !1347, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !3860, file: !3829, line: 107, baseType: !1347, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !3860, file: !3829, line: 108, baseType: !1347, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !3860, file: !3829, line: 109, baseType: !1347, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !3860, file: !3829, line: 110, baseType: !1347, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !3860, file: !3829, line: 111, baseType: !876, size: 16, offset: 16)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !3860, file: !3829, line: 112, baseType: !7, size: 32, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, scope: !3856, file: !3829, line: 114, baseType: !3871, size: 64, offset: 128)
!3871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3856, file: !3829, line: 114, size: 64, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !3871, file: !3829, line: 115, baseType: !1347, size: 8)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !3871, file: !3829, line: 116, baseType: !189, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !3853, file: !3829, line: 127, baseType: !3876, size: 128)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !3829, line: 37, size: 128, elements: !3877)
!3877 = !{!3878, !3881}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !3876, file: !3829, line: 38, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3829, line: 19, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3876, file: !3829, line: 39, baseType: !876, size: 16, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !3853, file: !3829, line: 128, baseType: !3883, size: 16)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !3829, line: 46, size: 16, elements: !3884)
!3884 = !{!3885}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3883, file: !3829, line: 47, baseType: !876, size: 16)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !3853, file: !3829, line: 129, baseType: !3887, size: 16)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !3829, line: 54, size: 16, elements: !3888)
!3888 = !{!3889}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !3887, file: !3829, line: 55, baseType: !876, size: 16)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3822, file: !115, line: 152, baseType: !3891, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1361, line: 756, baseType: !3892)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1362, size: 64, elements: !1366)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3815, file: !115, line: 180, baseType: !3894, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3903, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3920, !3924, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3941, !3942, !3943, !3948, !3949, !3953, !3957, !3961, !3965, !3969, !3970, !3971}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3895, file: !115, line: 504, baseType: !3368, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3895, file: !115, line: 505, baseType: !244, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3895, file: !115, line: 506, baseType: !3900, size: 64, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!7, !3814}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3895, file: !115, line: 507, baseType: !3904, size: 64, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3814}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3895, file: !115, line: 508, baseType: !3904, size: 64, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3895, file: !115, line: 509, baseType: !3904, size: 64, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3895, file: !115, line: 511, baseType: !3904, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3895, file: !115, line: 512, baseType: !3904, size: 64, offset: 448)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3895, file: !115, line: 513, baseType: !3904, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3895, file: !115, line: 514, baseType: !3904, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3895, file: !115, line: 515, baseType: !3904, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3895, file: !115, line: 517, baseType: !3915, size: 64, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!250, !3814, !3918, !516}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3895, file: !115, line: 518, baseType: !3921, size: 64, offset: 768)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!250, !3814}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3895, file: !115, line: 519, baseType: !3925, size: 64, offset: 832)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!250, !3814, !7}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3895, file: !115, line: 520, baseType: !3925, size: 64, offset: 896)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3895, file: !115, line: 522, baseType: !3904, size: 64, offset: 960)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3895, file: !115, line: 523, baseType: !3904, size: 64, offset: 1024)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3895, file: !115, line: 525, baseType: !3904, size: 64, offset: 1088)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3895, file: !115, line: 526, baseType: !3904, size: 64, offset: 1152)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3895, file: !115, line: 528, baseType: !3904, size: 64, offset: 1216)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3895, file: !115, line: 529, baseType: !3904, size: 64, offset: 1280)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3895, file: !115, line: 530, baseType: !3904, size: 64, offset: 1344)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3895, file: !115, line: 532, baseType: !3904, size: 64, offset: 1408)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3895, file: !115, line: 534, baseType: !3938, size: 64, offset: 1472)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3814, !735}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3895, file: !115, line: 535, baseType: !3921, size: 64, offset: 1536)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3895, file: !115, line: 536, baseType: !3904, size: 64, offset: 1600)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3895, file: !115, line: 538, baseType: !3944, size: 64, offset: 1664)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3814, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3895, file: !115, line: 539, baseType: !3944, size: 64, offset: 1728)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3895, file: !115, line: 541, baseType: !3950, size: 64, offset: 1792)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!250, !3814, !107, !908}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3895, file: !115, line: 542, baseType: !3954, size: 64, offset: 1856)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!250, !3814, !107, !516}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3895, file: !115, line: 544, baseType: !3958, size: 64, offset: 1920)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!250, !3814, !189}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3895, file: !115, line: 546, baseType: !3962, size: 64, offset: 1984)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !3814, !7}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3895, file: !115, line: 547, baseType: !3966, size: 64, offset: 2048)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3814, !3918}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3895, file: !115, line: 549, baseType: !3921, size: 64, offset: 2112)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3895, file: !115, line: 550, baseType: !3904, size: 64, offset: 2176)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !115, line: 552, baseType: !192, size: 64, offset: 2240)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3815, file: !115, line: 181, baseType: !3647, size: 64, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3815, file: !115, line: 183, baseType: !3814, size: 64, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3815, file: !115, line: 185, baseType: !189, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3655, file: !94, line: 122, baseType: !3976, size: 64, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !3647, !3814}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3655, file: !94, line: 123, baseType: !3980, size: 64, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!250, !3647, !3779, !3801, !2678}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3648, file: !94, line: 166, baseType: !189, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3648, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3648, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3648, file: !94, line: 171, baseType: !3674, size: 64, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3648, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3648, file: !94, line: 173, baseType: !3989, size: 64, offset: 512)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !3991)
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3997}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !3990, file: !115, line: 1102, baseType: !7, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !3990, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !3990, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !3990, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !3990, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3990, file: !115, line: 1107, baseType: !3998, offset: 192)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3999, elements: !2326)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4008, !4012, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4000, file: !115, line: 1052, baseType: !797)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4000, file: !115, line: 1053, baseType: !189, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4000, file: !115, line: 1054, baseType: !4005, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!443, !189}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4000, file: !115, line: 1055, baseType: !4009, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !443, !189}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4000, file: !115, line: 1056, baseType: !4013, size: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !3999}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4000, file: !115, line: 1057, baseType: !4013, size: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4000, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4000, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4000, file: !115, line: 1060, baseType: !443, size: 32, offset: 384)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4000, file: !115, line: 1061, baseType: !443, size: 32, offset: 416)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4000, file: !115, line: 1062, baseType: !443, size: 32, offset: 448)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4000, file: !115, line: 1063, baseType: !443, size: 32, offset: 480)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4000, file: !115, line: 1064, baseType: !443, size: 32, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4000, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4000, file: !115, line: 1066, baseType: !189, size: 64, offset: 576)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4000, file: !115, line: 1067, baseType: !192, size: 64, offset: 640)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4000, file: !115, line: 1068, baseType: !192, size: 64, offset: 704)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4000, file: !115, line: 1069, baseType: !3647, size: 64, offset: 768)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4000, file: !115, line: 1070, baseType: !196, size: 128, offset: 832)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4000, file: !115, line: 1071, baseType: !4031, offset: 960)
!4031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4032, elements: !2326)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !4033)
!4033 = !{!4034, !4035, !4045, !4111, !4112, !4113}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4032, file: !115, line: 1010, baseType: !3895, size: 2304)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4032, file: !115, line: 1011, baseType: !4036, size: 448, offset: 2304)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4036, file: !115, line: 987, baseType: !192, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4036, file: !115, line: 988, baseType: !192, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4036, file: !115, line: 989, baseType: !192, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4036, file: !115, line: 990, baseType: !192, size: 64, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4036, file: !115, line: 991, baseType: !192, size: 64, offset: 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4036, file: !115, line: 992, baseType: !192, size: 64, offset: 320)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4036, file: !115, line: 993, baseType: !192, size: 64, offset: 384)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4032, file: !115, line: 1012, baseType: !4046, size: 64, offset: 2752)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4047, line: 12, baseType: !4048)
!4047 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !4051}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4053, line: 55, size: 2880, elements: !4054)
!4053 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4054 = !{!4055, !4056, !4057, !4058, !4059, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4052, file: !4053, line: 56, baseType: !3822, size: 256)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4052, file: !4053, line: 57, baseType: !3815, size: 448, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4052, file: !4053, line: 58, baseType: !2678, size: 64, offset: 704)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4052, file: !4053, line: 59, baseType: !4046, size: 64, offset: 768)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4052, file: !4053, line: 60, baseType: !4060, size: 64, offset: 832)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !4062)
!4062 = !{!4063, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4061, file: !108, line: 111, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !4065)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!4068, !250, !189}
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4061, file: !108, line: 112, baseType: !189, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4061, file: !108, line: 113, baseType: !189, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4061, file: !108, line: 114, baseType: !4060, size: 64, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4061, file: !108, line: 115, baseType: !4064, size: 64, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4061, file: !108, line: 116, baseType: !1211, size: 64, offset: 320)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4061, file: !108, line: 117, baseType: !4060, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4061, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4061, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4061, file: !108, line: 120, baseType: !192, size: 64, offset: 512)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4061, file: !108, line: 121, baseType: !192, size: 64, offset: 576)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4061, file: !108, line: 122, baseType: !244, size: 64, offset: 640)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4061, file: !108, line: 123, baseType: !4081, size: 64, offset: 704)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !108, line: 123, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4052, file: !4053, line: 61, baseType: !7, size: 32, offset: 896)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4052, file: !4053, line: 62, baseType: !7, size: 32, offset: 928)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4052, file: !4053, line: 63, baseType: !7, size: 32, offset: 960)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4052, file: !4053, line: 64, baseType: !7, size: 32, offset: 992)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4052, file: !4053, line: 65, baseType: !7, size: 32, offset: 1024)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4052, file: !4053, line: 66, baseType: !7, size: 32, offset: 1056)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4052, file: !4053, line: 67, baseType: !192, size: 64, offset: 1088)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4052, file: !4053, line: 68, baseType: !7, size: 32, offset: 1152)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4052, file: !4053, line: 69, baseType: !771, size: 32, offset: 1184)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4052, file: !4053, line: 70, baseType: !250, size: 32, offset: 1216)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4052, file: !4053, line: 71, baseType: !797, offset: 1248)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4052, file: !4053, line: 72, baseType: !4095, size: 64, offset: 1280)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4052, file: !4053, line: 73, baseType: !3918, size: 64, offset: 1344)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4052, file: !4053, line: 81, baseType: !192, size: 64, offset: 1408)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4052, file: !4053, line: 82, baseType: !771, size: 32, offset: 1472)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4052, file: !4053, line: 83, baseType: !1476, size: 128, offset: 1536)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4052, file: !4053, line: 85, baseType: !7, size: 32, offset: 1664)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4052, file: !4053, line: 86, baseType: !7, size: 32, offset: 1696)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4052, file: !4053, line: 87, baseType: !7, size: 32, offset: 1728)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4052, file: !4053, line: 88, baseType: !7, size: 32, offset: 1760)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4052, file: !4053, line: 91, baseType: !4081, size: 64, offset: 1792)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4052, file: !4053, line: 98, baseType: !393, size: 128, align: 64, offset: 1856)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4052, file: !4053, line: 99, baseType: !265, size: 512, offset: 1984)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4052, file: !4053, line: 101, baseType: !206, size: 192, offset: 2496)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4052, file: !4053, line: 102, baseType: !250, size: 32, offset: 2688)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4052, file: !4053, line: 103, baseType: !186, size: 64, offset: 2752)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4052, file: !4053, line: 104, baseType: !244, size: 64, offset: 2816)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4032, file: !115, line: 1013, baseType: !443, size: 32, offset: 2816)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4032, file: !115, line: 1014, baseType: !443, size: 32, offset: 2848)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4032, file: !115, line: 1015, baseType: !1410, size: 64, offset: 2880)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3648, file: !94, line: 175, baseType: !3647, size: 64, offset: 576)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3648, file: !94, line: 182, baseType: !3790, size: 64, offset: 640)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3648, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3648, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3648, file: !94, line: 185, baseType: !763, size: 128, offset: 768)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3648, file: !94, line: 186, baseType: !206, size: 192, offset: 896)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3648, file: !94, line: 187, baseType: !4121, offset: 1088)
!4121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2326)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !262, file: !73, line: 499, baseType: !196, size: 128, offset: 4224)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !262, file: !73, line: 502, baseType: !4124, size: 64, offset: 4352)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4126)
!4126 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !262, file: !73, line: 504, baseType: !4128, size: 64, offset: 4416)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !262, file: !73, line: 505, baseType: !447, size: 64, offset: 4480)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !262, file: !73, line: 510, baseType: !447, size: 64, offset: 4544)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !262, file: !73, line: 511, baseType: !4132, size: 64, offset: 4608)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4134)
!4134 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !262, file: !73, line: 513, baseType: !4136, size: 64, offset: 4672)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4138)
!4138 = !{!4139, !4140}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4137, file: !73, line: 293, baseType: !7, size: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4137, file: !73, line: 294, baseType: !192, size: 64, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !262, file: !73, line: 515, baseType: !196, size: 128, offset: 4736)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !262, file: !73, line: 526, baseType: !4143, offset: 4864)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4144, line: 5, elements: !236)
!4144 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !262, file: !73, line: 528, baseType: !3661, size: 64, offset: 4864)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !262, file: !73, line: 529, baseType: !3674, size: 64, offset: 4928)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !262, file: !73, line: 534, baseType: !539, size: 32, offset: 4992)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !262, file: !73, line: 535, baseType: !443, size: 32, offset: 5024)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !262, file: !73, line: 537, baseType: !222, offset: 5056)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !262, file: !73, line: 538, baseType: !196, size: 128, offset: 5056)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !262, file: !73, line: 540, baseType: !4152, size: 64, offset: 5184)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4154, line: 54, size: 960, elements: !4155)
!4154 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4166, !4170, !4171, !4172, !4173, !4177, !4181, !4182}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4153, file: !4154, line: 55, baseType: !244, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4153, file: !4154, line: 56, baseType: !186, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4153, file: !4154, line: 58, baseType: !356, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4153, file: !4154, line: 59, baseType: !356, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4153, file: !4154, line: 60, baseType: !271, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4153, file: !4154, line: 62, baseType: !3381, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4153, file: !4154, line: 63, baseType: !4163, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!304, !3368, !3388}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4153, file: !4154, line: 65, baseType: !4167, size: 64, offset: 448)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !4152}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4153, file: !4154, line: 66, baseType: !3390, size: 64, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4153, file: !4154, line: 68, baseType: !3399, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4153, file: !4154, line: 70, baseType: !3184, size: 64, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4153, file: !4154, line: 71, baseType: !4174, size: 64, offset: 704)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!2122, !3368}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4153, file: !4154, line: 73, baseType: !4178, size: 64, offset: 768)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !3368, !3216, !3217}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4153, file: !4154, line: 75, baseType: !3394, size: 64, offset: 832)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4153, file: !4154, line: 77, baseType: !3511, size: 64, offset: 896)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !262, file: !73, line: 541, baseType: !356, size: 64, offset: 5248)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !262, file: !73, line: 543, baseType: !3390, size: 64, offset: 5312)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !262, file: !73, line: 544, baseType: !4186, size: 64, offset: 5376)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !262, file: !73, line: 545, baseType: !4189, size: 64, offset: 5440)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !262, file: !73, line: 547, baseType: !516, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !262, file: !73, line: 548, baseType: !516, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !262, file: !73, line: 549, baseType: !516, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !262, file: !73, line: 550, baseType: !516, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !240, file: !241, line: 78, baseType: !128, size: 32, offset: 6080)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !240, file: !241, line: 79, baseType: !1497, size: 192, offset: 6144)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !240, file: !241, line: 80, baseType: !1953, size: 256, offset: 6336)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_sem", scope: !240, file: !241, line: 81, baseType: !4199, size: 192, offset: 6592)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4200, line: 15, size: 192, elements: !4201)
!4200 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!4201 = !{!4202, !4203, !4204}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4199, file: !4200, line: 16, baseType: !797)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4199, file: !4200, line: 17, baseType: !7, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4199, file: !4200, line: 18, baseType: !196, size: 128, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "be_watch", scope: !201, file: !202, line: 38, baseType: !252, size: 256, offset: 320)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "be_watching", scope: !201, file: !202, line: 39, baseType: !1347, size: 8, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "evtchn_irq", scope: !201, file: !202, line: 40, baseType: !250, size: 32, offset: 608)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "sh_info", scope: !201, file: !202, line: 41, baseType: !4209, size: 64, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_pci_sharedinfo", file: !4211, line: 105, size: 4576, elements: !4212)
!4211 = !DIFile(filename: "./include/xen/interface/io/pciif.h", directory: "/home/lizy2001/genbc/linux")
!4212 = !{!4213, !4214, !4233}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4210, file: !4211, line: 107, baseType: !583, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !4210, file: !4211, line: 108, baseType: !4215, size: 4384, offset: 32)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_pci_op", file: !4211, line: 69, size: 4384, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4215, file: !4211, line: 71, baseType: !583, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !4215, file: !4211, line: 74, baseType: !1579, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4215, file: !4211, line: 77, baseType: !583, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4215, file: !4211, line: 78, baseType: !583, size: 32, offset: 96)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4215, file: !4211, line: 79, baseType: !583, size: 32, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4215, file: !4211, line: 82, baseType: !1579, size: 32, offset: 160)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4215, file: !4211, line: 83, baseType: !1579, size: 32, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4215, file: !4211, line: 86, baseType: !583, size: 32, offset: 224)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4215, file: !4211, line: 88, baseType: !583, size: 32, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "msix_entries", scope: !4215, file: !4211, line: 90, baseType: !4227, size: 4096, offset: 288)
!4227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4228, size: 4096, elements: !3458)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_msix_entry", file: !4211, line: 65, size: 32, elements: !4229)
!4229 = !{!4230, !4232}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4228, file: !4211, line: 66, baseType: !4231, size: 16)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !191, line: 103, baseType: !876)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4228, file: !4211, line: 67, baseType: !4231, size: 16, offset: 16)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "aer_op", scope: !4210, file: !4211, line: 109, baseType: !4234, size: 160, offset: 4416)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_pcie_aer_op", file: !4211, line: 94, size: 160, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4234, file: !4211, line: 96, baseType: !583, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !4234, file: !4211, line: 98, baseType: !1579, size: 32, offset: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4234, file: !4211, line: 101, baseType: !583, size: 32, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4234, file: !4211, line: 102, baseType: !583, size: 32, offset: 96)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4234, file: !4211, line: 103, baseType: !583, size: 32, offset: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !202, line: 42, baseType: !192, size: 64, offset: 704)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "op_work", scope: !201, file: !202, line: 43, baseType: !1953, size: 256, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !201, file: !202, line: 44, baseType: !4215, size: 4384, offset: 1024)
!4244 = !{!4245, !4297, !4302, !4307, !4309, !0, !4643, !4680, !4683}
!4245 = !DIGlobalVariableExpression(var: !4246, expr: !DIExpression())
!4246 = distinct !DIGlobalVariable(name: "__param_passthrough", scope: !2, file: !3, line: 23, type: !4247, isLocal: true, isDefinition: true, align: 64)
!4247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4248)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4249, line: 69, size: 320, elements: !4250)
!4249 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4250 = !{!4251, !4252, !4253, !4269, !4271, !4275, !4276}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4248, file: !4249, line: 70, baseType: !244, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4248, file: !4249, line: 71, baseType: !186, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4248, file: !4249, line: 72, baseType: !4254, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4256)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4249, line: 47, size: 256, elements: !4257)
!4257 = !{!4258, !4259, !4264, !4268}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4256, file: !4249, line: 49, baseType: !7, size: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4256, file: !4249, line: 51, baseType: !4260, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!250, !244, !4263}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4256, file: !4249, line: 53, baseType: !4265, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!250, !304, !4263}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4256, file: !4249, line: 55, baseType: !494, size: 64, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4248, file: !4249, line: 73, baseType: !4270, size: 16, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4248, file: !4249, line: 74, baseType: !4272, size: 8, offset: 208)
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !217, line: 16, baseType: !4273)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !219, line: 20, baseType: !4274)
!4274 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4248, file: !4249, line: 75, baseType: !1347, size: 8, offset: 216)
!4276 = !DIDerivedType(tag: DW_TAG_member, scope: !4248, file: !4249, line: 76, baseType: !4277, size: 64, offset: 256)
!4277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4248, file: !4249, line: 76, size: 64, elements: !4278)
!4278 = !{!4279, !4280, !4287}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4277, file: !4249, line: 77, baseType: !189, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4277, file: !4249, line: 78, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4283)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4249, line: 86, size: 128, elements: !4284)
!4284 = !{!4285, !4286}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4283, file: !4249, line: 87, baseType: !7, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4283, file: !4249, line: 88, baseType: !304, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4277, file: !4249, line: 79, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4249, line: 92, size: 256, elements: !4291)
!4291 = !{!4292, !4293, !4294, !4295, !4296}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4290, file: !4249, line: 94, baseType: !7, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4290, file: !4249, line: 95, baseType: !7, size: 32, offset: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4290, file: !4249, line: 96, baseType: !2678, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4290, file: !4249, line: 97, baseType: !4254, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4290, file: !4249, line: 98, baseType: !189, size: 64, offset: 192)
!4297 = !DIGlobalVariableExpression(var: !4298, expr: !DIExpression())
!4298 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_passthroughtype238", scope: !2, file: !3, line: 23, type: !4299, isLocal: true, isDefinition: true, align: 8)
!4299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 304, elements: !4300)
!4300 = !{!4301}
!4301 = !DISubrange(count: 38)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_passthrough239", scope: !2, file: !3, line: 24, type: !4304, isLocal: true, isDefinition: true, align: 8)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 5584, elements: !4305)
!4305 = !{!4306}
!4306 = !DISubrange(count: 698)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "passthrough", scope: !2, file: !3, line: 22, type: !516, isLocal: true, isDefinition: true)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(name: "xen_pcibk_backend", scope: !2, file: !3, line: 730, type: !4311, isLocal: false, isDefinition: true)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4313)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_pcibk_backend", file: !202, line: 99, size: 512, elements: !4314)
!4314 = !{!4315, !4316, !4320, !4324, !4619, !4627, !4631, !4639}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4313, file: !202, line: 100, baseType: !244, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4313, file: !202, line: 101, baseType: !4317, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!250, !200}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4313, file: !202, line: 102, baseType: !4321, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !200}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !4313, file: !202, line: 103, baseType: !4325, size: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!250, !4328, !200, !2678, !2678, !2678}
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4330, line: 309, size: 19264, elements: !4331)
!4330 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4331 = !{!4332, !4333, !4422, !4423, !4424, !4425, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4517, !4518, !4519, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4593, !4594, !4595, !4596, !4597, !4598, !4600, !4601, !4602, !4605, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4329, file: !4330, line: 310, baseType: !196, size: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4329, file: !4330, line: 311, baseType: !4334, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4330, line: 605, size: 8064, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4342, !4343, !4358, !4359, !4360, !4384, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4414, !4415, !4417, !4418, !4419, !4420, !4421}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4335, file: !4330, line: 606, baseType: !196, size: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4335, file: !4330, line: 607, baseType: !4334, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4335, file: !4330, line: 608, baseType: !196, size: 128, offset: 192)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4335, file: !4330, line: 609, baseType: !196, size: 128, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4335, file: !4330, line: 610, baseType: !4328, size: 64, offset: 448)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4335, file: !4330, line: 611, baseType: !196, size: 128, offset: 512)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4335, file: !4330, line: 613, baseType: !4344, size: 256, offset: 640)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4345, size: 256, elements: !1172)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4347, line: 20, size: 512, elements: !4348)
!4347 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4348 = !{!4349, !4351, !4352, !4353, !4354, !4355, !4356, !4357}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4346, file: !4347, line: 21, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !191, line: 158, baseType: !2120)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4346, file: !4347, line: 22, baseType: !4350, size: 64, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4346, file: !4347, line: 23, baseType: !244, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4346, file: !4347, line: 24, baseType: !192, size: 64, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4346, file: !4347, line: 25, baseType: !192, size: 64, offset: 256)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4346, file: !4347, line: 26, baseType: !4345, size: 64, offset: 320)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4346, file: !4347, line: 26, baseType: !4345, size: 64, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4346, file: !4347, line: 26, baseType: !4345, size: 64, offset: 448)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4335, file: !4330, line: 614, baseType: !196, size: 128, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4335, file: !4330, line: 615, baseType: !4346, size: 512, offset: 1024)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4335, file: !4330, line: 617, baseType: !4361, size: 64, offset: 1536)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4330, line: 731, size: 320, elements: !4363)
!4363 = !{!4364, !4368, !4372, !4376, !4380}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4362, file: !4330, line: 732, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!250, !4334}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4362, file: !4330, line: 733, baseType: !4369, size: 64, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{null, !4334}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4362, file: !4330, line: 734, baseType: !4373, size: 64, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!189, !4334, !7, !250}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4362, file: !4330, line: 735, baseType: !4377, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!250, !4334, !7, !250, !250, !1410}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4362, file: !4330, line: 736, baseType: !4381, size: 64, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!250, !4334, !7, !250, !250, !443}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4335, file: !4330, line: 618, baseType: !4385, size: 64, offset: 1600)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3829, line: 230, size: 512, elements: !4387)
!4387 = !{!4388, !4389, !4390, !4391, !4392, !4396, !4400}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4386, file: !3829, line: 231, baseType: !186, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4386, file: !3829, line: 232, baseType: !3368, size: 64, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4386, file: !3829, line: 233, baseType: !3661, size: 64, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4386, file: !3829, line: 234, baseType: !196, size: 128, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "setup_irq", scope: !4386, file: !3829, line: 236, baseType: !4393, size: 64, offset: 320)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!250, !4385, !4328, !3827}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "setup_irqs", scope: !4386, file: !3829, line: 238, baseType: !4397, size: 64, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!250, !4385, !4328, !250, !250}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "teardown_irq", scope: !4386, file: !3829, line: 240, baseType: !4401, size: 64, offset: 448)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{null, !4385, !7}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4335, file: !4330, line: 619, baseType: !189, size: 64, offset: 1664)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4335, file: !4330, line: 620, baseType: !4081, size: 64, offset: 1728)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4335, file: !4330, line: 622, baseType: !453, size: 8, offset: 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4335, file: !4330, line: 623, baseType: !453, size: 8, offset: 1800)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4335, file: !4330, line: 624, baseType: !453, size: 8, offset: 1808)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4335, file: !4330, line: 625, baseType: !453, size: 8, offset: 1816)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4335, file: !4330, line: 630, baseType: !4411, size: 384, offset: 1824)
!4411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 384, elements: !4412)
!4412 = !{!4413}
!4413 = !DISubrange(count: 48)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4335, file: !4330, line: 632, baseType: !345, size: 16, offset: 2208)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4335, file: !4330, line: 633, baseType: !4416, size: 16, offset: 2224)
!4416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4330, line: 237, baseType: !345)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4335, file: !4330, line: 634, baseType: !3368, size: 64, offset: 2240)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4335, file: !4330, line: 635, baseType: !262, size: 5568, offset: 2304)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4335, file: !4330, line: 636, baseType: !370, size: 64, offset: 7872)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4335, file: !4330, line: 637, baseType: !370, size: 64, offset: 7936)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4335, file: !4330, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4329, file: !4330, line: 312, baseType: !4334, size: 64, offset: 192)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4329, file: !4330, line: 314, baseType: !189, size: 64, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4329, file: !4330, line: 315, baseType: !4081, size: 64, offset: 320)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4329, file: !4330, line: 316, baseType: !4426, size: 64, offset: 384)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4330, line: 69, size: 832, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4434, !4435}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4427, file: !4330, line: 70, baseType: !4334, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4427, file: !4330, line: 71, baseType: !196, size: 128, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4427, file: !4330, line: 72, baseType: !4432, size: 64, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4330, line: 72, flags: DIFlagFwdDecl)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4427, file: !4330, line: 73, baseType: !453, size: 8, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4427, file: !4330, line: 74, baseType: !265, size: 512, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4329, file: !4330, line: 318, baseType: !7, size: 32, offset: 448)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4329, file: !4330, line: 319, baseType: !345, size: 16, offset: 480)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4329, file: !4330, line: 320, baseType: !345, size: 16, offset: 496)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4329, file: !4330, line: 321, baseType: !345, size: 16, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4329, file: !4330, line: 322, baseType: !345, size: 16, offset: 528)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4329, file: !4330, line: 323, baseType: !7, size: 32, offset: 544)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4329, file: !4330, line: 324, baseType: !1347, size: 8, offset: 576)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4329, file: !4330, line: 325, baseType: !1347, size: 8, offset: 584)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4329, file: !4330, line: 330, baseType: !1347, size: 8, offset: 592)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4329, file: !4330, line: 331, baseType: !1347, size: 8, offset: 600)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4329, file: !4330, line: 332, baseType: !1347, size: 8, offset: 608)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4329, file: !4330, line: 333, baseType: !1347, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4329, file: !4330, line: 334, baseType: !1347, size: 8, offset: 624)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4329, file: !4330, line: 335, baseType: !1347, size: 8, offset: 632)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4329, file: !4330, line: 336, baseType: !876, size: 16, offset: 640)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4329, file: !4330, line: 337, baseType: !3801, size: 64, offset: 704)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4329, file: !4330, line: 339, baseType: !4453, size: 64, offset: 768)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4330, line: 858, size: 2048, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4470, !4474, !4478, !4482, !4486, !4487, !4491, !4510, !4511, !4512}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4454, file: !4330, line: 859, baseType: !196, size: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4454, file: !4330, line: 860, baseType: !244, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4454, file: !4330, line: 861, baseType: !4459, size: 64, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4461)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3452, line: 38, size: 256, elements: !4462)
!4462 = !{!4463, !4464, !4465, !4466, !4467, !4468, !4469}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4461, file: !3452, line: 39, baseType: !444, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4461, file: !3452, line: 39, baseType: !444, size: 32, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4461, file: !3452, line: 40, baseType: !444, size: 32, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4461, file: !3452, line: 40, baseType: !444, size: 32, offset: 96)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4461, file: !3452, line: 41, baseType: !444, size: 32, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4461, file: !3452, line: 41, baseType: !444, size: 32, offset: 160)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4461, file: !3452, line: 42, baseType: !3471, size: 64, offset: 192)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4454, file: !4330, line: 862, baseType: !4471, size: 64, offset: 256)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!250, !4328, !4459}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4454, file: !4330, line: 863, baseType: !4475, size: 64, offset: 320)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4328}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4454, file: !4330, line: 864, baseType: !4479, size: 64, offset: 384)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!250, !4328, !3482}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4454, file: !4330, line: 865, baseType: !4483, size: 64, offset: 448)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!250, !4328}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4454, file: !4330, line: 866, baseType: !4475, size: 64, offset: 512)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4454, file: !4330, line: 867, baseType: !4488, size: 64, offset: 576)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!250, !4328, !250}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4454, file: !4330, line: 868, baseType: !4492, size: 64, offset: 640)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4494)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4330, line: 795, size: 384, elements: !4495)
!4495 = !{!4496, !4502, !4506, !4507, !4508, !4509}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4494, file: !4330, line: 797, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!4500, !4328, !4501}
!4500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4330, line: 772, baseType: !7)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4330, line: 180, baseType: !7)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4494, file: !4330, line: 801, baseType: !4503, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!4500, !4328}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4494, file: !4330, line: 804, baseType: !4503, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4494, file: !4330, line: 807, baseType: !4475, size: 64, offset: 192)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4494, file: !4330, line: 808, baseType: !4475, size: 64, offset: 256)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4494, file: !4330, line: 811, baseType: !4475, size: 64, offset: 320)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4454, file: !4330, line: 869, baseType: !356, size: 64, offset: 704)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4454, file: !4330, line: 870, baseType: !3440, size: 1152, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4454, file: !4330, line: 871, baseType: !4513, size: 128, offset: 1920)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4330, line: 759, size: 128, elements: !4514)
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4513, file: !4330, line: 760, baseType: !222)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4513, file: !4330, line: 761, baseType: !196, size: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4329, file: !4330, line: 340, baseType: !447, size: 64, offset: 832)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4329, file: !4330, line: 346, baseType: !4137, size: 128, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4329, file: !4330, line: 348, baseType: !4520, size: 32, offset: 1024)
!4520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4330, line: 155, baseType: !250)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4329, file: !4330, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4329, file: !4330, line: 352, baseType: !1347, size: 8, offset: 1064)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4329, file: !4330, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4329, file: !4330, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4329, file: !4330, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4329, file: !4330, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4329, file: !4330, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4329, file: !4330, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4329, file: !4330, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4329, file: !4330, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4329, file: !4330, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4329, file: !4330, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4329, file: !4330, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4329, file: !4330, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4329, file: !4330, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4329, file: !4330, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4329, file: !4330, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4329, file: !4330, line: 376, baseType: !7, size: 32, offset: 1120)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4329, file: !4330, line: 377, baseType: !7, size: 32, offset: 1152)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4329, file: !4330, line: 380, baseType: !4541, size: 64, offset: 1216)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4330, line: 303, flags: DIFlagFwdDecl)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4329, file: !4330, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4329, file: !4330, line: 383, baseType: !250, size: 32, offset: 1312)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4329, file: !4330, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4329, file: !4330, line: 387, baseType: !4501, size: 32, offset: 1376)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4329, file: !4330, line: 388, baseType: !262, size: 5568, offset: 1408)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4329, file: !4330, line: 390, baseType: !250, size: 32, offset: 6976)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4329, file: !4330, line: 396, baseType: !7, size: 32, offset: 7008)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4329, file: !4330, line: 397, baseType: !4551, size: 8704, offset: 7040)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4346, size: 8704, elements: !4552)
!4552 = !{!4553}
!4553 = !DISubrange(count: 17)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4329, file: !4330, line: 399, baseType: !516, size: 8, offset: 15744)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4329, file: !4330, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4329, file: !4330, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4329, file: !4330, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4329, file: !4330, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4329, file: !4330, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4329, file: !4330, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4329, file: !4330, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4329, file: !4330, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4329, file: !4330, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4329, file: !4330, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4329, file: !4330, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4329, file: !4330, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4329, file: !4330, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4329, file: !4330, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4329, file: !4330, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4329, file: !4330, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4329, file: !4330, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4329, file: !4330, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4329, file: !4330, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4329, file: !4330, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4329, file: !4330, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4329, file: !4330, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4329, file: !4330, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4329, file: !4330, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4329, file: !4330, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4329, file: !4330, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4329, file: !4330, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4329, file: !4330, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4329, file: !4330, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4329, file: !4330, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4329, file: !4330, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4329, file: !4330, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4329, file: !4330, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4329, file: !4330, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4329, file: !4330, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4329, file: !4330, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4329, file: !4330, line: 450, baseType: !4592, size: 16, offset: 15792)
!4592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4330, line: 206, baseType: !345)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4329, file: !4330, line: 451, baseType: !771, size: 32, offset: 15808)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4329, file: !4330, line: 453, baseType: !3785, size: 512, offset: 15840)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4329, file: !4330, line: 454, baseType: !659, size: 64, offset: 16384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4329, file: !4330, line: 455, baseType: !370, size: 64, offset: 16448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4329, file: !4330, line: 456, baseType: !250, size: 32, offset: 16512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4329, file: !4330, line: 457, baseType: !4599, size: 1088, offset: 16576)
!4599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 1088, elements: !4552)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4329, file: !4330, line: 458, baseType: !4599, size: 1088, offset: 17664)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4329, file: !4330, line: 469, baseType: !356, size: 64, offset: 18752)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4329, file: !4330, line: 471, baseType: !4603, size: 64, offset: 18816)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4330, line: 304, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, scope: !4329, file: !4330, line: 478, baseType: !4606, size: 64, offset: 18880)
!4606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4329, file: !4330, line: 478, size: 64, elements: !4607)
!4607 = !{!4608, !4611}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4606, file: !4330, line: 479, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4330, line: 305, flags: DIFlagFwdDecl)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4606, file: !4330, line: 480, baseType: !4328, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4329, file: !4330, line: 482, baseType: !876, size: 16, offset: 18944)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4329, file: !4330, line: 483, baseType: !1347, size: 8, offset: 18960)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4329, file: !4330, line: 497, baseType: !876, size: 16, offset: 18976)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4329, file: !4330, line: 498, baseType: !2120, size: 64, offset: 19008)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4329, file: !4330, line: 499, baseType: !350, size: 64, offset: 19072)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4329, file: !4330, line: 500, baseType: !304, size: 64, offset: 19136)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4329, file: !4330, line: 502, baseType: !192, size: 64, offset: 19200)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "publish", scope: !4313, file: !202, line: 106, baseType: !4620, size: 64, offset: 256)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!250, !200, !4623}
!4623 = !DIDerivedType(tag: DW_TAG_typedef, name: "publish_pci_root_cb", file: !202, line: 92, baseType: !4624)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!250, !200, !7, !7}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4313, file: !202, line: 107, baseType: !4628, size: 64, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{null, !200, !4328, !516}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4313, file: !202, line: 109, baseType: !4632, size: 64, offset: 384)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!250, !200, !4328, !250, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_typedef, name: "publish_pci_dev_cb", file: !202, line: 89, baseType: !4636)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!250, !200, !7, !7, !7, !7}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4313, file: !202, line: 111, baseType: !4640, size: 64, offset: 448)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!4328, !200, !7, !7, !7}
!4643 = !DIGlobalVariableExpression(var: !4644, expr: !DIExpression())
!4644 = distinct !DIGlobalVariable(name: "xen_pcibk_driver", scope: !2, file: !3, line: 722, type: !4645, isLocal: true, isDefinition: true)
!4645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_driver", file: !241, line: 96, size: 1920, elements: !4646)
!4646 = !{!4647, !4648, !4654, !4655, !4659, !4663, !4667, !4668, !4669, !4673, !4674, !4675, !4676}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4645, file: !241, line: 97, baseType: !244, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4645, file: !241, line: 98, baseType: !4649, size: 64, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4651)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device_id", file: !241, line: 89, size: 256, elements: !4652)
!4652 = !{!4653}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !4651, file: !241, line: 92, baseType: !2695, size: 256)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "allow_rebind", scope: !4645, file: !241, line: 99, baseType: !516, size: 8, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4645, file: !241, line: 100, baseType: !4656, size: 64, offset: 192)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!250, !239, !4649}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_changed", scope: !4645, file: !241, line: 102, baseType: !4660, size: 64, offset: 256)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !239, !128}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4645, file: !241, line: 104, baseType: !4664, size: 64, offset: 320)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!250, !239}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4645, file: !241, line: 105, baseType: !4664, size: 64, offset: 384)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4645, file: !241, line: 106, baseType: !4664, size: 64, offset: 448)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4645, file: !241, line: 107, baseType: !4670, size: 64, offset: 512)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!250, !239, !299}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4645, file: !241, line: 108, baseType: !3440, size: 1152, offset: 576)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "read_otherend_details", scope: !4645, file: !241, line: 109, baseType: !4664, size: 64, offset: 1728)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "is_ready", scope: !4645, file: !241, line: 110, baseType: !4664, size: 64, offset: 1792)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_memory", scope: !4645, file: !241, line: 111, baseType: !4677, size: 64, offset: 1856)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !239}
!4680 = !DIGlobalVariableExpression(var: !4681, expr: !DIExpression())
!4681 = distinct !DIGlobalVariable(name: "xen_pcibk_ids", scope: !2, file: !3, line: 717, type: !4682, isLocal: true, isDefinition: true)
!4682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4650, size: 512, elements: !1564)
!4683 = !DIGlobalVariableExpression(var: !4684, expr: !DIExpression())
!4684 = distinct !DIGlobalVariable(name: "__key", scope: !4685, file: !3, line: 48, type: !669, isLocal: true, isDefinition: true)
!4685 = distinct !DISubprogram(name: "alloc_pdev", scope: !3, file: !3, line: 37, type: !4686, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!200, !239}
!4688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 192, elements: !4689)
!4689 = !{!4690}
!4690 = !DISubrange(count: 24)
!4691 = !{i32 7, !"Dwarf Version", i32 4}
!4692 = !{i32 2, !"Debug Info Version", i32 3}
!4693 = !{i32 1, !"wchar_size", i32 2}
!4694 = !{i32 1, !"Code Model", i32 2}
!4695 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4696 = distinct !DISubprogram(name: "xen_pcibk_xenbus_register", scope: !3, file: !3, line: 732, type: !4697, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!250}
!4699 = !DILocation(line: 734, column: 20, scope: !4696)
!4700 = !DILocation(line: 735, column: 6, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 735, column: 6)
!4702 = !DILocation(line: 735, column: 6, scope: !4696)
!4703 = !DILocation(line: 736, column: 21, scope: !4701)
!4704 = !DILocation(line: 736, column: 3, scope: !4701)
!4705 = !DILocation(line: 737, column: 2, scope: !4696)
!4706 = !DILocation(line: 738, column: 9, scope: !4696)
!4707 = !DILocation(line: 738, column: 2, scope: !4696)
!4708 = distinct !DISubprogram(name: "xen_pcibk_xenbus_unregister", scope: !3, file: !3, line: 741, type: !1874, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4709 = !DILocation(line: 743, column: 2, scope: !4708)
!4710 = !DILocation(line: 744, column: 1, scope: !4708)
!4711 = distinct !DISubprogram(name: "xen_pcibk_xenbus_probe", scope: !3, file: !3, line: 672, type: !4657, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4712 = !DILocalVariable(name: "dev", arg: 1, scope: !4711, file: !3, line: 672, type: !239)
!4713 = !DILocation(line: 672, column: 57, scope: !4711)
!4714 = !DILocalVariable(name: "id", arg: 2, scope: !4711, file: !3, line: 673, type: !4649)
!4715 = !DILocation(line: 673, column: 36, scope: !4711)
!4716 = !DILocalVariable(name: "err", scope: !4711, file: !3, line: 675, type: !250)
!4717 = !DILocation(line: 675, column: 6, scope: !4711)
!4718 = !DILocalVariable(name: "pdev", scope: !4711, file: !3, line: 676, type: !200)
!4719 = !DILocation(line: 676, column: 27, scope: !4711)
!4720 = !DILocation(line: 676, column: 45, scope: !4711)
!4721 = !DILocation(line: 676, column: 34, scope: !4711)
!4722 = !DILocation(line: 678, column: 6, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 678, column: 6)
!4724 = !DILocation(line: 678, column: 11, scope: !4723)
!4725 = !DILocation(line: 678, column: 6, scope: !4711)
!4726 = !DILocation(line: 679, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 678, column: 20)
!4728 = !DILocation(line: 680, column: 20, scope: !4727)
!4729 = !DILocation(line: 680, column: 25, scope: !4727)
!4730 = !DILocation(line: 680, column: 3, scope: !4727)
!4731 = !DILocation(line: 682, column: 3, scope: !4727)
!4732 = !DILocation(line: 686, column: 28, scope: !4711)
!4733 = !DILocation(line: 686, column: 8, scope: !4711)
!4734 = !DILocation(line: 686, column: 6, scope: !4711)
!4735 = !DILocation(line: 687, column: 6, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 687, column: 6)
!4737 = !DILocation(line: 687, column: 6, scope: !4711)
!4738 = !DILocation(line: 688, column: 3, scope: !4736)
!4739 = !DILocation(line: 691, column: 26, scope: !4711)
!4740 = !DILocation(line: 691, column: 31, scope: !4711)
!4741 = !DILocation(line: 691, column: 36, scope: !4711)
!4742 = !DILocation(line: 691, column: 47, scope: !4711)
!4743 = !DILocation(line: 691, column: 53, scope: !4711)
!4744 = !DILocation(line: 691, column: 8, scope: !4711)
!4745 = !DILocation(line: 691, column: 6, scope: !4711)
!4746 = !DILocation(line: 693, column: 6, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 693, column: 6)
!4748 = !DILocation(line: 693, column: 6, scope: !4711)
!4749 = !DILocation(line: 694, column: 3, scope: !4747)
!4750 = !DILocation(line: 696, column: 2, scope: !4711)
!4751 = !DILocation(line: 696, column: 8, scope: !4711)
!4752 = !DILocation(line: 696, column: 20, scope: !4711)
!4753 = !DILocation(line: 701, column: 22, scope: !4711)
!4754 = !DILocation(line: 701, column: 28, scope: !4711)
!4755 = !DILocation(line: 701, column: 2, scope: !4711)
!4756 = !DILabel(scope: !4711, name: "out", file: !3, line: 703)
!4757 = !DILocation(line: 703, column: 1, scope: !4711)
!4758 = !DILocation(line: 704, column: 9, scope: !4711)
!4759 = !DILocation(line: 704, column: 2, scope: !4711)
!4760 = distinct !DISubprogram(name: "xen_pcibk_frontend_changed", scope: !3, file: !3, line: 515, type: !4661, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4761 = !DILocalVariable(name: "xdev", arg: 1, scope: !4760, file: !3, line: 515, type: !239)
!4762 = !DILocation(line: 515, column: 62, scope: !4760)
!4763 = !DILocalVariable(name: "fe_state", arg: 2, scope: !4760, file: !3, line: 516, type: !128)
!4764 = !DILocation(line: 516, column: 28, scope: !4760)
!4765 = !DILocalVariable(name: "pdev", scope: !4760, file: !3, line: 518, type: !200)
!4766 = !DILocation(line: 518, column: 27, scope: !4760)
!4767 = !DILocation(line: 518, column: 51, scope: !4760)
!4768 = !DILocation(line: 518, column: 57, scope: !4760)
!4769 = !DILocation(line: 518, column: 34, scope: !4760)
!4770 = !DILocation(line: 522, column: 10, scope: !4760)
!4771 = !DILocation(line: 522, column: 2, scope: !4760)
!4772 = !DILocation(line: 524, column: 20, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 522, column: 20)
!4774 = !DILocation(line: 524, column: 3, scope: !4773)
!4775 = !DILocation(line: 525, column: 3, scope: !4773)
!4776 = !DILocation(line: 528, column: 25, scope: !4773)
!4777 = !DILocation(line: 528, column: 3, scope: !4773)
!4778 = !DILocation(line: 529, column: 3, scope: !4773)
!4779 = !DILocation(line: 535, column: 23, scope: !4773)
!4780 = !DILocation(line: 535, column: 3, scope: !4773)
!4781 = !DILocation(line: 536, column: 3, scope: !4773)
!4782 = !DILocation(line: 539, column: 24, scope: !4773)
!4783 = !DILocation(line: 539, column: 3, scope: !4773)
!4784 = !DILocation(line: 540, column: 23, scope: !4773)
!4785 = !DILocation(line: 540, column: 3, scope: !4773)
!4786 = !DILocation(line: 541, column: 3, scope: !4773)
!4787 = !DILocation(line: 544, column: 24, scope: !4773)
!4788 = !DILocation(line: 544, column: 3, scope: !4773)
!4789 = !DILocation(line: 545, column: 23, scope: !4773)
!4790 = !DILocation(line: 545, column: 3, scope: !4773)
!4791 = !DILocation(line: 546, column: 28, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 546, column: 7)
!4793 = !DILocation(line: 546, column: 7, scope: !4792)
!4794 = !DILocation(line: 546, column: 7, scope: !4773)
!4795 = !DILocation(line: 547, column: 4, scope: !4792)
!4796 = !DILocation(line: 546, column: 32, scope: !4792)
!4797 = !DILocation(line: 551, column: 22, scope: !4773)
!4798 = !DILocation(line: 551, column: 28, scope: !4773)
!4799 = !DILocation(line: 551, column: 3, scope: !4773)
!4800 = !DILocation(line: 552, column: 3, scope: !4773)
!4801 = !DILocation(line: 555, column: 3, scope: !4773)
!4802 = !DILocation(line: 557, column: 1, scope: !4760)
!4803 = distinct !DISubprogram(name: "xen_pcibk_xenbus_remove", scope: !3, file: !3, line: 707, type: !4665, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4804 = !DILocalVariable(name: "dev", arg: 1, scope: !4803, file: !3, line: 707, type: !239)
!4805 = !DILocation(line: 707, column: 58, scope: !4803)
!4806 = !DILocalVariable(name: "pdev", scope: !4803, file: !3, line: 709, type: !200)
!4807 = !DILocation(line: 709, column: 27, scope: !4803)
!4808 = !DILocation(line: 709, column: 51, scope: !4803)
!4809 = !DILocation(line: 709, column: 56, scope: !4803)
!4810 = !DILocation(line: 709, column: 34, scope: !4803)
!4811 = !DILocation(line: 711, column: 6, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 711, column: 6)
!4813 = !DILocation(line: 711, column: 11, scope: !4812)
!4814 = !DILocation(line: 711, column: 6, scope: !4803)
!4815 = !DILocation(line: 712, column: 13, scope: !4812)
!4816 = !DILocation(line: 712, column: 3, scope: !4812)
!4817 = !DILocation(line: 714, column: 2, scope: !4803)
!4818 = !DILocalVariable(name: "xdev", arg: 1, scope: !4685, file: !3, line: 37, type: !239)
!4819 = !DILocation(line: 37, column: 66, scope: !4685)
!4820 = !DILocalVariable(name: "pdev", scope: !4685, file: !3, line: 39, type: !200)
!4821 = !DILocation(line: 39, column: 27, scope: !4685)
!4822 = !DILocation(line: 41, column: 9, scope: !4685)
!4823 = !DILocation(line: 41, column: 7, scope: !4685)
!4824 = !DILocation(line: 42, column: 6, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 42, column: 6)
!4826 = !DILocation(line: 42, column: 11, scope: !4825)
!4827 = !DILocation(line: 42, column: 6, scope: !4685)
!4828 = !DILocation(line: 43, column: 3, scope: !4825)
!4829 = !DILocation(line: 46, column: 15, scope: !4685)
!4830 = !DILocation(line: 46, column: 2, scope: !4685)
!4831 = !DILocation(line: 46, column: 8, scope: !4685)
!4832 = !DILocation(line: 46, column: 13, scope: !4685)
!4833 = !DILocation(line: 48, column: 2, scope: !4685)
!4834 = !DILocation(line: 48, column: 2, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 48, column: 2)
!4836 = !DILocation(line: 50, column: 2, scope: !4685)
!4837 = !DILocation(line: 50, column: 8, scope: !4685)
!4838 = !DILocation(line: 50, column: 16, scope: !4685)
!4839 = !DILocation(line: 51, column: 2, scope: !4685)
!4840 = !DILocation(line: 51, column: 8, scope: !4685)
!4841 = !DILocation(line: 51, column: 19, scope: !4685)
!4842 = !DILocation(line: 52, column: 2, scope: !4685)
!4843 = !DILocation(line: 52, column: 8, scope: !4685)
!4844 = !DILocation(line: 52, column: 20, scope: !4685)
!4845 = !DILocation(line: 54, column: 2, scope: !4685)
!4846 = !DILocation(line: 54, column: 2, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 54, column: 2)
!4848 = !DILocation(line: 56, column: 29, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 56, column: 6)
!4850 = !DILocation(line: 56, column: 6, scope: !4849)
!4851 = !DILocation(line: 56, column: 6, scope: !4685)
!4852 = !DILocation(line: 57, column: 9, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 56, column: 36)
!4854 = !DILocation(line: 57, column: 3, scope: !4853)
!4855 = !DILocation(line: 58, column: 8, scope: !4853)
!4856 = !DILocation(line: 59, column: 2, scope: !4853)
!4857 = !DILocation(line: 61, column: 19, scope: !4685)
!4858 = !DILocation(line: 61, column: 25, scope: !4685)
!4859 = !DILocation(line: 61, column: 30, scope: !4685)
!4860 = !DILocation(line: 61, column: 2, scope: !4685)
!4861 = !DILabel(scope: !4685, name: "out", file: !3, line: 63)
!4862 = !DILocation(line: 63, column: 1, scope: !4685)
!4863 = !DILocation(line: 64, column: 9, scope: !4685)
!4864 = !DILocation(line: 64, column: 2, scope: !4685)
!4865 = distinct !DISubprogram(name: "xen_pcibk_be_watch", scope: !3, file: !3, line: 656, type: !258, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4866 = !DILocalVariable(name: "watch", arg: 1, scope: !4865, file: !3, line: 656, type: !260)
!4867 = !DILocation(line: 656, column: 53, scope: !4865)
!4868 = !DILocalVariable(name: "path", arg: 2, scope: !4865, file: !3, line: 657, type: !244)
!4869 = !DILocation(line: 657, column: 23, scope: !4865)
!4870 = !DILocalVariable(name: "token", arg: 3, scope: !4865, file: !3, line: 657, type: !244)
!4871 = !DILocation(line: 657, column: 41, scope: !4865)
!4872 = !DILocalVariable(name: "pdev", scope: !4865, file: !3, line: 659, type: !200)
!4873 = !DILocation(line: 659, column: 27, scope: !4865)
!4874 = !DILocalVariable(name: "__mptr", scope: !4875, file: !3, line: 660, type: !189)
!4875 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 660, column: 6)
!4876 = !DILocation(line: 660, column: 6, scope: !4875)
!4877 = !DILocation(line: 660, column: 6, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 660, column: 6)
!4879 = !DILocation(line: 662, column: 35, scope: !4865)
!4880 = !DILocation(line: 662, column: 41, scope: !4865)
!4881 = !DILocation(line: 662, column: 47, scope: !4865)
!4882 = !DILocation(line: 662, column: 10, scope: !4865)
!4883 = !DILocation(line: 662, column: 2, scope: !4865)
!4884 = !DILocation(line: 664, column: 27, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 662, column: 58)
!4886 = !DILocation(line: 664, column: 3, scope: !4885)
!4887 = !DILocation(line: 665, column: 3, scope: !4885)
!4888 = !DILocation(line: 668, column: 3, scope: !4885)
!4889 = !DILocation(line: 670, column: 1, scope: !4865)
!4890 = distinct !DISubprogram(name: "kzalloc", scope: !174, file: !174, line: 662, type: !4891, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!189, !350, !190}
!4893 = !DILocalVariable(name: "s", arg: 1, scope: !4894, file: !174, line: 445, type: !952)
!4894 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !174, file: !174, line: 445, type: !4895, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!189, !952, !190, !350}
!4897 = !DILocation(line: 445, column: 72, scope: !4894, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 552, column: 10, scope: !4899, inlinedAt: !4902)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !174, line: 540, column: 34)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !174, line: 540, column: 6)
!4901 = distinct !DISubprogram(name: "kmalloc", scope: !174, file: !174, line: 538, type: !4891, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4902 = distinct !DILocation(line: 664, column: 9, scope: !4890)
!4903 = !DILocalVariable(name: "flags", arg: 2, scope: !4894, file: !174, line: 446, type: !190)
!4904 = !DILocation(line: 446, column: 9, scope: !4894, inlinedAt: !4898)
!4905 = !DILocalVariable(name: "size", arg: 3, scope: !4894, file: !174, line: 446, type: !350)
!4906 = !DILocation(line: 446, column: 23, scope: !4894, inlinedAt: !4898)
!4907 = !DILocalVariable(name: "ret", scope: !4894, file: !174, line: 448, type: !189)
!4908 = !DILocation(line: 448, column: 8, scope: !4894, inlinedAt: !4898)
!4909 = !DILocalVariable(name: "flags", arg: 1, scope: !4910, file: !174, line: 318, type: !190)
!4910 = distinct !DISubprogram(name: "kmalloc_type", scope: !174, file: !174, line: 318, type: !4911, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!173, !190}
!4913 = !DILocation(line: 318, column: 67, scope: !4910, inlinedAt: !4914)
!4914 = distinct !DILocation(line: 553, column: 20, scope: !4899, inlinedAt: !4902)
!4915 = !DILocalVariable(name: "size", arg: 1, scope: !4916, file: !174, line: 346, type: !350)
!4916 = distinct !DISubprogram(name: "kmalloc_index", scope: !174, file: !174, line: 346, type: !4917, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!7, !350}
!4919 = !DILocation(line: 346, column: 58, scope: !4916, inlinedAt: !4920)
!4920 = distinct !DILocation(line: 547, column: 11, scope: !4899, inlinedAt: !4902)
!4921 = !DILocalVariable(name: "size", arg: 1, scope: !4922, file: !174, line: 472, type: !350)
!4922 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !174, file: !174, line: 472, type: !4923, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!189, !350, !190, !7}
!4925 = !DILocation(line: 472, column: 28, scope: !4922, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 481, column: 9, scope: !4927, inlinedAt: !4928)
!4927 = distinct !DISubprogram(name: "kmalloc_large", scope: !174, file: !174, line: 478, type: !4891, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4928 = distinct !DILocation(line: 545, column: 11, scope: !4929, inlinedAt: !4902)
!4929 = distinct !DILexicalBlock(scope: !4899, file: !174, line: 544, column: 7)
!4930 = !DILocalVariable(name: "flags", arg: 2, scope: !4922, file: !174, line: 472, type: !190)
!4931 = !DILocation(line: 472, column: 40, scope: !4922, inlinedAt: !4926)
!4932 = !DILocalVariable(name: "order", arg: 3, scope: !4922, file: !174, line: 472, type: !7)
!4933 = !DILocation(line: 472, column: 60, scope: !4922, inlinedAt: !4926)
!4934 = !DILocalVariable(name: "size", arg: 1, scope: !4927, file: !174, line: 478, type: !350)
!4935 = !DILocation(line: 478, column: 51, scope: !4927, inlinedAt: !4928)
!4936 = !DILocalVariable(name: "flags", arg: 2, scope: !4927, file: !174, line: 478, type: !190)
!4937 = !DILocation(line: 478, column: 63, scope: !4927, inlinedAt: !4928)
!4938 = !DILocalVariable(name: "order", scope: !4927, file: !174, line: 480, type: !7)
!4939 = !DILocation(line: 480, column: 15, scope: !4927, inlinedAt: !4928)
!4940 = !DILocalVariable(name: "size", arg: 1, scope: !4901, file: !174, line: 538, type: !350)
!4941 = !DILocation(line: 538, column: 45, scope: !4901, inlinedAt: !4902)
!4942 = !DILocalVariable(name: "flags", arg: 2, scope: !4901, file: !174, line: 538, type: !190)
!4943 = !DILocation(line: 538, column: 57, scope: !4901, inlinedAt: !4902)
!4944 = !DILocalVariable(name: "index", scope: !4899, file: !174, line: 542, type: !7)
!4945 = !DILocation(line: 542, column: 16, scope: !4899, inlinedAt: !4902)
!4946 = !DILocalVariable(name: "size", arg: 1, scope: !4890, file: !174, line: 662, type: !350)
!4947 = !DILocation(line: 662, column: 36, scope: !4890)
!4948 = !DILocalVariable(name: "flags", arg: 2, scope: !4890, file: !174, line: 662, type: !190)
!4949 = !DILocation(line: 662, column: 48, scope: !4890)
!4950 = !DILocation(line: 664, column: 17, scope: !4890)
!4951 = !DILocation(line: 664, column: 23, scope: !4890)
!4952 = !DILocation(line: 664, column: 29, scope: !4890)
!4953 = !DILocation(line: 540, column: 27, scope: !4900, inlinedAt: !4902)
!4954 = !DILocation(line: 540, column: 6, scope: !4900, inlinedAt: !4902)
!4955 = !DILocation(line: 540, column: 6, scope: !4901, inlinedAt: !4902)
!4956 = !DILocation(line: 544, column: 7, scope: !4929, inlinedAt: !4902)
!4957 = !DILocation(line: 544, column: 12, scope: !4929, inlinedAt: !4902)
!4958 = !DILocation(line: 544, column: 7, scope: !4899, inlinedAt: !4902)
!4959 = !DILocation(line: 545, column: 25, scope: !4929, inlinedAt: !4902)
!4960 = !DILocation(line: 545, column: 31, scope: !4929, inlinedAt: !4902)
!4961 = !DILocation(line: 480, column: 33, scope: !4927, inlinedAt: !4928)
!4962 = !DILocation(line: 480, column: 23, scope: !4927, inlinedAt: !4928)
!4963 = !DILocation(line: 481, column: 29, scope: !4927, inlinedAt: !4928)
!4964 = !DILocation(line: 481, column: 35, scope: !4927, inlinedAt: !4928)
!4965 = !DILocation(line: 481, column: 42, scope: !4927, inlinedAt: !4928)
!4966 = !DILocation(line: 474, column: 23, scope: !4922, inlinedAt: !4926)
!4967 = !DILocation(line: 474, column: 29, scope: !4922, inlinedAt: !4926)
!4968 = !DILocation(line: 474, column: 36, scope: !4922, inlinedAt: !4926)
!4969 = !DILocation(line: 474, column: 9, scope: !4922, inlinedAt: !4926)
!4970 = !DILocation(line: 545, column: 4, scope: !4929, inlinedAt: !4902)
!4971 = !DILocation(line: 547, column: 25, scope: !4899, inlinedAt: !4902)
!4972 = !DILocation(line: 348, column: 7, scope: !4973, inlinedAt: !4920)
!4973 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 348, column: 6)
!4974 = !DILocation(line: 348, column: 6, scope: !4916, inlinedAt: !4920)
!4975 = !DILocation(line: 349, column: 3, scope: !4973, inlinedAt: !4920)
!4976 = !DILocation(line: 351, column: 6, scope: !4977, inlinedAt: !4920)
!4977 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 351, column: 6)
!4978 = !DILocation(line: 351, column: 11, scope: !4977, inlinedAt: !4920)
!4979 = !DILocation(line: 351, column: 6, scope: !4916, inlinedAt: !4920)
!4980 = !DILocation(line: 352, column: 3, scope: !4977, inlinedAt: !4920)
!4981 = !DILocation(line: 354, column: 32, scope: !4982, inlinedAt: !4920)
!4982 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 354, column: 6)
!4983 = !DILocation(line: 354, column: 37, scope: !4982, inlinedAt: !4920)
!4984 = !DILocation(line: 354, column: 42, scope: !4982, inlinedAt: !4920)
!4985 = !DILocation(line: 354, column: 45, scope: !4982, inlinedAt: !4920)
!4986 = !DILocation(line: 354, column: 50, scope: !4982, inlinedAt: !4920)
!4987 = !DILocation(line: 354, column: 6, scope: !4916, inlinedAt: !4920)
!4988 = !DILocation(line: 355, column: 3, scope: !4982, inlinedAt: !4920)
!4989 = !DILocation(line: 356, column: 32, scope: !4990, inlinedAt: !4920)
!4990 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 356, column: 6)
!4991 = !DILocation(line: 356, column: 37, scope: !4990, inlinedAt: !4920)
!4992 = !DILocation(line: 356, column: 43, scope: !4990, inlinedAt: !4920)
!4993 = !DILocation(line: 356, column: 46, scope: !4990, inlinedAt: !4920)
!4994 = !DILocation(line: 356, column: 51, scope: !4990, inlinedAt: !4920)
!4995 = !DILocation(line: 356, column: 6, scope: !4916, inlinedAt: !4920)
!4996 = !DILocation(line: 357, column: 3, scope: !4990, inlinedAt: !4920)
!4997 = !DILocation(line: 358, column: 6, scope: !4998, inlinedAt: !4920)
!4998 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 358, column: 6)
!4999 = !DILocation(line: 358, column: 11, scope: !4998, inlinedAt: !4920)
!5000 = !DILocation(line: 358, column: 6, scope: !4916, inlinedAt: !4920)
!5001 = !DILocation(line: 358, column: 26, scope: !4998, inlinedAt: !4920)
!5002 = !DILocation(line: 359, column: 6, scope: !5003, inlinedAt: !4920)
!5003 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 359, column: 6)
!5004 = !DILocation(line: 359, column: 11, scope: !5003, inlinedAt: !4920)
!5005 = !DILocation(line: 359, column: 6, scope: !4916, inlinedAt: !4920)
!5006 = !DILocation(line: 359, column: 26, scope: !5003, inlinedAt: !4920)
!5007 = !DILocation(line: 360, column: 6, scope: !5008, inlinedAt: !4920)
!5008 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 360, column: 6)
!5009 = !DILocation(line: 360, column: 11, scope: !5008, inlinedAt: !4920)
!5010 = !DILocation(line: 360, column: 6, scope: !4916, inlinedAt: !4920)
!5011 = !DILocation(line: 360, column: 26, scope: !5008, inlinedAt: !4920)
!5012 = !DILocation(line: 361, column: 6, scope: !5013, inlinedAt: !4920)
!5013 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 361, column: 6)
!5014 = !DILocation(line: 361, column: 11, scope: !5013, inlinedAt: !4920)
!5015 = !DILocation(line: 361, column: 6, scope: !4916, inlinedAt: !4920)
!5016 = !DILocation(line: 361, column: 26, scope: !5013, inlinedAt: !4920)
!5017 = !DILocation(line: 362, column: 6, scope: !5018, inlinedAt: !4920)
!5018 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 362, column: 6)
!5019 = !DILocation(line: 362, column: 11, scope: !5018, inlinedAt: !4920)
!5020 = !DILocation(line: 362, column: 6, scope: !4916, inlinedAt: !4920)
!5021 = !DILocation(line: 362, column: 26, scope: !5018, inlinedAt: !4920)
!5022 = !DILocation(line: 363, column: 6, scope: !5023, inlinedAt: !4920)
!5023 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 363, column: 6)
!5024 = !DILocation(line: 363, column: 11, scope: !5023, inlinedAt: !4920)
!5025 = !DILocation(line: 363, column: 6, scope: !4916, inlinedAt: !4920)
!5026 = !DILocation(line: 363, column: 26, scope: !5023, inlinedAt: !4920)
!5027 = !DILocation(line: 364, column: 6, scope: !5028, inlinedAt: !4920)
!5028 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 364, column: 6)
!5029 = !DILocation(line: 364, column: 11, scope: !5028, inlinedAt: !4920)
!5030 = !DILocation(line: 364, column: 6, scope: !4916, inlinedAt: !4920)
!5031 = !DILocation(line: 364, column: 26, scope: !5028, inlinedAt: !4920)
!5032 = !DILocation(line: 365, column: 6, scope: !5033, inlinedAt: !4920)
!5033 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 365, column: 6)
!5034 = !DILocation(line: 365, column: 11, scope: !5033, inlinedAt: !4920)
!5035 = !DILocation(line: 365, column: 6, scope: !4916, inlinedAt: !4920)
!5036 = !DILocation(line: 365, column: 26, scope: !5033, inlinedAt: !4920)
!5037 = !DILocation(line: 366, column: 6, scope: !5038, inlinedAt: !4920)
!5038 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 366, column: 6)
!5039 = !DILocation(line: 366, column: 11, scope: !5038, inlinedAt: !4920)
!5040 = !DILocation(line: 366, column: 6, scope: !4916, inlinedAt: !4920)
!5041 = !DILocation(line: 366, column: 26, scope: !5038, inlinedAt: !4920)
!5042 = !DILocation(line: 367, column: 6, scope: !5043, inlinedAt: !4920)
!5043 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 367, column: 6)
!5044 = !DILocation(line: 367, column: 11, scope: !5043, inlinedAt: !4920)
!5045 = !DILocation(line: 367, column: 6, scope: !4916, inlinedAt: !4920)
!5046 = !DILocation(line: 367, column: 26, scope: !5043, inlinedAt: !4920)
!5047 = !DILocation(line: 368, column: 6, scope: !5048, inlinedAt: !4920)
!5048 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 368, column: 6)
!5049 = !DILocation(line: 368, column: 11, scope: !5048, inlinedAt: !4920)
!5050 = !DILocation(line: 368, column: 6, scope: !4916, inlinedAt: !4920)
!5051 = !DILocation(line: 368, column: 26, scope: !5048, inlinedAt: !4920)
!5052 = !DILocation(line: 369, column: 6, scope: !5053, inlinedAt: !4920)
!5053 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 369, column: 6)
!5054 = !DILocation(line: 369, column: 11, scope: !5053, inlinedAt: !4920)
!5055 = !DILocation(line: 369, column: 6, scope: !4916, inlinedAt: !4920)
!5056 = !DILocation(line: 369, column: 26, scope: !5053, inlinedAt: !4920)
!5057 = !DILocation(line: 370, column: 6, scope: !5058, inlinedAt: !4920)
!5058 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 370, column: 6)
!5059 = !DILocation(line: 370, column: 11, scope: !5058, inlinedAt: !4920)
!5060 = !DILocation(line: 370, column: 6, scope: !4916, inlinedAt: !4920)
!5061 = !DILocation(line: 370, column: 26, scope: !5058, inlinedAt: !4920)
!5062 = !DILocation(line: 371, column: 6, scope: !5063, inlinedAt: !4920)
!5063 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 371, column: 6)
!5064 = !DILocation(line: 371, column: 11, scope: !5063, inlinedAt: !4920)
!5065 = !DILocation(line: 371, column: 6, scope: !4916, inlinedAt: !4920)
!5066 = !DILocation(line: 371, column: 26, scope: !5063, inlinedAt: !4920)
!5067 = !DILocation(line: 372, column: 6, scope: !5068, inlinedAt: !4920)
!5068 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 372, column: 6)
!5069 = !DILocation(line: 372, column: 11, scope: !5068, inlinedAt: !4920)
!5070 = !DILocation(line: 372, column: 6, scope: !4916, inlinedAt: !4920)
!5071 = !DILocation(line: 372, column: 26, scope: !5068, inlinedAt: !4920)
!5072 = !DILocation(line: 373, column: 6, scope: !5073, inlinedAt: !4920)
!5073 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 373, column: 6)
!5074 = !DILocation(line: 373, column: 11, scope: !5073, inlinedAt: !4920)
!5075 = !DILocation(line: 373, column: 6, scope: !4916, inlinedAt: !4920)
!5076 = !DILocation(line: 373, column: 26, scope: !5073, inlinedAt: !4920)
!5077 = !DILocation(line: 374, column: 6, scope: !5078, inlinedAt: !4920)
!5078 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 374, column: 6)
!5079 = !DILocation(line: 374, column: 11, scope: !5078, inlinedAt: !4920)
!5080 = !DILocation(line: 374, column: 6, scope: !4916, inlinedAt: !4920)
!5081 = !DILocation(line: 374, column: 26, scope: !5078, inlinedAt: !4920)
!5082 = !DILocation(line: 375, column: 6, scope: !5083, inlinedAt: !4920)
!5083 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 375, column: 6)
!5084 = !DILocation(line: 375, column: 11, scope: !5083, inlinedAt: !4920)
!5085 = !DILocation(line: 375, column: 6, scope: !4916, inlinedAt: !4920)
!5086 = !DILocation(line: 375, column: 27, scope: !5083, inlinedAt: !4920)
!5087 = !DILocation(line: 376, column: 6, scope: !5088, inlinedAt: !4920)
!5088 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 376, column: 6)
!5089 = !DILocation(line: 376, column: 11, scope: !5088, inlinedAt: !4920)
!5090 = !DILocation(line: 376, column: 6, scope: !4916, inlinedAt: !4920)
!5091 = !DILocation(line: 376, column: 32, scope: !5088, inlinedAt: !4920)
!5092 = !DILocation(line: 377, column: 6, scope: !5093, inlinedAt: !4920)
!5093 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 377, column: 6)
!5094 = !DILocation(line: 377, column: 11, scope: !5093, inlinedAt: !4920)
!5095 = !DILocation(line: 377, column: 6, scope: !4916, inlinedAt: !4920)
!5096 = !DILocation(line: 377, column: 32, scope: !5093, inlinedAt: !4920)
!5097 = !DILocation(line: 378, column: 6, scope: !5098, inlinedAt: !4920)
!5098 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 378, column: 6)
!5099 = !DILocation(line: 378, column: 11, scope: !5098, inlinedAt: !4920)
!5100 = !DILocation(line: 378, column: 6, scope: !4916, inlinedAt: !4920)
!5101 = !DILocation(line: 378, column: 32, scope: !5098, inlinedAt: !4920)
!5102 = !DILocation(line: 379, column: 6, scope: !5103, inlinedAt: !4920)
!5103 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 379, column: 6)
!5104 = !DILocation(line: 379, column: 11, scope: !5103, inlinedAt: !4920)
!5105 = !DILocation(line: 379, column: 6, scope: !4916, inlinedAt: !4920)
!5106 = !DILocation(line: 379, column: 33, scope: !5103, inlinedAt: !4920)
!5107 = !DILocation(line: 380, column: 6, scope: !5108, inlinedAt: !4920)
!5108 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 380, column: 6)
!5109 = !DILocation(line: 380, column: 11, scope: !5108, inlinedAt: !4920)
!5110 = !DILocation(line: 380, column: 6, scope: !4916, inlinedAt: !4920)
!5111 = !DILocation(line: 380, column: 33, scope: !5108, inlinedAt: !4920)
!5112 = !DILocation(line: 381, column: 6, scope: !5113, inlinedAt: !4920)
!5113 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 381, column: 6)
!5114 = !DILocation(line: 381, column: 11, scope: !5113, inlinedAt: !4920)
!5115 = !DILocation(line: 381, column: 6, scope: !4916, inlinedAt: !4920)
!5116 = !DILocation(line: 381, column: 33, scope: !5113, inlinedAt: !4920)
!5117 = !DILocation(line: 382, column: 2, scope: !5118, inlinedAt: !4920)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !174, line: 382, column: 2)
!5119 = distinct !DILexicalBlock(scope: !4916, file: !174, line: 382, column: 2)
!5120 = !{i32 -2142995500, i32 -2142995471, i32 -2142995425, i32 -2142995367, i32 -2142995313, i32 -2142995259, i32 -2142995204, i32 -2142995173}
!5121 = !DILocation(line: 382, column: 2, scope: !5122, inlinedAt: !4920)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !174, line: 382, column: 2)
!5123 = distinct !DILexicalBlock(scope: !5119, file: !174, line: 382, column: 2)
!5124 = !{i32 -2142994730, i32 -2142994723, i32 -2142994669, i32 -2142994638, i32 -2142994608}
!5125 = !DILocation(line: 382, column: 2, scope: !5123, inlinedAt: !4920)
!5126 = !DILocation(line: 386, column: 1, scope: !4916, inlinedAt: !4920)
!5127 = !DILocation(line: 547, column: 9, scope: !4899, inlinedAt: !4902)
!5128 = !DILocation(line: 549, column: 8, scope: !5129, inlinedAt: !4902)
!5129 = distinct !DILexicalBlock(scope: !4899, file: !174, line: 549, column: 7)
!5130 = !DILocation(line: 549, column: 7, scope: !4899, inlinedAt: !4902)
!5131 = !DILocation(line: 550, column: 4, scope: !5129, inlinedAt: !4902)
!5132 = !DILocation(line: 553, column: 33, scope: !4899, inlinedAt: !4902)
!5133 = !DILocation(line: 325, column: 6, scope: !5134, inlinedAt: !4914)
!5134 = distinct !DILexicalBlock(scope: !4910, file: !174, line: 325, column: 6)
!5135 = !DILocation(line: 325, column: 6, scope: !4910, inlinedAt: !4914)
!5136 = !DILocation(line: 326, column: 3, scope: !5134, inlinedAt: !4914)
!5137 = !DILocation(line: 332, column: 9, scope: !4910, inlinedAt: !4914)
!5138 = !DILocation(line: 332, column: 15, scope: !4910, inlinedAt: !4914)
!5139 = !DILocation(line: 332, column: 2, scope: !4910, inlinedAt: !4914)
!5140 = !DILocation(line: 336, column: 1, scope: !4910, inlinedAt: !4914)
!5141 = !DILocation(line: 553, column: 5, scope: !4899, inlinedAt: !4902)
!5142 = !DILocation(line: 553, column: 41, scope: !4899, inlinedAt: !4902)
!5143 = !DILocation(line: 554, column: 5, scope: !4899, inlinedAt: !4902)
!5144 = !DILocation(line: 554, column: 12, scope: !4899, inlinedAt: !4902)
!5145 = !DILocation(line: 448, column: 31, scope: !4894, inlinedAt: !4898)
!5146 = !DILocation(line: 448, column: 34, scope: !4894, inlinedAt: !4898)
!5147 = !DILocation(line: 448, column: 14, scope: !4894, inlinedAt: !4898)
!5148 = !DILocation(line: 450, column: 22, scope: !4894, inlinedAt: !4898)
!5149 = !DILocation(line: 450, column: 25, scope: !4894, inlinedAt: !4898)
!5150 = !DILocation(line: 450, column: 30, scope: !4894, inlinedAt: !4898)
!5151 = !DILocation(line: 450, column: 36, scope: !4894, inlinedAt: !4898)
!5152 = !DILocation(line: 450, column: 8, scope: !4894, inlinedAt: !4898)
!5153 = !DILocation(line: 450, column: 6, scope: !4894, inlinedAt: !4898)
!5154 = !DILocation(line: 451, column: 9, scope: !4894, inlinedAt: !4898)
!5155 = !DILocation(line: 552, column: 3, scope: !4899, inlinedAt: !4902)
!5156 = !DILocation(line: 557, column: 19, scope: !4901, inlinedAt: !4902)
!5157 = !DILocation(line: 557, column: 25, scope: !4901, inlinedAt: !4902)
!5158 = !DILocation(line: 557, column: 9, scope: !4901, inlinedAt: !4902)
!5159 = !DILocation(line: 557, column: 2, scope: !4901, inlinedAt: !4902)
!5160 = !DILocation(line: 558, column: 1, scope: !4901, inlinedAt: !4902)
!5161 = !DILocation(line: 664, column: 2, scope: !4890)
!5162 = distinct !DISubprogram(name: "__init_work", scope: !141, file: !141, line: 215, type: !5163, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{null, !1962, !250}
!5165 = !DILocalVariable(name: "work", arg: 1, scope: !5162, file: !141, line: 215, type: !1962)
!5166 = !DILocation(line: 215, column: 52, scope: !5162)
!5167 = !DILocalVariable(name: "onstack", arg: 2, scope: !5162, file: !141, line: 215, type: !250)
!5168 = !DILocation(line: 215, column: 62, scope: !5162)
!5169 = !DILocation(line: 215, column: 73, scope: !5162)
!5170 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5171, file: !5171, line: 33, type: !5172, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5171 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5172 = !DISubroutineType(types: !5173)
!5173 = !{null, !195}
!5174 = !DILocalVariable(name: "list", arg: 1, scope: !5170, file: !5171, line: 33, type: !195)
!5175 = !DILocation(line: 33, column: 53, scope: !5170)
!5176 = !DILocation(line: 35, column: 2, scope: !5170)
!5177 = !DILocation(line: 35, column: 2, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5170, file: !5171, line: 35, column: 2)
!5179 = !DILocation(line: 35, column: 2, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5178, file: !5171, line: 35, column: 2)
!5181 = !DILocation(line: 35, column: 2, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5178, file: !5171, line: 35, column: 2)
!5183 = !DILocation(line: 36, column: 15, scope: !5170)
!5184 = !DILocation(line: 36, column: 2, scope: !5170)
!5185 = !DILocation(line: 36, column: 8, scope: !5170)
!5186 = !DILocation(line: 36, column: 13, scope: !5170)
!5187 = !DILocation(line: 37, column: 1, scope: !5170)
!5188 = distinct !DISubprogram(name: "xen_pcibk_init_devices", scope: !202, file: !202, line: 164, type: !4318, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5189 = !DILocalVariable(name: "pdev", arg: 1, scope: !5188, file: !202, line: 164, type: !200)
!5190 = !DILocation(line: 164, column: 67, scope: !5188)
!5191 = !DILocation(line: 166, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5188, file: !202, line: 166, column: 6)
!5193 = !DILocation(line: 166, column: 24, scope: !5192)
!5194 = !DILocation(line: 166, column: 27, scope: !5192)
!5195 = !DILocation(line: 166, column: 46, scope: !5192)
!5196 = !DILocation(line: 166, column: 6, scope: !5188)
!5197 = !DILocation(line: 167, column: 10, scope: !5192)
!5198 = !DILocation(line: 167, column: 29, scope: !5192)
!5199 = !DILocation(line: 167, column: 34, scope: !5192)
!5200 = !DILocation(line: 167, column: 3, scope: !5192)
!5201 = !DILocation(line: 168, column: 2, scope: !5188)
!5202 = !DILocation(line: 169, column: 1, scope: !5188)
!5203 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5204, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{null, !3368, !189}
!5206 = !DILocalVariable(name: "dev", arg: 1, scope: !5203, file: !73, line: 660, type: !3368)
!5207 = !DILocation(line: 660, column: 51, scope: !5203)
!5208 = !DILocalVariable(name: "data", arg: 2, scope: !5203, file: !73, line: 660, type: !189)
!5209 = !DILocation(line: 660, column: 62, scope: !5203)
!5210 = !DILocation(line: 662, column: 21, scope: !5203)
!5211 = !DILocation(line: 662, column: 2, scope: !5203)
!5212 = !DILocation(line: 662, column: 7, scope: !5203)
!5213 = !DILocation(line: 662, column: 19, scope: !5203)
!5214 = !DILocation(line: 663, column: 1, scope: !5203)
!5215 = distinct !DISubprogram(name: "get_order", scope: !5216, file: !5216, line: 29, type: !5217, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5216 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!250, !192}
!5219 = !DILocalVariable(name: "x", arg: 1, scope: !5220, file: !5221, line: 366, type: !448)
!5220 = distinct !DISubprogram(name: "fls64", scope: !5221, file: !5221, line: 366, type: !5222, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5221 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!250, !448}
!5224 = !DILocation(line: 366, column: 40, scope: !5220, inlinedAt: !5225)
!5225 = distinct !DILocation(line: 46, column: 9, scope: !5215)
!5226 = !DILocalVariable(name: "bitpos", scope: !5220, file: !5221, line: 368, type: !250)
!5227 = !DILocation(line: 368, column: 6, scope: !5220, inlinedAt: !5225)
!5228 = !DILocalVariable(name: "size", arg: 1, scope: !5215, file: !5216, line: 29, type: !192)
!5229 = !DILocation(line: 29, column: 63, scope: !5215)
!5230 = !DILocation(line: 31, column: 27, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5215, file: !5216, line: 31, column: 6)
!5232 = !DILocation(line: 31, column: 6, scope: !5231)
!5233 = !DILocation(line: 31, column: 6, scope: !5215)
!5234 = !DILocation(line: 32, column: 8, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !5216, line: 32, column: 7)
!5236 = distinct !DILexicalBlock(scope: !5231, file: !5216, line: 31, column: 34)
!5237 = !DILocation(line: 32, column: 7, scope: !5236)
!5238 = !DILocation(line: 33, column: 4, scope: !5235)
!5239 = !DILocation(line: 35, column: 7, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5236, file: !5216, line: 35, column: 7)
!5241 = !DILocation(line: 35, column: 12, scope: !5240)
!5242 = !DILocation(line: 35, column: 7, scope: !5236)
!5243 = !DILocation(line: 36, column: 4, scope: !5240)
!5244 = !DILocation(line: 38, column: 10, scope: !5236)
!5245 = !DILocation(line: 38, column: 28, scope: !5236)
!5246 = !DILocation(line: 38, column: 41, scope: !5236)
!5247 = !DILocation(line: 38, column: 3, scope: !5236)
!5248 = !DILocation(line: 41, column: 6, scope: !5215)
!5249 = !DILocation(line: 42, column: 7, scope: !5215)
!5250 = !DILocation(line: 46, column: 15, scope: !5215)
!5251 = !DILocation(line: 374, column: 2, scope: !5220, inlinedAt: !5225)
!5252 = !DILocation(line: 376, column: 14, scope: !5220, inlinedAt: !5225)
!5253 = !{i32 291048}
!5254 = !DILocation(line: 377, column: 9, scope: !5220, inlinedAt: !5225)
!5255 = !DILocation(line: 377, column: 16, scope: !5220, inlinedAt: !5225)
!5256 = !DILocation(line: 46, column: 2, scope: !5215)
!5257 = !DILocation(line: 48, column: 1, scope: !5215)
!5258 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5259, file: !5259, line: 30, type: !5260, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5259 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!250, !447}
!5262 = !DILocation(line: 366, column: 40, scope: !5220, inlinedAt: !5263)
!5263 = distinct !DILocation(line: 32, column: 9, scope: !5258)
!5264 = !DILocation(line: 368, column: 6, scope: !5220, inlinedAt: !5263)
!5265 = !DILocalVariable(name: "n", arg: 1, scope: !5258, file: !5259, line: 30, type: !447)
!5266 = !DILocation(line: 30, column: 21, scope: !5258)
!5267 = !DILocation(line: 32, column: 15, scope: !5258)
!5268 = !DILocation(line: 374, column: 2, scope: !5220, inlinedAt: !5263)
!5269 = !DILocation(line: 376, column: 14, scope: !5220, inlinedAt: !5263)
!5270 = !DILocation(line: 377, column: 9, scope: !5220, inlinedAt: !5263)
!5271 = !DILocation(line: 377, column: 16, scope: !5220, inlinedAt: !5263)
!5272 = !DILocation(line: 32, column: 18, scope: !5258)
!5273 = !DILocation(line: 32, column: 2, scope: !5258)
!5274 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5275, file: !5275, line: 137, type: !5276, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5275 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!189, !952, !2122, !350, !190}
!5278 = !DILocalVariable(name: "s", arg: 1, scope: !5274, file: !5275, line: 137, type: !952)
!5279 = !DILocation(line: 137, column: 54, scope: !5274)
!5280 = !DILocalVariable(name: "object", arg: 2, scope: !5274, file: !5275, line: 137, type: !2122)
!5281 = !DILocation(line: 137, column: 69, scope: !5274)
!5282 = !DILocalVariable(name: "size", arg: 3, scope: !5274, file: !5275, line: 138, type: !350)
!5283 = !DILocation(line: 138, column: 12, scope: !5274)
!5284 = !DILocalVariable(name: "flags", arg: 4, scope: !5274, file: !5275, line: 138, type: !190)
!5285 = !DILocation(line: 138, column: 24, scope: !5274)
!5286 = !DILocation(line: 140, column: 17, scope: !5274)
!5287 = !DILocation(line: 140, column: 2, scope: !5274)
!5288 = distinct !DISubprogram(name: "xen_pcibk_setup_backend", scope: !3, file: !3, line: 559, type: !4318, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5289 = !DILocalVariable(name: "pdev", arg: 1, scope: !5288, file: !3, line: 559, type: !200)
!5290 = !DILocation(line: 559, column: 61, scope: !5288)
!5291 = !DILocalVariable(name: "domain", scope: !5288, file: !3, line: 562, type: !250)
!5292 = !DILocation(line: 562, column: 6, scope: !5288)
!5293 = !DILocalVariable(name: "bus", scope: !5288, file: !3, line: 562, type: !250)
!5294 = !DILocation(line: 562, column: 14, scope: !5288)
!5295 = !DILocalVariable(name: "slot", scope: !5288, file: !3, line: 562, type: !250)
!5296 = !DILocation(line: 562, column: 19, scope: !5288)
!5297 = !DILocalVariable(name: "func", scope: !5288, file: !3, line: 562, type: !250)
!5298 = !DILocation(line: 562, column: 25, scope: !5288)
!5299 = !DILocalVariable(name: "err", scope: !5288, file: !3, line: 563, type: !250)
!5300 = !DILocation(line: 563, column: 6, scope: !5288)
!5301 = !DILocalVariable(name: "i", scope: !5288, file: !3, line: 564, type: !250)
!5302 = !DILocation(line: 564, column: 6, scope: !5288)
!5303 = !DILocalVariable(name: "num_devs", scope: !5288, file: !3, line: 564, type: !250)
!5304 = !DILocation(line: 564, column: 9, scope: !5288)
!5305 = !DILocalVariable(name: "dev_str", scope: !5288, file: !3, line: 565, type: !5306)
!5306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 512, elements: !309)
!5307 = !DILocation(line: 565, column: 7, scope: !5288)
!5308 = !DILocalVariable(name: "state_str", scope: !5288, file: !3, line: 566, type: !5306)
!5309 = !DILocation(line: 566, column: 7, scope: !5288)
!5310 = !DILocation(line: 568, column: 14, scope: !5288)
!5311 = !DILocation(line: 568, column: 20, scope: !5288)
!5312 = !DILocation(line: 568, column: 2, scope: !5288)
!5313 = !DILocation(line: 572, column: 31, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 572, column: 6)
!5315 = !DILocation(line: 572, column: 37, scope: !5314)
!5316 = !DILocation(line: 572, column: 43, scope: !5314)
!5317 = !DILocation(line: 572, column: 6, scope: !5314)
!5318 = !DILocation(line: 572, column: 53, scope: !5314)
!5319 = !DILocation(line: 572, column: 6, scope: !5288)
!5320 = !DILocation(line: 574, column: 3, scope: !5314)
!5321 = !DILocation(line: 578, column: 21, scope: !5288)
!5322 = !DILocation(line: 578, column: 30, scope: !5288)
!5323 = !DILocation(line: 578, column: 36, scope: !5288)
!5324 = !DILocation(line: 578, column: 42, scope: !5288)
!5325 = !DILocation(line: 578, column: 8, scope: !5288)
!5326 = !DILocation(line: 578, column: 6, scope: !5288)
!5327 = !DILocation(line: 580, column: 6, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 580, column: 6)
!5329 = !DILocation(line: 580, column: 10, scope: !5328)
!5330 = !DILocation(line: 580, column: 6, scope: !5288)
!5331 = !DILocation(line: 581, column: 7, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 581, column: 7)
!5333 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 580, column: 16)
!5334 = !DILocation(line: 581, column: 11, scope: !5332)
!5335 = !DILocation(line: 581, column: 7, scope: !5333)
!5336 = !DILocation(line: 582, column: 8, scope: !5332)
!5337 = !DILocation(line: 582, column: 4, scope: !5332)
!5338 = !DILocation(line: 583, column: 20, scope: !5333)
!5339 = !DILocation(line: 583, column: 26, scope: !5333)
!5340 = !DILocation(line: 583, column: 32, scope: !5333)
!5341 = !DILocation(line: 583, column: 3, scope: !5333)
!5342 = !DILocation(line: 585, column: 3, scope: !5333)
!5343 = !DILocation(line: 588, column: 9, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 588, column: 2)
!5345 = !DILocation(line: 588, column: 7, scope: !5344)
!5346 = !DILocation(line: 588, column: 14, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 588, column: 2)
!5348 = !DILocation(line: 588, column: 18, scope: !5347)
!5349 = !DILocation(line: 588, column: 16, scope: !5347)
!5350 = !DILocation(line: 588, column: 2, scope: !5344)
!5351 = !DILocalVariable(name: "l", scope: !5352, file: !3, line: 589, type: !250)
!5352 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 588, column: 33)
!5353 = !DILocation(line: 589, column: 7, scope: !5352)
!5354 = !DILocation(line: 589, column: 20, scope: !5352)
!5355 = !DILocation(line: 589, column: 56, scope: !5352)
!5356 = !DILocation(line: 589, column: 11, scope: !5352)
!5357 = !DILocation(line: 590, column: 7, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 590, column: 7)
!5359 = !DILocation(line: 590, column: 7, scope: !5352)
!5360 = !DILocation(line: 591, column: 8, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 590, column: 45)
!5362 = !DILocation(line: 592, column: 21, scope: !5361)
!5363 = !DILocation(line: 592, column: 27, scope: !5361)
!5364 = !DILocation(line: 592, column: 33, scope: !5361)
!5365 = !DILocation(line: 592, column: 4, scope: !5361)
!5366 = !DILocation(line: 595, column: 4, scope: !5361)
!5367 = !DILocation(line: 598, column: 22, scope: !5352)
!5368 = !DILocation(line: 598, column: 31, scope: !5352)
!5369 = !DILocation(line: 598, column: 37, scope: !5352)
!5370 = !DILocation(line: 598, column: 43, scope: !5352)
!5371 = !DILocation(line: 598, column: 53, scope: !5352)
!5372 = !DILocation(line: 598, column: 9, scope: !5352)
!5373 = !DILocation(line: 598, column: 7, scope: !5352)
!5374 = !DILocation(line: 600, column: 7, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 600, column: 7)
!5376 = !DILocation(line: 600, column: 11, scope: !5375)
!5377 = !DILocation(line: 600, column: 7, scope: !5352)
!5378 = !DILocation(line: 601, column: 21, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 600, column: 16)
!5380 = !DILocation(line: 601, column: 27, scope: !5379)
!5381 = !DILocation(line: 601, column: 33, scope: !5379)
!5382 = !DILocation(line: 601, column: 4, scope: !5379)
!5383 = !DILocation(line: 603, column: 4, scope: !5379)
!5384 = !DILocation(line: 605, column: 7, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 605, column: 7)
!5386 = !DILocation(line: 605, column: 11, scope: !5385)
!5387 = !DILocation(line: 605, column: 7, scope: !5352)
!5388 = !DILocation(line: 606, column: 8, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 605, column: 17)
!5390 = !DILocation(line: 607, column: 21, scope: !5389)
!5391 = !DILocation(line: 607, column: 27, scope: !5389)
!5392 = !DILocation(line: 607, column: 33, scope: !5389)
!5393 = !DILocation(line: 607, column: 4, scope: !5389)
!5394 = !DILocation(line: 610, column: 4, scope: !5389)
!5395 = !DILocation(line: 613, column: 33, scope: !5352)
!5396 = !DILocation(line: 613, column: 39, scope: !5352)
!5397 = !DILocation(line: 613, column: 47, scope: !5352)
!5398 = !DILocation(line: 613, column: 52, scope: !5352)
!5399 = !DILocation(line: 613, column: 58, scope: !5352)
!5400 = !DILocation(line: 613, column: 64, scope: !5352)
!5401 = !DILocation(line: 613, column: 9, scope: !5352)
!5402 = !DILocation(line: 613, column: 7, scope: !5352)
!5403 = !DILocation(line: 614, column: 7, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 614, column: 7)
!5405 = !DILocation(line: 614, column: 7, scope: !5352)
!5406 = !DILocation(line: 615, column: 4, scope: !5404)
!5407 = !DILocation(line: 618, column: 16, scope: !5352)
!5408 = !DILocation(line: 618, column: 58, scope: !5352)
!5409 = !DILocation(line: 618, column: 7, scope: !5352)
!5410 = !DILocation(line: 618, column: 5, scope: !5352)
!5411 = !DILocation(line: 619, column: 7, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 619, column: 7)
!5413 = !DILocation(line: 619, column: 7, scope: !5352)
!5414 = !DILocation(line: 620, column: 8, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 619, column: 47)
!5416 = !DILocation(line: 621, column: 21, scope: !5415)
!5417 = !DILocation(line: 621, column: 27, scope: !5415)
!5418 = !DILocation(line: 621, column: 33, scope: !5415)
!5419 = !DILocation(line: 621, column: 4, scope: !5415)
!5420 = !DILocation(line: 624, column: 4, scope: !5415)
!5421 = !DILocation(line: 626, column: 23, scope: !5352)
!5422 = !DILocation(line: 626, column: 32, scope: !5352)
!5423 = !DILocation(line: 626, column: 38, scope: !5352)
!5424 = !DILocation(line: 626, column: 44, scope: !5352)
!5425 = !DILocation(line: 626, column: 54, scope: !5352)
!5426 = !DILocation(line: 626, column: 9, scope: !5352)
!5427 = !DILocation(line: 626, column: 7, scope: !5352)
!5428 = !DILocation(line: 628, column: 7, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 628, column: 7)
!5430 = !DILocation(line: 628, column: 7, scope: !5352)
!5431 = !DILocation(line: 629, column: 21, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 628, column: 12)
!5433 = !DILocation(line: 629, column: 27, scope: !5432)
!5434 = !DILocation(line: 629, column: 33, scope: !5432)
!5435 = !DILocation(line: 630, column: 31, scope: !5432)
!5436 = !DILocation(line: 629, column: 4, scope: !5432)
!5437 = !DILocation(line: 631, column: 4, scope: !5432)
!5438 = !DILocation(line: 633, column: 2, scope: !5352)
!5439 = !DILocation(line: 588, column: 29, scope: !5347)
!5440 = !DILocation(line: 588, column: 2, scope: !5347)
!5441 = distinct !{!5441, !5350, !5442}
!5442 = !DILocation(line: 633, column: 2, scope: !5344)
!5443 = !DILocation(line: 635, column: 36, scope: !5288)
!5444 = !DILocation(line: 635, column: 8, scope: !5288)
!5445 = !DILocation(line: 635, column: 6, scope: !5288)
!5446 = !DILocation(line: 636, column: 6, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 636, column: 6)
!5448 = !DILocation(line: 636, column: 6, scope: !5288)
!5449 = !DILocation(line: 637, column: 20, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 636, column: 11)
!5451 = !DILocation(line: 637, column: 26, scope: !5450)
!5452 = !DILocation(line: 637, column: 32, scope: !5450)
!5453 = !DILocation(line: 637, column: 3, scope: !5450)
!5454 = !DILocation(line: 640, column: 3, scope: !5450)
!5455 = !DILocation(line: 643, column: 28, scope: !5288)
!5456 = !DILocation(line: 643, column: 34, scope: !5288)
!5457 = !DILocation(line: 643, column: 8, scope: !5288)
!5458 = !DILocation(line: 643, column: 6, scope: !5288)
!5459 = !DILocation(line: 644, column: 6, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 644, column: 6)
!5461 = !DILocation(line: 644, column: 6, scope: !5288)
!5462 = !DILocation(line: 645, column: 20, scope: !5460)
!5463 = !DILocation(line: 645, column: 26, scope: !5460)
!5464 = !DILocation(line: 645, column: 32, scope: !5460)
!5465 = !DILocation(line: 645, column: 3, scope: !5460)
!5466 = !DILabel(scope: !5288, name: "out", file: !3, line: 648)
!5467 = !DILocation(line: 648, column: 1, scope: !5288)
!5468 = !DILocation(line: 649, column: 16, scope: !5288)
!5469 = !DILocation(line: 649, column: 22, scope: !5288)
!5470 = !DILocation(line: 649, column: 2, scope: !5288)
!5471 = !DILocation(line: 650, column: 7, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 650, column: 6)
!5473 = !DILocation(line: 650, column: 6, scope: !5288)
!5474 = !DILocation(line: 652, column: 20, scope: !5472)
!5475 = !DILocation(line: 652, column: 3, scope: !5472)
!5476 = !DILocation(line: 653, column: 9, scope: !5288)
!5477 = !DILocation(line: 653, column: 2, scope: !5288)
!5478 = distinct !DISubprogram(name: "xen_pcibk_export_device", scope: !3, file: !3, line: 226, type: !5479, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!250, !200, !250, !250, !250, !250, !250}
!5481 = !DILocalVariable(name: "pdev", arg: 1, scope: !5478, file: !3, line: 226, type: !200)
!5482 = !DILocation(line: 226, column: 61, scope: !5478)
!5483 = !DILocalVariable(name: "domain", arg: 2, scope: !5478, file: !3, line: 227, type: !250)
!5484 = !DILocation(line: 227, column: 10, scope: !5478)
!5485 = !DILocalVariable(name: "bus", arg: 3, scope: !5478, file: !3, line: 227, type: !250)
!5486 = !DILocation(line: 227, column: 22, scope: !5478)
!5487 = !DILocalVariable(name: "slot", arg: 4, scope: !5478, file: !3, line: 227, type: !250)
!5488 = !DILocation(line: 227, column: 31, scope: !5478)
!5489 = !DILocalVariable(name: "func", arg: 5, scope: !5478, file: !3, line: 227, type: !250)
!5490 = !DILocation(line: 227, column: 41, scope: !5478)
!5491 = !DILocalVariable(name: "devid", arg: 6, scope: !5478, file: !3, line: 228, type: !250)
!5492 = !DILocation(line: 228, column: 10, scope: !5478)
!5493 = !DILocalVariable(name: "dev", scope: !5478, file: !3, line: 230, type: !4328)
!5494 = !DILocation(line: 230, column: 18, scope: !5478)
!5495 = !DILocalVariable(name: "err", scope: !5478, file: !3, line: 231, type: !250)
!5496 = !DILocation(line: 231, column: 6, scope: !5478)
!5497 = !DILocation(line: 236, column: 36, scope: !5478)
!5498 = !DILocation(line: 236, column: 42, scope: !5478)
!5499 = !DILocation(line: 236, column: 50, scope: !5478)
!5500 = !DILocation(line: 236, column: 55, scope: !5478)
!5501 = !DILocation(line: 236, column: 61, scope: !5478)
!5502 = !DILocation(line: 236, column: 8, scope: !5478)
!5503 = !DILocation(line: 236, column: 6, scope: !5478)
!5504 = !DILocation(line: 237, column: 7, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 237, column: 6)
!5506 = !DILocation(line: 237, column: 6, scope: !5478)
!5507 = !DILocation(line: 238, column: 7, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 237, column: 12)
!5509 = !DILocation(line: 239, column: 20, scope: !5508)
!5510 = !DILocation(line: 239, column: 26, scope: !5508)
!5511 = !DILocation(line: 239, column: 32, scope: !5508)
!5512 = !DILocation(line: 243, column: 6, scope: !5508)
!5513 = !DILocation(line: 243, column: 14, scope: !5508)
!5514 = !DILocation(line: 243, column: 19, scope: !5508)
!5515 = !DILocation(line: 243, column: 25, scope: !5508)
!5516 = !DILocation(line: 239, column: 3, scope: !5508)
!5517 = !DILocation(line: 244, column: 3, scope: !5508)
!5518 = !DILocation(line: 247, column: 30, scope: !5478)
!5519 = !DILocation(line: 247, column: 36, scope: !5478)
!5520 = !DILocation(line: 247, column: 41, scope: !5478)
!5521 = !DILocation(line: 247, column: 8, scope: !5478)
!5522 = !DILocation(line: 247, column: 6, scope: !5478)
!5523 = !DILocation(line: 249, column: 6, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 249, column: 6)
!5525 = !DILocation(line: 249, column: 6, scope: !5478)
!5526 = !DILocation(line: 250, column: 3, scope: !5524)
!5527 = !DILocation(line: 252, column: 2, scope: !5478)
!5528 = !DILocation(line: 253, column: 39, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 253, column: 6)
!5530 = !DILocation(line: 254, column: 11, scope: !5529)
!5531 = !DILocation(line: 254, column: 17, scope: !5529)
!5532 = !DILocation(line: 254, column: 23, scope: !5529)
!5533 = !DILocation(line: 253, column: 6, scope: !5529)
!5534 = !DILocation(line: 254, column: 36, scope: !5529)
!5535 = !DILocation(line: 253, column: 6, scope: !5478)
!5536 = !DILocation(line: 255, column: 3, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 254, column: 42)
!5538 = !DILocation(line: 257, column: 38, scope: !5537)
!5539 = !DILocation(line: 257, column: 3, scope: !5537)
!5540 = !DILocation(line: 258, column: 36, scope: !5537)
!5541 = !DILocation(line: 258, column: 41, scope: !5537)
!5542 = !DILocation(line: 258, column: 47, scope: !5537)
!5543 = !DILocation(line: 258, column: 53, scope: !5537)
!5544 = !DILocation(line: 258, column: 3, scope: !5537)
!5545 = !DILocation(line: 259, column: 2, scope: !5537)
!5546 = !DILocation(line: 254, column: 39, scope: !5529)
!5547 = !DILabel(scope: !5478, name: "out", file: !3, line: 269)
!5548 = !DILocation(line: 269, column: 1, scope: !5478)
!5549 = !DILocation(line: 270, column: 9, scope: !5478)
!5550 = !DILocation(line: 270, column: 2, scope: !5478)
!5551 = distinct !DISubprogram(name: "xen_pcibk_publish_pci_roots", scope: !202, file: !202, line: 171, type: !4621, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5552 = !DILocalVariable(name: "pdev", arg: 1, scope: !5551, file: !202, line: 171, type: !200)
!5553 = !DILocation(line: 171, column: 72, scope: !5551)
!5554 = !DILocalVariable(name: "cb", arg: 2, scope: !5551, file: !202, line: 172, type: !4623)
!5555 = !DILocation(line: 172, column: 32, scope: !5551)
!5556 = !DILocation(line: 174, column: 6, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5551, file: !202, line: 174, column: 6)
!5558 = !DILocation(line: 174, column: 24, scope: !5557)
!5559 = !DILocation(line: 174, column: 27, scope: !5557)
!5560 = !DILocation(line: 174, column: 46, scope: !5557)
!5561 = !DILocation(line: 174, column: 6, scope: !5551)
!5562 = !DILocation(line: 175, column: 10, scope: !5557)
!5563 = !DILocation(line: 175, column: 29, scope: !5557)
!5564 = !DILocation(line: 175, column: 37, scope: !5557)
!5565 = !DILocation(line: 175, column: 43, scope: !5557)
!5566 = !DILocation(line: 175, column: 3, scope: !5557)
!5567 = !DILocation(line: 176, column: 2, scope: !5551)
!5568 = !DILocation(line: 177, column: 1, scope: !5551)
!5569 = distinct !DISubprogram(name: "xen_pcibk_publish_pci_root", scope: !3, file: !3, line: 302, type: !4625, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5570 = !DILocalVariable(name: "pdev", arg: 1, scope: !5569, file: !3, line: 302, type: !200)
!5571 = !DILocation(line: 302, column: 64, scope: !5569)
!5572 = !DILocalVariable(name: "domain", arg: 2, scope: !5569, file: !3, line: 303, type: !7)
!5573 = !DILocation(line: 303, column: 22, scope: !5569)
!5574 = !DILocalVariable(name: "bus", arg: 3, scope: !5569, file: !3, line: 303, type: !7)
!5575 = !DILocation(line: 303, column: 43, scope: !5569)
!5576 = !DILocalVariable(name: "d", scope: !5569, file: !3, line: 305, type: !7)
!5577 = !DILocation(line: 305, column: 15, scope: !5569)
!5578 = !DILocalVariable(name: "b", scope: !5569, file: !3, line: 305, type: !7)
!5579 = !DILocation(line: 305, column: 18, scope: !5569)
!5580 = !DILocalVariable(name: "i", scope: !5569, file: !3, line: 306, type: !250)
!5581 = !DILocation(line: 306, column: 6, scope: !5569)
!5582 = !DILocalVariable(name: "root_num", scope: !5569, file: !3, line: 306, type: !250)
!5583 = !DILocation(line: 306, column: 9, scope: !5569)
!5584 = !DILocalVariable(name: "len", scope: !5569, file: !3, line: 306, type: !250)
!5585 = !DILocation(line: 306, column: 19, scope: !5569)
!5586 = !DILocalVariable(name: "err", scope: !5569, file: !3, line: 306, type: !250)
!5587 = !DILocation(line: 306, column: 24, scope: !5569)
!5588 = !DILocalVariable(name: "str", scope: !5569, file: !3, line: 307, type: !5306)
!5589 = !DILocation(line: 307, column: 7, scope: !5569)
!5590 = !DILocation(line: 311, column: 21, scope: !5569)
!5591 = !DILocation(line: 311, column: 30, scope: !5569)
!5592 = !DILocation(line: 311, column: 36, scope: !5569)
!5593 = !DILocation(line: 311, column: 42, scope: !5569)
!5594 = !DILocation(line: 311, column: 8, scope: !5569)
!5595 = !DILocation(line: 311, column: 6, scope: !5569)
!5596 = !DILocation(line: 313, column: 6, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 313, column: 6)
!5598 = !DILocation(line: 313, column: 10, scope: !5597)
!5599 = !DILocation(line: 313, column: 15, scope: !5597)
!5600 = !DILocation(line: 313, column: 18, scope: !5597)
!5601 = !DILocation(line: 313, column: 22, scope: !5597)
!5602 = !DILocation(line: 313, column: 6, scope: !5569)
!5603 = !DILocation(line: 314, column: 12, scope: !5597)
!5604 = !DILocation(line: 314, column: 3, scope: !5597)
!5605 = !DILocation(line: 315, column: 11, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 315, column: 11)
!5607 = !DILocation(line: 315, column: 15, scope: !5606)
!5608 = !DILocation(line: 315, column: 11, scope: !5597)
!5609 = !DILocation(line: 316, column: 3, scope: !5606)
!5610 = !DILocation(line: 319, column: 9, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 319, column: 2)
!5612 = !DILocation(line: 319, column: 7, scope: !5611)
!5613 = !DILocation(line: 319, column: 14, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 319, column: 2)
!5615 = !DILocation(line: 319, column: 18, scope: !5614)
!5616 = !DILocation(line: 319, column: 16, scope: !5614)
!5617 = !DILocation(line: 319, column: 2, scope: !5611)
!5618 = !DILocation(line: 320, column: 18, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 319, column: 33)
!5620 = !DILocation(line: 320, column: 47, scope: !5619)
!5621 = !DILocation(line: 320, column: 9, scope: !5619)
!5622 = !DILocation(line: 320, column: 7, scope: !5619)
!5623 = !DILocation(line: 321, column: 7, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 321, column: 7)
!5625 = !DILocation(line: 321, column: 7, scope: !5619)
!5626 = !DILocation(line: 322, column: 8, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 321, column: 43)
!5628 = !DILocation(line: 323, column: 4, scope: !5627)
!5629 = !DILocation(line: 326, column: 22, scope: !5619)
!5630 = !DILocation(line: 326, column: 31, scope: !5619)
!5631 = !DILocation(line: 326, column: 37, scope: !5619)
!5632 = !DILocation(line: 326, column: 43, scope: !5619)
!5633 = !DILocation(line: 327, column: 8, scope: !5619)
!5634 = !DILocation(line: 326, column: 9, scope: !5619)
!5635 = !DILocation(line: 326, column: 7, scope: !5619)
!5636 = !DILocation(line: 328, column: 7, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 328, column: 7)
!5638 = !DILocation(line: 328, column: 11, scope: !5637)
!5639 = !DILocation(line: 328, column: 7, scope: !5619)
!5640 = !DILocation(line: 329, column: 4, scope: !5637)
!5641 = !DILocation(line: 330, column: 7, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 330, column: 7)
!5643 = !DILocation(line: 330, column: 11, scope: !5642)
!5644 = !DILocation(line: 330, column: 7, scope: !5619)
!5645 = !DILocation(line: 331, column: 8, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 330, column: 17)
!5647 = !DILocation(line: 332, column: 4, scope: !5646)
!5648 = !DILocation(line: 335, column: 7, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 335, column: 7)
!5650 = !DILocation(line: 335, column: 12, scope: !5649)
!5651 = !DILocation(line: 335, column: 9, scope: !5649)
!5652 = !DILocation(line: 335, column: 19, scope: !5649)
!5653 = !DILocation(line: 335, column: 22, scope: !5649)
!5654 = !DILocation(line: 335, column: 27, scope: !5649)
!5655 = !DILocation(line: 335, column: 24, scope: !5649)
!5656 = !DILocation(line: 335, column: 7, scope: !5619)
!5657 = !DILocation(line: 336, column: 8, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 335, column: 32)
!5659 = !DILocation(line: 337, column: 4, scope: !5658)
!5660 = !DILocation(line: 339, column: 2, scope: !5619)
!5661 = !DILocation(line: 319, column: 29, scope: !5614)
!5662 = !DILocation(line: 319, column: 2, scope: !5614)
!5663 = distinct !{!5663, !5617, !5664}
!5664 = !DILocation(line: 339, column: 2, scope: !5611)
!5665 = !DILocation(line: 341, column: 17, scope: !5569)
!5666 = !DILocation(line: 341, column: 46, scope: !5569)
!5667 = !DILocation(line: 341, column: 8, scope: !5569)
!5668 = !DILocation(line: 341, column: 6, scope: !5569)
!5669 = !DILocation(line: 342, column: 6, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 342, column: 6)
!5671 = !DILocation(line: 342, column: 6, scope: !5569)
!5672 = !DILocation(line: 343, column: 7, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 342, column: 42)
!5674 = !DILocation(line: 344, column: 3, scope: !5673)
!5675 = !DILocation(line: 350, column: 22, scope: !5569)
!5676 = !DILocation(line: 350, column: 31, scope: !5569)
!5677 = !DILocation(line: 350, column: 37, scope: !5569)
!5678 = !DILocation(line: 350, column: 43, scope: !5569)
!5679 = !DILocation(line: 350, column: 53, scope: !5569)
!5680 = !DILocation(line: 351, column: 21, scope: !5569)
!5681 = !DILocation(line: 351, column: 29, scope: !5569)
!5682 = !DILocation(line: 350, column: 8, scope: !5569)
!5683 = !DILocation(line: 350, column: 6, scope: !5569)
!5684 = !DILocation(line: 352, column: 6, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 352, column: 6)
!5686 = !DILocation(line: 352, column: 6, scope: !5569)
!5687 = !DILocation(line: 353, column: 3, scope: !5685)
!5688 = !DILocation(line: 355, column: 22, scope: !5569)
!5689 = !DILocation(line: 355, column: 31, scope: !5569)
!5690 = !DILocation(line: 355, column: 37, scope: !5569)
!5691 = !DILocation(line: 355, column: 43, scope: !5569)
!5692 = !DILocation(line: 356, column: 27, scope: !5569)
!5693 = !DILocation(line: 356, column: 36, scope: !5569)
!5694 = !DILocation(line: 355, column: 8, scope: !5569)
!5695 = !DILocation(line: 355, column: 6, scope: !5569)
!5696 = !DILocation(line: 355, column: 2, scope: !5569)
!5697 = !DILabel(scope: !5569, name: "out", file: !3, line: 358)
!5698 = !DILocation(line: 358, column: 1, scope: !5569)
!5699 = !DILocation(line: 359, column: 9, scope: !5569)
!5700 = !DILocation(line: 359, column: 2, scope: !5569)
!5701 = distinct !DISubprogram(name: "xen_pcibk_attach", scope: !3, file: !3, line: 142, type: !4318, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5702 = !DILocalVariable(name: "pdev", arg: 1, scope: !5701, file: !3, line: 142, type: !200)
!5703 = !DILocation(line: 142, column: 54, scope: !5701)
!5704 = !DILocalVariable(name: "err", scope: !5701, file: !3, line: 144, type: !250)
!5705 = !DILocation(line: 144, column: 6, scope: !5701)
!5706 = !DILocalVariable(name: "gnt_ref", scope: !5701, file: !3, line: 145, type: !250)
!5707 = !DILocation(line: 145, column: 6, scope: !5701)
!5708 = !DILocalVariable(name: "remote_evtchn", scope: !5701, file: !3, line: 146, type: !5709)
!5709 = !DIDerivedType(tag: DW_TAG_typedef, name: "evtchn_port_t", file: !5710, line: 15, baseType: !583)
!5710 = !DIFile(filename: "./include/xen/interface/event_channel.h", directory: "/home/lizy2001/genbc/linux")
!5711 = !DILocation(line: 146, column: 16, scope: !5701)
!5712 = !DILocalVariable(name: "magic", scope: !5701, file: !3, line: 147, type: !304)
!5713 = !DILocation(line: 147, column: 8, scope: !5701)
!5714 = !DILocation(line: 150, column: 14, scope: !5701)
!5715 = !DILocation(line: 150, column: 20, scope: !5701)
!5716 = !DILocation(line: 150, column: 2, scope: !5701)
!5717 = !DILocation(line: 152, column: 31, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 152, column: 6)
!5719 = !DILocation(line: 152, column: 37, scope: !5718)
!5720 = !DILocation(line: 152, column: 43, scope: !5718)
!5721 = !DILocation(line: 152, column: 6, scope: !5718)
!5722 = !DILocation(line: 152, column: 53, scope: !5718)
!5723 = !DILocation(line: 152, column: 6, scope: !5701)
!5724 = !DILocation(line: 154, column: 3, scope: !5718)
!5725 = !DILocation(line: 157, column: 31, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 157, column: 6)
!5727 = !DILocation(line: 157, column: 37, scope: !5726)
!5728 = !DILocation(line: 157, column: 43, scope: !5726)
!5729 = !DILocation(line: 157, column: 6, scope: !5726)
!5730 = !DILocation(line: 157, column: 53, scope: !5726)
!5731 = !DILocation(line: 157, column: 6, scope: !5701)
!5732 = !DILocation(line: 159, column: 3, scope: !5726)
!5733 = !DILocation(line: 163, column: 22, scope: !5701)
!5734 = !DILocation(line: 163, column: 31, scope: !5701)
!5735 = !DILocation(line: 163, column: 37, scope: !5701)
!5736 = !DILocation(line: 163, column: 43, scope: !5701)
!5737 = !DILocation(line: 163, column: 8, scope: !5701)
!5738 = !DILocation(line: 163, column: 6, scope: !5701)
!5739 = !DILocation(line: 167, column: 6, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 167, column: 6)
!5741 = !DILocation(line: 167, column: 6, scope: !5701)
!5742 = !DILocation(line: 169, column: 20, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 167, column: 11)
!5744 = !DILocation(line: 169, column: 26, scope: !5743)
!5745 = !DILocation(line: 169, column: 32, scope: !5743)
!5746 = !DILocation(line: 169, column: 3, scope: !5743)
!5747 = !DILocation(line: 171, column: 3, scope: !5743)
!5748 = !DILocation(line: 174, column: 6, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 174, column: 6)
!5750 = !DILocation(line: 174, column: 12, scope: !5749)
!5751 = !DILocation(line: 174, column: 20, scope: !5749)
!5752 = !DILocation(line: 174, column: 30, scope: !5749)
!5753 = !DILocation(line: 174, column: 23, scope: !5749)
!5754 = !DILocation(line: 174, column: 52, scope: !5749)
!5755 = !DILocation(line: 174, column: 6, scope: !5701)
!5756 = !DILocation(line: 175, column: 20, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 174, column: 58)
!5758 = !DILocation(line: 175, column: 26, scope: !5757)
!5759 = !DILocation(line: 178, column: 6, scope: !5757)
!5760 = !DILocation(line: 175, column: 3, scope: !5757)
!5761 = !DILocation(line: 179, column: 7, scope: !5757)
!5762 = !DILocation(line: 180, column: 3, scope: !5757)
!5763 = !DILocation(line: 183, column: 28, scope: !5701)
!5764 = !DILocation(line: 183, column: 34, scope: !5701)
!5765 = !DILocation(line: 183, column: 43, scope: !5701)
!5766 = !DILocation(line: 183, column: 8, scope: !5701)
!5767 = !DILocation(line: 183, column: 6, scope: !5701)
!5768 = !DILocation(line: 184, column: 6, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 184, column: 6)
!5770 = !DILocation(line: 184, column: 6, scope: !5701)
!5771 = !DILocation(line: 185, column: 3, scope: !5769)
!5772 = !DILocation(line: 189, column: 28, scope: !5701)
!5773 = !DILocation(line: 189, column: 34, scope: !5701)
!5774 = !DILocation(line: 189, column: 8, scope: !5701)
!5775 = !DILocation(line: 189, column: 6, scope: !5701)
!5776 = !DILocation(line: 190, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 190, column: 6)
!5778 = !DILocation(line: 190, column: 6, scope: !5701)
!5779 = !DILocation(line: 191, column: 20, scope: !5777)
!5780 = !DILocation(line: 191, column: 26, scope: !5777)
!5781 = !DILocation(line: 191, column: 32, scope: !5777)
!5782 = !DILocation(line: 191, column: 3, scope: !5777)
!5783 = !DILocation(line: 194, column: 2, scope: !5701)
!5784 = !DILabel(scope: !5701, name: "out", file: !3, line: 195)
!5785 = !DILocation(line: 195, column: 1, scope: !5701)
!5786 = !DILocation(line: 196, column: 16, scope: !5701)
!5787 = !DILocation(line: 196, column: 22, scope: !5701)
!5788 = !DILocation(line: 196, column: 2, scope: !5701)
!5789 = !DILocation(line: 198, column: 8, scope: !5701)
!5790 = !DILocation(line: 198, column: 2, scope: !5701)
!5791 = !DILocation(line: 200, column: 9, scope: !5701)
!5792 = !DILocation(line: 200, column: 2, scope: !5701)
!5793 = distinct !DISubprogram(name: "xen_pcibk_add_pci_dev", scope: !202, file: !202, line: 120, type: !4633, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5794 = !DILocalVariable(name: "pdev", arg: 1, scope: !5793, file: !202, line: 120, type: !200)
!5795 = !DILocation(line: 120, column: 66, scope: !5793)
!5796 = !DILocalVariable(name: "dev", arg: 2, scope: !5793, file: !202, line: 121, type: !4328)
!5797 = !DILocation(line: 121, column: 22, scope: !5793)
!5798 = !DILocalVariable(name: "devid", arg: 3, scope: !5793, file: !202, line: 122, type: !250)
!5799 = !DILocation(line: 122, column: 10, scope: !5793)
!5800 = !DILocalVariable(name: "publish_cb", arg: 4, scope: !5793, file: !202, line: 123, type: !4635)
!5801 = !DILocation(line: 123, column: 25, scope: !5793)
!5802 = !DILocation(line: 125, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5793, file: !202, line: 125, column: 6)
!5804 = !DILocation(line: 125, column: 24, scope: !5803)
!5805 = !DILocation(line: 125, column: 27, scope: !5803)
!5806 = !DILocation(line: 125, column: 46, scope: !5803)
!5807 = !DILocation(line: 125, column: 6, scope: !5793)
!5808 = !DILocation(line: 126, column: 10, scope: !5803)
!5809 = !DILocation(line: 126, column: 29, scope: !5803)
!5810 = !DILocation(line: 126, column: 33, scope: !5803)
!5811 = !DILocation(line: 126, column: 39, scope: !5803)
!5812 = !DILocation(line: 126, column: 44, scope: !5803)
!5813 = !DILocation(line: 126, column: 51, scope: !5803)
!5814 = !DILocation(line: 126, column: 3, scope: !5803)
!5815 = !DILocation(line: 127, column: 2, scope: !5793)
!5816 = !DILocation(line: 128, column: 1, scope: !5793)
!5817 = distinct !DISubprogram(name: "xen_pcibk_publish_pci_dev", scope: !3, file: !3, line: 203, type: !4637, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5818 = !DILocalVariable(name: "pdev", arg: 1, scope: !5817, file: !3, line: 203, type: !200)
!5819 = !DILocation(line: 203, column: 63, scope: !5817)
!5820 = !DILocalVariable(name: "domain", arg: 2, scope: !5817, file: !3, line: 204, type: !7)
!5821 = !DILocation(line: 204, column: 21, scope: !5817)
!5822 = !DILocalVariable(name: "bus", arg: 3, scope: !5817, file: !3, line: 204, type: !7)
!5823 = !DILocation(line: 204, column: 42, scope: !5817)
!5824 = !DILocalVariable(name: "devfn", arg: 4, scope: !5817, file: !3, line: 205, type: !7)
!5825 = !DILocation(line: 205, column: 21, scope: !5817)
!5826 = !DILocalVariable(name: "devid", arg: 5, scope: !5817, file: !3, line: 205, type: !7)
!5827 = !DILocation(line: 205, column: 41, scope: !5817)
!5828 = !DILocalVariable(name: "err", scope: !5817, file: !3, line: 207, type: !250)
!5829 = !DILocation(line: 207, column: 6, scope: !5817)
!5830 = !DILocalVariable(name: "len", scope: !5817, file: !3, line: 208, type: !250)
!5831 = !DILocation(line: 208, column: 6, scope: !5817)
!5832 = !DILocalVariable(name: "str", scope: !5817, file: !3, line: 209, type: !5306)
!5833 = !DILocation(line: 209, column: 7, scope: !5817)
!5834 = !DILocation(line: 211, column: 17, scope: !5817)
!5835 = !DILocation(line: 211, column: 46, scope: !5817)
!5836 = !DILocation(line: 211, column: 8, scope: !5817)
!5837 = !DILocation(line: 211, column: 6, scope: !5817)
!5838 = !DILocation(line: 212, column: 6, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 212, column: 6)
!5840 = !DILocation(line: 212, column: 6, scope: !5817)
!5841 = !DILocation(line: 213, column: 7, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 212, column: 42)
!5843 = !DILocation(line: 214, column: 3, scope: !5842)
!5844 = !DILocation(line: 218, column: 22, scope: !5817)
!5845 = !DILocation(line: 218, column: 31, scope: !5817)
!5846 = !DILocation(line: 218, column: 37, scope: !5817)
!5847 = !DILocation(line: 218, column: 43, scope: !5817)
!5848 = !DILocation(line: 218, column: 53, scope: !5817)
!5849 = !DILocation(line: 219, column: 31, scope: !5817)
!5850 = !DILocation(line: 219, column: 39, scope: !5817)
!5851 = !DILocation(line: 220, column: 8, scope: !5817)
!5852 = !DILocation(line: 220, column: 25, scope: !5817)
!5853 = !DILocation(line: 218, column: 8, scope: !5817)
!5854 = !DILocation(line: 218, column: 6, scope: !5817)
!5855 = !DILocation(line: 218, column: 2, scope: !5817)
!5856 = !DILabel(scope: !5817, name: "out", file: !3, line: 222)
!5857 = !DILocation(line: 222, column: 1, scope: !5817)
!5858 = !DILocation(line: 223, column: 9, scope: !5817)
!5859 = !DILocation(line: 223, column: 2, scope: !5817)
!5860 = distinct !DISubprogram(name: "xen_pcibk_do_attach", scope: !3, file: !3, line: 107, type: !5861, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!250, !200, !250, !5709}
!5863 = !DILocalVariable(name: "pdev", arg: 1, scope: !5860, file: !3, line: 107, type: !200)
!5864 = !DILocation(line: 107, column: 57, scope: !5860)
!5865 = !DILocalVariable(name: "gnt_ref", arg: 2, scope: !5860, file: !3, line: 107, type: !250)
!5866 = !DILocation(line: 107, column: 67, scope: !5860)
!5867 = !DILocalVariable(name: "remote_evtchn", arg: 3, scope: !5860, file: !3, line: 108, type: !5709)
!5868 = !DILocation(line: 108, column: 23, scope: !5860)
!5869 = !DILocalVariable(name: "err", scope: !5860, file: !3, line: 110, type: !250)
!5870 = !DILocation(line: 110, column: 6, scope: !5860)
!5871 = !DILocalVariable(name: "vaddr", scope: !5860, file: !3, line: 111, type: !189)
!5872 = !DILocation(line: 111, column: 8, scope: !5860)
!5873 = !DILocation(line: 117, column: 31, scope: !5860)
!5874 = !DILocation(line: 117, column: 37, scope: !5860)
!5875 = !DILocation(line: 117, column: 8, scope: !5860)
!5876 = !DILocation(line: 117, column: 6, scope: !5860)
!5877 = !DILocation(line: 118, column: 6, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 118, column: 6)
!5879 = !DILocation(line: 118, column: 10, scope: !5878)
!5880 = !DILocation(line: 118, column: 6, scope: !5860)
!5881 = !DILocation(line: 119, column: 20, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 118, column: 15)
!5883 = !DILocation(line: 119, column: 26, scope: !5882)
!5884 = !DILocation(line: 119, column: 32, scope: !5882)
!5885 = !DILocation(line: 119, column: 3, scope: !5882)
!5886 = !DILocation(line: 121, column: 3, scope: !5882)
!5887 = !DILocation(line: 124, column: 18, scope: !5860)
!5888 = !DILocation(line: 124, column: 2, scope: !5860)
!5889 = !DILocation(line: 124, column: 8, scope: !5860)
!5890 = !DILocation(line: 124, column: 16, scope: !5860)
!5891 = !DILocation(line: 127, column: 3, scope: !5860)
!5892 = !DILocation(line: 127, column: 9, scope: !5860)
!5893 = !DILocation(line: 127, column: 15, scope: !5860)
!5894 = !DILocation(line: 127, column: 28, scope: !5860)
!5895 = !DILocation(line: 128, column: 16, scope: !5860)
!5896 = !DILocation(line: 126, column: 8, scope: !5860)
!5897 = !DILocation(line: 126, column: 6, scope: !5860)
!5898 = !DILocation(line: 129, column: 6, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 129, column: 6)
!5900 = !DILocation(line: 129, column: 10, scope: !5899)
!5901 = !DILocation(line: 129, column: 6, scope: !5860)
!5902 = !DILocation(line: 130, column: 20, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 129, column: 15)
!5904 = !DILocation(line: 130, column: 26, scope: !5903)
!5905 = !DILocation(line: 130, column: 32, scope: !5903)
!5906 = !DILocation(line: 130, column: 3, scope: !5903)
!5907 = !DILocation(line: 132, column: 3, scope: !5903)
!5908 = !DILocation(line: 134, column: 21, scope: !5860)
!5909 = !DILocation(line: 134, column: 2, scope: !5860)
!5910 = !DILocation(line: 134, column: 8, scope: !5860)
!5911 = !DILocation(line: 134, column: 19, scope: !5860)
!5912 = !DILocation(line: 135, column: 6, scope: !5860)
!5913 = !DILocation(line: 137, column: 2, scope: !5860)
!5914 = !DILabel(scope: !5860, name: "out", file: !3, line: 138)
!5915 = !DILocation(line: 138, column: 1, scope: !5860)
!5916 = !DILocation(line: 139, column: 9, scope: !5860)
!5917 = !DILocation(line: 139, column: 2, scope: !5860)
!5918 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5919, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{!189, !3698}
!5921 = !DILocalVariable(name: "dev", arg: 1, scope: !5918, file: !73, line: 655, type: !3698)
!5922 = !DILocation(line: 655, column: 58, scope: !5918)
!5923 = !DILocation(line: 657, column: 9, scope: !5918)
!5924 = !DILocation(line: 657, column: 14, scope: !5918)
!5925 = !DILocation(line: 657, column: 2, scope: !5918)
!5926 = distinct !DISubprogram(name: "xen_pcibk_reconfigure", scope: !3, file: !3, line: 362, type: !4318, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5927 = !DILocalVariable(name: "pdev", arg: 1, scope: !5926, file: !3, line: 362, type: !200)
!5928 = !DILocation(line: 362, column: 59, scope: !5926)
!5929 = !DILocalVariable(name: "err", scope: !5926, file: !3, line: 364, type: !250)
!5930 = !DILocation(line: 364, column: 6, scope: !5926)
!5931 = !DILocalVariable(name: "num_devs", scope: !5926, file: !3, line: 365, type: !250)
!5932 = !DILocation(line: 365, column: 6, scope: !5926)
!5933 = !DILocalVariable(name: "domain", scope: !5926, file: !3, line: 366, type: !250)
!5934 = !DILocation(line: 366, column: 6, scope: !5926)
!5935 = !DILocalVariable(name: "bus", scope: !5926, file: !3, line: 366, type: !250)
!5936 = !DILocation(line: 366, column: 14, scope: !5926)
!5937 = !DILocalVariable(name: "slot", scope: !5926, file: !3, line: 366, type: !250)
!5938 = !DILocation(line: 366, column: 19, scope: !5926)
!5939 = !DILocalVariable(name: "func", scope: !5926, file: !3, line: 366, type: !250)
!5940 = !DILocation(line: 366, column: 25, scope: !5926)
!5941 = !DILocalVariable(name: "substate", scope: !5926, file: !3, line: 367, type: !7)
!5942 = !DILocation(line: 367, column: 15, scope: !5926)
!5943 = !DILocalVariable(name: "i", scope: !5926, file: !3, line: 368, type: !250)
!5944 = !DILocation(line: 368, column: 6, scope: !5926)
!5945 = !DILocalVariable(name: "len", scope: !5926, file: !3, line: 368, type: !250)
!5946 = !DILocation(line: 368, column: 9, scope: !5926)
!5947 = !DILocalVariable(name: "state_str", scope: !5926, file: !3, line: 369, type: !5306)
!5948 = !DILocation(line: 369, column: 7, scope: !5926)
!5949 = !DILocalVariable(name: "dev_str", scope: !5926, file: !3, line: 370, type: !5306)
!5950 = !DILocation(line: 370, column: 7, scope: !5926)
!5951 = !DILocation(line: 375, column: 14, scope: !5926)
!5952 = !DILocation(line: 375, column: 20, scope: !5926)
!5953 = !DILocation(line: 375, column: 2, scope: !5926)
!5954 = !DILocation(line: 377, column: 31, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 377, column: 6)
!5956 = !DILocation(line: 377, column: 37, scope: !5955)
!5957 = !DILocation(line: 377, column: 43, scope: !5955)
!5958 = !DILocation(line: 377, column: 6, scope: !5955)
!5959 = !DILocation(line: 377, column: 53, scope: !5955)
!5960 = !DILocation(line: 377, column: 6, scope: !5926)
!5961 = !DILocation(line: 379, column: 3, scope: !5955)
!5962 = !DILocation(line: 381, column: 21, scope: !5926)
!5963 = !DILocation(line: 381, column: 30, scope: !5926)
!5964 = !DILocation(line: 381, column: 36, scope: !5926)
!5965 = !DILocation(line: 381, column: 42, scope: !5926)
!5966 = !DILocation(line: 381, column: 8, scope: !5926)
!5967 = !DILocation(line: 381, column: 6, scope: !5926)
!5968 = !DILocation(line: 383, column: 6, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 383, column: 6)
!5970 = !DILocation(line: 383, column: 10, scope: !5969)
!5971 = !DILocation(line: 383, column: 6, scope: !5926)
!5972 = !DILocation(line: 384, column: 7, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 384, column: 7)
!5974 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 383, column: 16)
!5975 = !DILocation(line: 384, column: 11, scope: !5973)
!5976 = !DILocation(line: 384, column: 7, scope: !5974)
!5977 = !DILocation(line: 385, column: 8, scope: !5973)
!5978 = !DILocation(line: 385, column: 4, scope: !5973)
!5979 = !DILocation(line: 386, column: 20, scope: !5974)
!5980 = !DILocation(line: 386, column: 26, scope: !5974)
!5981 = !DILocation(line: 386, column: 32, scope: !5974)
!5982 = !DILocation(line: 386, column: 3, scope: !5974)
!5983 = !DILocation(line: 388, column: 3, scope: !5974)
!5984 = !DILocation(line: 391, column: 9, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 391, column: 2)
!5986 = !DILocation(line: 391, column: 7, scope: !5985)
!5987 = !DILocation(line: 391, column: 14, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 391, column: 2)
!5989 = !DILocation(line: 391, column: 18, scope: !5988)
!5990 = !DILocation(line: 391, column: 16, scope: !5988)
!5991 = !DILocation(line: 391, column: 2, scope: !5985)
!5992 = !DILocation(line: 392, column: 18, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 391, column: 33)
!5994 = !DILocation(line: 392, column: 60, scope: !5993)
!5995 = !DILocation(line: 392, column: 9, scope: !5993)
!5996 = !DILocation(line: 392, column: 7, scope: !5993)
!5997 = !DILocation(line: 393, column: 7, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 393, column: 7)
!5999 = !DILocation(line: 393, column: 7, scope: !5993)
!6000 = !DILocation(line: 394, column: 8, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 393, column: 49)
!6002 = !DILocation(line: 395, column: 21, scope: !6001)
!6003 = !DILocation(line: 395, column: 27, scope: !6001)
!6004 = !DILocation(line: 395, column: 33, scope: !6001)
!6005 = !DILocation(line: 395, column: 4, scope: !6001)
!6006 = !DILocation(line: 398, column: 4, scope: !6001)
!6007 = !DILocation(line: 400, column: 35, scope: !5993)
!6008 = !DILocation(line: 400, column: 41, scope: !5993)
!6009 = !DILocation(line: 400, column: 47, scope: !5993)
!6010 = !DILocation(line: 400, column: 57, scope: !5993)
!6011 = !DILocation(line: 400, column: 14, scope: !5993)
!6012 = !DILocation(line: 400, column: 12, scope: !5993)
!6013 = !DILocation(line: 403, column: 11, scope: !5993)
!6014 = !DILocation(line: 403, column: 3, scope: !5993)
!6015 = !DILocation(line: 407, column: 19, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 403, column: 21)
!6017 = !DILocation(line: 407, column: 55, scope: !6016)
!6018 = !DILocation(line: 407, column: 10, scope: !6016)
!6019 = !DILocation(line: 407, column: 8, scope: !6016)
!6020 = !DILocation(line: 408, column: 8, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 408, column: 8)
!6022 = !DILocation(line: 408, column: 8, scope: !6016)
!6023 = !DILocation(line: 409, column: 9, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 408, column: 48)
!6025 = !DILocation(line: 410, column: 22, scope: !6024)
!6026 = !DILocation(line: 410, column: 28, scope: !6024)
!6027 = !DILocation(line: 410, column: 34, scope: !6024)
!6028 = !DILocation(line: 410, column: 5, scope: !6024)
!6029 = !DILocation(line: 413, column: 5, scope: !6024)
!6030 = !DILocation(line: 415, column: 23, scope: !6016)
!6031 = !DILocation(line: 415, column: 32, scope: !6016)
!6032 = !DILocation(line: 415, column: 38, scope: !6016)
!6033 = !DILocation(line: 415, column: 44, scope: !6016)
!6034 = !DILocation(line: 416, column: 9, scope: !6016)
!6035 = !DILocation(line: 415, column: 10, scope: !6016)
!6036 = !DILocation(line: 415, column: 8, scope: !6016)
!6037 = !DILocation(line: 418, column: 8, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 418, column: 8)
!6039 = !DILocation(line: 418, column: 12, scope: !6038)
!6040 = !DILocation(line: 418, column: 8, scope: !6016)
!6041 = !DILocation(line: 419, column: 22, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 418, column: 17)
!6043 = !DILocation(line: 419, column: 28, scope: !6042)
!6044 = !DILocation(line: 419, column: 34, scope: !6042)
!6045 = !DILocation(line: 419, column: 5, scope: !6042)
!6046 = !DILocation(line: 422, column: 5, scope: !6042)
!6047 = !DILocation(line: 424, column: 8, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 424, column: 8)
!6049 = !DILocation(line: 424, column: 12, scope: !6048)
!6050 = !DILocation(line: 424, column: 8, scope: !6016)
!6051 = !DILocation(line: 425, column: 9, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 424, column: 18)
!6053 = !DILocation(line: 426, column: 22, scope: !6052)
!6054 = !DILocation(line: 426, column: 28, scope: !6052)
!6055 = !DILocation(line: 426, column: 34, scope: !6052)
!6056 = !DILocation(line: 426, column: 5, scope: !6052)
!6057 = !DILocation(line: 429, column: 5, scope: !6052)
!6058 = !DILocation(line: 432, column: 34, scope: !6016)
!6059 = !DILocation(line: 432, column: 40, scope: !6016)
!6060 = !DILocation(line: 432, column: 48, scope: !6016)
!6061 = !DILocation(line: 432, column: 53, scope: !6016)
!6062 = !DILocation(line: 433, column: 11, scope: !6016)
!6063 = !DILocation(line: 433, column: 17, scope: !6016)
!6064 = !DILocation(line: 432, column: 10, scope: !6016)
!6065 = !DILocation(line: 432, column: 8, scope: !6016)
!6066 = !DILocation(line: 434, column: 8, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 434, column: 8)
!6068 = !DILocation(line: 434, column: 8, scope: !6016)
!6069 = !DILocation(line: 435, column: 5, scope: !6067)
!6070 = !DILocation(line: 438, column: 38, scope: !6016)
!6071 = !DILocation(line: 438, column: 10, scope: !6016)
!6072 = !DILocation(line: 438, column: 8, scope: !6016)
!6073 = !DILocation(line: 440, column: 8, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 440, column: 8)
!6075 = !DILocation(line: 440, column: 8, scope: !6016)
!6076 = !DILocation(line: 441, column: 22, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 440, column: 13)
!6078 = !DILocation(line: 441, column: 28, scope: !6077)
!6079 = !DILocation(line: 441, column: 34, scope: !6077)
!6080 = !DILocation(line: 441, column: 5, scope: !6077)
!6081 = !DILocation(line: 444, column: 5, scope: !6077)
!6082 = !DILocation(line: 447, column: 24, scope: !6016)
!6083 = !DILocation(line: 447, column: 33, scope: !6016)
!6084 = !DILocation(line: 447, column: 39, scope: !6016)
!6085 = !DILocation(line: 447, column: 45, scope: !6016)
!6086 = !DILocation(line: 448, column: 10, scope: !6016)
!6087 = !DILocation(line: 447, column: 10, scope: !6016)
!6088 = !DILocation(line: 447, column: 8, scope: !6016)
!6089 = !DILocation(line: 450, column: 8, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 450, column: 8)
!6091 = !DILocation(line: 450, column: 8, scope: !6016)
!6092 = !DILocation(line: 451, column: 22, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 450, column: 13)
!6094 = !DILocation(line: 451, column: 28, scope: !6093)
!6095 = !DILocation(line: 451, column: 34, scope: !6093)
!6096 = !DILocation(line: 453, column: 20, scope: !6093)
!6097 = !DILocation(line: 451, column: 5, scope: !6093)
!6098 = !DILocation(line: 454, column: 5, scope: !6093)
!6099 = !DILocation(line: 456, column: 4, scope: !6016)
!6100 = !DILocation(line: 461, column: 19, scope: !6016)
!6101 = !DILocation(line: 461, column: 56, scope: !6016)
!6102 = !DILocation(line: 461, column: 10, scope: !6016)
!6103 = !DILocation(line: 461, column: 8, scope: !6016)
!6104 = !DILocation(line: 462, column: 8, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 462, column: 8)
!6106 = !DILocation(line: 462, column: 8, scope: !6016)
!6107 = !DILocation(line: 463, column: 9, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 462, column: 48)
!6109 = !DILocation(line: 464, column: 22, scope: !6108)
!6110 = !DILocation(line: 464, column: 28, scope: !6108)
!6111 = !DILocation(line: 464, column: 34, scope: !6108)
!6112 = !DILocation(line: 464, column: 5, scope: !6108)
!6113 = !DILocation(line: 467, column: 5, scope: !6108)
!6114 = !DILocation(line: 469, column: 23, scope: !6016)
!6115 = !DILocation(line: 469, column: 32, scope: !6016)
!6116 = !DILocation(line: 469, column: 38, scope: !6016)
!6117 = !DILocation(line: 469, column: 44, scope: !6016)
!6118 = !DILocation(line: 470, column: 9, scope: !6016)
!6119 = !DILocation(line: 469, column: 10, scope: !6016)
!6120 = !DILocation(line: 469, column: 8, scope: !6016)
!6121 = !DILocation(line: 472, column: 8, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 472, column: 8)
!6123 = !DILocation(line: 472, column: 12, scope: !6122)
!6124 = !DILocation(line: 472, column: 8, scope: !6016)
!6125 = !DILocation(line: 473, column: 22, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 472, column: 17)
!6127 = !DILocation(line: 473, column: 28, scope: !6126)
!6128 = !DILocation(line: 473, column: 34, scope: !6126)
!6129 = !DILocation(line: 473, column: 5, scope: !6126)
!6130 = !DILocation(line: 476, column: 5, scope: !6126)
!6131 = !DILocation(line: 478, column: 8, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 478, column: 8)
!6133 = !DILocation(line: 478, column: 12, scope: !6132)
!6134 = !DILocation(line: 478, column: 8, scope: !6016)
!6135 = !DILocation(line: 479, column: 9, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 478, column: 18)
!6137 = !DILocation(line: 480, column: 22, scope: !6136)
!6138 = !DILocation(line: 480, column: 28, scope: !6136)
!6139 = !DILocation(line: 480, column: 34, scope: !6136)
!6140 = !DILocation(line: 480, column: 5, scope: !6136)
!6141 = !DILocation(line: 483, column: 5, scope: !6136)
!6142 = !DILocation(line: 486, column: 34, scope: !6016)
!6143 = !DILocation(line: 486, column: 40, scope: !6016)
!6144 = !DILocation(line: 486, column: 48, scope: !6016)
!6145 = !DILocation(line: 486, column: 53, scope: !6016)
!6146 = !DILocation(line: 487, column: 11, scope: !6016)
!6147 = !DILocation(line: 486, column: 10, scope: !6016)
!6148 = !DILocation(line: 486, column: 8, scope: !6016)
!6149 = !DILocation(line: 488, column: 8, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 488, column: 8)
!6151 = !DILocation(line: 488, column: 8, scope: !6016)
!6152 = !DILocation(line: 489, column: 5, scope: !6150)
!6153 = !DILocation(line: 496, column: 4, scope: !6016)
!6154 = !DILocation(line: 499, column: 4, scope: !6016)
!6155 = !DILocation(line: 501, column: 2, scope: !5993)
!6156 = !DILocation(line: 391, column: 29, scope: !5988)
!6157 = !DILocation(line: 391, column: 2, scope: !5988)
!6158 = distinct !{!6158, !5991, !6159}
!6159 = !DILocation(line: 501, column: 2, scope: !5985)
!6160 = !DILocation(line: 503, column: 28, scope: !5926)
!6161 = !DILocation(line: 503, column: 34, scope: !5926)
!6162 = !DILocation(line: 503, column: 8, scope: !5926)
!6163 = !DILocation(line: 503, column: 6, scope: !5926)
!6164 = !DILocation(line: 504, column: 6, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 504, column: 6)
!6166 = !DILocation(line: 504, column: 6, scope: !5926)
!6167 = !DILocation(line: 505, column: 20, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 504, column: 11)
!6169 = !DILocation(line: 505, column: 26, scope: !6168)
!6170 = !DILocation(line: 505, column: 32, scope: !6168)
!6171 = !DILocation(line: 505, column: 3, scope: !6168)
!6172 = !DILocation(line: 507, column: 3, scope: !6168)
!6173 = !DILabel(scope: !5926, name: "out", file: !3, line: 510)
!6174 = !DILocation(line: 510, column: 1, scope: !5926)
!6175 = !DILocation(line: 511, column: 16, scope: !5926)
!6176 = !DILocation(line: 511, column: 22, scope: !5926)
!6177 = !DILocation(line: 511, column: 2, scope: !5926)
!6178 = !DILocation(line: 512, column: 2, scope: !5926)
!6179 = distinct !DISubprogram(name: "xen_pcibk_disconnect", scope: !3, file: !3, line: 67, type: !4322, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6180 = !DILocalVariable(name: "pdev", arg: 1, scope: !6179, file: !3, line: 67, type: !200)
!6181 = !DILocation(line: 67, column: 59, scope: !6179)
!6182 = !DILocation(line: 69, column: 14, scope: !6179)
!6183 = !DILocation(line: 69, column: 20, scope: !6179)
!6184 = !DILocation(line: 69, column: 2, scope: !6179)
!6185 = !DILocation(line: 71, column: 6, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 71, column: 6)
!6187 = !DILocation(line: 71, column: 12, scope: !6186)
!6188 = !DILocation(line: 71, column: 23, scope: !6186)
!6189 = !DILocation(line: 71, column: 6, scope: !6179)
!6190 = !DILocation(line: 72, column: 26, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 71, column: 46)
!6192 = !DILocation(line: 72, column: 32, scope: !6191)
!6193 = !DILocation(line: 72, column: 44, scope: !6191)
!6194 = !DILocation(line: 72, column: 3, scope: !6191)
!6195 = !DILocation(line: 73, column: 3, scope: !6191)
!6196 = !DILocation(line: 73, column: 9, scope: !6191)
!6197 = !DILocation(line: 73, column: 20, scope: !6191)
!6198 = !DILocation(line: 74, column: 2, scope: !6191)
!6199 = !DILocation(line: 79, column: 14, scope: !6179)
!6200 = !DILocation(line: 79, column: 20, scope: !6179)
!6201 = !DILocation(line: 79, column: 2, scope: !6179)
!6202 = !DILocation(line: 81, column: 6, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 81, column: 6)
!6204 = !DILocation(line: 81, column: 12, scope: !6203)
!6205 = !DILocation(line: 81, column: 20, scope: !6203)
!6206 = !DILocation(line: 81, column: 6, scope: !6179)
!6207 = !DILocation(line: 82, column: 27, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6203, file: !3, line: 81, column: 29)
!6209 = !DILocation(line: 82, column: 33, scope: !6208)
!6210 = !DILocation(line: 82, column: 39, scope: !6208)
!6211 = !DILocation(line: 82, column: 45, scope: !6208)
!6212 = !DILocation(line: 82, column: 3, scope: !6208)
!6213 = !DILocation(line: 83, column: 3, scope: !6208)
!6214 = !DILocation(line: 83, column: 9, scope: !6208)
!6215 = !DILocation(line: 83, column: 17, scope: !6208)
!6216 = !DILocation(line: 84, column: 2, scope: !6208)
!6217 = !DILocation(line: 85, column: 16, scope: !6179)
!6218 = !DILocation(line: 85, column: 22, scope: !6179)
!6219 = !DILocation(line: 85, column: 2, scope: !6179)
!6220 = !DILocation(line: 86, column: 1, scope: !6179)
!6221 = distinct !DISubprogram(name: "xen_pcibk_remove_device", scope: !3, file: !3, line: 273, type: !6222, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6222 = !DISubroutineType(types: !6223)
!6223 = !{!250, !200, !250, !250, !250, !250}
!6224 = !DILocalVariable(name: "pdev", arg: 1, scope: !6221, file: !3, line: 273, type: !200)
!6225 = !DILocation(line: 273, column: 61, scope: !6221)
!6226 = !DILocalVariable(name: "domain", arg: 2, scope: !6221, file: !3, line: 274, type: !250)
!6227 = !DILocation(line: 274, column: 10, scope: !6221)
!6228 = !DILocalVariable(name: "bus", arg: 3, scope: !6221, file: !3, line: 274, type: !250)
!6229 = !DILocation(line: 274, column: 22, scope: !6221)
!6230 = !DILocalVariable(name: "slot", arg: 4, scope: !6221, file: !3, line: 274, type: !250)
!6231 = !DILocation(line: 274, column: 31, scope: !6221)
!6232 = !DILocalVariable(name: "func", arg: 5, scope: !6221, file: !3, line: 274, type: !250)
!6233 = !DILocation(line: 274, column: 41, scope: !6221)
!6234 = !DILocalVariable(name: "err", scope: !6221, file: !3, line: 276, type: !250)
!6235 = !DILocation(line: 276, column: 6, scope: !6221)
!6236 = !DILocalVariable(name: "dev", scope: !6221, file: !3, line: 277, type: !4328)
!6237 = !DILocation(line: 277, column: 18, scope: !6221)
!6238 = !DILocation(line: 282, column: 30, scope: !6221)
!6239 = !DILocation(line: 282, column: 36, scope: !6221)
!6240 = !DILocation(line: 282, column: 44, scope: !6221)
!6241 = !DILocation(line: 282, column: 49, scope: !6221)
!6242 = !DILocation(line: 282, column: 8, scope: !6221)
!6243 = !DILocation(line: 282, column: 6, scope: !6221)
!6244 = !DILocation(line: 283, column: 7, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6221, file: !3, line: 283, column: 6)
!6246 = !DILocation(line: 283, column: 6, scope: !6221)
!6247 = !DILocation(line: 284, column: 7, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 283, column: 12)
!6249 = !DILocation(line: 288, column: 3, scope: !6248)
!6250 = !DILocation(line: 292, column: 37, scope: !6221)
!6251 = !DILocation(line: 292, column: 2, scope: !6221)
!6252 = !DILocation(line: 296, column: 28, scope: !6221)
!6253 = !DILocation(line: 296, column: 34, scope: !6221)
!6254 = !DILocation(line: 296, column: 2, scope: !6221)
!6255 = !DILabel(scope: !6221, name: "out", file: !3, line: 298)
!6256 = !DILocation(line: 298, column: 1, scope: !6221)
!6257 = !DILocation(line: 299, column: 9, scope: !6221)
!6258 = !DILocation(line: 299, column: 2, scope: !6221)
!6259 = distinct !DISubprogram(name: "xen_pcibk_get_pci_dev", scope: !202, file: !202, line: 138, type: !4641, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6260 = !DILocalVariable(name: "pdev", arg: 1, scope: !6259, file: !202, line: 138, type: !200)
!6261 = !DILocation(line: 138, column: 48, scope: !6259)
!6262 = !DILocalVariable(name: "domain", arg: 2, scope: !6259, file: !202, line: 138, type: !7)
!6263 = !DILocation(line: 138, column: 67, scope: !6259)
!6264 = !DILocalVariable(name: "bus", arg: 3, scope: !6259, file: !202, line: 139, type: !7)
!6265 = !DILocation(line: 139, column: 22, scope: !6259)
!6266 = !DILocalVariable(name: "devfn", arg: 4, scope: !6259, file: !202, line: 139, type: !7)
!6267 = !DILocation(line: 139, column: 40, scope: !6259)
!6268 = !DILocation(line: 141, column: 6, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6259, file: !202, line: 141, column: 6)
!6270 = !DILocation(line: 141, column: 24, scope: !6269)
!6271 = !DILocation(line: 141, column: 27, scope: !6269)
!6272 = !DILocation(line: 141, column: 46, scope: !6269)
!6273 = !DILocation(line: 141, column: 6, scope: !6259)
!6274 = !DILocation(line: 142, column: 10, scope: !6269)
!6275 = !DILocation(line: 142, column: 29, scope: !6269)
!6276 = !DILocation(line: 142, column: 33, scope: !6269)
!6277 = !DILocation(line: 142, column: 39, scope: !6269)
!6278 = !DILocation(line: 142, column: 47, scope: !6269)
!6279 = !DILocation(line: 142, column: 52, scope: !6269)
!6280 = !DILocation(line: 142, column: 3, scope: !6269)
!6281 = !DILocation(line: 143, column: 2, scope: !6259)
!6282 = !DILocation(line: 144, column: 1, scope: !6259)
!6283 = distinct !DISubprogram(name: "xen_pcibk_release_pci_dev", scope: !202, file: !202, line: 130, type: !4629, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6284 = !DILocalVariable(name: "pdev", arg: 1, scope: !6283, file: !202, line: 130, type: !200)
!6285 = !DILocation(line: 130, column: 71, scope: !6283)
!6286 = !DILocalVariable(name: "dev", arg: 2, scope: !6283, file: !202, line: 131, type: !4328)
!6287 = !DILocation(line: 131, column: 27, scope: !6283)
!6288 = !DILocalVariable(name: "lock", arg: 3, scope: !6283, file: !202, line: 131, type: !516)
!6289 = !DILocation(line: 131, column: 37, scope: !6283)
!6290 = !DILocation(line: 133, column: 6, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6283, file: !202, line: 133, column: 6)
!6292 = !DILocation(line: 133, column: 24, scope: !6291)
!6293 = !DILocation(line: 133, column: 27, scope: !6291)
!6294 = !DILocation(line: 133, column: 46, scope: !6291)
!6295 = !DILocation(line: 133, column: 6, scope: !6283)
!6296 = !DILocation(line: 134, column: 10, scope: !6291)
!6297 = !DILocation(line: 134, column: 29, scope: !6291)
!6298 = !DILocation(line: 134, column: 37, scope: !6291)
!6299 = !DILocation(line: 134, column: 43, scope: !6291)
!6300 = !DILocation(line: 134, column: 48, scope: !6291)
!6301 = !DILocation(line: 134, column: 3, scope: !6291)
!6302 = !DILocation(line: 135, column: 1, scope: !6283)
!6303 = distinct !DISubprogram(name: "free_pdev", scope: !3, file: !3, line: 88, type: !4322, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6304 = !DILocalVariable(name: "pdev", arg: 1, scope: !6303, file: !3, line: 88, type: !200)
!6305 = !DILocation(line: 88, column: 48, scope: !6303)
!6306 = !DILocation(line: 90, column: 6, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6303, file: !3, line: 90, column: 6)
!6308 = !DILocation(line: 90, column: 12, scope: !6307)
!6309 = !DILocation(line: 90, column: 6, scope: !6303)
!6310 = !DILocation(line: 91, column: 28, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 90, column: 25)
!6312 = !DILocation(line: 91, column: 34, scope: !6311)
!6313 = !DILocation(line: 91, column: 3, scope: !6311)
!6314 = !DILocation(line: 92, column: 3, scope: !6311)
!6315 = !DILocation(line: 92, column: 9, scope: !6311)
!6316 = !DILocation(line: 92, column: 21, scope: !6311)
!6317 = !DILocation(line: 93, column: 2, scope: !6311)
!6318 = !DILocation(line: 95, column: 23, scope: !6303)
!6319 = !DILocation(line: 95, column: 2, scope: !6303)
!6320 = !DILocation(line: 99, column: 28, scope: !6303)
!6321 = !DILocation(line: 99, column: 2, scope: !6303)
!6322 = !DILocation(line: 101, column: 19, scope: !6303)
!6323 = !DILocation(line: 101, column: 25, scope: !6303)
!6324 = !DILocation(line: 101, column: 31, scope: !6303)
!6325 = !DILocation(line: 101, column: 2, scope: !6303)
!6326 = !DILocation(line: 102, column: 2, scope: !6303)
!6327 = !DILocation(line: 102, column: 8, scope: !6303)
!6328 = !DILocation(line: 102, column: 13, scope: !6303)
!6329 = !DILocation(line: 104, column: 8, scope: !6303)
!6330 = !DILocation(line: 104, column: 2, scope: !6303)
!6331 = !DILocation(line: 105, column: 1, scope: !6303)
!6332 = distinct !DISubprogram(name: "xen_pcibk_release_devices", scope: !202, file: !202, line: 179, type: !4322, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6333 = !DILocalVariable(name: "pdev", arg: 1, scope: !6332, file: !202, line: 179, type: !200)
!6334 = !DILocation(line: 179, column: 71, scope: !6332)
!6335 = !DILocation(line: 181, column: 6, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6332, file: !202, line: 181, column: 6)
!6337 = !DILocation(line: 181, column: 24, scope: !6336)
!6338 = !DILocation(line: 181, column: 27, scope: !6336)
!6339 = !DILocation(line: 181, column: 46, scope: !6336)
!6340 = !DILocation(line: 181, column: 6, scope: !6332)
!6341 = !DILocation(line: 182, column: 10, scope: !6336)
!6342 = !DILocation(line: 182, column: 29, scope: !6336)
!6343 = !DILocation(line: 182, column: 34, scope: !6336)
!6344 = !DILocation(line: 182, column: 3, scope: !6336)
!6345 = !DILocation(line: 183, column: 1, scope: !6332)
