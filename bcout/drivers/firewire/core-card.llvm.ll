; ModuleID = '../bcout/drivers/firewire/core-card.llvm.bc'
source_filename = "drivers/firewire/core-card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
%struct.atomic_t = type { i32 }
%struct.fw_card_driver = type { i32 (%struct.fw_card*, i32*, i64)*, i32 (%struct.fw_card*, i32)*, i32 (%struct.fw_card*, i32, i32, i32)*, i32 (%struct.fw_card*, i32*, i64)*, void (%struct.fw_card*, %struct.fw_packet*)*, void (%struct.fw_card*, %struct.fw_packet*)*, i32 (%struct.fw_card*, %struct.fw_packet*)*, i32 (%struct.fw_card*, i32, i32)*, i32 (%struct.fw_card*, i32)*, void (%struct.fw_card*, i32, i32)*, %struct.fw_iso_context* (%struct.fw_card*, i32, i32, i64)*, void (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*, i32, i32, i32)*, i32 (%struct.fw_iso_context*, i64*)*, i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)*, void (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)* }
%struct.fw_card = type { %struct.fw_card_driver*, %struct.device*, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, %struct.fw_node*, %struct.fw_node*, %struct.fw_node*, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.43, %struct.list_head, %struct.list_head, %union.anon.44 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.0, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.60 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.7, i32 }
%union.anon.7 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.38, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.8, [0 x i64] }
%struct.anon.8 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.9, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.9 = type { %struct.rb_node, i64 }
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
%struct.kioctx_table = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.15, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.16, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.17, %union.anon.21, %struct.key_restriction* }
%union.anon.15 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.16 = type { i64 }
%union.anon.17 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.18, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.18 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.21 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.24, %union.anon.25, i32 }
%struct.request_queue = type opaque
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.26 }
%struct.anon.26 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.30 }
%struct.anon.30 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.37, i32, [12 x i8] }
%union.anon.37 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.38 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.39, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.42 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i64, i64 }
%union.anon.42 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.45 }
%union.anon.45 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.46 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.46 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fw_node = type { i16, i8, i8, i8, i8, %struct.refcount_struct, %struct.list_head, i8*, [0 x %struct.fw_node*] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.fw_packet = type { i32, i32, [4 x i32], i64, i8*, i64, i64, i8, i32, void (%struct.fw_packet*, %struct.fw_card*, i32)*, i32, %struct.list_head, i8* }
%struct.fw_iso_context = type { %struct.fw_card*, i32, i32, i32, i8, i64, %union.anon, i8* }
%union.anon = type { void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* }
%struct.fw_iso_packet = type { i16, i16, [0 x i32] }
%struct.fw_iso_buffer = type { i32, %struct.page**, i32, i32 }
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
%struct.va_format = type { i8*, [1 x %struct.__va_list_tag]* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fw_descriptor = type { %struct.list_head, i64, i32, i32, i32* }
%struct.fw_device = type { %struct.atomic_t, %struct.fw_node*, i32, i32, i32, %struct.fw_card*, %struct.device, %struct.mutex, %struct.list_head, i32*, i64, i32, i16, void (%struct.work_struct*)*, %struct.delayed_work, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x %struct.attribute_group*], %struct.attribute_group, [13 x %struct.attribute*] }

@.str = private unnamed_addr constant [24 x i8] c"\013firewire_core %s: %pV\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\015firewire_core %s: %pV\00", align 1
@card_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @card_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @card_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@config_rom_length = internal global i64 7, align 8, !dbg !3981
@descriptor_list = internal global %struct.list_head { %struct.list_head* @descriptor_list, %struct.list_head* @descriptor_list }, align 8, !dbg !3983
@descriptor_count = internal global i32 0, align 4, !dbg !3977
@fw_workqueue = external dso_local global %struct.workqueue_struct*, align 8
@fw_card_initialize.index = internal global %struct.atomic_t { i32 -1 }, align 4, !dbg !3972
@tmp_config_rom = internal global [256 x i32] zeroinitializer, align 16, !dbg !3979
@card_list = internal global %struct.list_head { %struct.list_head* @card_list, %struct.list_head* @card_list }, align 8, !dbg !3993
@dummy_driver_template = internal constant %struct.fw_card_driver { i32 (%struct.fw_card*, i32*, i64)* null, i32 (%struct.fw_card*, i32)* @dummy_read_phy_reg, i32 (%struct.fw_card*, i32, i32, i32)* @dummy_update_phy_reg, i32 (%struct.fw_card*, i32*, i64)* null, void (%struct.fw_card*, %struct.fw_packet*)* @dummy_send_request, void (%struct.fw_card*, %struct.fw_packet*)* @dummy_send_response, i32 (%struct.fw_card*, %struct.fw_packet*)* @dummy_cancel_packet, i32 (%struct.fw_card*, i32, i32)* @dummy_enable_phys_dma, i32 (%struct.fw_card*, i32)* null, void (%struct.fw_card*, i32, i32)* null, %struct.fw_iso_context* (%struct.fw_card*, i32, i32, i64)* @dummy_allocate_iso_context, void (%struct.fw_iso_context*)* null, i32 (%struct.fw_iso_context*, i32, i32, i32)* @dummy_start_iso, i32 (%struct.fw_iso_context*, i64*)* @dummy_set_iso_channels, i32 (%struct.fw_iso_context*, %struct.fw_iso_packet*, %struct.fw_iso_buffer*, i64)* @dummy_queue_iso, void (%struct.fw_iso_context*)* @dummy_flush_queue_iso, i32 (%struct.fw_iso_context*)* @dummy_flush_iso_completions, i32 (%struct.fw_iso_context*)* null }, align 8, !dbg !3995
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/firewire/core-card.c\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3985
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"%s, making local node (%02x) root\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"IRM has link off\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"IRM is not 1394a compliant\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"BM lock failed (%s), making local node (%02x) root\0A\00", align 1
@gap_count_table = internal constant [16 x i8] c"?\05\07\08\0A\0D\10\12\15\18\1A\1D #%(", align 16, !dbg !3990
@.str.8 = private unnamed_addr constant [39 x i8] c"phy config: new root=%x, gap_count=%d\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"failed to allocate broadcast channel\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_err(%struct.fw_card* %card, i8* %fmt, ...) #0 !dbg !4003 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %fmt.addr = alloca i8*, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4008, metadata !DIExpression()), !dbg !4009
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4010, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.declare(metadata %struct.va_format* %vaf, metadata !4011, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !4029, metadata !DIExpression()), !dbg !4009
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !4009
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4009
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4009
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !4009
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i32 0, i32 0, !dbg !4009
  store i8* %0, i8** %fmt2, align 8, !dbg !4009
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i32 0, i32 1, !dbg !4009
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %va, align 8, !dbg !4009
  %1 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4009
  %device = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 1, !dbg !4009
  %2 = load %struct.device*, %struct.device** %device, align 8, !dbg !4009
  %call = call i8* @dev_name(%struct.device* %2) #9, !dbg !4009
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %call, %struct.va_format* %vaf) #10, !dbg !4009
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !4009
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !4009
  call void @llvm.va_end(i8* %arraydecay45), !dbg !4009
  ret void, !dbg !4009
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4030 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4035
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4037
  %1 = load i8*, i8** %init_name, align 8, !dbg !4037
  %tobool = icmp ne i8* %1, null, !dbg !4035
  br i1 %tobool, label %if.then, label %if.end, !dbg !4038

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4039
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4040
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4040
  store i8* %3, i8** %retval, align 8, !dbg !4041
  br label %return, !dbg !4041

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4042
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4043
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #9, !dbg !4044
  store i8* %call, i8** %retval, align 8, !dbg !4045
  br label %return, !dbg !4045

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4046
  ret i8* %5, !dbg !4046
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_notice(%struct.fw_card* %card, i8* %fmt, ...) #0 !dbg !4047 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %fmt.addr = alloca i8*, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4048, metadata !DIExpression()), !dbg !4049
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4050, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata %struct.va_format* %vaf, metadata !4051, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !4052, metadata !DIExpression()), !dbg !4049
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !4049
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4049
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4049
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !4049
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i32 0, i32 0, !dbg !4049
  store i8* %0, i8** %fmt2, align 8, !dbg !4049
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i32 0, i32 1, !dbg !4049
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %va, align 8, !dbg !4049
  %1 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4049
  %device = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 1, !dbg !4049
  %2 = load %struct.device*, %struct.device** %device, align 8, !dbg !4049
  %call = call i8* @dev_name(%struct.device* %2) #9, !dbg !4049
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %call, %struct.va_format* %vaf) #10, !dbg !4049
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !4049
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !4049
  call void @llvm.va_end(i8* %arraydecay45), !dbg !4049
  ret void, !dbg !4049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_compute_block_crc(i32* %block) #0 !dbg !4053 {
entry:
  %block.addr = alloca i32*, align 8
  %length = alloca i32, align 4
  %crc = alloca i16, align 2
  store i32* %block, i32** %block.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %block.addr, metadata !4057, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.declare(metadata i32* %length, metadata !4059, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.declare(metadata i16* %crc, metadata !4061, metadata !DIExpression()), !dbg !4062
  %0 = load i32*, i32** %block.addr, align 8, !dbg !4063
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !4063
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4063
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !4063
  br i1 %2, label %cond.true, label %cond.false, !dbg !4063

cond.true:                                        ; preds = %entry
  %3 = load i32*, i32** %block.addr, align 8, !dbg !4063
  %arrayidx1 = getelementptr i32, i32* %3, i64 0, !dbg !4063
  %4 = load i32, i32* %arrayidx1, align 4, !dbg !4063
  %and = and i32 %4, 255, !dbg !4063
  %shl = shl i32 %and, 24, !dbg !4063
  %5 = load i32*, i32** %block.addr, align 8, !dbg !4063
  %arrayidx2 = getelementptr i32, i32* %5, i64 0, !dbg !4063
  %6 = load i32, i32* %arrayidx2, align 4, !dbg !4063
  %and3 = and i32 %6, 65280, !dbg !4063
  %shl4 = shl i32 %and3, 8, !dbg !4063
  %or = or i32 %shl, %shl4, !dbg !4063
  %7 = load i32*, i32** %block.addr, align 8, !dbg !4063
  %arrayidx5 = getelementptr i32, i32* %7, i64 0, !dbg !4063
  %8 = load i32, i32* %arrayidx5, align 4, !dbg !4063
  %and6 = and i32 %8, 16711680, !dbg !4063
  %shr = lshr i32 %and6, 8, !dbg !4063
  %or7 = or i32 %or, %shr, !dbg !4063
  %9 = load i32*, i32** %block.addr, align 8, !dbg !4063
  %arrayidx8 = getelementptr i32, i32* %9, i64 0, !dbg !4063
  %10 = load i32, i32* %arrayidx8, align 4, !dbg !4063
  %and9 = and i32 %10, -16777216, !dbg !4063
  %shr10 = lshr i32 %and9, 24, !dbg !4063
  %or11 = or i32 %or7, %shr10, !dbg !4063
  br label %cond.end, !dbg !4063

cond.false:                                       ; preds = %entry
  %11 = load i32*, i32** %block.addr, align 8, !dbg !4063
  %arrayidx12 = getelementptr i32, i32* %11, i64 0, !dbg !4063
  %12 = load i32, i32* %arrayidx12, align 4, !dbg !4063
  %call = call i32 @__fswab32(i32 %12) #11, !dbg !4063
  br label %cond.end, !dbg !4063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or11, %cond.true ], [ %call, %cond.false ], !dbg !4063
  %shr13 = lshr i32 %cond, 16, !dbg !4064
  %and14 = and i32 %shr13, 255, !dbg !4065
  store i32 %and14, i32* %length, align 4, !dbg !4066
  %13 = load i32*, i32** %block.addr, align 8, !dbg !4067
  %arrayidx15 = getelementptr i32, i32* %13, i64 1, !dbg !4067
  %14 = bitcast i32* %arrayidx15 to i8*, !dbg !4068
  %15 = load i32, i32* %length, align 4, !dbg !4069
  %mul = mul i32 %15, 4, !dbg !4070
  %conv = sext i32 %mul to i64, !dbg !4069
  %call16 = call zeroext i16 @crc_itu_t(i16 zeroext 0, i8* %14, i64 %conv) #9, !dbg !4071
  store i16 %call16, i16* %crc, align 2, !dbg !4072
  %16 = load i16, i16* %crc, align 2, !dbg !4073
  %conv17 = zext i16 %16 to i32, !dbg !4073
  %17 = call i1 @llvm.is.constant.i32(i32 %conv17), !dbg !4073
  br i1 %17, label %cond.true18, label %cond.false34, !dbg !4073

cond.true18:                                      ; preds = %cond.end
  %18 = load i16, i16* %crc, align 2, !dbg !4073
  %conv19 = zext i16 %18 to i32, !dbg !4073
  %and20 = and i32 %conv19, 255, !dbg !4073
  %shl21 = shl i32 %and20, 24, !dbg !4073
  %19 = load i16, i16* %crc, align 2, !dbg !4073
  %conv22 = zext i16 %19 to i32, !dbg !4073
  %and23 = and i32 %conv22, 65280, !dbg !4073
  %shl24 = shl i32 %and23, 8, !dbg !4073
  %or25 = or i32 %shl21, %shl24, !dbg !4073
  %20 = load i16, i16* %crc, align 2, !dbg !4073
  %conv26 = zext i16 %20 to i32, !dbg !4073
  %and27 = and i32 %conv26, 16711680, !dbg !4073
  %shr28 = lshr i32 %and27, 8, !dbg !4073
  %or29 = or i32 %or25, %shr28, !dbg !4073
  %21 = load i16, i16* %crc, align 2, !dbg !4073
  %conv30 = zext i16 %21 to i32, !dbg !4073
  %and31 = and i32 %conv30, -16777216, !dbg !4073
  %shr32 = lshr i32 %and31, 24, !dbg !4073
  %or33 = or i32 %or29, %shr32, !dbg !4073
  br label %cond.end37, !dbg !4073

cond.false34:                                     ; preds = %cond.end
  %22 = load i16, i16* %crc, align 2, !dbg !4073
  %conv35 = zext i16 %22 to i32, !dbg !4073
  %call36 = call i32 @__fswab32(i32 %conv35) #11, !dbg !4073
  br label %cond.end37, !dbg !4073

cond.end37:                                       ; preds = %cond.false34, %cond.true18
  %cond38 = phi i32 [ %or33, %cond.true18 ], [ %call36, %cond.false34 ], !dbg !4073
  %23 = load i32*, i32** %block.addr, align 8, !dbg !4074
  %24 = load i32, i32* %23, align 4, !dbg !4075
  %or39 = or i32 %24, %cond38, !dbg !4075
  store i32 %or39, i32* %23, align 4, !dbg !4075
  %25 = load i32, i32* %length, align 4, !dbg !4076
  ret i32 %25, !dbg !4077
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #5 !dbg !4078 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4082, metadata !DIExpression()), !dbg !4083
  %0 = load i32, i32* %val.addr, align 4, !dbg !4084
  %call = call i32 @__arch_swab32(i32 %0) #11, !dbg !4085
  ret i32 %call, !dbg !4086
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @crc_itu_t(i16 zeroext, i8*, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_core_add_descriptor(%struct.fw_descriptor* %desc) #0 !dbg !4087 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca %struct.fw_descriptor*, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.fw_descriptor* %desc, %struct.fw_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_descriptor** %desc.addr, metadata !4090, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4094, metadata !DIExpression()), !dbg !4095
  store i64 0, i64* %i, align 8, !dbg !4096
  br label %while.cond, !dbg !4097

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %i, align 8, !dbg !4098
  %1 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4099
  %length = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %1, i32 0, i32 1, !dbg !4100
  %2 = load i64, i64* %length, align 8, !dbg !4100
  %cmp = icmp ult i64 %0, %2, !dbg !4101
  br i1 %cmp, label %while.body, label %while.end, !dbg !4097

while.body:                                       ; preds = %while.cond
  %3 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4102
  %data = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %3, i32 0, i32 4, !dbg !4103
  %4 = load i32*, i32** %data, align 8, !dbg !4103
  %5 = load i64, i64* %i, align 8, !dbg !4104
  %arrayidx = getelementptr i32, i32* %4, i64 %5, !dbg !4102
  %6 = load i32, i32* %arrayidx, align 4, !dbg !4102
  %shr = lshr i32 %6, 16, !dbg !4105
  %add = add i32 %shr, 1, !dbg !4106
  %conv = zext i32 %add to i64, !dbg !4107
  %7 = load i64, i64* %i, align 8, !dbg !4108
  %add1 = add i64 %7, %conv, !dbg !4108
  store i64 %add1, i64* %i, align 8, !dbg !4108
  br label %while.cond, !dbg !4097, !llvm.loop !4109

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %i, align 8, !dbg !4111
  %9 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4113
  %length2 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %9, i32 0, i32 1, !dbg !4114
  %10 = load i64, i64* %length2, align 8, !dbg !4114
  %cmp3 = icmp ne i64 %8, %10, !dbg !4115
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4116

if.then:                                          ; preds = %while.end
  store i32 -22, i32* %retval, align 4, !dbg !4117
  br label %return, !dbg !4117

if.end:                                           ; preds = %while.end
  call void @mutex_lock(%struct.mutex* @card_mutex) #9, !dbg !4118
  %11 = load i64, i64* @config_rom_length, align 8, !dbg !4119
  %12 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4121
  %call = call i64 @required_space(%struct.fw_descriptor* %12) #9, !dbg !4122
  %add5 = add i64 %11, %call, !dbg !4123
  %cmp6 = icmp ugt i64 %add5, 256, !dbg !4124
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !4125

if.then8:                                         ; preds = %if.end
  store i32 -16, i32* %ret, align 4, !dbg !4126
  br label %if.end16, !dbg !4128

if.else:                                          ; preds = %if.end
  %13 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4129
  %link = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %13, i32 0, i32 0, !dbg !4131
  call void @list_add_tail(%struct.list_head* %link, %struct.list_head* @descriptor_list) #9, !dbg !4132
  %14 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4133
  %call9 = call i64 @required_space(%struct.fw_descriptor* %14) #9, !dbg !4134
  %15 = load i64, i64* @config_rom_length, align 8, !dbg !4135
  %add10 = add i64 %15, %call9, !dbg !4135
  store i64 %add10, i64* @config_rom_length, align 8, !dbg !4135
  %16 = load i32, i32* @descriptor_count, align 4, !dbg !4136
  %inc = add i32 %16, 1, !dbg !4136
  store i32 %inc, i32* @descriptor_count, align 4, !dbg !4136
  %17 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4137
  %immediate = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %17, i32 0, i32 2, !dbg !4139
  %18 = load i32, i32* %immediate, align 8, !dbg !4139
  %cmp11 = icmp ugt i32 %18, 0, !dbg !4140
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !4141

if.then13:                                        ; preds = %if.else
  %19 = load i32, i32* @descriptor_count, align 4, !dbg !4142
  %inc14 = add i32 %19, 1, !dbg !4142
  store i32 %inc14, i32* @descriptor_count, align 4, !dbg !4142
  br label %if.end15, !dbg !4143

if.end15:                                         ; preds = %if.then13, %if.else
  call void @update_config_roms() #9, !dbg !4144
  store i32 0, i32* %ret, align 4, !dbg !4145
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then8
  call void @mutex_unlock(%struct.mutex* @card_mutex) #9, !dbg !4146
  %20 = load i32, i32* %ret, align 4, !dbg !4147
  store i32 %20, i32* %retval, align 4, !dbg !4148
  br label %return, !dbg !4148

return:                                           ; preds = %if.end16, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4149
  ret i32 %21, !dbg !4149
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @required_space(%struct.fw_descriptor* %desc) #0 !dbg !4150 {
entry:
  %desc.addr = alloca %struct.fw_descriptor*, align 8
  store %struct.fw_descriptor* %desc, %struct.fw_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_descriptor** %desc.addr, metadata !4153, metadata !DIExpression()), !dbg !4154
  %0 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4155
  %length = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %0, i32 0, i32 1, !dbg !4156
  %1 = load i64, i64* %length, align 8, !dbg !4156
  %add = add i64 %1, 1, !dbg !4157
  %2 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4158
  %immediate = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %2, i32 0, i32 2, !dbg !4159
  %3 = load i32, i32* %immediate, align 8, !dbg !4159
  %cmp = icmp ugt i32 %3, 0, !dbg !4160
  %4 = zext i1 %cmp to i64, !dbg !4158
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !4158
  %conv = sext i32 %cond to i64, !dbg !4161
  %add1 = add i64 %add, %conv, !dbg !4162
  ret i64 %add1, !dbg !4163
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4164 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4172
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4173
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4174
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4174
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4175
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !4176
  ret void, !dbg !4177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @update_config_roms() #0 !dbg !4178 {
entry:
  %card = alloca %struct.fw_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fw_card*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.fw_card*, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4181, metadata !DIExpression()), !dbg !4184
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @card_list, i32 0, i32 0), align 8, !dbg !4184
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4184
  store i8* %1, i8** %__mptr, align 8, !dbg !4184
  br label %do.body, !dbg !4184

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4185

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4184
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !4184
  %3 = bitcast i8* %add.ptr to %struct.fw_card*, !dbg !4184
  store %struct.fw_card* %3, %struct.fw_card** %tmp, align 8, !dbg !4185
  %4 = load %struct.fw_card*, %struct.fw_card** %tmp, align 8, !dbg !4184
  store %struct.fw_card* %4, %struct.fw_card** %card, align 8, !dbg !4187
  br label %for.cond, !dbg !4187

for.cond:                                         ; preds = %do.end4, %do.end
  %5 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4188
  %link = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 26, !dbg !4188
  %cmp = icmp eq %struct.list_head* %link, @card_list, !dbg !4188
  %lnot = xor i1 %cmp, true, !dbg !4188
  br i1 %lnot, label %for.body, label %for.end, !dbg !4187

for.body:                                         ; preds = %for.cond
  %6 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4190
  call void @generate_config_rom(%struct.fw_card* %6, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @tmp_config_rom, i64 0, i64 0)) #9, !dbg !4192
  %7 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4193
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %7, i32 0, i32 0, !dbg !4194
  %8 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !4194
  %set_config_rom = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %8, i32 0, i32 3, !dbg !4195
  %9 = load i32 (%struct.fw_card*, i32*, i64)*, i32 (%struct.fw_card*, i32*, i64)** %set_config_rom, align 8, !dbg !4195
  %10 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4196
  %11 = load i64, i64* @config_rom_length, align 8, !dbg !4197
  %call = call i32 %9(%struct.fw_card* %10, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @tmp_config_rom, i64 0, i64 0), i64 %11) #9, !dbg !4193
  br label %for.inc, !dbg !4198

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4199, metadata !DIExpression()), !dbg !4201
  %12 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4201
  %link2 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %12, i32 0, i32 26, !dbg !4201
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %link2, i32 0, i32 0, !dbg !4201
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4201
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4201
  store i8* %14, i8** %__mptr1, align 8, !dbg !4201
  br label %do.body3, !dbg !4201

do.body3:                                         ; preds = %for.inc
  br label %do.end4, !dbg !4202

do.end4:                                          ; preds = %do.body3
  %15 = load i8*, i8** %__mptr1, align 8, !dbg !4201
  %add.ptr6 = getelementptr i8, i8* %15, i64 -176, !dbg !4201
  %16 = bitcast i8* %add.ptr6 to %struct.fw_card*, !dbg !4201
  store %struct.fw_card* %16, %struct.fw_card** %tmp5, align 8, !dbg !4202
  %17 = load %struct.fw_card*, %struct.fw_card** %tmp5, align 8, !dbg !4201
  store %struct.fw_card* %17, %struct.fw_card** %card, align 8, !dbg !4188
  br label %for.cond, !dbg !4188, !llvm.loop !4204

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4206
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_core_remove_descriptor(%struct.fw_descriptor* %desc) #0 !dbg !4207 {
entry:
  %desc.addr = alloca %struct.fw_descriptor*, align 8
  store %struct.fw_descriptor* %desc, %struct.fw_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_descriptor** %desc.addr, metadata !4210, metadata !DIExpression()), !dbg !4211
  call void @mutex_lock(%struct.mutex* @card_mutex) #9, !dbg !4212
  %0 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4213
  %link = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %0, i32 0, i32 0, !dbg !4214
  call void @list_del(%struct.list_head* %link) #9, !dbg !4215
  %1 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4216
  %call = call i64 @required_space(%struct.fw_descriptor* %1) #9, !dbg !4217
  %2 = load i64, i64* @config_rom_length, align 8, !dbg !4218
  %sub = sub i64 %2, %call, !dbg !4218
  store i64 %sub, i64* @config_rom_length, align 8, !dbg !4218
  %3 = load i32, i32* @descriptor_count, align 4, !dbg !4219
  %dec = add i32 %3, -1, !dbg !4219
  store i32 %dec, i32* @descriptor_count, align 4, !dbg !4219
  %4 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc.addr, align 8, !dbg !4220
  %immediate = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %4, i32 0, i32 2, !dbg !4222
  %5 = load i32, i32* %immediate, align 8, !dbg !4222
  %cmp = icmp ugt i32 %5, 0, !dbg !4223
  br i1 %cmp, label %if.then, label %if.end, !dbg !4224

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @descriptor_count, align 4, !dbg !4225
  %dec1 = add i32 %6, -1, !dbg !4225
  store i32 %dec1, i32* @descriptor_count, align 4, !dbg !4225
  br label %if.end, !dbg !4226

if.end:                                           ; preds = %if.then, %entry
  call void @update_config_roms() #9, !dbg !4227
  call void @mutex_unlock(%struct.mutex* @card_mutex) #9, !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4230 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4233, metadata !DIExpression()), !dbg !4234
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4235
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !4236
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4237
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4238
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4239
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4240
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4241
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4242
  ret void, !dbg !4243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_schedule_bus_reset(%struct.fw_card* %card, i1 zeroext %delayed, i1 zeroext %short_reset) #0 !dbg !4244 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %delayed.addr = alloca i8, align 1
  %short_reset.addr = alloca i8, align 1
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4247, metadata !DIExpression()), !dbg !4248
  %frombool = zext i1 %delayed to i8
  store i8 %frombool, i8* %delayed.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %delayed.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  %frombool1 = zext i1 %short_reset to i8
  store i8 %frombool1, i8* %short_reset.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %short_reset.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  %0 = load i8, i8* %short_reset.addr, align 1, !dbg !4253
  %tobool = trunc i8 %0 to i1, !dbg !4253
  %1 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4254
  %br_short = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 29, !dbg !4255
  %frombool2 = zext i1 %tobool to i8, !dbg !4256
  store i8 %frombool2, i8* %br_short, align 8, !dbg !4256
  %2 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4257
  %call = call %struct.fw_card* @fw_card_get(%struct.fw_card* %2) #9, !dbg !4258
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** @fw_workqueue, align 8, !dbg !4259
  %4 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4261
  %br_work = getelementptr inbounds %struct.fw_card, %struct.fw_card* %4, i32 0, i32 28, !dbg !4262
  %5 = load i8, i8* %delayed.addr, align 1, !dbg !4263
  %tobool3 = trunc i8 %5 to i1, !dbg !4263
  %6 = zext i1 %tobool3 to i64, !dbg !4263
  %cond = select i1 %tobool3, i32 3, i32 0, !dbg !4263
  %conv = sext i32 %cond to i64, !dbg !4263
  %call4 = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %3, %struct.delayed_work* %br_work, i64 %conv) #9, !dbg !4264
  br i1 %call4, label %if.end, label %if.then, !dbg !4265

if.then:                                          ; preds = %entry
  %7 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4266
  call void @fw_card_put(%struct.fw_card* %7) #9, !dbg !4267
  br label %if.end, !dbg !4267

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fw_card* @fw_card_get(%struct.fw_card* %card) #0 !dbg !4269 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  %0 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4274
  %kref = getelementptr inbounds %struct.fw_card, %struct.fw_card* %0, i32 0, i32 2, !dbg !4275
  call void @kref_get(%struct.kref* %kref) #9, !dbg !4276
  %1 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4277
  ret %struct.fw_card* %1, !dbg !4278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #0 !dbg !4279 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !4289
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !4290
  %2 = load i64, i64* %delay.addr, align 8, !dbg !4291
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #9, !dbg !4292
  ret i1 %call, !dbg !4293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fw_card_put(%struct.fw_card* %card) #0 !dbg !4294 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4297, metadata !DIExpression()), !dbg !4298
  %0 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4299
  %kref = getelementptr inbounds %struct.fw_card, %struct.fw_card* %0, i32 0, i32 2, !dbg !4300
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @fw_card_release) #9, !dbg !4301
  ret void, !dbg !4302
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_schedule_bm_work(%struct.fw_card* %card, i64 %delay) #0 !dbg !4303 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4306, metadata !DIExpression()), !dbg !4307
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  %0 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4310
  %call = call %struct.fw_card* @fw_card_get(%struct.fw_card* %0) #9, !dbg !4311
  %1 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4312
  %bm_work = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 30, !dbg !4314
  %2 = load i64, i64* %delay.addr, align 8, !dbg !4315
  %call1 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %bm_work, i64 %2) #9, !dbg !4316
  br i1 %call1, label %if.end, label %if.then, !dbg !4317

if.then:                                          ; preds = %entry
  %3 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4318
  call void @fw_card_put(%struct.fw_card* %3) #9, !dbg !4319
  br label %if.end, !dbg !4319

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_delayed_work(%struct.delayed_work* %dwork, i64 %delay) #0 !dbg !4321 {
entry:
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !4326, metadata !DIExpression()), !dbg !4327
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !4328
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !4329
  %2 = load i64, i64* %delay.addr, align 8, !dbg !4330
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #9, !dbg !4331
  ret i1 %call, !dbg !4332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_card_initialize(%struct.fw_card* %card, %struct.fw_card_driver* %driver, %struct.device* %device) #0 !dbg !3974 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4333, metadata !DIExpression()), !dbg !4339
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !4342, metadata !DIExpression()), !dbg !4348
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !4358, metadata !DIExpression()), !dbg !4359
  %__ret.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i, metadata !4360, metadata !DIExpression()), !dbg !4362
  %tmp.i.i.i = alloca i32, align 4
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4363, metadata !DIExpression()), !dbg !4364
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4365, metadata !DIExpression()), !dbg !4373
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4375, metadata !DIExpression()), !dbg !4376
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4377, metadata !DIExpression()), !dbg !4378
  %card.addr = alloca %struct.fw_card*, align 8
  %driver.addr = alloca %struct.fw_card_driver*, align 8
  %device.addr = alloca %struct.device*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %.compoundliteral9 = alloca %struct.atomic64_t, align 8
  %.compoundliteral24 = alloca %struct.atomic64_t, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  store %struct.fw_card_driver* %driver, %struct.fw_card_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card_driver** %driver.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !4383, metadata !DIExpression()), !dbg !4384
  store %struct.atomic_t* @fw_card_initialize.index, %struct.atomic_t** %v.addr.i, align 8
  %0 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4385
  %1 = bitcast %struct.atomic_t* %0 to i8*, !dbg !4385
  store i8* %1, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %2 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4386
  %3 = load i64, i64* %size.addr.i.i, align 8, !dbg !4387
  %conv.i.i = trunc i64 %3 to i32, !dbg !4387
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %2, i32 %conv.i.i) #12, !dbg !4388
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4389
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4389
  call void @kcsan_check_access(i8* %4, i64 %5, i32 7) #12, !dbg !4389
  %6 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4390
  store %struct.atomic_t* %6, %struct.atomic_t** %v.addr.i1.i, align 8
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4391
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i.i.i, align 8
  %8 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !4392
  %9 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !4362
  store i32 %9, i32* %__ret.i.i.i, align 4, !dbg !4362
  %10 = load i32, i32* %__ret.i.i.i, align 4, !dbg !4362
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !4362
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !4362
  %12 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i, i32 %10, i32* %counter.i.i.i) #2, !dbg !4362, !srcloc !4393
  store i32 %12, i32* %__ret.i.i.i, align 4, !dbg !4362
  %13 = load i32, i32* %__ret.i.i.i, align 4, !dbg !4362
  store i32 %13, i32* %tmp.i.i.i, align 4, !dbg !4362
  %14 = load i32, i32* %tmp.i.i.i, align 4, !dbg !4362
  %add.i.i.i = add i32 %8, %14, !dbg !4394
  %15 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4395
  %index = getelementptr inbounds %struct.fw_card, %struct.fw_card* %15, i32 0, i32 25, !dbg !4396
  store i32 %add.i.i.i, i32* %index, align 4, !dbg !4397
  %16 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver.addr, align 8, !dbg !4398
  %17 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4399
  %driver1 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %17, i32 0, i32 0, !dbg !4400
  store %struct.fw_card_driver* %16, %struct.fw_card_driver** %driver1, align 8, !dbg !4401
  %18 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !4402
  %19 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4403
  %device2 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %19, i32 0, i32 1, !dbg !4404
  store %struct.device* %18, %struct.device** %device2, align 8, !dbg !4405
  %20 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4406
  %current_tlabel = getelementptr inbounds %struct.fw_card, %struct.fw_card* %20, i32 0, i32 6, !dbg !4407
  store i32 0, i32* %current_tlabel, align 8, !dbg !4408
  %21 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4409
  %tlabel_mask = getelementptr inbounds %struct.fw_card, %struct.fw_card* %21, i32 0, i32 7, !dbg !4410
  store i64 0, i64* %tlabel_mask, align 8, !dbg !4411
  %22 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4412
  %split_timeout_hi = getelementptr inbounds %struct.fw_card, %struct.fw_card* %22, i32 0, i32 10, !dbg !4413
  store i32 2, i32* %split_timeout_hi, align 8, !dbg !4414
  %23 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4415
  %split_timeout_lo = getelementptr inbounds %struct.fw_card, %struct.fw_card* %23, i32 0, i32 11, !dbg !4416
  store i32 0, i32* %split_timeout_lo, align 4, !dbg !4417
  %24 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4418
  %split_timeout_cycles = getelementptr inbounds %struct.fw_card, %struct.fw_card* %24, i32 0, i32 12, !dbg !4419
  store i32 16000, i32* %split_timeout_cycles, align 8, !dbg !4420
  %25 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4421
  %split_timeout_jiffies = getelementptr inbounds %struct.fw_card, %struct.fw_card* %25, i32 0, i32 13, !dbg !4422
  store i32 500, i32* %split_timeout_jiffies, align 4, !dbg !4423
  %26 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4424
  %color = getelementptr inbounds %struct.fw_card, %struct.fw_card* %26, i32 0, i32 22, !dbg !4425
  store i8 0, i8* %color, align 8, !dbg !4426
  %27 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4427
  %broadcast_channel = getelementptr inbounds %struct.fw_card, %struct.fw_card* %27, i32 0, i32 38, !dbg !4428
  store i32 -2147483617, i32* %broadcast_channel, align 8, !dbg !4429
  %28 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4430
  %kref = getelementptr inbounds %struct.fw_card, %struct.fw_card* %28, i32 0, i32 2, !dbg !4431
  call void @kref_init(%struct.kref* %kref) #9, !dbg !4432
  %29 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4433
  %done = getelementptr inbounds %struct.fw_card, %struct.fw_card* %29, i32 0, i32 3, !dbg !4433
  call void @__init_completion(%struct.completion* %done) #9, !dbg !4433
  %30 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4434
  %transaction_list = getelementptr inbounds %struct.fw_card, %struct.fw_card* %30, i32 0, i32 8, !dbg !4435
  call void @INIT_LIST_HEAD(%struct.list_head* %transaction_list) #9, !dbg !4436
  %31 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4437
  %phy_receiver_list = getelementptr inbounds %struct.fw_card, %struct.fw_card* %31, i32 0, i32 27, !dbg !4438
  call void @INIT_LIST_HEAD(%struct.list_head* %phy_receiver_list) #9, !dbg !4439
  br label %do.body, !dbg !4440

do.body:                                          ; preds = %entry
  %32 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4441
  %lock = getelementptr inbounds %struct.fw_card, %struct.fw_card* %32, i32 0, i32 18, !dbg !4441
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4442
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !4443
  %rlock.i = bitcast %union.anon.1* %34 to %struct.raw_spinlock*, !dbg !4443
  %35 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4441
  %lock4 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %35, i32 0, i32 18, !dbg !4441
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4441
  %rlock = bitcast %union.anon.1* %36 to %struct.raw_spinlock*, !dbg !4441
  %37 = bitcast %struct.spinlock* %lock4 to i8*, !dbg !4441
  %38 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 1 %38, i64 0, i1 false), !dbg !4441
  br label %do.end, !dbg !4441

do.end:                                           ; preds = %do.body
  %39 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4444
  %local_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %39, i32 0, i32 19, !dbg !4445
  store %struct.fw_node* null, %struct.fw_node** %local_node, align 8, !dbg !4446
  br label %do.body5, !dbg !4447

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !4448

do.body6:                                         ; preds = %do.body5
  %40 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4450
  %br_work = getelementptr inbounds %struct.fw_card, %struct.fw_card* %40, i32 0, i32 28, !dbg !4450
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %br_work, i32 0, i32 0, !dbg !4450
  call void @__init_work(%struct.work_struct* %work, i32 0) #9, !dbg !4450
  %41 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4450
  %br_work7 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %41, i32 0, i32 28, !dbg !4450
  %work8 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %br_work7, i32 0, i32 0, !dbg !4450
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work8, i32 0, i32 0, !dbg !4450
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral9, i32 0, i32 0, !dbg !4450
  store i64 68719476704, i64* %counter, align 8, !dbg !4450
  %42 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4450
  %43 = bitcast %struct.atomic64_t* %.compoundliteral9 to i8*, !dbg !4450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false), !dbg !4450
  %44 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4450
  %br_work10 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %44, i32 0, i32 28, !dbg !4450
  %work11 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %br_work10, i32 0, i32 0, !dbg !4450
  %entry12 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work11, i32 0, i32 1, !dbg !4450
  call void @INIT_LIST_HEAD(%struct.list_head* %entry12) #9, !dbg !4450
  %45 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4450
  %br_work13 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %45, i32 0, i32 28, !dbg !4450
  %work14 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %br_work13, i32 0, i32 0, !dbg !4450
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work14, i32 0, i32 2, !dbg !4450
  store void (%struct.work_struct*)* @br_work, void (%struct.work_struct*)** %func, align 8, !dbg !4450
  br label %do.end15, !dbg !4450

do.end15:                                         ; preds = %do.body6
  %46 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4448
  %br_work16 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %46, i32 0, i32 28, !dbg !4448
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %br_work16, i32 0, i32 1, !dbg !4448
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #9, !dbg !4448
  br label %do.end17, !dbg !4448

do.end17:                                         ; preds = %do.end15
  br label %do.body18, !dbg !4452

do.body18:                                        ; preds = %do.end17
  br label %do.body19, !dbg !4453

do.body19:                                        ; preds = %do.body18
  %47 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4455
  %bm_work = getelementptr inbounds %struct.fw_card, %struct.fw_card* %47, i32 0, i32 30, !dbg !4455
  %work20 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %bm_work, i32 0, i32 0, !dbg !4455
  call void @__init_work(%struct.work_struct* %work20, i32 0) #9, !dbg !4455
  %48 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4455
  %bm_work21 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %48, i32 0, i32 30, !dbg !4455
  %work22 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %bm_work21, i32 0, i32 0, !dbg !4455
  %data23 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work22, i32 0, i32 0, !dbg !4455
  %counter25 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral24, i32 0, i32 0, !dbg !4455
  store i64 68719476704, i64* %counter25, align 8, !dbg !4455
  %49 = bitcast %struct.atomic64_t* %data23 to i8*, !dbg !4455
  %50 = bitcast %struct.atomic64_t* %.compoundliteral24 to i8*, !dbg !4455
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false), !dbg !4455
  %51 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4455
  %bm_work26 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %51, i32 0, i32 30, !dbg !4455
  %work27 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %bm_work26, i32 0, i32 0, !dbg !4455
  %entry28 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work27, i32 0, i32 1, !dbg !4455
  call void @INIT_LIST_HEAD(%struct.list_head* %entry28) #9, !dbg !4455
  %52 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4455
  %bm_work29 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %52, i32 0, i32 30, !dbg !4455
  %work30 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %bm_work29, i32 0, i32 0, !dbg !4455
  %func31 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work30, i32 0, i32 2, !dbg !4455
  store void (%struct.work_struct*)* @bm_work, void (%struct.work_struct*)** %func31, align 8, !dbg !4455
  br label %do.end32, !dbg !4455

do.end32:                                         ; preds = %do.body19
  %53 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !4453
  %bm_work33 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %53, i32 0, i32 30, !dbg !4453
  %timer34 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %bm_work33, i32 0, i32 1, !dbg !4453
  call void @init_timer_key(%struct.timer_list* %timer34, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #9, !dbg !4453
  br label %do.end35, !dbg !4453

do.end35:                                         ; preds = %do.end32
  ret void, !dbg !4457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !4458 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4462, metadata !DIExpression()), !dbg !4463
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4464
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4465
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #9, !dbg !4466
  ret void, !dbg !4467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !3987 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4470
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !4471
  store i32 0, i32* %done, align 8, !dbg !4472
  br label %do.body, !dbg !4473

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4474
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !4474
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #9, !dbg !4474
  br label %do.end, !dbg !4474

do.end:                                           ; preds = %do.body
  ret void, !dbg !4476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4477 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  br label %do.body, !dbg !4480

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4481

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4483

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4481

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4485
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4485
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4485
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4485
  br label %do.end3, !dbg !4485

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4481

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4487
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4488
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4489
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4490
  ret void, !dbg !4491
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !4492 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4495, metadata !DIExpression()), !dbg !4496
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !4497, metadata !DIExpression()), !dbg !4498
  ret void, !dbg !4499
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @br_work(%struct.work_struct* %work) #0 !dbg !4500 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %card = alloca %struct.fw_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fw_card*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4505, metadata !DIExpression()), !dbg !4507
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4507
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !4507
  store i8* %1, i8** %__mptr, align 8, !dbg !4507
  br label %do.body, !dbg !4507

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4508

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4507
  %add.ptr = getelementptr i8, i8* %2, i64 -208, !dbg !4507
  %3 = bitcast i8* %add.ptr to %struct.fw_card*, !dbg !4507
  store %struct.fw_card* %3, %struct.fw_card** %tmp, align 8, !dbg !4508
  %4 = load %struct.fw_card*, %struct.fw_card** %tmp, align 8, !dbg !4507
  store %struct.fw_card* %4, %struct.fw_card** %card, align 8, !dbg !4504
  %5 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4510
  %reset_jiffies = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 9, !dbg !4512
  %6 = load i64, i64* %reset_jiffies, align 8, !dbg !4512
  %cmp = icmp ne i64 %6, 0, !dbg !4513
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !4514

land.lhs.true:                                    ; preds = %do.end
  %call = call i64 @get_jiffies_64() #9, !dbg !4515
  %7 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4515
  %reset_jiffies1 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %7, i32 0, i32 9, !dbg !4515
  %8 = load i64, i64* %reset_jiffies1, align 8, !dbg !4515
  %add = add i64 %8, 500, !dbg !4515
  %sub = sub i64 %call, %add, !dbg !4515
  %cmp2 = icmp slt i64 %sub, 0, !dbg !4515
  br i1 %cmp2, label %if.then, label %if.end5, !dbg !4516

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.workqueue_struct*, %struct.workqueue_struct** @fw_workqueue, align 8, !dbg !4517
  %10 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4520
  %br_work = getelementptr inbounds %struct.fw_card, %struct.fw_card* %10, i32 0, i32 28, !dbg !4521
  %call3 = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %9, %struct.delayed_work* %br_work, i64 500) #9, !dbg !4522
  br i1 %call3, label %if.end, label %if.then4, !dbg !4523

if.then4:                                         ; preds = %if.then
  %11 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4524
  call void @fw_card_put(%struct.fw_card* %11) #9, !dbg !4525
  br label %if.end, !dbg !4525

if.end:                                           ; preds = %if.then4, %if.then
  br label %return, !dbg !4526

if.end5:                                          ; preds = %land.lhs.true, %do.end
  %12 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4527
  %13 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4528
  %generation = getelementptr inbounds %struct.fw_card, %struct.fw_card* %13, i32 0, i32 5, !dbg !4529
  %14 = load i32, i32* %generation, align 4, !dbg !4529
  call void @fw_send_phy_config(%struct.fw_card* %12, i32 -1, i32 %14, i32 -1) #9, !dbg !4530
  %15 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4531
  %16 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4532
  %br_short = getelementptr inbounds %struct.fw_card, %struct.fw_card* %16, i32 0, i32 29, !dbg !4533
  %17 = load i8, i8* %br_short, align 8, !dbg !4533
  %tobool = trunc i8 %17 to i1, !dbg !4533
  %call6 = call i32 @reset_bus(%struct.fw_card* %15, i1 zeroext %tobool) #9, !dbg !4534
  %18 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4535
  call void @fw_card_put(%struct.fw_card* %18) #9, !dbg !4536
  br label %return, !dbg !4537

return:                                           ; preds = %if.end5, %if.end
  ret void, !dbg !4537
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #6

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bm_work(%struct.work_struct* %work) #0 !dbg !4538 {
entry:
  %lock.addr.i221 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i221, metadata !4539, metadata !DIExpression()), !dbg !4543
  %lock.addr.i219 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i219, metadata !4539, metadata !DIExpression()), !dbg !4545
  %lock.addr.i217 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i217, metadata !4539, metadata !DIExpression()), !dbg !4550
  %lock.addr.i215 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i215, metadata !4555, metadata !DIExpression()), !dbg !4557
  %lock.addr.i213 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i213, metadata !4539, metadata !DIExpression()), !dbg !4560
  %lock.addr.i211 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i211, metadata !4555, metadata !DIExpression()), !dbg !4562
  %lock.addr.i209 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i209, metadata !4539, metadata !DIExpression()), !dbg !4564
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4566, metadata !DIExpression()), !dbg !4572
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4576, metadata !DIExpression()), !dbg !4578
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4580, metadata !DIExpression()), !dbg !4581
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4582, metadata !DIExpression()), !dbg !4583
  %lock.addr.i207 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i207, metadata !4539, metadata !DIExpression()), !dbg !4584
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4555, metadata !DIExpression()), !dbg !4588
  %work.addr = alloca %struct.work_struct*, align 8
  %card = alloca %struct.fw_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fw_card*, align 8
  %root_device = alloca %struct.fw_device*, align 8
  %irm_device = alloca %struct.fw_device*, align 8
  %root_node = alloca %struct.fw_node*, align 8
  %root_id = alloca i32, align 4
  %new_root_id = alloca i32, align 4
  %irm_id = alloca i32, align 4
  %bm_id = alloca i32, align 4
  %local_id = alloca i32, align 4
  %gap_count = alloca i32, align 4
  %generation = alloca i32, align 4
  %grace = alloca i32, align 4
  %rcode = alloca i32, align 4
  %do_reset = alloca i8, align 1
  %root_device_is_running = alloca i8, align 1
  %root_device_is_cmc = alloca i8, align 1
  %irm_is_1394_1995_only = alloca i8, align 1
  %keep_this_irm = alloca i8, align 1
  %transaction_data = alloca [2 x i32], align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card, metadata !4592, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4594, metadata !DIExpression()), !dbg !4596
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4596
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !4596
  store i8* %1, i8** %__mptr, align 8, !dbg !4596
  br label %do.body, !dbg !4596

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4597

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4596
  %add.ptr = getelementptr i8, i8* %2, i64 -304, !dbg !4596
  %3 = bitcast i8* %add.ptr to %struct.fw_card*, !dbg !4596
  store %struct.fw_card* %3, %struct.fw_card** %tmp, align 8, !dbg !4597
  %4 = load %struct.fw_card*, %struct.fw_card** %tmp, align 8, !dbg !4596
  store %struct.fw_card* %4, %struct.fw_card** %card, align 8, !dbg !4593
  call void @llvm.dbg.declare(metadata %struct.fw_device** %root_device, metadata !4599, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.declare(metadata %struct.fw_device** %irm_device, metadata !4634, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.declare(metadata %struct.fw_node** %root_node, metadata !4636, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.declare(metadata i32* %root_id, metadata !4638, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.declare(metadata i32* %new_root_id, metadata !4640, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.declare(metadata i32* %irm_id, metadata !4642, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.declare(metadata i32* %bm_id, metadata !4644, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.declare(metadata i32* %local_id, metadata !4646, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.declare(metadata i32* %gap_count, metadata !4648, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.declare(metadata i32* %generation, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.declare(metadata i32* %grace, metadata !4652, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.declare(metadata i32* %rcode, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.declare(metadata i8* %do_reset, metadata !4656, metadata !DIExpression()), !dbg !4657
  store i8 0, i8* %do_reset, align 1, !dbg !4657
  call void @llvm.dbg.declare(metadata i8* %root_device_is_running, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.declare(metadata i8* %root_device_is_cmc, metadata !4660, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.declare(metadata i8* %irm_is_1394_1995_only, metadata !4662, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.declare(metadata i8* %keep_this_irm, metadata !4664, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.declare(metadata [2 x i32]* %transaction_data, metadata !4666, metadata !DIExpression()), !dbg !4668
  %5 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4669
  %lock = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 18, !dbg !4670
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !4671
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4674, !srcloc !4676
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4677
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !4677
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !4677
  %8 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4679
  %local_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %8, i32 0, i32 19, !dbg !4680
  %9 = load %struct.fw_node*, %struct.fw_node** %local_node, align 8, !dbg !4680
  %cmp = icmp eq %struct.fw_node* %9, null, !dbg !4681
  br i1 %cmp, label %if.then, label %if.end, !dbg !4682

if.then:                                          ; preds = %do.end
  %10 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4683
  %lock1 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %10, i32 0, i32 18, !dbg !4684
  store %struct.spinlock* %lock1, %struct.spinlock** %lock.addr.i207, align 8
  call void @arch_local_irq_enable() #12, !dbg !4685
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4688, !srcloc !4690
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i207, align 8, !dbg !4691
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !4691
  %rlock.i208 = bitcast %union.anon.1* %12 to %struct.raw_spinlock*, !dbg !4691
  br label %out_put_card, !dbg !4693

if.end:                                           ; preds = %do.end
  %13 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4694
  %generation2 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %13, i32 0, i32 5, !dbg !4695
  %14 = load i32, i32* %generation2, align 4, !dbg !4695
  store i32 %14, i32* %generation, align 4, !dbg !4696
  %15 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4697
  %root_node3 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %15, i32 0, i32 20, !dbg !4698
  %16 = load %struct.fw_node*, %struct.fw_node** %root_node3, align 8, !dbg !4698
  store %struct.fw_node* %16, %struct.fw_node** %root_node, align 8, !dbg !4699
  %17 = load %struct.fw_node*, %struct.fw_node** %root_node, align 8, !dbg !4700
  %call = call %struct.fw_node* @fw_node_get(%struct.fw_node* %17) #9, !dbg !4701
  %18 = load %struct.fw_node*, %struct.fw_node** %root_node, align 8, !dbg !4702
  %data = getelementptr inbounds %struct.fw_node, %struct.fw_node* %18, i32 0, i32 7, !dbg !4703
  %19 = load i8*, i8** %data, align 8, !dbg !4703
  %20 = bitcast i8* %19 to %struct.fw_device*, !dbg !4702
  store %struct.fw_device* %20, %struct.fw_device** %root_device, align 8, !dbg !4704
  %21 = load %struct.fw_device*, %struct.fw_device** %root_device, align 8, !dbg !4705
  %tobool = icmp ne %struct.fw_device* %21, null, !dbg !4705
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4706

land.rhs:                                         ; preds = %if.end
  %22 = load %struct.fw_device*, %struct.fw_device** %root_device, align 8, !dbg !4707
  %state = getelementptr inbounds %struct.fw_device, %struct.fw_device* %22, i32 0, i32 0, !dbg !4708
  store %struct.atomic_t* %state, %struct.atomic_t** %v.addr.i, align 8
  %23 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4709
  %24 = bitcast %struct.atomic_t* %23 to i8*, !dbg !4709
  store i8* %24, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %25 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4710
  %26 = load i64, i64* %size.addr.i.i, align 8, !dbg !4711
  %conv.i.i = trunc i64 %26 to i32, !dbg !4711
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %25, i32 %conv.i.i) #12, !dbg !4712
  %27 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4713
  %28 = load i64, i64* %size.addr.i.i, align 8, !dbg !4713
  call void @kcsan_check_access(i8* %27, i64 %28, i32 4) #12, !dbg !4713
  %29 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4714
  store %struct.atomic_t* %29, %struct.atomic_t** %v.addr.i1.i, align 8
  %30 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4715
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %30, i32 0, i32 0, !dbg !4715
  %31 = load volatile i32, i32* %counter.i.i, align 4, !dbg !4715
  %cmp5 = icmp eq i32 %31, 1, !dbg !4716
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %32 = phi i1 [ false, %if.end ], [ %cmp5, %land.rhs ], !dbg !4717
  %frombool = zext i1 %32 to i8, !dbg !4718
  store i8 %frombool, i8* %root_device_is_running, align 1, !dbg !4718
  %33 = load %struct.fw_device*, %struct.fw_device** %root_device, align 8, !dbg !4719
  %tobool6 = icmp ne %struct.fw_device* %33, null, !dbg !4719
  br i1 %tobool6, label %land.rhs7, label %land.end9, !dbg !4720

land.rhs7:                                        ; preds = %land.end
  %34 = load %struct.fw_device*, %struct.fw_device** %root_device, align 8, !dbg !4721
  %cmc = getelementptr inbounds %struct.fw_device, %struct.fw_device* %34, i32 0, i32 12, !dbg !4722
  %bf.load = load i16, i16* %cmc, align 4, !dbg !4722
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !4722
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4722
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4722
  %tobool8 = icmp ne i32 %bf.cast, 0, !dbg !4720
  br label %land.end9

land.end9:                                        ; preds = %land.rhs7, %land.end
  %35 = phi i1 [ false, %land.end ], [ %tobool8, %land.rhs7 ], !dbg !4717
  %frombool10 = zext i1 %35 to i8, !dbg !4723
  store i8 %frombool10, i8* %root_device_is_cmc, align 1, !dbg !4723
  %36 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4724
  %irm_node = getelementptr inbounds %struct.fw_card, %struct.fw_card* %36, i32 0, i32 21, !dbg !4725
  %37 = load %struct.fw_node*, %struct.fw_node** %irm_node, align 8, !dbg !4725
  %data11 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %37, i32 0, i32 7, !dbg !4726
  %38 = load i8*, i8** %data11, align 8, !dbg !4726
  %39 = bitcast i8* %38 to %struct.fw_device*, !dbg !4724
  store %struct.fw_device* %39, %struct.fw_device** %irm_device, align 8, !dbg !4727
  %40 = load %struct.fw_device*, %struct.fw_device** %irm_device, align 8, !dbg !4728
  %tobool12 = icmp ne %struct.fw_device* %40, null, !dbg !4728
  br i1 %tobool12, label %land.lhs.true, label %land.end17, !dbg !4729

land.lhs.true:                                    ; preds = %land.end9
  %41 = load %struct.fw_device*, %struct.fw_device** %irm_device, align 8, !dbg !4730
  %config_rom = getelementptr inbounds %struct.fw_device, %struct.fw_device* %41, i32 0, i32 9, !dbg !4731
  %42 = load i32*, i32** %config_rom, align 8, !dbg !4731
  %tobool13 = icmp ne i32* %42, null, !dbg !4730
  br i1 %tobool13, label %land.rhs14, label %land.end17, !dbg !4732

land.rhs14:                                       ; preds = %land.lhs.true
  %43 = load %struct.fw_device*, %struct.fw_device** %irm_device, align 8, !dbg !4733
  %config_rom15 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %43, i32 0, i32 9, !dbg !4734
  %44 = load i32*, i32** %config_rom15, align 8, !dbg !4734
  %arrayidx = getelementptr i32, i32* %44, i64 2, !dbg !4733
  %45 = load i32, i32* %arrayidx, align 4, !dbg !4733
  %and = and i32 %45, 240, !dbg !4735
  %cmp16 = icmp eq i32 %and, 0, !dbg !4736
  br label %land.end17

land.end17:                                       ; preds = %land.rhs14, %land.lhs.true, %land.end9
  %46 = phi i1 [ false, %land.lhs.true ], [ false, %land.end9 ], [ %cmp16, %land.rhs14 ], !dbg !4717
  %frombool18 = zext i1 %46 to i8, !dbg !4737
  store i8 %frombool18, i8* %irm_is_1394_1995_only, align 1, !dbg !4737
  %47 = load %struct.fw_device*, %struct.fw_device** %irm_device, align 8, !dbg !4738
  %tobool19 = icmp ne %struct.fw_device* %47, null, !dbg !4738
  br i1 %tobool19, label %land.lhs.true20, label %land.end27, !dbg !4739

land.lhs.true20:                                  ; preds = %land.end17
  %48 = load %struct.fw_device*, %struct.fw_device** %irm_device, align 8, !dbg !4740
  %config_rom21 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %48, i32 0, i32 9, !dbg !4741
  %49 = load i32*, i32** %config_rom21, align 8, !dbg !4741
  %tobool22 = icmp ne i32* %49, null, !dbg !4740
  br i1 %tobool22, label %land.rhs23, label %land.end27, !dbg !4742

land.rhs23:                                       ; preds = %land.lhs.true20
  %50 = load %struct.fw_device*, %struct.fw_device** %irm_device, align 8, !dbg !4743
  %config_rom24 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %50, i32 0, i32 9, !dbg !4744
  %51 = load i32*, i32** %config_rom24, align 8, !dbg !4744
  %arrayidx25 = getelementptr i32, i32* %51, i64 3, !dbg !4743
  %52 = load i32, i32* %arrayidx25, align 4, !dbg !4743
  %shr = lshr i32 %52, 8, !dbg !4745
  %cmp26 = icmp eq i32 %shr, 133, !dbg !4746
  br label %land.end27

land.end27:                                       ; preds = %land.rhs23, %land.lhs.true20, %land.end17
  %53 = phi i1 [ false, %land.lhs.true20 ], [ false, %land.end17 ], [ %cmp26, %land.rhs23 ], !dbg !4717
  %frombool28 = zext i1 %53 to i8, !dbg !4747
  store i8 %frombool28, i8* %keep_this_irm, align 1, !dbg !4747
  %54 = load %struct.fw_node*, %struct.fw_node** %root_node, align 8, !dbg !4748
  %node_id = getelementptr inbounds %struct.fw_node, %struct.fw_node* %54, i32 0, i32 0, !dbg !4749
  %55 = load i16, i16* %node_id, align 8, !dbg !4749
  %conv = zext i16 %55 to i32, !dbg !4748
  store i32 %conv, i32* %root_id, align 4, !dbg !4750
  %56 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4751
  %irm_node29 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %56, i32 0, i32 21, !dbg !4752
  %57 = load %struct.fw_node*, %struct.fw_node** %irm_node29, align 8, !dbg !4752
  %node_id30 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %57, i32 0, i32 0, !dbg !4753
  %58 = load i16, i16* %node_id30, align 8, !dbg !4753
  %conv31 = zext i16 %58 to i32, !dbg !4751
  store i32 %conv31, i32* %irm_id, align 4, !dbg !4754
  %59 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4755
  %local_node32 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %59, i32 0, i32 19, !dbg !4756
  %60 = load %struct.fw_node*, %struct.fw_node** %local_node32, align 8, !dbg !4756
  %node_id33 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %60, i32 0, i32 0, !dbg !4757
  %61 = load i16, i16* %node_id33, align 8, !dbg !4757
  %conv34 = zext i16 %61 to i32, !dbg !4755
  store i32 %conv34, i32* %local_id, align 4, !dbg !4758
  %62 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4759
  %reset_jiffies = getelementptr inbounds %struct.fw_card, %struct.fw_card* %62, i32 0, i32 9, !dbg !4759
  %63 = load i64, i64* %reset_jiffies, align 8, !dbg !4759
  %add = add i64 %63, 32, !dbg !4759
  %call35 = call i64 @get_jiffies_64() #9, !dbg !4759
  %sub = sub i64 %add, %call35, !dbg !4759
  %cmp36 = icmp slt i64 %sub, 0, !dbg !4759
  %land.ext = zext i1 %cmp36 to i32, !dbg !4759
  store i32 %land.ext, i32* %grace, align 4, !dbg !4760
  %64 = load i32, i32* %generation, align 4, !dbg !4761
  %65 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4762
  %bm_generation = getelementptr inbounds %struct.fw_card, %struct.fw_card* %65, i32 0, i32 32, !dbg !4763
  %66 = load i32, i32* %bm_generation, align 4, !dbg !4763
  %call38 = call zeroext i1 @is_next_generation(i32 %64, i32 %66) #9, !dbg !4764
  br i1 %call38, label %land.lhs.true40, label %lor.lhs.false, !dbg !4765

land.lhs.true40:                                  ; preds = %land.end27
  %67 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4766
  %bm_abdicate = getelementptr inbounds %struct.fw_card, %struct.fw_card* %67, i32 0, i32 34, !dbg !4767
  %68 = load i8, i8* %bm_abdicate, align 4, !dbg !4767
  %tobool41 = trunc i8 %68 to i1, !dbg !4767
  br i1 %tobool41, label %lor.lhs.false, label %if.then47, !dbg !4768

lor.lhs.false:                                    ; preds = %land.lhs.true40, %land.end27
  %69 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4769
  %bm_generation42 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %69, i32 0, i32 32, !dbg !4770
  %70 = load i32, i32* %bm_generation42, align 4, !dbg !4770
  %71 = load i32, i32* %generation, align 4, !dbg !4771
  %cmp43 = icmp ne i32 %70, %71, !dbg !4772
  br i1 %cmp43, label %land.lhs.true45, label %if.else, !dbg !4773

land.lhs.true45:                                  ; preds = %lor.lhs.false
  %72 = load i32, i32* %grace, align 4, !dbg !4774
  %tobool46 = icmp ne i32 %72, 0, !dbg !4774
  br i1 %tobool46, label %if.then47, label %if.else, !dbg !4775

if.then47:                                        ; preds = %land.lhs.true45, %land.lhs.true40
  %73 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4776
  %irm_node48 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %73, i32 0, i32 21, !dbg !4778
  %74 = load %struct.fw_node*, %struct.fw_node** %irm_node48, align 8, !dbg !4778
  %link_on = getelementptr inbounds %struct.fw_node, %struct.fw_node* %74, i32 0, i32 3, !dbg !4779
  %bf.load49 = load i8, i8* %link_on, align 4, !dbg !4779
  %bf.clear50 = and i8 %bf.load49, 1, !dbg !4779
  %tobool51 = icmp ne i8 %bf.clear50, 0, !dbg !4776
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !4780

if.then52:                                        ; preds = %if.then47
  %75 = load i32, i32* %local_id, align 4, !dbg !4781
  store i32 %75, i32* %new_root_id, align 4, !dbg !4783
  %76 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4784
  %77 = load i32, i32* %new_root_id, align 4, !dbg !4785
  call void (%struct.fw_card*, i8*, ...) @fw_notice(%struct.fw_card* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %77) #9, !dbg !4786
  br label %pick_me, !dbg !4787

if.end53:                                         ; preds = %if.then47
  %78 = load i8, i8* %irm_is_1394_1995_only, align 1, !dbg !4788
  %tobool54 = trunc i8 %78 to i1, !dbg !4788
  br i1 %tobool54, label %land.lhs.true56, label %if.end59, !dbg !4790

land.lhs.true56:                                  ; preds = %if.end53
  %79 = load i8, i8* %keep_this_irm, align 1, !dbg !4791
  %tobool57 = trunc i8 %79 to i1, !dbg !4791
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !4792

if.then58:                                        ; preds = %land.lhs.true56
  %80 = load i32, i32* %local_id, align 4, !dbg !4793
  store i32 %80, i32* %new_root_id, align 4, !dbg !4795
  %81 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4796
  %82 = load i32, i32* %new_root_id, align 4, !dbg !4797
  call void (%struct.fw_card*, i8*, ...) @fw_notice(%struct.fw_card* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %82) #9, !dbg !4798
  br label %pick_me, !dbg !4799

if.end59:                                         ; preds = %land.lhs.true56, %if.end53
  %arrayidx60 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4800
  store i32 1056964608, i32* %arrayidx60, align 4, !dbg !4801
  %83 = load i32, i32* %local_id, align 4, !dbg !4802
  %84 = call i1 @llvm.is.constant.i32(i32 %83), !dbg !4802
  br i1 %84, label %cond.true, label %cond.false, !dbg !4802

cond.true:                                        ; preds = %if.end59
  %85 = load i32, i32* %local_id, align 4, !dbg !4802
  %and61 = and i32 %85, 255, !dbg !4802
  %shl = shl i32 %and61, 24, !dbg !4802
  %86 = load i32, i32* %local_id, align 4, !dbg !4802
  %and62 = and i32 %86, 65280, !dbg !4802
  %shl63 = shl i32 %and62, 8, !dbg !4802
  %or = or i32 %shl, %shl63, !dbg !4802
  %87 = load i32, i32* %local_id, align 4, !dbg !4802
  %and64 = and i32 %87, 16711680, !dbg !4802
  %shr65 = lshr i32 %and64, 8, !dbg !4802
  %or66 = or i32 %or, %shr65, !dbg !4802
  %88 = load i32, i32* %local_id, align 4, !dbg !4802
  %and67 = and i32 %88, -16777216, !dbg !4802
  %shr68 = lshr i32 %and67, 24, !dbg !4802
  %or69 = or i32 %or66, %shr68, !dbg !4802
  br label %cond.end, !dbg !4802

cond.false:                                       ; preds = %if.end59
  %89 = load i32, i32* %local_id, align 4, !dbg !4802
  %call70 = call i32 @__fswab32(i32 %89) #11, !dbg !4802
  br label %cond.end, !dbg !4802

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or69, %cond.true ], [ %call70, %cond.false ], !dbg !4802
  %arrayidx71 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 1, !dbg !4803
  store i32 %cond, i32* %arrayidx71, align 4, !dbg !4804
  %90 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4805
  %lock72 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %90, i32 0, i32 18, !dbg !4806
  store %struct.spinlock* %lock72, %struct.spinlock** %lock.addr.i209, align 8
  call void @arch_local_irq_enable() #12, !dbg !4807
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4808, !srcloc !4690
  %91 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i209, align 8, !dbg !4809
  %92 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %91, i32 0, i32 0, !dbg !4809
  %rlock.i210 = bitcast %union.anon.1* %92 to %struct.raw_spinlock*, !dbg !4809
  %93 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4810
  %94 = load i32, i32* %irm_id, align 4, !dbg !4811
  %95 = load i32, i32* %generation, align 4, !dbg !4812
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4813
  %96 = bitcast i32* %arraydecay to i8*, !dbg !4813
  %call73 = call i32 @fw_run_transaction(%struct.fw_card* %93, i32 18, i32 %94, i32 %95, i32 0, i64 281474708275740, i8* %96, i64 8) #9, !dbg !4814
  store i32 %call73, i32* %rcode, align 4, !dbg !4815
  %97 = load i32, i32* %rcode, align 4, !dbg !4816
  %cmp74 = icmp eq i32 %97, 19, !dbg !4818
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !4819

if.then76:                                        ; preds = %cond.end
  br label %out, !dbg !4820

if.end77:                                         ; preds = %cond.end
  %arrayidx78 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4821
  %98 = load i32, i32* %arrayidx78, align 4, !dbg !4821
  %99 = call i1 @llvm.is.constant.i32(i32 %98), !dbg !4821
  br i1 %99, label %cond.true79, label %cond.false95, !dbg !4821

cond.true79:                                      ; preds = %if.end77
  %arrayidx80 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4821
  %100 = load i32, i32* %arrayidx80, align 4, !dbg !4821
  %and81 = and i32 %100, 255, !dbg !4821
  %shl82 = shl i32 %and81, 24, !dbg !4821
  %arrayidx83 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4821
  %101 = load i32, i32* %arrayidx83, align 4, !dbg !4821
  %and84 = and i32 %101, 65280, !dbg !4821
  %shl85 = shl i32 %and84, 8, !dbg !4821
  %or86 = or i32 %shl82, %shl85, !dbg !4821
  %arrayidx87 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4821
  %102 = load i32, i32* %arrayidx87, align 4, !dbg !4821
  %and88 = and i32 %102, 16711680, !dbg !4821
  %shr89 = lshr i32 %and88, 8, !dbg !4821
  %or90 = or i32 %or86, %shr89, !dbg !4821
  %arrayidx91 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4821
  %103 = load i32, i32* %arrayidx91, align 4, !dbg !4821
  %and92 = and i32 %103, -16777216, !dbg !4821
  %shr93 = lshr i32 %and92, 24, !dbg !4821
  %or94 = or i32 %or90, %shr93, !dbg !4821
  br label %cond.end98, !dbg !4821

cond.false95:                                     ; preds = %if.end77
  %arrayidx96 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4821
  %104 = load i32, i32* %arrayidx96, align 4, !dbg !4821
  %call97 = call i32 @__fswab32(i32 %104) #11, !dbg !4821
  br label %cond.end98, !dbg !4821

cond.end98:                                       ; preds = %cond.false95, %cond.true79
  %cond99 = phi i32 [ %or94, %cond.true79 ], [ %call97, %cond.false95 ], !dbg !4821
  store i32 %cond99, i32* %bm_id, align 4, !dbg !4822
  %105 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4823
  %lock100 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %105, i32 0, i32 18, !dbg !4824
  store %struct.spinlock* %lock100, %struct.spinlock** %lock.addr.i211, align 8
  call void @arch_local_irq_disable() #12, !dbg !4825
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4826, !srcloc !4676
  %106 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i211, align 8, !dbg !4827
  %107 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %106, i32 0, i32 0, !dbg !4827
  %rlock.i212 = bitcast %union.anon.1* %107 to %struct.raw_spinlock*, !dbg !4827
  %108 = load i32, i32* %rcode, align 4, !dbg !4828
  %cmp101 = icmp eq i32 %108, 0, !dbg !4830
  br i1 %cmp101, label %land.lhs.true103, label %if.end115, !dbg !4831

land.lhs.true103:                                 ; preds = %cond.end98
  %109 = load i32, i32* %generation, align 4, !dbg !4832
  %110 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4833
  %generation104 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %110, i32 0, i32 5, !dbg !4834
  %111 = load i32, i32* %generation104, align 4, !dbg !4834
  %cmp105 = icmp eq i32 %109, %111, !dbg !4835
  br i1 %cmp105, label %if.then107, label %if.end115, !dbg !4836

if.then107:                                       ; preds = %land.lhs.true103
  %112 = load i32, i32* %bm_id, align 4, !dbg !4837
  %cmp108 = icmp eq i32 %112, 63, !dbg !4838
  br i1 %cmp108, label %cond.true110, label %cond.false111, !dbg !4837

cond.true110:                                     ; preds = %if.then107
  %113 = load i32, i32* %local_id, align 4, !dbg !4839
  br label %cond.end113, !dbg !4837

cond.false111:                                    ; preds = %if.then107
  %114 = load i32, i32* %bm_id, align 4, !dbg !4840
  %or112 = or i32 65472, %114, !dbg !4841
  br label %cond.end113, !dbg !4837

cond.end113:                                      ; preds = %cond.false111, %cond.true110
  %cond114 = phi i32 [ %113, %cond.true110 ], [ %or112, %cond.false111 ], !dbg !4837
  %115 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4842
  %bm_node_id = getelementptr inbounds %struct.fw_card, %struct.fw_card* %115, i32 0, i32 33, !dbg !4843
  store i32 %cond114, i32* %bm_node_id, align 8, !dbg !4844
  br label %if.end115, !dbg !4842

if.end115:                                        ; preds = %cond.end113, %land.lhs.true103, %cond.end98
  %116 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4845
  %lock116 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %116, i32 0, i32 18, !dbg !4846
  store %struct.spinlock* %lock116, %struct.spinlock** %lock.addr.i213, align 8
  call void @arch_local_irq_enable() #12, !dbg !4847
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4848, !srcloc !4690
  %117 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i213, align 8, !dbg !4849
  %118 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %117, i32 0, i32 0, !dbg !4849
  %rlock.i214 = bitcast %union.anon.1* %118 to %struct.raw_spinlock*, !dbg !4849
  %119 = load i32, i32* %rcode, align 4, !dbg !4850
  %cmp117 = icmp eq i32 %119, 0, !dbg !4852
  br i1 %cmp117, label %land.lhs.true119, label %if.end127, !dbg !4853

land.lhs.true119:                                 ; preds = %if.end115
  %120 = load i32, i32* %bm_id, align 4, !dbg !4854
  %cmp120 = icmp ne i32 %120, 63, !dbg !4855
  br i1 %cmp120, label %if.then122, label %if.end127, !dbg !4856

if.then122:                                       ; preds = %land.lhs.true119
  %121 = load i32, i32* %local_id, align 4, !dbg !4857
  %122 = load i32, i32* %irm_id, align 4, !dbg !4860
  %cmp123 = icmp eq i32 %121, %122, !dbg !4861
  br i1 %cmp123, label %if.then125, label %if.end126, !dbg !4862

if.then125:                                       ; preds = %if.then122
  %123 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4863
  %124 = load i32, i32* %generation, align 4, !dbg !4864
  call void @allocate_broadcast_channel(%struct.fw_card* %123, i32 %124) #9, !dbg !4865
  br label %if.end126, !dbg !4865

if.end126:                                        ; preds = %if.then125, %if.then122
  br label %out, !dbg !4866

if.end127:                                        ; preds = %land.lhs.true119, %if.end115
  %125 = load i32, i32* %rcode, align 4, !dbg !4867
  %cmp128 = icmp eq i32 %125, 16, !dbg !4869
  br i1 %cmp128, label %if.then130, label %if.end131, !dbg !4870

if.then130:                                       ; preds = %if.end127
  %126 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4871
  call void @fw_schedule_bm_work(%struct.fw_card* %126, i64 32) #9, !dbg !4873
  br label %out, !dbg !4874

if.end131:                                        ; preds = %if.end127
  %127 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4875
  %lock132 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %127, i32 0, i32 18, !dbg !4876
  store %struct.spinlock* %lock132, %struct.spinlock** %lock.addr.i215, align 8
  call void @arch_local_irq_disable() #12, !dbg !4877
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4878, !srcloc !4676
  %128 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i215, align 8, !dbg !4879
  %129 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %128, i32 0, i32 0, !dbg !4879
  %rlock.i216 = bitcast %union.anon.1* %129 to %struct.raw_spinlock*, !dbg !4879
  %130 = load i32, i32* %rcode, align 4, !dbg !4880
  %cmp133 = icmp ne i32 %130, 0, !dbg !4882
  br i1 %cmp133, label %land.lhs.true135, label %if.end139, !dbg !4883

land.lhs.true135:                                 ; preds = %if.end131
  %131 = load i8, i8* %keep_this_irm, align 1, !dbg !4884
  %tobool136 = trunc i8 %131 to i1, !dbg !4884
  br i1 %tobool136, label %if.end139, label %if.then137, !dbg !4885

if.then137:                                       ; preds = %land.lhs.true135
  %132 = load i32, i32* %local_id, align 4, !dbg !4886
  store i32 %132, i32* %new_root_id, align 4, !dbg !4888
  %133 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4889
  %134 = load i32, i32* %rcode, align 4, !dbg !4890
  %call138 = call i8* @fw_rcode_string(i32 %134) #9, !dbg !4891
  %135 = load i32, i32* %new_root_id, align 4, !dbg !4892
  call void (%struct.fw_card*, i8*, ...) @fw_notice(%struct.fw_card* %133, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* %call138, i32 %135) #9, !dbg !4893
  br label %pick_me, !dbg !4894

if.end139:                                        ; preds = %land.lhs.true135, %if.end131
  br label %if.end146, !dbg !4895

if.else:                                          ; preds = %land.lhs.true45, %lor.lhs.false
  %136 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4896
  %bm_generation140 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %136, i32 0, i32 32, !dbg !4897
  %137 = load i32, i32* %bm_generation140, align 4, !dbg !4897
  %138 = load i32, i32* %generation, align 4, !dbg !4898
  %cmp141 = icmp ne i32 %137, %138, !dbg !4899
  br i1 %cmp141, label %if.then143, label %if.end145, !dbg !4900

if.then143:                                       ; preds = %if.else
  %139 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4901
  %lock144 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %139, i32 0, i32 18, !dbg !4902
  store %struct.spinlock* %lock144, %struct.spinlock** %lock.addr.i217, align 8
  call void @arch_local_irq_enable() #12, !dbg !4903
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4904, !srcloc !4690
  %140 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i217, align 8, !dbg !4905
  %141 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %140, i32 0, i32 0, !dbg !4905
  %rlock.i218 = bitcast %union.anon.1* %141 to %struct.raw_spinlock*, !dbg !4905
  %142 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4906
  call void @fw_schedule_bm_work(%struct.fw_card* %142, i64 32) #9, !dbg !4907
  br label %out, !dbg !4908

if.end145:                                        ; preds = %if.else
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end139
  %143 = load i32, i32* %generation, align 4, !dbg !4909
  %144 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4910
  %bm_generation147 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %144, i32 0, i32 32, !dbg !4911
  store i32 %143, i32* %bm_generation147, align 4, !dbg !4912
  %145 = load %struct.fw_device*, %struct.fw_device** %root_device, align 8, !dbg !4913
  %cmp148 = icmp eq %struct.fw_device* %145, null, !dbg !4914
  br i1 %cmp148, label %if.then150, label %if.else151, !dbg !4915

if.then150:                                       ; preds = %if.end146
  %146 = load i32, i32* %local_id, align 4, !dbg !4916
  store i32 %146, i32* %new_root_id, align 4, !dbg !4918
  br label %if.end161, !dbg !4919

if.else151:                                       ; preds = %if.end146
  %147 = load i8, i8* %root_device_is_running, align 1, !dbg !4920
  %tobool152 = trunc i8 %147 to i1, !dbg !4920
  br i1 %tobool152, label %if.else155, label %if.then153, !dbg !4921

if.then153:                                       ; preds = %if.else151
  %148 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4922
  %lock154 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %148, i32 0, i32 18, !dbg !4923
  store %struct.spinlock* %lock154, %struct.spinlock** %lock.addr.i219, align 8
  call void @arch_local_irq_enable() #12, !dbg !4924
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4925, !srcloc !4690
  %149 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i219, align 8, !dbg !4926
  %150 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %149, i32 0, i32 0, !dbg !4926
  %rlock.i220 = bitcast %union.anon.1* %150 to %struct.raw_spinlock*, !dbg !4926
  br label %out, !dbg !4927

if.else155:                                       ; preds = %if.else151
  %151 = load i8, i8* %root_device_is_cmc, align 1, !dbg !4928
  %tobool156 = trunc i8 %151 to i1, !dbg !4928
  br i1 %tobool156, label %if.then157, label %if.else158, !dbg !4930

if.then157:                                       ; preds = %if.else155
  %152 = load i32, i32* %root_id, align 4, !dbg !4931
  store i32 %152, i32* %new_root_id, align 4, !dbg !4933
  br label %if.end159, !dbg !4934

if.else158:                                       ; preds = %if.else155
  %153 = load i32, i32* %local_id, align 4, !dbg !4935
  store i32 %153, i32* %new_root_id, align 4, !dbg !4937
  br label %if.end159

if.end159:                                        ; preds = %if.else158, %if.then157
  br label %if.end160

if.end160:                                        ; preds = %if.end159
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.then150
  br label %pick_me, !dbg !4938

pick_me:                                          ; preds = %if.end161, %if.then137, %if.then58, %if.then52
  call void @llvm.dbg.label(metadata !4939), !dbg !4940
  %154 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4941
  %beta_repeaters_present = getelementptr inbounds %struct.fw_card, %struct.fw_card* %154, i32 0, i32 24, !dbg !4943
  %155 = load i8, i8* %beta_repeaters_present, align 8, !dbg !4943
  %tobool162 = trunc i8 %155 to i1, !dbg !4943
  br i1 %tobool162, label %if.else175, label %land.lhs.true163, !dbg !4944

land.lhs.true163:                                 ; preds = %pick_me
  %156 = load %struct.fw_node*, %struct.fw_node** %root_node, align 8, !dbg !4945
  %max_hops = getelementptr inbounds %struct.fw_node, %struct.fw_node* %156, i32 0, i32 4, !dbg !4946
  %bf.load164 = load i8, i8* %max_hops, align 1, !dbg !4946
  %bf.lshr165 = lshr i8 %bf.load164, 4, !dbg !4946
  %conv166 = zext i8 %bf.lshr165 to i64, !dbg !4945
  %cmp167 = icmp ult i64 %conv166, 16, !dbg !4947
  br i1 %cmp167, label %if.then169, label %if.else175, !dbg !4948

if.then169:                                       ; preds = %land.lhs.true163
  %157 = load %struct.fw_node*, %struct.fw_node** %root_node, align 8, !dbg !4949
  %max_hops170 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %157, i32 0, i32 4, !dbg !4950
  %bf.load171 = load i8, i8* %max_hops170, align 1, !dbg !4950
  %bf.lshr172 = lshr i8 %bf.load171, 4, !dbg !4950
  %idxprom = zext i8 %bf.lshr172 to i64, !dbg !4951
  %arrayidx173 = getelementptr [16 x i8], [16 x i8]* @gap_count_table, i64 0, i64 %idxprom, !dbg !4951
  %158 = load i8, i8* %arrayidx173, align 1, !dbg !4951
  %conv174 = sext i8 %158 to i32, !dbg !4951
  store i32 %conv174, i32* %gap_count, align 4, !dbg !4952
  br label %if.end176, !dbg !4953

if.else175:                                       ; preds = %land.lhs.true163, %pick_me
  store i32 63, i32* %gap_count, align 4, !dbg !4954
  br label %if.end176

if.end176:                                        ; preds = %if.else175, %if.then169
  %159 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4955
  %bm_retries = getelementptr inbounds %struct.fw_card, %struct.fw_card* %159, i32 0, i32 31, !dbg !4957
  %160 = load i32, i32* %bm_retries, align 8, !dbg !4958
  %inc = add i32 %160, 1, !dbg !4958
  store i32 %inc, i32* %bm_retries, align 8, !dbg !4958
  %cmp177 = icmp slt i32 %160, 5, !dbg !4959
  br i1 %cmp177, label %land.lhs.true179, label %if.end187, !dbg !4960

land.lhs.true179:                                 ; preds = %if.end176
  %161 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4961
  %gap_count180 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %161, i32 0, i32 23, !dbg !4962
  %162 = load i32, i32* %gap_count180, align 4, !dbg !4962
  %163 = load i32, i32* %gap_count, align 4, !dbg !4963
  %cmp181 = icmp ne i32 %162, %163, !dbg !4964
  br i1 %cmp181, label %if.then186, label %lor.lhs.false183, !dbg !4965

lor.lhs.false183:                                 ; preds = %land.lhs.true179
  %164 = load i32, i32* %new_root_id, align 4, !dbg !4966
  %165 = load i32, i32* %root_id, align 4, !dbg !4967
  %cmp184 = icmp ne i32 %164, %165, !dbg !4968
  br i1 %cmp184, label %if.then186, label %if.end187, !dbg !4969

if.then186:                                       ; preds = %lor.lhs.false183, %land.lhs.true179
  store i8 1, i8* %do_reset, align 1, !dbg !4970
  br label %if.end187, !dbg !4971

if.end187:                                        ; preds = %if.then186, %lor.lhs.false183, %if.end176
  %166 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4972
  %lock188 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %166, i32 0, i32 18, !dbg !4973
  store %struct.spinlock* %lock188, %struct.spinlock** %lock.addr.i221, align 8
  call void @arch_local_irq_enable() #12, !dbg !4974
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !4975, !srcloc !4690
  %167 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i221, align 8, !dbg !4976
  %168 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %167, i32 0, i32 0, !dbg !4976
  %rlock.i222 = bitcast %union.anon.1* %168 to %struct.raw_spinlock*, !dbg !4976
  %169 = load i8, i8* %do_reset, align 1, !dbg !4977
  %tobool189 = trunc i8 %169 to i1, !dbg !4977
  br i1 %tobool189, label %if.then190, label %if.end192, !dbg !4979

if.then190:                                       ; preds = %if.end187
  %170 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4980
  %171 = load i32, i32* %new_root_id, align 4, !dbg !4982
  %172 = load i32, i32* %gap_count, align 4, !dbg !4983
  call void (%struct.fw_card*, i8*, ...) @fw_notice(%struct.fw_card* %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %171, i32 %172) #9, !dbg !4984
  %173 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4985
  %174 = load i32, i32* %new_root_id, align 4, !dbg !4986
  %175 = load i32, i32* %generation, align 4, !dbg !4987
  %176 = load i32, i32* %gap_count, align 4, !dbg !4988
  call void @fw_send_phy_config(%struct.fw_card* %173, i32 %174, i32 %175, i32 %176) #9, !dbg !4989
  %177 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4990
  %call191 = call i32 @reset_bus(%struct.fw_card* %177, i1 zeroext true) #9, !dbg !4991
  br label %out, !dbg !4992

if.end192:                                        ; preds = %if.end187
  %178 = load i8, i8* %root_device_is_cmc, align 1, !dbg !4993
  %tobool193 = trunc i8 %178 to i1, !dbg !4993
  br i1 %tobool193, label %if.then194, label %if.end202, !dbg !4995

if.then194:                                       ; preds = %if.end192
  %arrayidx195 = getelementptr [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !4996
  store i32 65536, i32* %arrayidx195, align 4, !dbg !4998
  %179 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !4999
  %180 = load i32, i32* %root_id, align 4, !dbg !5000
  %181 = load i32, i32* %generation, align 4, !dbg !5001
  %arraydecay196 = getelementptr inbounds [2 x i32], [2 x i32]* %transaction_data, i64 0, i64 0, !dbg !5002
  %182 = bitcast i32* %arraydecay196 to i8*, !dbg !5002
  %call197 = call i32 @fw_run_transaction(%struct.fw_card* %179, i32 0, i32 %180, i32 %181, i32 0, i64 281474708275204, i8* %182, i64 4) #9, !dbg !5003
  store i32 %call197, i32* %rcode, align 4, !dbg !5004
  %183 = load i32, i32* %rcode, align 4, !dbg !5005
  %cmp198 = icmp eq i32 %183, 19, !dbg !5007
  br i1 %cmp198, label %if.then200, label %if.end201, !dbg !5008

if.then200:                                       ; preds = %if.then194
  br label %out, !dbg !5009

if.end201:                                        ; preds = %if.then194
  br label %if.end202, !dbg !5010

if.end202:                                        ; preds = %if.end201, %if.end192
  %184 = load i32, i32* %local_id, align 4, !dbg !5011
  %185 = load i32, i32* %irm_id, align 4, !dbg !5013
  %cmp203 = icmp eq i32 %184, %185, !dbg !5014
  br i1 %cmp203, label %if.then205, label %if.end206, !dbg !5015

if.then205:                                       ; preds = %if.end202
  %186 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !5016
  %187 = load i32, i32* %generation, align 4, !dbg !5017
  call void @allocate_broadcast_channel(%struct.fw_card* %186, i32 %187) #9, !dbg !5018
  br label %if.end206, !dbg !5018

if.end206:                                        ; preds = %if.then205, %if.end202
  br label %out, !dbg !5013

out:                                              ; preds = %if.end206, %if.then200, %if.then190, %if.then153, %if.then143, %if.then130, %if.end126, %if.then76
  call void @llvm.dbg.label(metadata !5019), !dbg !5020
  %188 = load %struct.fw_node*, %struct.fw_node** %root_node, align 8, !dbg !5021
  call void @fw_node_put(%struct.fw_node* %188) #9, !dbg !5022
  br label %out_put_card, !dbg !5022

out_put_card:                                     ; preds = %out, %if.then
  call void @llvm.dbg.label(metadata !5023), !dbg !5024
  %189 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !5025
  call void @fw_card_put(%struct.fw_card* %189) #9, !dbg !5026
  ret void, !dbg !5027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fw_card_add(%struct.fw_card* %card, i32 %max_receive, i32 %link_speed, i64 %guid) #0 !dbg !5028 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %max_receive.addr = alloca i32, align 4
  %link_speed.addr = alloca i32, align 4
  %guid.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5031, metadata !DIExpression()), !dbg !5032
  store i32 %max_receive, i32* %max_receive.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_receive.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  store i32 %link_speed, i32* %link_speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %link_speed.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  store i64 %guid, i64* %guid.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %guid.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5039, metadata !DIExpression()), !dbg !5040
  %0 = load i32, i32* %max_receive.addr, align 4, !dbg !5041
  %1 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5042
  %max_receive1 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 15, !dbg !5043
  store i32 %0, i32* %max_receive1, align 8, !dbg !5044
  %2 = load i32, i32* %link_speed.addr, align 4, !dbg !5045
  %3 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5046
  %link_speed2 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %3, i32 0, i32 16, !dbg !5047
  store i32 %2, i32* %link_speed2, align 4, !dbg !5048
  %4 = load i64, i64* %guid.addr, align 8, !dbg !5049
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5050
  %guid3 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 14, !dbg !5051
  store i64 %4, i64* %guid3, align 8, !dbg !5052
  call void @mutex_lock(%struct.mutex* @card_mutex) #9, !dbg !5053
  %6 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5054
  call void @generate_config_rom(%struct.fw_card* %6, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @tmp_config_rom, i64 0, i64 0)) #9, !dbg !5055
  %7 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5056
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %7, i32 0, i32 0, !dbg !5057
  %8 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !5057
  %enable = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %8, i32 0, i32 0, !dbg !5058
  %9 = load i32 (%struct.fw_card*, i32*, i64)*, i32 (%struct.fw_card*, i32*, i64)** %enable, align 8, !dbg !5058
  %10 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5059
  %11 = load i64, i64* @config_rom_length, align 8, !dbg !5060
  %call = call i32 %9(%struct.fw_card* %10, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @tmp_config_rom, i64 0, i64 0), i64 %11) #9, !dbg !5056
  store i32 %call, i32* %ret, align 4, !dbg !5061
  %12 = load i32, i32* %ret, align 4, !dbg !5062
  %cmp = icmp eq i32 %12, 0, !dbg !5064
  br i1 %cmp, label %if.then, label %if.end, !dbg !5065

if.then:                                          ; preds = %entry
  %13 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5066
  %link = getelementptr inbounds %struct.fw_card, %struct.fw_card* %13, i32 0, i32 26, !dbg !5067
  call void @list_add_tail(%struct.list_head* %link, %struct.list_head* @card_list) #9, !dbg !5068
  br label %if.end, !dbg !5068

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* @card_mutex) #9, !dbg !5069
  %14 = load i32, i32* %ret, align 4, !dbg !5070
  ret i32 %14, !dbg !5071
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @generate_config_rom(%struct.fw_card* %card, i32* %config_rom) #0 !dbg !5072 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %config_rom.addr = alloca i32*, align 8
  %desc = alloca %struct.fw_descriptor*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %length = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fw_descriptor*, align 8
  %__mptr135 = alloca i8*, align 8
  %tmp139 = alloca %struct.fw_descriptor*, align 8
  %__mptr176 = alloca i8*, align 8
  %tmp179 = alloca %struct.fw_descriptor*, align 8
  %__mptr237 = alloca i8*, align 8
  %tmp242 = alloca %struct.fw_descriptor*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp276 = alloca i64, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5075, metadata !DIExpression()), !dbg !5076
  store i32* %config_rom, i32** %config_rom.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %config_rom.addr, metadata !5077, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.declare(metadata %struct.fw_descriptor** %desc, metadata !5079, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5081, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5083, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.declare(metadata i32* %k, metadata !5085, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.declare(metadata i32* %length, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load i32*, i32** %config_rom.addr, align 8, !dbg !5089
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !5089
  store i32 1028, i32* %arrayidx, align 4, !dbg !5090
  %1 = load i32*, i32** %config_rom.addr, align 8, !dbg !5091
  %arrayidx1 = getelementptr i32, i32* %1, i64 1, !dbg !5091
  store i32 876163889, i32* %arrayidx1, align 4, !dbg !5092
  %2 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5093
  %link_speed = getelementptr inbounds %struct.fw_card, %struct.fw_card* %2, i32 0, i32 16, !dbg !5093
  %3 = load i32, i32* %link_speed, align 4, !dbg !5093
  %shl = shl i32 %3, 0, !dbg !5093
  %4 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5093
  %config_rom_generation = getelementptr inbounds %struct.fw_card, %struct.fw_card* %4, i32 0, i32 17, !dbg !5093
  %5 = load i32, i32* %config_rom_generation, align 8, !dbg !5093
  %inc = add i32 %5, 1, !dbg !5093
  store i32 %inc, i32* %config_rom_generation, align 8, !dbg !5093
  %rem = srem i32 %5, 14, !dbg !5093
  %add = add i32 %rem, 2, !dbg !5093
  %shl2 = shl i32 %add, 4, !dbg !5093
  %or = or i32 %shl, %shl2, !dbg !5093
  %or3 = or i32 %or, 512, !dbg !5093
  %6 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5093
  %max_receive = getelementptr inbounds %struct.fw_card, %struct.fw_card* %6, i32 0, i32 15, !dbg !5093
  %7 = load i32, i32* %max_receive, align 8, !dbg !5093
  %shl4 = shl i32 %7, 12, !dbg !5093
  %or5 = or i32 %or3, %shl4, !dbg !5093
  %or6 = or i32 %or5, 268435456, !dbg !5093
  %or7 = or i32 %or6, 536870912, !dbg !5093
  %or8 = or i32 %or7, 1073741824, !dbg !5093
  %or9 = or i32 %or8, -2147483648, !dbg !5093
  %call = call i32 @__fswab32(i32 %or9) #11, !dbg !5093
  %8 = load i32*, i32** %config_rom.addr, align 8, !dbg !5094
  %arrayidx10 = getelementptr i32, i32* %8, i64 2, !dbg !5094
  store i32 %call, i32* %arrayidx10, align 4, !dbg !5095
  %9 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5096
  %guid = getelementptr inbounds %struct.fw_card, %struct.fw_card* %9, i32 0, i32 14, !dbg !5096
  %10 = load i64, i64* %guid, align 8, !dbg !5096
  %shr = lshr i64 %10, 32, !dbg !5096
  %conv = trunc i64 %shr to i32, !dbg !5096
  %11 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5096
  br i1 %11, label %cond.true, label %cond.false, !dbg !5096

cond.true:                                        ; preds = %entry
  %12 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5096
  %guid11 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %12, i32 0, i32 14, !dbg !5096
  %13 = load i64, i64* %guid11, align 8, !dbg !5096
  %shr12 = lshr i64 %13, 32, !dbg !5096
  %conv13 = trunc i64 %shr12 to i32, !dbg !5096
  %and = and i32 %conv13, 255, !dbg !5096
  %shl14 = shl i32 %and, 24, !dbg !5096
  %14 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5096
  %guid15 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %14, i32 0, i32 14, !dbg !5096
  %15 = load i64, i64* %guid15, align 8, !dbg !5096
  %shr16 = lshr i64 %15, 32, !dbg !5096
  %conv17 = trunc i64 %shr16 to i32, !dbg !5096
  %and18 = and i32 %conv17, 65280, !dbg !5096
  %shl19 = shl i32 %and18, 8, !dbg !5096
  %or20 = or i32 %shl14, %shl19, !dbg !5096
  %16 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5096
  %guid21 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %16, i32 0, i32 14, !dbg !5096
  %17 = load i64, i64* %guid21, align 8, !dbg !5096
  %shr22 = lshr i64 %17, 32, !dbg !5096
  %conv23 = trunc i64 %shr22 to i32, !dbg !5096
  %and24 = and i32 %conv23, 16711680, !dbg !5096
  %shr25 = lshr i32 %and24, 8, !dbg !5096
  %or26 = or i32 %or20, %shr25, !dbg !5096
  %18 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5096
  %guid27 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %18, i32 0, i32 14, !dbg !5096
  %19 = load i64, i64* %guid27, align 8, !dbg !5096
  %shr28 = lshr i64 %19, 32, !dbg !5096
  %conv29 = trunc i64 %shr28 to i32, !dbg !5096
  %and30 = and i32 %conv29, -16777216, !dbg !5096
  %shr31 = lshr i32 %and30, 24, !dbg !5096
  %or32 = or i32 %or26, %shr31, !dbg !5096
  br label %cond.end, !dbg !5096

cond.false:                                       ; preds = %entry
  %20 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5096
  %guid33 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %20, i32 0, i32 14, !dbg !5096
  %21 = load i64, i64* %guid33, align 8, !dbg !5096
  %shr34 = lshr i64 %21, 32, !dbg !5096
  %conv35 = trunc i64 %shr34 to i32, !dbg !5096
  %call36 = call i32 @__fswab32(i32 %conv35) #11, !dbg !5096
  br label %cond.end, !dbg !5096

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or32, %cond.true ], [ %call36, %cond.false ], !dbg !5096
  %22 = load i32*, i32** %config_rom.addr, align 8, !dbg !5097
  %arrayidx37 = getelementptr i32, i32* %22, i64 3, !dbg !5097
  store i32 %cond, i32* %arrayidx37, align 4, !dbg !5098
  %23 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5099
  %guid38 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %23, i32 0, i32 14, !dbg !5099
  %24 = load i64, i64* %guid38, align 8, !dbg !5099
  %conv39 = trunc i64 %24 to i32, !dbg !5099
  %25 = call i1 @llvm.is.constant.i32(i32 %conv39), !dbg !5099
  br i1 %25, label %cond.true40, label %cond.false60, !dbg !5099

cond.true40:                                      ; preds = %cond.end
  %26 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5099
  %guid41 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %26, i32 0, i32 14, !dbg !5099
  %27 = load i64, i64* %guid41, align 8, !dbg !5099
  %conv42 = trunc i64 %27 to i32, !dbg !5099
  %and43 = and i32 %conv42, 255, !dbg !5099
  %shl44 = shl i32 %and43, 24, !dbg !5099
  %28 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5099
  %guid45 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %28, i32 0, i32 14, !dbg !5099
  %29 = load i64, i64* %guid45, align 8, !dbg !5099
  %conv46 = trunc i64 %29 to i32, !dbg !5099
  %and47 = and i32 %conv46, 65280, !dbg !5099
  %shl48 = shl i32 %and47, 8, !dbg !5099
  %or49 = or i32 %shl44, %shl48, !dbg !5099
  %30 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5099
  %guid50 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %30, i32 0, i32 14, !dbg !5099
  %31 = load i64, i64* %guid50, align 8, !dbg !5099
  %conv51 = trunc i64 %31 to i32, !dbg !5099
  %and52 = and i32 %conv51, 16711680, !dbg !5099
  %shr53 = lshr i32 %and52, 8, !dbg !5099
  %or54 = or i32 %or49, %shr53, !dbg !5099
  %32 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5099
  %guid55 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %32, i32 0, i32 14, !dbg !5099
  %33 = load i64, i64* %guid55, align 8, !dbg !5099
  %conv56 = trunc i64 %33 to i32, !dbg !5099
  %and57 = and i32 %conv56, -16777216, !dbg !5099
  %shr58 = lshr i32 %and57, 24, !dbg !5099
  %or59 = or i32 %or54, %shr58, !dbg !5099
  br label %cond.end64, !dbg !5099

cond.false60:                                     ; preds = %cond.end
  %34 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5099
  %guid61 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %34, i32 0, i32 14, !dbg !5099
  %35 = load i64, i64* %guid61, align 8, !dbg !5099
  %conv62 = trunc i64 %35 to i32, !dbg !5099
  %call63 = call i32 @__fswab32(i32 %conv62) #11, !dbg !5099
  br label %cond.end64, !dbg !5099

cond.end64:                                       ; preds = %cond.false60, %cond.true40
  %cond65 = phi i32 [ %or59, %cond.true40 ], [ %call63, %cond.false60 ], !dbg !5099
  %36 = load i32*, i32** %config_rom.addr, align 8, !dbg !5100
  %arrayidx66 = getelementptr i32, i32* %36, i64 4, !dbg !5100
  store i32 %cond65, i32* %arrayidx66, align 4, !dbg !5101
  %37 = load i32*, i32** %config_rom.addr, align 8, !dbg !5102
  %arrayidx67 = getelementptr i32, i32* %37, i64 6, !dbg !5102
  store i32 -1065156596, i32* %arrayidx67, align 4, !dbg !5103
  store i32 7, i32* %i, align 4, !dbg !5104
  %38 = load i32, i32* @descriptor_count, align 4, !dbg !5105
  %add68 = add i32 7, %38, !dbg !5106
  store i32 %add68, i32* %j, align 4, !dbg !5107
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5108, metadata !DIExpression()), !dbg !5111
  %39 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @descriptor_list, i32 0, i32 0), align 8, !dbg !5111
  %40 = bitcast %struct.list_head* %39 to i8*, !dbg !5111
  store i8* %40, i8** %__mptr, align 8, !dbg !5111
  br label %do.body, !dbg !5111

do.body:                                          ; preds = %cond.end64
  br label %do.end, !dbg !5112

do.end:                                           ; preds = %do.body
  %41 = load i8*, i8** %__mptr, align 8, !dbg !5111
  %add.ptr = getelementptr i8, i8* %41, i64 0, !dbg !5111
  %42 = bitcast i8* %add.ptr to %struct.fw_descriptor*, !dbg !5111
  store %struct.fw_descriptor* %42, %struct.fw_descriptor** %tmp, align 8, !dbg !5112
  %43 = load %struct.fw_descriptor*, %struct.fw_descriptor** %tmp, align 8, !dbg !5111
  store %struct.fw_descriptor* %43, %struct.fw_descriptor** %desc, align 8, !dbg !5114
  br label %for.cond, !dbg !5114

for.cond:                                         ; preds = %do.end138, %do.end
  %44 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5115
  %link = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %44, i32 0, i32 0, !dbg !5115
  %cmp = icmp eq %struct.list_head* %link, @descriptor_list, !dbg !5115
  %lnot = xor i1 %cmp, true, !dbg !5115
  br i1 %lnot, label %for.body, label %for.end, !dbg !5114

for.body:                                         ; preds = %for.cond
  %45 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5117
  %immediate = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %45, i32 0, i32 2, !dbg !5120
  %46 = load i32, i32* %immediate, align 8, !dbg !5120
  %cmp70 = icmp ugt i32 %46, 0, !dbg !5121
  br i1 %cmp70, label %if.then, label %if.end, !dbg !5122

if.then:                                          ; preds = %for.body
  %47 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5123
  %immediate72 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %47, i32 0, i32 2, !dbg !5123
  %48 = load i32, i32* %immediate72, align 8, !dbg !5123
  %49 = call i1 @llvm.is.constant.i32(i32 %48), !dbg !5123
  br i1 %49, label %cond.true73, label %cond.false89, !dbg !5123

cond.true73:                                      ; preds = %if.then
  %50 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5123
  %immediate74 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %50, i32 0, i32 2, !dbg !5123
  %51 = load i32, i32* %immediate74, align 8, !dbg !5123
  %and75 = and i32 %51, 255, !dbg !5123
  %shl76 = shl i32 %and75, 24, !dbg !5123
  %52 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5123
  %immediate77 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %52, i32 0, i32 2, !dbg !5123
  %53 = load i32, i32* %immediate77, align 8, !dbg !5123
  %and78 = and i32 %53, 65280, !dbg !5123
  %shl79 = shl i32 %and78, 8, !dbg !5123
  %or80 = or i32 %shl76, %shl79, !dbg !5123
  %54 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5123
  %immediate81 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %54, i32 0, i32 2, !dbg !5123
  %55 = load i32, i32* %immediate81, align 8, !dbg !5123
  %and82 = and i32 %55, 16711680, !dbg !5123
  %shr83 = lshr i32 %and82, 8, !dbg !5123
  %or84 = or i32 %or80, %shr83, !dbg !5123
  %56 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5123
  %immediate85 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %56, i32 0, i32 2, !dbg !5123
  %57 = load i32, i32* %immediate85, align 8, !dbg !5123
  %and86 = and i32 %57, -16777216, !dbg !5123
  %shr87 = lshr i32 %and86, 24, !dbg !5123
  %or88 = or i32 %or84, %shr87, !dbg !5123
  br label %cond.end92, !dbg !5123

cond.false89:                                     ; preds = %if.then
  %58 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5123
  %immediate90 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %58, i32 0, i32 2, !dbg !5123
  %59 = load i32, i32* %immediate90, align 8, !dbg !5123
  %call91 = call i32 @__fswab32(i32 %59) #11, !dbg !5123
  br label %cond.end92, !dbg !5123

cond.end92:                                       ; preds = %cond.false89, %cond.true73
  %cond93 = phi i32 [ %or88, %cond.true73 ], [ %call91, %cond.false89 ], !dbg !5123
  %60 = load i32*, i32** %config_rom.addr, align 8, !dbg !5124
  %61 = load i32, i32* %i, align 4, !dbg !5125
  %inc94 = add i32 %61, 1, !dbg !5125
  store i32 %inc94, i32* %i, align 4, !dbg !5125
  %idxprom = sext i32 %61 to i64, !dbg !5124
  %arrayidx95 = getelementptr i32, i32* %60, i64 %idxprom, !dbg !5124
  store i32 %cond93, i32* %arrayidx95, align 4, !dbg !5126
  br label %if.end, !dbg !5124

if.end:                                           ; preds = %cond.end92, %for.body
  %62 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5127
  %key = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %62, i32 0, i32 3, !dbg !5127
  %63 = load i32, i32* %key, align 4, !dbg !5127
  %64 = load i32, i32* %j, align 4, !dbg !5127
  %65 = load i32, i32* %i, align 4, !dbg !5127
  %sub = sub i32 %64, %65, !dbg !5127
  %or96 = or i32 %63, %sub, !dbg !5127
  %66 = call i1 @llvm.is.constant.i32(i32 %or96), !dbg !5127
  br i1 %66, label %cond.true97, label %cond.false121, !dbg !5127

cond.true97:                                      ; preds = %if.end
  %67 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5127
  %key98 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %67, i32 0, i32 3, !dbg !5127
  %68 = load i32, i32* %key98, align 4, !dbg !5127
  %69 = load i32, i32* %j, align 4, !dbg !5127
  %70 = load i32, i32* %i, align 4, !dbg !5127
  %sub99 = sub i32 %69, %70, !dbg !5127
  %or100 = or i32 %68, %sub99, !dbg !5127
  %and101 = and i32 %or100, 255, !dbg !5127
  %shl102 = shl i32 %and101, 24, !dbg !5127
  %71 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5127
  %key103 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %71, i32 0, i32 3, !dbg !5127
  %72 = load i32, i32* %key103, align 4, !dbg !5127
  %73 = load i32, i32* %j, align 4, !dbg !5127
  %74 = load i32, i32* %i, align 4, !dbg !5127
  %sub104 = sub i32 %73, %74, !dbg !5127
  %or105 = or i32 %72, %sub104, !dbg !5127
  %and106 = and i32 %or105, 65280, !dbg !5127
  %shl107 = shl i32 %and106, 8, !dbg !5127
  %or108 = or i32 %shl102, %shl107, !dbg !5127
  %75 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5127
  %key109 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %75, i32 0, i32 3, !dbg !5127
  %76 = load i32, i32* %key109, align 4, !dbg !5127
  %77 = load i32, i32* %j, align 4, !dbg !5127
  %78 = load i32, i32* %i, align 4, !dbg !5127
  %sub110 = sub i32 %77, %78, !dbg !5127
  %or111 = or i32 %76, %sub110, !dbg !5127
  %and112 = and i32 %or111, 16711680, !dbg !5127
  %shr113 = lshr i32 %and112, 8, !dbg !5127
  %or114 = or i32 %or108, %shr113, !dbg !5127
  %79 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5127
  %key115 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %79, i32 0, i32 3, !dbg !5127
  %80 = load i32, i32* %key115, align 4, !dbg !5127
  %81 = load i32, i32* %j, align 4, !dbg !5127
  %82 = load i32, i32* %i, align 4, !dbg !5127
  %sub116 = sub i32 %81, %82, !dbg !5127
  %or117 = or i32 %80, %sub116, !dbg !5127
  %and118 = and i32 %or117, -16777216, !dbg !5127
  %shr119 = lshr i32 %and118, 24, !dbg !5127
  %or120 = or i32 %or114, %shr119, !dbg !5127
  br label %cond.end126, !dbg !5127

cond.false121:                                    ; preds = %if.end
  %83 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5127
  %key122 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %83, i32 0, i32 3, !dbg !5127
  %84 = load i32, i32* %key122, align 4, !dbg !5127
  %85 = load i32, i32* %j, align 4, !dbg !5127
  %86 = load i32, i32* %i, align 4, !dbg !5127
  %sub123 = sub i32 %85, %86, !dbg !5127
  %or124 = or i32 %84, %sub123, !dbg !5127
  %call125 = call i32 @__fswab32(i32 %or124) #11, !dbg !5127
  br label %cond.end126, !dbg !5127

cond.end126:                                      ; preds = %cond.false121, %cond.true97
  %cond127 = phi i32 [ %or120, %cond.true97 ], [ %call125, %cond.false121 ], !dbg !5127
  %87 = load i32*, i32** %config_rom.addr, align 8, !dbg !5128
  %88 = load i32, i32* %i, align 4, !dbg !5129
  %idxprom128 = sext i32 %88 to i64, !dbg !5128
  %arrayidx129 = getelementptr i32, i32* %87, i64 %idxprom128, !dbg !5128
  store i32 %cond127, i32* %arrayidx129, align 4, !dbg !5130
  %89 = load i32, i32* %i, align 4, !dbg !5131
  %inc130 = add i32 %89, 1, !dbg !5131
  store i32 %inc130, i32* %i, align 4, !dbg !5131
  %90 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5132
  %length131 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %90, i32 0, i32 1, !dbg !5133
  %91 = load i64, i64* %length131, align 8, !dbg !5133
  %92 = load i32, i32* %j, align 4, !dbg !5134
  %conv132 = sext i32 %92 to i64, !dbg !5134
  %add133 = add i64 %conv132, %91, !dbg !5134
  %conv134 = trunc i64 %add133 to i32, !dbg !5134
  store i32 %conv134, i32* %j, align 4, !dbg !5134
  br label %for.inc, !dbg !5135

for.inc:                                          ; preds = %cond.end126
  call void @llvm.dbg.declare(metadata i8** %__mptr135, metadata !5136, metadata !DIExpression()), !dbg !5138
  %93 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5138
  %link136 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %93, i32 0, i32 0, !dbg !5138
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %link136, i32 0, i32 0, !dbg !5138
  %94 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5138
  %95 = bitcast %struct.list_head* %94 to i8*, !dbg !5138
  store i8* %95, i8** %__mptr135, align 8, !dbg !5138
  br label %do.body137, !dbg !5138

do.body137:                                       ; preds = %for.inc
  br label %do.end138, !dbg !5139

do.end138:                                        ; preds = %do.body137
  %96 = load i8*, i8** %__mptr135, align 8, !dbg !5138
  %add.ptr140 = getelementptr i8, i8* %96, i64 0, !dbg !5138
  %97 = bitcast i8* %add.ptr140 to %struct.fw_descriptor*, !dbg !5138
  store %struct.fw_descriptor* %97, %struct.fw_descriptor** %tmp139, align 8, !dbg !5139
  %98 = load %struct.fw_descriptor*, %struct.fw_descriptor** %tmp139, align 8, !dbg !5138
  store %struct.fw_descriptor* %98, %struct.fw_descriptor** %desc, align 8, !dbg !5115
  br label %for.cond, !dbg !5115, !llvm.loop !5141

for.end:                                          ; preds = %for.cond
  %99 = load i32, i32* %i, align 4, !dbg !5143
  %sub141 = sub i32 %99, 5, !dbg !5143
  %sub142 = sub i32 %sub141, 1, !dbg !5143
  %shl143 = shl i32 %sub142, 16, !dbg !5143
  %100 = call i1 @llvm.is.constant.i32(i32 %shl143), !dbg !5143
  br i1 %100, label %cond.true144, label %cond.false168, !dbg !5143

cond.true144:                                     ; preds = %for.end
  %101 = load i32, i32* %i, align 4, !dbg !5143
  %sub145 = sub i32 %101, 5, !dbg !5143
  %sub146 = sub i32 %sub145, 1, !dbg !5143
  %shl147 = shl i32 %sub146, 16, !dbg !5143
  %and148 = and i32 %shl147, 255, !dbg !5143
  %shl149 = shl i32 %and148, 24, !dbg !5143
  %102 = load i32, i32* %i, align 4, !dbg !5143
  %sub150 = sub i32 %102, 5, !dbg !5143
  %sub151 = sub i32 %sub150, 1, !dbg !5143
  %shl152 = shl i32 %sub151, 16, !dbg !5143
  %and153 = and i32 %shl152, 65280, !dbg !5143
  %shl154 = shl i32 %and153, 8, !dbg !5143
  %or155 = or i32 %shl149, %shl154, !dbg !5143
  %103 = load i32, i32* %i, align 4, !dbg !5143
  %sub156 = sub i32 %103, 5, !dbg !5143
  %sub157 = sub i32 %sub156, 1, !dbg !5143
  %shl158 = shl i32 %sub157, 16, !dbg !5143
  %and159 = and i32 %shl158, 16711680, !dbg !5143
  %shr160 = lshr i32 %and159, 8, !dbg !5143
  %or161 = or i32 %or155, %shr160, !dbg !5143
  %104 = load i32, i32* %i, align 4, !dbg !5143
  %sub162 = sub i32 %104, 5, !dbg !5143
  %sub163 = sub i32 %sub162, 1, !dbg !5143
  %shl164 = shl i32 %sub163, 16, !dbg !5143
  %and165 = and i32 %shl164, -16777216, !dbg !5143
  %shr166 = lshr i32 %and165, 24, !dbg !5143
  %or167 = or i32 %or161, %shr166, !dbg !5143
  br label %cond.end173, !dbg !5143

cond.false168:                                    ; preds = %for.end
  %105 = load i32, i32* %i, align 4, !dbg !5143
  %sub169 = sub i32 %105, 5, !dbg !5143
  %sub170 = sub i32 %sub169, 1, !dbg !5143
  %shl171 = shl i32 %sub170, 16, !dbg !5143
  %call172 = call i32 @__fswab32(i32 %shl171) #11, !dbg !5143
  br label %cond.end173, !dbg !5143

cond.end173:                                      ; preds = %cond.false168, %cond.true144
  %cond174 = phi i32 [ %or167, %cond.true144 ], [ %call172, %cond.false168 ], !dbg !5143
  %106 = load i32*, i32** %config_rom.addr, align 8, !dbg !5144
  %arrayidx175 = getelementptr i32, i32* %106, i64 5, !dbg !5144
  store i32 %cond174, i32* %arrayidx175, align 4, !dbg !5145
  call void @llvm.dbg.declare(metadata i8** %__mptr176, metadata !5146, metadata !DIExpression()), !dbg !5149
  %107 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @descriptor_list, i32 0, i32 0), align 8, !dbg !5149
  %108 = bitcast %struct.list_head* %107 to i8*, !dbg !5149
  store i8* %108, i8** %__mptr176, align 8, !dbg !5149
  br label %do.body177, !dbg !5149

do.body177:                                       ; preds = %cond.end173
  br label %do.end178, !dbg !5150

do.end178:                                        ; preds = %do.body177
  %109 = load i8*, i8** %__mptr176, align 8, !dbg !5149
  %add.ptr180 = getelementptr i8, i8* %109, i64 0, !dbg !5149
  %110 = bitcast i8* %add.ptr180 to %struct.fw_descriptor*, !dbg !5149
  store %struct.fw_descriptor* %110, %struct.fw_descriptor** %tmp179, align 8, !dbg !5150
  %111 = load %struct.fw_descriptor*, %struct.fw_descriptor** %tmp179, align 8, !dbg !5149
  store %struct.fw_descriptor* %111, %struct.fw_descriptor** %desc, align 8, !dbg !5152
  br label %for.cond181, !dbg !5152

for.cond181:                                      ; preds = %do.end241, %do.end178
  %112 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5153
  %link182 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %112, i32 0, i32 0, !dbg !5153
  %cmp183 = icmp eq %struct.list_head* %link182, @descriptor_list, !dbg !5153
  %lnot185 = xor i1 %cmp183, true, !dbg !5153
  br i1 %lnot185, label %for.body186, label %for.end244, !dbg !5152

for.body186:                                      ; preds = %for.cond181
  store i32 0, i32* %k, align 4, !dbg !5155
  br label %for.cond187, !dbg !5158

for.cond187:                                      ; preds = %for.inc229, %for.body186
  %113 = load i32, i32* %k, align 4, !dbg !5159
  %conv188 = sext i32 %113 to i64, !dbg !5159
  %114 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5161
  %length189 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %114, i32 0, i32 1, !dbg !5162
  %115 = load i64, i64* %length189, align 8, !dbg !5162
  %cmp190 = icmp ult i64 %conv188, %115, !dbg !5163
  br i1 %cmp190, label %for.body192, label %for.end231, !dbg !5164

for.body192:                                      ; preds = %for.cond187
  %116 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5165
  %data = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %116, i32 0, i32 4, !dbg !5165
  %117 = load i32*, i32** %data, align 8, !dbg !5165
  %118 = load i32, i32* %k, align 4, !dbg !5165
  %idxprom193 = sext i32 %118 to i64, !dbg !5165
  %arrayidx194 = getelementptr i32, i32* %117, i64 %idxprom193, !dbg !5165
  %119 = load i32, i32* %arrayidx194, align 4, !dbg !5165
  %120 = call i1 @llvm.is.constant.i32(i32 %119), !dbg !5165
  br i1 %120, label %cond.true195, label %cond.false219, !dbg !5165

cond.true195:                                     ; preds = %for.body192
  %121 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5165
  %data196 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %121, i32 0, i32 4, !dbg !5165
  %122 = load i32*, i32** %data196, align 8, !dbg !5165
  %123 = load i32, i32* %k, align 4, !dbg !5165
  %idxprom197 = sext i32 %123 to i64, !dbg !5165
  %arrayidx198 = getelementptr i32, i32* %122, i64 %idxprom197, !dbg !5165
  %124 = load i32, i32* %arrayidx198, align 4, !dbg !5165
  %and199 = and i32 %124, 255, !dbg !5165
  %shl200 = shl i32 %and199, 24, !dbg !5165
  %125 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5165
  %data201 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %125, i32 0, i32 4, !dbg !5165
  %126 = load i32*, i32** %data201, align 8, !dbg !5165
  %127 = load i32, i32* %k, align 4, !dbg !5165
  %idxprom202 = sext i32 %127 to i64, !dbg !5165
  %arrayidx203 = getelementptr i32, i32* %126, i64 %idxprom202, !dbg !5165
  %128 = load i32, i32* %arrayidx203, align 4, !dbg !5165
  %and204 = and i32 %128, 65280, !dbg !5165
  %shl205 = shl i32 %and204, 8, !dbg !5165
  %or206 = or i32 %shl200, %shl205, !dbg !5165
  %129 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5165
  %data207 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %129, i32 0, i32 4, !dbg !5165
  %130 = load i32*, i32** %data207, align 8, !dbg !5165
  %131 = load i32, i32* %k, align 4, !dbg !5165
  %idxprom208 = sext i32 %131 to i64, !dbg !5165
  %arrayidx209 = getelementptr i32, i32* %130, i64 %idxprom208, !dbg !5165
  %132 = load i32, i32* %arrayidx209, align 4, !dbg !5165
  %and210 = and i32 %132, 16711680, !dbg !5165
  %shr211 = lshr i32 %and210, 8, !dbg !5165
  %or212 = or i32 %or206, %shr211, !dbg !5165
  %133 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5165
  %data213 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %133, i32 0, i32 4, !dbg !5165
  %134 = load i32*, i32** %data213, align 8, !dbg !5165
  %135 = load i32, i32* %k, align 4, !dbg !5165
  %idxprom214 = sext i32 %135 to i64, !dbg !5165
  %arrayidx215 = getelementptr i32, i32* %134, i64 %idxprom214, !dbg !5165
  %136 = load i32, i32* %arrayidx215, align 4, !dbg !5165
  %and216 = and i32 %136, -16777216, !dbg !5165
  %shr217 = lshr i32 %and216, 24, !dbg !5165
  %or218 = or i32 %or212, %shr217, !dbg !5165
  br label %cond.end224, !dbg !5165

cond.false219:                                    ; preds = %for.body192
  %137 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5165
  %data220 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %137, i32 0, i32 4, !dbg !5165
  %138 = load i32*, i32** %data220, align 8, !dbg !5165
  %139 = load i32, i32* %k, align 4, !dbg !5165
  %idxprom221 = sext i32 %139 to i64, !dbg !5165
  %arrayidx222 = getelementptr i32, i32* %138, i64 %idxprom221, !dbg !5165
  %140 = load i32, i32* %arrayidx222, align 4, !dbg !5165
  %call223 = call i32 @__fswab32(i32 %140) #11, !dbg !5165
  br label %cond.end224, !dbg !5165

cond.end224:                                      ; preds = %cond.false219, %cond.true195
  %cond225 = phi i32 [ %or218, %cond.true195 ], [ %call223, %cond.false219 ], !dbg !5165
  %141 = load i32*, i32** %config_rom.addr, align 8, !dbg !5166
  %142 = load i32, i32* %i, align 4, !dbg !5167
  %143 = load i32, i32* %k, align 4, !dbg !5168
  %add226 = add i32 %142, %143, !dbg !5169
  %idxprom227 = sext i32 %add226 to i64, !dbg !5166
  %arrayidx228 = getelementptr i32, i32* %141, i64 %idxprom227, !dbg !5166
  store i32 %cond225, i32* %arrayidx228, align 4, !dbg !5170
  br label %for.inc229, !dbg !5166

for.inc229:                                       ; preds = %cond.end224
  %144 = load i32, i32* %k, align 4, !dbg !5171
  %inc230 = add i32 %144, 1, !dbg !5171
  store i32 %inc230, i32* %k, align 4, !dbg !5171
  br label %for.cond187, !dbg !5172, !llvm.loop !5173

for.end231:                                       ; preds = %for.cond187
  %145 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5175
  %length232 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %145, i32 0, i32 1, !dbg !5176
  %146 = load i64, i64* %length232, align 8, !dbg !5176
  %147 = load i32, i32* %i, align 4, !dbg !5177
  %conv233 = sext i32 %147 to i64, !dbg !5177
  %add234 = add i64 %conv233, %146, !dbg !5177
  %conv235 = trunc i64 %add234 to i32, !dbg !5177
  store i32 %conv235, i32* %i, align 4, !dbg !5177
  br label %for.inc236, !dbg !5178

for.inc236:                                       ; preds = %for.end231
  call void @llvm.dbg.declare(metadata i8** %__mptr237, metadata !5179, metadata !DIExpression()), !dbg !5181
  %148 = load %struct.fw_descriptor*, %struct.fw_descriptor** %desc, align 8, !dbg !5181
  %link238 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %148, i32 0, i32 0, !dbg !5181
  %next239 = getelementptr inbounds %struct.list_head, %struct.list_head* %link238, i32 0, i32 0, !dbg !5181
  %149 = load %struct.list_head*, %struct.list_head** %next239, align 8, !dbg !5181
  %150 = bitcast %struct.list_head* %149 to i8*, !dbg !5181
  store i8* %150, i8** %__mptr237, align 8, !dbg !5181
  br label %do.body240, !dbg !5181

do.body240:                                       ; preds = %for.inc236
  br label %do.end241, !dbg !5182

do.end241:                                        ; preds = %do.body240
  %151 = load i8*, i8** %__mptr237, align 8, !dbg !5181
  %add.ptr243 = getelementptr i8, i8* %151, i64 0, !dbg !5181
  %152 = bitcast i8* %add.ptr243 to %struct.fw_descriptor*, !dbg !5181
  store %struct.fw_descriptor* %152, %struct.fw_descriptor** %tmp242, align 8, !dbg !5182
  %153 = load %struct.fw_descriptor*, %struct.fw_descriptor** %tmp242, align 8, !dbg !5181
  store %struct.fw_descriptor* %153, %struct.fw_descriptor** %desc, align 8, !dbg !5153
  br label %for.cond181, !dbg !5153, !llvm.loop !5184

for.end244:                                       ; preds = %for.cond181
  store i32 0, i32* %i, align 4, !dbg !5186
  br label %for.cond245, !dbg !5188

for.cond245:                                      ; preds = %for.inc251, %for.end244
  %154 = load i32, i32* %i, align 4, !dbg !5189
  %155 = load i32, i32* %j, align 4, !dbg !5191
  %cmp246 = icmp slt i32 %154, %155, !dbg !5192
  br i1 %cmp246, label %for.body248, label %for.end254, !dbg !5193

for.body248:                                      ; preds = %for.cond245
  %156 = load i32*, i32** %config_rom.addr, align 8, !dbg !5194
  %157 = load i32, i32* %i, align 4, !dbg !5195
  %idx.ext = sext i32 %157 to i64, !dbg !5196
  %add.ptr249 = getelementptr i32, i32* %156, i64 %idx.ext, !dbg !5196
  %call250 = call i32 @fw_compute_block_crc(i32* %add.ptr249) #9, !dbg !5197
  store i32 %call250, i32* %length, align 4, !dbg !5198
  br label %for.inc251, !dbg !5199

for.inc251:                                       ; preds = %for.body248
  %158 = load i32, i32* %length, align 4, !dbg !5200
  %add252 = add i32 %158, 1, !dbg !5201
  %159 = load i32, i32* %i, align 4, !dbg !5202
  %add253 = add i32 %159, %add252, !dbg !5202
  store i32 %add253, i32* %i, align 4, !dbg !5202
  br label %for.cond245, !dbg !5203, !llvm.loop !5204

for.end254:                                       ; preds = %for.cond245
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5206, metadata !DIExpression()), !dbg !5208
  %160 = load i32, i32* %j, align 4, !dbg !5208
  %conv255 = sext i32 %160 to i64, !dbg !5208
  %161 = load i64, i64* @config_rom_length, align 8, !dbg !5208
  %cmp256 = icmp ne i64 %conv255, %161, !dbg !5208
  %lnot258 = xor i1 %cmp256, true, !dbg !5208
  %lnot259 = xor i1 %lnot258, true, !dbg !5208
  %lnot.ext = zext i1 %lnot259 to i32, !dbg !5208
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5208
  %162 = load i32, i32* %__ret_warn_on, align 4, !dbg !5209
  %tobool = icmp ne i32 %162, 0, !dbg !5209
  %lnot260 = xor i1 %tobool, true, !dbg !5209
  %lnot262 = xor i1 %lnot260, true, !dbg !5209
  %lnot.ext263 = zext i1 %lnot262 to i32, !dbg !5209
  %conv264 = sext i32 %lnot.ext263 to i64, !dbg !5209
  %tobool265 = icmp ne i64 %conv264, 0, !dbg !5209
  br i1 %tobool265, label %if.then266, label %if.end275, !dbg !5208

if.then266:                                       ; preds = %for.end254
  br label %do.body267, !dbg !5209

do.body267:                                       ; preds = %if.then266
  br label %do.body268, !dbg !5211

do.body268:                                       ; preds = %do.body267
  br label %do.end269, !dbg !5213

do.end269:                                        ; preds = %do.body268
  br label %do.body270, !dbg !5211

do.body270:                                       ; preds = %do.end269
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 147, i32 2305, i64 12) #2, !dbg !5215, !srcloc !5217
  br label %do.end271, !dbg !5215

do.end271:                                        ; preds = %do.body270
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #2, !dbg !5218, !srcloc !5220
  br label %do.body272, !dbg !5211

do.body272:                                       ; preds = %do.end271
  br label %do.end273, !dbg !5221

do.end273:                                        ; preds = %do.body272
  br label %do.end274, !dbg !5211

do.end274:                                        ; preds = %do.end273
  br label %if.end275, !dbg !5211

if.end275:                                        ; preds = %do.end274, %for.end254
  %163 = load i32, i32* %__ret_warn_on, align 4, !dbg !5208
  %tobool277 = icmp ne i32 %163, 0, !dbg !5208
  %lnot278 = xor i1 %tobool277, true, !dbg !5208
  %lnot280 = xor i1 %lnot278, true, !dbg !5208
  %lnot.ext281 = zext i1 %lnot280 to i32, !dbg !5208
  %conv282 = sext i32 %lnot.ext281 to i64, !dbg !5208
  store i64 %conv282, i64* %tmp276, align 8, !dbg !5209
  %164 = load i64, i64* %tmp276, align 8, !dbg !5208
  ret void, !dbg !5223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_card_release(%struct.kref* %kref) #0 !dbg !5224 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %card = alloca %struct.fw_card*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fw_card*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card, metadata !5227, metadata !DIExpression()), !dbg !5228
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5229, metadata !DIExpression()), !dbg !5231
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5231
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !5231
  store i8* %1, i8** %__mptr, align 8, !dbg !5231
  br label %do.body, !dbg !5231

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5232

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5231
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5231
  %3 = bitcast i8* %add.ptr to %struct.fw_card*, !dbg !5231
  store %struct.fw_card* %3, %struct.fw_card** %tmp, align 8, !dbg !5232
  %4 = load %struct.fw_card*, %struct.fw_card** %tmp, align 8, !dbg !5231
  store %struct.fw_card* %4, %struct.fw_card** %card, align 8, !dbg !5228
  %5 = load %struct.fw_card*, %struct.fw_card** %card, align 8, !dbg !5234
  %done = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 3, !dbg !5235
  call void @complete(%struct.completion* %done) #9, !dbg !5236
  ret void, !dbg !5237
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fw_core_remove_card(%struct.fw_card* %card) #0 !dbg !5238 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %dummy_driver = alloca %struct.fw_card_driver, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.declare(metadata %struct.fw_card_driver* %dummy_driver, metadata !5241, metadata !DIExpression()), !dbg !5242
  %0 = bitcast %struct.fw_card_driver* %dummy_driver to i8*, !dbg !5243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.fw_card_driver* @dummy_driver_template to i8*), i64 144, i1 false), !dbg !5243
  %1 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5244
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %1, i32 0, i32 0, !dbg !5245
  %2 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !5245
  %update_phy_reg = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %2, i32 0, i32 2, !dbg !5246
  %3 = load i32 (%struct.fw_card*, i32, i32, i32)*, i32 (%struct.fw_card*, i32, i32, i32)** %update_phy_reg, align 8, !dbg !5246
  %4 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5247
  %call = call i32 %3(%struct.fw_card* %4, i32 4, i32 192, i32 0) #9, !dbg !5244
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5248
  call void @fw_schedule_bus_reset(%struct.fw_card* %5, i1 zeroext false, i1 zeroext true) #9, !dbg !5249
  call void @mutex_lock(%struct.mutex* @card_mutex) #9, !dbg !5250
  %6 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5251
  %link = getelementptr inbounds %struct.fw_card, %struct.fw_card* %6, i32 0, i32 26, !dbg !5252
  call void @list_del_init(%struct.list_head* %link) #9, !dbg !5253
  call void @mutex_unlock(%struct.mutex* @card_mutex) #9, !dbg !5254
  %7 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5255
  %driver1 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %7, i32 0, i32 0, !dbg !5256
  %8 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver1, align 8, !dbg !5256
  %free_iso_context = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %8, i32 0, i32 11, !dbg !5257
  %9 = load void (%struct.fw_iso_context*)*, void (%struct.fw_iso_context*)** %free_iso_context, align 8, !dbg !5257
  %free_iso_context2 = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %dummy_driver, i32 0, i32 11, !dbg !5258
  store void (%struct.fw_iso_context*)* %9, void (%struct.fw_iso_context*)** %free_iso_context2, align 8, !dbg !5259
  %10 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5260
  %driver3 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %10, i32 0, i32 0, !dbg !5261
  %11 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver3, align 8, !dbg !5261
  %stop_iso = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %11, i32 0, i32 17, !dbg !5262
  %12 = load i32 (%struct.fw_iso_context*)*, i32 (%struct.fw_iso_context*)** %stop_iso, align 8, !dbg !5262
  %stop_iso4 = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %dummy_driver, i32 0, i32 17, !dbg !5263
  store i32 (%struct.fw_iso_context*)* %12, i32 (%struct.fw_iso_context*)** %stop_iso4, align 8, !dbg !5264
  %13 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5265
  %driver5 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %13, i32 0, i32 0, !dbg !5266
  store %struct.fw_card_driver* %dummy_driver, %struct.fw_card_driver** %driver5, align 8, !dbg !5267
  %14 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5268
  call void @fw_destroy_nodes(%struct.fw_card* %14) #9, !dbg !5269
  %15 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5270
  call void @fw_card_put(%struct.fw_card* %15) #9, !dbg !5271
  %16 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5272
  %done = getelementptr inbounds %struct.fw_card, %struct.fw_card* %16, i32 0, i32 3, !dbg !5273
  call void @wait_for_completion(%struct.completion* %done) #9, !dbg !5274
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5275, metadata !DIExpression()), !dbg !5277
  %17 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5277
  %transaction_list = getelementptr inbounds %struct.fw_card, %struct.fw_card* %17, i32 0, i32 8, !dbg !5277
  %call6 = call i32 @list_empty(%struct.list_head* %transaction_list) #9, !dbg !5277
  %tobool = icmp ne i32 %call6, 0, !dbg !5277
  %lnot = xor i1 %tobool, true, !dbg !5277
  %lnot7 = xor i1 %lnot, true, !dbg !5277
  %lnot8 = xor i1 %lnot7, true, !dbg !5277
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5277
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5277
  %18 = load i32, i32* %__ret_warn_on, align 4, !dbg !5278
  %tobool9 = icmp ne i32 %18, 0, !dbg !5278
  %lnot10 = xor i1 %tobool9, true, !dbg !5278
  %lnot12 = xor i1 %lnot10, true, !dbg !5278
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !5278
  %conv = sext i32 %lnot.ext13 to i64, !dbg !5278
  %tobool14 = icmp ne i64 %conv, 0, !dbg !5278
  br i1 %tobool14, label %if.then, label %if.end, !dbg !5277

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5278

do.body:                                          ; preds = %if.then
  br label %do.body15, !dbg !5280

do.body15:                                        ; preds = %do.body
  br label %do.end, !dbg !5282

do.end:                                           ; preds = %do.body15
  br label %do.body16, !dbg !5280

do.body16:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 691, i32 2305, i64 12) #2, !dbg !5284, !srcloc !5286
  br label %do.end17, !dbg !5284

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 243) #2, !dbg !5287, !srcloc !5289
  br label %do.body18, !dbg !5280

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5290

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !5280

do.end20:                                         ; preds = %do.end19
  br label %if.end, !dbg !5280

if.end:                                           ; preds = %do.end20, %entry
  %19 = load i32, i32* %__ret_warn_on, align 4, !dbg !5277
  %tobool21 = icmp ne i32 %19, 0, !dbg !5277
  %lnot22 = xor i1 %tobool21, true, !dbg !5277
  %lnot24 = xor i1 %lnot22, true, !dbg !5277
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5277
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5277
  store i64 %conv26, i64* %tmp, align 8, !dbg !5278
  %20 = load i64, i64* %tmp, align 8, !dbg !5277
  ret void, !dbg !5292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !5293 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5296
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !5297
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5298
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #9, !dbg !5299
  ret void, !dbg !5300
}

; Function Attrs: noredzone
declare dso_local void @fw_destroy_nodes(%struct.fw_card*) #6

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5301 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5306, metadata !DIExpression()), !dbg !5307
  br label %do.body, !dbg !5308

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5310

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5308
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5308
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5308
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5310
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5308
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5312
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5313
  %conv = zext i1 %cmp to i32, !dbg !5313
  ret i32 %conv, !dbg !5314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5315 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5322
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5323
  %1 = load i8*, i8** %name, align 8, !dbg !5323
  ret i8* %1, !dbg !5324
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #5 !dbg !5325 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  %0 = load i32, i32* %val.addr, align 4, !dbg !5329
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #13, !dbg !5330, !srcloc !5331
  store i32 %1, i32* %val.addr, align 4, !dbg !5330
  %2 = load i32, i32* %val.addr, align 4, !dbg !5332
  ret i32 %2, !dbg !5333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5334 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5343
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5345
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5346
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !5347
  br i1 %call, label %if.end, label %if.then, !dbg !5348

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5349

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5350
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5351
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5352
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5353
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5354
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5355
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5356
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5357
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5358
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5359
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5360
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5361
  br label %do.body, !dbg !5362

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5363

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5365

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5363

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5367
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5367
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5367
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5367
  br label %do.end7, !dbg !5367

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5363

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5370 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  ret i1 true, !dbg !5379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5380 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5383
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !5385
  br i1 %call, label %if.end, label %if.then, !dbg !5386

if.then:                                          ; preds = %entry
  br label %return, !dbg !5387

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5388
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5389
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5389
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5390
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5391
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5391
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !5392
  br label %return, !dbg !5393

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5394 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  ret i1 true, !dbg !5399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5400 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5405
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5406
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5407
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5408
  br label %do.body, !dbg !5409

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5410

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5412

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5410

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5414
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5414
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5414
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5414
  br label %do.end5, !dbg !5414

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5410

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5417 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5420
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5421
  call void @refcount_inc(%struct.refcount_struct* %refcount) #9, !dbg !5422
  ret void, !dbg !5423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5424 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5430
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #9, !dbg !5431
  ret void, !dbg !5432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5433 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5440
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5441
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5442
  ret void, !dbg !5443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5444 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5447, metadata !DIExpression()), !dbg !5449
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5453, metadata !DIExpression()), !dbg !5454
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5455, metadata !DIExpression()), !dbg !5457
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4365, metadata !DIExpression()), !dbg !5458
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4375, metadata !DIExpression()), !dbg !5460
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5461, metadata !DIExpression()), !dbg !5462
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5463, metadata !DIExpression()), !dbg !5464
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5467, metadata !DIExpression()), !dbg !5468
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5469, metadata !DIExpression()), !dbg !5470
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5471, metadata !DIExpression()), !dbg !5472
  %0 = load i32, i32* %i.addr, align 4, !dbg !5473
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5474
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5475
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5476
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5476
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5477
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5478
  %conv.i.i = trunc i64 %5 to i32, !dbg !5478
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5479
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5480
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5480
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5480
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5481
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5482
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5457
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5457
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5457
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5457
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5457
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #2, !dbg !5457, !srcloc !5483
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5457
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5457
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5457
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5457
  store i32 %15, i32* %old, align 4, !dbg !5472
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5484
  %tobool = icmp ne i32* %16, null, !dbg !5484
  br i1 %tobool, label %if.then, label %if.end, !dbg !5486

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5487
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5488
  store i32 %17, i32* %18, align 4, !dbg !5489
  br label %if.end, !dbg !5490

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5491
  %tobool1 = icmp ne i32 %19, 0, !dbg !5491
  %lnot = xor i1 %tobool1, true, !dbg !5491
  %lnot2 = xor i1 %lnot, true, !dbg !5491
  %lnot3 = xor i1 %lnot2, true, !dbg !5491
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5491
  %conv = sext i32 %lnot.ext to i64, !dbg !5491
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5491
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5493

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5494
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #9, !dbg !5495
  br label %if.end17, !dbg !5495

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5496
  %cmp = icmp slt i32 %21, 0, !dbg !5496
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5496

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5496
  %23 = load i32, i32* %i.addr, align 4, !dbg !5496
  %add = add i32 %22, %23, !dbg !5496
  %cmp7 = icmp slt i32 %add, 0, !dbg !5496
  br label %lor.end, !dbg !5496

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5496
  %lnot11 = xor i1 %lnot9, true, !dbg !5496
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5496
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5496
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5496
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5498

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5499
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #9, !dbg !5500
  br label %if.end16, !dbg !5500

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5501
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5502 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5508, metadata !DIExpression()), !dbg !5509
  ret i1 true, !dbg !5510
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5511 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  ret void, !dbg !5521
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !5522 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5530
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5532
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #9, !dbg !5533
  br i1 %call, label %if.then, label %if.end, !dbg !5534

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !5535
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5537
  call void %1(%struct.kref* %2) #9, !dbg !5535
  store i32 1, i32* %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5539
  br label %return, !dbg !5539

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5540
  ret i32 %3, !dbg !5540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5541 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5546
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #9, !dbg !5547
  ret i1 %call, !dbg !5548
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5549 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5552, metadata !DIExpression()), !dbg !5553
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5556
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5557
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5558
  ret i1 %call, !dbg !5559
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5560 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5563, metadata !DIExpression()), !dbg !5565
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5569, metadata !DIExpression()), !dbg !5570
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5571, metadata !DIExpression()), !dbg !5573
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4365, metadata !DIExpression()), !dbg !5574
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4375, metadata !DIExpression()), !dbg !5576
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5577, metadata !DIExpression()), !dbg !5578
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5579, metadata !DIExpression()), !dbg !5580
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5587, metadata !DIExpression()), !dbg !5588
  %0 = load i32, i32* %i.addr, align 4, !dbg !5589
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5590
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5591
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5592
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5592
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5593
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5594
  %conv.i.i = trunc i64 %5 to i32, !dbg !5594
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5595
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5596
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5596
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5596
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5597
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5598
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5573
  %sub.i.i = sub i32 0, %10, !dbg !5573
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5573
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5573
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5573
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5573
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #2, !dbg !5573, !srcloc !5599
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5573
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5573
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5573
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5573
  store i32 %15, i32* %old, align 4, !dbg !5588
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5600
  %tobool = icmp ne i32* %16, null, !dbg !5600
  br i1 %tobool, label %if.then, label %if.end, !dbg !5602

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5603
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5604
  store i32 %17, i32* %18, align 4, !dbg !5605
  br label %if.end, !dbg !5606

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5607
  %20 = load i32, i32* %i.addr, align 4, !dbg !5609
  %cmp = icmp eq i32 %19, %20, !dbg !5610
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5611

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !5612, !srcloc !5614
  store i1 true, i1* %retval, align 1, !dbg !5615
  br label %return, !dbg !5615

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5616
  %cmp3 = icmp slt i32 %21, 0, !dbg !5616
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5616

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5616
  %23 = load i32, i32* %i.addr, align 4, !dbg !5616
  %sub = sub i32 %22, %23, !dbg !5616
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5616
  br label %lor.end, !dbg !5616

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5616
  %lnot5 = xor i1 %lnot, true, !dbg !5616
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5616
  %conv = sext i32 %lnot.ext to i64, !dbg !5616
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5616
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5618

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5619
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #9, !dbg !5620
  br label %if.end8, !dbg !5620

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5621
  br label %return, !dbg !5621

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5622
  ret i1 %26, !dbg !5622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !5623 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5626, metadata !DIExpression()), !dbg !5630
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5634, metadata !DIExpression()), !dbg !5635
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5636, metadata !DIExpression()), !dbg !5638
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5640, metadata !DIExpression()), !dbg !5641
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5642, metadata !DIExpression()), !dbg !5643
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5644, metadata !DIExpression()), !dbg !5645
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5650
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5651
  %1 = load i32, i32* %n.addr, align 4, !dbg !5652
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5653
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5653
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5654
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5655
  %conv.i.i = trunc i64 %5 to i32, !dbg !5655
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5656
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5657
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5657
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #12, !dbg !5657
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5658
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5659
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5660
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5660
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5660
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5660
  ret void, !dbg !5662
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @get_jiffies_64() #0 !dbg !5663 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !5667
  ret i64 %0, !dbg !5668
}

; Function Attrs: noredzone
declare dso_local void @fw_send_phy_config(%struct.fw_card*, i32, i32, i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reset_bus(%struct.fw_card* %card, i1 zeroext %short_reset) #0 !dbg !5669 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %short_reset.addr = alloca i8, align 1
  %reg = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5672, metadata !DIExpression()), !dbg !5673
  %frombool = zext i1 %short_reset to i8
  store i8 %frombool, i8* %short_reset.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %short_reset.addr, metadata !5674, metadata !DIExpression()), !dbg !5675
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5676, metadata !DIExpression()), !dbg !5677
  %0 = load i8, i8* %short_reset.addr, align 1, !dbg !5678
  %tobool = trunc i8 %0 to i1, !dbg !5678
  %1 = zext i1 %tobool to i64, !dbg !5678
  %cond = select i1 %tobool, i32 5, i32 1, !dbg !5678
  store i32 %cond, i32* %reg, align 4, !dbg !5677
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !5679, metadata !DIExpression()), !dbg !5680
  %2 = load i8, i8* %short_reset.addr, align 1, !dbg !5681
  %tobool1 = trunc i8 %2 to i1, !dbg !5681
  %3 = zext i1 %tobool1 to i64, !dbg !5681
  %cond2 = select i1 %tobool1, i32 64, i32 64, !dbg !5681
  store i32 %cond2, i32* %bit, align 4, !dbg !5680
  %4 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5682
  %driver = getelementptr inbounds %struct.fw_card, %struct.fw_card* %4, i32 0, i32 0, !dbg !5683
  %5 = load %struct.fw_card_driver*, %struct.fw_card_driver** %driver, align 8, !dbg !5683
  %update_phy_reg = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %5, i32 0, i32 2, !dbg !5684
  %6 = load i32 (%struct.fw_card*, i32, i32, i32)*, i32 (%struct.fw_card*, i32, i32, i32)** %update_phy_reg, align 8, !dbg !5684
  %7 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5685
  %8 = load i32, i32* %reg, align 4, !dbg !5686
  %9 = load i32, i32* %bit, align 4, !dbg !5687
  %call = call i32 %6(%struct.fw_card* %7, i32 %8, i32 0, i32 %9) #9, !dbg !5682
  ret i32 %call, !dbg !5688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fw_node* @fw_node_get(%struct.fw_node* %node) #0 !dbg !5689 {
entry:
  %node.addr = alloca %struct.fw_node*, align 8
  store %struct.fw_node* %node, %struct.fw_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  %0 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5694
  %ref_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %0, i32 0, i32 5, !dbg !5695
  call void @refcount_inc(%struct.refcount_struct* %ref_count) #9, !dbg !5696
  %1 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5697
  ret %struct.fw_node* %1, !dbg !5698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_next_generation(i32 %new_generation, i32 %old_generation) #0 !dbg !5699 {
entry:
  %new_generation.addr = alloca i32, align 4
  %old_generation.addr = alloca i32, align 4
  store i32 %new_generation, i32* %new_generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %new_generation.addr, metadata !5702, metadata !DIExpression()), !dbg !5703
  store i32 %old_generation, i32* %old_generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %old_generation.addr, metadata !5704, metadata !DIExpression()), !dbg !5705
  %0 = load i32, i32* %new_generation.addr, align 4, !dbg !5706
  %and = and i32 %0, 255, !dbg !5707
  %1 = load i32, i32* %old_generation.addr, align 4, !dbg !5708
  %add = add i32 %1, 1, !dbg !5709
  %and1 = and i32 %add, 255, !dbg !5710
  %cmp = icmp eq i32 %and, %and1, !dbg !5711
  ret i1 %cmp, !dbg !5712
}

; Function Attrs: noredzone
declare dso_local i32 @fw_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i64, i8*, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @allocate_broadcast_channel(%struct.fw_card* %card, i32 %generation) #0 !dbg !5713 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %generation.addr = alloca i32, align 4
  %channel = alloca i32, align 4
  %bandwidth = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5716, metadata !DIExpression()), !dbg !5717
  store i32 %generation, i32* %generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  call void @llvm.dbg.declare(metadata i32* %channel, metadata !5720, metadata !DIExpression()), !dbg !5721
  call void @llvm.dbg.declare(metadata i32* %bandwidth, metadata !5722, metadata !DIExpression()), !dbg !5723
  store i32 0, i32* %bandwidth, align 4, !dbg !5723
  %0 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5724
  %broadcast_channel_allocated = getelementptr inbounds %struct.fw_card, %struct.fw_card* %0, i32 0, i32 37, !dbg !5726
  %1 = load i8, i8* %broadcast_channel_allocated, align 1, !dbg !5726
  %tobool = trunc i8 %1 to i1, !dbg !5726
  br i1 %tobool, label %if.end3, label %if.then, !dbg !5727

if.then:                                          ; preds = %entry
  %2 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5728
  %3 = load i32, i32* %generation.addr, align 4, !dbg !5730
  call void @fw_iso_resource_manage(%struct.fw_card* %2, i32 %3, i64 2147483648, i32* %channel, i32* %bandwidth, i1 zeroext true) #9, !dbg !5731
  %4 = load i32, i32* %channel, align 4, !dbg !5732
  %cmp = icmp ne i32 %4, 31, !dbg !5734
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5735

if.then1:                                         ; preds = %if.then
  %5 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5736
  call void (%struct.fw_card*, i8*, ...) @fw_notice(%struct.fw_card* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !5738
  br label %return, !dbg !5739

if.end:                                           ; preds = %if.then
  %6 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5740
  %broadcast_channel_allocated2 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %6, i32 0, i32 37, !dbg !5741
  store i8 1, i8* %broadcast_channel_allocated2, align 1, !dbg !5742
  br label %if.end3, !dbg !5743

if.end3:                                          ; preds = %if.end, %entry
  %7 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5744
  %device = getelementptr inbounds %struct.fw_card, %struct.fw_card* %7, i32 0, i32 1, !dbg !5745
  %8 = load %struct.device*, %struct.device** %device, align 8, !dbg !5745
  %9 = load i32, i32* %generation.addr, align 4, !dbg !5746
  %conv = sext i32 %9 to i64, !dbg !5747
  %10 = inttoptr i64 %conv to i8*, !dbg !5748
  %call = call i32 @device_for_each_child(%struct.device* %8, i8* %10, i32 (%struct.device*, i8*)* @fw_device_set_broadcast_channel) #9, !dbg !5749
  br label %return, !dbg !5750

return:                                           ; preds = %if.end3, %if.then1
  ret void, !dbg !5750
}

; Function Attrs: noredzone
declare dso_local i8* @fw_rcode_string(i32) #6

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fw_node_put(%struct.fw_node* %node) #0 !dbg !5751 {
entry:
  %node.addr = alloca %struct.fw_node*, align 8
  store %struct.fw_node* %node, %struct.fw_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_node** %node.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  %0 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5756
  %ref_count = getelementptr inbounds %struct.fw_node, %struct.fw_node* %0, i32 0, i32 5, !dbg !5758
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %ref_count) #9, !dbg !5759
  br i1 %call, label %if.then, label %if.end, !dbg !5760

if.then:                                          ; preds = %entry
  %1 = load %struct.fw_node*, %struct.fw_node** %node.addr, align 8, !dbg !5761
  %2 = bitcast %struct.fw_node* %1 to i8*, !dbg !5761
  call void @kfree(i8* %2) #9, !dbg !5762
  br label %if.end, !dbg !5762

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5764 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5766, metadata !DIExpression()), !dbg !5768
  %0 = load i64, i64* %__edi, align 8, !dbg !5768
  store i64 %0, i64* %__edi, align 8, !dbg !5768
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5769, metadata !DIExpression()), !dbg !5768
  %1 = load i64, i64* %__esi, align 8, !dbg !5768
  store i64 %1, i64* %__esi, align 8, !dbg !5768
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5770, metadata !DIExpression()), !dbg !5768
  %2 = load i64, i64* %__edx, align 8, !dbg !5768
  store i64 %2, i64* %__edx, align 8, !dbg !5768
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5771, metadata !DIExpression()), !dbg !5768
  %3 = load i64, i64* %__ecx, align 8, !dbg !5768
  store i64 %3, i64* %__ecx, align 8, !dbg !5768
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5772, metadata !DIExpression()), !dbg !5768
  %4 = load i64, i64* %__eax, align 8, !dbg !5768
  store i64 %4, i64* %__eax, align 8, !dbg !5768
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5768
  %6 = call i64 @llvm.read_register.i64(metadata !3997), !dbg !5768
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #2, !dbg !5768, !srcloc !5773
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5768
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5768
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5768
  call void @llvm.write_register.i64(metadata !3997, i64 %asmresult1), !dbg !5768
  ret void, !dbg !5774
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !5775 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5776, metadata !DIExpression()), !dbg !5778
  %0 = load i64, i64* %__edi, align 8, !dbg !5778
  store i64 %0, i64* %__edi, align 8, !dbg !5778
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5779, metadata !DIExpression()), !dbg !5778
  %1 = load i64, i64* %__esi, align 8, !dbg !5778
  store i64 %1, i64* %__esi, align 8, !dbg !5778
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5780, metadata !DIExpression()), !dbg !5778
  %2 = load i64, i64* %__edx, align 8, !dbg !5778
  store i64 %2, i64* %__edx, align 8, !dbg !5778
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5781, metadata !DIExpression()), !dbg !5778
  %3 = load i64, i64* %__ecx, align 8, !dbg !5778
  store i64 %3, i64* %__ecx, align 8, !dbg !5778
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5782, metadata !DIExpression()), !dbg !5778
  %4 = load i64, i64* %__eax, align 8, !dbg !5778
  store i64 %4, i64* %__eax, align 8, !dbg !5778
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !5778
  %6 = call i64 @llvm.read_register.i64(metadata !3997), !dbg !5778
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #2, !dbg !5778, !srcloc !5783
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5778
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5778
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5778
  call void @llvm.write_register.i64(metadata !3997, i64 %asmresult1), !dbg !5778
  ret void, !dbg !5784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5785 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  ret i1 true, !dbg !5790
}

; Function Attrs: noredzone
declare dso_local void @fw_iso_resource_manage(%struct.fw_card*, i32, i64, i32*, i32*, i1 zeroext) #6

; Function Attrs: noredzone
declare dso_local i32 @device_for_each_child(%struct.device*, i8*, i32 (%struct.device*, i8*)*) #6

; Function Attrs: noredzone
declare dso_local i32 @fw_device_set_broadcast_channel(%struct.device*, i8*) #6

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dummy_read_phy_reg(%struct.fw_card* %card, i32 %address) #0 !dbg !5791 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %address.addr = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  store i32 %address, i32* %address.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %address.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  ret i32 -19, !dbg !5796
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dummy_update_phy_reg(%struct.fw_card* %card, i32 %address, i32 %clear_bits, i32 %set_bits) #0 !dbg !5797 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %address.addr = alloca i32, align 4
  %clear_bits.addr = alloca i32, align 4
  %set_bits.addr = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  store i32 %address, i32* %address.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %address.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  store i32 %clear_bits, i32* %clear_bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %clear_bits.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  store i32 %set_bits, i32* %set_bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %set_bits.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  ret i32 -19, !dbg !5806
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dummy_send_request(%struct.fw_card* %card, %struct.fw_packet* %packet) #0 !dbg !5807 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %packet.addr = alloca %struct.fw_packet*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  store %struct.fw_packet* %packet, %struct.fw_packet** %packet.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_packet** %packet.addr, metadata !5810, metadata !DIExpression()), !dbg !5811
  %0 = load %struct.fw_packet*, %struct.fw_packet** %packet.addr, align 8, !dbg !5812
  %callback = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %0, i32 0, i32 9, !dbg !5813
  %1 = load void (%struct.fw_packet*, %struct.fw_card*, i32)*, void (%struct.fw_packet*, %struct.fw_card*, i32)** %callback, align 8, !dbg !5813
  %2 = load %struct.fw_packet*, %struct.fw_packet** %packet.addr, align 8, !dbg !5814
  %3 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5815
  call void %1(%struct.fw_packet* %2, %struct.fw_card* %3, i32 17) #9, !dbg !5812
  ret void, !dbg !5816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dummy_send_response(%struct.fw_card* %card, %struct.fw_packet* %packet) #0 !dbg !5817 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %packet.addr = alloca %struct.fw_packet*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  store %struct.fw_packet* %packet, %struct.fw_packet** %packet.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_packet** %packet.addr, metadata !5820, metadata !DIExpression()), !dbg !5821
  %0 = load %struct.fw_packet*, %struct.fw_packet** %packet.addr, align 8, !dbg !5822
  %callback = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %0, i32 0, i32 9, !dbg !5823
  %1 = load void (%struct.fw_packet*, %struct.fw_card*, i32)*, void (%struct.fw_packet*, %struct.fw_card*, i32)** %callback, align 8, !dbg !5823
  %2 = load %struct.fw_packet*, %struct.fw_packet** %packet.addr, align 8, !dbg !5824
  %3 = load %struct.fw_card*, %struct.fw_card** %card.addr, align 8, !dbg !5825
  call void %1(%struct.fw_packet* %2, %struct.fw_card* %3, i32 17) #9, !dbg !5822
  ret void, !dbg !5826
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dummy_cancel_packet(%struct.fw_card* %card, %struct.fw_packet* %packet) #0 !dbg !5827 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %packet.addr = alloca %struct.fw_packet*, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  store %struct.fw_packet* %packet, %struct.fw_packet** %packet.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_packet** %packet.addr, metadata !5830, metadata !DIExpression()), !dbg !5831
  ret i32 -2, !dbg !5832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dummy_enable_phys_dma(%struct.fw_card* %card, i32 %node_id, i32 %generation) #0 !dbg !5833 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %node_id.addr = alloca i32, align 4
  %generation.addr = alloca i32, align 4
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  store i32 %node_id, i32* %node_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %node_id.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  store i32 %generation, i32* %generation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %generation.addr, metadata !5838, metadata !DIExpression()), !dbg !5839
  ret i32 -19, !dbg !5840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fw_iso_context* @dummy_allocate_iso_context(%struct.fw_card* %card, i32 %type, i32 %channel, i64 %header_size) #0 !dbg !5841 {
entry:
  %card.addr = alloca %struct.fw_card*, align 8
  %type.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %header_size.addr = alloca i64, align 8
  store %struct.fw_card* %card, %struct.fw_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_card** %card.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5844, metadata !DIExpression()), !dbg !5845
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5846, metadata !DIExpression()), !dbg !5847
  store i64 %header_size, i64* %header_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %header_size.addr, metadata !5848, metadata !DIExpression()), !dbg !5849
  %call = call i8* @ERR_PTR(i64 -19) #9, !dbg !5850
  %0 = bitcast i8* %call to %struct.fw_iso_context*, !dbg !5850
  ret %struct.fw_iso_context* %0, !dbg !5851
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dummy_start_iso(%struct.fw_iso_context* %ctx, i32 %cycle, i32 %sync, i32 %tags) #0 !dbg !5852 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  %cycle.addr = alloca i32, align 4
  %sync.addr = alloca i32, align 4
  %tags.addr = alloca i32, align 4
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !5853, metadata !DIExpression()), !dbg !5854
  store i32 %cycle, i32* %cycle.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cycle.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  store i32 %sync, i32* %sync.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sync.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  store i32 %tags, i32* %tags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tags.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  ret i32 -19, !dbg !5861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dummy_set_iso_channels(%struct.fw_iso_context* %ctx, i64* %channels) #0 !dbg !5862 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  %channels.addr = alloca i64*, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  store i64* %channels, i64** %channels.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %channels.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  ret i32 -19, !dbg !5867
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dummy_queue_iso(%struct.fw_iso_context* %ctx, %struct.fw_iso_packet* %p, %struct.fw_iso_buffer* %buffer, i64 %payload) #0 !dbg !5868 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  %p.addr = alloca %struct.fw_iso_packet*, align 8
  %buffer.addr = alloca %struct.fw_iso_buffer*, align 8
  %payload.addr = alloca i64, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  store %struct.fw_iso_packet* %p, %struct.fw_iso_packet** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_packet** %p.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  store %struct.fw_iso_buffer* %buffer, %struct.fw_iso_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_buffer** %buffer.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  store i64 %payload, i64* %payload.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %payload.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  ret i32 -19, !dbg !5877
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dummy_flush_queue_iso(%struct.fw_iso_context* %ctx) #0 !dbg !5878 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  ret void, !dbg !5881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dummy_flush_iso_completions(%struct.fw_iso_context* %ctx) #0 !dbg !5882 {
entry:
  %ctx.addr = alloca %struct.fw_iso_context*, align 8
  store %struct.fw_iso_context* %ctx, %struct.fw_iso_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fw_iso_context** %ctx.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  ret i32 -19, !dbg !5885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5886 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  %0 = load i64, i64* %error.addr, align 8, !dbg !5892
  %1 = inttoptr i64 %0 to i8*, !dbg !5893
  ret i8* %1, !dbg !5894
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3997}
!llvm.module.flags = !{!3998, !3999, !4000, !4001}
!llvm.ident = !{!4002}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "card_mutex", scope: !2, file: !3, line: 55, type: !677, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !153, globals: !3971, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firewire/core-card.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !39, !47, !53, !60, !67, !73, !79, !86, !94, !100, !133, !138, !146}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !6, line: 5, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !14, line: 54, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !25, line: 546, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !31, line: 296, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !40, line: 9, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !48, line: 16, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !54, line: 15, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !61, line: 59, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !68, line: 26, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !74, line: 44, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !80, line: 343, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !87, line: 524, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92, !93}
!89 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!93 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !87, line: 502, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 30, baseType: !102, size: 64, elements: !103)
!101 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!104 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!105 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!106 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!107 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!108 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!109 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!110 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!111 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!112 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!113 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!114 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!115 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!116 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!117 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!118 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!119 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!120 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!121 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!122 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!123 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!124 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!125 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!126 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!127 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!128 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!129 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!130 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!131 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!132 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !134, line: 10, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !137}
!136 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !139, line: 119, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!140 = !{!141, !142, !143, !144, !145}
!141 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!144 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!145 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fw_device_state", file: !147, line: 159, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/firewire.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "FW_DEVICE_INITIALIZING", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "FW_DEVICE_RUNNING", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "FW_DEVICE_GONE", value: 2, isUnsigned: true)
!152 = !DIEnumerator(name: "FW_DEVICE_SHUTDOWN", value: 3, isUnsigned: true)
!153 = !{!154, !156, !158, !163, !164, !165, !3953, !3955, !688, !214, !178, !3957, !102, !3959, !3969}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !155, line: 27, baseType: !7)
!155 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !157, line: 32, baseType: !154)
!157 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !160, line: 17, baseType: !161)
!160 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !155, line: 21, baseType: !162)
!162 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!163 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_card", file: !147, line: 83, size: 11520, elements: !167)
!167 = !{!168, !3159, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3952}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !166, file: !147, line: 84, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_card_driver", file: !172, line: 53, size: 1152, elements: !173)
!172 = !DIFile(filename: "drivers/firewire/core.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174, !186, !190, !194, !195, !234, !235, !239, !243, !247, !251, !278, !282, !288, !293, !3153, !3154, !3158}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !171, file: !172, line: 60, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !165, !179, !181}
!178 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 55, baseType: !183)
!182 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !184, line: 72, baseType: !185)
!184 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !184, line: 16, baseType: !163)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "read_phy_reg", scope: !171, file: !172, line: 63, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!178, !165, !178}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "update_phy_reg", scope: !171, file: !172, line: 64, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!178, !165, !178, !178, !178}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "set_config_rom", scope: !171, file: !172, line: 72, baseType: !175, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "send_request", scope: !171, file: !172, line: 75, baseType: !196, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !165, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_packet", file: !147, line: 291, size: 832, elements: !201)
!201 = !{!202, !203, !204, !209, !210, !211, !212, !217, !220, !221, !226, !227, !233}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !200, file: !147, line: 292, baseType: !178, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !200, file: !147, line: 293, baseType: !178, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !200, file: !147, line: 294, baseType: !205, size: 128, offset: 64)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !207)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !160, line: 21, baseType: !154)
!207 = !{!208}
!208 = !DISubrange(count: 4)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "header_length", scope: !200, file: !147, line: 295, baseType: !181, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !200, file: !147, line: 296, baseType: !164, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !200, file: !147, line: 297, baseType: !181, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "payload_bus", scope: !200, file: !147, line: 298, baseType: !213, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !182, line: 143, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !160, line: 23, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !155, line: 31, baseType: !216)
!216 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "payload_mapped", scope: !200, file: !147, line: 299, baseType: !218, size: 8, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !182, line: 30, baseType: !219)
!219 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !200, file: !147, line: 300, baseType: !206, size: 32, offset: 480)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !200, file: !147, line: 310, baseType: !222, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_packet_callback_t", file: !147, line: 266, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !199, !165, !178}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !200, file: !147, line: 311, baseType: !178, size: 32, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !200, file: !147, line: 312, baseType: !228, size: 128, offset: 640)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !182, line: 178, size: 128, elements: !229)
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !182, line: 179, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !182, line: 179, baseType: !231, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !200, file: !147, line: 313, baseType: !164, size: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "send_response", scope: !171, file: !172, line: 76, baseType: !196, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_packet", scope: !171, file: !172, line: 78, baseType: !236, size: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!178, !165, !199}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "enable_phys_dma", scope: !171, file: !172, line: 88, baseType: !240, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!178, !165, !178, !178}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "read_csr", scope: !171, file: !172, line: 91, baseType: !244, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!206, !165, !178}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "write_csr", scope: !171, file: !172, line: 92, baseType: !248, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !165, !178, !206}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_iso_context", scope: !171, file: !172, line: 95, baseType: !252, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !165, !178, !178, !181}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_context", file: !147, line: 439, size: 384, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !277}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !256, file: !147, line: 440, baseType: !165, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !256, file: !147, line: 441, baseType: !178, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !256, file: !147, line: 442, baseType: !178, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !256, file: !147, line: 443, baseType: !178, size: 32, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "drop_overflow_headers", scope: !256, file: !147, line: 444, baseType: !218, size: 8, offset: 160)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !256, file: !147, line: 445, baseType: !181, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !256, file: !147, line: 449, baseType: !265, size: 64, offset: 256)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !147, line: 446, size: 64, elements: !266)
!266 = !{!267, !272}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sc", scope: !265, file: !147, line: 447, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_iso_callback_t", file: !147, line: 434, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !255, !206, !181, !164, !164}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !265, file: !147, line: 448, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "fw_iso_mc_callback_t", file: !147, line: 437, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !255, !213, !164}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !256, file: !147, line: 450, baseType: !164, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "free_iso_context", scope: !171, file: !172, line: 97, baseType: !279, size: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !255}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "start_iso", scope: !171, file: !172, line: 99, baseType: !283, size: 64, offset: 768)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!178, !255, !286, !206, !206}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !160, line: 20, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !155, line: 26, baseType: !178)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "set_iso_channels", scope: !171, file: !172, line: 102, baseType: !289, size: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!178, !255, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "queue_iso", scope: !171, file: !172, line: 104, baseType: !294, size: 64, offset: 896)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!178, !255, !297, !313, !163}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_packet", file: !147, line: 393, size: 32, elements: !299)
!299 = !{!300, !304, !305, !306, !307, !308, !309}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !298, file: !147, line: 394, baseType: !301, size: 16)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !160, line: 19, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !155, line: 24, baseType: !303)
!303 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !298, file: !147, line: 395, baseType: !206, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !298, file: !147, line: 396, baseType: !206, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !298, file: !147, line: 398, baseType: !206, size: 2, offset: 18, flags: DIFlagBitField, extraData: i64 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !298, file: !147, line: 399, baseType: !206, size: 4, offset: 20, flags: DIFlagBitField, extraData: i64 16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "header_length", scope: !298, file: !147, line: 400, baseType: !206, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !298, file: !147, line: 401, baseType: !310, offset: 32)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 0)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_iso_buffer", file: !147, line: 421, size: 192, elements: !315)
!315 = !{!316, !317, !3151, !3152}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !314, file: !147, line: 422, baseType: !5, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !314, file: !147, line: 423, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !321, line: 68, size: 512, align: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323, !324, !3143, !3150}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !321, line: 69, baseType: !163, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 77, baseType: !325, size: 320, offset: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 77, size: 320, elements: !326)
!326 = !{!327, !3018, !3022, !3048, !3056, !3062, !3074, !3142}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 78, baseType: !328, size: 320)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 78, size: 320, elements: !329)
!329 = !{!330, !331, !3016, !3017}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !328, file: !321, line: 84, baseType: !228, size: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !328, file: !321, line: 86, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !334)
!334 = !{!335, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !3011, !3012, !3013, !3014, !3015}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !333, file: !31, line: 452, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !338)
!338 = !{!339, !341, !342, !350, !357, !358, !2842, !2843, !2844, !2845, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2886, !2894, !2895, !2896, !2906, !2907, !2908, !2909}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !337, file: !31, line: 611, baseType: !340, size: 16)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !182, line: 19, baseType: !303)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !337, file: !31, line: 612, baseType: !303, size: 16, offset: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !337, file: !31, line: 613, baseType: !343, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !344, line: 23, baseType: !345)
!344 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 21, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !345, file: !344, line: 22, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !182, line: 32, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !184, line: 49, baseType: !7)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !337, file: !31, line: 614, baseType: !351, size: 32, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !344, line: 28, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 26, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !352, file: !344, line: 27, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !182, line: 33, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !184, line: 50, baseType: !7)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !337, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !337, file: !31, line: 622, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !362)
!362 = !{!363, !2716, !2729, !2733, !2739, !2743, !2747, !2751, !2755, !2759, !2763, !2764, !2768, !2772, !2792, !2818, !2822, !2828, !2833, !2837, !2838}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !361, file: !31, line: 1865, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !336, !367, !7}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !369, line: 89, size: 1536, elements: !370)
!369 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !372, !382, !390, !391, !406, !407, !411, !438, !510, !2700, !2701, !2702, !2708, !2709, !2710}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !368, file: !369, line: 91, baseType: !7, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !368, file: !369, line: 92, baseType: !373, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !374, line: 277, baseType: !375)
!374 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !374, line: 277, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !375, file: !374, line: 277, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !374, line: 70, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !374, line: 65, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !379, file: !374, line: 66, baseType: !7, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !368, file: !369, line: 93, baseType: !383, size: 128, offset: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !384, line: 38, size: 128, elements: !385)
!384 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !384, line: 39, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !383, file: !384, line: 39, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !368, file: !369, line: 94, baseType: !367, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !368, file: !369, line: 95, baseType: !392, size: 128, offset: 256)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !369, line: 47, size: 128, elements: !393)
!393 = !{!394, !403}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !369, line: 48, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !369, line: 48, size: 64, elements: !396)
!396 = !{!397, !402}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !369, line: 49, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !369, line: 49, size: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !398, file: !369, line: 50, baseType: !206, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !398, file: !369, line: 50, baseType: !206, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !395, file: !369, line: 52, baseType: !214, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !369, line: 54, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !368, file: !369, line: 96, baseType: !336, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !368, file: !369, line: 98, baseType: !408, size: 256, offset: 448)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !368, file: !369, line: 101, baseType: !412, size: 32, offset: 704)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !413, line: 25, size: 32, elements: !414)
!413 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !413, line: 26, baseType: !416, size: 32)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 26, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !413, line: 30, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !413, line: 30, size: 32, elements: !420)
!420 = !{!421, !437}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !419, file: !413, line: 31, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !423, line: 83, baseType: !424)
!423 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !423, line: 71, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !423, line: 72, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !423, line: 72, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !427, file: !423, line: 73, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !423, line: 20, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !430, file: !423, line: 21, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !434, line: 25, baseType: !435)
!434 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 25, elements: !436)
!436 = !{}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !419, file: !413, line: 32, baseType: !178, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !368, file: !369, line: 102, baseType: !439, size: 64, offset: 768)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !369, line: 135, size: 1024, align: 512, elements: !442)
!442 = !{!443, !447, !448, !455, !464, !468, !472, !476, !477, !481, !486, !498, !504}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !441, file: !369, line: 136, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!178, !367, !7}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !441, file: !369, line: 137, baseType: !444, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !441, file: !369, line: 138, baseType: !449, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!178, !452, !454}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !441, file: !369, line: 139, baseType: !456, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!178, !452, !7, !459, !462}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !441, file: !369, line: 141, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!178, !452}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !441, file: !369, line: 142, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!178, !367}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !441, file: !369, line: 143, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !367}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !441, file: !369, line: 144, baseType: !473, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !441, file: !369, line: 145, baseType: !478, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !367, !336}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !441, file: !369, line: 146, baseType: !482, size: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !367, !485, !178}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !441, file: !369, line: 147, baseType: !487, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !492}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !369, line: 18, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !494, line: 8, size: 128, elements: !495)
!494 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !493, file: !494, line: 9, baseType: !490, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !493, file: !494, line: 10, baseType: !367, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !441, file: !369, line: 148, baseType: !499, size: 64, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!178, !502, !218}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !441, file: !369, line: 149, baseType: !505, size: 64, offset: 768)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!367, !367, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !368, file: !369, line: 103, baseType: !511, size: 64, offset: 832)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !513)
!513 = !{!514, !515, !518, !519, !520, !524, !576, !660, !762, !845, !849, !850, !851, !852, !853, !862, !863, !864, !869, !873, !874, !877, !881, !884, !885, !886, !927, !2629, !2630, !2631, !2632, !2633, !2634, !2637, !2639, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2667, !2668, !2669, !2670, !2671, !2674, !2675, !2676, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !512, file: !31, line: 1417, baseType: !228, size: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !512, file: !31, line: 1418, baseType: !516, size: 32, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !182, line: 16, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !182, line: 13, baseType: !206)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !512, file: !31, line: 1419, baseType: !162, size: 8, offset: 160)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !512, file: !31, line: 1420, baseType: !163, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !512, file: !31, line: 1421, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !182, line: 46, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !184, line: 88, baseType: !523)
!523 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !512, file: !31, line: 1422, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !527)
!527 = !{!528, !529, !530, !537, !541, !545, !549, !553, !554, !564, !567, !568, !569, !573, !574, !575}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !526, file: !31, line: 2229, baseType: !459, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !526, file: !31, line: 2230, baseType: !178, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !526, file: !31, line: 2238, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!178, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !536, line: 28, flags: DIFlagFwdDecl)
!536 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !526, file: !31, line: 2239, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !526, file: !31, line: 2240, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!367, !525, !178, !459, !164}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !526, file: !31, line: 2242, baseType: !546, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !511}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !526, file: !31, line: 2243, baseType: !550, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !552, line: 76, flags: DIFlagFwdDecl)
!552 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !31, line: 2244, baseType: !525, size: 64, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !526, file: !31, line: 2245, baseType: !555, size: 64, offset: 512)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !182, line: 182, size: 64, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !555, file: !182, line: 183, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !182, line: 186, size: 128, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !182, line: 187, baseType: !558, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !559, file: !182, line: 187, baseType: !563, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !526, file: !31, line: 2247, baseType: !565, offset: 576)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !566, line: 187, elements: !436)
!566 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !526, file: !31, line: 2248, baseType: !565, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !526, file: !31, line: 2249, baseType: !565, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !526, file: !31, line: 2250, baseType: !570, offset: 576)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 3)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !526, file: !31, line: 2252, baseType: !565, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !526, file: !31, line: 2253, baseType: !565, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !526, file: !31, line: 2254, baseType: !565, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !512, file: !31, line: 1423, baseType: !577, size: 64, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !580)
!580 = !{!581, !585, !589, !590, !594, !600, !604, !605, !606, !610, !614, !615, !616, !617, !623, !628, !629, !636, !637, !638, !639, !644, !659}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !579, file: !31, line: 1936, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!336, !511}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !579, file: !31, line: 1937, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !336}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !579, file: !31, line: 1938, baseType: !586, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !579, file: !31, line: 1940, baseType: !591, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !336, !178}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !579, file: !31, line: 1941, baseType: !595, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!178, !336, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !25, line: 40, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !579, file: !31, line: 1942, baseType: !601, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!178, !336}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !579, file: !31, line: 1943, baseType: !586, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !579, file: !31, line: 1944, baseType: !546, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !579, file: !31, line: 1945, baseType: !607, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!178, !511, !178}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !579, file: !31, line: 1946, baseType: !611, size: 64, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!178, !511}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !579, file: !31, line: 1947, baseType: !611, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !579, file: !31, line: 1948, baseType: !611, size: 64, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !579, file: !31, line: 1949, baseType: !611, size: 64, offset: 768)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !579, file: !31, line: 1950, baseType: !618, size: 64, offset: 832)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!178, !367, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !579, file: !31, line: 1951, baseType: !624, size: 64, offset: 896)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!178, !511, !627, !485}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !579, file: !31, line: 1952, baseType: !546, size: 64, offset: 960)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !579, file: !31, line: 1954, baseType: !630, size: 64, offset: 1024)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!178, !633, !367}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !635, line: 539, flags: DIFlagFwdDecl)
!635 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !579, file: !31, line: 1955, baseType: !630, size: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !579, file: !31, line: 1956, baseType: !630, size: 64, offset: 1152)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !579, file: !31, line: 1957, baseType: !630, size: 64, offset: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !579, file: !31, line: 1963, baseType: !640, size: 64, offset: 1280)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!178, !511, !319, !643}
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !182, line: 148, baseType: !7)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !579, file: !31, line: 1964, baseType: !645, size: 64, offset: 1344)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!102, !511, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !650, line: 12, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!651 = !{!652, !653, !654, !655, !656}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !649, file: !650, line: 13, baseType: !643, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !649, file: !650, line: 16, baseType: !178, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !649, file: !650, line: 23, baseType: !163, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !649, file: !650, line: 30, baseType: !163, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !649, file: !650, line: 33, baseType: !657, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !321, line: 27, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !579, file: !31, line: 1966, baseType: !645, size: 64, offset: 1408)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !512, file: !31, line: 1424, baseType: !661, size: 64, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !14, line: 322, size: 704, elements: !664)
!664 = !{!665, !731, !735, !739, !740, !741, !742, !743, !748, !753, !757}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !663, file: !14, line: 323, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!178, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !14, line: 294, size: 1600, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !691, !692, !697, !698, !714, !715, !716}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !670, file: !14, line: 295, baseType: !559, size: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !670, file: !14, line: 296, baseType: !228, size: 128, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !670, file: !14, line: 297, baseType: !228, size: 128, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !670, file: !14, line: 298, baseType: !228, size: 128, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !670, file: !14, line: 299, baseType: !677, size: 192, offset: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !678, line: 53, size: 192, elements: !679)
!678 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !689, !690}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !677, file: !678, line: 54, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !682, line: 13, baseType: !683)
!682 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !182, line: 175, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 173, size: 64, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !684, file: !182, line: 174, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !160, line: 22, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !155, line: 30, baseType: !523)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !677, file: !678, line: 55, baseType: !422, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !677, file: !678, line: 59, baseType: !228, size: 128, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !670, file: !14, line: 300, baseType: !422, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !670, file: !14, line: 301, baseType: !693, size: 32, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !182, line: 168, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 166, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !694, file: !182, line: 167, baseType: !178, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !670, file: !14, line: 302, baseType: !511, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !670, file: !14, line: 303, baseType: !699, size: 64, offset: 832)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !14, line: 68, size: 64, elements: !700)
!700 = !{!701, !713}
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !14, line: 69, baseType: !702, size: 32)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !14, line: 69, size: 32, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !702, file: !14, line: 70, baseType: !343, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !702, file: !14, line: 71, baseType: !351, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !702, file: !14, line: 72, baseType: !707, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !708, line: 24, baseType: !709)
!708 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 22, size: 32, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !709, file: !708, line: 23, baseType: !712, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !708, line: 20, baseType: !349)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !14, line: 74, baseType: !13, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !670, file: !14, line: 304, baseType: !521, size: 64, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !670, file: !14, line: 305, baseType: !163, size: 64, offset: 960)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !670, file: !14, line: 306, baseType: !717, size: 576, offset: 1024)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !14, line: 205, size: 576, elements: !718)
!718 = !{!719, !721, !722, !723, !724, !725, !726, !727, !730}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !717, file: !14, line: 206, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !14, line: 66, baseType: !523)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !717, file: !14, line: 207, baseType: !720, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !717, file: !14, line: 208, baseType: !720, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !717, file: !14, line: 209, baseType: !720, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !717, file: !14, line: 210, baseType: !720, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !717, file: !14, line: 211, baseType: !720, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !717, file: !14, line: 212, baseType: !720, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !717, file: !14, line: 213, baseType: !728, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !729, line: 8, baseType: !688)
!729 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !717, file: !14, line: 214, baseType: !728, size: 64, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !663, file: !14, line: 324, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!669, !511, !178}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !663, file: !14, line: 325, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !669}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !663, file: !14, line: 326, baseType: !666, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !663, file: !14, line: 327, baseType: !666, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !663, file: !14, line: 328, baseType: !666, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !663, file: !14, line: 329, baseType: !607, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !663, file: !14, line: 332, baseType: !744, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!747, !336}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !663, file: !14, line: 333, baseType: !749, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!178, !336, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !663, file: !14, line: 335, baseType: !754, size: 64, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!178, !336, !747}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !663, file: !14, line: 337, baseType: !758, size: 64, offset: 640)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!178, !511, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !512, file: !31, line: 1425, baseType: !763, size: 64, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !14, line: 428, size: 704, elements: !766)
!766 = !{!767, !771, !772, !776, !777, !778, !793, !816, !820, !821, !844}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !765, file: !14, line: 429, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!178, !511, !178, !178, !502}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !765, file: !14, line: 430, baseType: !607, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !765, file: !14, line: 431, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!178, !511, !7}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !765, file: !14, line: 432, baseType: !773, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !765, file: !14, line: 433, baseType: !607, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !765, file: !14, line: 434, baseType: !779, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!178, !511, !178, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !14, line: 415, size: 256, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !783, file: !14, line: 416, baseType: !178, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !783, file: !14, line: 417, baseType: !7, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !783, file: !14, line: 418, baseType: !7, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !783, file: !14, line: 420, baseType: !7, size: 32, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !783, file: !14, line: 421, baseType: !7, size: 32, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !783, file: !14, line: 422, baseType: !7, size: 32, offset: 160)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !783, file: !14, line: 423, baseType: !7, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !783, file: !14, line: 424, baseType: !7, size: 32, offset: 224)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !765, file: !14, line: 435, baseType: !794, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!178, !511, !699, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !14, line: 343, size: 960, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !798, file: !14, line: 344, baseType: !178, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !798, file: !14, line: 345, baseType: !214, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !798, file: !14, line: 346, baseType: !214, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !798, file: !14, line: 347, baseType: !214, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !798, file: !14, line: 348, baseType: !214, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !798, file: !14, line: 349, baseType: !214, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !798, file: !14, line: 350, baseType: !214, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !798, file: !14, line: 351, baseType: !687, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !798, file: !14, line: 353, baseType: !687, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !798, file: !14, line: 354, baseType: !178, size: 32, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !798, file: !14, line: 355, baseType: !178, size: 32, offset: 608)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !798, file: !14, line: 356, baseType: !214, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !798, file: !14, line: 357, baseType: !214, size: 64, offset: 704)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !798, file: !14, line: 358, baseType: !214, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !798, file: !14, line: 359, baseType: !687, size: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !798, file: !14, line: 360, baseType: !178, size: 32, offset: 896)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !765, file: !14, line: 436, baseType: !817, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!178, !511, !761, !797}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !765, file: !14, line: 438, baseType: !794, size: 64, offset: 512)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !765, file: !14, line: 439, baseType: !822, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!178, !511, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !14, line: 409, size: 1408, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !826, file: !14, line: 410, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !826, file: !14, line: 411, baseType: !830, size: 1344, offset: 64)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 1344, elements: !571)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !14, line: 395, size: 448, elements: !832)
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !843}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !14, line: 396, baseType: !7, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !831, file: !14, line: 397, baseType: !7, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !831, file: !14, line: 399, baseType: !7, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !831, file: !14, line: 400, baseType: !7, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !831, file: !14, line: 401, baseType: !7, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !831, file: !14, line: 402, baseType: !7, size: 32, offset: 160)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !831, file: !14, line: 403, baseType: !7, size: 32, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !831, file: !14, line: 404, baseType: !216, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !831, file: !14, line: 405, baseType: !842, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !182, line: 126, baseType: !214)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !831, file: !14, line: 406, baseType: !842, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !765, file: !14, line: 440, baseType: !773, size: 64, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !512, file: !31, line: 1426, baseType: !846, size: 64, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !512, file: !31, line: 1427, baseType: !163, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !512, file: !31, line: 1428, baseType: !163, size: 64, offset: 704)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !512, file: !31, line: 1429, baseType: !163, size: 64, offset: 768)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !512, file: !31, line: 1430, baseType: !367, size: 64, offset: 832)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !512, file: !31, line: 1431, baseType: !854, size: 256, offset: 896)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !855, line: 35, size: 256, elements: !856)
!855 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!856 = !{!857, !858, !859, !861}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !854, file: !855, line: 36, baseType: !681, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !854, file: !855, line: 42, baseType: !681, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !854, file: !855, line: 46, baseType: !860, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !423, line: 29, baseType: !430)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !854, file: !855, line: 47, baseType: !228, size: 128, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !512, file: !31, line: 1432, baseType: !178, size: 32, offset: 1152)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !512, file: !31, line: 1433, baseType: !693, size: 32, offset: 1184)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !512, file: !31, line: 1437, baseType: !865, size: 64, offset: 1216)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !512, file: !31, line: 1449, baseType: !870, size: 64, offset: 1280)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !384, line: 34, size: 64, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !870, file: !384, line: 35, baseType: !387, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !512, file: !31, line: 1450, baseType: !228, size: 128, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !512, file: !31, line: 1451, baseType: !875, size: 64, offset: 1472)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !512, file: !31, line: 1452, baseType: !878, size: 64, offset: 1536)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !880, line: 40, flags: DIFlagFwdDecl)
!880 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !512, file: !31, line: 1453, baseType: !882, size: 64, offset: 1600)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !512, file: !31, line: 1454, baseType: !559, size: 128, offset: 1664)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !512, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !512, file: !31, line: 1456, baseType: !887, size: 2432, offset: 1856)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !14, line: 518, size: 2432, elements: !888)
!888 = !{!889, !890, !891, !893, !925}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !14, line: 519, baseType: !7, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !887, file: !14, line: 520, baseType: !854, size: 256, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !887, file: !14, line: 521, baseType: !892, size: 192, offset: 320)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 192, elements: !571)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !887, file: !14, line: 522, baseType: !894, size: 1728, offset: 512)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 1728, elements: !571)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !14, line: 222, size: 576, elements: !896)
!896 = !{!897, !917, !918, !919, !920, !921, !922, !923, !924}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !895, file: !14, line: 223, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !14, line: 443, size: 256, elements: !900)
!900 = !{!901, !902, !915, !916}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !899, file: !14, line: 444, baseType: !178, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !899, file: !14, line: 445, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !14, line: 310, size: 512, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913, !914}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !905, file: !14, line: 311, baseType: !607, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !905, file: !14, line: 312, baseType: !607, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !905, file: !14, line: 313, baseType: !607, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !905, file: !14, line: 314, baseType: !607, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !905, file: !14, line: 315, baseType: !666, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !905, file: !14, line: 316, baseType: !666, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !905, file: !14, line: 317, baseType: !666, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !905, file: !14, line: 318, baseType: !758, size: 64, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !899, file: !14, line: 446, baseType: !550, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !899, file: !14, line: 447, baseType: !898, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !895, file: !14, line: 224, baseType: !178, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !895, file: !14, line: 226, baseType: !228, size: 128, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !895, file: !14, line: 227, baseType: !163, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !895, file: !14, line: 228, baseType: !7, size: 32, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !895, file: !14, line: 229, baseType: !7, size: 32, offset: 352)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !895, file: !14, line: 230, baseType: !720, size: 64, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !895, file: !14, line: 231, baseType: !720, size: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !895, file: !14, line: 232, baseType: !164, size: 64, offset: 512)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !887, file: !14, line: 523, baseType: !926, size: 192, offset: 2240)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 192, elements: !571)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !512, file: !31, line: 1458, baseType: !928, size: 2112, offset: 4288)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !929)
!929 = !{!930, !931, !938}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !928, file: !31, line: 1411, baseType: !178, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !928, file: !31, line: 1412, baseType: !932, size: 128, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !933, line: 40, baseType: !934)
!933 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !933, line: 36, size: 128, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !934, file: !933, line: 37, baseType: !422)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !934, file: !933, line: 38, baseType: !228, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !928, file: !31, line: 1413, baseType: !939, size: 1920, offset: 192)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 1920, elements: !571)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !941, line: 12, size: 640, elements: !942)
!941 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!942 = !{!943, !959, !961, !2627, !2628}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !940, file: !941, line: 13, baseType: !944, size: 320)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !945, line: 17, size: 320, elements: !946)
!945 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!946 = !{!947, !948, !949, !950}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !944, file: !945, line: 18, baseType: !178, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !944, file: !945, line: 19, baseType: !178, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !944, file: !945, line: 20, baseType: !932, size: 128, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !944, file: !945, line: 22, baseType: !951, size: 128, align: 64, offset: 192)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !182, line: 216, size: 128, align: 64, elements: !952)
!952 = !{!953, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !182, line: 217, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !951, file: !182, line: 218, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !954}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !940, file: !941, line: 14, baseType: !960, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !940, file: !941, line: 15, baseType: !962, size: 64, offset: 384)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !963, line: 16, size: 64, elements: !964)
!963 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !962, file: !963, line: 17, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !880, line: 640, size: 48640, elements: !968)
!968 = !{!969, !975, !977, !978, !983, !984, !985, !986, !987, !988, !989, !990, !994, !1019, !1030, !1120, !1121, !1122, !1133, !1134, !1136, !1137, !1921, !1922, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1999, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2014, !2015, !2016, !2018, !2019, !2020, !2021, !2022, !2023, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2047, !2052, !2053, !2054, !2055, !2056, !2060, !2063, !2066, !2069, !2072, !2075, !2176, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2224, !2225, !2226, !2227, !2228, !2233, !2234, !2235, !2238, !2239, !2242, !2245, !2248, !2249, !2289, !2292, !2293, !2372, !2373, !2376, !2377, !2380, !2381, !2382, !2386, !2387, !2388, !2401, !2402, !2403, !2413, !2418, !2419, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !967, file: !880, line: 646, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !971, line: 56, size: 128, elements: !972)
!971 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !971, line: 57, baseType: !163, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !970, file: !971, line: 58, baseType: !206, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !967, file: !880, line: 649, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !967, file: !880, line: 657, baseType: !164, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !967, file: !880, line: 658, baseType: !979, size: 32, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !139, line: 113, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !139, line: 111, size: 32, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !980, file: !139, line: 112, baseType: !693, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !880, line: 660, baseType: !7, size: 32, offset: 288)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !967, file: !880, line: 661, baseType: !7, size: 32, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !967, file: !880, line: 684, baseType: !178, size: 32, offset: 352)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !967, file: !880, line: 686, baseType: !178, size: 32, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !967, file: !880, line: 687, baseType: !178, size: 32, offset: 416)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !967, file: !880, line: 688, baseType: !178, size: 32, offset: 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !967, file: !880, line: 689, baseType: !7, size: 32, offset: 480)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !967, file: !880, line: 691, baseType: !991, size: 64, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !993)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !880, line: 691, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !967, file: !880, line: 692, baseType: !995, size: 832, offset: 576)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !880, line: 451, size: 832, elements: !996)
!996 = !{!997, !1002, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !995, file: !880, line: 453, baseType: !998, size: 128)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !880, line: 325, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !998, file: !880, line: 326, baseType: !163, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !998, file: !880, line: 327, baseType: !206, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !995, file: !880, line: 454, baseType: !1003, size: 192, align: 64, offset: 128)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1004, line: 24, size: 192, align: 64, elements: !1005)
!1004 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1005 = !{!1006, !1007, !1009}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1003, file: !1004, line: 25, baseType: !163, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1003, file: !1004, line: 26, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1003, file: !1004, line: 27, baseType: !1008, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !995, file: !880, line: 455, baseType: !228, size: 128, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !995, file: !880, line: 456, baseType: !7, size: 32, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !995, file: !880, line: 458, baseType: !214, size: 64, offset: 512)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !995, file: !880, line: 459, baseType: !214, size: 64, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !995, file: !880, line: 460, baseType: !214, size: 64, offset: 640)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !995, file: !880, line: 461, baseType: !214, size: 64, offset: 704)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !995, file: !880, line: 463, baseType: !214, size: 64, offset: 768)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !995, file: !880, line: 465, baseType: !1018, offset: 832)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !880, line: 415, elements: !436)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !967, file: !880, line: 693, baseType: !1020, size: 384, offset: 1408)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !880, line: 489, size: 384, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1020, file: !880, line: 490, baseType: !228, size: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1020, file: !880, line: 491, baseType: !163, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1020, file: !880, line: 492, baseType: !163, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1020, file: !880, line: 493, baseType: !7, size: 32, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1020, file: !880, line: 494, baseType: !303, size: 16, offset: 288)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1020, file: !880, line: 495, baseType: !303, size: 16, offset: 304)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1020, file: !880, line: 497, baseType: !1029, size: 64, offset: 320)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !967, file: !880, line: 697, baseType: !1031, size: 1792, offset: 1792)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !880, line: 507, size: 1792, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1117, !1118}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1031, file: !880, line: 508, baseType: !1003, size: 192, align: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1031, file: !880, line: 515, baseType: !214, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1031, file: !880, line: 516, baseType: !214, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1031, file: !880, line: 517, baseType: !214, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1031, file: !880, line: 518, baseType: !214, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1031, file: !880, line: 519, baseType: !214, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1031, file: !880, line: 526, baseType: !687, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1031, file: !880, line: 527, baseType: !214, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1031, file: !880, line: 528, baseType: !7, size: 32, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1031, file: !880, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1031, file: !880, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1031, file: !880, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1031, file: !880, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1031, file: !880, line: 563, baseType: !1047, size: 512, offset: 704)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1048)
!1048 = !{!1049, !1057, !1058, !1063, !1113, !1114, !1115, !1116}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1047, file: !20, line: 119, baseType: !1050, size: 256)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1051, line: 9, size: 256, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1050, file: !1051, line: 10, baseType: !1003, size: 192, align: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1050, file: !1051, line: 11, baseType: !1055, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1056, line: 29, baseType: !687)
!1056 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1047, file: !20, line: 120, baseType: !1055, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1047, file: !20, line: 121, baseType: !1059, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!19, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1047, file: !20, line: 122, baseType: !1064, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1066)
!1066 = !{!1067, !1087, !1088, !1091, !1096, !1097, !1108, !1112}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1065, file: !20, line: 160, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1069, file: !20, line: 215, baseType: !860)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1069, file: !20, line: 216, baseType: !7, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1069, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1069, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1069, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1069, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1069, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1069, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1069, file: !20, line: 233, baseType: !1055, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1069, file: !20, line: 234, baseType: !1062, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1069, file: !20, line: 235, baseType: !1055, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1069, file: !20, line: 236, baseType: !1062, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1069, file: !20, line: 237, baseType: !1084, size: 4096, offset: 512)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 4096, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 8)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1065, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1065, file: !20, line: 162, baseType: !1089, size: 32, offset: 96)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !182, line: 27, baseType: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !184, line: 96, baseType: !178)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1065, file: !20, line: 163, baseType: !1092, size: 32, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !374, line: 276, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !374, line: 276, size: 32, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1093, file: !374, line: 276, baseType: !378, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1065, file: !20, line: 164, baseType: !1062, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1065, file: !20, line: 165, baseType: !1098, size: 128, offset: 256)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1051, line: 14, size: 128, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1098, file: !1051, line: 15, baseType: !1101, size: 128)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1004, line: 125, size: 128, elements: !1102)
!1102 = !{!1103, !1107}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1101, file: !1004, line: 126, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1004, line: 31, size: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1104, file: !1004, line: 32, baseType: !1008, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1101, file: !1004, line: 127, baseType: !1008, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1065, file: !20, line: 166, baseType: !1109, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1055}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1065, file: !20, line: 167, baseType: !1055, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1047, file: !20, line: 123, baseType: !159, size: 8, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1047, file: !20, line: 124, baseType: !159, size: 8, offset: 456)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1047, file: !20, line: 125, baseType: !159, size: 8, offset: 464)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1047, file: !20, line: 126, baseType: !159, size: 8, offset: 472)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1031, file: !880, line: 572, baseType: !1047, size: 512, offset: 1216)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1031, file: !880, line: 580, baseType: !1119, size: 64, offset: 1728)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !967, file: !880, line: 721, baseType: !7, size: 32, offset: 3584)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !967, file: !880, line: 722, baseType: !178, size: 32, offset: 3616)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !967, file: !880, line: 723, baseType: !1123, size: 64, offset: 3648)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1126, line: 17, baseType: !1127)
!1126 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1126, line: 17, size: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1127, file: !1126, line: 17, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !1131)
!1131 = !{!1132}
!1132 = !DISubrange(count: 1)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !967, file: !880, line: 724, baseType: !1125, size: 64, offset: 3712)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !967, file: !880, line: 749, baseType: !1135, offset: 3776)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !880, line: 290, elements: !436)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !967, file: !880, line: 751, baseType: !228, size: 128, offset: 3776)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !967, file: !880, line: 757, baseType: !1138, size: 64, offset: 3904)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !321, line: 388, size: 7296, elements: !1140)
!1140 = !{!1141, !1917}
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !321, line: 389, baseType: !1142, size: 7296)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1139, file: !321, line: 389, size: 7296, elements: !1143)
!1143 = !{!1144, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1820, !1826, !1829, !1868, !1869, !1891, !1892, !1895, !1896, !1897, !1900, !1901, !1902, !1905, !1916}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1142, file: !321, line: 390, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !321, line: 305, size: 1472, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1162, !1163, !1168, !1169, !1172, !1257, !1258, !1768, !1769, !1770}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1146, file: !321, line: 308, baseType: !163, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1146, file: !321, line: 309, baseType: !163, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1146, file: !321, line: 313, baseType: !1145, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1146, file: !321, line: 313, baseType: !1145, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1146, file: !321, line: 315, baseType: !1003, size: 192, align: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1146, file: !321, line: 323, baseType: !163, size: 64, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1146, file: !321, line: 327, baseType: !1138, size: 64, offset: 512)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1146, file: !321, line: 333, baseType: !1156, size: 64, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !635, line: 284, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !635, line: 284, size: 64, elements: !1158)
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1157, file: !635, line: 284, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1161, line: 19, baseType: !163)
!1161 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1146, file: !321, line: 334, baseType: !163, size: 64, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1146, file: !321, line: 343, baseType: !1164, size: 256, offset: 704)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !321, line: 340, size: 256, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1164, file: !321, line: 341, baseType: !1003, size: 192, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1164, file: !321, line: 342, baseType: !163, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1146, file: !321, line: 351, baseType: !228, size: 128, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1146, file: !321, line: 353, baseType: !1170, size: 64, offset: 1088)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !321, line: 353, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1146, file: !321, line: 356, baseType: !1173, size: 64, offset: 1152)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !25, line: 557, size: 832, elements: !1176)
!1176 = !{!1177, !1181, !1182, !1186, !1190, !1231, !1235, !1239, !1243, !1244, !1245, !1249, !1253}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1175, file: !25, line: 558, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !1145}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1175, file: !25, line: 559, baseType: !1178, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1175, file: !25, line: 560, baseType: !1183, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!178, !1145, !163}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1175, file: !25, line: 561, baseType: !1187, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!178, !1145}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1175, file: !25, line: 562, baseType: !1191, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !321, line: 682, baseType: !7)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !25, line: 508, size: 768, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1210, !1217, !1223, !1224, !1225, !1227, !1229}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1196, file: !25, line: 509, baseType: !1145, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1196, file: !25, line: 510, baseType: !7, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1196, file: !25, line: 511, baseType: !643, size: 32, offset: 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1196, file: !25, line: 512, baseType: !163, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1196, file: !25, line: 513, baseType: !163, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1196, file: !25, line: 514, baseType: !1204, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !635, line: 385, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !635, line: 385, size: 64, elements: !1207)
!1207 = !{!1208}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1206, file: !635, line: 385, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1161, line: 15, baseType: !163)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1196, file: !25, line: 516, baseType: !1211, size: 64, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !635, line: 359, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !635, line: 359, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1213, file: !635, line: 359, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1161, line: 16, baseType: !163)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1196, file: !25, line: 519, baseType: !1218, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1161, line: 21, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1161, line: 21, size: 64, elements: !1220)
!1220 = !{!1221}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1219, file: !1161, line: 21, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1161, line: 14, baseType: !163)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1196, file: !25, line: 521, baseType: !319, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1196, file: !25, line: 522, baseType: !319, size: 64, offset: 512)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1196, file: !25, line: 528, baseType: !1226, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1196, file: !25, line: 532, baseType: !1228, size: 64, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1196, file: !25, line: 536, baseType: !1230, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !635, line: 509, baseType: !319)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1175, file: !25, line: 563, baseType: !1232, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1194, !1195, !24}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1175, file: !25, line: 565, baseType: !1236, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !1195, !163, !163}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1175, file: !25, line: 567, baseType: !1240, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!163, !1145}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1175, file: !25, line: 571, baseType: !1191, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1175, file: !25, line: 574, baseType: !1191, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1175, file: !25, line: 579, baseType: !1246, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!178, !1145, !163, !164, !178, !178}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1175, file: !25, line: 585, baseType: !1250, size: 64, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!459, !1145}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1175, file: !25, line: 615, baseType: !1254, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!319, !1145, !163}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1146, file: !321, line: 359, baseType: !163, size: 64, offset: 1216)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1146, file: !321, line: 361, baseType: !1259, size: 64, offset: 1280)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !1261)
!1261 = !{!1262, !1272, !1273, !1274, !1530, !1531, !1532, !1533, !1534, !1536, !1537, !1538, !1566, !1750, !1759, !1760, !1761, !1762, !1763, !1764, !1767}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1260, file: !31, line: 920, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !31, line: 917, size: 128, elements: !1264)
!1264 = !{!1265, !1271}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1263, file: !31, line: 918, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1267, line: 58, size: 64, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !{!1269}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1266, file: !1267, line: 59, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1263, file: !31, line: 919, baseType: !951, size: 128, align: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1260, file: !31, line: 921, baseType: !493, size: 128, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1260, file: !31, line: 922, baseType: !336, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1260, file: !31, line: 923, baseType: !1275, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !1278)
!1278 = !{!1279, !1280, !1284, !1292, !1296, !1322, !1323, !1327, !1340, !1341, !1348, !1352, !1353, !1357, !1358, !1362, !1367, !1368, !1372, !1376, !1485, !1489, !1493, !1497, !1498, !1504, !1508, !1513, !1517, !1521, !1525, !1529}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1277, file: !31, line: 1823, baseType: !550, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1277, file: !31, line: 1824, baseType: !1281, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!521, !1259, !521, !178}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1277, file: !31, line: 1825, baseType: !1285, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!1288, !1259, !485, !181, !1291}
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !182, line: 60, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !184, line: 73, baseType: !1290)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !184, line: 15, baseType: !102)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1277, file: !31, line: 1826, baseType: !1293, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!1288, !1259, !459, !181, !1291}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1277, file: !31, line: 1827, baseType: !1297, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!1288, !1300, !1320}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1309, !1310, !1311, !1312, !1313}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1301, file: !31, line: 321, baseType: !1259, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1301, file: !31, line: 326, baseType: !521, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1301, file: !31, line: 327, baseType: !1306, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1300, !102, !102}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1301, file: !31, line: 328, baseType: !164, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1301, file: !31, line: 329, baseType: !178, size: 32, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1301, file: !31, line: 330, baseType: !301, size: 16, offset: 288)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1301, file: !31, line: 331, baseType: !301, size: 16, offset: 304)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !31, line: 332, baseType: !1314, size: 64, offset: 320)
!1314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !31, line: 332, size: 64, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1314, file: !31, line: 333, baseType: !7, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1314, file: !31, line: 334, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1277, file: !31, line: 1828, baseType: !1297, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1277, file: !31, line: 1829, baseType: !1324, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!178, !1300, !218}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1277, file: !31, line: 1830, baseType: !1328, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!178, !1259, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !1333)
!1333 = !{!1334, !1339}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1332, file: !31, line: 1777, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!178, !1331, !459, !178, !521, !214, !7}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1332, file: !31, line: 1778, baseType: !521, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1277, file: !31, line: 1831, baseType: !1328, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1277, file: !31, line: 1832, baseType: !1342, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1345, !1259, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !157, line: 52, baseType: !7)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !536, line: 27, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1277, file: !31, line: 1833, baseType: !1349, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!102, !1259, !7, !163}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1277, file: !31, line: 1834, baseType: !1349, size: 64, offset: 704)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1277, file: !31, line: 1835, baseType: !1354, size: 64, offset: 768)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!178, !1259, !1145}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1277, file: !31, line: 1836, baseType: !163, size: 64, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1277, file: !31, line: 1837, baseType: !1359, size: 64, offset: 896)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!178, !336, !1259}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1277, file: !31, line: 1838, baseType: !1363, size: 64, offset: 960)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!178, !1259, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !164)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1277, file: !31, line: 1839, baseType: !1359, size: 64, offset: 1024)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1277, file: !31, line: 1840, baseType: !1369, size: 64, offset: 1088)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!178, !1259, !521, !521, !178}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1277, file: !31, line: 1841, baseType: !1373, size: 64, offset: 1152)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!178, !178, !1259, !178}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1277, file: !31, line: 1842, baseType: !1377, size: 64, offset: 1216)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!178, !1259, !178, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1414, !1415, !1416, !1429, !1461}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1381, file: !31, line: 1063, baseType: !1380, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1381, file: !31, line: 1064, baseType: !228, size: 128, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1381, file: !31, line: 1065, baseType: !559, size: 128, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1381, file: !31, line: 1066, baseType: !228, size: 128, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1381, file: !31, line: 1069, baseType: !228, size: 128, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1381, file: !31, line: 1072, baseType: !1366, size: 64, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1381, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1381, file: !31, line: 1074, baseType: !162, size: 8, offset: 672)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1381, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1381, file: !31, line: 1076, baseType: !178, size: 32, offset: 736)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1381, file: !31, line: 1077, baseType: !932, size: 128, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1381, file: !31, line: 1078, baseType: !1259, size: 64, offset: 896)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1381, file: !31, line: 1079, baseType: !521, size: 64, offset: 960)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1381, file: !31, line: 1080, baseType: !521, size: 64, offset: 1024)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1381, file: !31, line: 1082, baseType: !1398, size: 64, offset: 1088)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !1400)
!1400 = !{!1401, !1409, !1410, !1411, !1412, !1413}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1399, file: !31, line: 1315, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1403, line: 20, baseType: !1404)
!1403 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1403, line: 11, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1404, file: !1403, line: 12, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !434, line: 33, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 31, elements: !436)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1399, file: !31, line: 1316, baseType: !178, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1399, file: !31, line: 1317, baseType: !178, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1399, file: !31, line: 1318, baseType: !1398, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1399, file: !31, line: 1319, baseType: !1259, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1399, file: !31, line: 1320, baseType: !951, size: 128, align: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1381, file: !31, line: 1084, baseType: !163, size: 64, offset: 1152)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1381, file: !31, line: 1085, baseType: !163, size: 64, offset: 1216)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1381, file: !31, line: 1087, baseType: !1417, size: 64, offset: 1280)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !1420)
!1420 = !{!1421, !1425}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1419, file: !31, line: 1012, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1380, !1380}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1419, file: !31, line: 1013, baseType: !1426, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !1380}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1381, file: !31, line: 1088, baseType: !1430, size: 64, offset: 1344)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !1433)
!1433 = !{!1434, !1438, !1442, !1443, !1447, !1451, !1455, !1460}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1432, file: !31, line: 1017, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1366, !1366}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1432, file: !31, line: 1018, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1366}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1432, file: !31, line: 1019, baseType: !1426, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1432, file: !31, line: 1020, baseType: !1444, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!178, !1380, !178}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1432, file: !31, line: 1021, baseType: !1448, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!218, !1380}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1432, file: !31, line: 1022, baseType: !1452, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!178, !1380, !178, !231}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1432, file: !31, line: 1023, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !1380, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1432, file: !31, line: 1024, baseType: !1448, size: 64, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1381, file: !31, line: 1097, baseType: !1462, size: 256, offset: 1408)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !31, line: 1089, size: 256, elements: !1463)
!1463 = !{!1464, !1473, !1479}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1462, file: !31, line: 1090, baseType: !1465, size: 256)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1466, line: 10, size: 256, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469, !1472}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1465, file: !1466, line: 11, baseType: !206, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1465, file: !1466, line: 12, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1466, line: 5, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1465, file: !1466, line: 13, baseType: !228, size: 128, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1462, file: !31, line: 1091, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1466, line: 17, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1474, file: !1466, line: 18, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1466, line: 16, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1462, file: !31, line: 1096, baseType: !1480, size: 192)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1462, file: !31, line: 1092, size: 192, elements: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1480, file: !31, line: 1093, baseType: !228, size: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1480, file: !31, line: 1094, baseType: !178, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1480, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1277, file: !31, line: 1843, baseType: !1486, size: 64, offset: 1280)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!1288, !1259, !319, !178, !181, !1291, !178}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1277, file: !31, line: 1844, baseType: !1490, size: 64, offset: 1344)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!163, !1259, !163, !163, !163, !163}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1277, file: !31, line: 1845, baseType: !1494, size: 64, offset: 1408)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!178, !178}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1277, file: !31, line: 1846, baseType: !1377, size: 64, offset: 1472)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1277, file: !31, line: 1847, baseType: !1499, size: 64, offset: 1536)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1288, !1502, !1259, !1291, !181, !7}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !880, line: 53, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1277, file: !31, line: 1848, baseType: !1505, size: 64, offset: 1600)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1288, !1259, !1291, !1502, !181, !7}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1277, file: !31, line: 1849, baseType: !1509, size: 64, offset: 1664)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!178, !1259, !102, !1512, !1459}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1277, file: !31, line: 1850, baseType: !1514, size: 64, offset: 1728)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!102, !1259, !178, !521, !521}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1277, file: !31, line: 1852, baseType: !1518, size: 64, offset: 1792)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !633, !1259}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1277, file: !31, line: 1856, baseType: !1522, size: 64, offset: 1856)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1288, !1259, !521, !1259, !521, !181, !7}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1277, file: !31, line: 1858, baseType: !1526, size: 64, offset: 1920)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!521, !1259, !521, !1259, !521, !521, !7}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1277, file: !31, line: 1861, baseType: !1369, size: 64, offset: 1984)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1260, file: !31, line: 929, baseType: !422, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1260, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1260, file: !31, line: 931, baseType: !681, size: 64, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1260, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1260, file: !31, line: 933, baseType: !1535, size: 32, offset: 544)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !182, line: 150, baseType: !7)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1260, file: !31, line: 934, baseType: !677, size: 192, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1260, file: !31, line: 935, baseType: !521, size: 64, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1260, file: !31, line: 936, baseType: !1539, size: 192, offset: 832)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !1540)
!1540 = !{!1541, !1542, !1562, !1563, !1564, !1565}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1539, file: !31, line: 886, baseType: !1402)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1539, file: !31, line: 887, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1551, !1552, !1553, !1554}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1544, file: !40, line: 61, baseType: !979, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1544, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1544, file: !40, line: 63, baseType: !422, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1544, file: !40, line: 65, baseType: !1550, size: 256, offset: 64)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 256, elements: !207)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1544, file: !40, line: 66, baseType: !555, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1544, file: !40, line: 68, baseType: !932, size: 128, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1544, file: !40, line: 69, baseType: !951, size: 128, align: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1544, file: !40, line: 70, baseType: !1555, size: 128, offset: 640)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1556, size: 128, elements: !1131)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1556, file: !40, line: 55, baseType: !178, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1556, file: !40, line: 56, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1539, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1539, file: !31, line: 889, baseType: !343, size: 32, offset: 96)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1539, file: !31, line: 889, baseType: !343, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1539, file: !31, line: 890, baseType: !178, size: 32, offset: 160)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1260, file: !31, line: 937, baseType: !1567, size: 64, offset: 1024)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1570, line: 111, size: 1280, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1591, !1592, !1593, !1594, !1595, !1596, !1705, !1706, !1707, !1708, !1734, !1737, !1745}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1569, file: !1570, line: 112, baseType: !693, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1569, file: !1570, line: 120, baseType: !343, size: 32, offset: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1569, file: !1570, line: 121, baseType: !351, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1569, file: !1570, line: 122, baseType: !343, size: 32, offset: 96)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1569, file: !1570, line: 123, baseType: !351, size: 32, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1569, file: !1570, line: 124, baseType: !343, size: 32, offset: 160)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1569, file: !1570, line: 125, baseType: !351, size: 32, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1569, file: !1570, line: 126, baseType: !343, size: 32, offset: 224)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1569, file: !1570, line: 127, baseType: !351, size: 32, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1569, file: !1570, line: 128, baseType: !7, size: 32, offset: 288)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1569, file: !1570, line: 129, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1584, line: 26, baseType: !1585)
!1584 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1584, line: 24, size: 64, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1585, file: !1584, line: 25, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 2)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1569, file: !1570, line: 130, baseType: !1583, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1569, file: !1570, line: 131, baseType: !1583, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1569, file: !1570, line: 132, baseType: !1583, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1569, file: !1570, line: 133, baseType: !1583, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1569, file: !1570, line: 135, baseType: !162, size: 8, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1569, file: !1570, line: 137, baseType: !1597, size: 64, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1599, line: 189, size: 1664, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1602, !1605, !1610, !1611, !1614, !1615, !1620, !1621, !1622, !1623, !1626, !1627, !1628, !1630, !1631, !1669, !1690}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1598, file: !1599, line: 190, baseType: !979, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1598, file: !1599, line: 191, baseType: !1603, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1599, line: 28, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !182, line: 98, baseType: !286)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 192, baseType: !1606, size: 192, offset: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 192, size: 192, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1606, file: !1599, line: 193, baseType: !228, size: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1606, file: !1599, line: 194, baseType: !1003, size: 192, align: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1598, file: !1599, line: 199, baseType: !854, size: 256, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1598, file: !1599, line: 200, baseType: !1612, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1599, line: 200, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1598, file: !1599, line: 201, baseType: !164, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 202, baseType: !1616, size: 64, offset: 640)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 202, size: 64, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1616, file: !1599, line: 203, baseType: !728, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1616, file: !1599, line: 204, baseType: !728, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1598, file: !1599, line: 206, baseType: !728, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1598, file: !1599, line: 207, baseType: !343, size: 32, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1598, file: !1599, line: 208, baseType: !351, size: 32, offset: 800)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1598, file: !1599, line: 209, baseType: !1624, size: 32, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1599, line: 31, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !182, line: 104, baseType: !206)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1598, file: !1599, line: 210, baseType: !303, size: 16, offset: 864)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1598, file: !1599, line: 211, baseType: !303, size: 16, offset: 880)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1598, file: !1599, line: 215, baseType: !1629, size: 16, offset: 896)
!1629 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1598, file: !1599, line: 222, baseType: !163, size: 64, offset: 960)
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 239, baseType: !1632, size: 320, offset: 1024)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 239, size: 320, elements: !1633)
!1633 = !{!1634, !1661}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1632, file: !1599, line: 240, baseType: !1635, size: 320)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1599, line: 108, size: 320, elements: !1636)
!1636 = !{!1637, !1638, !1650, !1653, !1660}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1635, file: !1599, line: 110, baseType: !163, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1599, line: 111, baseType: !1639, size: 64, offset: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1599, line: 111, size: 64, elements: !1640)
!1640 = !{!1641, !1649}
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1599, line: 112, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !1599, line: 112, size: 64, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1642, file: !1599, line: 114, baseType: !301, size: 16)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1642, file: !1599, line: 115, baseType: !1646, size: 48, offset: 16)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 48, elements: !1647)
!1647 = !{!1648}
!1648 = !DISubrange(count: 6)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1639, file: !1599, line: 121, baseType: !163, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1635, file: !1599, line: 123, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1599, line: 96, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1635, file: !1599, line: 124, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1599, line: 102, size: 192, elements: !1656)
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1655, file: !1599, line: 103, baseType: !951, size: 128, align: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1655, file: !1599, line: 104, baseType: !979, size: 32, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1655, file: !1599, line: 105, baseType: !218, size: 8, offset: 160)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1635, file: !1599, line: 125, baseType: !459, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !1599, line: 241, baseType: !1662, size: 320)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1632, file: !1599, line: 241, size: 320, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1667, !1668}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1662, file: !1599, line: 242, baseType: !163, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1662, file: !1599, line: 243, baseType: !163, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1662, file: !1599, line: 244, baseType: !1651, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1662, file: !1599, line: 245, baseType: !1654, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1662, file: !1599, line: 246, baseType: !485, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 254, baseType: !1670, size: 256, offset: 1344)
!1670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 254, size: 256, elements: !1671)
!1671 = !{!1672, !1678}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1670, file: !1599, line: 255, baseType: !1673, size: 256)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1599, line: 128, size: 256, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1673, file: !1599, line: 129, baseType: !164, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1673, file: !1599, line: 130, baseType: !1677, size: 256)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !207)
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !1599, line: 256, baseType: !1679, size: 256)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !1599, line: 256, size: 256, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1679, file: !1599, line: 258, baseType: !228, size: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1679, file: !1599, line: 259, baseType: !1683, size: 128, offset: 128)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1684, line: 22, size: 128, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1689}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1683, file: !1684, line: 23, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1684, line: 23, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1683, file: !1684, line: 24, baseType: !163, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1598, file: !1599, line: 274, baseType: !1691, size: 64, offset: 1600)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1599, line: 170, size: 192, elements: !1693)
!1693 = !{!1694, !1703, !1704}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1692, file: !1599, line: 171, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1599, line: 165, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!178, !1597, !1699, !1701, !1597}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1692, file: !1599, line: 172, baseType: !1597, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1692, file: !1599, line: 173, baseType: !1651, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1569, file: !1570, line: 138, baseType: !1597, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1569, file: !1570, line: 139, baseType: !1597, size: 64, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1569, file: !1570, line: 140, baseType: !1597, size: 64, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1569, file: !1570, line: 145, baseType: !1709, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1711, line: 13, size: 896, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1710, file: !1711, line: 14, baseType: !979, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1710, file: !1711, line: 15, baseType: !693, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1710, file: !1711, line: 16, baseType: !693, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1710, file: !1711, line: 21, baseType: !681, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1710, file: !1711, line: 27, baseType: !163, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1710, file: !1711, line: 28, baseType: !163, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1710, file: !1711, line: 29, baseType: !681, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1710, file: !1711, line: 32, baseType: !559, size: 128, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1710, file: !1711, line: 33, baseType: !343, size: 32, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1710, file: !1711, line: 37, baseType: !681, size: 64, offset: 576)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1710, file: !1711, line: 44, baseType: !1724, size: 256, offset: 640)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1725, line: 15, size: 256, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1724, file: !1725, line: 16, baseType: !860)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1724, file: !1725, line: 18, baseType: !178, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1724, file: !1725, line: 19, baseType: !178, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1724, file: !1725, line: 20, baseType: !178, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1724, file: !1725, line: 21, baseType: !178, size: 32, offset: 96)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1724, file: !1725, line: 22, baseType: !163, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1724, file: !1725, line: 23, baseType: !163, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1569, file: !1570, line: 146, baseType: !1735, size: 64, offset: 1024)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !344, line: 18, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1569, file: !1570, line: 147, baseType: !1738, size: 64, offset: 1088)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1570, line: 25, size: 64, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1739, file: !1570, line: 26, baseType: !693, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1739, file: !1570, line: 27, baseType: !178, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1739, file: !1570, line: 28, baseType: !1744, offset: 64)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, elements: !311)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !1570, line: 149, baseType: !1746, size: 128, offset: 1152)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !1570, line: 149, size: 128, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1746, file: !1570, line: 150, baseType: !178, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1746, file: !1570, line: 151, baseType: !951, size: 128, align: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1260, file: !31, line: 938, baseType: !1751, size: 256, offset: 1088)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1751, file: !31, line: 897, baseType: !163, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1751, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1751, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1751, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1751, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1751, file: !31, line: 904, baseType: !521, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1260, file: !31, line: 940, baseType: !214, size: 64, offset: 1344)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1260, file: !31, line: 945, baseType: !164, size: 64, offset: 1408)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1260, file: !31, line: 949, baseType: !228, size: 128, offset: 1472)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1260, file: !31, line: 950, baseType: !228, size: 128, offset: 1600)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1260, file: !31, line: 952, baseType: !332, size: 64, offset: 1728)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1260, file: !31, line: 953, baseType: !1765, size: 32, offset: 1792)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1766, line: 8, baseType: !206)
!1766 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1260, file: !31, line: 954, baseType: !1765, size: 32, offset: 1824)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1146, file: !321, line: 362, baseType: !164, size: 64, offset: 1344)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1146, file: !321, line: 365, baseType: !681, size: 64, offset: 1408)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1146, file: !321, line: 373, baseType: !1771, offset: 1472)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !321, line: 296, elements: !436)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1142, file: !321, line: 391, baseType: !1104, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1142, file: !321, line: 392, baseType: !214, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1142, file: !321, line: 394, baseType: !1490, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1142, file: !321, line: 398, baseType: !163, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1142, file: !321, line: 399, baseType: !163, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1142, file: !321, line: 405, baseType: !163, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1142, file: !321, line: 406, baseType: !163, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1142, file: !321, line: 407, baseType: !1780, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !635, line: 286, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !635, line: 286, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1782, file: !635, line: 286, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1161, line: 18, baseType: !163)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1142, file: !321, line: 416, baseType: !693, size: 32, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1142, file: !321, line: 428, baseType: !693, size: 32, offset: 608)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1142, file: !321, line: 437, baseType: !693, size: 32, offset: 640)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1142, file: !321, line: 447, baseType: !693, size: 32, offset: 672)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1142, file: !321, line: 450, baseType: !681, size: 64, offset: 704)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1142, file: !321, line: 452, baseType: !178, size: 32, offset: 768)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1142, file: !321, line: 454, baseType: !422, offset: 800)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1142, file: !321, line: 457, baseType: !854, size: 256, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1142, file: !321, line: 459, baseType: !228, size: 128, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1142, file: !321, line: 466, baseType: !163, size: 64, offset: 1216)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1142, file: !321, line: 467, baseType: !163, size: 64, offset: 1280)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1142, file: !321, line: 469, baseType: !163, size: 64, offset: 1344)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1142, file: !321, line: 470, baseType: !163, size: 64, offset: 1408)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1142, file: !321, line: 471, baseType: !683, size: 64, offset: 1472)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1142, file: !321, line: 472, baseType: !163, size: 64, offset: 1536)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1142, file: !321, line: 473, baseType: !163, size: 64, offset: 1600)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1142, file: !321, line: 474, baseType: !163, size: 64, offset: 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1142, file: !321, line: 475, baseType: !163, size: 64, offset: 1728)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1142, file: !321, line: 477, baseType: !422, offset: 1792)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1142, file: !321, line: 478, baseType: !163, size: 64, offset: 1792)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1142, file: !321, line: 478, baseType: !163, size: 64, offset: 1856)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1142, file: !321, line: 478, baseType: !163, size: 64, offset: 1920)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1142, file: !321, line: 478, baseType: !163, size: 64, offset: 1984)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1142, file: !321, line: 479, baseType: !163, size: 64, offset: 2048)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1142, file: !321, line: 479, baseType: !163, size: 64, offset: 2112)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1142, file: !321, line: 479, baseType: !163, size: 64, offset: 2176)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1142, file: !321, line: 480, baseType: !163, size: 64, offset: 2240)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1142, file: !321, line: 480, baseType: !163, size: 64, offset: 2304)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1142, file: !321, line: 480, baseType: !163, size: 64, offset: 2368)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1142, file: !321, line: 480, baseType: !163, size: 64, offset: 2432)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1142, file: !321, line: 482, baseType: !1817, size: 2816, offset: 2496)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 2816, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 44)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1142, file: !321, line: 488, baseType: !1821, size: 256, offset: 5312)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1822, line: 60, size: 256, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1821, file: !1822, line: 61, baseType: !1825, size: 256)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 256, elements: !207)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1142, file: !321, line: 490, baseType: !1827, size: 64, offset: 5568)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !321, line: 490, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1142, file: !321, line: 493, baseType: !1830, size: 896, offset: 5632)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1831, line: 53, baseType: !1832)
!1831 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1831, line: 13, size: 896, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1837, !1840, !1841, !1842, !1843, !1863, !1864, !1865}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1832, file: !1831, line: 18, baseType: !214, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1832, file: !1831, line: 28, baseType: !683, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1832, file: !1831, line: 31, baseType: !854, size: 256, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1832, file: !1831, line: 32, baseType: !1838, size: 64, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1831, line: 32, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1832, file: !1831, line: 37, baseType: !303, size: 16, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1832, file: !1831, line: 40, baseType: !677, size: 192, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1832, file: !1831, line: 41, baseType: !164, size: 64, offset: 704)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1832, file: !1831, line: 42, baseType: !1844, size: 64, offset: 768)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1847, line: 13, size: 896, elements: !1848)
!1847 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1846, file: !1847, line: 14, baseType: !164, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1846, file: !1847, line: 15, baseType: !163, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1846, file: !1847, line: 17, baseType: !163, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1846, file: !1847, line: 17, baseType: !163, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1846, file: !1847, line: 19, baseType: !102, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1846, file: !1847, line: 21, baseType: !102, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1846, file: !1847, line: 22, baseType: !102, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1846, file: !1847, line: 23, baseType: !102, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1846, file: !1847, line: 24, baseType: !102, size: 64, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1846, file: !1847, line: 25, baseType: !102, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1846, file: !1847, line: 26, baseType: !102, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1846, file: !1847, line: 27, baseType: !102, size: 64, offset: 704)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1846, file: !1847, line: 28, baseType: !102, size: 64, offset: 768)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1846, file: !1847, line: 29, baseType: !102, size: 64, offset: 832)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1832, file: !1831, line: 44, baseType: !693, size: 32, offset: 832)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1832, file: !1831, line: 50, baseType: !301, size: 16, offset: 864)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1832, file: !1831, line: 51, baseType: !1866, size: 16, offset: 880)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !160, line: 18, baseType: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !155, line: 23, baseType: !1629)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1142, file: !321, line: 495, baseType: !163, size: 64, offset: 6528)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1142, file: !321, line: 497, baseType: !1870, size: 64, offset: 6592)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !321, line: 381, size: 384, elements: !1872)
!1872 = !{!1873, !1874, !1880}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1871, file: !321, line: 382, baseType: !693, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1871, file: !321, line: 383, baseType: !1875, size: 128, offset: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !321, line: 376, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1875, file: !321, line: 377, baseType: !966, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1875, file: !321, line: 378, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1871, file: !321, line: 384, baseType: !1881, size: 192, offset: 192)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1882, line: 26, size: 192, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1881, file: !1882, line: 27, baseType: !7, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1881, file: !1882, line: 28, baseType: !1886, size: 128, offset: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1887, line: 43, size: 128, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1886, file: !1887, line: 44, baseType: !860)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1886, file: !1887, line: 45, baseType: !228, size: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1142, file: !321, line: 500, baseType: !422, offset: 6656)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1142, file: !321, line: 501, baseType: !1893, size: 64, offset: 6656)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !321, line: 387, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1142, file: !321, line: 516, baseType: !1735, size: 64, offset: 6720)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1142, file: !321, line: 519, baseType: !1259, size: 64, offset: 6784)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1142, file: !321, line: 521, baseType: !1898, size: 64, offset: 6848)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !321, line: 521, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1142, file: !321, line: 545, baseType: !693, size: 32, offset: 6912)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1142, file: !321, line: 548, baseType: !218, size: 8, offset: 6944)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1142, file: !321, line: 550, baseType: !1903, offset: 6952)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1904, line: 142, elements: !436)
!1904 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1142, file: !321, line: 554, baseType: !1906, size: 256, offset: 6976)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !101, line: 102, size: 256, elements: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1906, file: !101, line: 103, baseType: !681, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1906, file: !101, line: 104, baseType: !228, size: 128, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1906, file: !101, line: 105, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !101, line: 21, baseType: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1915}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1142, file: !321, line: 557, baseType: !206, size: 32, offset: 7232)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1139, file: !321, line: 565, baseType: !1918, offset: 7296)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !1919)
!1919 = !{!1920}
!1920 = !DISubrange(count: -1)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !967, file: !880, line: 758, baseType: !1138, size: 64, offset: 3968)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !967, file: !880, line: 761, baseType: !1923, size: 320, offset: 4032)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1822, line: 34, size: 320, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1923, file: !1822, line: 35, baseType: !214, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1923, file: !1822, line: 36, baseType: !1927, size: 256, offset: 64)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1145, size: 256, elements: !207)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !967, file: !880, line: 766, baseType: !178, size: 32, offset: 4352)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !967, file: !880, line: 767, baseType: !178, size: 32, offset: 4384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !967, file: !880, line: 768, baseType: !178, size: 32, offset: 4416)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !967, file: !880, line: 770, baseType: !178, size: 32, offset: 4448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !967, file: !880, line: 772, baseType: !163, size: 64, offset: 4480)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !967, file: !880, line: 775, baseType: !7, size: 32, offset: 4544)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !967, file: !880, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !967, file: !880, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !967, file: !880, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !967, file: !880, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !967, file: !880, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !967, file: !880, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !967, file: !880, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !967, file: !880, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !967, file: !880, line: 831, baseType: !163, size: 64, offset: 4672)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !967, file: !880, line: 833, baseType: !1944, size: 384, offset: 4736)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !48, line: 25, size: 384, elements: !1945)
!1945 = !{!1946, !1951}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1944, file: !48, line: 26, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!102, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !48, line: 27, baseType: !1952, size: 320, offset: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1944, file: !48, line: 27, size: 320, elements: !1953)
!1953 = !{!1954, !1964, !1989}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1952, file: !48, line: 36, baseType: !1955, size: 320)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1952, file: !48, line: 29, size: 320, elements: !1956)
!1956 = !{!1957, !1959, !1960, !1961, !1962, !1963}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1955, file: !48, line: 30, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1955, file: !48, line: 31, baseType: !206, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1955, file: !48, line: 32, baseType: !206, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1955, file: !48, line: 33, baseType: !206, size: 32, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1955, file: !48, line: 34, baseType: !214, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1955, file: !48, line: 35, baseType: !1958, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1952, file: !48, line: 46, baseType: !1965, size: 192)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1952, file: !48, line: 38, size: 192, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1988}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1965, file: !48, line: 39, baseType: !1089, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1965, file: !48, line: 40, baseType: !47, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !48, line: 41, baseType: !1970, size: 64, offset: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !48, line: 41, size: 64, elements: !1971)
!1971 = !{!1972, !1980}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1970, file: !48, line: 42, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1975, line: 7, size: 128, elements: !1976)
!1975 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1976 = !{!1977, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1974, file: !1975, line: 8, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !184, line: 93, baseType: !523)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1974, file: !1975, line: 9, baseType: !523, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1970, file: !48, line: 43, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1983, line: 7, size: 64, elements: !1984)
!1983 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1984 = !{!1985, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1982, file: !1983, line: 8, baseType: !1986, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1983, line: 5, baseType: !286)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1982, file: !1983, line: 9, baseType: !286, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1965, file: !48, line: 45, baseType: !214, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1952, file: !48, line: 54, baseType: !1990, size: 256)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1952, file: !48, line: 48, size: 256, elements: !1991)
!1991 = !{!1992, !1995, !1996, !1997, !1998}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1990, file: !48, line: 49, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !48, line: 14, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1990, file: !48, line: 50, baseType: !178, size: 32, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1990, file: !48, line: 51, baseType: !178, size: 32, offset: 96)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1990, file: !48, line: 52, baseType: !163, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1990, file: !48, line: 53, baseType: !163, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !967, file: !880, line: 835, baseType: !2000, size: 32, offset: 5120)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !182, line: 22, baseType: !2001)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !184, line: 28, baseType: !178)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !967, file: !880, line: 836, baseType: !2000, size: 32, offset: 5152)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !967, file: !880, line: 840, baseType: !163, size: 64, offset: 5184)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !967, file: !880, line: 849, baseType: !966, size: 64, offset: 5248)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !967, file: !880, line: 852, baseType: !966, size: 64, offset: 5312)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !967, file: !880, line: 857, baseType: !228, size: 128, offset: 5376)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !967, file: !880, line: 858, baseType: !228, size: 128, offset: 5504)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !967, file: !880, line: 859, baseType: !966, size: 64, offset: 5632)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !967, file: !880, line: 867, baseType: !228, size: 128, offset: 5696)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !967, file: !880, line: 868, baseType: !228, size: 128, offset: 5824)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !967, file: !880, line: 871, baseType: !1543, size: 64, offset: 5952)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !967, file: !880, line: 872, baseType: !2013, size: 512, offset: 6016)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 512, elements: !207)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !967, file: !880, line: 873, baseType: !228, size: 128, offset: 6528)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !967, file: !880, line: 874, baseType: !228, size: 128, offset: 6656)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !967, file: !880, line: 876, baseType: !2017, size: 64, offset: 6784)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !967, file: !880, line: 879, baseType: !627, size: 64, offset: 6848)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !967, file: !880, line: 882, baseType: !627, size: 64, offset: 6912)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !967, file: !880, line: 884, baseType: !214, size: 64, offset: 6976)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !967, file: !880, line: 885, baseType: !214, size: 64, offset: 7040)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !967, file: !880, line: 890, baseType: !214, size: 64, offset: 7104)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !967, file: !880, line: 891, baseType: !2024, size: 128, offset: 7168)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !880, line: 242, size: 128, elements: !2025)
!2025 = !{!2026, !2027, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2024, file: !880, line: 244, baseType: !214, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2024, file: !880, line: 245, baseType: !214, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2024, file: !880, line: 246, baseType: !860, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !967, file: !880, line: 900, baseType: !163, size: 64, offset: 7296)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !967, file: !880, line: 901, baseType: !163, size: 64, offset: 7360)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !967, file: !880, line: 904, baseType: !214, size: 64, offset: 7424)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !967, file: !880, line: 907, baseType: !214, size: 64, offset: 7488)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !967, file: !880, line: 910, baseType: !163, size: 64, offset: 7552)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !967, file: !880, line: 911, baseType: !163, size: 64, offset: 7616)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !967, file: !880, line: 914, baseType: !2036, size: 640, offset: 7680)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2037, line: 123, size: 640, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2045, !2046}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2036, file: !2037, line: 124, baseType: !2040, size: 576)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2041, size: 576, elements: !571)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2037, line: 108, size: 192, elements: !2042)
!2042 = !{!2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2041, file: !2037, line: 109, baseType: !214, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2041, file: !2037, line: 110, baseType: !1098, size: 128, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2036, file: !2037, line: 125, baseType: !7, size: 32, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2036, file: !2037, line: 126, baseType: !7, size: 32, offset: 608)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !967, file: !880, line: 917, baseType: !2048, size: 192, offset: 8320)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2037, line: 134, size: 192, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2048, file: !2037, line: 135, baseType: !951, size: 128, align: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2048, file: !2037, line: 136, baseType: !7, size: 32, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !967, file: !880, line: 923, baseType: !1567, size: 64, offset: 8512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !967, file: !880, line: 926, baseType: !1567, size: 64, offset: 8576)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !967, file: !880, line: 929, baseType: !1567, size: 64, offset: 8640)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !967, file: !880, line: 933, baseType: !1597, size: 64, offset: 8704)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !967, file: !880, line: 943, baseType: !2057, size: 128, offset: 8768)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 128, elements: !2058)
!2058 = !{!2059}
!2059 = !DISubrange(count: 16)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !967, file: !880, line: 945, baseType: !2061, size: 64, offset: 8896)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !880, line: 49, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !967, file: !880, line: 956, baseType: !2064, size: 64, offset: 8960)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !880, line: 45, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !967, file: !880, line: 959, baseType: !2067, size: 64, offset: 9024)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !880, line: 959, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !967, file: !880, line: 962, baseType: !2070, size: 64, offset: 9088)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !880, line: 66, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !967, file: !880, line: 966, baseType: !2073, size: 64, offset: 9152)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !880, line: 50, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !967, file: !880, line: 969, baseType: !2076, size: 64, offset: 9216)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2078, line: 82, size: 7296, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085, !2086, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2115, !2124, !2125, !2127, !2128, !2129, !2132, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2162, !2163, !2170, !2171, !2172, !2173, !2174, !2175}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2077, file: !2078, line: 83, baseType: !979, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2077, file: !2078, line: 84, baseType: !693, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2077, file: !2078, line: 85, baseType: !178, size: 32, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2077, file: !2078, line: 86, baseType: !228, size: 128, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2077, file: !2078, line: 88, baseType: !932, size: 128, offset: 256)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2077, file: !2078, line: 91, baseType: !966, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2077, file: !2078, line: 94, baseType: !2087, size: 192, offset: 448)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2088, line: 30, size: 192, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2087, file: !2088, line: 31, baseType: !228, size: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2087, file: !2088, line: 32, baseType: !2092, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2093, line: 25, baseType: !2094)
!2093 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2093, line: 23, size: 64, elements: !2095)
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2094, file: !2093, line: 24, baseType: !1130, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2077, file: !2078, line: 97, baseType: !555, size: 64, offset: 640)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2077, file: !2078, line: 100, baseType: !178, size: 32, offset: 704)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2077, file: !2078, line: 106, baseType: !178, size: 32, offset: 736)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2077, file: !2078, line: 107, baseType: !966, size: 64, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2077, file: !2078, line: 110, baseType: !178, size: 32, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2077, file: !2078, line: 111, baseType: !7, size: 32, offset: 864)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2077, file: !2078, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2077, file: !2078, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2077, file: !2078, line: 128, baseType: !178, size: 32, offset: 928)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2077, file: !2078, line: 129, baseType: !228, size: 128, offset: 960)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2077, file: !2078, line: 132, baseType: !1047, size: 512, offset: 1088)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2077, file: !2078, line: 133, baseType: !1055, size: 64, offset: 1600)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2077, file: !2078, line: 140, baseType: !2110, size: 256, offset: 1664)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2111, size: 256, elements: !1589)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2078, line: 38, size: 128, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2111, file: !2078, line: 39, baseType: !214, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2111, file: !2078, line: 40, baseType: !214, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2077, file: !2078, line: 146, baseType: !2116, size: 192, offset: 1920)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2078, line: 66, size: 192, elements: !2117)
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2116, file: !2078, line: 67, baseType: !2119, size: 192)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2078, line: 47, size: 192, elements: !2120)
!2120 = !{!2121, !2122, !2123}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2119, file: !2078, line: 48, baseType: !683, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2119, file: !2078, line: 49, baseType: !683, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2119, file: !2078, line: 50, baseType: !683, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2077, file: !2078, line: 150, baseType: !2036, size: 640, offset: 2112)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2077, file: !2078, line: 153, baseType: !2126, size: 256, offset: 2752)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1543, size: 256, elements: !207)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2077, file: !2078, line: 159, baseType: !1543, size: 64, offset: 3008)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2077, file: !2078, line: 162, baseType: !178, size: 32, offset: 3072)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2077, file: !2078, line: 164, baseType: !2130, size: 64, offset: 3136)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2078, line: 164, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2077, file: !2078, line: 175, baseType: !2133, size: 32, offset: 3200)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !374, line: 805, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 798, size: 32, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2134, file: !374, line: 803, baseType: !373, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2134, file: !374, line: 804, baseType: !422, offset: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2077, file: !2078, line: 176, baseType: !214, size: 64, offset: 3264)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2077, file: !2078, line: 176, baseType: !214, size: 64, offset: 3328)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2077, file: !2078, line: 176, baseType: !214, size: 64, offset: 3392)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2077, file: !2078, line: 176, baseType: !214, size: 64, offset: 3456)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2077, file: !2078, line: 177, baseType: !214, size: 64, offset: 3520)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2077, file: !2078, line: 178, baseType: !214, size: 64, offset: 3584)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2077, file: !2078, line: 179, baseType: !2024, size: 128, offset: 3648)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2077, file: !2078, line: 180, baseType: !163, size: 64, offset: 3776)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2077, file: !2078, line: 180, baseType: !163, size: 64, offset: 3840)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2077, file: !2078, line: 180, baseType: !163, size: 64, offset: 3904)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2077, file: !2078, line: 180, baseType: !163, size: 64, offset: 3968)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2077, file: !2078, line: 181, baseType: !163, size: 64, offset: 4032)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2077, file: !2078, line: 181, baseType: !163, size: 64, offset: 4096)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2077, file: !2078, line: 181, baseType: !163, size: 64, offset: 4160)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2077, file: !2078, line: 181, baseType: !163, size: 64, offset: 4224)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2077, file: !2078, line: 182, baseType: !163, size: 64, offset: 4288)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2077, file: !2078, line: 182, baseType: !163, size: 64, offset: 4352)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2077, file: !2078, line: 182, baseType: !163, size: 64, offset: 4416)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2077, file: !2078, line: 182, baseType: !163, size: 64, offset: 4480)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2077, file: !2078, line: 183, baseType: !163, size: 64, offset: 4544)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2077, file: !2078, line: 183, baseType: !163, size: 64, offset: 4608)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2077, file: !2078, line: 184, baseType: !2160, offset: 4672)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2161, line: 12, elements: !436)
!2161 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2077, file: !2078, line: 192, baseType: !216, size: 64, offset: 4672)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2077, file: !2078, line: 203, baseType: !2164, size: 2048, offset: 4736)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2165, size: 2048, elements: !2058)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2166, line: 43, size: 128, elements: !2167)
!2166 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2165, file: !2166, line: 44, baseType: !185, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2165, file: !2166, line: 45, baseType: !185, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2077, file: !2078, line: 220, baseType: !218, size: 8, offset: 6784)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2077, file: !2078, line: 221, baseType: !1629, size: 16, offset: 6800)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2077, file: !2078, line: 222, baseType: !1629, size: 16, offset: 6816)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2077, file: !2078, line: 224, baseType: !1138, size: 64, offset: 6848)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2077, file: !2078, line: 227, baseType: !677, size: 192, offset: 6912)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2077, file: !2078, line: 233, baseType: !677, size: 192, offset: 7104)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !967, file: !880, line: 970, baseType: !2177, size: 64, offset: 9280)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2078, line: 20, size: 16576, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2178, file: !2078, line: 21, baseType: !422)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2178, file: !2078, line: 22, baseType: !979, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2178, file: !2078, line: 23, baseType: !932, size: 128, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2178, file: !2078, line: 24, baseType: !2184, size: 16384, offset: 192)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2185, size: 16384, elements: !2205)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2088, line: 49, size: 256, elements: !2186)
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2185, file: !2088, line: 50, baseType: !2188, size: 256)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2088, line: 35, size: 256, elements: !2189)
!2189 = !{!2190, !2197, !2198, !2204}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2188, file: !2088, line: 37, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2192, line: 19, baseType: !2193)
!2192 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2192, line: 18, baseType: !2195)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !178}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2188, file: !2088, line: 38, baseType: !163, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2188, file: !2088, line: 44, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2192, line: 22, baseType: !2200)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2192, line: 21, baseType: !2202)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2188, file: !2088, line: 46, baseType: !2092, size: 64, offset: 192)
!2205 = !{!2206}
!2206 = !DISubrange(count: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !967, file: !880, line: 971, baseType: !2092, size: 64, offset: 9344)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !967, file: !880, line: 972, baseType: !2092, size: 64, offset: 9408)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !967, file: !880, line: 974, baseType: !2092, size: 64, offset: 9472)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !967, file: !880, line: 975, baseType: !2087, size: 192, offset: 9536)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !967, file: !880, line: 976, baseType: !163, size: 64, offset: 9728)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !967, file: !880, line: 977, baseType: !181, size: 64, offset: 9792)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !967, file: !880, line: 978, baseType: !7, size: 32, offset: 9856)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !967, file: !880, line: 980, baseType: !954, size: 64, offset: 9920)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !967, file: !880, line: 989, baseType: !2216, size: 128, offset: 9984)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2217, line: 35, size: 128, elements: !2218)
!2217 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2218 = !{!2219, !2220, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2216, file: !2217, line: 36, baseType: !178, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2216, file: !2217, line: 37, baseType: !693, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2216, file: !2217, line: 38, baseType: !2222, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2217, line: 23, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !967, file: !880, line: 992, baseType: !214, size: 64, offset: 10112)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !967, file: !880, line: 993, baseType: !214, size: 64, offset: 10176)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !967, file: !880, line: 996, baseType: !422, offset: 10240)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !967, file: !880, line: 999, baseType: !860, offset: 10240)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !967, file: !880, line: 1001, baseType: !2229, size: 64, offset: 10240)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !880, line: 636, size: 64, elements: !2230)
!2230 = !{!2231}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2229, file: !880, line: 637, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !967, file: !880, line: 1005, baseType: !1101, size: 128, offset: 10304)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !967, file: !880, line: 1007, baseType: !966, size: 64, offset: 10432)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !967, file: !880, line: 1009, baseType: !2236, size: 64, offset: 10496)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !880, line: 1009, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !967, file: !880, line: 1043, baseType: !164, size: 64, offset: 10560)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !967, file: !880, line: 1046, baseType: !2240, size: 64, offset: 10624)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !880, line: 41, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !967, file: !880, line: 1050, baseType: !2243, size: 64, offset: 10688)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !880, line: 42, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !967, file: !880, line: 1054, baseType: !2246, size: 64, offset: 10752)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !880, line: 55, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !967, file: !880, line: 1056, baseType: !878, size: 64, offset: 10816)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !967, file: !880, line: 1058, baseType: !2250, size: 64, offset: 10880)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2252, line: 99, size: 704, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2266, !2287, !2288}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2251, file: !2252, line: 100, baseType: !681, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2251, file: !2252, line: 101, baseType: !693, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2251, file: !2252, line: 102, baseType: !693, size: 32, offset: 96)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2251, file: !2252, line: 105, baseType: !422, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2251, file: !2252, line: 107, baseType: !303, size: 16, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2251, file: !2252, line: 109, baseType: !2260, size: 128, offset: 192)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2261, line: 292, size: 128, elements: !2262)
!2261 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2262 = !{!2263, !2264, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2260, file: !2261, line: 293, baseType: !422)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2260, file: !2261, line: 295, baseType: !643, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2260, file: !2261, line: 296, baseType: !164, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2251, file: !2252, line: 110, baseType: !2267, size: 64, offset: 320)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2252, line: 73, size: 448, elements: !2269)
!2269 = !{!2270, !2273, !2274, !2281, !2286}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2268, file: !2252, line: 74, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2252, line: 74, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2268, file: !2252, line: 75, baseType: !2250, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !2252, line: 83, baseType: !2275, size: 128, offset: 128)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !2252, line: 83, size: 128, elements: !2276)
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2275, file: !2252, line: 84, baseType: !228, size: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2275, file: !2252, line: 85, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !321, line: 117, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !2252, line: 87, baseType: !2282, size: 128, offset: 256)
!2282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !2252, line: 87, size: 128, elements: !2283)
!2283 = !{!2284, !2285}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2282, file: !2252, line: 88, baseType: !559, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2282, file: !2252, line: 89, baseType: !951, size: 128, align: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2252, line: 92, baseType: !7, size: 32, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2251, file: !2252, line: 111, baseType: !555, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2251, file: !2252, line: 113, baseType: !1906, size: 256, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !967, file: !880, line: 1061, baseType: !2290, size: 64, offset: 10944)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !880, line: 43, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !967, file: !880, line: 1064, baseType: !163, size: 64, offset: 11008)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !967, file: !880, line: 1065, baseType: !2294, size: 64, offset: 11072)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2088, line: 14, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2088, line: 12, size: 384, elements: !2297)
!2297 = !{!2298}
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !2088, line: 13, baseType: !2299, size: 384)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2296, file: !2088, line: 13, size: 384, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2304}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2299, file: !2088, line: 13, baseType: !178, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2299, file: !2088, line: 13, baseType: !178, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2299, file: !2088, line: 13, baseType: !178, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2299, file: !2088, line: 13, baseType: !2305, size: 256, offset: 128)
!2305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2306, line: 32, size: 256, elements: !2307)
!2306 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2307 = !{!2308, !2313, !2326, !2332, !2341, !2361, !2366}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2305, file: !2306, line: 37, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2306, line: 34, size: 64, elements: !2310)
!2310 = !{!2311, !2312}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2309, file: !2306, line: 35, baseType: !2001, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2309, file: !2306, line: 36, baseType: !349, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2305, file: !2306, line: 45, baseType: !2314, size: 192)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2306, line: 40, size: 192, elements: !2315)
!2315 = !{!2316, !2318, !2319, !2325}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2314, file: !2306, line: 41, baseType: !2317, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !184, line: 95, baseType: !178)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2314, file: !2306, line: 42, baseType: !178, size: 32, offset: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2314, file: !2306, line: 43, baseType: !2320, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2306, line: 11, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2306, line: 8, size: 64, elements: !2322)
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2321, file: !2306, line: 9, baseType: !178, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2321, file: !2306, line: 10, baseType: !164, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2314, file: !2306, line: 44, baseType: !178, size: 32, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2305, file: !2306, line: 52, baseType: !2327, size: 128)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2306, line: 48, size: 128, elements: !2328)
!2328 = !{!2329, !2330, !2331}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2327, file: !2306, line: 49, baseType: !2001, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2327, file: !2306, line: 50, baseType: !349, size: 32, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2327, file: !2306, line: 51, baseType: !2320, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2305, file: !2306, line: 61, baseType: !2333, size: 256)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2306, line: 55, size: 256, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338, !2340}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2333, file: !2306, line: 56, baseType: !2001, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2333, file: !2306, line: 57, baseType: !349, size: 32, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2333, file: !2306, line: 58, baseType: !178, size: 32, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2333, file: !2306, line: 59, baseType: !2339, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !184, line: 94, baseType: !1290)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2333, file: !2306, line: 60, baseType: !2339, size: 64, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2305, file: !2306, line: 95, baseType: !2342, size: 256)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2306, line: 64, size: 256, elements: !2343)
!2343 = !{!2344, !2345}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2342, file: !2306, line: 65, baseType: !164, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, scope: !2342, file: !2306, line: 77, baseType: !2346, size: 192, offset: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2342, file: !2306, line: 77, size: 192, elements: !2347)
!2347 = !{!2348, !2349, !2356}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2346, file: !2306, line: 82, baseType: !1629, size: 16)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2346, file: !2306, line: 88, baseType: !2350, size: 192)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2346, file: !2306, line: 84, size: 192, elements: !2351)
!2351 = !{!2352, !2354, !2355}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2350, file: !2306, line: 85, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 64, elements: !1085)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2350, file: !2306, line: 86, baseType: !164, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2350, file: !2306, line: 87, baseType: !164, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2346, file: !2306, line: 93, baseType: !2357, size: 96)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2346, file: !2306, line: 90, size: 96, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2357, file: !2306, line: 91, baseType: !2353, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2357, file: !2306, line: 92, baseType: !154, size: 32, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2305, file: !2306, line: 101, baseType: !2362, size: 128)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2306, line: 98, size: 128, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2362, file: !2306, line: 99, baseType: !102, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2362, file: !2306, line: 100, baseType: !178, size: 32, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2305, file: !2306, line: 108, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2306, line: 104, size: 128, elements: !2368)
!2368 = !{!2369, !2370, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2367, file: !2306, line: 105, baseType: !164, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2367, file: !2306, line: 106, baseType: !178, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2367, file: !2306, line: 107, baseType: !7, size: 32, offset: 96)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !967, file: !880, line: 1067, baseType: !2160, offset: 11136)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !967, file: !880, line: 1099, baseType: !2374, size: 64, offset: 11136)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !880, line: 56, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !967, file: !880, line: 1103, baseType: !228, size: 128, offset: 11200)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !967, file: !880, line: 1104, baseType: !2378, size: 64, offset: 11328)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !880, line: 46, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !967, file: !880, line: 1105, baseType: !677, size: 192, offset: 11392)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !967, file: !880, line: 1106, baseType: !7, size: 32, offset: 11584)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !967, file: !880, line: 1109, baseType: !2383, size: 128, offset: 11648)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2384, size: 128, elements: !1589)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !880, line: 51, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !967, file: !880, line: 1110, baseType: !677, size: 192, offset: 11776)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !967, file: !880, line: 1111, baseType: !228, size: 128, offset: 11968)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !967, file: !880, line: 1173, baseType: !2389, size: 64, offset: 12096)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2391, line: 62, size: 256, align: 256, elements: !2392)
!2391 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2392 = !{!2393, !2394, !2395, !2400}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2390, file: !2391, line: 75, baseType: !154, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2390, file: !2391, line: 90, baseType: !154, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2390, file: !2391, line: 124, baseType: !2396, size: 64, offset: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !2391, line: 109, size: 64, elements: !2397)
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2396, file: !2391, line: 110, baseType: !215, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2396, file: !2391, line: 112, baseType: !215, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2390, file: !2391, line: 144, baseType: !154, size: 32, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !967, file: !880, line: 1174, baseType: !206, size: 32, offset: 12160)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !967, file: !880, line: 1179, baseType: !163, size: 64, offset: 12224)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !967, file: !880, line: 1182, baseType: !2404, size: 128, offset: 12288)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1822, line: 76, size: 128, elements: !2405)
!2405 = !{!2406, !2411, !2412}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2404, file: !1822, line: 85, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2408, line: 7, size: 64, elements: !2409)
!2408 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2409 = !{!2410}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2407, file: !2408, line: 12, baseType: !1127, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2404, file: !1822, line: 88, baseType: !218, size: 8, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2404, file: !1822, line: 95, baseType: !218, size: 8, offset: 72)
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !880, line: 1184, baseType: !2414, size: 128, offset: 12416)
!2414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !880, line: 1184, size: 128, elements: !2415)
!2415 = !{!2416, !2417}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2414, file: !880, line: 1185, baseType: !979, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2414, file: !880, line: 1186, baseType: !951, size: 128, align: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !967, file: !880, line: 1190, baseType: !1502, size: 64, offset: 12544)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !967, file: !880, line: 1192, baseType: !2420, size: 128, offset: 12608)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1822, line: 64, size: 128, elements: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2420, file: !1822, line: 65, baseType: !319, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2420, file: !1822, line: 67, baseType: !154, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2420, file: !1822, line: 68, baseType: !154, size: 32, offset: 96)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !967, file: !880, line: 1206, baseType: !178, size: 32, offset: 12736)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !967, file: !880, line: 1207, baseType: !178, size: 32, offset: 12768)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !967, file: !880, line: 1209, baseType: !163, size: 64, offset: 12800)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !967, file: !880, line: 1219, baseType: !214, size: 64, offset: 12864)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !967, file: !880, line: 1220, baseType: !214, size: 64, offset: 12928)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !967, file: !880, line: 1317, baseType: !178, size: 32, offset: 12992)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !967, file: !880, line: 1319, baseType: !966, size: 64, offset: 13056)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !967, file: !880, line: 1322, baseType: !2433, size: 64, offset: 13120)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2435, line: 56, size: 512, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2434, file: !2435, line: 57, baseType: !2433, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2434, file: !2435, line: 58, baseType: !164, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2434, file: !2435, line: 59, baseType: !163, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2434, file: !2435, line: 60, baseType: !163, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2434, file: !2435, line: 61, baseType: !318, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2434, file: !2435, line: 62, baseType: !7, size: 32, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2434, file: !2435, line: 63, baseType: !2444, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !182, line: 153, baseType: !214)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2434, file: !2435, line: 64, baseType: !2446, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !967, file: !880, line: 1326, baseType: !979, size: 32, offset: 13184)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !967, file: !880, line: 1342, baseType: !164, size: 64, offset: 13248)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !967, file: !880, line: 1343, baseType: !215, size: 64, offset: 13312)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !967, file: !880, line: 1344, baseType: !214, size: 64, offset: 13376)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !967, file: !880, line: 1345, baseType: !215, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !967, file: !880, line: 1346, baseType: !215, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !967, file: !880, line: 1347, baseType: !215, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !967, file: !880, line: 1348, baseType: !951, size: 128, align: 64, offset: 13504)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !967, file: !880, line: 1358, baseType: !2457, size: 34816, offset: 13824)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2458, line: 485, size: 34816, elements: !2459)
!2458 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2459 = !{!2460, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2489, !2490, !2491, !2492, !2493, !2494, !2497, !2498, !2499}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2457, file: !2458, line: 487, baseType: !2461, size: 192)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2462, size: 192, elements: !571)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2463, line: 16, size: 64, elements: !2464)
!2463 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2462, file: !2463, line: 17, baseType: !301, size: 16)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2462, file: !2463, line: 18, baseType: !301, size: 16, offset: 16)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2462, file: !2463, line: 19, baseType: !301, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2462, file: !2463, line: 19, baseType: !301, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2462, file: !2463, line: 19, baseType: !301, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2462, file: !2463, line: 19, baseType: !301, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2462, file: !2463, line: 19, baseType: !301, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2462, file: !2463, line: 20, baseType: !301, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2462, file: !2463, line: 20, baseType: !301, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2462, file: !2463, line: 20, baseType: !301, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2462, file: !2463, line: 20, baseType: !301, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2462, file: !2463, line: 20, baseType: !301, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2462, file: !2463, line: 20, baseType: !301, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2457, file: !2458, line: 491, baseType: !163, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2457, file: !2458, line: 495, baseType: !303, size: 16, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2457, file: !2458, line: 496, baseType: !303, size: 16, offset: 272)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2457, file: !2458, line: 497, baseType: !303, size: 16, offset: 288)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2457, file: !2458, line: 498, baseType: !303, size: 16, offset: 304)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2457, file: !2458, line: 502, baseType: !163, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2457, file: !2458, line: 503, baseType: !163, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2457, file: !2458, line: 514, baseType: !2486, size: 256, offset: 448)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2487, size: 256, elements: !207)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2458, line: 483, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2457, file: !2458, line: 516, baseType: !163, size: 64, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2457, file: !2458, line: 518, baseType: !163, size: 64, offset: 768)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2457, file: !2458, line: 520, baseType: !163, size: 64, offset: 832)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2457, file: !2458, line: 521, baseType: !163, size: 64, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2457, file: !2458, line: 522, baseType: !163, size: 64, offset: 960)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2457, file: !2458, line: 528, baseType: !2495, size: 64, offset: 1024)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2458, line: 10, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2457, file: !2458, line: 535, baseType: !163, size: 64, offset: 1088)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2457, file: !2458, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2457, file: !2458, line: 540, baseType: !2500, size: 33280, offset: 1536)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2501, line: 317, size: 33280, elements: !2502)
!2501 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2500, file: !2501, line: 330, baseType: !7, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2500, file: !2501, line: 337, baseType: !163, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2500, file: !2501, line: 348, baseType: !2506, size: 32768, offset: 512)
!2506 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2501, line: 304, size: 32768, elements: !2507)
!2507 = !{!2508, !2523, !2560, !2610, !2623}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2506, file: !2501, line: 305, baseType: !2509, size: 896)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2501, line: 12, size: 896, elements: !2510)
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2522}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2509, file: !2501, line: 13, baseType: !206, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2509, file: !2501, line: 14, baseType: !206, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2509, file: !2501, line: 15, baseType: !206, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2509, file: !2501, line: 16, baseType: !206, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2509, file: !2501, line: 17, baseType: !206, size: 32, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2509, file: !2501, line: 18, baseType: !206, size: 32, offset: 160)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2509, file: !2501, line: 19, baseType: !206, size: 32, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2509, file: !2501, line: 22, baseType: !2519, size: 640, offset: 224)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 640, elements: !2520)
!2520 = !{!2521}
!2521 = !DISubrange(count: 20)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2509, file: !2501, line: 25, baseType: !206, size: 32, offset: 864)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2506, file: !2501, line: 306, baseType: !2524, size: 4096, align: 128)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2501, line: 34, size: 4096, align: 128, elements: !2525)
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2545, !2546, !2547, !2549, !2551, !2555}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2524, file: !2501, line: 35, baseType: !301, size: 16)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2524, file: !2501, line: 36, baseType: !301, size: 16, offset: 16)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2524, file: !2501, line: 37, baseType: !301, size: 16, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2524, file: !2501, line: 38, baseType: !301, size: 16, offset: 48)
!2530 = !DIDerivedType(tag: DW_TAG_member, scope: !2524, file: !2501, line: 39, baseType: !2531, size: 128, offset: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2524, file: !2501, line: 39, size: 128, elements: !2532)
!2532 = !{!2533, !2538}
!2533 = !DIDerivedType(tag: DW_TAG_member, scope: !2531, file: !2501, line: 40, baseType: !2534, size: 128)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2531, file: !2501, line: 40, size: 128, elements: !2535)
!2535 = !{!2536, !2537}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2534, file: !2501, line: 41, baseType: !214, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2534, file: !2501, line: 42, baseType: !214, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, scope: !2531, file: !2501, line: 44, baseType: !2539, size: 128)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2531, file: !2501, line: 44, size: 128, elements: !2540)
!2540 = !{!2541, !2542, !2543, !2544}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2539, file: !2501, line: 45, baseType: !206, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2539, file: !2501, line: 46, baseType: !206, size: 32, offset: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2539, file: !2501, line: 47, baseType: !206, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2539, file: !2501, line: 48, baseType: !206, size: 32, offset: 96)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2524, file: !2501, line: 51, baseType: !206, size: 32, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2524, file: !2501, line: 52, baseType: !206, size: 32, offset: 224)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2524, file: !2501, line: 55, baseType: !2548, size: 1024, offset: 256)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !409)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2524, file: !2501, line: 58, baseType: !2550, size: 2048, offset: 1280)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !2205)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2524, file: !2501, line: 60, baseType: !2552, size: 384, offset: 3328)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 384, elements: !2553)
!2553 = !{!2554}
!2554 = !DISubrange(count: 12)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2524, file: !2501, line: 62, baseType: !2556, size: 384, offset: 3712)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2524, file: !2501, line: 62, size: 384, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2556, file: !2501, line: 63, baseType: !2552, size: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2556, file: !2501, line: 64, baseType: !2552, size: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2506, file: !2501, line: 307, baseType: !2561, size: 1088)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2501, line: 79, size: 1088, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2609}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2561, file: !2501, line: 80, baseType: !206, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2561, file: !2501, line: 81, baseType: !206, size: 32, offset: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2561, file: !2501, line: 82, baseType: !206, size: 32, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2561, file: !2501, line: 83, baseType: !206, size: 32, offset: 96)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2561, file: !2501, line: 84, baseType: !206, size: 32, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2561, file: !2501, line: 85, baseType: !206, size: 32, offset: 160)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2561, file: !2501, line: 86, baseType: !206, size: 32, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2561, file: !2501, line: 88, baseType: !2519, size: 640, offset: 224)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2561, file: !2501, line: 89, baseType: !159, size: 8, offset: 864)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2561, file: !2501, line: 90, baseType: !159, size: 8, offset: 872)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2561, file: !2501, line: 91, baseType: !159, size: 8, offset: 880)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2561, file: !2501, line: 92, baseType: !159, size: 8, offset: 888)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2561, file: !2501, line: 93, baseType: !159, size: 8, offset: 896)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2561, file: !2501, line: 94, baseType: !159, size: 8, offset: 904)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2561, file: !2501, line: 95, baseType: !2578, size: 64, offset: 960)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2580, line: 11, size: 128, elements: !2581)
!2580 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2579, file: !2580, line: 12, baseType: !102, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2579, file: !2580, line: 13, baseType: !2584, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2586, line: 56, size: 1344, elements: !2587)
!2586 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2585, file: !2586, line: 61, baseType: !163, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2585, file: !2586, line: 62, baseType: !163, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2585, file: !2586, line: 63, baseType: !163, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2585, file: !2586, line: 64, baseType: !163, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2585, file: !2586, line: 65, baseType: !163, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2585, file: !2586, line: 66, baseType: !163, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2585, file: !2586, line: 68, baseType: !163, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2585, file: !2586, line: 69, baseType: !163, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2585, file: !2586, line: 70, baseType: !163, size: 64, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2585, file: !2586, line: 71, baseType: !163, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2585, file: !2586, line: 72, baseType: !163, size: 64, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2585, file: !2586, line: 73, baseType: !163, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2585, file: !2586, line: 74, baseType: !163, size: 64, offset: 768)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2585, file: !2586, line: 75, baseType: !163, size: 64, offset: 832)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2585, file: !2586, line: 76, baseType: !163, size: 64, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2585, file: !2586, line: 81, baseType: !163, size: 64, offset: 960)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2585, file: !2586, line: 83, baseType: !163, size: 64, offset: 1024)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2585, file: !2586, line: 84, baseType: !163, size: 64, offset: 1088)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2585, file: !2586, line: 85, baseType: !163, size: 64, offset: 1152)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2585, file: !2586, line: 86, baseType: !163, size: 64, offset: 1216)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2585, file: !2586, line: 87, baseType: !163, size: 64, offset: 1280)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2561, file: !2501, line: 96, baseType: !206, size: 32, offset: 1024)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2506, file: !2501, line: 308, baseType: !2611, size: 4608, align: 512)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2501, line: 289, size: 4608, align: 512, elements: !2612)
!2612 = !{!2613, !2614, !2621}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2611, file: !2501, line: 290, baseType: !2524, size: 4096, align: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2611, file: !2501, line: 291, baseType: !2615, size: 512, offset: 4096)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2501, line: 268, size: 512, elements: !2616)
!2616 = !{!2617, !2618, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2615, file: !2501, line: 269, baseType: !214, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2615, file: !2501, line: 270, baseType: !214, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2615, file: !2501, line: 271, baseType: !2620, size: 384, offset: 128)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 384, elements: !1647)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2611, file: !2501, line: 292, baseType: !2622, offset: 4608)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !311)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2506, file: !2501, line: 309, baseType: !2624, size: 32768)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32768, elements: !2625)
!2625 = !{!2626}
!2626 = !DISubrange(count: 4096)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !940, file: !941, line: 16, baseType: !932, size: 128, offset: 448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !940, file: !941, line: 17, baseType: !693, size: 32, offset: 576)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !512, file: !31, line: 1465, baseType: !164, size: 64, offset: 6400)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !512, file: !31, line: 1468, baseType: !206, size: 32, offset: 6464)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !512, file: !31, line: 1470, baseType: !728, size: 64, offset: 6528)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !512, file: !31, line: 1471, baseType: !728, size: 64, offset: 6592)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !512, file: !31, line: 1473, baseType: !154, size: 32, offset: 6656)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !512, file: !31, line: 1474, baseType: !2635, size: 64, offset: 6720)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !512, file: !31, line: 1477, baseType: !2638, size: 256, offset: 6784)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 256, elements: !409)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !512, file: !31, line: 1478, baseType: !2640, size: 128, offset: 7040)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2641, line: 18, baseType: !2642)
!2641 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2641, line: 16, size: 128, elements: !2643)
!2643 = !{!2644}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2642, file: !2641, line: 17, baseType: !2645, size: 128)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !2058)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !512, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !512, file: !31, line: 1481, baseType: !1535, size: 32, offset: 7200)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !512, file: !31, line: 1487, baseType: !677, size: 192, offset: 7232)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !512, file: !31, line: 1493, baseType: !459, size: 64, offset: 7424)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !512, file: !31, line: 1495, baseType: !439, size: 64, offset: 7488)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !512, file: !31, line: 1500, baseType: !178, size: 32, offset: 7552)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !512, file: !31, line: 1502, baseType: !2653, size: 448, offset: 7616)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !650, line: 60, size: 448, elements: !2654)
!2654 = !{!2655, !2660, !2661, !2662, !2663, !2664, !2665}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2653, file: !650, line: 61, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!163, !2659, !648}
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2653, file: !650, line: 63, baseType: !2656, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2653, file: !650, line: 66, baseType: !102, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2653, file: !650, line: 67, baseType: !178, size: 32, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !650, line: 68, baseType: !7, size: 32, offset: 224)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2653, file: !650, line: 71, baseType: !228, size: 128, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2653, file: !650, line: 77, baseType: !2666, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !512, file: !31, line: 1505, baseType: !681, size: 64, offset: 8064)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !512, file: !31, line: 1508, baseType: !681, size: 64, offset: 8128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !512, file: !31, line: 1511, baseType: !178, size: 32, offset: 8192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !512, file: !31, line: 1514, baseType: !1765, size: 32, offset: 8224)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !512, file: !31, line: 1517, baseType: !2672, size: 64, offset: 8256)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !101, line: 18, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !512, file: !31, line: 1518, baseType: !555, size: 64, offset: 8320)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !512, file: !31, line: 1525, baseType: !1735, size: 64, offset: 8384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !512, file: !31, line: 1532, baseType: !2677, size: 64, offset: 8448)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2678, line: 52, size: 64, elements: !2679)
!2678 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2679 = !{!2680}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2677, file: !2678, line: 53, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2678, line: 40, size: 256, elements: !2683)
!2683 = !{!2684, !2685, !2690}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2682, file: !2678, line: 42, baseType: !422)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2682, file: !2678, line: 44, baseType: !2686, size: 192)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2678, line: 28, size: 192, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2686, file: !2678, line: 29, baseType: !228, size: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2686, file: !2678, line: 31, baseType: !102, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2682, file: !2678, line: 49, baseType: !102, size: 64, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !512, file: !31, line: 1533, baseType: !2677, size: 64, offset: 8512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !512, file: !31, line: 1534, baseType: !951, size: 128, align: 64, offset: 8576)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !512, file: !31, line: 1535, baseType: !1906, size: 256, offset: 8704)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !512, file: !31, line: 1537, baseType: !677, size: 192, offset: 8960)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !512, file: !31, line: 1542, baseType: !178, size: 32, offset: 9152)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !512, file: !31, line: 1545, baseType: !422, offset: 9184)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !512, file: !31, line: 1546, baseType: !228, size: 128, offset: 9216)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !512, file: !31, line: 1548, baseType: !422, offset: 9344)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !512, file: !31, line: 1549, baseType: !228, size: 128, offset: 9344)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !368, file: !369, line: 104, baseType: !163, size: 64, offset: 896)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !368, file: !369, line: 105, baseType: !164, size: 64, offset: 960)
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !369, line: 107, baseType: !2703, size: 128, offset: 1024)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !369, line: 107, size: 128, elements: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2703, file: !369, line: 108, baseType: !228, size: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2703, file: !369, line: 109, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !368, file: !369, line: 111, baseType: !228, size: 128, offset: 1152)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !368, file: !369, line: 112, baseType: !228, size: 128, offset: 1280)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !368, file: !369, line: 120, baseType: !2711, size: 128, offset: 1408)
!2711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !369, line: 116, size: 128, elements: !2712)
!2712 = !{!2713, !2714, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2711, file: !369, line: 117, baseType: !559, size: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2711, file: !369, line: 118, baseType: !383, size: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2711, file: !369, line: 119, baseType: !951, size: 128, align: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !361, file: !31, line: 1866, baseType: !2717, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!459, !367, !336, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2722, line: 10, size: 128, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2723 = !{!2724, !2728}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2721, file: !2722, line: 11, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !164}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2721, file: !2722, line: 12, baseType: !164, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !361, file: !31, line: 1867, baseType: !2730, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!178, !336, !178}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !361, file: !31, line: 1868, baseType: !2734, size: 64, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!2737, !336, !178}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !361, file: !31, line: 1870, baseType: !2740, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!178, !367, !485, !178}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !361, file: !31, line: 1872, baseType: !2744, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!178, !336, !367, !340, !218}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !361, file: !31, line: 1873, baseType: !2748, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!178, !367, !336, !367}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !361, file: !31, line: 1874, baseType: !2752, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!178, !336, !367}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !361, file: !31, line: 1875, baseType: !2756, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!178, !336, !367, !459}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !361, file: !31, line: 1876, baseType: !2760, size: 64, offset: 576)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!178, !336, !367, !340}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !361, file: !31, line: 1877, baseType: !2752, size: 64, offset: 640)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !361, file: !31, line: 1878, baseType: !2765, size: 64, offset: 704)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!178, !336, !367, !340, !516}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !361, file: !31, line: 1879, baseType: !2769, size: 64, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!178, !336, !367, !336, !367, !7}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !361, file: !31, line: 1881, baseType: !2773, size: 64, offset: 832)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!178, !367, !2776}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !2778)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2789, !2790, !2791}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2777, file: !31, line: 220, baseType: !7, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2777, file: !31, line: 221, baseType: !340, size: 16, offset: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2777, file: !31, line: 222, baseType: !343, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2777, file: !31, line: 223, baseType: !351, size: 32, offset: 96)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2777, file: !31, line: 224, baseType: !521, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2777, file: !31, line: 225, baseType: !2785, size: 128, offset: 192)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !729, line: 13, size: 128, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2785, file: !729, line: 14, baseType: !728, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2785, file: !729, line: 15, baseType: !102, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2777, file: !31, line: 226, baseType: !2785, size: 128, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2777, file: !31, line: 227, baseType: !2785, size: 128, offset: 448)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2777, file: !31, line: 234, baseType: !1259, size: 64, offset: 576)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !361, file: !31, line: 1882, baseType: !2793, size: 64, offset: 896)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!178, !502, !2796, !206, !7}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2798, line: 22, size: 1152, elements: !2799)
!2798 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2797, file: !2798, line: 23, baseType: !206, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2797, file: !2798, line: 24, baseType: !340, size: 16, offset: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2797, file: !2798, line: 25, baseType: !7, size: 32, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2797, file: !2798, line: 26, baseType: !1625, size: 32, offset: 96)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2797, file: !2798, line: 27, baseType: !214, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2797, file: !2798, line: 28, baseType: !214, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2797, file: !2798, line: 37, baseType: !214, size: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2797, file: !2798, line: 38, baseType: !516, size: 32, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2797, file: !2798, line: 39, baseType: !516, size: 32, offset: 352)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2797, file: !2798, line: 40, baseType: !343, size: 32, offset: 384)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2797, file: !2798, line: 41, baseType: !351, size: 32, offset: 416)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2797, file: !2798, line: 42, baseType: !521, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2797, file: !2798, line: 43, baseType: !2785, size: 128, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2797, file: !2798, line: 44, baseType: !2785, size: 128, offset: 640)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2797, file: !2798, line: 45, baseType: !2785, size: 128, offset: 768)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2797, file: !2798, line: 46, baseType: !2785, size: 128, offset: 896)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2797, file: !2798, line: 47, baseType: !214, size: 64, offset: 1024)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2797, file: !2798, line: 48, baseType: !214, size: 64, offset: 1088)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !361, file: !31, line: 1883, baseType: !2819, size: 64, offset: 960)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!1288, !367, !485, !181}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !361, file: !31, line: 1884, baseType: !2823, size: 64, offset: 1024)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!178, !336, !2826, !214, !214}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !361, file: !31, line: 1886, baseType: !2829, size: 64, offset: 1088)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!178, !336, !2832, !178}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !361, file: !31, line: 1887, baseType: !2834, size: 64, offset: 1152)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!178, !336, !367, !1259, !7, !340}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !361, file: !31, line: 1890, baseType: !2760, size: 64, offset: 1216)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !361, file: !31, line: 1891, baseType: !2839, size: 64, offset: 1280)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!178, !336, !2737, !178}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !337, file: !31, line: 623, baseType: !511, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !337, file: !31, line: 624, baseType: !332, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !337, file: !31, line: 631, baseType: !163, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !31, line: 639, baseType: !2846, size: 32, offset: 384)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !31, line: 639, size: 32, elements: !2847)
!2847 = !{!2848, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2846, file: !31, line: 640, baseType: !2849, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2846, file: !31, line: 641, baseType: !7, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !337, file: !31, line: 643, baseType: !516, size: 32, offset: 416)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !337, file: !31, line: 644, baseType: !521, size: 64, offset: 448)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !337, file: !31, line: 645, baseType: !2785, size: 128, offset: 512)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !337, file: !31, line: 646, baseType: !2785, size: 128, offset: 640)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !337, file: !31, line: 647, baseType: !2785, size: 128, offset: 768)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !337, file: !31, line: 648, baseType: !422, offset: 896)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !337, file: !31, line: 649, baseType: !303, size: 16, offset: 896)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !337, file: !31, line: 650, baseType: !159, size: 8, offset: 912)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !337, file: !31, line: 651, baseType: !159, size: 8, offset: 920)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !337, file: !31, line: 652, baseType: !842, size: 64, offset: 960)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !337, file: !31, line: 659, baseType: !163, size: 64, offset: 1024)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !337, file: !31, line: 660, baseType: !854, size: 256, offset: 1088)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !337, file: !31, line: 662, baseType: !163, size: 64, offset: 1344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !337, file: !31, line: 663, baseType: !163, size: 64, offset: 1408)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !337, file: !31, line: 665, baseType: !559, size: 128, offset: 1472)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !337, file: !31, line: 666, baseType: !228, size: 128, offset: 1600)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !337, file: !31, line: 675, baseType: !228, size: 128, offset: 1728)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !337, file: !31, line: 676, baseType: !228, size: 128, offset: 1856)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !337, file: !31, line: 677, baseType: !228, size: 128, offset: 1984)
!2870 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !31, line: 678, baseType: !2871, size: 128, offset: 2112)
!2871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !31, line: 678, size: 128, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2871, file: !31, line: 679, baseType: !555, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2871, file: !31, line: 680, baseType: !951, size: 128, align: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !337, file: !31, line: 682, baseType: !683, size: 64, offset: 2240)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !337, file: !31, line: 683, baseType: !683, size: 64, offset: 2304)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !337, file: !31, line: 684, baseType: !693, size: 32, offset: 2368)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !337, file: !31, line: 685, baseType: !693, size: 32, offset: 2400)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !337, file: !31, line: 686, baseType: !693, size: 32, offset: 2432)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !337, file: !31, line: 688, baseType: !693, size: 32, offset: 2464)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !31, line: 690, baseType: !2882, size: 64, offset: 2496)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !31, line: 690, size: 64, elements: !2883)
!2883 = !{!2884, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2882, file: !31, line: 691, baseType: !1275, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2882, file: !31, line: 692, baseType: !586, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !337, file: !31, line: 694, baseType: !2887, size: 64, offset: 2560)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2888, file: !31, line: 1101, baseType: !422)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2888, file: !31, line: 1102, baseType: !228, size: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2888, file: !31, line: 1103, baseType: !228, size: 128, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2888, file: !31, line: 1104, baseType: !228, size: 128, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !337, file: !31, line: 695, baseType: !333, size: 1216, align: 64, offset: 2624)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !337, file: !31, line: 696, baseType: !228, size: 128, offset: 3840)
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !31, line: 697, baseType: !2897, size: 64, offset: 3968)
!2897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !31, line: 697, size: 64, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2904, !2905}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2897, file: !31, line: 698, baseType: !1502, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2897, file: !31, line: 699, baseType: !875, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2897, file: !31, line: 700, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2897, file: !31, line: 701, baseType: !485, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2897, file: !31, line: 702, baseType: !7, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !337, file: !31, line: 705, baseType: !154, size: 32, offset: 4032)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !337, file: !31, line: 708, baseType: !154, size: 32, offset: 4064)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !337, file: !31, line: 709, baseType: !2635, size: 64, offset: 4096)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !337, file: !31, line: 720, baseType: !164, size: 64, offset: 4160)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !333, file: !31, line: 453, baseType: !2260, size: 128, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !333, file: !31, line: 454, baseType: !643, size: 32, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !333, file: !31, line: 455, baseType: !693, size: 32, offset: 224)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !333, file: !31, line: 460, baseType: !1101, size: 128, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !333, file: !31, line: 461, baseType: !854, size: 256, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !333, file: !31, line: 462, baseType: !163, size: 64, offset: 640)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !333, file: !31, line: 463, baseType: !163, size: 64, offset: 704)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !333, file: !31, line: 464, baseType: !163, size: 64, offset: 768)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !333, file: !31, line: 465, baseType: !2919, size: 64, offset: 832)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2921)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !2922)
!2922 = !{!2923, !2927, !2931, !2935, !2939, !2943, !2949, !2953, !2957, !2962, !2966, !2970, !2974, !2975, !2979, !2985, !2986, !2987, !2991, !2996, !3000, !3007}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2921, file: !31, line: 368, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!178, !319, !598}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2921, file: !31, line: 369, baseType: !2928, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!178, !1259, !319}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2921, file: !31, line: 372, baseType: !2932, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!178, !332, !598}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2921, file: !31, line: 375, baseType: !2936, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!178, !319}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2921, file: !31, line: 381, baseType: !2940, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!178, !1259, !332, !231, !7}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2921, file: !31, line: 383, baseType: !2944, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2921, file: !31, line: 385, baseType: !2950, size: 64, offset: 384)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!178, !1259, !332, !521, !7, !7, !318, !1459}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2921, file: !31, line: 388, baseType: !2954, size: 64, offset: 448)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!178, !1259, !332, !521, !7, !7, !319, !164}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2921, file: !31, line: 393, baseType: !2958, size: 64, offset: 512)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!2961, !332, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !182, line: 125, baseType: !214)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2921, file: !31, line: 394, baseType: !2963, size: 64, offset: 576)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !319, !7, !7}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2921, file: !31, line: 395, baseType: !2967, size: 64, offset: 640)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!178, !319, !643}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2921, file: !31, line: 396, baseType: !2971, size: 64, offset: 704)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !319}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2921, file: !31, line: 397, baseType: !1297, size: 64, offset: 768)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2921, file: !31, line: 402, baseType: !2976, size: 64, offset: 832)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!178, !332, !319, !319, !53}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2921, file: !31, line: 404, baseType: !2980, size: 64, offset: 896)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!218, !319, !2983}
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2984, line: 305, baseType: !7)
!2984 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2921, file: !31, line: 405, baseType: !2971, size: 64, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2921, file: !31, line: 406, baseType: !2936, size: 64, offset: 1024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2921, file: !31, line: 407, baseType: !2988, size: 64, offset: 1088)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!178, !319, !163, !163}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2921, file: !31, line: 409, baseType: !2992, size: 64, offset: 1152)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{null, !319, !2995, !2995}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2921, file: !31, line: 410, baseType: !2997, size: 64, offset: 1216)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!178, !332, !319}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2921, file: !31, line: 413, baseType: !3001, size: 64, offset: 1280)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!178, !3004, !1259, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2921, file: !31, line: 415, baseType: !3008, size: 64, offset: 1344)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !1259}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !31, line: 466, baseType: !163, size: 64, offset: 896)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !333, file: !31, line: 467, baseType: !1765, size: 32, offset: 960)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !333, file: !31, line: 468, baseType: !422, offset: 992)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !333, file: !31, line: 469, baseType: !228, size: 128, offset: 1024)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !333, file: !31, line: 470, baseType: !164, size: 64, offset: 1152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !328, file: !321, line: 87, baseType: !163, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !328, file: !321, line: 94, baseType: !163, size: 64, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 96, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 96, size: 64, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3019, file: !321, line: 101, baseType: !213, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 103, baseType: !3023, size: 320)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 103, size: 320, elements: !3024)
!3024 = !{!3025, !3035, !3036, !3037}
!3025 = !DIDerivedType(tag: DW_TAG_member, scope: !3023, file: !321, line: 104, baseType: !3026, size: 128)
!3026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3023, file: !321, line: 104, size: 128, elements: !3027)
!3027 = !{!3028, !3029}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !3026, file: !321, line: 105, baseType: !228, size: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, scope: !3026, file: !321, line: 106, baseType: !3030, size: 128)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3026, file: !321, line: 106, size: 128, elements: !3031)
!3031 = !{!3032, !3033, !3034}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3030, file: !321, line: 107, baseType: !319, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3030, file: !321, line: 109, baseType: !178, size: 32, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !3030, file: !321, line: 110, baseType: !178, size: 32, offset: 96)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3023, file: !321, line: 117, baseType: !2279, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !3023, file: !321, line: 119, baseType: !164, size: 64, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3023, file: !321, line: 120, baseType: !3038, size: 64, offset: 256)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3023, file: !321, line: 120, size: 64, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !3038, file: !321, line: 121, baseType: !164, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3038, file: !321, line: 122, baseType: !163, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !321, line: 123, baseType: !3043, size: 32)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !321, line: 123, size: 32, elements: !3044)
!3044 = !{!3045, !3046, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !3043, file: !321, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3043, file: !321, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3043, file: !321, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 130, baseType: !3049, size: 192)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 130, size: 192, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054, !3055}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3049, file: !321, line: 131, baseType: !163, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !3049, file: !321, line: 134, baseType: !162, size: 8, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !3049, file: !321, line: 135, baseType: !162, size: 8, offset: 72)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !3049, file: !321, line: 136, baseType: !693, size: 32, offset: 96)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !3049, file: !321, line: 137, baseType: !7, size: 32, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 139, baseType: !3057, size: 256)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 139, size: 256, elements: !3058)
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !3057, file: !321, line: 140, baseType: !163, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !3057, file: !321, line: 141, baseType: !693, size: 32, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3057, file: !321, line: 143, baseType: !228, size: 128, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 145, baseType: !3063, size: 256)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 145, size: 256, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3073}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !3063, file: !321, line: 146, baseType: !163, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !3063, file: !321, line: 147, baseType: !1230, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !3063, file: !321, line: 148, baseType: !163, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !3063, file: !321, line: 149, baseType: !3069, size: 64, offset: 192)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3063, file: !321, line: 149, size: 64, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !3069, file: !321, line: 150, baseType: !1138, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !3069, file: !321, line: 151, baseType: !693, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3063, file: !321, line: 156, baseType: !422, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 159, baseType: !3075, size: 128)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 159, size: 128, elements: !3076)
!3076 = !{!3077, !3141}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3075, file: !321, line: 161, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !61, line: 110, size: 1152, elements: !3080)
!3080 = !{!3081, !3091, !3112, !3113, !3114, !3115, !3116, !3128, !3129, !3130}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3079, file: !61, line: 111, baseType: !3082, size: 384)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !61, line: 19, size: 384, elements: !3083)
!3083 = !{!3084, !3086, !3087, !3088, !3089, !3090}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3082, file: !61, line: 20, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3082, file: !61, line: 21, baseType: !3085, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3082, file: !61, line: 22, baseType: !3085, size: 64, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3082, file: !61, line: 23, baseType: !163, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3082, file: !61, line: 24, baseType: !163, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3082, file: !61, line: 25, baseType: !163, size: 64, offset: 320)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3079, file: !61, line: 112, baseType: !3092, size: 64, offset: 384)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3094, line: 105, size: 128, elements: !3095)
!3094 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3093, file: !3094, line: 110, baseType: !163, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3093, file: !3094, line: 118, baseType: !3098, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3094, line: 95, size: 448, elements: !3100)
!3100 = !{!3101, !3102, !3107, !3108, !3109, !3110, !3111}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3099, file: !3094, line: 96, baseType: !681, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3099, file: !3094, line: 97, baseType: !3103, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3094, line: 60, baseType: !3105)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !3092}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3099, file: !3094, line: 98, baseType: !3103, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3099, file: !3094, line: 99, baseType: !218, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3099, file: !3094, line: 100, baseType: !218, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3099, file: !3094, line: 101, baseType: !951, size: 128, align: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3099, file: !3094, line: 102, baseType: !3092, size: 64, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3079, file: !61, line: 113, baseType: !3093, size: 128, offset: 448)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3079, file: !61, line: 114, baseType: !1881, size: 192, offset: 576)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3079, file: !61, line: 115, baseType: !60, size: 32, offset: 768)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3079, file: !61, line: 116, baseType: !7, size: 32, offset: 800)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3079, file: !61, line: 117, baseType: !3117, size: 64, offset: 832)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3119)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !61, line: 67, size: 256, elements: !3120)
!3120 = !{!3121, !3122, !3126, !3127}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3119, file: !61, line: 73, baseType: !2971, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3119, file: !61, line: 78, baseType: !3123, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !3078}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3119, file: !61, line: 83, baseType: !3123, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3119, file: !61, line: 89, baseType: !1191, size: 64, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3079, file: !61, line: 118, baseType: !164, size: 64, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3079, file: !61, line: 119, baseType: !178, size: 32, offset: 960)
!3130 = !DIDerivedType(tag: DW_TAG_member, scope: !3079, file: !61, line: 120, baseType: !3131, size: 128, offset: 1024)
!3131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3079, file: !61, line: 120, size: 128, elements: !3132)
!3132 = !{!3133, !3139}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3131, file: !61, line: 121, baseType: !3134, size: 128)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3135, line: 6, size: 128, elements: !3136)
!3135 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3134, file: !3135, line: 7, baseType: !214, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3134, file: !3135, line: 8, baseType: !214, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3131, file: !61, line: 122, baseType: !3140)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3134, elements: !311)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3075, file: !321, line: 162, baseType: !164, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !325, file: !321, line: 176, baseType: !951, size: 128, align: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 179, baseType: !3144, size: 32, offset: 384)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 179, size: 32, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3144, file: !321, line: 184, baseType: !693, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3144, file: !321, line: 192, baseType: !7, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3144, file: !321, line: 194, baseType: !7, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3144, file: !321, line: 195, baseType: !178, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !320, file: !321, line: 199, baseType: !693, size: 32, offset: 416)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !314, file: !147, line: 424, baseType: !178, size: 32, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "page_count_mapped", scope: !314, file: !147, line: 425, baseType: !178, size: 32, offset: 160)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue_iso", scope: !171, file: !172, line: 109, baseType: !279, size: 64, offset: 960)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flush_iso_completions", scope: !171, file: !172, line: 111, baseType: !3155, size: 64, offset: 1024)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!178, !255}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "stop_iso", scope: !171, file: !172, line: 113, baseType: !3155, size: 64, offset: 1088)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !166, file: !147, line: 85, baseType: !3160, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !3162)
!3162 = !{!3163, !3460, !3461, !3464, !3465, !3516, !3589, !3590, !3591, !3592, !3593, !3602, !3707, !3720, !3723, !3724, !3728, !3729, !3730, !3731, !3735, !3741, !3742, !3745, !3749, !3839, !3840, !3841, !3842, !3843, !3875, !3876, !3877, !3880, !3883, !3884, !3885, !3886}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3161, file: !80, line: 462, baseType: !3164, size: 512)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3165, line: 64, size: 512, elements: !3166)
!3165 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3166 = !{!3167, !3168, !3169, !3171, !3211, !3311, !3450, !3455, !3456, !3457, !3458, !3459}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3164, file: !3165, line: 65, baseType: !459, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3164, file: !3165, line: 66, baseType: !228, size: 128, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3164, file: !3165, line: 67, baseType: !3170, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3164, file: !3165, line: 68, baseType: !3172, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3165, line: 192, size: 704, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3178}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3173, file: !3165, line: 193, baseType: !228, size: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3173, file: !3165, line: 194, baseType: !422, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3173, file: !3165, line: 195, baseType: !3164, size: 512, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3173, file: !3165, line: 196, baseType: !3179, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3181)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3165, line: 156, size: 192, elements: !3182)
!3182 = !{!3183, !3188, !3193}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3181, file: !3165, line: 157, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3185)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!178, !3172, !3170}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3181, file: !3165, line: 158, baseType: !3189, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3190)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!459, !3172, !3170}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3181, file: !3165, line: 159, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3195)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!178, !3172, !3170, !3198}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3165, line: 148, size: 20736, elements: !3200)
!3200 = !{!3201, !3203, !3205, !3206, !3210}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3199, file: !3165, line: 149, baseType: !3202, size: 192)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 192, elements: !571)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3199, file: !3165, line: 150, baseType: !3204, size: 4096, offset: 192)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 4096, elements: !2205)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3199, file: !3165, line: 151, baseType: !178, size: 32, offset: 4288)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3199, file: !3165, line: 152, baseType: !3207, size: 16384, offset: 4320)
!3207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 16384, elements: !3208)
!3208 = !{!3209}
!3209 = !DISubrange(count: 2048)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3199, file: !3165, line: 153, baseType: !178, size: 32, offset: 20704)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3164, file: !3165, line: 69, baseType: !3212, size: 64, offset: 320)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3165, line: 138, size: 448, elements: !3214)
!3214 = !{!3215, !3219, !3238, !3240, !3273, !3301, !3305}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3213, file: !3165, line: 139, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !3170}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3213, file: !3165, line: 140, baseType: !3220, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3222)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3223, line: 230, size: 128, elements: !3224)
!3223 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3224 = !{!3225, !3234}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3222, file: !3223, line: 231, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!1288, !3170, !3229, !485}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3223, line: 30, size: 128, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3230, file: !3223, line: 31, baseType: !459, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3230, file: !3223, line: 32, baseType: !340, size: 16, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3222, file: !3223, line: 232, baseType: !3235, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!1288, !3170, !3229, !459, !181}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3213, file: !3165, line: 141, baseType: !3239, size: 64, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3213, file: !3165, line: 142, baseType: !3241, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3244)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3223, line: 84, size: 320, elements: !3245)
!3245 = !{!3246, !3247, !3251, !3270, !3271}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3244, file: !3223, line: 85, baseType: !459, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3244, file: !3223, line: 86, baseType: !3248, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!340, !3170, !3229, !178}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3244, file: !3223, line: 88, baseType: !3252, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!340, !3170, !3255, !178}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3223, line: 168, size: 448, elements: !3257)
!3257 = !{!3258, !3259, !3260, !3261, !3265, !3266}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3256, file: !3223, line: 169, baseType: !3230, size: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3256, file: !3223, line: 170, baseType: !181, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3256, file: !3223, line: 171, baseType: !164, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3256, file: !3223, line: 172, baseType: !3262, size: 64, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!1288, !1259, !3170, !3255, !485, !521, !181}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3256, file: !3223, line: 174, baseType: !3262, size: 64, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3256, file: !3223, line: 176, baseType: !3267, size: 64, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!178, !1259, !3170, !3255, !1145}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3244, file: !3223, line: 90, baseType: !3239, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3244, file: !3223, line: 91, baseType: !3272, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3213, file: !3165, line: 143, baseType: !3274, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!3277, !3170}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3279)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3280)
!3280 = !{!3281, !3282, !3286, !3290, !3296, !3300}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3279, file: !68, line: 40, baseType: !67, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3279, file: !68, line: 41, baseType: !3283, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!218}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3279, file: !68, line: 42, baseType: !3287, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!164}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3279, file: !68, line: 43, baseType: !3291, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!2446, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3279, file: !68, line: 44, baseType: !3297, size: 64, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!2446}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3279, file: !68, line: 45, baseType: !2725, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3213, file: !3165, line: 144, baseType: !3302, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!2446, !3170}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3213, file: !3165, line: 145, baseType: !3306, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !3170, !3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3164, file: !3165, line: 70, baseType: !3312, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !536, line: 123, size: 1024, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3443, !3444, !3445, !3446, !3447}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3313, file: !536, line: 124, baseType: !693, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3313, file: !536, line: 125, baseType: !693, size: 32, offset: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3313, file: !536, line: 135, baseType: !3312, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3313, file: !536, line: 136, baseType: !459, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3313, file: !536, line: 138, baseType: !1003, size: 192, align: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3313, file: !536, line: 140, baseType: !2446, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3313, file: !536, line: 141, baseType: !7, size: 32, offset: 448)
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !536, line: 142, baseType: !3323, size: 256, offset: 512)
!3323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !536, line: 142, size: 256, elements: !3324)
!3324 = !{!3325, !3371, !3375}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3323, file: !536, line: 143, baseType: !3326, size: 192)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !536, line: 91, size: 192, elements: !3327)
!3327 = !{!3328, !3329, !3330}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3326, file: !536, line: 92, baseType: !163, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3326, file: !536, line: 94, baseType: !1104, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3326, file: !536, line: 100, baseType: !3331, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !536, line: 180, size: 704, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3343, !3344, !3345, !3369, !3370}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3332, file: !536, line: 182, baseType: !3312, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3332, file: !536, line: 183, baseType: !7, size: 32, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3332, file: !536, line: 186, baseType: !3337, size: 192, offset: 128)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3338, line: 19, size: 192, elements: !3339)
!3338 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3339 = !{!3340, !3341, !3342}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3337, file: !3338, line: 20, baseType: !2260, size: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3337, file: !3338, line: 21, baseType: !7, size: 32, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3337, file: !3338, line: 22, baseType: !7, size: 32, offset: 160)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3332, file: !536, line: 187, baseType: !206, size: 32, offset: 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3332, file: !536, line: 188, baseType: !206, size: 32, offset: 352)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3332, file: !536, line: 189, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !536, line: 168, size: 320, elements: !3348)
!3348 = !{!3349, !3353, !3357, !3361, !3365}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3347, file: !536, line: 169, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!178, !633, !3331}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3347, file: !536, line: 171, baseType: !3354, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!178, !3312, !459, !340}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3347, file: !536, line: 173, baseType: !3358, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!178, !3312}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3347, file: !536, line: 174, baseType: !3362, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!178, !3312, !3312, !459}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3347, file: !536, line: 176, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!178, !633, !3312, !3331}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3332, file: !536, line: 192, baseType: !228, size: 128, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3332, file: !536, line: 194, baseType: !932, size: 128, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3323, file: !536, line: 144, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !536, line: 103, size: 64, elements: !3373)
!3373 = !{!3374}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3372, file: !536, line: 104, baseType: !3312, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3323, file: !536, line: 145, baseType: !3376, size: 256)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !536, line: 107, size: 256, elements: !3377)
!3377 = !{!3378, !3438, !3441, !3442}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3376, file: !536, line: 108, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !536, line: 217, size: 768, elements: !3382)
!3382 = !{!3383, !3403, !3407, !3411, !3415, !3419, !3423, !3427, !3428, !3429, !3430, !3434}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3381, file: !536, line: 222, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!178, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !536, line: 197, size: 1088, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3388, file: !536, line: 199, baseType: !3312, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3388, file: !536, line: 200, baseType: !1259, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3388, file: !536, line: 201, baseType: !633, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3388, file: !536, line: 202, baseType: !164, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3388, file: !536, line: 205, baseType: !677, size: 192, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3388, file: !536, line: 206, baseType: !677, size: 192, offset: 448)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3388, file: !536, line: 207, baseType: !178, size: 32, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3388, file: !536, line: 208, baseType: !228, size: 128, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3388, file: !536, line: 209, baseType: !485, size: 64, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3388, file: !536, line: 211, baseType: !181, size: 64, offset: 896)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3388, file: !536, line: 212, baseType: !218, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3388, file: !536, line: 213, baseType: !218, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3388, file: !536, line: 214, baseType: !1173, size: 64, offset: 1024)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3381, file: !536, line: 223, baseType: !3404, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !3387}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3381, file: !536, line: 236, baseType: !3408, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!178, !633, !164}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3381, file: !536, line: 238, baseType: !3412, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!164, !633, !1291}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3381, file: !536, line: 239, baseType: !3416, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!164, !633, !164, !1291}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3381, file: !536, line: 240, baseType: !3420, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !633, !164}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3381, file: !536, line: 242, baseType: !3424, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!1288, !3387, !485, !181, !521}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3381, file: !536, line: 252, baseType: !181, size: 64, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3381, file: !536, line: 259, baseType: !218, size: 8, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3381, file: !536, line: 260, baseType: !3424, size: 64, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3381, file: !536, line: 263, baseType: !3431, size: 64, offset: 640)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!1345, !3387, !1346}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3381, file: !536, line: 266, baseType: !3435, size: 64, offset: 704)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!178, !3387, !1145}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3376, file: !536, line: 109, baseType: !3439, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !536, line: 31, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3376, file: !536, line: 110, baseType: !521, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3376, file: !536, line: 111, baseType: !3312, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3313, file: !536, line: 148, baseType: !164, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3313, file: !536, line: 154, baseType: !214, size: 64, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3313, file: !536, line: 156, baseType: !303, size: 16, offset: 896)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3313, file: !536, line: 157, baseType: !340, size: 16, offset: 912)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3313, file: !536, line: 158, baseType: !3448, size: 64, offset: 960)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !536, line: 32, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3164, file: !3165, line: 71, baseType: !3451, size: 32, offset: 448)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3452, line: 19, size: 32, elements: !3453)
!3452 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3453 = !{!3454}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3451, file: !3452, line: 20, baseType: !979, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3164, file: !3165, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3164, file: !3165, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3164, file: !3165, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3164, file: !3165, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3164, file: !3165, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3161, file: !80, line: 463, baseType: !3160, size: 64, offset: 512)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3161, file: !80, line: 465, baseType: !3462, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3161, file: !80, line: 467, baseType: !459, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3161, file: !80, line: 468, baseType: !3466, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3476, !3481, !3485}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !80, line: 88, baseType: !459, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3468, file: !80, line: 89, baseType: !3241, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3468, file: !80, line: 90, baseType: !3473, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!178, !3160, !3198}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3468, file: !80, line: 91, baseType: !3477, size: 64, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!485, !3160, !3480, !3309, !3310}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3468, file: !80, line: 93, baseType: !3482, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !3160}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3468, file: !80, line: 95, baseType: !3486, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3488)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3489)
!3489 = !{!3490, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3488, file: !87, line: 279, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!178, !3160}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3488, file: !87, line: 280, baseType: !3482, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3488, file: !87, line: 281, baseType: !3491, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3488, file: !87, line: 282, baseType: !3491, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3488, file: !87, line: 283, baseType: !3491, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3488, file: !87, line: 284, baseType: !3491, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3488, file: !87, line: 285, baseType: !3491, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3488, file: !87, line: 286, baseType: !3491, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3488, file: !87, line: 287, baseType: !3491, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3488, file: !87, line: 288, baseType: !3491, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3488, file: !87, line: 289, baseType: !3491, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3488, file: !87, line: 290, baseType: !3491, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3488, file: !87, line: 291, baseType: !3491, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3488, file: !87, line: 292, baseType: !3491, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3488, file: !87, line: 293, baseType: !3491, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3488, file: !87, line: 294, baseType: !3491, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3488, file: !87, line: 295, baseType: !3491, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3488, file: !87, line: 296, baseType: !3491, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3488, file: !87, line: 297, baseType: !3491, size: 64, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3488, file: !87, line: 298, baseType: !3491, size: 64, offset: 1216)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3488, file: !87, line: 299, baseType: !3491, size: 64, offset: 1280)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3488, file: !87, line: 300, baseType: !3491, size: 64, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3488, file: !87, line: 301, baseType: !3491, size: 64, offset: 1408)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3161, file: !80, line: 470, baseType: !3517, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3519, line: 82, size: 1408, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3584, !3587, !3588}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3518, file: !3519, line: 83, baseType: !459, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3518, file: !3519, line: 84, baseType: !459, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3518, file: !3519, line: 85, baseType: !3160, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3518, file: !3519, line: 86, baseType: !3241, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3518, file: !3519, line: 87, baseType: !3241, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3518, file: !3519, line: 88, baseType: !3241, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3518, file: !3519, line: 90, baseType: !3528, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!178, !3160, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3544, !3548, !3549, !3550, !3551, !3552, !3560, !3561, !3562, !3563, !3564, !3565}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3532, file: !74, line: 96, baseType: !459, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3532, file: !74, line: 97, baseType: !3517, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3532, file: !74, line: 99, baseType: !550, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3532, file: !74, line: 100, baseType: !459, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3532, file: !74, line: 102, baseType: !218, size: 8, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3532, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3532, file: !74, line: 105, baseType: !3541, size: 64, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !74, line: 105, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3532, file: !74, line: 106, baseType: !3545, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3547)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !74, line: 106, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3532, file: !74, line: 108, baseType: !3491, size: 64, offset: 448)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3532, file: !74, line: 109, baseType: !3482, size: 64, offset: 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3532, file: !74, line: 110, baseType: !3491, size: 64, offset: 576)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3532, file: !74, line: 111, baseType: !3482, size: 64, offset: 640)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3532, file: !74, line: 112, baseType: !3553, size: 64, offset: 704)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!178, !3160, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3558)
!3558 = !{!3559}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3557, file: !87, line: 51, baseType: !178, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3532, file: !74, line: 113, baseType: !3491, size: 64, offset: 768)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3532, file: !74, line: 114, baseType: !3241, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3532, file: !74, line: 115, baseType: !3241, size: 64, offset: 896)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3532, file: !74, line: 117, baseType: !3486, size: 64, offset: 960)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3532, file: !74, line: 118, baseType: !3482, size: 64, offset: 1024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3532, file: !74, line: 120, baseType: !3566, size: 64, offset: 1088)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3518, file: !3519, line: 91, baseType: !3473, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3518, file: !3519, line: 92, baseType: !3491, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3518, file: !3519, line: 93, baseType: !3482, size: 64, offset: 576)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3518, file: !3519, line: 94, baseType: !3491, size: 64, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3518, file: !3519, line: 95, baseType: !3482, size: 64, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3518, file: !3519, line: 97, baseType: !3491, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3518, file: !3519, line: 98, baseType: !3491, size: 64, offset: 832)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3518, file: !3519, line: 100, baseType: !3553, size: 64, offset: 896)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3518, file: !3519, line: 101, baseType: !3491, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3518, file: !3519, line: 103, baseType: !3491, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3518, file: !3519, line: 105, baseType: !3491, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3518, file: !3519, line: 107, baseType: !3486, size: 64, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3518, file: !3519, line: 109, baseType: !3581, size: 64, offset: 1216)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3583)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3519, line: 109, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3518, file: !3519, line: 111, baseType: !3585, size: 64, offset: 1280)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3519, line: 111, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3518, file: !3519, line: 112, baseType: !565, offset: 1344)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3518, file: !3519, line: 114, baseType: !218, size: 8, offset: 1344)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3161, file: !80, line: 471, baseType: !3531, size: 64, offset: 832)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3161, file: !80, line: 473, baseType: !164, size: 64, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3161, file: !80, line: 475, baseType: !164, size: 64, offset: 960)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3161, file: !80, line: 480, baseType: !677, size: 192, offset: 1024)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3161, file: !80, line: 484, baseType: !3594, size: 576, offset: 1216)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3594, file: !80, line: 362, baseType: !228, size: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3594, file: !80, line: 363, baseType: !228, size: 128, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3594, file: !80, line: 364, baseType: !228, size: 128, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3594, file: !80, line: 365, baseType: !228, size: 128, offset: 384)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3594, file: !80, line: 366, baseType: !218, size: 8, offset: 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3594, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3161, file: !80, line: 485, baseType: !3603, size: 2304, offset: 1792)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3700, !3704}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3603, file: !87, line: 566, baseType: !3556, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3603, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3603, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3603, file: !87, line: 569, baseType: !218, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3603, file: !87, line: 570, baseType: !218, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3603, file: !87, line: 571, baseType: !218, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3603, file: !87, line: 572, baseType: !218, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3603, file: !87, line: 573, baseType: !218, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3603, file: !87, line: 574, baseType: !218, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3603, file: !87, line: 575, baseType: !218, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3603, file: !87, line: 576, baseType: !218, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3603, file: !87, line: 577, baseType: !206, size: 32, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3603, file: !87, line: 578, baseType: !422, offset: 96)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3603, file: !87, line: 580, baseType: !228, size: 128, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3603, file: !87, line: 581, baseType: !1881, size: 192, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3603, file: !87, line: 582, baseType: !3621, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3623, line: 43, size: 1472, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3632, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3622, file: !3623, line: 44, baseType: !459, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3622, file: !3623, line: 45, baseType: !178, size: 32, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3622, file: !3623, line: 46, baseType: !228, size: 128, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3622, file: !3623, line: 47, baseType: !422, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3622, file: !3623, line: 48, baseType: !3630, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3622, file: !3623, line: 49, baseType: !3633, size: 320, offset: 320)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3634, line: 11, size: 320, elements: !3635)
!3634 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3635 = !{!3636, !3637, !3638, !3643}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3633, file: !3634, line: 16, baseType: !559, size: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3633, file: !3634, line: 17, baseType: !163, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3633, file: !3634, line: 18, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3633, file: !3634, line: 19, baseType: !206, size: 32, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3622, file: !3623, line: 50, baseType: !163, size: 64, offset: 640)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3622, file: !3623, line: 51, baseType: !1055, size: 64, offset: 704)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3622, file: !3623, line: 52, baseType: !1055, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3622, file: !3623, line: 53, baseType: !1055, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3622, file: !3623, line: 54, baseType: !1055, size: 64, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3622, file: !3623, line: 55, baseType: !1055, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3622, file: !3623, line: 56, baseType: !163, size: 64, offset: 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3622, file: !3623, line: 57, baseType: !163, size: 64, offset: 1088)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3622, file: !3623, line: 58, baseType: !163, size: 64, offset: 1152)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3622, file: !3623, line: 59, baseType: !163, size: 64, offset: 1216)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3622, file: !3623, line: 60, baseType: !163, size: 64, offset: 1280)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3622, file: !3623, line: 61, baseType: !3160, size: 64, offset: 1344)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3622, file: !3623, line: 62, baseType: !218, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3622, file: !3623, line: 63, baseType: !218, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3603, file: !87, line: 583, baseType: !218, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3603, file: !87, line: 584, baseType: !218, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3603, file: !87, line: 585, baseType: !218, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3603, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3603, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3603, file: !87, line: 592, baseType: !1047, size: 512, offset: 576)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3603, file: !87, line: 593, baseType: !214, size: 64, offset: 1088)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3603, file: !87, line: 594, baseType: !1906, size: 256, offset: 1152)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3603, file: !87, line: 595, baseType: !932, size: 128, offset: 1408)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3603, file: !87, line: 596, baseType: !3630, size: 64, offset: 1536)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3603, file: !87, line: 597, baseType: !693, size: 32, offset: 1600)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3603, file: !87, line: 598, baseType: !693, size: 32, offset: 1632)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3603, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3603, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3603, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3603, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3603, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3603, file: !87, line: 604, baseType: !218, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3603, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3603, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3603, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3603, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3603, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3603, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3603, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3603, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3603, file: !87, line: 613, baseType: !178, size: 32, offset: 1792)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3603, file: !87, line: 614, baseType: !178, size: 32, offset: 1824)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3603, file: !87, line: 615, baseType: !214, size: 64, offset: 1856)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3603, file: !87, line: 616, baseType: !214, size: 64, offset: 1920)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3603, file: !87, line: 617, baseType: !214, size: 64, offset: 1984)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3603, file: !87, line: 618, baseType: !214, size: 64, offset: 2048)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3603, file: !87, line: 620, baseType: !3691, size: 64, offset: 2112)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3693)
!3693 = !{!3694, !3695, !3696, !3697}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3692, file: !87, line: 537, baseType: !422)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3692, file: !87, line: 538, baseType: !7, size: 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3692, file: !87, line: 540, baseType: !228, size: 128, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3692, file: !87, line: 543, baseType: !3698, size: 64, offset: 192)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3603, file: !87, line: 621, baseType: !3701, size: 64, offset: 2176)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3160, !286}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3603, file: !87, line: 622, baseType: !3705, size: 64, offset: 2240)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3161, file: !80, line: 486, baseType: !3708, size: 64, offset: 4096)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3710)
!3710 = !{!3711, !3712, !3713, !3717, !3718, !3719}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3709, file: !87, line: 643, baseType: !3488, size: 1472)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3709, file: !87, line: 644, baseType: !3491, size: 64, offset: 1472)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3709, file: !87, line: 645, baseType: !3714, size: 64, offset: 1536)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !3160, !218}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3709, file: !87, line: 646, baseType: !3491, size: 64, offset: 1600)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3709, file: !87, line: 647, baseType: !3482, size: 64, offset: 1664)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3709, file: !87, line: 648, baseType: !3482, size: 64, offset: 1728)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3161, file: !80, line: 493, baseType: !3721, size: 64, offset: 4160)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 493, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3161, file: !80, line: 499, baseType: !228, size: 128, offset: 4224)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3161, file: !80, line: 502, baseType: !3725, size: 64, offset: 4352)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3727)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3161, file: !80, line: 504, baseType: !292, size: 64, offset: 4416)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3161, file: !80, line: 505, baseType: !214, size: 64, offset: 4480)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3161, file: !80, line: 510, baseType: !214, size: 64, offset: 4544)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3161, file: !80, line: 511, baseType: !3732, size: 64, offset: 4608)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3734)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3161, file: !80, line: 513, baseType: !3736, size: 64, offset: 4672)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3737, file: !80, line: 293, baseType: !7, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3737, file: !80, line: 294, baseType: !163, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3161, file: !80, line: 515, baseType: !228, size: 128, offset: 4736)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3161, file: !80, line: 526, baseType: !3743, offset: 4864)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3744, line: 5, elements: !436)
!3744 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3161, file: !80, line: 528, baseType: !3746, size: 64, offset: 4864)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3748, line: 14, flags: DIFlagFwdDecl)
!3748 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3161, file: !80, line: 529, baseType: !3750, size: 64, offset: 4928)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3752, line: 17, size: 192, elements: !3753)
!3752 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3753 = !{!3754, !3755, !3838}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3751, file: !3752, line: 18, baseType: !3750, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3751, file: !3752, line: 19, baseType: !3756, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3758)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3752, line: 110, size: 1152, elements: !3759)
!3759 = !{!3760, !3764, !3768, !3774, !3780, !3784, !3788, !3793, !3797, !3798, !3802, !3806, !3810, !3821, !3822, !3823, !3824, !3834}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3758, file: !3752, line: 111, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!3750, !3750}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3758, file: !3752, line: 112, baseType: !3765, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !3750}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3758, file: !3752, line: 113, baseType: !3769, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!218, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3751)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3758, file: !3752, line: 114, baseType: !3775, size: 64, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!2446, !3772, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3161)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3758, file: !3752, line: 116, baseType: !3781, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!218, !3772, !459}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3758, file: !3752, line: 118, baseType: !3785, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!178, !3772, !459, !7, !164, !181}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3758, file: !3752, line: 123, baseType: !3789, size: 64, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!178, !3772, !459, !3792, !181}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3758, file: !3752, line: 126, baseType: !3794, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!459, !3772}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3758, file: !3752, line: 127, baseType: !3794, size: 64, offset: 512)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3758, file: !3752, line: 128, baseType: !3799, size: 64, offset: 576)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!3750, !3772}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3758, file: !3752, line: 130, baseType: !3803, size: 64, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!3750, !3772, !3750}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3758, file: !3752, line: 133, baseType: !3807, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!3750, !3772, !459}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3758, file: !3752, line: 135, baseType: !3811, size: 64, offset: 768)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!178, !3772, !459, !459, !7, !7, !3814}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3752, line: 43, size: 640, elements: !3816)
!3816 = !{!3817, !3818, !3819}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3815, file: !3752, line: 44, baseType: !3750, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3815, file: !3752, line: 45, baseType: !7, size: 32, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3815, file: !3752, line: 46, baseType: !3820, size: 512, offset: 128)
!3820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 512, elements: !1085)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3758, file: !3752, line: 140, baseType: !3803, size: 64, offset: 832)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3758, file: !3752, line: 143, baseType: !3799, size: 64, offset: 896)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3758, file: !3752, line: 145, baseType: !3761, size: 64, offset: 960)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3758, file: !3752, line: 146, baseType: !3825, size: 64, offset: 1024)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!178, !3772, !3828}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3752, line: 29, size: 128, elements: !3830)
!3830 = !{!3831, !3832, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3829, file: !3752, line: 30, baseType: !7, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3829, file: !3752, line: 31, baseType: !7, size: 32, offset: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3829, file: !3752, line: 32, baseType: !3772, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3758, file: !3752, line: 148, baseType: !3835, size: 64, offset: 1088)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!178, !3772, !3160}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3751, file: !3752, line: 20, baseType: !3160, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3161, file: !80, line: 534, baseType: !516, size: 32, offset: 4992)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3161, file: !80, line: 535, baseType: !206, size: 32, offset: 5024)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3161, file: !80, line: 537, baseType: !422, offset: 5056)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3161, file: !80, line: 538, baseType: !228, size: 128, offset: 5056)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3161, file: !80, line: 540, baseType: !3844, size: 64, offset: 5184)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3846, line: 54, size: 960, elements: !3847)
!3846 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3858, !3862, !3863, !3864, !3865, !3869, !3873, !3874}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3845, file: !3846, line: 55, baseType: !459, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3845, file: !3846, line: 56, baseType: !550, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3845, file: !3846, line: 58, baseType: !3241, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3845, file: !3846, line: 59, baseType: !3241, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3845, file: !3846, line: 60, baseType: !3170, size: 64, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3845, file: !3846, line: 62, baseType: !3473, size: 64, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3845, file: !3846, line: 63, baseType: !3855, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!485, !3160, !3480}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3845, file: !3846, line: 65, baseType: !3859, size: 64, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3844}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3845, file: !3846, line: 66, baseType: !3482, size: 64, offset: 512)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3845, file: !3846, line: 68, baseType: !3491, size: 64, offset: 576)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3845, file: !3846, line: 70, baseType: !3277, size: 64, offset: 640)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3845, file: !3846, line: 71, baseType: !3866, size: 64, offset: 704)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!2446, !3160}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3845, file: !3846, line: 73, baseType: !3870, size: 64, offset: 768)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{null, !3160, !3309, !3310}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3845, file: !3846, line: 75, baseType: !3486, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3845, file: !3846, line: 77, baseType: !3585, size: 64, offset: 896)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3161, file: !80, line: 541, baseType: !3241, size: 64, offset: 5248)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3161, file: !80, line: 543, baseType: !3482, size: 64, offset: 5312)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3161, file: !80, line: 544, baseType: !3878, size: 64, offset: 5376)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3161, file: !80, line: 545, baseType: !3881, size: 64, offset: 5440)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3161, file: !80, line: 547, baseType: !218, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3161, file: !80, line: 548, baseType: !218, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3161, file: !80, line: 549, baseType: !218, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3161, file: !80, line: 550, baseType: !218, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !166, file: !147, line: 86, baseType: !3451, size: 32, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !166, file: !147, line: 87, baseType: !1881, size: 192, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !166, file: !147, line: 89, baseType: !178, size: 32, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !166, file: !147, line: 90, baseType: !178, size: 32, offset: 416)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "current_tlabel", scope: !166, file: !147, line: 91, baseType: !178, size: 32, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "tlabel_mask", scope: !166, file: !147, line: 92, baseType: !214, size: 64, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "transaction_list", scope: !166, file: !147, line: 93, baseType: !228, size: 128, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "reset_jiffies", scope: !166, file: !147, line: 94, baseType: !214, size: 64, offset: 704)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_hi", scope: !166, file: !147, line: 96, baseType: !206, size: 32, offset: 768)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_lo", scope: !166, file: !147, line: 97, baseType: !206, size: 32, offset: 800)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_cycles", scope: !166, file: !147, line: 98, baseType: !7, size: 32, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "split_timeout_jiffies", scope: !166, file: !147, line: 99, baseType: !7, size: 32, offset: 864)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !166, file: !147, line: 101, baseType: !216, size: 64, offset: 896)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "max_receive", scope: !166, file: !147, line: 102, baseType: !7, size: 32, offset: 960)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "link_speed", scope: !166, file: !147, line: 103, baseType: !178, size: 32, offset: 992)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "config_rom_generation", scope: !166, file: !147, line: 104, baseType: !178, size: 32, offset: 1024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !166, file: !147, line: 106, baseType: !422, offset: 1056)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "local_node", scope: !166, file: !147, line: 108, baseType: !3905, size: 64, offset: 1088)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_node", file: !172, line: 174, size: 320, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3906, file: !172, line: 175, baseType: !301, size: 16)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !3906, file: !172, line: 176, baseType: !159, size: 8, offset: 16)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "port_count", scope: !3906, file: !172, line: 177, baseType: !159, size: 8, offset: 24)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "link_on", scope: !3906, file: !172, line: 178, baseType: !159, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "initiated_reset", scope: !3906, file: !172, line: 179, baseType: !159, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "b_path", scope: !3906, file: !172, line: 180, baseType: !159, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "phy_speed", scope: !3906, file: !172, line: 181, baseType: !159, size: 2, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !3906, file: !172, line: 182, baseType: !159, size: 2, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3906, file: !172, line: 184, baseType: !159, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 40)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "max_hops", scope: !3906, file: !172, line: 185, baseType: !159, size: 4, offset: 44, flags: DIFlagBitField, extraData: i64 40)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !3906, file: !172, line: 186, baseType: !979, size: 32, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3906, file: !172, line: 189, baseType: !228, size: 128, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3906, file: !172, line: 192, baseType: !164, size: 64, offset: 256)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3906, file: !172, line: 194, baseType: !3922, offset: 320)
!3922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, elements: !1919)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "root_node", scope: !166, file: !147, line: 109, baseType: !3905, size: 64, offset: 1152)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "irm_node", scope: !166, file: !147, line: 110, baseType: !3905, size: 64, offset: 1216)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !166, file: !147, line: 111, baseType: !159, size: 8, offset: 1280)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "gap_count", scope: !166, file: !147, line: 112, baseType: !178, size: 32, offset: 1312)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "beta_repeaters_present", scope: !166, file: !147, line: 113, baseType: !218, size: 8, offset: 1344)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !166, file: !147, line: 115, baseType: !178, size: 32, offset: 1376)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !166, file: !147, line: 116, baseType: !228, size: 128, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "phy_receiver_list", scope: !166, file: !147, line: 118, baseType: !228, size: 128, offset: 1536)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "br_work", scope: !166, file: !147, line: 120, baseType: !3932, size: 704, offset: 1664)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !101, line: 115, size: 704, elements: !3933)
!3933 = !{!3934, !3935, !3936, !3937}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3932, file: !101, line: 116, baseType: !1906, size: 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3932, file: !101, line: 117, baseType: !3633, size: 320, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3932, file: !101, line: 120, baseType: !2672, size: 64, offset: 576)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3932, file: !101, line: 121, baseType: !178, size: 32, offset: 640)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "br_short", scope: !166, file: !147, line: 121, baseType: !218, size: 8, offset: 2368)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bm_work", scope: !166, file: !147, line: 123, baseType: !3932, size: 704, offset: 2432)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bm_retries", scope: !166, file: !147, line: 124, baseType: !178, size: 32, offset: 3136)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bm_generation", scope: !166, file: !147, line: 125, baseType: !178, size: 32, offset: 3168)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bm_node_id", scope: !166, file: !147, line: 126, baseType: !178, size: 32, offset: 3200)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bm_abdicate", scope: !166, file: !147, line: 127, baseType: !218, size: 8, offset: 3232)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "priority_budget_implemented", scope: !166, file: !147, line: 129, baseType: !218, size: 8, offset: 3240)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel_auto_allocated", scope: !166, file: !147, line: 130, baseType: !218, size: 8, offset: 3248)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel_allocated", scope: !166, file: !147, line: 132, baseType: !218, size: 8, offset: 3256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast_channel", scope: !166, file: !147, line: 133, baseType: !206, size: 32, offset: 3264)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "topology_map", scope: !166, file: !147, line: 134, baseType: !3949, size: 8192, offset: 3296)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 8192, elements: !3950)
!3950 = !{!3951}
!3951 = !DISubrange(count: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "maint_utility_register", scope: !166, file: !147, line: 136, baseType: !156, size: 32, offset: 11488)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !231)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !178)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3956)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_descriptor", file: !147, line: 374, size: 320, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3965, !3966}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3960, file: !147, line: 375, baseType: !228, size: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3960, file: !147, line: 376, baseType: !181, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !3960, file: !147, line: 377, baseType: !206, size: 32, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3960, file: !147, line: 378, baseType: !206, size: 32, offset: 224)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3960, file: !147, line: 379, baseType: !3967, size: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3954)
!3971 = !{!3972, !3977, !3979, !0, !3981, !3983, !3985, !3990, !3993, !3995}
!3972 = !DIGlobalVariableExpression(var: !3973, expr: !DIExpression())
!3973 = distinct !DIGlobalVariable(name: "index", scope: !3974, file: !3, line: 518, type: !693, isLocal: true, isDefinition: true)
!3974 = distinct !DISubprogram(name: "fw_card_initialize", scope: !3, file: !3, line: 514, type: !3975, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{null, !165, !169, !3160}
!3977 = !DIGlobalVariableExpression(var: !3978, expr: !DIExpression())
!3978 = distinct !DIGlobalVariable(name: "descriptor_count", scope: !2, file: !3, line: 59, type: !178, isLocal: true, isDefinition: true)
!3979 = !DIGlobalVariableExpression(var: !3980, expr: !DIExpression())
!3980 = distinct !DIGlobalVariable(name: "tmp_config_rom", scope: !2, file: !3, line: 61, type: !3949, isLocal: true, isDefinition: true)
!3981 = !DIGlobalVariableExpression(var: !3982, expr: !DIExpression())
!3982 = distinct !DIGlobalVariable(name: "config_rom_length", scope: !2, file: !3, line: 63, type: !181, isLocal: true, isDefinition: true)
!3983 = !DIGlobalVariableExpression(var: !3984, expr: !DIExpression())
!3984 = distinct !DIGlobalVariable(name: "descriptor_list", scope: !2, file: !3, line: 58, type: !228, isLocal: true, isDefinition: true)
!3985 = !DIGlobalVariableExpression(var: !3986, expr: !DIExpression())
!3986 = distinct !DIGlobalVariable(name: "__key", scope: !3987, file: !1882, line: 88, type: !565, isLocal: true, isDefinition: true)
!3987 = distinct !DISubprogram(name: "__init_completion", scope: !1882, file: !1882, line: 85, type: !3988, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{null, !2017}
!3990 = !DIGlobalVariableExpression(var: !3991, expr: !DIExpression())
!3991 = distinct !DIGlobalVariable(name: "gap_count_table", scope: !2, file: !3, line: 276, type: !3992, isLocal: true, isDefinition: true)
!3992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 128, elements: !2058)
!3993 = !DIGlobalVariableExpression(var: !3994, expr: !DIExpression())
!3994 = distinct !DIGlobalVariable(name: "card_list", scope: !2, file: !3, line: 56, type: !228, isLocal: true, isDefinition: true)
!3995 = !DIGlobalVariableExpression(var: !3996, expr: !DIExpression())
!3996 = distinct !DIGlobalVariable(name: "dummy_driver_template", scope: !2, file: !3, line: 645, type: !170, isLocal: true, isDefinition: true)
!3997 = !{!"rsp"}
!3998 = !{i32 7, !"Dwarf Version", i32 4}
!3999 = !{i32 2, !"Debug Info Version", i32 3}
!4000 = !{i32 1, !"wchar_size", i32 2}
!4001 = !{i32 1, !"Code Model", i32 2}
!4002 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4003 = distinct !DISubprogram(name: "fw_err", scope: !3, file: !3, line: 40, type: !4004, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !4006, !459, null}
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!4008 = !DILocalVariable(name: "card", arg: 1, scope: !4003, file: !3, line: 40, type: !4006)
!4009 = !DILocation(line: 40, column: 1, scope: !4003)
!4010 = !DILocalVariable(name: "fmt", arg: 2, scope: !4003, file: !3, line: 40, type: !459)
!4011 = !DILocalVariable(name: "vaf", scope: !4003, file: !3, line: 40, type: !4012)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4013, line: 90, size: 128, elements: !4014)
!4013 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!4014 = !{!4015, !4016}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4012, file: !4013, line: 91, baseType: !459, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4012, file: !4013, line: 92, baseType: !4017, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4019, line: 99, baseType: !4020)
!4019 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4019, line: 40, baseType: !4021)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 40, baseType: !4022)
!4022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4023, size: 192, elements: !1131)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 40, size: 192, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4023, file: !3, line: 40, baseType: !7, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4023, file: !3, line: 40, baseType: !7, size: 32, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4023, file: !3, line: 40, baseType: !164, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4023, file: !3, line: 40, baseType: !164, size: 64, offset: 128)
!4029 = !DILocalVariable(name: "args", scope: !4003, file: !3, line: 40, type: !4018)
!4030 = distinct !DISubprogram(name: "dev_name", scope: !80, file: !80, line: 609, type: !4031, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!459, !3778}
!4033 = !DILocalVariable(name: "dev", arg: 1, scope: !4030, file: !80, line: 609, type: !3778)
!4034 = !DILocation(line: 609, column: 57, scope: !4030)
!4035 = !DILocation(line: 612, column: 6, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4030, file: !80, line: 612, column: 6)
!4037 = !DILocation(line: 612, column: 11, scope: !4036)
!4038 = !DILocation(line: 612, column: 6, scope: !4030)
!4039 = !DILocation(line: 613, column: 10, scope: !4036)
!4040 = !DILocation(line: 613, column: 15, scope: !4036)
!4041 = !DILocation(line: 613, column: 3, scope: !4036)
!4042 = !DILocation(line: 615, column: 23, scope: !4030)
!4043 = !DILocation(line: 615, column: 28, scope: !4030)
!4044 = !DILocation(line: 615, column: 9, scope: !4030)
!4045 = !DILocation(line: 615, column: 2, scope: !4030)
!4046 = !DILocation(line: 616, column: 1, scope: !4030)
!4047 = distinct !DISubprogram(name: "fw_notice", scope: !3, file: !3, line: 41, type: !4004, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4048 = !DILocalVariable(name: "card", arg: 1, scope: !4047, file: !3, line: 41, type: !4006)
!4049 = !DILocation(line: 41, column: 1, scope: !4047)
!4050 = !DILocalVariable(name: "fmt", arg: 2, scope: !4047, file: !3, line: 41, type: !459)
!4051 = !DILocalVariable(name: "vaf", scope: !4047, file: !3, line: 41, type: !4012)
!4052 = !DILocalVariable(name: "args", scope: !4047, file: !3, line: 41, type: !4018)
!4053 = distinct !DISubprogram(name: "fw_compute_block_crc", scope: !3, file: !3, line: 43, type: !4054, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!178, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!4057 = !DILocalVariable(name: "block", arg: 1, scope: !4053, file: !3, line: 43, type: !4056)
!4058 = !DILocation(line: 43, column: 34, scope: !4053)
!4059 = !DILocalVariable(name: "length", scope: !4053, file: !3, line: 45, type: !178)
!4060 = !DILocation(line: 45, column: 6, scope: !4053)
!4061 = !DILocalVariable(name: "crc", scope: !4053, file: !3, line: 46, type: !301)
!4062 = !DILocation(line: 46, column: 6, scope: !4053)
!4063 = !DILocation(line: 48, column: 12, scope: !4053)
!4064 = !DILocation(line: 48, column: 34, scope: !4053)
!4065 = !DILocation(line: 48, column: 41, scope: !4053)
!4066 = !DILocation(line: 48, column: 9, scope: !4053)
!4067 = !DILocation(line: 49, column: 28, scope: !4053)
!4068 = !DILocation(line: 49, column: 21, scope: !4053)
!4069 = !DILocation(line: 49, column: 38, scope: !4053)
!4070 = !DILocation(line: 49, column: 45, scope: !4053)
!4071 = !DILocation(line: 49, column: 8, scope: !4053)
!4072 = !DILocation(line: 49, column: 6, scope: !4053)
!4073 = !DILocation(line: 50, column: 12, scope: !4053)
!4074 = !DILocation(line: 50, column: 3, scope: !4053)
!4075 = !DILocation(line: 50, column: 9, scope: !4053)
!4076 = !DILocation(line: 52, column: 9, scope: !4053)
!4077 = !DILocation(line: 52, column: 2, scope: !4053)
!4078 = distinct !DISubprogram(name: "__fswab32", scope: !4079, file: !4079, line: 57, type: !4080, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4079 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!154, !154}
!4082 = !DILocalVariable(name: "val", arg: 1, scope: !4078, file: !4079, line: 57, type: !154)
!4083 = !DILocation(line: 57, column: 57, scope: !4078)
!4084 = !DILocation(line: 60, column: 23, scope: !4078)
!4085 = !DILocation(line: 60, column: 9, scope: !4078)
!4086 = !DILocation(line: 60, column: 2, scope: !4078)
!4087 = distinct !DISubprogram(name: "fw_core_add_descriptor", scope: !3, file: !3, line: 167, type: !4088, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!178, !3959}
!4090 = !DILocalVariable(name: "desc", arg: 1, scope: !4087, file: !3, line: 167, type: !3959)
!4091 = !DILocation(line: 167, column: 50, scope: !4087)
!4092 = !DILocalVariable(name: "i", scope: !4087, file: !3, line: 169, type: !181)
!4093 = !DILocation(line: 169, column: 9, scope: !4087)
!4094 = !DILocalVariable(name: "ret", scope: !4087, file: !3, line: 170, type: !178)
!4095 = !DILocation(line: 170, column: 6, scope: !4087)
!4096 = !DILocation(line: 177, column: 4, scope: !4087)
!4097 = !DILocation(line: 178, column: 2, scope: !4087)
!4098 = !DILocation(line: 178, column: 9, scope: !4087)
!4099 = !DILocation(line: 178, column: 13, scope: !4087)
!4100 = !DILocation(line: 178, column: 19, scope: !4087)
!4101 = !DILocation(line: 178, column: 11, scope: !4087)
!4102 = !DILocation(line: 179, column: 9, scope: !4087)
!4103 = !DILocation(line: 179, column: 15, scope: !4087)
!4104 = !DILocation(line: 179, column: 20, scope: !4087)
!4105 = !DILocation(line: 179, column: 23, scope: !4087)
!4106 = !DILocation(line: 179, column: 30, scope: !4087)
!4107 = !DILocation(line: 179, column: 8, scope: !4087)
!4108 = !DILocation(line: 179, column: 5, scope: !4087)
!4109 = distinct !{!4109, !4097, !4110}
!4110 = !DILocation(line: 179, column: 32, scope: !4087)
!4111 = !DILocation(line: 181, column: 6, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 181, column: 6)
!4113 = !DILocation(line: 181, column: 11, scope: !4112)
!4114 = !DILocation(line: 181, column: 17, scope: !4112)
!4115 = !DILocation(line: 181, column: 8, scope: !4112)
!4116 = !DILocation(line: 181, column: 6, scope: !4087)
!4117 = !DILocation(line: 182, column: 3, scope: !4112)
!4118 = !DILocation(line: 184, column: 2, scope: !4087)
!4119 = !DILocation(line: 186, column: 6, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 186, column: 6)
!4121 = !DILocation(line: 186, column: 41, scope: !4120)
!4122 = !DILocation(line: 186, column: 26, scope: !4120)
!4123 = !DILocation(line: 186, column: 24, scope: !4120)
!4124 = !DILocation(line: 186, column: 47, scope: !4120)
!4125 = !DILocation(line: 186, column: 6, scope: !4087)
!4126 = !DILocation(line: 187, column: 7, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 186, column: 54)
!4128 = !DILocation(line: 188, column: 2, scope: !4127)
!4129 = !DILocation(line: 189, column: 18, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 188, column: 9)
!4131 = !DILocation(line: 189, column: 24, scope: !4130)
!4132 = !DILocation(line: 189, column: 3, scope: !4130)
!4133 = !DILocation(line: 190, column: 39, scope: !4130)
!4134 = !DILocation(line: 190, column: 24, scope: !4130)
!4135 = !DILocation(line: 190, column: 21, scope: !4130)
!4136 = !DILocation(line: 191, column: 19, scope: !4130)
!4137 = !DILocation(line: 192, column: 7, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 192, column: 7)
!4139 = !DILocation(line: 192, column: 13, scope: !4138)
!4140 = !DILocation(line: 192, column: 23, scope: !4138)
!4141 = !DILocation(line: 192, column: 7, scope: !4130)
!4142 = !DILocation(line: 193, column: 20, scope: !4138)
!4143 = !DILocation(line: 193, column: 4, scope: !4138)
!4144 = !DILocation(line: 194, column: 3, scope: !4130)
!4145 = !DILocation(line: 195, column: 7, scope: !4130)
!4146 = !DILocation(line: 198, column: 2, scope: !4087)
!4147 = !DILocation(line: 200, column: 9, scope: !4087)
!4148 = !DILocation(line: 200, column: 2, scope: !4087)
!4149 = !DILocation(line: 201, column: 1, scope: !4087)
!4150 = distinct !DISubprogram(name: "required_space", scope: !3, file: !3, line: 161, type: !4151, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!181, !3959}
!4153 = !DILocalVariable(name: "desc", arg: 1, scope: !4150, file: !3, line: 161, type: !3959)
!4154 = !DILocation(line: 161, column: 52, scope: !4150)
!4155 = !DILocation(line: 164, column: 9, scope: !4150)
!4156 = !DILocation(line: 164, column: 15, scope: !4150)
!4157 = !DILocation(line: 164, column: 22, scope: !4150)
!4158 = !DILocation(line: 164, column: 29, scope: !4150)
!4159 = !DILocation(line: 164, column: 35, scope: !4150)
!4160 = !DILocation(line: 164, column: 45, scope: !4150)
!4161 = !DILocation(line: 164, column: 28, scope: !4150)
!4162 = !DILocation(line: 164, column: 26, scope: !4150)
!4163 = !DILocation(line: 164, column: 2, scope: !4150)
!4164 = distinct !DISubprogram(name: "list_add_tail", scope: !4165, file: !4165, line: 98, type: !4166, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4165 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !231, !231}
!4168 = !DILocalVariable(name: "new", arg: 1, scope: !4164, file: !4165, line: 98, type: !231)
!4169 = !DILocation(line: 98, column: 52, scope: !4164)
!4170 = !DILocalVariable(name: "head", arg: 2, scope: !4164, file: !4165, line: 98, type: !231)
!4171 = !DILocation(line: 98, column: 75, scope: !4164)
!4172 = !DILocation(line: 100, column: 13, scope: !4164)
!4173 = !DILocation(line: 100, column: 18, scope: !4164)
!4174 = !DILocation(line: 100, column: 24, scope: !4164)
!4175 = !DILocation(line: 100, column: 30, scope: !4164)
!4176 = !DILocation(line: 100, column: 2, scope: !4164)
!4177 = !DILocation(line: 101, column: 1, scope: !4164)
!4178 = distinct !DISubprogram(name: "update_config_roms", scope: !3, file: !3, line: 150, type: !2202, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4179 = !DILocalVariable(name: "card", scope: !4178, file: !3, line: 152, type: !165)
!4180 = !DILocation(line: 152, column: 18, scope: !4178)
!4181 = !DILocalVariable(name: "__mptr", scope: !4182, file: !3, line: 154, type: !164)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 154, column: 2)
!4183 = distinct !DILexicalBlock(scope: !4178, file: !3, line: 154, column: 2)
!4184 = !DILocation(line: 154, column: 2, scope: !4182)
!4185 = !DILocation(line: 154, column: 2, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 154, column: 2)
!4187 = !DILocation(line: 154, column: 2, scope: !4183)
!4188 = !DILocation(line: 154, column: 2, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 154, column: 2)
!4190 = !DILocation(line: 155, column: 23, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 154, column: 47)
!4192 = !DILocation(line: 155, column: 3, scope: !4191)
!4193 = !DILocation(line: 156, column: 3, scope: !4191)
!4194 = !DILocation(line: 156, column: 9, scope: !4191)
!4195 = !DILocation(line: 156, column: 17, scope: !4191)
!4196 = !DILocation(line: 156, column: 32, scope: !4191)
!4197 = !DILocation(line: 157, column: 11, scope: !4191)
!4198 = !DILocation(line: 158, column: 2, scope: !4191)
!4199 = !DILocalVariable(name: "__mptr", scope: !4200, file: !3, line: 154, type: !164)
!4200 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 154, column: 2)
!4201 = !DILocation(line: 154, column: 2, scope: !4200)
!4202 = !DILocation(line: 154, column: 2, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 154, column: 2)
!4204 = distinct !{!4204, !4187, !4205}
!4205 = !DILocation(line: 158, column: 2, scope: !4183)
!4206 = !DILocation(line: 159, column: 1, scope: !4178)
!4207 = distinct !DISubprogram(name: "fw_core_remove_descriptor", scope: !3, file: !3, line: 204, type: !4208, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{null, !3959}
!4210 = !DILocalVariable(name: "desc", arg: 1, scope: !4207, file: !3, line: 204, type: !3959)
!4211 = !DILocation(line: 204, column: 54, scope: !4207)
!4212 = !DILocation(line: 206, column: 2, scope: !4207)
!4213 = !DILocation(line: 208, column: 12, scope: !4207)
!4214 = !DILocation(line: 208, column: 18, scope: !4207)
!4215 = !DILocation(line: 208, column: 2, scope: !4207)
!4216 = !DILocation(line: 209, column: 38, scope: !4207)
!4217 = !DILocation(line: 209, column: 23, scope: !4207)
!4218 = !DILocation(line: 209, column: 20, scope: !4207)
!4219 = !DILocation(line: 210, column: 18, scope: !4207)
!4220 = !DILocation(line: 211, column: 6, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 211, column: 6)
!4222 = !DILocation(line: 211, column: 12, scope: !4221)
!4223 = !DILocation(line: 211, column: 22, scope: !4221)
!4224 = !DILocation(line: 211, column: 6, scope: !4207)
!4225 = !DILocation(line: 212, column: 19, scope: !4221)
!4226 = !DILocation(line: 212, column: 3, scope: !4221)
!4227 = !DILocation(line: 213, column: 2, scope: !4207)
!4228 = !DILocation(line: 215, column: 2, scope: !4207)
!4229 = !DILocation(line: 216, column: 1, scope: !4207)
!4230 = distinct !DISubprogram(name: "list_del", scope: !4165, file: !4165, line: 144, type: !4231, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !231}
!4233 = !DILocalVariable(name: "entry", arg: 1, scope: !4230, file: !4165, line: 144, type: !231)
!4234 = !DILocation(line: 144, column: 47, scope: !4230)
!4235 = !DILocation(line: 146, column: 19, scope: !4230)
!4236 = !DILocation(line: 146, column: 2, scope: !4230)
!4237 = !DILocation(line: 147, column: 2, scope: !4230)
!4238 = !DILocation(line: 147, column: 9, scope: !4230)
!4239 = !DILocation(line: 147, column: 14, scope: !4230)
!4240 = !DILocation(line: 148, column: 2, scope: !4230)
!4241 = !DILocation(line: 148, column: 9, scope: !4230)
!4242 = !DILocation(line: 148, column: 14, scope: !4230)
!4243 = !DILocation(line: 149, column: 1, scope: !4230)
!4244 = distinct !DISubprogram(name: "fw_schedule_bus_reset", scope: !3, file: !3, line: 227, type: !4245, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{null, !165, !218, !218}
!4247 = !DILocalVariable(name: "card", arg: 1, scope: !4244, file: !3, line: 227, type: !165)
!4248 = !DILocation(line: 227, column: 44, scope: !4244)
!4249 = !DILocalVariable(name: "delayed", arg: 2, scope: !4244, file: !3, line: 227, type: !218)
!4250 = !DILocation(line: 227, column: 55, scope: !4244)
!4251 = !DILocalVariable(name: "short_reset", arg: 3, scope: !4244, file: !3, line: 227, type: !218)
!4252 = !DILocation(line: 227, column: 69, scope: !4244)
!4253 = !DILocation(line: 230, column: 19, scope: !4244)
!4254 = !DILocation(line: 230, column: 2, scope: !4244)
!4255 = !DILocation(line: 230, column: 8, scope: !4244)
!4256 = !DILocation(line: 230, column: 17, scope: !4244)
!4257 = !DILocation(line: 233, column: 14, scope: !4244)
!4258 = !DILocation(line: 233, column: 2, scope: !4244)
!4259 = !DILocation(line: 234, column: 26, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 234, column: 6)
!4261 = !DILocation(line: 234, column: 41, scope: !4260)
!4262 = !DILocation(line: 234, column: 47, scope: !4260)
!4263 = !DILocation(line: 235, column: 5, scope: !4260)
!4264 = !DILocation(line: 234, column: 7, scope: !4260)
!4265 = !DILocation(line: 234, column: 6, scope: !4244)
!4266 = !DILocation(line: 236, column: 15, scope: !4260)
!4267 = !DILocation(line: 236, column: 3, scope: !4260)
!4268 = !DILocation(line: 237, column: 1, scope: !4244)
!4269 = distinct !DISubprogram(name: "fw_card_get", scope: !147, file: !147, line: 139, type: !4270, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!165, !165}
!4272 = !DILocalVariable(name: "card", arg: 1, scope: !4269, file: !147, line: 139, type: !165)
!4273 = !DILocation(line: 139, column: 59, scope: !4269)
!4274 = !DILocation(line: 141, column: 12, scope: !4269)
!4275 = !DILocation(line: 141, column: 18, scope: !4269)
!4276 = !DILocation(line: 141, column: 2, scope: !4269)
!4277 = !DILocation(line: 143, column: 9, scope: !4269)
!4278 = !DILocation(line: 143, column: 2, scope: !4269)
!4279 = distinct !DISubprogram(name: "queue_delayed_work", scope: !101, file: !101, line: 518, type: !4280, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!218, !2672, !4282, !163}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!4283 = !DILocalVariable(name: "wq", arg: 1, scope: !4279, file: !101, line: 518, type: !2672)
!4284 = !DILocation(line: 518, column: 64, scope: !4279)
!4285 = !DILocalVariable(name: "dwork", arg: 2, scope: !4279, file: !101, line: 519, type: !4282)
!4286 = !DILocation(line: 519, column: 32, scope: !4279)
!4287 = !DILocalVariable(name: "delay", arg: 3, scope: !4279, file: !101, line: 520, type: !163)
!4288 = !DILocation(line: 520, column: 25, scope: !4279)
!4289 = !DILocation(line: 522, column: 49, scope: !4279)
!4290 = !DILocation(line: 522, column: 53, scope: !4279)
!4291 = !DILocation(line: 522, column: 60, scope: !4279)
!4292 = !DILocation(line: 522, column: 9, scope: !4279)
!4293 = !DILocation(line: 522, column: 2, scope: !4279)
!4294 = distinct !DISubprogram(name: "fw_card_put", scope: !147, file: !147, line: 148, type: !4295, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !165}
!4297 = !DILocalVariable(name: "card", arg: 1, scope: !4294, file: !147, line: 148, type: !165)
!4298 = !DILocation(line: 148, column: 48, scope: !4294)
!4299 = !DILocation(line: 150, column: 12, scope: !4294)
!4300 = !DILocation(line: 150, column: 18, scope: !4294)
!4301 = !DILocation(line: 150, column: 2, scope: !4294)
!4302 = !DILocation(line: 151, column: 1, scope: !4294)
!4303 = distinct !DISubprogram(name: "fw_schedule_bm_work", scope: !3, file: !3, line: 280, type: !4304, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !165, !163}
!4306 = !DILocalVariable(name: "card", arg: 1, scope: !4303, file: !3, line: 280, type: !165)
!4307 = !DILocation(line: 280, column: 42, scope: !4303)
!4308 = !DILocalVariable(name: "delay", arg: 2, scope: !4303, file: !3, line: 280, type: !163)
!4309 = !DILocation(line: 280, column: 62, scope: !4303)
!4310 = !DILocation(line: 282, column: 14, scope: !4303)
!4311 = !DILocation(line: 282, column: 2, scope: !4303)
!4312 = !DILocation(line: 283, column: 30, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 283, column: 6)
!4314 = !DILocation(line: 283, column: 36, scope: !4313)
!4315 = !DILocation(line: 283, column: 45, scope: !4313)
!4316 = !DILocation(line: 283, column: 7, scope: !4313)
!4317 = !DILocation(line: 283, column: 6, scope: !4303)
!4318 = !DILocation(line: 284, column: 15, scope: !4313)
!4319 = !DILocation(line: 284, column: 3, scope: !4313)
!4320 = !DILocation(line: 285, column: 1, scope: !4303)
!4321 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !101, file: !101, line: 623, type: !4322, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!218, !4282, !163}
!4324 = !DILocalVariable(name: "dwork", arg: 1, scope: !4321, file: !101, line: 623, type: !4282)
!4325 = !DILocation(line: 623, column: 63, scope: !4321)
!4326 = !DILocalVariable(name: "delay", arg: 2, scope: !4321, file: !101, line: 624, type: !163)
!4327 = !DILocation(line: 624, column: 21, scope: !4321)
!4328 = !DILocation(line: 626, column: 28, scope: !4321)
!4329 = !DILocation(line: 626, column: 39, scope: !4321)
!4330 = !DILocation(line: 626, column: 46, scope: !4321)
!4331 = !DILocation(line: 626, column: 9, scope: !4321)
!4332 = !DILocation(line: 626, column: 2, scope: !4321)
!4333 = !DILocalVariable(name: "lock", arg: 1, scope: !4334, file: !4335, line: 327, type: !1228)
!4334 = distinct !DISubprogram(name: "spinlock_check", scope: !4335, file: !4335, line: 327, type: !4336, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4335 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!4338, !1228}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!4339 = !DILocation(line: 327, column: 67, scope: !4334, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 537, column: 2, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 537, column: 2)
!4342 = !DILocalVariable(name: "i", arg: 1, scope: !4343, file: !4344, line: 163, type: !178)
!4343 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !4344, file: !4344, line: 163, type: !4345, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4344 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!178, !178, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!4348 = !DILocation(line: 163, column: 55, scope: !4343, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 286, column: 9, scope: !4350, inlinedAt: !4354)
!4350 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !4351, file: !4351, line: 284, type: !4352, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4351 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!178, !4347}
!4354 = distinct !DILocation(line: 251, column: 9, scope: !4355, inlinedAt: !4357)
!4355 = distinct !DISubprogram(name: "atomic_inc_return", scope: !4356, file: !4356, line: 248, type: !4352, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4356 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4357 = distinct !DILocation(line: 520, column: 16, scope: !3974)
!4358 = !DILocalVariable(name: "v", arg: 2, scope: !4343, file: !4344, line: 163, type: !4347)
!4359 = !DILocation(line: 163, column: 68, scope: !4343, inlinedAt: !4349)
!4360 = !DILocalVariable(name: "__ret", scope: !4361, file: !4344, line: 165, type: !178)
!4361 = distinct !DILexicalBlock(scope: !4343, file: !4344, line: 165, column: 13)
!4362 = !DILocation(line: 165, column: 13, scope: !4361, inlinedAt: !4349)
!4363 = !DILocalVariable(name: "v", arg: 1, scope: !4350, file: !4351, line: 284, type: !4347)
!4364 = !DILocation(line: 284, column: 34, scope: !4350, inlinedAt: !4354)
!4365 = !DILocalVariable(name: "v", arg: 1, scope: !4366, file: !4367, line: 99, type: !4370)
!4366 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4367, file: !4367, line: 99, type: !4368, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4367 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4370, !181}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4372)
!4372 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4373 = !DILocation(line: 99, column: 79, scope: !4366, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 250, column: 2, scope: !4355, inlinedAt: !4357)
!4375 = !DILocalVariable(name: "size", arg: 2, scope: !4366, file: !4367, line: 99, type: !181)
!4376 = !DILocation(line: 99, column: 89, scope: !4366, inlinedAt: !4374)
!4377 = !DILocalVariable(name: "v", arg: 1, scope: !4355, file: !4356, line: 248, type: !4347)
!4378 = !DILocation(line: 248, column: 29, scope: !4355, inlinedAt: !4357)
!4379 = !DILocalVariable(name: "card", arg: 1, scope: !3974, file: !3, line: 514, type: !165)
!4380 = !DILocation(line: 514, column: 41, scope: !3974)
!4381 = !DILocalVariable(name: "driver", arg: 2, scope: !3974, file: !3, line: 515, type: !169)
!4382 = !DILocation(line: 515, column: 33, scope: !3974)
!4383 = !DILocalVariable(name: "device", arg: 3, scope: !3974, file: !3, line: 516, type: !3160)
!4384 = !DILocation(line: 516, column: 19, scope: !3974)
!4385 = !DILocation(line: 250, column: 31, scope: !4355, inlinedAt: !4357)
!4386 = !DILocation(line: 101, column: 20, scope: !4366, inlinedAt: !4374)
!4387 = !DILocation(line: 101, column: 23, scope: !4366, inlinedAt: !4374)
!4388 = !DILocation(line: 101, column: 2, scope: !4366, inlinedAt: !4374)
!4389 = !DILocation(line: 102, column: 2, scope: !4366, inlinedAt: !4374)
!4390 = !DILocation(line: 251, column: 32, scope: !4355, inlinedAt: !4357)
!4391 = !DILocation(line: 286, column: 35, scope: !4350, inlinedAt: !4354)
!4392 = !DILocation(line: 165, column: 9, scope: !4343, inlinedAt: !4349)
!4393 = !{i32 -2146519285}
!4394 = !DILocation(line: 165, column: 11, scope: !4343, inlinedAt: !4349)
!4395 = !DILocation(line: 520, column: 2, scope: !3974)
!4396 = !DILocation(line: 520, column: 8, scope: !3974)
!4397 = !DILocation(line: 520, column: 14, scope: !3974)
!4398 = !DILocation(line: 521, column: 17, scope: !3974)
!4399 = !DILocation(line: 521, column: 2, scope: !3974)
!4400 = !DILocation(line: 521, column: 8, scope: !3974)
!4401 = !DILocation(line: 521, column: 15, scope: !3974)
!4402 = !DILocation(line: 522, column: 17, scope: !3974)
!4403 = !DILocation(line: 522, column: 2, scope: !3974)
!4404 = !DILocation(line: 522, column: 8, scope: !3974)
!4405 = !DILocation(line: 522, column: 15, scope: !3974)
!4406 = !DILocation(line: 523, column: 2, scope: !3974)
!4407 = !DILocation(line: 523, column: 8, scope: !3974)
!4408 = !DILocation(line: 523, column: 23, scope: !3974)
!4409 = !DILocation(line: 524, column: 2, scope: !3974)
!4410 = !DILocation(line: 524, column: 8, scope: !3974)
!4411 = !DILocation(line: 524, column: 20, scope: !3974)
!4412 = !DILocation(line: 525, column: 2, scope: !3974)
!4413 = !DILocation(line: 525, column: 8, scope: !3974)
!4414 = !DILocation(line: 525, column: 25, scope: !3974)
!4415 = !DILocation(line: 526, column: 2, scope: !3974)
!4416 = !DILocation(line: 526, column: 8, scope: !3974)
!4417 = !DILocation(line: 526, column: 25, scope: !3974)
!4418 = !DILocation(line: 527, column: 2, scope: !3974)
!4419 = !DILocation(line: 527, column: 8, scope: !3974)
!4420 = !DILocation(line: 527, column: 29, scope: !3974)
!4421 = !DILocation(line: 528, column: 2, scope: !3974)
!4422 = !DILocation(line: 528, column: 8, scope: !3974)
!4423 = !DILocation(line: 528, column: 30, scope: !3974)
!4424 = !DILocation(line: 530, column: 2, scope: !3974)
!4425 = !DILocation(line: 530, column: 8, scope: !3974)
!4426 = !DILocation(line: 530, column: 14, scope: !3974)
!4427 = !DILocation(line: 531, column: 2, scope: !3974)
!4428 = !DILocation(line: 531, column: 8, scope: !3974)
!4429 = !DILocation(line: 531, column: 26, scope: !3974)
!4430 = !DILocation(line: 533, column: 13, scope: !3974)
!4431 = !DILocation(line: 533, column: 19, scope: !3974)
!4432 = !DILocation(line: 533, column: 2, scope: !3974)
!4433 = !DILocation(line: 534, column: 2, scope: !3974)
!4434 = !DILocation(line: 535, column: 18, scope: !3974)
!4435 = !DILocation(line: 535, column: 24, scope: !3974)
!4436 = !DILocation(line: 535, column: 2, scope: !3974)
!4437 = !DILocation(line: 536, column: 18, scope: !3974)
!4438 = !DILocation(line: 536, column: 24, scope: !3974)
!4439 = !DILocation(line: 536, column: 2, scope: !3974)
!4440 = !DILocation(line: 537, column: 2, scope: !3974)
!4441 = !DILocation(line: 537, column: 2, scope: !4341)
!4442 = !DILocation(line: 329, column: 10, scope: !4334, inlinedAt: !4340)
!4443 = !DILocation(line: 329, column: 16, scope: !4334, inlinedAt: !4340)
!4444 = !DILocation(line: 539, column: 2, scope: !3974)
!4445 = !DILocation(line: 539, column: 8, scope: !3974)
!4446 = !DILocation(line: 539, column: 19, scope: !3974)
!4447 = !DILocation(line: 541, column: 2, scope: !3974)
!4448 = !DILocation(line: 541, column: 2, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 541, column: 2)
!4450 = !DILocation(line: 541, column: 2, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 541, column: 2)
!4452 = !DILocation(line: 542, column: 2, scope: !3974)
!4453 = !DILocation(line: 542, column: 2, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 542, column: 2)
!4455 = !DILocation(line: 542, column: 2, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 542, column: 2)
!4457 = !DILocation(line: 543, column: 1, scope: !3974)
!4458 = distinct !DISubprogram(name: "kref_init", scope: !3452, file: !3452, line: 29, type: !4459, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{null, !4461}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!4462 = !DILocalVariable(name: "kref", arg: 1, scope: !4458, file: !3452, line: 29, type: !4461)
!4463 = !DILocation(line: 29, column: 43, scope: !4458)
!4464 = !DILocation(line: 31, column: 16, scope: !4458)
!4465 = !DILocation(line: 31, column: 22, scope: !4458)
!4466 = !DILocation(line: 31, column: 2, scope: !4458)
!4467 = !DILocation(line: 32, column: 1, scope: !4458)
!4468 = !DILocalVariable(name: "x", arg: 1, scope: !3987, file: !1882, line: 85, type: !2017)
!4469 = !DILocation(line: 85, column: 57, scope: !3987)
!4470 = !DILocation(line: 87, column: 2, scope: !3987)
!4471 = !DILocation(line: 87, column: 5, scope: !3987)
!4472 = !DILocation(line: 87, column: 10, scope: !3987)
!4473 = !DILocation(line: 88, column: 2, scope: !3987)
!4474 = !DILocation(line: 88, column: 2, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !3987, file: !1882, line: 88, column: 2)
!4476 = !DILocation(line: 89, column: 1, scope: !3987)
!4477 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4165, file: !4165, line: 33, type: !4231, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4478 = !DILocalVariable(name: "list", arg: 1, scope: !4477, file: !4165, line: 33, type: !231)
!4479 = !DILocation(line: 33, column: 53, scope: !4477)
!4480 = !DILocation(line: 35, column: 2, scope: !4477)
!4481 = !DILocation(line: 35, column: 2, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4477, file: !4165, line: 35, column: 2)
!4483 = !DILocation(line: 35, column: 2, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4482, file: !4165, line: 35, column: 2)
!4485 = !DILocation(line: 35, column: 2, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4482, file: !4165, line: 35, column: 2)
!4487 = !DILocation(line: 36, column: 15, scope: !4477)
!4488 = !DILocation(line: 36, column: 2, scope: !4477)
!4489 = !DILocation(line: 36, column: 8, scope: !4477)
!4490 = !DILocation(line: 36, column: 13, scope: !4477)
!4491 = !DILocation(line: 37, column: 1, scope: !4477)
!4492 = distinct !DISubprogram(name: "__init_work", scope: !101, file: !101, line: 215, type: !4493, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !1915, !178}
!4495 = !DILocalVariable(name: "work", arg: 1, scope: !4492, file: !101, line: 215, type: !1915)
!4496 = !DILocation(line: 215, column: 52, scope: !4492)
!4497 = !DILocalVariable(name: "onstack", arg: 2, scope: !4492, file: !101, line: 215, type: !178)
!4498 = !DILocation(line: 215, column: 62, scope: !4492)
!4499 = !DILocation(line: 215, column: 73, scope: !4492)
!4500 = distinct !DISubprogram(name: "br_work", scope: !3, file: !3, line: 240, type: !1913, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4501 = !DILocalVariable(name: "work", arg: 1, scope: !4500, file: !3, line: 240, type: !1915)
!4502 = !DILocation(line: 240, column: 41, scope: !4500)
!4503 = !DILocalVariable(name: "card", scope: !4500, file: !3, line: 242, type: !165)
!4504 = !DILocation(line: 242, column: 18, scope: !4500)
!4505 = !DILocalVariable(name: "__mptr", scope: !4506, file: !3, line: 242, type: !164)
!4506 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 242, column: 25)
!4507 = !DILocation(line: 242, column: 25, scope: !4506)
!4508 = !DILocation(line: 242, column: 25, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 242, column: 25)
!4510 = !DILocation(line: 245, column: 6, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 245, column: 6)
!4512 = !DILocation(line: 245, column: 12, scope: !4511)
!4513 = !DILocation(line: 245, column: 26, scope: !4511)
!4514 = !DILocation(line: 245, column: 31, scope: !4511)
!4515 = !DILocation(line: 246, column: 6, scope: !4511)
!4516 = !DILocation(line: 245, column: 6, scope: !4500)
!4517 = !DILocation(line: 247, column: 27, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 247, column: 7)
!4519 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 246, column: 69)
!4520 = !DILocation(line: 247, column: 42, scope: !4518)
!4521 = !DILocation(line: 247, column: 48, scope: !4518)
!4522 = !DILocation(line: 247, column: 8, scope: !4518)
!4523 = !DILocation(line: 247, column: 7, scope: !4519)
!4524 = !DILocation(line: 248, column: 16, scope: !4518)
!4525 = !DILocation(line: 248, column: 4, scope: !4518)
!4526 = !DILocation(line: 249, column: 3, scope: !4519)
!4527 = !DILocation(line: 252, column: 21, scope: !4500)
!4528 = !DILocation(line: 252, column: 53, scope: !4500)
!4529 = !DILocation(line: 252, column: 59, scope: !4500)
!4530 = !DILocation(line: 252, column: 2, scope: !4500)
!4531 = !DILocation(line: 254, column: 12, scope: !4500)
!4532 = !DILocation(line: 254, column: 18, scope: !4500)
!4533 = !DILocation(line: 254, column: 24, scope: !4500)
!4534 = !DILocation(line: 254, column: 2, scope: !4500)
!4535 = !DILocation(line: 255, column: 14, scope: !4500)
!4536 = !DILocation(line: 255, column: 2, scope: !4500)
!4537 = !DILocation(line: 256, column: 1, scope: !4500)
!4538 = distinct !DISubprogram(name: "bm_work", scope: !3, file: !3, line: 287, type: !1913, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4539 = !DILocalVariable(name: "lock", arg: 1, scope: !4540, file: !4335, line: 402, type: !1228)
!4540 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4335, file: !4335, line: 402, type: !4541, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{null, !1228}
!4543 = !DILocation(line: 402, column: 57, scope: !4540, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 481, column: 2, scope: !4538)
!4545 = !DILocation(line: 402, column: 57, scope: !4540, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 443, column: 3, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 438, column: 38)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 438, column: 13)
!4549 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 432, column: 6)
!4550 = !DILocation(line: 402, column: 57, scope: !4540, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 420, column: 3, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 415, column: 48)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 415, column: 13)
!4554 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 332, column: 6)
!4555 = !DILocalVariable(name: "lock", arg: 1, scope: !4556, file: !4335, line: 377, type: !1228)
!4556 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4335, file: !4335, line: 377, type: !4541, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4557 = !DILocation(line: 377, column: 55, scope: !4556, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 401, column: 3, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 334, column: 52)
!4560 = !DILocation(line: 402, column: 57, scope: !4540, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 381, column: 3, scope: !4559)
!4562 = !DILocation(line: 377, column: 55, scope: !4556, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 377, column: 3, scope: !4559)
!4564 = !DILocation(line: 402, column: 57, scope: !4540, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 364, column: 3, scope: !4559)
!4566 = !DILocalVariable(name: "v", arg: 1, scope: !4567, file: !4344, line: 23, type: !4570)
!4567 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4344, file: !4344, line: 23, type: !4568, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!178, !4570}
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!4572 = !DILocation(line: 23, column: 61, scope: !4567, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 28, column: 9, scope: !4574, inlinedAt: !4575)
!4574 = distinct !DISubprogram(name: "atomic_read", scope: !4356, file: !4356, line: 25, type: !4568, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4575 = distinct !DILocation(line: 314, column: 4, scope: !4538)
!4576 = !DILocalVariable(name: "v", arg: 1, scope: !4577, file: !4367, line: 69, type: !4370)
!4577 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4367, file: !4367, line: 69, type: !4368, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4578 = !DILocation(line: 69, column: 73, scope: !4577, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 27, column: 2, scope: !4574, inlinedAt: !4575)
!4580 = !DILocalVariable(name: "size", arg: 2, scope: !4577, file: !4367, line: 69, type: !181)
!4581 = !DILocation(line: 69, column: 83, scope: !4577, inlinedAt: !4579)
!4582 = !DILocalVariable(name: "v", arg: 1, scope: !4574, file: !4356, line: 25, type: !4570)
!4583 = !DILocation(line: 25, column: 29, scope: !4574, inlinedAt: !4575)
!4584 = !DILocation(line: 402, column: 57, scope: !4540, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 304, column: 3, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 303, column: 32)
!4587 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 303, column: 6)
!4588 = !DILocation(line: 377, column: 55, scope: !4556, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 301, column: 2, scope: !4538)
!4590 = !DILocalVariable(name: "work", arg: 1, scope: !4538, file: !3, line: 287, type: !1915)
!4591 = !DILocation(line: 287, column: 41, scope: !4538)
!4592 = !DILocalVariable(name: "card", scope: !4538, file: !3, line: 289, type: !165)
!4593 = !DILocation(line: 289, column: 18, scope: !4538)
!4594 = !DILocalVariable(name: "__mptr", scope: !4595, file: !3, line: 289, type: !164)
!4595 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 289, column: 25)
!4596 = !DILocation(line: 289, column: 25, scope: !4595)
!4597 = !DILocation(line: 289, column: 25, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 289, column: 25)
!4599 = !DILocalVariable(name: "root_device", scope: !4538, file: !3, line: 290, type: !4600)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_device", file: !147, line: 183, size: 8448, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4601, file: !147, line: 184, baseType: !693, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4601, file: !147, line: 185, baseType: !3905, size: 64, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4601, file: !147, line: 186, baseType: !178, size: 32, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !4601, file: !147, line: 187, baseType: !178, size: 32, offset: 160)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !4601, file: !147, line: 188, baseType: !7, size: 32, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4601, file: !147, line: 189, baseType: !165, size: 64, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4601, file: !147, line: 190, baseType: !3161, size: 5568, offset: 320)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_mutex", scope: !4601, file: !147, line: 192, baseType: !677, size: 192, offset: 5888)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "client_list", scope: !4601, file: !147, line: 193, baseType: !228, size: 128, offset: 6080)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "config_rom", scope: !4601, file: !147, line: 195, baseType: !3967, size: 64, offset: 6208)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "config_rom_length", scope: !4601, file: !147, line: 196, baseType: !181, size: 64, offset: 6272)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "config_rom_retries", scope: !4601, file: !147, line: 197, baseType: !178, size: 32, offset: 6336)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "is_local", scope: !4601, file: !147, line: 198, baseType: !7, size: 1, offset: 6368, flags: DIFlagBitField, extraData: i64 6368)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "max_rec", scope: !4601, file: !147, line: 199, baseType: !7, size: 4, offset: 6369, flags: DIFlagBitField, extraData: i64 6368)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "cmc", scope: !4601, file: !147, line: 200, baseType: !7, size: 1, offset: 6373, flags: DIFlagBitField, extraData: i64 6368)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "irmc", scope: !4601, file: !147, line: 201, baseType: !7, size: 1, offset: 6374, flags: DIFlagBitField, extraData: i64 6368)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "bc_implemented", scope: !4601, file: !147, line: 202, baseType: !7, size: 2, offset: 6375, flags: DIFlagBitField, extraData: i64 6368)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "workfn", scope: !4601, file: !147, line: 204, baseType: !1911, size: 64, offset: 6400)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4601, file: !147, line: 205, baseType: !3932, size: 704, offset: 6464)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_group", scope: !4601, file: !147, line: 206, baseType: !4623, size: 1280, offset: 7168)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_attribute_group", file: !147, line: 153, size: 1280, elements: !4624)
!4624 = !{!4625, !4628, !4629}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4623, file: !147, line: 154, baseType: !4626, size: 128)
!4626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4627, size: 128, elements: !1589)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !4623, file: !147, line: 155, baseType: !3244, size: 320, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !4623, file: !147, line: 156, baseType: !4630, size: 832, offset: 448)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3229, size: 832, elements: !4631)
!4631 = !{!4632}
!4632 = !DISubrange(count: 13)
!4633 = !DILocation(line: 290, column: 20, scope: !4538)
!4634 = !DILocalVariable(name: "irm_device", scope: !4538, file: !3, line: 290, type: !4600)
!4635 = !DILocation(line: 290, column: 34, scope: !4538)
!4636 = !DILocalVariable(name: "root_node", scope: !4538, file: !3, line: 291, type: !3905)
!4637 = !DILocation(line: 291, column: 18, scope: !4538)
!4638 = !DILocalVariable(name: "root_id", scope: !4538, file: !3, line: 292, type: !178)
!4639 = !DILocation(line: 292, column: 6, scope: !4538)
!4640 = !DILocalVariable(name: "new_root_id", scope: !4538, file: !3, line: 292, type: !178)
!4641 = !DILocation(line: 292, column: 15, scope: !4538)
!4642 = !DILocalVariable(name: "irm_id", scope: !4538, file: !3, line: 292, type: !178)
!4643 = !DILocation(line: 292, column: 28, scope: !4538)
!4644 = !DILocalVariable(name: "bm_id", scope: !4538, file: !3, line: 292, type: !178)
!4645 = !DILocation(line: 292, column: 36, scope: !4538)
!4646 = !DILocalVariable(name: "local_id", scope: !4538, file: !3, line: 292, type: !178)
!4647 = !DILocation(line: 292, column: 43, scope: !4538)
!4648 = !DILocalVariable(name: "gap_count", scope: !4538, file: !3, line: 293, type: !178)
!4649 = !DILocation(line: 293, column: 6, scope: !4538)
!4650 = !DILocalVariable(name: "generation", scope: !4538, file: !3, line: 293, type: !178)
!4651 = !DILocation(line: 293, column: 17, scope: !4538)
!4652 = !DILocalVariable(name: "grace", scope: !4538, file: !3, line: 293, type: !178)
!4653 = !DILocation(line: 293, column: 29, scope: !4538)
!4654 = !DILocalVariable(name: "rcode", scope: !4538, file: !3, line: 293, type: !178)
!4655 = !DILocation(line: 293, column: 36, scope: !4538)
!4656 = !DILocalVariable(name: "do_reset", scope: !4538, file: !3, line: 294, type: !218)
!4657 = !DILocation(line: 294, column: 7, scope: !4538)
!4658 = !DILocalVariable(name: "root_device_is_running", scope: !4538, file: !3, line: 295, type: !218)
!4659 = !DILocation(line: 295, column: 7, scope: !4538)
!4660 = !DILocalVariable(name: "root_device_is_cmc", scope: !4538, file: !3, line: 296, type: !218)
!4661 = !DILocation(line: 296, column: 7, scope: !4538)
!4662 = !DILocalVariable(name: "irm_is_1394_1995_only", scope: !4538, file: !3, line: 297, type: !218)
!4663 = !DILocation(line: 297, column: 7, scope: !4538)
!4664 = !DILocalVariable(name: "keep_this_irm", scope: !4538, file: !3, line: 298, type: !218)
!4665 = !DILocation(line: 298, column: 7, scope: !4538)
!4666 = !DILocalVariable(name: "transaction_data", scope: !4538, file: !3, line: 299, type: !4667)
!4667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !1589)
!4668 = !DILocation(line: 299, column: 9, scope: !4538)
!4669 = !DILocation(line: 301, column: 17, scope: !4538)
!4670 = !DILocation(line: 301, column: 23, scope: !4538)
!4671 = !DILocation(line: 379, column: 2, scope: !4672, inlinedAt: !4589)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !4335, line: 379, column: 2)
!4673 = distinct !DILexicalBlock(scope: !4556, file: !4335, line: 379, column: 2)
!4674 = !DILocation(line: 379, column: 2, scope: !4675, inlinedAt: !4589)
!4675 = distinct !DILexicalBlock(scope: !4673, file: !4335, line: 379, column: 2)
!4676 = !{i32 -2145597360}
!4677 = !DILocation(line: 379, column: 2, scope: !4678, inlinedAt: !4589)
!4678 = distinct !DILexicalBlock(scope: !4675, file: !4335, line: 379, column: 2)
!4679 = !DILocation(line: 303, column: 6, scope: !4587)
!4680 = !DILocation(line: 303, column: 12, scope: !4587)
!4681 = !DILocation(line: 303, column: 23, scope: !4587)
!4682 = !DILocation(line: 303, column: 6, scope: !4538)
!4683 = !DILocation(line: 304, column: 20, scope: !4586)
!4684 = !DILocation(line: 304, column: 26, scope: !4586)
!4685 = !DILocation(line: 404, column: 2, scope: !4686, inlinedAt: !4585)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !4335, line: 404, column: 2)
!4687 = distinct !DILexicalBlock(scope: !4540, file: !4335, line: 404, column: 2)
!4688 = !DILocation(line: 404, column: 2, scope: !4689, inlinedAt: !4585)
!4689 = distinct !DILexicalBlock(scope: !4687, file: !4335, line: 404, column: 2)
!4690 = !{i32 -2145595612}
!4691 = !DILocation(line: 404, column: 2, scope: !4692, inlinedAt: !4585)
!4692 = distinct !DILexicalBlock(scope: !4689, file: !4335, line: 404, column: 2)
!4693 = !DILocation(line: 305, column: 3, scope: !4586)
!4694 = !DILocation(line: 308, column: 15, scope: !4538)
!4695 = !DILocation(line: 308, column: 21, scope: !4538)
!4696 = !DILocation(line: 308, column: 13, scope: !4538)
!4697 = !DILocation(line: 310, column: 14, scope: !4538)
!4698 = !DILocation(line: 310, column: 20, scope: !4538)
!4699 = !DILocation(line: 310, column: 12, scope: !4538)
!4700 = !DILocation(line: 311, column: 14, scope: !4538)
!4701 = !DILocation(line: 311, column: 2, scope: !4538)
!4702 = !DILocation(line: 312, column: 16, scope: !4538)
!4703 = !DILocation(line: 312, column: 27, scope: !4538)
!4704 = !DILocation(line: 312, column: 14, scope: !4538)
!4705 = !DILocation(line: 313, column: 27, scope: !4538)
!4706 = !DILocation(line: 313, column: 39, scope: !4538)
!4707 = !DILocation(line: 314, column: 17, scope: !4538)
!4708 = !DILocation(line: 314, column: 30, scope: !4538)
!4709 = !DILocation(line: 27, column: 25, scope: !4574, inlinedAt: !4575)
!4710 = !DILocation(line: 71, column: 19, scope: !4577, inlinedAt: !4579)
!4711 = !DILocation(line: 71, column: 22, scope: !4577, inlinedAt: !4579)
!4712 = !DILocation(line: 71, column: 2, scope: !4577, inlinedAt: !4579)
!4713 = !DILocation(line: 72, column: 2, scope: !4577, inlinedAt: !4579)
!4714 = !DILocation(line: 28, column: 26, scope: !4574, inlinedAt: !4575)
!4715 = !DILocation(line: 29, column: 9, scope: !4567, inlinedAt: !4573)
!4716 = !DILocation(line: 314, column: 37, scope: !4538)
!4717 = !DILocation(line: 0, scope: !4538)
!4718 = !DILocation(line: 313, column: 25, scope: !4538)
!4719 = !DILocation(line: 315, column: 23, scope: !4538)
!4720 = !DILocation(line: 315, column: 35, scope: !4538)
!4721 = !DILocation(line: 315, column: 38, scope: !4538)
!4722 = !DILocation(line: 315, column: 51, scope: !4538)
!4723 = !DILocation(line: 315, column: 21, scope: !4538)
!4724 = !DILocation(line: 317, column: 15, scope: !4538)
!4725 = !DILocation(line: 317, column: 21, scope: !4538)
!4726 = !DILocation(line: 317, column: 31, scope: !4538)
!4727 = !DILocation(line: 317, column: 13, scope: !4538)
!4728 = !DILocation(line: 318, column: 26, scope: !4538)
!4729 = !DILocation(line: 318, column: 37, scope: !4538)
!4730 = !DILocation(line: 318, column: 40, scope: !4538)
!4731 = !DILocation(line: 318, column: 52, scope: !4538)
!4732 = !DILocation(line: 318, column: 63, scope: !4538)
!4733 = !DILocation(line: 319, column: 5, scope: !4538)
!4734 = !DILocation(line: 319, column: 17, scope: !4538)
!4735 = !DILocation(line: 319, column: 31, scope: !4538)
!4736 = !DILocation(line: 319, column: 45, scope: !4538)
!4737 = !DILocation(line: 318, column: 24, scope: !4538)
!4738 = !DILocation(line: 322, column: 18, scope: !4538)
!4739 = !DILocation(line: 322, column: 29, scope: !4538)
!4740 = !DILocation(line: 322, column: 32, scope: !4538)
!4741 = !DILocation(line: 322, column: 44, scope: !4538)
!4742 = !DILocation(line: 322, column: 55, scope: !4538)
!4743 = !DILocation(line: 323, column: 4, scope: !4538)
!4744 = !DILocation(line: 323, column: 16, scope: !4538)
!4745 = !DILocation(line: 323, column: 30, scope: !4538)
!4746 = !DILocation(line: 323, column: 35, scope: !4538)
!4747 = !DILocation(line: 322, column: 16, scope: !4538)
!4748 = !DILocation(line: 325, column: 13, scope: !4538)
!4749 = !DILocation(line: 325, column: 24, scope: !4538)
!4750 = !DILocation(line: 325, column: 11, scope: !4538)
!4751 = !DILocation(line: 326, column: 13, scope: !4538)
!4752 = !DILocation(line: 326, column: 19, scope: !4538)
!4753 = !DILocation(line: 326, column: 29, scope: !4538)
!4754 = !DILocation(line: 326, column: 11, scope: !4538)
!4755 = !DILocation(line: 327, column: 13, scope: !4538)
!4756 = !DILocation(line: 327, column: 19, scope: !4538)
!4757 = !DILocation(line: 327, column: 31, scope: !4538)
!4758 = !DILocation(line: 327, column: 11, scope: !4538)
!4759 = !DILocation(line: 329, column: 10, scope: !4538)
!4760 = !DILocation(line: 329, column: 8, scope: !4538)
!4761 = !DILocation(line: 332, column: 26, scope: !4554)
!4762 = !DILocation(line: 332, column: 38, scope: !4554)
!4763 = !DILocation(line: 332, column: 44, scope: !4554)
!4764 = !DILocation(line: 332, column: 7, scope: !4554)
!4765 = !DILocation(line: 332, column: 59, scope: !4554)
!4766 = !DILocation(line: 333, column: 8, scope: !4554)
!4767 = !DILocation(line: 333, column: 14, scope: !4554)
!4768 = !DILocation(line: 333, column: 27, scope: !4554)
!4769 = !DILocation(line: 334, column: 7, scope: !4554)
!4770 = !DILocation(line: 334, column: 13, scope: !4554)
!4771 = !DILocation(line: 334, column: 30, scope: !4554)
!4772 = !DILocation(line: 334, column: 27, scope: !4554)
!4773 = !DILocation(line: 334, column: 41, scope: !4554)
!4774 = !DILocation(line: 334, column: 44, scope: !4554)
!4775 = !DILocation(line: 332, column: 6, scope: !4538)
!4776 = !DILocation(line: 347, column: 8, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 347, column: 7)
!4778 = !DILocation(line: 347, column: 14, scope: !4777)
!4779 = !DILocation(line: 347, column: 24, scope: !4777)
!4780 = !DILocation(line: 347, column: 7, scope: !4559)
!4781 = !DILocation(line: 348, column: 18, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 347, column: 33)
!4783 = !DILocation(line: 348, column: 16, scope: !4782)
!4784 = !DILocation(line: 349, column: 14, scope: !4782)
!4785 = !DILocation(line: 350, column: 27, scope: !4782)
!4786 = !DILocation(line: 349, column: 4, scope: !4782)
!4787 = !DILocation(line: 351, column: 4, scope: !4782)
!4788 = !DILocation(line: 354, column: 7, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 354, column: 7)
!4790 = !DILocation(line: 354, column: 29, scope: !4789)
!4791 = !DILocation(line: 354, column: 33, scope: !4789)
!4792 = !DILocation(line: 354, column: 7, scope: !4559)
!4793 = !DILocation(line: 355, column: 18, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 354, column: 48)
!4795 = !DILocation(line: 355, column: 16, scope: !4794)
!4796 = !DILocation(line: 356, column: 14, scope: !4794)
!4797 = !DILocation(line: 357, column: 37, scope: !4794)
!4798 = !DILocation(line: 356, column: 4, scope: !4794)
!4799 = !DILocation(line: 358, column: 4, scope: !4794)
!4800 = !DILocation(line: 361, column: 3, scope: !4559)
!4801 = !DILocation(line: 361, column: 23, scope: !4559)
!4802 = !DILocation(line: 362, column: 25, scope: !4559)
!4803 = !DILocation(line: 362, column: 3, scope: !4559)
!4804 = !DILocation(line: 362, column: 23, scope: !4559)
!4805 = !DILocation(line: 364, column: 20, scope: !4559)
!4806 = !DILocation(line: 364, column: 26, scope: !4559)
!4807 = !DILocation(line: 404, column: 2, scope: !4686, inlinedAt: !4565)
!4808 = !DILocation(line: 404, column: 2, scope: !4689, inlinedAt: !4565)
!4809 = !DILocation(line: 404, column: 2, scope: !4692, inlinedAt: !4565)
!4810 = !DILocation(line: 366, column: 30, scope: !4559)
!4811 = !DILocation(line: 367, column: 5, scope: !4559)
!4812 = !DILocation(line: 367, column: 13, scope: !4559)
!4813 = !DILocation(line: 369, column: 5, scope: !4559)
!4814 = !DILocation(line: 366, column: 11, scope: !4559)
!4815 = !DILocation(line: 366, column: 9, scope: !4559)
!4816 = !DILocation(line: 371, column: 7, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 371, column: 7)
!4818 = !DILocation(line: 371, column: 13, scope: !4817)
!4819 = !DILocation(line: 371, column: 7, scope: !4559)
!4820 = !DILocation(line: 373, column: 4, scope: !4817)
!4821 = !DILocation(line: 375, column: 11, scope: !4559)
!4822 = !DILocation(line: 375, column: 9, scope: !4559)
!4823 = !DILocation(line: 377, column: 18, scope: !4559)
!4824 = !DILocation(line: 377, column: 24, scope: !4559)
!4825 = !DILocation(line: 379, column: 2, scope: !4672, inlinedAt: !4563)
!4826 = !DILocation(line: 379, column: 2, scope: !4675, inlinedAt: !4563)
!4827 = !DILocation(line: 379, column: 2, scope: !4678, inlinedAt: !4563)
!4828 = !DILocation(line: 378, column: 7, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 378, column: 7)
!4830 = !DILocation(line: 378, column: 13, scope: !4829)
!4831 = !DILocation(line: 378, column: 31, scope: !4829)
!4832 = !DILocation(line: 378, column: 34, scope: !4829)
!4833 = !DILocation(line: 378, column: 48, scope: !4829)
!4834 = !DILocation(line: 378, column: 54, scope: !4829)
!4835 = !DILocation(line: 378, column: 45, scope: !4829)
!4836 = !DILocation(line: 378, column: 7, scope: !4559)
!4837 = !DILocation(line: 380, column: 8, scope: !4829)
!4838 = !DILocation(line: 380, column: 14, scope: !4829)
!4839 = !DILocation(line: 380, column: 24, scope: !4829)
!4840 = !DILocation(line: 380, column: 44, scope: !4829)
!4841 = !DILocation(line: 380, column: 42, scope: !4829)
!4842 = !DILocation(line: 379, column: 4, scope: !4829)
!4843 = !DILocation(line: 379, column: 10, scope: !4829)
!4844 = !DILocation(line: 379, column: 21, scope: !4829)
!4845 = !DILocation(line: 381, column: 20, scope: !4559)
!4846 = !DILocation(line: 381, column: 26, scope: !4559)
!4847 = !DILocation(line: 404, column: 2, scope: !4686, inlinedAt: !4561)
!4848 = !DILocation(line: 404, column: 2, scope: !4689, inlinedAt: !4561)
!4849 = !DILocation(line: 404, column: 2, scope: !4692, inlinedAt: !4561)
!4850 = !DILocation(line: 383, column: 7, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 383, column: 7)
!4852 = !DILocation(line: 383, column: 13, scope: !4851)
!4853 = !DILocation(line: 383, column: 31, scope: !4851)
!4854 = !DILocation(line: 383, column: 34, scope: !4851)
!4855 = !DILocation(line: 383, column: 40, scope: !4851)
!4856 = !DILocation(line: 383, column: 7, scope: !4559)
!4857 = !DILocation(line: 385, column: 8, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 385, column: 8)
!4859 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 383, column: 49)
!4860 = !DILocation(line: 385, column: 20, scope: !4858)
!4861 = !DILocation(line: 385, column: 17, scope: !4858)
!4862 = !DILocation(line: 385, column: 8, scope: !4859)
!4863 = !DILocation(line: 386, column: 32, scope: !4858)
!4864 = !DILocation(line: 386, column: 38, scope: !4858)
!4865 = !DILocation(line: 386, column: 5, scope: !4858)
!4866 = !DILocation(line: 388, column: 4, scope: !4859)
!4867 = !DILocation(line: 391, column: 7, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 391, column: 7)
!4869 = !DILocation(line: 391, column: 13, scope: !4868)
!4870 = !DILocation(line: 391, column: 7, scope: !4559)
!4871 = !DILocation(line: 397, column: 24, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 391, column: 34)
!4873 = !DILocation(line: 397, column: 4, scope: !4872)
!4874 = !DILocation(line: 398, column: 4, scope: !4872)
!4875 = !DILocation(line: 401, column: 18, scope: !4559)
!4876 = !DILocation(line: 401, column: 24, scope: !4559)
!4877 = !DILocation(line: 379, column: 2, scope: !4672, inlinedAt: !4558)
!4878 = !DILocation(line: 379, column: 2, scope: !4675, inlinedAt: !4558)
!4879 = !DILocation(line: 379, column: 2, scope: !4678, inlinedAt: !4558)
!4880 = !DILocation(line: 403, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 403, column: 7)
!4882 = !DILocation(line: 403, column: 13, scope: !4881)
!4883 = !DILocation(line: 403, column: 31, scope: !4881)
!4884 = !DILocation(line: 403, column: 35, scope: !4881)
!4885 = !DILocation(line: 403, column: 7, scope: !4559)
!4886 = !DILocation(line: 410, column: 18, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 403, column: 50)
!4888 = !DILocation(line: 410, column: 16, scope: !4887)
!4889 = !DILocation(line: 411, column: 14, scope: !4887)
!4890 = !DILocation(line: 412, column: 23, scope: !4887)
!4891 = !DILocation(line: 412, column: 7, scope: !4887)
!4892 = !DILocation(line: 412, column: 31, scope: !4887)
!4893 = !DILocation(line: 411, column: 4, scope: !4887)
!4894 = !DILocation(line: 413, column: 4, scope: !4887)
!4895 = !DILocation(line: 415, column: 2, scope: !4559)
!4896 = !DILocation(line: 415, column: 13, scope: !4553)
!4897 = !DILocation(line: 415, column: 19, scope: !4553)
!4898 = !DILocation(line: 415, column: 36, scope: !4553)
!4899 = !DILocation(line: 415, column: 33, scope: !4553)
!4900 = !DILocation(line: 415, column: 13, scope: !4554)
!4901 = !DILocation(line: 420, column: 20, scope: !4552)
!4902 = !DILocation(line: 420, column: 26, scope: !4552)
!4903 = !DILocation(line: 404, column: 2, scope: !4686, inlinedAt: !4551)
!4904 = !DILocation(line: 404, column: 2, scope: !4689, inlinedAt: !4551)
!4905 = !DILocation(line: 404, column: 2, scope: !4692, inlinedAt: !4551)
!4906 = !DILocation(line: 421, column: 23, scope: !4552)
!4907 = !DILocation(line: 421, column: 3, scope: !4552)
!4908 = !DILocation(line: 422, column: 3, scope: !4552)
!4909 = !DILocation(line: 430, column: 24, scope: !4538)
!4910 = !DILocation(line: 430, column: 2, scope: !4538)
!4911 = !DILocation(line: 430, column: 8, scope: !4538)
!4912 = !DILocation(line: 430, column: 22, scope: !4538)
!4913 = !DILocation(line: 432, column: 6, scope: !4549)
!4914 = !DILocation(line: 432, column: 18, scope: !4549)
!4915 = !DILocation(line: 432, column: 6, scope: !4538)
!4916 = !DILocation(line: 437, column: 17, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 432, column: 27)
!4918 = !DILocation(line: 437, column: 15, scope: !4917)
!4919 = !DILocation(line: 438, column: 2, scope: !4917)
!4920 = !DILocation(line: 438, column: 14, scope: !4548)
!4921 = !DILocation(line: 438, column: 13, scope: !4549)
!4922 = !DILocation(line: 443, column: 20, scope: !4547)
!4923 = !DILocation(line: 443, column: 26, scope: !4547)
!4924 = !DILocation(line: 404, column: 2, scope: !4686, inlinedAt: !4546)
!4925 = !DILocation(line: 404, column: 2, scope: !4689, inlinedAt: !4546)
!4926 = !DILocation(line: 404, column: 2, scope: !4692, inlinedAt: !4546)
!4927 = !DILocation(line: 444, column: 3, scope: !4547)
!4928 = !DILocation(line: 445, column: 13, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 445, column: 13)
!4930 = !DILocation(line: 445, column: 13, scope: !4548)
!4931 = !DILocation(line: 450, column: 17, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 445, column: 33)
!4933 = !DILocation(line: 450, column: 15, scope: !4932)
!4934 = !DILocation(line: 451, column: 2, scope: !4932)
!4935 = !DILocation(line: 457, column: 17, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 451, column: 9)
!4937 = !DILocation(line: 457, column: 15, scope: !4936)
!4938 = !DILocation(line: 432, column: 21, scope: !4549)
!4939 = !DILabel(scope: !4538, name: "pick_me", file: !3, line: 460)
!4940 = !DILocation(line: 460, column: 2, scope: !4538)
!4941 = !DILocation(line: 465, column: 7, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 465, column: 6)
!4943 = !DILocation(line: 465, column: 13, scope: !4942)
!4944 = !DILocation(line: 465, column: 36, scope: !4942)
!4945 = !DILocation(line: 466, column: 6, scope: !4942)
!4946 = !DILocation(line: 466, column: 17, scope: !4942)
!4947 = !DILocation(line: 466, column: 26, scope: !4942)
!4948 = !DILocation(line: 465, column: 6, scope: !4538)
!4949 = !DILocation(line: 467, column: 31, scope: !4942)
!4950 = !DILocation(line: 467, column: 42, scope: !4942)
!4951 = !DILocation(line: 467, column: 15, scope: !4942)
!4952 = !DILocation(line: 467, column: 13, scope: !4942)
!4953 = !DILocation(line: 467, column: 3, scope: !4942)
!4954 = !DILocation(line: 469, column: 13, scope: !4942)
!4955 = !DILocation(line: 477, column: 6, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 477, column: 6)
!4957 = !DILocation(line: 477, column: 12, scope: !4956)
!4958 = !DILocation(line: 477, column: 22, scope: !4956)
!4959 = !DILocation(line: 477, column: 25, scope: !4956)
!4960 = !DILocation(line: 477, column: 29, scope: !4956)
!4961 = !DILocation(line: 478, column: 7, scope: !4956)
!4962 = !DILocation(line: 478, column: 13, scope: !4956)
!4963 = !DILocation(line: 478, column: 26, scope: !4956)
!4964 = !DILocation(line: 478, column: 23, scope: !4956)
!4965 = !DILocation(line: 478, column: 36, scope: !4956)
!4966 = !DILocation(line: 478, column: 39, scope: !4956)
!4967 = !DILocation(line: 478, column: 54, scope: !4956)
!4968 = !DILocation(line: 478, column: 51, scope: !4956)
!4969 = !DILocation(line: 477, column: 6, scope: !4538)
!4970 = !DILocation(line: 479, column: 12, scope: !4956)
!4971 = !DILocation(line: 479, column: 3, scope: !4956)
!4972 = !DILocation(line: 481, column: 19, scope: !4538)
!4973 = !DILocation(line: 481, column: 25, scope: !4538)
!4974 = !DILocation(line: 404, column: 2, scope: !4686, inlinedAt: !4544)
!4975 = !DILocation(line: 404, column: 2, scope: !4689, inlinedAt: !4544)
!4976 = !DILocation(line: 404, column: 2, scope: !4692, inlinedAt: !4544)
!4977 = !DILocation(line: 483, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 483, column: 6)
!4979 = !DILocation(line: 483, column: 6, scope: !4538)
!4980 = !DILocation(line: 484, column: 13, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 483, column: 16)
!4982 = !DILocation(line: 485, column: 6, scope: !4981)
!4983 = !DILocation(line: 485, column: 19, scope: !4981)
!4984 = !DILocation(line: 484, column: 3, scope: !4981)
!4985 = !DILocation(line: 486, column: 22, scope: !4981)
!4986 = !DILocation(line: 486, column: 28, scope: !4981)
!4987 = !DILocation(line: 486, column: 41, scope: !4981)
!4988 = !DILocation(line: 486, column: 53, scope: !4981)
!4989 = !DILocation(line: 486, column: 3, scope: !4981)
!4990 = !DILocation(line: 487, column: 13, scope: !4981)
!4991 = !DILocation(line: 487, column: 3, scope: !4981)
!4992 = !DILocation(line: 489, column: 3, scope: !4981)
!4993 = !DILocation(line: 492, column: 6, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 492, column: 6)
!4995 = !DILocation(line: 492, column: 6, scope: !4538)
!4996 = !DILocation(line: 496, column: 3, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 492, column: 26)
!4998 = !DILocation(line: 496, column: 23, scope: !4997)
!4999 = !DILocation(line: 497, column: 30, scope: !4997)
!5000 = !DILocation(line: 498, column: 5, scope: !4997)
!5001 = !DILocation(line: 498, column: 14, scope: !4997)
!5002 = !DILocation(line: 500, column: 5, scope: !4997)
!5003 = !DILocation(line: 497, column: 11, scope: !4997)
!5004 = !DILocation(line: 497, column: 9, scope: !4997)
!5005 = !DILocation(line: 501, column: 7, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 501, column: 7)
!5007 = !DILocation(line: 501, column: 13, scope: !5006)
!5008 = !DILocation(line: 501, column: 7, scope: !4997)
!5009 = !DILocation(line: 502, column: 4, scope: !5006)
!5010 = !DILocation(line: 503, column: 2, scope: !4997)
!5011 = !DILocation(line: 505, column: 6, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 505, column: 6)
!5013 = !DILocation(line: 505, column: 18, scope: !5012)
!5014 = !DILocation(line: 505, column: 15, scope: !5012)
!5015 = !DILocation(line: 505, column: 6, scope: !4538)
!5016 = !DILocation(line: 506, column: 30, scope: !5012)
!5017 = !DILocation(line: 506, column: 36, scope: !5012)
!5018 = !DILocation(line: 506, column: 3, scope: !5012)
!5019 = !DILabel(scope: !4538, name: "out", file: !3, line: 508)
!5020 = !DILocation(line: 508, column: 2, scope: !4538)
!5021 = !DILocation(line: 509, column: 14, scope: !4538)
!5022 = !DILocation(line: 509, column: 2, scope: !4538)
!5023 = !DILabel(scope: !4538, name: "out_put_card", file: !3, line: 510)
!5024 = !DILocation(line: 510, column: 2, scope: !4538)
!5025 = !DILocation(line: 511, column: 14, scope: !4538)
!5026 = !DILocation(line: 511, column: 2, scope: !4538)
!5027 = !DILocation(line: 512, column: 1, scope: !4538)
!5028 = distinct !DISubprogram(name: "fw_card_add", scope: !3, file: !3, line: 546, type: !5029, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!178, !165, !206, !206, !214}
!5031 = !DILocalVariable(name: "card", arg: 1, scope: !5028, file: !3, line: 546, type: !165)
!5032 = !DILocation(line: 546, column: 33, scope: !5028)
!5033 = !DILocalVariable(name: "max_receive", arg: 2, scope: !5028, file: !3, line: 547, type: !206)
!5034 = !DILocation(line: 547, column: 7, scope: !5028)
!5035 = !DILocalVariable(name: "link_speed", arg: 3, scope: !5028, file: !3, line: 547, type: !206)
!5036 = !DILocation(line: 547, column: 24, scope: !5028)
!5037 = !DILocalVariable(name: "guid", arg: 4, scope: !5028, file: !3, line: 547, type: !214)
!5038 = !DILocation(line: 547, column: 40, scope: !5028)
!5039 = !DILocalVariable(name: "ret", scope: !5028, file: !3, line: 549, type: !178)
!5040 = !DILocation(line: 549, column: 6, scope: !5028)
!5041 = !DILocation(line: 551, column: 22, scope: !5028)
!5042 = !DILocation(line: 551, column: 2, scope: !5028)
!5043 = !DILocation(line: 551, column: 8, scope: !5028)
!5044 = !DILocation(line: 551, column: 20, scope: !5028)
!5045 = !DILocation(line: 552, column: 21, scope: !5028)
!5046 = !DILocation(line: 552, column: 2, scope: !5028)
!5047 = !DILocation(line: 552, column: 8, scope: !5028)
!5048 = !DILocation(line: 552, column: 19, scope: !5028)
!5049 = !DILocation(line: 553, column: 15, scope: !5028)
!5050 = !DILocation(line: 553, column: 2, scope: !5028)
!5051 = !DILocation(line: 553, column: 8, scope: !5028)
!5052 = !DILocation(line: 553, column: 13, scope: !5028)
!5053 = !DILocation(line: 555, column: 2, scope: !5028)
!5054 = !DILocation(line: 557, column: 22, scope: !5028)
!5055 = !DILocation(line: 557, column: 2, scope: !5028)
!5056 = !DILocation(line: 558, column: 8, scope: !5028)
!5057 = !DILocation(line: 558, column: 14, scope: !5028)
!5058 = !DILocation(line: 558, column: 22, scope: !5028)
!5059 = !DILocation(line: 558, column: 29, scope: !5028)
!5060 = !DILocation(line: 558, column: 51, scope: !5028)
!5061 = !DILocation(line: 558, column: 6, scope: !5028)
!5062 = !DILocation(line: 559, column: 6, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 559, column: 6)
!5064 = !DILocation(line: 559, column: 10, scope: !5063)
!5065 = !DILocation(line: 559, column: 6, scope: !5028)
!5066 = !DILocation(line: 560, column: 18, scope: !5063)
!5067 = !DILocation(line: 560, column: 24, scope: !5063)
!5068 = !DILocation(line: 560, column: 3, scope: !5063)
!5069 = !DILocation(line: 562, column: 2, scope: !5028)
!5070 = !DILocation(line: 564, column: 9, scope: !5028)
!5071 = !DILocation(line: 564, column: 2, scope: !5028)
!5072 = distinct !DISubprogram(name: "generate_config_rom", scope: !3, file: !3, line: 90, type: !5073, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{null, !165, !4056}
!5075 = !DILocalVariable(name: "card", arg: 1, scope: !5072, file: !3, line: 90, type: !165)
!5076 = !DILocation(line: 90, column: 49, scope: !5072)
!5077 = !DILocalVariable(name: "config_rom", arg: 2, scope: !5072, file: !3, line: 90, type: !4056)
!5078 = !DILocation(line: 90, column: 63, scope: !5072)
!5079 = !DILocalVariable(name: "desc", scope: !5072, file: !3, line: 92, type: !3959)
!5080 = !DILocation(line: 92, column: 24, scope: !5072)
!5081 = !DILocalVariable(name: "i", scope: !5072, file: !3, line: 93, type: !178)
!5082 = !DILocation(line: 93, column: 6, scope: !5072)
!5083 = !DILocalVariable(name: "j", scope: !5072, file: !3, line: 93, type: !178)
!5084 = !DILocation(line: 93, column: 9, scope: !5072)
!5085 = !DILocalVariable(name: "k", scope: !5072, file: !3, line: 93, type: !178)
!5086 = !DILocation(line: 93, column: 12, scope: !5072)
!5087 = !DILocalVariable(name: "length", scope: !5072, file: !3, line: 93, type: !178)
!5088 = !DILocation(line: 93, column: 15, scope: !5072)
!5089 = !DILocation(line: 104, column: 2, scope: !5072)
!5090 = !DILocation(line: 104, column: 16, scope: !5072)
!5091 = !DILocation(line: 106, column: 2, scope: !5072)
!5092 = !DILocation(line: 106, column: 16, scope: !5072)
!5093 = !DILocation(line: 107, column: 18, scope: !5072)
!5094 = !DILocation(line: 107, column: 2, scope: !5072)
!5095 = !DILocation(line: 107, column: 16, scope: !5072)
!5096 = !DILocation(line: 113, column: 18, scope: !5072)
!5097 = !DILocation(line: 113, column: 2, scope: !5072)
!5098 = !DILocation(line: 113, column: 16, scope: !5072)
!5099 = !DILocation(line: 114, column: 18, scope: !5072)
!5100 = !DILocation(line: 114, column: 2, scope: !5072)
!5101 = !DILocation(line: 114, column: 16, scope: !5072)
!5102 = !DILocation(line: 117, column: 2, scope: !5072)
!5103 = !DILocation(line: 117, column: 16, scope: !5072)
!5104 = !DILocation(line: 118, column: 4, scope: !5072)
!5105 = !DILocation(line: 119, column: 10, scope: !5072)
!5106 = !DILocation(line: 119, column: 8, scope: !5072)
!5107 = !DILocation(line: 119, column: 4, scope: !5072)
!5108 = !DILocalVariable(name: "__mptr", scope: !5109, file: !3, line: 122, type: !164)
!5109 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 122, column: 2)
!5110 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 122, column: 2)
!5111 = !DILocation(line: 122, column: 2, scope: !5109)
!5112 = !DILocation(line: 122, column: 2, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 122, column: 2)
!5114 = !DILocation(line: 122, column: 2, scope: !5110)
!5115 = !DILocation(line: 122, column: 2, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 122, column: 2)
!5117 = !DILocation(line: 123, column: 7, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 123, column: 7)
!5119 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 122, column: 53)
!5120 = !DILocation(line: 123, column: 13, scope: !5118)
!5121 = !DILocation(line: 123, column: 23, scope: !5118)
!5122 = !DILocation(line: 123, column: 7, scope: !5119)
!5123 = !DILocation(line: 124, column: 22, scope: !5118)
!5124 = !DILocation(line: 124, column: 4, scope: !5118)
!5125 = !DILocation(line: 124, column: 16, scope: !5118)
!5126 = !DILocation(line: 124, column: 20, scope: !5118)
!5127 = !DILocation(line: 125, column: 19, scope: !5119)
!5128 = !DILocation(line: 125, column: 3, scope: !5119)
!5129 = !DILocation(line: 125, column: 14, scope: !5119)
!5130 = !DILocation(line: 125, column: 17, scope: !5119)
!5131 = !DILocation(line: 126, column: 4, scope: !5119)
!5132 = !DILocation(line: 127, column: 8, scope: !5119)
!5133 = !DILocation(line: 127, column: 14, scope: !5119)
!5134 = !DILocation(line: 127, column: 5, scope: !5119)
!5135 = !DILocation(line: 128, column: 2, scope: !5119)
!5136 = !DILocalVariable(name: "__mptr", scope: !5137, file: !3, line: 122, type: !164)
!5137 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 122, column: 2)
!5138 = !DILocation(line: 122, column: 2, scope: !5137)
!5139 = !DILocation(line: 122, column: 2, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 122, column: 2)
!5141 = distinct !{!5141, !5114, !5142}
!5142 = !DILocation(line: 128, column: 2, scope: !5110)
!5143 = !DILocation(line: 131, column: 18, scope: !5072)
!5144 = !DILocation(line: 131, column: 2, scope: !5072)
!5145 = !DILocation(line: 131, column: 16, scope: !5072)
!5146 = !DILocalVariable(name: "__mptr", scope: !5147, file: !3, line: 134, type: !164)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 134, column: 2)
!5148 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 134, column: 2)
!5149 = !DILocation(line: 134, column: 2, scope: !5147)
!5150 = !DILocation(line: 134, column: 2, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 134, column: 2)
!5152 = !DILocation(line: 134, column: 2, scope: !5148)
!5153 = !DILocation(line: 134, column: 2, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 134, column: 2)
!5155 = !DILocation(line: 135, column: 10, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 135, column: 3)
!5157 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 134, column: 53)
!5158 = !DILocation(line: 135, column: 8, scope: !5156)
!5159 = !DILocation(line: 135, column: 15, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 135, column: 3)
!5161 = !DILocation(line: 135, column: 19, scope: !5160)
!5162 = !DILocation(line: 135, column: 25, scope: !5160)
!5163 = !DILocation(line: 135, column: 17, scope: !5160)
!5164 = !DILocation(line: 135, column: 3, scope: !5156)
!5165 = !DILocation(line: 136, column: 24, scope: !5160)
!5166 = !DILocation(line: 136, column: 4, scope: !5160)
!5167 = !DILocation(line: 136, column: 15, scope: !5160)
!5168 = !DILocation(line: 136, column: 19, scope: !5160)
!5169 = !DILocation(line: 136, column: 17, scope: !5160)
!5170 = !DILocation(line: 136, column: 22, scope: !5160)
!5171 = !DILocation(line: 135, column: 34, scope: !5160)
!5172 = !DILocation(line: 135, column: 3, scope: !5160)
!5173 = distinct !{!5173, !5164, !5174}
!5174 = !DILocation(line: 136, column: 24, scope: !5156)
!5175 = !DILocation(line: 137, column: 8, scope: !5157)
!5176 = !DILocation(line: 137, column: 14, scope: !5157)
!5177 = !DILocation(line: 137, column: 5, scope: !5157)
!5178 = !DILocation(line: 138, column: 2, scope: !5157)
!5179 = !DILocalVariable(name: "__mptr", scope: !5180, file: !3, line: 134, type: !164)
!5180 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 134, column: 2)
!5181 = !DILocation(line: 134, column: 2, scope: !5180)
!5182 = !DILocation(line: 134, column: 2, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 134, column: 2)
!5184 = distinct !{!5184, !5152, !5185}
!5185 = !DILocation(line: 138, column: 2, scope: !5148)
!5186 = !DILocation(line: 144, column: 9, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 144, column: 2)
!5188 = !DILocation(line: 144, column: 7, scope: !5187)
!5189 = !DILocation(line: 144, column: 14, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 144, column: 2)
!5191 = !DILocation(line: 144, column: 18, scope: !5190)
!5192 = !DILocation(line: 144, column: 16, scope: !5190)
!5193 = !DILocation(line: 144, column: 2, scope: !5187)
!5194 = !DILocation(line: 145, column: 33, scope: !5190)
!5195 = !DILocation(line: 145, column: 46, scope: !5190)
!5196 = !DILocation(line: 145, column: 44, scope: !5190)
!5197 = !DILocation(line: 145, column: 12, scope: !5190)
!5198 = !DILocation(line: 145, column: 10, scope: !5190)
!5199 = !DILocation(line: 145, column: 3, scope: !5190)
!5200 = !DILocation(line: 144, column: 26, scope: !5190)
!5201 = !DILocation(line: 144, column: 33, scope: !5190)
!5202 = !DILocation(line: 144, column: 23, scope: !5190)
!5203 = !DILocation(line: 144, column: 2, scope: !5190)
!5204 = distinct !{!5204, !5193, !5205}
!5205 = !DILocation(line: 145, column: 47, scope: !5187)
!5206 = !DILocalVariable(name: "__ret_warn_on", scope: !5207, file: !3, line: 147, type: !178)
!5207 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 147, column: 2)
!5208 = !DILocation(line: 147, column: 2, scope: !5207)
!5209 = !DILocation(line: 147, column: 2, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 147, column: 2)
!5211 = !DILocation(line: 147, column: 2, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 147, column: 2)
!5213 = !DILocation(line: 147, column: 2, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 147, column: 2)
!5215 = !DILocation(line: 147, column: 2, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 147, column: 2)
!5217 = !{i32 -2142090940, i32 -2142090911, i32 -2142090865, i32 -2142090807, i32 -2142090753, i32 -2142090699, i32 -2142090644, i32 -2142090613}
!5218 = !DILocation(line: 147, column: 2, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 147, column: 2)
!5220 = !{i32 -2142090203, i32 -2142090196, i32 -2142090144, i32 -2142090113, i32 -2142090083}
!5221 = !DILocation(line: 147, column: 2, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 147, column: 2)
!5223 = !DILocation(line: 148, column: 1, scope: !5072)
!5224 = distinct !DISubprogram(name: "fw_card_release", scope: !3, file: !3, line: 660, type: !4459, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5225 = !DILocalVariable(name: "kref", arg: 1, scope: !5224, file: !3, line: 660, type: !4461)
!5226 = !DILocation(line: 660, column: 35, scope: !5224)
!5227 = !DILocalVariable(name: "card", scope: !5224, file: !3, line: 662, type: !165)
!5228 = !DILocation(line: 662, column: 18, scope: !5224)
!5229 = !DILocalVariable(name: "__mptr", scope: !5230, file: !3, line: 662, type: !164)
!5230 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 662, column: 25)
!5231 = !DILocation(line: 662, column: 25, scope: !5230)
!5232 = !DILocation(line: 662, column: 25, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 662, column: 25)
!5234 = !DILocation(line: 664, column: 12, scope: !5224)
!5235 = !DILocation(line: 664, column: 18, scope: !5224)
!5236 = !DILocation(line: 664, column: 2, scope: !5224)
!5237 = !DILocation(line: 665, column: 1, scope: !5224)
!5238 = distinct !DISubprogram(name: "fw_core_remove_card", scope: !3, file: !3, line: 668, type: !4295, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5239 = !DILocalVariable(name: "card", arg: 1, scope: !5238, file: !3, line: 668, type: !165)
!5240 = !DILocation(line: 668, column: 42, scope: !5238)
!5241 = !DILocalVariable(name: "dummy_driver", scope: !5238, file: !3, line: 670, type: !171)
!5242 = !DILocation(line: 670, column: 24, scope: !5238)
!5243 = !DILocation(line: 670, column: 39, scope: !5238)
!5244 = !DILocation(line: 672, column: 2, scope: !5238)
!5245 = !DILocation(line: 672, column: 8, scope: !5238)
!5246 = !DILocation(line: 672, column: 16, scope: !5238)
!5247 = !DILocation(line: 672, column: 31, scope: !5238)
!5248 = !DILocation(line: 674, column: 24, scope: !5238)
!5249 = !DILocation(line: 674, column: 2, scope: !5238)
!5250 = !DILocation(line: 676, column: 2, scope: !5238)
!5251 = !DILocation(line: 677, column: 17, scope: !5238)
!5252 = !DILocation(line: 677, column: 23, scope: !5238)
!5253 = !DILocation(line: 677, column: 2, scope: !5238)
!5254 = !DILocation(line: 678, column: 2, scope: !5238)
!5255 = !DILocation(line: 681, column: 34, scope: !5238)
!5256 = !DILocation(line: 681, column: 40, scope: !5238)
!5257 = !DILocation(line: 681, column: 48, scope: !5238)
!5258 = !DILocation(line: 681, column: 15, scope: !5238)
!5259 = !DILocation(line: 681, column: 32, scope: !5238)
!5260 = !DILocation(line: 682, column: 27, scope: !5238)
!5261 = !DILocation(line: 682, column: 33, scope: !5238)
!5262 = !DILocation(line: 682, column: 41, scope: !5238)
!5263 = !DILocation(line: 682, column: 15, scope: !5238)
!5264 = !DILocation(line: 682, column: 25, scope: !5238)
!5265 = !DILocation(line: 683, column: 2, scope: !5238)
!5266 = !DILocation(line: 683, column: 8, scope: !5238)
!5267 = !DILocation(line: 683, column: 15, scope: !5238)
!5268 = !DILocation(line: 685, column: 19, scope: !5238)
!5269 = !DILocation(line: 685, column: 2, scope: !5238)
!5270 = !DILocation(line: 688, column: 14, scope: !5238)
!5271 = !DILocation(line: 688, column: 2, scope: !5238)
!5272 = !DILocation(line: 689, column: 23, scope: !5238)
!5273 = !DILocation(line: 689, column: 29, scope: !5238)
!5274 = !DILocation(line: 689, column: 2, scope: !5238)
!5275 = !DILocalVariable(name: "__ret_warn_on", scope: !5276, file: !3, line: 691, type: !178)
!5276 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 691, column: 2)
!5277 = !DILocation(line: 691, column: 2, scope: !5276)
!5278 = !DILocation(line: 691, column: 2, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 691, column: 2)
!5280 = !DILocation(line: 691, column: 2, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 691, column: 2)
!5282 = !DILocation(line: 691, column: 2, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 691, column: 2)
!5284 = !DILocation(line: 691, column: 2, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 691, column: 2)
!5286 = !{i32 -2142074235, i32 -2142074206, i32 -2142074160, i32 -2142074102, i32 -2142074048, i32 -2142073994, i32 -2142073939, i32 -2142073908}
!5287 = !DILocation(line: 691, column: 2, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 691, column: 2)
!5289 = !{i32 -2142073498, i32 -2142073491, i32 -2142073439, i32 -2142073408, i32 -2142073378}
!5290 = !DILocation(line: 691, column: 2, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 691, column: 2)
!5292 = !DILocation(line: 692, column: 1, scope: !5238)
!5293 = distinct !DISubprogram(name: "list_del_init", scope: !4165, file: !4165, line: 202, type: !4231, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5294 = !DILocalVariable(name: "entry", arg: 1, scope: !5293, file: !4165, line: 202, type: !231)
!5295 = !DILocation(line: 202, column: 52, scope: !5293)
!5296 = !DILocation(line: 204, column: 19, scope: !5293)
!5297 = !DILocation(line: 204, column: 2, scope: !5293)
!5298 = !DILocation(line: 205, column: 17, scope: !5293)
!5299 = !DILocation(line: 205, column: 2, scope: !5293)
!5300 = !DILocation(line: 206, column: 1, scope: !5293)
!5301 = distinct !DISubprogram(name: "list_empty", scope: !4165, file: !4165, line: 280, type: !5302, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!178, !5304}
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!5306 = !DILocalVariable(name: "head", arg: 1, scope: !5301, file: !4165, line: 280, type: !5304)
!5307 = !DILocation(line: 280, column: 54, scope: !5301)
!5308 = !DILocation(line: 282, column: 9, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5301, file: !4165, line: 282, column: 9)
!5310 = !DILocation(line: 282, column: 9, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5309, file: !4165, line: 282, column: 9)
!5312 = !DILocation(line: 282, column: 34, scope: !5301)
!5313 = !DILocation(line: 282, column: 31, scope: !5301)
!5314 = !DILocation(line: 282, column: 2, scope: !5301)
!5315 = distinct !DISubprogram(name: "kobject_name", scope: !3165, file: !3165, line: 88, type: !5316, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!459, !5318}
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3164)
!5320 = !DILocalVariable(name: "kobj", arg: 1, scope: !5315, file: !3165, line: 88, type: !5318)
!5321 = !DILocation(line: 88, column: 62, scope: !5315)
!5322 = !DILocation(line: 90, column: 9, scope: !5315)
!5323 = !DILocation(line: 90, column: 15, scope: !5315)
!5324 = !DILocation(line: 90, column: 2, scope: !5315)
!5325 = distinct !DISubprogram(name: "__arch_swab32", scope: !5326, file: !5326, line: 8, type: !4080, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5326 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!5327 = !DILocalVariable(name: "val", arg: 1, scope: !5325, file: !5326, line: 8, type: !154)
!5328 = !DILocation(line: 8, column: 61, scope: !5325)
!5329 = !DILocation(line: 10, column: 38, scope: !5325)
!5330 = !DILocation(line: 10, column: 2, scope: !5325)
!5331 = !{i32 391758}
!5332 = !DILocation(line: 11, column: 9, scope: !5325)
!5333 = !DILocation(line: 11, column: 2, scope: !5325)
!5334 = distinct !DISubprogram(name: "__list_add", scope: !4165, file: !4165, line: 63, type: !5335, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{null, !231, !231, !231}
!5337 = !DILocalVariable(name: "new", arg: 1, scope: !5334, file: !4165, line: 63, type: !231)
!5338 = !DILocation(line: 63, column: 49, scope: !5334)
!5339 = !DILocalVariable(name: "prev", arg: 2, scope: !5334, file: !4165, line: 64, type: !231)
!5340 = !DILocation(line: 64, column: 28, scope: !5334)
!5341 = !DILocalVariable(name: "next", arg: 3, scope: !5334, file: !4165, line: 65, type: !231)
!5342 = !DILocation(line: 65, column: 28, scope: !5334)
!5343 = !DILocation(line: 67, column: 24, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5334, file: !4165, line: 67, column: 6)
!5345 = !DILocation(line: 67, column: 29, scope: !5344)
!5346 = !DILocation(line: 67, column: 35, scope: !5344)
!5347 = !DILocation(line: 67, column: 7, scope: !5344)
!5348 = !DILocation(line: 67, column: 6, scope: !5334)
!5349 = !DILocation(line: 68, column: 3, scope: !5344)
!5350 = !DILocation(line: 70, column: 15, scope: !5334)
!5351 = !DILocation(line: 70, column: 2, scope: !5334)
!5352 = !DILocation(line: 70, column: 8, scope: !5334)
!5353 = !DILocation(line: 70, column: 13, scope: !5334)
!5354 = !DILocation(line: 71, column: 14, scope: !5334)
!5355 = !DILocation(line: 71, column: 2, scope: !5334)
!5356 = !DILocation(line: 71, column: 7, scope: !5334)
!5357 = !DILocation(line: 71, column: 12, scope: !5334)
!5358 = !DILocation(line: 72, column: 14, scope: !5334)
!5359 = !DILocation(line: 72, column: 2, scope: !5334)
!5360 = !DILocation(line: 72, column: 7, scope: !5334)
!5361 = !DILocation(line: 72, column: 12, scope: !5334)
!5362 = !DILocation(line: 73, column: 2, scope: !5334)
!5363 = !DILocation(line: 73, column: 2, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5334, file: !4165, line: 73, column: 2)
!5365 = !DILocation(line: 73, column: 2, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5364, file: !4165, line: 73, column: 2)
!5367 = !DILocation(line: 73, column: 2, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5364, file: !4165, line: 73, column: 2)
!5369 = !DILocation(line: 74, column: 1, scope: !5334)
!5370 = distinct !DISubprogram(name: "__list_add_valid", scope: !4165, file: !4165, line: 45, type: !5371, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!218, !231, !231, !231}
!5373 = !DILocalVariable(name: "new", arg: 1, scope: !5370, file: !4165, line: 45, type: !231)
!5374 = !DILocation(line: 45, column: 55, scope: !5370)
!5375 = !DILocalVariable(name: "prev", arg: 2, scope: !5370, file: !4165, line: 46, type: !231)
!5376 = !DILocation(line: 46, column: 23, scope: !5370)
!5377 = !DILocalVariable(name: "next", arg: 3, scope: !5370, file: !4165, line: 47, type: !231)
!5378 = !DILocation(line: 47, column: 23, scope: !5370)
!5379 = !DILocation(line: 49, column: 2, scope: !5370)
!5380 = distinct !DISubprogram(name: "__list_del_entry", scope: !4165, file: !4165, line: 130, type: !4231, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5381 = !DILocalVariable(name: "entry", arg: 1, scope: !5380, file: !4165, line: 130, type: !231)
!5382 = !DILocation(line: 130, column: 55, scope: !5380)
!5383 = !DILocation(line: 132, column: 30, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5380, file: !4165, line: 132, column: 6)
!5385 = !DILocation(line: 132, column: 7, scope: !5384)
!5386 = !DILocation(line: 132, column: 6, scope: !5380)
!5387 = !DILocation(line: 133, column: 3, scope: !5384)
!5388 = !DILocation(line: 135, column: 13, scope: !5380)
!5389 = !DILocation(line: 135, column: 20, scope: !5380)
!5390 = !DILocation(line: 135, column: 26, scope: !5380)
!5391 = !DILocation(line: 135, column: 33, scope: !5380)
!5392 = !DILocation(line: 135, column: 2, scope: !5380)
!5393 = !DILocation(line: 136, column: 1, scope: !5380)
!5394 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4165, file: !4165, line: 51, type: !5395, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!218, !231}
!5397 = !DILocalVariable(name: "entry", arg: 1, scope: !5394, file: !4165, line: 51, type: !231)
!5398 = !DILocation(line: 51, column: 61, scope: !5394)
!5399 = !DILocation(line: 53, column: 2, scope: !5394)
!5400 = distinct !DISubprogram(name: "__list_del", scope: !4165, file: !4165, line: 110, type: !4166, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5401 = !DILocalVariable(name: "prev", arg: 1, scope: !5400, file: !4165, line: 110, type: !231)
!5402 = !DILocation(line: 110, column: 50, scope: !5400)
!5403 = !DILocalVariable(name: "next", arg: 2, scope: !5400, file: !4165, line: 110, type: !231)
!5404 = !DILocation(line: 110, column: 75, scope: !5400)
!5405 = !DILocation(line: 112, column: 15, scope: !5400)
!5406 = !DILocation(line: 112, column: 2, scope: !5400)
!5407 = !DILocation(line: 112, column: 8, scope: !5400)
!5408 = !DILocation(line: 112, column: 13, scope: !5400)
!5409 = !DILocation(line: 113, column: 2, scope: !5400)
!5410 = !DILocation(line: 113, column: 2, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5400, file: !4165, line: 113, column: 2)
!5412 = !DILocation(line: 113, column: 2, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5411, file: !4165, line: 113, column: 2)
!5414 = !DILocation(line: 113, column: 2, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5411, file: !4165, line: 113, column: 2)
!5416 = !DILocation(line: 114, column: 1, scope: !5400)
!5417 = distinct !DISubprogram(name: "kref_get", scope: !3452, file: !3452, line: 43, type: !4459, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5418 = !DILocalVariable(name: "kref", arg: 1, scope: !5417, file: !3452, line: 43, type: !4461)
!5419 = !DILocation(line: 43, column: 42, scope: !5417)
!5420 = !DILocation(line: 45, column: 16, scope: !5417)
!5421 = !DILocation(line: 45, column: 22, scope: !5417)
!5422 = !DILocation(line: 45, column: 2, scope: !5417)
!5423 = !DILocation(line: 46, column: 1, scope: !5417)
!5424 = distinct !DISubprogram(name: "refcount_inc", scope: !139, file: !139, line: 265, type: !5425, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{null, !5427}
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!5428 = !DILocalVariable(name: "r", arg: 1, scope: !5424, file: !139, line: 265, type: !5427)
!5429 = !DILocation(line: 265, column: 45, scope: !5424)
!5430 = !DILocation(line: 267, column: 17, scope: !5424)
!5431 = !DILocation(line: 267, column: 2, scope: !5424)
!5432 = !DILocation(line: 268, column: 1, scope: !5424)
!5433 = distinct !DISubprogram(name: "__refcount_inc", scope: !139, file: !139, line: 248, type: !5434, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{null, !5427, !627}
!5436 = !DILocalVariable(name: "r", arg: 1, scope: !5433, file: !139, line: 248, type: !5427)
!5437 = !DILocation(line: 248, column: 47, scope: !5433)
!5438 = !DILocalVariable(name: "oldp", arg: 2, scope: !5433, file: !139, line: 248, type: !627)
!5439 = !DILocation(line: 248, column: 55, scope: !5433)
!5440 = !DILocation(line: 250, column: 20, scope: !5433)
!5441 = !DILocation(line: 250, column: 23, scope: !5433)
!5442 = !DILocation(line: 250, column: 2, scope: !5433)
!5443 = !DILocation(line: 251, column: 1, scope: !5433)
!5444 = distinct !DISubprogram(name: "__refcount_add", scope: !139, file: !139, line: 191, type: !5445, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{null, !178, !5427, !627}
!5447 = !DILocalVariable(name: "i", arg: 1, scope: !5448, file: !4344, line: 182, type: !178)
!5448 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4344, file: !4344, line: 182, type: !4345, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5449 = !DILocation(line: 182, column: 54, scope: !5448, inlinedAt: !5450)
!5450 = distinct !DILocation(line: 143, column: 9, scope: !5451, inlinedAt: !5452)
!5451 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4356, file: !4356, line: 140, type: !4345, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5452 = distinct !DILocation(line: 193, column: 12, scope: !5444)
!5453 = !DILocalVariable(name: "v", arg: 2, scope: !5448, file: !4344, line: 182, type: !4347)
!5454 = !DILocation(line: 182, column: 67, scope: !5448, inlinedAt: !5450)
!5455 = !DILocalVariable(name: "__ret", scope: !5456, file: !4344, line: 184, type: !178)
!5456 = distinct !DILexicalBlock(scope: !5448, file: !4344, line: 184, column: 9)
!5457 = !DILocation(line: 184, column: 9, scope: !5456, inlinedAt: !5450)
!5458 = !DILocation(line: 99, column: 79, scope: !4366, inlinedAt: !5459)
!5459 = distinct !DILocation(line: 142, column: 2, scope: !5451, inlinedAt: !5452)
!5460 = !DILocation(line: 99, column: 89, scope: !4366, inlinedAt: !5459)
!5461 = !DILocalVariable(name: "i", arg: 1, scope: !5451, file: !4356, line: 140, type: !178)
!5462 = !DILocation(line: 140, column: 30, scope: !5451, inlinedAt: !5452)
!5463 = !DILocalVariable(name: "v", arg: 2, scope: !5451, file: !4356, line: 140, type: !4347)
!5464 = !DILocation(line: 140, column: 43, scope: !5451, inlinedAt: !5452)
!5465 = !DILocalVariable(name: "i", arg: 1, scope: !5444, file: !139, line: 191, type: !178)
!5466 = !DILocation(line: 191, column: 39, scope: !5444)
!5467 = !DILocalVariable(name: "r", arg: 2, scope: !5444, file: !139, line: 191, type: !5427)
!5468 = !DILocation(line: 191, column: 54, scope: !5444)
!5469 = !DILocalVariable(name: "oldp", arg: 3, scope: !5444, file: !139, line: 191, type: !627)
!5470 = !DILocation(line: 191, column: 62, scope: !5444)
!5471 = !DILocalVariable(name: "old", scope: !5444, file: !139, line: 193, type: !178)
!5472 = !DILocation(line: 193, column: 6, scope: !5444)
!5473 = !DILocation(line: 193, column: 37, scope: !5444)
!5474 = !DILocation(line: 193, column: 41, scope: !5444)
!5475 = !DILocation(line: 193, column: 44, scope: !5444)
!5476 = !DILocation(line: 142, column: 31, scope: !5451, inlinedAt: !5452)
!5477 = !DILocation(line: 101, column: 20, scope: !4366, inlinedAt: !5459)
!5478 = !DILocation(line: 101, column: 23, scope: !4366, inlinedAt: !5459)
!5479 = !DILocation(line: 101, column: 2, scope: !4366, inlinedAt: !5459)
!5480 = !DILocation(line: 102, column: 2, scope: !4366, inlinedAt: !5459)
!5481 = !DILocation(line: 143, column: 39, scope: !5451, inlinedAt: !5452)
!5482 = !DILocation(line: 143, column: 42, scope: !5451, inlinedAt: !5452)
!5483 = !{i32 -2146517706}
!5484 = !DILocation(line: 195, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5444, file: !139, line: 195, column: 6)
!5486 = !DILocation(line: 195, column: 6, scope: !5444)
!5487 = !DILocation(line: 196, column: 11, scope: !5485)
!5488 = !DILocation(line: 196, column: 4, scope: !5485)
!5489 = !DILocation(line: 196, column: 9, scope: !5485)
!5490 = !DILocation(line: 196, column: 3, scope: !5485)
!5491 = !DILocation(line: 198, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5444, file: !139, line: 198, column: 6)
!5493 = !DILocation(line: 198, column: 6, scope: !5444)
!5494 = !DILocation(line: 199, column: 26, scope: !5492)
!5495 = !DILocation(line: 199, column: 3, scope: !5492)
!5496 = !DILocation(line: 200, column: 11, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5492, file: !139, line: 200, column: 11)
!5498 = !DILocation(line: 200, column: 11, scope: !5492)
!5499 = !DILocation(line: 201, column: 26, scope: !5497)
!5500 = !DILocation(line: 201, column: 3, scope: !5497)
!5501 = !DILocation(line: 202, column: 1, scope: !5444)
!5502 = distinct !DISubprogram(name: "kasan_check_write", scope: !5503, file: !5503, line: 38, type: !5504, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5503 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5504 = !DISubroutineType(types: !5505)
!5505 = !{!218, !4370, !7}
!5506 = !DILocalVariable(name: "p", arg: 1, scope: !5502, file: !5503, line: 38, type: !4370)
!5507 = !DILocation(line: 38, column: 59, scope: !5502)
!5508 = !DILocalVariable(name: "size", arg: 2, scope: !5502, file: !5503, line: 38, type: !7)
!5509 = !DILocation(line: 38, column: 75, scope: !5502)
!5510 = !DILocation(line: 40, column: 2, scope: !5502)
!5511 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5512, file: !5512, line: 178, type: !5513, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5512 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5513 = !DISubroutineType(types: !5514)
!5514 = !{null, !4370, !181, !178}
!5515 = !DILocalVariable(name: "ptr", arg: 1, scope: !5511, file: !5512, line: 178, type: !4370)
!5516 = !DILocation(line: 178, column: 60, scope: !5511)
!5517 = !DILocalVariable(name: "size", arg: 2, scope: !5511, file: !5512, line: 178, type: !181)
!5518 = !DILocation(line: 178, column: 72, scope: !5511)
!5519 = !DILocalVariable(name: "type", arg: 3, scope: !5511, file: !5512, line: 179, type: !178)
!5520 = !DILocation(line: 179, column: 15, scope: !5511)
!5521 = !DILocation(line: 179, column: 23, scope: !5511)
!5522 = distinct !DISubprogram(name: "kref_put", scope: !3452, file: !3452, line: 62, type: !5523, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{!178, !4461, !5525}
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!5526 = !DILocalVariable(name: "kref", arg: 1, scope: !5522, file: !3452, line: 62, type: !4461)
!5527 = !DILocation(line: 62, column: 41, scope: !5522)
!5528 = !DILocalVariable(name: "release", arg: 2, scope: !5522, file: !3452, line: 62, type: !5525)
!5529 = !DILocation(line: 62, column: 54, scope: !5522)
!5530 = !DILocation(line: 64, column: 29, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5522, file: !3452, line: 64, column: 6)
!5532 = !DILocation(line: 64, column: 35, scope: !5531)
!5533 = !DILocation(line: 64, column: 6, scope: !5531)
!5534 = !DILocation(line: 64, column: 6, scope: !5522)
!5535 = !DILocation(line: 65, column: 3, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5531, file: !3452, line: 64, column: 46)
!5537 = !DILocation(line: 65, column: 11, scope: !5536)
!5538 = !DILocation(line: 66, column: 3, scope: !5536)
!5539 = !DILocation(line: 68, column: 2, scope: !5522)
!5540 = !DILocation(line: 69, column: 1, scope: !5522)
!5541 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !139, file: !139, line: 331, type: !5542, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!218, !5427}
!5544 = !DILocalVariable(name: "r", arg: 1, scope: !5541, file: !139, line: 331, type: !5427)
!5545 = !DILocation(line: 331, column: 67, scope: !5541)
!5546 = !DILocation(line: 333, column: 33, scope: !5541)
!5547 = !DILocation(line: 333, column: 9, scope: !5541)
!5548 = !DILocation(line: 333, column: 2, scope: !5541)
!5549 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !139, file: !139, line: 313, type: !5550, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5550 = !DISubroutineType(types: !5551)
!5551 = !{!218, !5427, !627}
!5552 = !DILocalVariable(name: "r", arg: 1, scope: !5549, file: !139, line: 313, type: !5427)
!5553 = !DILocation(line: 313, column: 69, scope: !5549)
!5554 = !DILocalVariable(name: "oldp", arg: 2, scope: !5549, file: !139, line: 313, type: !627)
!5555 = !DILocation(line: 313, column: 77, scope: !5549)
!5556 = !DILocation(line: 315, column: 36, scope: !5549)
!5557 = !DILocation(line: 315, column: 39, scope: !5549)
!5558 = !DILocation(line: 315, column: 9, scope: !5549)
!5559 = !DILocation(line: 315, column: 2, scope: !5549)
!5560 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !139, file: !139, line: 270, type: !5561, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5561 = !DISubroutineType(types: !5562)
!5562 = !{!218, !178, !5427, !627}
!5563 = !DILocalVariable(name: "i", arg: 1, scope: !5564, file: !4344, line: 188, type: !178)
!5564 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4344, file: !4344, line: 188, type: !4345, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5565 = !DILocation(line: 188, column: 54, scope: !5564, inlinedAt: !5566)
!5566 = distinct !DILocation(line: 221, column: 9, scope: !5567, inlinedAt: !5568)
!5567 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4356, file: !4356, line: 218, type: !4345, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5568 = distinct !DILocation(line: 272, column: 12, scope: !5560)
!5569 = !DILocalVariable(name: "v", arg: 2, scope: !5564, file: !4344, line: 188, type: !4347)
!5570 = !DILocation(line: 188, column: 67, scope: !5564, inlinedAt: !5566)
!5571 = !DILocalVariable(name: "__ret", scope: !5572, file: !4344, line: 190, type: !178)
!5572 = distinct !DILexicalBlock(scope: !5564, file: !4344, line: 190, column: 9)
!5573 = !DILocation(line: 190, column: 9, scope: !5572, inlinedAt: !5566)
!5574 = !DILocation(line: 99, column: 79, scope: !4366, inlinedAt: !5575)
!5575 = distinct !DILocation(line: 220, column: 2, scope: !5567, inlinedAt: !5568)
!5576 = !DILocation(line: 99, column: 89, scope: !4366, inlinedAt: !5575)
!5577 = !DILocalVariable(name: "i", arg: 1, scope: !5567, file: !4356, line: 218, type: !178)
!5578 = !DILocation(line: 218, column: 30, scope: !5567, inlinedAt: !5568)
!5579 = !DILocalVariable(name: "v", arg: 2, scope: !5567, file: !4356, line: 218, type: !4347)
!5580 = !DILocation(line: 218, column: 43, scope: !5567, inlinedAt: !5568)
!5581 = !DILocalVariable(name: "i", arg: 1, scope: !5560, file: !139, line: 270, type: !178)
!5582 = !DILocation(line: 270, column: 61, scope: !5560)
!5583 = !DILocalVariable(name: "r", arg: 2, scope: !5560, file: !139, line: 270, type: !5427)
!5584 = !DILocation(line: 270, column: 76, scope: !5560)
!5585 = !DILocalVariable(name: "oldp", arg: 3, scope: !5560, file: !139, line: 270, type: !627)
!5586 = !DILocation(line: 270, column: 84, scope: !5560)
!5587 = !DILocalVariable(name: "old", scope: !5560, file: !139, line: 272, type: !178)
!5588 = !DILocation(line: 272, column: 6, scope: !5560)
!5589 = !DILocation(line: 272, column: 37, scope: !5560)
!5590 = !DILocation(line: 272, column: 41, scope: !5560)
!5591 = !DILocation(line: 272, column: 44, scope: !5560)
!5592 = !DILocation(line: 220, column: 31, scope: !5567, inlinedAt: !5568)
!5593 = !DILocation(line: 101, column: 20, scope: !4366, inlinedAt: !5575)
!5594 = !DILocation(line: 101, column: 23, scope: !4366, inlinedAt: !5575)
!5595 = !DILocation(line: 101, column: 2, scope: !4366, inlinedAt: !5575)
!5596 = !DILocation(line: 102, column: 2, scope: !4366, inlinedAt: !5575)
!5597 = !DILocation(line: 221, column: 39, scope: !5567, inlinedAt: !5568)
!5598 = !DILocation(line: 221, column: 42, scope: !5567, inlinedAt: !5568)
!5599 = !{i32 -2146516354}
!5600 = !DILocation(line: 274, column: 6, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5560, file: !139, line: 274, column: 6)
!5602 = !DILocation(line: 274, column: 6, scope: !5560)
!5603 = !DILocation(line: 275, column: 11, scope: !5601)
!5604 = !DILocation(line: 275, column: 4, scope: !5601)
!5605 = !DILocation(line: 275, column: 9, scope: !5601)
!5606 = !DILocation(line: 275, column: 3, scope: !5601)
!5607 = !DILocation(line: 277, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5560, file: !139, line: 277, column: 6)
!5609 = !DILocation(line: 277, column: 13, scope: !5608)
!5610 = !DILocation(line: 277, column: 10, scope: !5608)
!5611 = !DILocation(line: 277, column: 6, scope: !5560)
!5612 = !DILocation(line: 278, column: 3, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5608, file: !139, line: 277, column: 16)
!5614 = !{i32 -2145243757}
!5615 = !DILocation(line: 279, column: 3, scope: !5613)
!5616 = !DILocation(line: 282, column: 6, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5560, file: !139, line: 282, column: 6)
!5618 = !DILocation(line: 282, column: 6, scope: !5560)
!5619 = !DILocation(line: 283, column: 26, scope: !5617)
!5620 = !DILocation(line: 283, column: 3, scope: !5617)
!5621 = !DILocation(line: 285, column: 2, scope: !5560)
!5622 = !DILocation(line: 286, column: 1, scope: !5560)
!5623 = distinct !DISubprogram(name: "refcount_set", scope: !139, file: !139, line: 134, type: !5624, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !5427, !178}
!5626 = !DILocalVariable(name: "v", arg: 1, scope: !5627, file: !4344, line: 39, type: !4347)
!5627 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4344, file: !4344, line: 39, type: !5628, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5628 = !DISubroutineType(types: !5629)
!5629 = !{null, !4347, !178}
!5630 = !DILocation(line: 39, column: 55, scope: !5627, inlinedAt: !5631)
!5631 = distinct !DILocation(line: 46, column: 2, scope: !5632, inlinedAt: !5633)
!5632 = distinct !DISubprogram(name: "atomic_set", scope: !4356, file: !4356, line: 43, type: !5628, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5633 = distinct !DILocation(line: 136, column: 2, scope: !5623)
!5634 = !DILocalVariable(name: "i", arg: 2, scope: !5627, file: !4344, line: 39, type: !178)
!5635 = !DILocation(line: 39, column: 62, scope: !5627, inlinedAt: !5631)
!5636 = !DILocalVariable(name: "v", arg: 1, scope: !5637, file: !4367, line: 84, type: !4370)
!5637 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4367, file: !4367, line: 84, type: !4368, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5638 = !DILocation(line: 84, column: 74, scope: !5637, inlinedAt: !5639)
!5639 = distinct !DILocation(line: 45, column: 2, scope: !5632, inlinedAt: !5633)
!5640 = !DILocalVariable(name: "size", arg: 2, scope: !5637, file: !4367, line: 84, type: !181)
!5641 = !DILocation(line: 84, column: 84, scope: !5637, inlinedAt: !5639)
!5642 = !DILocalVariable(name: "v", arg: 1, scope: !5632, file: !4356, line: 43, type: !4347)
!5643 = !DILocation(line: 43, column: 22, scope: !5632, inlinedAt: !5633)
!5644 = !DILocalVariable(name: "i", arg: 2, scope: !5632, file: !4356, line: 43, type: !178)
!5645 = !DILocation(line: 43, column: 29, scope: !5632, inlinedAt: !5633)
!5646 = !DILocalVariable(name: "r", arg: 1, scope: !5623, file: !139, line: 134, type: !5427)
!5647 = !DILocation(line: 134, column: 45, scope: !5623)
!5648 = !DILocalVariable(name: "n", arg: 2, scope: !5623, file: !139, line: 134, type: !178)
!5649 = !DILocation(line: 134, column: 52, scope: !5623)
!5650 = !DILocation(line: 136, column: 14, scope: !5623)
!5651 = !DILocation(line: 136, column: 17, scope: !5623)
!5652 = !DILocation(line: 136, column: 23, scope: !5623)
!5653 = !DILocation(line: 45, column: 26, scope: !5632, inlinedAt: !5633)
!5654 = !DILocation(line: 86, column: 20, scope: !5637, inlinedAt: !5639)
!5655 = !DILocation(line: 86, column: 23, scope: !5637, inlinedAt: !5639)
!5656 = !DILocation(line: 86, column: 2, scope: !5637, inlinedAt: !5639)
!5657 = !DILocation(line: 87, column: 2, scope: !5637, inlinedAt: !5639)
!5658 = !DILocation(line: 46, column: 18, scope: !5632, inlinedAt: !5633)
!5659 = !DILocation(line: 46, column: 21, scope: !5632, inlinedAt: !5633)
!5660 = !DILocation(line: 41, column: 2, scope: !5661, inlinedAt: !5631)
!5661 = distinct !DILexicalBlock(scope: !5627, file: !4344, line: 41, column: 2)
!5662 = !DILocation(line: 137, column: 1, scope: !5623)
!5663 = distinct !DISubprogram(name: "get_jiffies_64", scope: !5664, file: !5664, line: 85, type: !5665, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5664 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5665 = !DISubroutineType(types: !5666)
!5666 = !{!214}
!5667 = !DILocation(line: 87, column: 14, scope: !5663)
!5668 = !DILocation(line: 87, column: 2, scope: !5663)
!5669 = distinct !DISubprogram(name: "reset_bus", scope: !3, file: !3, line: 219, type: !5670, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!178, !165, !218}
!5672 = !DILocalVariable(name: "card", arg: 1, scope: !5669, file: !3, line: 219, type: !165)
!5673 = !DILocation(line: 219, column: 38, scope: !5669)
!5674 = !DILocalVariable(name: "short_reset", arg: 2, scope: !5669, file: !3, line: 219, type: !218)
!5675 = !DILocation(line: 219, column: 49, scope: !5669)
!5676 = !DILocalVariable(name: "reg", scope: !5669, file: !3, line: 221, type: !178)
!5677 = !DILocation(line: 221, column: 6, scope: !5669)
!5678 = !DILocation(line: 221, column: 12, scope: !5669)
!5679 = !DILocalVariable(name: "bit", scope: !5669, file: !3, line: 222, type: !178)
!5680 = !DILocation(line: 222, column: 6, scope: !5669)
!5681 = !DILocation(line: 222, column: 12, scope: !5669)
!5682 = !DILocation(line: 224, column: 9, scope: !5669)
!5683 = !DILocation(line: 224, column: 15, scope: !5669)
!5684 = !DILocation(line: 224, column: 23, scope: !5669)
!5685 = !DILocation(line: 224, column: 38, scope: !5669)
!5686 = !DILocation(line: 224, column: 44, scope: !5669)
!5687 = !DILocation(line: 224, column: 52, scope: !5669)
!5688 = !DILocation(line: 224, column: 2, scope: !5669)
!5689 = distinct !DISubprogram(name: "fw_node_get", scope: !172, file: !172, line: 197, type: !5690, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{!3905, !3905}
!5692 = !DILocalVariable(name: "node", arg: 1, scope: !5689, file: !172, line: 197, type: !3905)
!5693 = !DILocation(line: 197, column: 59, scope: !5689)
!5694 = !DILocation(line: 199, column: 16, scope: !5689)
!5695 = !DILocation(line: 199, column: 22, scope: !5689)
!5696 = !DILocation(line: 199, column: 2, scope: !5689)
!5697 = !DILocation(line: 201, column: 9, scope: !5689)
!5698 = !DILocation(line: 201, column: 2, scope: !5689)
!5699 = distinct !DISubprogram(name: "is_next_generation", scope: !172, file: !172, line: 218, type: !5700, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{!218, !178, !178}
!5702 = !DILocalVariable(name: "new_generation", arg: 1, scope: !5699, file: !172, line: 218, type: !178)
!5703 = !DILocation(line: 218, column: 43, scope: !5699)
!5704 = !DILocalVariable(name: "old_generation", arg: 2, scope: !5699, file: !172, line: 218, type: !178)
!5705 = !DILocation(line: 218, column: 63, scope: !5699)
!5706 = !DILocation(line: 220, column: 10, scope: !5699)
!5707 = !DILocation(line: 220, column: 25, scope: !5699)
!5708 = !DILocation(line: 220, column: 38, scope: !5699)
!5709 = !DILocation(line: 220, column: 53, scope: !5699)
!5710 = !DILocation(line: 220, column: 58, scope: !5699)
!5711 = !DILocation(line: 220, column: 33, scope: !5699)
!5712 = !DILocation(line: 220, column: 2, scope: !5699)
!5713 = distinct !DISubprogram(name: "allocate_broadcast_channel", scope: !3, file: !3, line: 258, type: !5714, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5714 = !DISubroutineType(types: !5715)
!5715 = !{null, !165, !178}
!5716 = !DILocalVariable(name: "card", arg: 1, scope: !5713, file: !3, line: 258, type: !165)
!5717 = !DILocation(line: 258, column: 56, scope: !5713)
!5718 = !DILocalVariable(name: "generation", arg: 2, scope: !5713, file: !3, line: 258, type: !178)
!5719 = !DILocation(line: 258, column: 66, scope: !5713)
!5720 = !DILocalVariable(name: "channel", scope: !5713, file: !3, line: 260, type: !178)
!5721 = !DILocation(line: 260, column: 6, scope: !5713)
!5722 = !DILocalVariable(name: "bandwidth", scope: !5713, file: !3, line: 260, type: !178)
!5723 = !DILocation(line: 260, column: 15, scope: !5713)
!5724 = !DILocation(line: 262, column: 7, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 262, column: 6)
!5726 = !DILocation(line: 262, column: 13, scope: !5725)
!5727 = !DILocation(line: 262, column: 6, scope: !5713)
!5728 = !DILocation(line: 263, column: 26, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 262, column: 42)
!5730 = !DILocation(line: 263, column: 32, scope: !5729)
!5731 = !DILocation(line: 263, column: 3, scope: !5729)
!5732 = !DILocation(line: 265, column: 7, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 265, column: 7)
!5734 = !DILocation(line: 265, column: 15, scope: !5733)
!5735 = !DILocation(line: 265, column: 7, scope: !5729)
!5736 = !DILocation(line: 266, column: 14, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 265, column: 22)
!5738 = !DILocation(line: 266, column: 4, scope: !5737)
!5739 = !DILocation(line: 267, column: 4, scope: !5737)
!5740 = !DILocation(line: 269, column: 3, scope: !5729)
!5741 = !DILocation(line: 269, column: 9, scope: !5729)
!5742 = !DILocation(line: 269, column: 37, scope: !5729)
!5743 = !DILocation(line: 270, column: 2, scope: !5729)
!5744 = !DILocation(line: 272, column: 24, scope: !5713)
!5745 = !DILocation(line: 272, column: 30, scope: !5713)
!5746 = !DILocation(line: 272, column: 52, scope: !5713)
!5747 = !DILocation(line: 272, column: 46, scope: !5713)
!5748 = !DILocation(line: 272, column: 38, scope: !5713)
!5749 = !DILocation(line: 272, column: 2, scope: !5713)
!5750 = !DILocation(line: 274, column: 1, scope: !5713)
!5751 = distinct !DISubprogram(name: "fw_node_put", scope: !172, file: !172, line: 204, type: !5752, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{null, !3905}
!5754 = !DILocalVariable(name: "node", arg: 1, scope: !5751, file: !172, line: 204, type: !3905)
!5755 = !DILocation(line: 204, column: 48, scope: !5751)
!5756 = !DILocation(line: 206, column: 29, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5751, file: !172, line: 206, column: 6)
!5758 = !DILocation(line: 206, column: 35, scope: !5757)
!5759 = !DILocation(line: 206, column: 6, scope: !5757)
!5760 = !DILocation(line: 206, column: 6, scope: !5751)
!5761 = !DILocation(line: 207, column: 9, scope: !5757)
!5762 = !DILocation(line: 207, column: 3, scope: !5757)
!5763 = !DILocation(line: 208, column: 1, scope: !5751)
!5764 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5765, file: !5765, line: 656, type: !2202, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5765 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5766 = !DILocalVariable(name: "__edi", scope: !5767, file: !5765, line: 658, type: !163)
!5767 = distinct !DILexicalBlock(scope: !5764, file: !5765, line: 658, column: 2)
!5768 = !DILocation(line: 658, column: 2, scope: !5767)
!5769 = !DILocalVariable(name: "__esi", scope: !5767, file: !5765, line: 658, type: !163)
!5770 = !DILocalVariable(name: "__edx", scope: !5767, file: !5765, line: 658, type: !163)
!5771 = !DILocalVariable(name: "__ecx", scope: !5767, file: !5765, line: 658, type: !163)
!5772 = !DILocalVariable(name: "__eax", scope: !5767, file: !5765, line: 658, type: !163)
!5773 = !{i32 -2145761332, i32 -2145760600, i32 -2145760366, i32 -2145760315, i32 -2145760287, i32 -2145760262, i32 -2145760578, i32 -2145760565, i32 -2145760127, i32 -2145760008, i32 -2145760473, i32 -2145760446, i32 -2145760418, i32 -2145760388}
!5774 = !DILocation(line: 659, column: 1, scope: !5764)
!5775 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5765, file: !5765, line: 661, type: !2202, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5776 = !DILocalVariable(name: "__edi", scope: !5777, file: !5765, line: 663, type: !163)
!5777 = distinct !DILexicalBlock(scope: !5775, file: !5765, line: 663, column: 2)
!5778 = !DILocation(line: 663, column: 2, scope: !5777)
!5779 = !DILocalVariable(name: "__esi", scope: !5777, file: !5765, line: 663, type: !163)
!5780 = !DILocalVariable(name: "__edx", scope: !5777, file: !5765, line: 663, type: !163)
!5781 = !DILocalVariable(name: "__ecx", scope: !5777, file: !5765, line: 663, type: !163)
!5782 = !DILocalVariable(name: "__eax", scope: !5777, file: !5765, line: 663, type: !163)
!5783 = !{i32 -2145758748, i32 -2145758018, i32 -2145757784, i32 -2145757733, i32 -2145757705, i32 -2145757680, i32 -2145757996, i32 -2145757983, i32 -2145757545, i32 -2145757426, i32 -2145757891, i32 -2145757864, i32 -2145757836, i32 -2145757806}
!5784 = !DILocation(line: 664, column: 1, scope: !5775)
!5785 = distinct !DISubprogram(name: "kasan_check_read", scope: !5503, file: !5503, line: 34, type: !5504, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5786 = !DILocalVariable(name: "p", arg: 1, scope: !5785, file: !5503, line: 34, type: !4370)
!5787 = !DILocation(line: 34, column: 58, scope: !5785)
!5788 = !DILocalVariable(name: "size", arg: 2, scope: !5785, file: !5503, line: 34, type: !7)
!5789 = !DILocation(line: 34, column: 74, scope: !5785)
!5790 = !DILocation(line: 36, column: 2, scope: !5785)
!5791 = distinct !DISubprogram(name: "dummy_read_phy_reg", scope: !3, file: !3, line: 581, type: !188, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5792 = !DILocalVariable(name: "card", arg: 1, scope: !5791, file: !3, line: 581, type: !165)
!5793 = !DILocation(line: 581, column: 47, scope: !5791)
!5794 = !DILocalVariable(name: "address", arg: 2, scope: !5791, file: !3, line: 581, type: !178)
!5795 = !DILocation(line: 581, column: 57, scope: !5791)
!5796 = !DILocation(line: 583, column: 2, scope: !5791)
!5797 = distinct !DISubprogram(name: "dummy_update_phy_reg", scope: !3, file: !3, line: 586, type: !192, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5798 = !DILocalVariable(name: "card", arg: 1, scope: !5797, file: !3, line: 586, type: !165)
!5799 = !DILocation(line: 586, column: 49, scope: !5797)
!5800 = !DILocalVariable(name: "address", arg: 2, scope: !5797, file: !3, line: 586, type: !178)
!5801 = !DILocation(line: 586, column: 59, scope: !5797)
!5802 = !DILocalVariable(name: "clear_bits", arg: 3, scope: !5797, file: !3, line: 587, type: !178)
!5803 = !DILocation(line: 587, column: 9, scope: !5797)
!5804 = !DILocalVariable(name: "set_bits", arg: 4, scope: !5797, file: !3, line: 587, type: !178)
!5805 = !DILocation(line: 587, column: 25, scope: !5797)
!5806 = !DILocation(line: 589, column: 2, scope: !5797)
!5807 = distinct !DISubprogram(name: "dummy_send_request", scope: !3, file: !3, line: 592, type: !197, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5808 = !DILocalVariable(name: "card", arg: 1, scope: !5807, file: !3, line: 592, type: !165)
!5809 = !DILocation(line: 592, column: 48, scope: !5807)
!5810 = !DILocalVariable(name: "packet", arg: 2, scope: !5807, file: !3, line: 592, type: !199)
!5811 = !DILocation(line: 592, column: 72, scope: !5807)
!5812 = !DILocation(line: 594, column: 2, scope: !5807)
!5813 = !DILocation(line: 594, column: 10, scope: !5807)
!5814 = !DILocation(line: 594, column: 19, scope: !5807)
!5815 = !DILocation(line: 594, column: 27, scope: !5807)
!5816 = !DILocation(line: 595, column: 1, scope: !5807)
!5817 = distinct !DISubprogram(name: "dummy_send_response", scope: !3, file: !3, line: 597, type: !197, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5818 = !DILocalVariable(name: "card", arg: 1, scope: !5817, file: !3, line: 597, type: !165)
!5819 = !DILocation(line: 597, column: 49, scope: !5817)
!5820 = !DILocalVariable(name: "packet", arg: 2, scope: !5817, file: !3, line: 597, type: !199)
!5821 = !DILocation(line: 597, column: 73, scope: !5817)
!5822 = !DILocation(line: 599, column: 2, scope: !5817)
!5823 = !DILocation(line: 599, column: 10, scope: !5817)
!5824 = !DILocation(line: 599, column: 19, scope: !5817)
!5825 = !DILocation(line: 599, column: 27, scope: !5817)
!5826 = !DILocation(line: 600, column: 1, scope: !5817)
!5827 = distinct !DISubprogram(name: "dummy_cancel_packet", scope: !3, file: !3, line: 602, type: !237, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5828 = !DILocalVariable(name: "card", arg: 1, scope: !5827, file: !3, line: 602, type: !165)
!5829 = !DILocation(line: 602, column: 48, scope: !5827)
!5830 = !DILocalVariable(name: "packet", arg: 2, scope: !5827, file: !3, line: 602, type: !199)
!5831 = !DILocation(line: 602, column: 72, scope: !5827)
!5832 = !DILocation(line: 604, column: 2, scope: !5827)
!5833 = distinct !DISubprogram(name: "dummy_enable_phys_dma", scope: !3, file: !3, line: 607, type: !241, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5834 = !DILocalVariable(name: "card", arg: 1, scope: !5833, file: !3, line: 607, type: !165)
!5835 = !DILocation(line: 607, column: 50, scope: !5833)
!5836 = !DILocalVariable(name: "node_id", arg: 2, scope: !5833, file: !3, line: 608, type: !178)
!5837 = !DILocation(line: 608, column: 10, scope: !5833)
!5838 = !DILocalVariable(name: "generation", arg: 3, scope: !5833, file: !3, line: 608, type: !178)
!5839 = !DILocation(line: 608, column: 23, scope: !5833)
!5840 = !DILocation(line: 610, column: 2, scope: !5833)
!5841 = distinct !DISubprogram(name: "dummy_allocate_iso_context", scope: !3, file: !3, line: 613, type: !253, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5842 = !DILocalVariable(name: "card", arg: 1, scope: !5841, file: !3, line: 613, type: !165)
!5843 = !DILocation(line: 613, column: 74, scope: !5841)
!5844 = !DILocalVariable(name: "type", arg: 2, scope: !5841, file: !3, line: 614, type: !178)
!5845 = !DILocation(line: 614, column: 9, scope: !5841)
!5846 = !DILocalVariable(name: "channel", arg: 3, scope: !5841, file: !3, line: 614, type: !178)
!5847 = !DILocation(line: 614, column: 19, scope: !5841)
!5848 = !DILocalVariable(name: "header_size", arg: 4, scope: !5841, file: !3, line: 614, type: !181)
!5849 = !DILocation(line: 614, column: 35, scope: !5841)
!5850 = !DILocation(line: 616, column: 9, scope: !5841)
!5851 = !DILocation(line: 616, column: 2, scope: !5841)
!5852 = distinct !DISubprogram(name: "dummy_start_iso", scope: !3, file: !3, line: 619, type: !284, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5853 = !DILocalVariable(name: "ctx", arg: 1, scope: !5852, file: !3, line: 619, type: !255)
!5854 = !DILocation(line: 619, column: 51, scope: !5852)
!5855 = !DILocalVariable(name: "cycle", arg: 2, scope: !5852, file: !3, line: 620, type: !286)
!5856 = !DILocation(line: 620, column: 11, scope: !5852)
!5857 = !DILocalVariable(name: "sync", arg: 3, scope: !5852, file: !3, line: 620, type: !206)
!5858 = !DILocation(line: 620, column: 22, scope: !5852)
!5859 = !DILocalVariable(name: "tags", arg: 4, scope: !5852, file: !3, line: 620, type: !206)
!5860 = !DILocation(line: 620, column: 32, scope: !5852)
!5861 = !DILocation(line: 622, column: 2, scope: !5852)
!5862 = distinct !DISubprogram(name: "dummy_set_iso_channels", scope: !3, file: !3, line: 625, type: !290, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5863 = !DILocalVariable(name: "ctx", arg: 1, scope: !5862, file: !3, line: 625, type: !255)
!5864 = !DILocation(line: 625, column: 58, scope: !5862)
!5865 = !DILocalVariable(name: "channels", arg: 2, scope: !5862, file: !3, line: 625, type: !292)
!5866 = !DILocation(line: 625, column: 68, scope: !5862)
!5867 = !DILocation(line: 627, column: 2, scope: !5862)
!5868 = distinct !DISubprogram(name: "dummy_queue_iso", scope: !3, file: !3, line: 630, type: !295, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5869 = !DILocalVariable(name: "ctx", arg: 1, scope: !5868, file: !3, line: 630, type: !255)
!5870 = !DILocation(line: 630, column: 51, scope: !5868)
!5871 = !DILocalVariable(name: "p", arg: 2, scope: !5868, file: !3, line: 630, type: !297)
!5872 = !DILocation(line: 630, column: 78, scope: !5868)
!5873 = !DILocalVariable(name: "buffer", arg: 3, scope: !5868, file: !3, line: 631, type: !313)
!5874 = !DILocation(line: 631, column: 29, scope: !5868)
!5875 = !DILocalVariable(name: "payload", arg: 4, scope: !5868, file: !3, line: 631, type: !163)
!5876 = !DILocation(line: 631, column: 51, scope: !5868)
!5877 = !DILocation(line: 633, column: 2, scope: !5868)
!5878 = distinct !DISubprogram(name: "dummy_flush_queue_iso", scope: !3, file: !3, line: 636, type: !280, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5879 = !DILocalVariable(name: "ctx", arg: 1, scope: !5878, file: !3, line: 636, type: !255)
!5880 = !DILocation(line: 636, column: 58, scope: !5878)
!5881 = !DILocation(line: 638, column: 1, scope: !5878)
!5882 = distinct !DISubprogram(name: "dummy_flush_iso_completions", scope: !3, file: !3, line: 640, type: !3156, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5883 = !DILocalVariable(name: "ctx", arg: 1, scope: !5882, file: !3, line: 640, type: !255)
!5884 = !DILocation(line: 640, column: 63, scope: !5882)
!5885 = !DILocation(line: 642, column: 2, scope: !5882)
!5886 = distinct !DISubprogram(name: "ERR_PTR", scope: !5887, file: !5887, line: 24, type: !5888, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!5887 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!164, !102}
!5890 = !DILocalVariable(name: "error", arg: 1, scope: !5886, file: !5887, line: 24, type: !102)
!5891 = !DILocation(line: 24, column: 48, scope: !5886)
!5892 = !DILocation(line: 26, column: 18, scope: !5886)
!5893 = !DILocation(line: 26, column: 9, scope: !5886)
!5894 = !DILocation(line: 26, column: 2, scope: !5886)
