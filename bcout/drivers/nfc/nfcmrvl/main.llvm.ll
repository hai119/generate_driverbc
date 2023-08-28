; ModuleID = '../bcout/drivers/nfc/nfcmrvl/main.llvm.bc'
source_filename = "drivers/nfc/nfcmrvl/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.nci_ops = type { i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*, %struct.sk_buff*)*, i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*, i8*)*, i32 (%struct.nci_dev*, i8)*, i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*, i32)*, i32 (%struct.nci_dev*, i32)*, i32 (%struct.nci_dev*, i32, i8*, i64, void (i8*, i8*, i64, i32)*, i8*)*, i32 (%struct.nci_dev*)*, void (%struct.nci_dev*, i8, i8, %struct.sk_buff*)*, void (%struct.nci_dev*, i8, i8, %struct.sk_buff*)*, %struct.nci_driver_ops*, i64, %struct.nci_driver_ops*, i64 }
%struct.nci_dev = type { %struct.nfc_dev*, %struct.nci_ops*, %struct.nci_hci_dev*, i32, i32, %struct.atomic_t, i64, %struct.atomic_t, i8, %struct.list_head, %struct.nci_conn_info*, %struct.timer_list, %struct.timer_list, %struct.workqueue_struct*, %struct.work_struct, %struct.workqueue_struct*, %struct.work_struct, %struct.workqueue_struct*, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, i8*, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, %struct.sk_buff*, [48 x i8], i8 }
%struct.nfc_dev = type { i32, i32, %struct.nfc_target*, i32, i32, %struct.device, i8, i8, i8, i8, %struct.nfc_target*, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, %struct.rfkill*, %struct.nfc_vendor_cmd*, i32, %struct.nfc_ops*, %struct.genl_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.68, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.68 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.56 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.57, i32 }
%union.anon.57 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.poll_table_struct = type opaque
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.34 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.35, %union.anon.36, i32 }
%struct.request_queue = type opaque
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.50, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.53 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i64, i64 }
%union.anon.53 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.59 = type { %struct.callback_head }
%union.anon.60 = type { %struct.file_operations* }
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
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.rfkill = type opaque
%struct.nfc_vendor_cmd = type { i32, i32, i32 (%struct.nfc_dev*, i8*, i64)* }
%struct.nfc_ops = type { i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*, i32, i32)*, void (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*, %struct.nfc_target*, i8, i8*, i64)*, i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*, %struct.nfc_target*, i32)*, void (%struct.nfc_dev*, %struct.nfc_target*, i8)*, i32 (%struct.nfc_dev*, %struct.nfc_target*, %struct.sk_buff*, void (i8*, %struct.sk_buff*, i32)*, i8*)*, i32 (%struct.nfc_dev*, %struct.sk_buff*)*, i32 (%struct.nfc_dev*, %struct.nfc_target*)*, i32 (%struct.nfc_dev*, i8*)*, i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*, i32)*, i32 (%struct.nfc_dev*, i32)*, i32 (%struct.nfc_dev*, i32, i8*, i64, void (i8*, i8*, i64, i32)*, i8*)* }
%struct.genl_info = type opaque
%struct.nci_hci_dev = type { i8, %struct.nci_dev*, %struct.nci_conn_info*, %struct.nci_hci_init_data, [128 x %struct.nci_hci_pipe], [256 x i8], i32, i32, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head }
%struct.nci_hci_init_data = type { i8, [50 x %struct.nci_hci_gate], [9 x i8] }
%struct.nci_hci_gate = type { i8, i8, i8 }
%struct.nci_hci_pipe = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.nci_conn_info = type { %struct.list_head, %struct.dest_spec_params*, i8, i8, i8, %struct.atomic_t, i8, void (i8*, %struct.sk_buff*, i32)*, i8*, %struct.sk_buff* }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.workqueue_struct = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dest_spec_params = type { i8, i8 }
%struct.sk_buff = type { %union.anon.69, %union.anon.72, %union.anon.73, [48 x i8], %union.anon.74, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.76, i32, i32, i32, i16, i16, %union.anon.78, %union.anon.79, %union.anon.80, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.71 }
%union.anon.71 = type { %struct.net_device* }
%struct.net_device = type opaque
%union.anon.72 = type { %struct.sock* }
%union.anon.73 = type { i64 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i64, void (%struct.sk_buff*)* }
%union.anon.76 = type { i32 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i16 }
%struct.nci_driver_ops = type { i16, i32 (%struct.nci_dev*, %struct.sk_buff*)*, i32 (%struct.nci_dev*, %struct.sk_buff*)* }
%struct.kmem_cache = type opaque
%struct.nfcmrvl_private = type { i64, %struct.nfcmrvl_platform_data, %struct.nci_dev*, %struct.nfcmrvl_fw_dnld, i8, i8*, %struct.device*, i32, %struct.nfcmrvl_if_ops* }
%struct.nfcmrvl_platform_data = type { i32, i32, i32, i32, i32, i32 }
%struct.nfcmrvl_fw_dnld = type { [33 x i8], %struct.firmware*, %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw_binary_config*, i32, i32, i32, i32, %struct.workqueue_struct*, %struct.work_struct, %struct.sk_buff_head, %struct.timer_list }
%struct.firmware = type opaque
%struct.nfcmrvl_fw = type { i32, i32, i32, %struct.nfcmrvl_fw_binary_config, %struct.nfcmrvl_fw_binary_config, %struct.nfcmrvl_fw_binary_config, [64 x i8] }
%struct.nfcmrvl_fw_binary_config = type <{ i32, %union.anon.81 }>
%union.anon.81 = type { i8*, [56 x i8] }
%struct.nfcmrvl_if_ops = type { i32 (%struct.nfcmrvl_private*)*, i32 (%struct.nfcmrvl_private*)*, i32 (%struct.nfcmrvl_private*, %struct.sk_buff*)*, void (%struct.nfcmrvl_private*, i8*)* }
%struct.gpio_desc = type opaque

@.str = private unnamed_addr constant [16 x i8] c"nfcmrvl_reset_n\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"NFC: failed to request reset_n io\0A\00", align 1
@nfcmrvl_nci_ops = internal global %struct.nci_ops { i32 (%struct.nci_dev*)* null, i32 (%struct.nci_dev*)* @nfcmrvl_nci_open, i32 (%struct.nci_dev*)* @nfcmrvl_nci_close, i32 (%struct.nci_dev*, %struct.sk_buff*)* @nfcmrvl_nci_send, i32 (%struct.nci_dev*)* @nfcmrvl_nci_setup, i32 (%struct.nci_dev*)* null, i32 (%struct.nci_dev*, i8*)* @nfcmrvl_nci_fw_download, i32 (%struct.nci_dev*, i8)* null, i32 (%struct.nci_dev*)* null, i32 (%struct.nci_dev*, i32)* null, i32 (%struct.nci_dev*, i32)* null, i32 (%struct.nci_dev*, i32, i8*, i64, void (i8*, i8*, i64, i32)*, i8*)* null, i32 (%struct.nci_dev*)* null, void (%struct.nci_dev*, i8, i8, %struct.sk_buff*)* null, void (%struct.nci_dev*, i8, i8, %struct.sk_buff*)* null, %struct.nci_driver_ops* null, i64 0, %struct.nci_driver_ops* null, i64 0 }, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [33 x i8] c"NFC: nci_allocate_device failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"NFC: failed to initialize FW download %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"NFC: nci_register_device failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"NFC: registered with nci successfully\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"NFC: reset the chip\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"NFC: no reset available on this interface\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"reset-n-io\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\016no reset-n-io config\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\013invalid reset-n-io GPIO\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"hci-muxed\00", align 1
@__UNIQUE_ID_author278 = internal constant [42 x i8] c"nfcmrvl.author=Marvell International Ltd.\00", section ".modinfo", align 1, !dbg !160
@__UNIQUE_ID_description279 = internal constant [39 x i8] c"nfcmrvl.description=Marvell NFC driver\00", section ".modinfo", align 1, !dbg !166
@__UNIQUE_ID_file280 = internal constant [41 x i8] c"nfcmrvl.file=drivers/nfc/nfcmrvl/nfcmrvl\00", section ".modinfo", align 1, !dbg !171
@__UNIQUE_ID_license281 = internal constant [23 x i8] c"nfcmrvl.license=GPL v2\00", section ".modinfo", align 1, !dbg !176
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"NFC: send entry, len %d\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_author278, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_description279, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file280, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license281, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.nfcmrvl_private* @nfcmrvl_nci_register_dev(i32 %phy, i8* %drv_data, %struct.nfcmrvl_if_ops* %ops, %struct.device* %dev, %struct.nfcmrvl_platform_data* %pdata) #0 !dbg !5035 {
entry:
  %retval = alloca %struct.nfcmrvl_private*, align 8
  %phy.addr = alloca i32, align 4
  %drv_data.addr = alloca i8*, align 8
  %ops.addr = alloca %struct.nfcmrvl_if_ops*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %pdata.addr = alloca %struct.nfcmrvl_platform_data*, align 8
  %priv = alloca %struct.nfcmrvl_private*, align 8
  %rc = alloca i32, align 4
  %headroom = alloca i32, align 4
  %tailroom = alloca i32, align 4
  %protocols = alloca i32, align 4
  store i32 %phy, i32* %phy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %phy.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  store i8* %drv_data, i8** %drv_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %drv_data.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  store %struct.nfcmrvl_if_ops* %ops, %struct.nfcmrvl_if_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_if_ops** %ops.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  store %struct.nfcmrvl_platform_data* %pdata, %struct.nfcmrvl_platform_data** %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_platform_data** %pdata.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_private** %priv, metadata !5143, metadata !DIExpression()), !dbg !5144
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5145, metadata !DIExpression()), !dbg !5146
  call void @llvm.dbg.declare(metadata i32* %headroom, metadata !5147, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.declare(metadata i32* %tailroom, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata i32* %protocols, metadata !5151, metadata !DIExpression()), !dbg !5152
  %call = call i8* @kzalloc(i64 264, i32 3264) #8, !dbg !5153
  %0 = bitcast i8* %call to %struct.nfcmrvl_private*, !dbg !5153
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %priv, align 8, !dbg !5154
  %1 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5155
  %tobool = icmp ne %struct.nfcmrvl_private* %1, null, !dbg !5155
  br i1 %tobool, label %if.end, label %if.then, !dbg !5157

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #8, !dbg !5158
  %2 = bitcast i8* %call1 to %struct.nfcmrvl_private*, !dbg !5158
  store %struct.nfcmrvl_private* %2, %struct.nfcmrvl_private** %retval, align 8, !dbg !5159
  br label %return, !dbg !5159

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %drv_data.addr, align 8, !dbg !5160
  %4 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5161
  %drv_data2 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %4, i32 0, i32 5, !dbg !5162
  store i8* %3, i8** %drv_data2, align 8, !dbg !5163
  %5 = load %struct.nfcmrvl_if_ops*, %struct.nfcmrvl_if_ops** %ops.addr, align 8, !dbg !5164
  %6 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5165
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %6, i32 0, i32 8, !dbg !5166
  store %struct.nfcmrvl_if_ops* %5, %struct.nfcmrvl_if_ops** %if_ops, align 8, !dbg !5167
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5168
  %8 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5169
  %dev3 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %8, i32 0, i32 6, !dbg !5170
  store %struct.device* %7, %struct.device** %dev3, align 8, !dbg !5171
  %9 = load i32, i32* %phy.addr, align 4, !dbg !5172
  %10 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5173
  %phy4 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %10, i32 0, i32 7, !dbg !5174
  store i32 %9, i32* %phy4, align 8, !dbg !5175
  %11 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5176
  %config = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %11, i32 0, i32 1, !dbg !5177
  %12 = bitcast %struct.nfcmrvl_platform_data* %config to i8*, !dbg !5178
  %13 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %pdata.addr, align 8, !dbg !5179
  %14 = bitcast %struct.nfcmrvl_platform_data* %13 to i8*, !dbg !5178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 4 %14, i64 24, i1 false), !dbg !5178
  %15 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5180
  %config5 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %15, i32 0, i32 1, !dbg !5182
  %reset_n_io = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config5, i32 0, i32 0, !dbg !5183
  %16 = load i32, i32* %reset_n_io, align 8, !dbg !5183
  %call6 = call zeroext i1 @gpio_is_valid(i32 %16) #8, !dbg !5184
  br i1 %call6, label %if.then7, label %if.end15, !dbg !5185

if.then7:                                         ; preds = %if.end
  %17 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5186
  %config8 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %17, i32 0, i32 1, !dbg !5188
  %reset_n_io9 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config8, i32 0, i32 0, !dbg !5189
  %18 = load i32, i32* %reset_n_io9, align 8, !dbg !5189
  %call10 = call i32 @gpio_request_one(i32 %18, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #8, !dbg !5190
  store i32 %call10, i32* %rc, align 4, !dbg !5191
  %19 = load i32, i32* %rc, align 4, !dbg !5192
  %cmp = icmp slt i32 %19, 0, !dbg !5194
  br i1 %cmp, label %if.then11, label %if.end14, !dbg !5195

if.then11:                                        ; preds = %if.then7
  %20 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5196
  %config12 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %20, i32 0, i32 1, !dbg !5198
  %reset_n_io13 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config12, i32 0, i32 0, !dbg !5199
  store i32 -22, i32* %reset_n_io13, align 8, !dbg !5200
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5201
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5201
  br label %if.end14, !dbg !5202

if.end14:                                         ; preds = %if.then11, %if.then7
  br label %if.end15, !dbg !5203

if.end15:                                         ; preds = %if.end14, %if.end
  %22 = load i32, i32* %phy.addr, align 4, !dbg !5204
  %cmp16 = icmp eq i32 %22, 3, !dbg !5206
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !5207

if.then17:                                        ; preds = %if.end15
  store i32 4, i32* %headroom, align 4, !dbg !5208
  store i32 1, i32* %tailroom, align 4, !dbg !5210
  br label %if.end18, !dbg !5211

if.else:                                          ; preds = %if.end15
  store i32 0, i32* %tailroom, align 4, !dbg !5212
  store i32 0, i32* %headroom, align 4, !dbg !5213
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %23 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5214
  %config19 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %23, i32 0, i32 1, !dbg !5216
  %hci_muxed = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config19, i32 0, i32 1, !dbg !5217
  %24 = load i32, i32* %hci_muxed, align 4, !dbg !5217
  %tobool20 = icmp ne i32 %24, 0, !dbg !5214
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5218

if.then21:                                        ; preds = %if.end18
  %25 = load i32, i32* %headroom, align 4, !dbg !5219
  %add = add i32 %25, 4, !dbg !5219
  store i32 %add, i32* %headroom, align 4, !dbg !5219
  br label %if.end22, !dbg !5220

if.end22:                                         ; preds = %if.then21, %if.end18
  store i32 254, i32* %protocols, align 4, !dbg !5221
  %26 = load i32, i32* %protocols, align 4, !dbg !5222
  %27 = load i32, i32* %headroom, align 4, !dbg !5223
  %28 = load i32, i32* %tailroom, align 4, !dbg !5224
  %call23 = call %struct.nci_dev* @nci_allocate_device(%struct.nci_ops* @nfcmrvl_nci_ops, i32 %26, i32 %27, i32 %28) #8, !dbg !5225
  %29 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5226
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %29, i32 0, i32 2, !dbg !5227
  store %struct.nci_dev* %call23, %struct.nci_dev** %ndev, align 8, !dbg !5228
  %30 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5229
  %ndev24 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %30, i32 0, i32 2, !dbg !5231
  %31 = load %struct.nci_dev*, %struct.nci_dev** %ndev24, align 8, !dbg !5231
  %tobool25 = icmp ne %struct.nci_dev* %31, null, !dbg !5229
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !5232

if.then26:                                        ; preds = %if.end22
  %32 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5233
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !5233
  store i32 -12, i32* %rc, align 4, !dbg !5235
  br label %error_free_gpio, !dbg !5236

if.end27:                                         ; preds = %if.end22
  %33 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5237
  %call28 = call i32 @nfcmrvl_fw_dnld_init(%struct.nfcmrvl_private* %33) #8, !dbg !5238
  store i32 %call28, i32* %rc, align 4, !dbg !5239
  %34 = load i32, i32* %rc, align 4, !dbg !5240
  %tobool29 = icmp ne i32 %34, 0, !dbg !5240
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5242

if.then30:                                        ; preds = %if.end27
  %35 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5243
  %36 = load i32, i32* %rc, align 4, !dbg !5243
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %36) #9, !dbg !5243
  br label %error_free_dev, !dbg !5245

if.end31:                                         ; preds = %if.end27
  %37 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5246
  %ndev32 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %37, i32 0, i32 2, !dbg !5247
  %38 = load %struct.nci_dev*, %struct.nci_dev** %ndev32, align 8, !dbg !5247
  %39 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5248
  %40 = bitcast %struct.nfcmrvl_private* %39 to i8*, !dbg !5248
  call void @nci_set_drvdata(%struct.nci_dev* %38, i8* %40) #8, !dbg !5249
  %41 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5250
  %ndev33 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %41, i32 0, i32 2, !dbg !5251
  %42 = load %struct.nci_dev*, %struct.nci_dev** %ndev33, align 8, !dbg !5251
  %call34 = call i32 @nci_register_device(%struct.nci_dev* %42) #8, !dbg !5252
  store i32 %call34, i32* %rc, align 4, !dbg !5253
  %43 = load i32, i32* %rc, align 4, !dbg !5254
  %tobool35 = icmp ne i32 %43, 0, !dbg !5254
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5256

if.then36:                                        ; preds = %if.end31
  %44 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5257
  %45 = load i32, i32* %rc, align 4, !dbg !5257
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %45) #9, !dbg !5257
  br label %error_fw_dnld_deinit, !dbg !5259

if.end37:                                         ; preds = %if.end31
  %46 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5260
  call void @nfcmrvl_chip_halt(%struct.nfcmrvl_private* %46) #8, !dbg !5261
  %47 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5262
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !5262
  %48 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5263
  store %struct.nfcmrvl_private* %48, %struct.nfcmrvl_private** %retval, align 8, !dbg !5264
  br label %return, !dbg !5264

error_fw_dnld_deinit:                             ; preds = %if.then36
  call void @llvm.dbg.label(metadata !5265), !dbg !5266
  %49 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5267
  call void @nfcmrvl_fw_dnld_deinit(%struct.nfcmrvl_private* %49) #8, !dbg !5268
  br label %error_free_dev, !dbg !5268

error_free_dev:                                   ; preds = %error_fw_dnld_deinit, %if.then30
  call void @llvm.dbg.label(metadata !5269), !dbg !5270
  %50 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5271
  %ndev38 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %50, i32 0, i32 2, !dbg !5272
  %51 = load %struct.nci_dev*, %struct.nci_dev** %ndev38, align 8, !dbg !5272
  call void @nci_free_device(%struct.nci_dev* %51) #8, !dbg !5273
  br label %error_free_gpio, !dbg !5273

error_free_gpio:                                  ; preds = %error_free_dev, %if.then26
  call void @llvm.dbg.label(metadata !5274), !dbg !5275
  %52 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5276
  %config39 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %52, i32 0, i32 1, !dbg !5278
  %reset_n_io40 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config39, i32 0, i32 0, !dbg !5279
  %53 = load i32, i32* %reset_n_io40, align 8, !dbg !5279
  %call41 = call zeroext i1 @gpio_is_valid(i32 %53) #8, !dbg !5280
  br i1 %call41, label %if.then42, label %if.end45, !dbg !5281

if.then42:                                        ; preds = %error_free_gpio
  %54 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5282
  %config43 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %54, i32 0, i32 1, !dbg !5283
  %reset_n_io44 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config43, i32 0, i32 0, !dbg !5284
  %55 = load i32, i32* %reset_n_io44, align 8, !dbg !5284
  call void @gpio_free(i32 %55) #8, !dbg !5285
  br label %if.end45, !dbg !5285

if.end45:                                         ; preds = %if.then42, %error_free_gpio
  %56 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5286
  %57 = bitcast %struct.nfcmrvl_private* %56 to i8*, !dbg !5286
  call void @kfree(i8* %57) #8, !dbg !5287
  %58 = load i32, i32* %rc, align 4, !dbg !5288
  %conv = sext i32 %58 to i64, !dbg !5288
  %call46 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !5289
  %59 = bitcast i8* %call46 to %struct.nfcmrvl_private*, !dbg !5289
  store %struct.nfcmrvl_private* %59, %struct.nfcmrvl_private** %retval, align 8, !dbg !5290
  br label %return, !dbg !5290

return:                                           ; preds = %if.end45, %if.end37, %if.then
  %60 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %retval, align 8, !dbg !5291
  ret %struct.nfcmrvl_private* %60, !dbg !5291
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5292 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5295, metadata !DIExpression()), !dbg !5299
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5305, metadata !DIExpression()), !dbg !5306
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5307, metadata !DIExpression()), !dbg !5308
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5309, metadata !DIExpression()), !dbg !5310
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5311, metadata !DIExpression()), !dbg !5315
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5317, metadata !DIExpression()), !dbg !5321
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5323, metadata !DIExpression()), !dbg !5327
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5332, metadata !DIExpression()), !dbg !5333
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5334, metadata !DIExpression()), !dbg !5335
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5336, metadata !DIExpression()), !dbg !5337
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5338, metadata !DIExpression()), !dbg !5339
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5340, metadata !DIExpression()), !dbg !5341
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5342, metadata !DIExpression()), !dbg !5343
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5344, metadata !DIExpression()), !dbg !5345
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5346, metadata !DIExpression()), !dbg !5347
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load i64, i64* %size.addr, align 8, !dbg !5352
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5353
  %or = or i32 %1, 256, !dbg !5354
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5355
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5356
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5357

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5358
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5359
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5360

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5361
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5362
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5363
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5364
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5341
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5365
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5366
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5367
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5368
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5369
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5370
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5371
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5371
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5371
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5371
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5371
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5372
  br label %kmalloc.exit, !dbg !5372

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5373
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5374
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5374
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5376

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5377
  br label %kmalloc_index.exit.i, !dbg !5377

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5378
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5380
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5381

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5382
  br label %kmalloc_index.exit.i, !dbg !5382

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5383
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5385
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5386

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5387
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5388
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5389

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5390
  br label %kmalloc_index.exit.i, !dbg !5390

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5391
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5393
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5394

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5395
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5396
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5397

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5398
  br label %kmalloc_index.exit.i, !dbg !5398

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5399
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5401
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5402

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5403
  br label %kmalloc_index.exit.i, !dbg !5403

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5404
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5406
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5407

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5408
  br label %kmalloc_index.exit.i, !dbg !5408

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5409
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5411
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5412

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5413
  br label %kmalloc_index.exit.i, !dbg !5413

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5414
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5416
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5417

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5418
  br label %kmalloc_index.exit.i, !dbg !5418

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5419
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5421
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5422

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5423
  br label %kmalloc_index.exit.i, !dbg !5423

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5424
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5426
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5427

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5428
  br label %kmalloc_index.exit.i, !dbg !5428

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5429
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5431
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5432

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5433
  br label %kmalloc_index.exit.i, !dbg !5433

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5434
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5436
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5437

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5438
  br label %kmalloc_index.exit.i, !dbg !5438

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5439
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5441
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5442

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5443
  br label %kmalloc_index.exit.i, !dbg !5443

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5444
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5446
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5447

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5448
  br label %kmalloc_index.exit.i, !dbg !5448

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5449
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5451
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5452

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5453
  br label %kmalloc_index.exit.i, !dbg !5453

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5454
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5456
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5457

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5458
  br label %kmalloc_index.exit.i, !dbg !5458

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5459
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5461
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5462

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5463
  br label %kmalloc_index.exit.i, !dbg !5463

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5464
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5466
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5467

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5468
  br label %kmalloc_index.exit.i, !dbg !5468

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5469
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5471
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5472

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5473
  br label %kmalloc_index.exit.i, !dbg !5473

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5474
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5476
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5477

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5478
  br label %kmalloc_index.exit.i, !dbg !5478

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5479
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5481
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5482

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5483
  br label %kmalloc_index.exit.i, !dbg !5483

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5484
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5486
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5487

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5488
  br label %kmalloc_index.exit.i, !dbg !5488

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5489
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5491
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5492

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5493
  br label %kmalloc_index.exit.i, !dbg !5493

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5494
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5496
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5497

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5498
  br label %kmalloc_index.exit.i, !dbg !5498

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5499
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5501
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5502

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5503
  br label %kmalloc_index.exit.i, !dbg !5503

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5504
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5506
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5507

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5508
  br label %kmalloc_index.exit.i, !dbg !5508

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5509
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5511
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5512

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5513
  br label %kmalloc_index.exit.i, !dbg !5513

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5514
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5516
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5517

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5518
  br label %kmalloc_index.exit.i, !dbg !5518

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5519, !srcloc !5522
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !5523, !srcloc !5526
  unreachable, !dbg !5527

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5528
  store i32 %45, i32* %index.i, align 4, !dbg !5529
  %46 = load i32, i32* %index.i, align 4, !dbg !5530
  %tobool.i = icmp ne i32 %46, 0, !dbg !5530
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5532

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5533
  br label %kmalloc.exit, !dbg !5533

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5534
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5535
  %and.i.i = and i32 %48, 17, !dbg !5535
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5535
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5535
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5535
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5535
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5537

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5538
  br label %kmalloc_type.exit.i, !dbg !5538

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5539
  %and2.i.i = and i32 %49, 1, !dbg !5540
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5539
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5539
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5539
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5541
  br label %kmalloc_type.exit.i, !dbg !5541

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5542
  %idxprom.i = zext i32 %51 to i64, !dbg !5543
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5543
  %52 = load i32, i32* %index.i, align 4, !dbg !5544
  %idxprom6.i = zext i32 %52 to i64, !dbg !5543
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5543
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5543
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5545
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5546
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5547
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5548
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5549
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5549
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5549
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5549
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5549
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5310
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5550
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5551
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5552
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5553
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5554
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5555
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5556
  store i8* %62, i8** %retval.i, align 8, !dbg !5557
  br label %kmalloc.exit, !dbg !5557

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5558
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5559
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5560
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5560
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5560
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5560
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5560
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5561
  br label %kmalloc.exit, !dbg !5561

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5562
  ret i8* %65, !dbg !5563
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5564 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  %0 = load i64, i64* %error.addr, align 8, !dbg !5570
  %1 = inttoptr i64 %0 to i8*, !dbg !5571
  ret i8* %1, !dbg !5572
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gpio_is_valid(i32 %number) #0 !dbg !5573 {
entry:
  %number.addr = alloca i32, align 4
  store i32 %number, i32* %number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %number.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  %0 = load i32, i32* %number.addr, align 4, !dbg !5579
  %cmp = icmp sge i32 %0, 0, !dbg !5580
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5581

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %number.addr, align 4, !dbg !5582
  %cmp1 = icmp slt i32 %1, 512, !dbg !5583
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !5584
  ret i1 %2, !dbg !5585
}

; Function Attrs: noredzone
declare dso_local i32 @gpio_request_one(i32, i64, i8*) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.nci_dev* @nci_allocate_device(%struct.nci_ops*, i32, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nfcmrvl_fw_dnld_init(%struct.nfcmrvl_private*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nci_set_drvdata(%struct.nci_dev* %ndev, i8* %data) #0 !dbg !5586 {
entry:
  %ndev.addr = alloca %struct.nci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.nci_dev* %ndev, %struct.nci_dev** %ndev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nci_dev** %ndev.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5593
  %1 = load %struct.nci_dev*, %struct.nci_dev** %ndev.addr, align 8, !dbg !5594
  %driver_data = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %1, i32 0, i32 26, !dbg !5595
  store i8* %0, i8** %driver_data, align 8, !dbg !5596
  ret void, !dbg !5597
}

; Function Attrs: noredzone
declare dso_local i32 @nci_register_device(%struct.nci_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nfcmrvl_chip_halt(%struct.nfcmrvl_private* %priv) #0 !dbg !5598 {
entry:
  %priv.addr = alloca %struct.nfcmrvl_private*, align 8
  store %struct.nfcmrvl_private* %priv, %struct.nfcmrvl_private** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_private** %priv.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  %0 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5603
  %config = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %0, i32 0, i32 1, !dbg !5605
  %reset_n_io = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config, i32 0, i32 0, !dbg !5606
  %1 = load i32, i32* %reset_n_io, align 8, !dbg !5606
  %call = call zeroext i1 @gpio_is_valid(i32 %1) #8, !dbg !5607
  br i1 %call, label %if.then, label %if.end, !dbg !5608

if.then:                                          ; preds = %entry
  %2 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5609
  %config1 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %2, i32 0, i32 1, !dbg !5610
  %reset_n_io2 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config1, i32 0, i32 0, !dbg !5611
  %3 = load i32, i32* %reset_n_io2, align 8, !dbg !5611
  call void @gpio_set_value(i32 %3, i32 0) #8, !dbg !5612
  br label %if.end, !dbg !5612

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5613
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @nfcmrvl_fw_dnld_deinit(%struct.nfcmrvl_private*) #3

; Function Attrs: noredzone
declare dso_local void @nci_free_device(%struct.nci_dev*) #3

; Function Attrs: noredzone
declare dso_local void @gpio_free(i32) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nfcmrvl_nci_unregister_dev(%struct.nfcmrvl_private* %priv) #0 !dbg !5614 {
entry:
  %priv.addr = alloca %struct.nfcmrvl_private*, align 8
  %ndev = alloca %struct.nci_dev*, align 8
  store %struct.nfcmrvl_private* %priv, %struct.nfcmrvl_private** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_private** %priv.addr, metadata !5615, metadata !DIExpression()), !dbg !5616
  call void @llvm.dbg.declare(metadata %struct.nci_dev** %ndev, metadata !5617, metadata !DIExpression()), !dbg !5618
  %0 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5619
  %ndev1 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %0, i32 0, i32 2, !dbg !5620
  %1 = load %struct.nci_dev*, %struct.nci_dev** %ndev1, align 8, !dbg !5620
  store %struct.nci_dev* %1, %struct.nci_dev** %ndev, align 8, !dbg !5618
  %2 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5621
  %ndev2 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %2, i32 0, i32 2, !dbg !5623
  %3 = load %struct.nci_dev*, %struct.nci_dev** %ndev2, align 8, !dbg !5623
  %nfc_dev = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %3, i32 0, i32 0, !dbg !5624
  %4 = load %struct.nfc_dev*, %struct.nfc_dev** %nfc_dev, align 8, !dbg !5624
  %fw_download_in_progress = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %4, i32 0, i32 7, !dbg !5625
  %5 = load i8, i8* %fw_download_in_progress, align 1, !dbg !5625
  %tobool = trunc i8 %5 to i1, !dbg !5625
  br i1 %tobool, label %if.then, label %if.end, !dbg !5626

if.then:                                          ; preds = %entry
  %6 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5627
  call void @nfcmrvl_fw_dnld_abort(%struct.nfcmrvl_private* %6) #8, !dbg !5628
  br label %if.end, !dbg !5628

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5629
  call void @nfcmrvl_fw_dnld_deinit(%struct.nfcmrvl_private* %7) #8, !dbg !5630
  %8 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5631
  %config = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %8, i32 0, i32 1, !dbg !5633
  %reset_n_io = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config, i32 0, i32 0, !dbg !5634
  %9 = load i32, i32* %reset_n_io, align 8, !dbg !5634
  %call = call zeroext i1 @gpio_is_valid(i32 %9) #8, !dbg !5635
  br i1 %call, label %if.then3, label %if.end6, !dbg !5636

if.then3:                                         ; preds = %if.end
  %10 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5637
  %config4 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %10, i32 0, i32 1, !dbg !5638
  %reset_n_io5 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config4, i32 0, i32 0, !dbg !5639
  %11 = load i32, i32* %reset_n_io5, align 8, !dbg !5639
  call void @gpio_free(i32 %11) #8, !dbg !5640
  br label %if.end6, !dbg !5640

if.end6:                                          ; preds = %if.then3, %if.end
  %12 = load %struct.nci_dev*, %struct.nci_dev** %ndev, align 8, !dbg !5641
  call void @nci_unregister_device(%struct.nci_dev* %12) #8, !dbg !5642
  %13 = load %struct.nci_dev*, %struct.nci_dev** %ndev, align 8, !dbg !5643
  call void @nci_free_device(%struct.nci_dev* %13) #8, !dbg !5644
  %14 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5645
  %15 = bitcast %struct.nfcmrvl_private* %14 to i8*, !dbg !5645
  call void @kfree(i8* %15) #8, !dbg !5646
  ret void, !dbg !5647
}

; Function Attrs: noredzone
declare dso_local void @nfcmrvl_fw_dnld_abort(%struct.nfcmrvl_private*) #3

; Function Attrs: noredzone
declare dso_local void @nci_unregister_device(%struct.nci_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nfcmrvl_nci_recv_frame(%struct.nfcmrvl_private* %priv, %struct.sk_buff* %skb) #0 !dbg !5648 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.nfcmrvl_private*, align 8
  %skb.addr = alloca %struct.sk_buff*, align 8
  store %struct.nfcmrvl_private* %priv, %struct.nfcmrvl_private** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_private** %priv.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sk_buff** %skb.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  %0 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5653
  %config = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %0, i32 0, i32 1, !dbg !5655
  %hci_muxed = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config, i32 0, i32 1, !dbg !5656
  %1 = load i32, i32* %hci_muxed, align 4, !dbg !5656
  %tobool = icmp ne i32 %1, 0, !dbg !5653
  br i1 %tobool, label %if.then, label %if.end8, !dbg !5657

if.then:                                          ; preds = %entry
  %2 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !5658
  %data = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %2, i32 0, i32 37, !dbg !5661
  %3 = load i8*, i8** %data, align 8, !dbg !5661
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !5658
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5658
  %conv = zext i8 %4 to i32, !dbg !5658
  %cmp = icmp eq i32 %conv, 4, !dbg !5662
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5663

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !5664
  %data2 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 37, !dbg !5665
  %6 = load i8*, i8** %data2, align 8, !dbg !5665
  %arrayidx3 = getelementptr i8, i8* %6, i64 1, !dbg !5664
  %7 = load i8, i8* %arrayidx3, align 1, !dbg !5664
  %conv4 = zext i8 %7 to i32, !dbg !5664
  %cmp5 = icmp eq i32 %conv4, 255, !dbg !5666
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !5667

if.then7:                                         ; preds = %land.lhs.true
  %8 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !5668
  %call = call i8* @skb_pull(%struct.sk_buff* %8, i32 4) #8, !dbg !5670
  br label %if.end, !dbg !5671

if.else:                                          ; preds = %land.lhs.true, %if.then
  %9 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !5672
  call void @kfree_skb(%struct.sk_buff* %9) #8, !dbg !5674
  store i32 0, i32* %retval, align 4, !dbg !5675
  br label %return, !dbg !5675

if.end:                                           ; preds = %if.then7
  br label %if.end8, !dbg !5676

if.end8:                                          ; preds = %if.end, %entry
  %10 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5677
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %10, i32 0, i32 2, !dbg !5679
  %11 = load %struct.nci_dev*, %struct.nci_dev** %ndev, align 8, !dbg !5679
  %nfc_dev = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %11, i32 0, i32 0, !dbg !5680
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %nfc_dev, align 8, !dbg !5680
  %fw_download_in_progress = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %12, i32 0, i32 7, !dbg !5681
  %13 = load i8, i8* %fw_download_in_progress, align 1, !dbg !5681
  %tobool9 = trunc i8 %13 to i1, !dbg !5681
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5682

if.then10:                                        ; preds = %if.end8
  %14 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5683
  %15 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !5685
  call void @nfcmrvl_fw_dnld_recv_frame(%struct.nfcmrvl_private* %14, %struct.sk_buff* %15) #8, !dbg !5686
  store i32 0, i32* %retval, align 4, !dbg !5687
  br label %return, !dbg !5687

if.end11:                                         ; preds = %if.end8
  %16 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5688
  %flags = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %16, i32 0, i32 0, !dbg !5690
  %call12 = call zeroext i1 @test_bit(i64 1, i64* %flags) #8, !dbg !5691
  br i1 %call12, label %if.then13, label %if.else16, !dbg !5692

if.then13:                                        ; preds = %if.end11
  %17 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5693
  %ndev14 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %17, i32 0, i32 2, !dbg !5694
  %18 = load %struct.nci_dev*, %struct.nci_dev** %ndev14, align 8, !dbg !5694
  %19 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !5695
  %call15 = call i32 @nci_recv_frame(%struct.nci_dev* %18, %struct.sk_buff* %19) #8, !dbg !5696
  br label %if.end17, !dbg !5696

if.else16:                                        ; preds = %if.end11
  %20 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !5697
  call void @kfree_skb(%struct.sk_buff* %20) #8, !dbg !5699
  store i32 0, i32* %retval, align 4, !dbg !5700
  br label %return, !dbg !5700

if.end17:                                         ; preds = %if.then13
  store i32 0, i32* %retval, align 4, !dbg !5701
  br label %return, !dbg !5701

return:                                           ; preds = %if.end17, %if.else16, %if.then10, %if.else
  %21 = load i32, i32* %retval, align 4, !dbg !5702
  ret i32 %21, !dbg !5702
}

; Function Attrs: noredzone
declare dso_local i8* @skb_pull(%struct.sk_buff*, i32) #3

; Function Attrs: noredzone
declare dso_local void @kfree_skb(%struct.sk_buff*) #3

; Function Attrs: noredzone
declare dso_local void @nfcmrvl_fw_dnld_recv_frame(%struct.nfcmrvl_private*, %struct.sk_buff*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5703 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5710, metadata !DIExpression()), !dbg !5713
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5715, metadata !DIExpression()), !dbg !5716
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5717, metadata !DIExpression()), !dbg !5718
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5719, metadata !DIExpression()), !dbg !5721
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5723, metadata !DIExpression()), !dbg !5724
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5725, metadata !DIExpression()), !dbg !5733
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5735, metadata !DIExpression()), !dbg !5736
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5737, metadata !DIExpression()), !dbg !5738
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5741
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5742
  %div = sdiv i64 %1, 64, !dbg !5742
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5743
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5741
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5744
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5745
  %conv.i = trunc i64 %4 to i32, !dbg !5745
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !5746
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5747
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5747
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !5747
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5748
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5748
  br i1 %8, label %cond.true, label %cond.false, !dbg !5748

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5748
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5748
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5749
  %and.i = and i64 %11, 63, !dbg !5750
  %shl.i = shl i64 1, %and.i, !dbg !5751
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5752
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5753
  %shr.i = ashr i64 %13, 6, !dbg !5754
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5752
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5752
  %and1.i = and i64 %shl.i, %14, !dbg !5755
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5756
  %conv = zext i1 %cmp.i to i32, !dbg !5748
  br label %cond.end, !dbg !5748

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5748
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5748
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5757
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5758
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !5759, !srcloc !5760
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5759
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5761
  %tobool.i = trunc i8 %20 to i1, !dbg !5761
  %conv2 = zext i1 %tobool.i to i32, !dbg !5748
  br label %cond.end, !dbg !5748

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5748
  %tobool = icmp ne i32 %cond, 0, !dbg !5748
  ret i1 %tobool, !dbg !5762
}

; Function Attrs: noredzone
declare dso_local i32 @nci_recv_frame(%struct.nci_dev*, %struct.sk_buff*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nfcmrvl_chip_reset(%struct.nfcmrvl_private* %priv) #0 !dbg !5763 {
entry:
  %priv.addr = alloca %struct.nfcmrvl_private*, align 8
  store %struct.nfcmrvl_private* %priv, %struct.nfcmrvl_private** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_private** %priv.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  %0 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5766
  %flags = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %0, i32 0, i32 0, !dbg !5767
  call void @clear_bit(i64 2, i64* %flags) #8, !dbg !5768
  %1 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5769
  %config = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %1, i32 0, i32 1, !dbg !5771
  %reset_n_io = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config, i32 0, i32 0, !dbg !5772
  %2 = load i32, i32* %reset_n_io, align 8, !dbg !5772
  %call = call zeroext i1 @gpio_is_valid(i32 %2) #8, !dbg !5773
  br i1 %call, label %if.then, label %if.else, !dbg !5774

if.then:                                          ; preds = %entry
  %3 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5775
  %dev = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %3, i32 0, i32 6, !dbg !5775
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5775
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !5775
  %5 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5777
  %config1 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %5, i32 0, i32 1, !dbg !5778
  %reset_n_io2 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config1, i32 0, i32 0, !dbg !5779
  %6 = load i32, i32* %reset_n_io2, align 8, !dbg !5779
  call void @gpio_set_value(i32 %6, i32 0) #8, !dbg !5780
  call void @usleep_range(i64 5000, i64 10000) #8, !dbg !5781
  %7 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5782
  %config3 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %7, i32 0, i32 1, !dbg !5783
  %reset_n_io4 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config3, i32 0, i32 0, !dbg !5784
  %8 = load i32, i32* %reset_n_io4, align 8, !dbg !5784
  call void @gpio_set_value(i32 %8, i32 1) #8, !dbg !5785
  br label %if.end, !dbg !5786

if.else:                                          ; preds = %entry
  %9 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv.addr, align 8, !dbg !5787
  %dev5 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %9, i32 0, i32 6, !dbg !5787
  %10 = load %struct.device*, %struct.device** %dev5, align 8, !dbg !5787
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5787
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5788
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !5789 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5794, metadata !DIExpression()), !dbg !5796
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5798, metadata !DIExpression()), !dbg !5799
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5800, metadata !DIExpression()), !dbg !5802
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5804, metadata !DIExpression()), !dbg !5805
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5810
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5811
  %div = sdiv i64 %1, 64, !dbg !5811
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5812
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5810
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5813
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5814
  %conv.i = trunc i64 %4 to i32, !dbg !5814
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5815
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5816
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5816
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !5816
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5817
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5818
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5819
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5821
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5822

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5823
  %12 = bitcast i64* %11 to i8*, !dbg !5823
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5823
  %shr.i = ashr i64 %13, 3, !dbg !5823
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5823
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5825
  %and.i = and i64 %14, 7, !dbg !5825
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5825
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5825
  %neg.i = xor i32 %shl.i, -1, !dbg !5826
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #10, !dbg !5827, !srcloc !5828
  br label %arch_clear_bit.exit, !dbg !5829

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5830
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5832
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5833, !srcloc !5834
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_set_value(i32 %gpio, i32 %value) #0 !dbg !5836 {
entry:
  %gpio.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !5840, metadata !DIExpression()), !dbg !5841
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  %0 = load i32, i32* %gpio.addr, align 4, !dbg !5844
  %1 = load i32, i32* %value.addr, align 4, !dbg !5845
  call void @__gpio_set_value(i32 %0, i32 %1) #8, !dbg !5846
  ret void, !dbg !5847
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nfcmrvl_parse_dt(%struct.device_node* %node, %struct.nfcmrvl_platform_data* %pdata) #0 !dbg !5848 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.device_node*, align 8
  %pdata.addr = alloca %struct.nfcmrvl_platform_data*, align 8
  %reset_n_io = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  store %struct.nfcmrvl_platform_data* %pdata, %struct.nfcmrvl_platform_data** %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_platform_data** %pdata.addr, metadata !5853, metadata !DIExpression()), !dbg !5854
  call void @llvm.dbg.declare(metadata i32* %reset_n_io, metadata !5855, metadata !DIExpression()), !dbg !5856
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !5857
  %call = call i32 @of_get_named_gpio(%struct.device_node* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 0) #8, !dbg !5858
  store i32 %call, i32* %reset_n_io, align 4, !dbg !5859
  %1 = load i32, i32* %reset_n_io, align 4, !dbg !5860
  %cmp = icmp slt i32 %1, 0, !dbg !5862
  br i1 %cmp, label %if.then, label %if.else, !dbg !5863

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !5864
  br label %if.end5, !dbg !5866

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %reset_n_io, align 4, !dbg !5867
  %call2 = call zeroext i1 @gpio_is_valid(i32 %2) #8, !dbg !5869
  br i1 %call2, label %if.end, label %if.then3, !dbg !5870

if.then3:                                         ; preds = %if.else
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !5871
  %3 = load i32, i32* %reset_n_io, align 4, !dbg !5873
  store i32 %3, i32* %retval, align 4, !dbg !5874
  br label %return, !dbg !5874

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %4 = load i32, i32* %reset_n_io, align 4, !dbg !5875
  %5 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %pdata.addr, align 8, !dbg !5876
  %reset_n_io6 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %5, i32 0, i32 0, !dbg !5877
  store i32 %4, i32* %reset_n_io6, align 4, !dbg !5878
  %6 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !5879
  %call7 = call %struct.property* @of_find_property(%struct.device_node* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* null) #8, !dbg !5881
  %tobool = icmp ne %struct.property* %call7, null, !dbg !5881
  br i1 %tobool, label %if.then8, label %if.else9, !dbg !5882

if.then8:                                         ; preds = %if.end5
  %7 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %pdata.addr, align 8, !dbg !5883
  %hci_muxed = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %7, i32 0, i32 1, !dbg !5884
  store i32 1, i32* %hci_muxed, align 4, !dbg !5885
  br label %if.end11, !dbg !5883

if.else9:                                         ; preds = %if.end5
  %8 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %pdata.addr, align 8, !dbg !5886
  %hci_muxed10 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %8, i32 0, i32 1, !dbg !5887
  store i32 0, i32* %hci_muxed10, align 4, !dbg !5888
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  store i32 0, i32* %retval, align 4, !dbg !5889
  br label %return, !dbg !5889

return:                                           ; preds = %if.end11, %if.then3
  %9 = load i32, i32* %retval, align 4, !dbg !5890
  ret i32 %9, !dbg !5890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_get_named_gpio(%struct.device_node* %np, i8* %propname, i32 %index) #0 !dbg !5891 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5899, metadata !DIExpression()), !dbg !5900
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5901
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5902
  %2 = load i32, i32* %index.addr, align 4, !dbg !5903
  %call = call i32 @of_get_named_gpio_flags(%struct.device_node* %0, i8* %1, i32 %2, i32* null) #8, !dbg !5904
  ret i32 %call, !dbg !5905
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5906 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5910, metadata !DIExpression()), !dbg !5914
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5916, metadata !DIExpression()), !dbg !5917
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  %0 = load i64, i64* %size.addr, align 8, !dbg !5920
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5922
  br i1 %1, label %if.then, label %if.end447, !dbg !5923

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5924
  %tobool = icmp ne i64 %2, 0, !dbg !5924
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5927

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5928
  br label %return, !dbg !5928

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5929
  %cmp = icmp ult i64 %3, 4096, !dbg !5931
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5932

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5933
  br label %return, !dbg !5933

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub = sub i64 %4, 1, !dbg !5934
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5934
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5934

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub4 = sub i64 %6, 1, !dbg !5934
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5934
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5934

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub6 = sub i64 %8, 1, !dbg !5934
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5934
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5934

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5934

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub9 = sub i64 %9, 1, !dbg !5934
  %and = and i64 %sub9, -9223372036854775808, !dbg !5934
  %tobool10 = icmp ne i64 %and, 0, !dbg !5934
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5934

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5934

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub13 = sub i64 %10, 1, !dbg !5934
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5934
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5934
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5934

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5934

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub18 = sub i64 %11, 1, !dbg !5934
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5934
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5934
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5934

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5934

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub23 = sub i64 %12, 1, !dbg !5934
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5934
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5934
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5934

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5934

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub28 = sub i64 %13, 1, !dbg !5934
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5934
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5934
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5934

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5934

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub33 = sub i64 %14, 1, !dbg !5934
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5934
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5934
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5934

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5934

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub38 = sub i64 %15, 1, !dbg !5934
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5934
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5934
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5934

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5934

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub43 = sub i64 %16, 1, !dbg !5934
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5934
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5934
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5934

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5934

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub48 = sub i64 %17, 1, !dbg !5934
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5934
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5934
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5934

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5934

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub53 = sub i64 %18, 1, !dbg !5934
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5934
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5934
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5934

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5934

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub58 = sub i64 %19, 1, !dbg !5934
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5934
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5934
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5934

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5934

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub63 = sub i64 %20, 1, !dbg !5934
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5934
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5934
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5934

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5934

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub68 = sub i64 %21, 1, !dbg !5934
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5934
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5934
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5934

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5934

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub73 = sub i64 %22, 1, !dbg !5934
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5934
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5934
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5934

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5934

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub78 = sub i64 %23, 1, !dbg !5934
  %and79 = and i64 %sub78, 562949953421312, !dbg !5934
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5934
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5934

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5934

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub83 = sub i64 %24, 1, !dbg !5934
  %and84 = and i64 %sub83, 281474976710656, !dbg !5934
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5934
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5934

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5934

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub88 = sub i64 %25, 1, !dbg !5934
  %and89 = and i64 %sub88, 140737488355328, !dbg !5934
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5934
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5934

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5934

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub93 = sub i64 %26, 1, !dbg !5934
  %and94 = and i64 %sub93, 70368744177664, !dbg !5934
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5934
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5934

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5934

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub98 = sub i64 %27, 1, !dbg !5934
  %and99 = and i64 %sub98, 35184372088832, !dbg !5934
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5934
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5934

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5934

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub103 = sub i64 %28, 1, !dbg !5934
  %and104 = and i64 %sub103, 17592186044416, !dbg !5934
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5934
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5934

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5934

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub108 = sub i64 %29, 1, !dbg !5934
  %and109 = and i64 %sub108, 8796093022208, !dbg !5934
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5934
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5934

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5934

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub113 = sub i64 %30, 1, !dbg !5934
  %and114 = and i64 %sub113, 4398046511104, !dbg !5934
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5934
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5934

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5934

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub118 = sub i64 %31, 1, !dbg !5934
  %and119 = and i64 %sub118, 2199023255552, !dbg !5934
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5934
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5934

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5934

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub123 = sub i64 %32, 1, !dbg !5934
  %and124 = and i64 %sub123, 1099511627776, !dbg !5934
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5934
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5934

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5934

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub128 = sub i64 %33, 1, !dbg !5934
  %and129 = and i64 %sub128, 549755813888, !dbg !5934
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5934
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5934

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5934

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub133 = sub i64 %34, 1, !dbg !5934
  %and134 = and i64 %sub133, 274877906944, !dbg !5934
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5934
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5934

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5934

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub138 = sub i64 %35, 1, !dbg !5934
  %and139 = and i64 %sub138, 137438953472, !dbg !5934
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5934
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5934

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5934

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub143 = sub i64 %36, 1, !dbg !5934
  %and144 = and i64 %sub143, 68719476736, !dbg !5934
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5934
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5934

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5934

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub148 = sub i64 %37, 1, !dbg !5934
  %and149 = and i64 %sub148, 34359738368, !dbg !5934
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5934
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5934

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5934

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub153 = sub i64 %38, 1, !dbg !5934
  %and154 = and i64 %sub153, 17179869184, !dbg !5934
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5934
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5934

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5934

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub158 = sub i64 %39, 1, !dbg !5934
  %and159 = and i64 %sub158, 8589934592, !dbg !5934
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5934
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5934

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5934

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub163 = sub i64 %40, 1, !dbg !5934
  %and164 = and i64 %sub163, 4294967296, !dbg !5934
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5934
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5934

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5934

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub168 = sub i64 %41, 1, !dbg !5934
  %and169 = and i64 %sub168, 2147483648, !dbg !5934
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5934
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5934

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5934

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub173 = sub i64 %42, 1, !dbg !5934
  %and174 = and i64 %sub173, 1073741824, !dbg !5934
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5934
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5934

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5934

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub178 = sub i64 %43, 1, !dbg !5934
  %and179 = and i64 %sub178, 536870912, !dbg !5934
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5934
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5934

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5934

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub183 = sub i64 %44, 1, !dbg !5934
  %and184 = and i64 %sub183, 268435456, !dbg !5934
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5934
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5934

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5934

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub188 = sub i64 %45, 1, !dbg !5934
  %and189 = and i64 %sub188, 134217728, !dbg !5934
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5934
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5934

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5934

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub193 = sub i64 %46, 1, !dbg !5934
  %and194 = and i64 %sub193, 67108864, !dbg !5934
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5934
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5934

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5934

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub198 = sub i64 %47, 1, !dbg !5934
  %and199 = and i64 %sub198, 33554432, !dbg !5934
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5934
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5934

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5934

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub203 = sub i64 %48, 1, !dbg !5934
  %and204 = and i64 %sub203, 16777216, !dbg !5934
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5934
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5934

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5934

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub208 = sub i64 %49, 1, !dbg !5934
  %and209 = and i64 %sub208, 8388608, !dbg !5934
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5934
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5934

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5934

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub213 = sub i64 %50, 1, !dbg !5934
  %and214 = and i64 %sub213, 4194304, !dbg !5934
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5934
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5934

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5934

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub218 = sub i64 %51, 1, !dbg !5934
  %and219 = and i64 %sub218, 2097152, !dbg !5934
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5934
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5934

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5934

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub223 = sub i64 %52, 1, !dbg !5934
  %and224 = and i64 %sub223, 1048576, !dbg !5934
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5934
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5934

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5934

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub228 = sub i64 %53, 1, !dbg !5934
  %and229 = and i64 %sub228, 524288, !dbg !5934
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5934
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5934

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5934

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub233 = sub i64 %54, 1, !dbg !5934
  %and234 = and i64 %sub233, 262144, !dbg !5934
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5934
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5934

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5934

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub238 = sub i64 %55, 1, !dbg !5934
  %and239 = and i64 %sub238, 131072, !dbg !5934
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5934
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5934

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5934

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub243 = sub i64 %56, 1, !dbg !5934
  %and244 = and i64 %sub243, 65536, !dbg !5934
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5934
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5934

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5934

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub248 = sub i64 %57, 1, !dbg !5934
  %and249 = and i64 %sub248, 32768, !dbg !5934
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5934
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5934

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5934

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub253 = sub i64 %58, 1, !dbg !5934
  %and254 = and i64 %sub253, 16384, !dbg !5934
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5934
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5934

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5934

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub258 = sub i64 %59, 1, !dbg !5934
  %and259 = and i64 %sub258, 8192, !dbg !5934
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5934
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5934

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5934

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub263 = sub i64 %60, 1, !dbg !5934
  %and264 = and i64 %sub263, 4096, !dbg !5934
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5934
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5934

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5934

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub268 = sub i64 %61, 1, !dbg !5934
  %and269 = and i64 %sub268, 2048, !dbg !5934
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5934
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5934

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5934

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub273 = sub i64 %62, 1, !dbg !5934
  %and274 = and i64 %sub273, 1024, !dbg !5934
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5934
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5934

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5934

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub278 = sub i64 %63, 1, !dbg !5934
  %and279 = and i64 %sub278, 512, !dbg !5934
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5934
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5934

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5934

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub283 = sub i64 %64, 1, !dbg !5934
  %and284 = and i64 %sub283, 256, !dbg !5934
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5934
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5934

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5934

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub288 = sub i64 %65, 1, !dbg !5934
  %and289 = and i64 %sub288, 128, !dbg !5934
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5934
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5934

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5934

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub293 = sub i64 %66, 1, !dbg !5934
  %and294 = and i64 %sub293, 64, !dbg !5934
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5934
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5934

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5934

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub298 = sub i64 %67, 1, !dbg !5934
  %and299 = and i64 %sub298, 32, !dbg !5934
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5934
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5934

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5934

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub303 = sub i64 %68, 1, !dbg !5934
  %and304 = and i64 %sub303, 16, !dbg !5934
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5934
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5934

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5934

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub308 = sub i64 %69, 1, !dbg !5934
  %and309 = and i64 %sub308, 8, !dbg !5934
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5934
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5934

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5934

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub313 = sub i64 %70, 1, !dbg !5934
  %and314 = and i64 %sub313, 4, !dbg !5934
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5934
  %71 = zext i1 %tobool315 to i64, !dbg !5934
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5934
  br label %cond.end, !dbg !5934

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5934
  br label %cond.end317, !dbg !5934

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5934
  br label %cond.end319, !dbg !5934

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5934
  br label %cond.end321, !dbg !5934

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5934
  br label %cond.end323, !dbg !5934

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5934
  br label %cond.end325, !dbg !5934

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5934
  br label %cond.end327, !dbg !5934

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5934
  br label %cond.end329, !dbg !5934

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5934
  br label %cond.end331, !dbg !5934

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5934
  br label %cond.end333, !dbg !5934

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5934
  br label %cond.end335, !dbg !5934

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5934
  br label %cond.end337, !dbg !5934

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5934
  br label %cond.end339, !dbg !5934

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5934
  br label %cond.end341, !dbg !5934

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5934
  br label %cond.end343, !dbg !5934

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5934
  br label %cond.end345, !dbg !5934

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5934
  br label %cond.end347, !dbg !5934

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5934
  br label %cond.end349, !dbg !5934

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5934
  br label %cond.end351, !dbg !5934

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5934
  br label %cond.end353, !dbg !5934

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5934
  br label %cond.end355, !dbg !5934

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5934
  br label %cond.end357, !dbg !5934

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5934
  br label %cond.end359, !dbg !5934

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5934
  br label %cond.end361, !dbg !5934

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5934
  br label %cond.end363, !dbg !5934

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5934
  br label %cond.end365, !dbg !5934

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5934
  br label %cond.end367, !dbg !5934

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5934
  br label %cond.end369, !dbg !5934

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5934
  br label %cond.end371, !dbg !5934

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5934
  br label %cond.end373, !dbg !5934

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5934
  br label %cond.end375, !dbg !5934

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5934
  br label %cond.end377, !dbg !5934

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5934
  br label %cond.end379, !dbg !5934

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5934
  br label %cond.end381, !dbg !5934

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5934
  br label %cond.end383, !dbg !5934

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5934
  br label %cond.end385, !dbg !5934

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5934
  br label %cond.end387, !dbg !5934

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5934
  br label %cond.end389, !dbg !5934

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5934
  br label %cond.end391, !dbg !5934

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5934
  br label %cond.end393, !dbg !5934

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5934
  br label %cond.end395, !dbg !5934

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5934
  br label %cond.end397, !dbg !5934

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5934
  br label %cond.end399, !dbg !5934

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5934
  br label %cond.end401, !dbg !5934

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5934
  br label %cond.end403, !dbg !5934

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5934
  br label %cond.end405, !dbg !5934

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5934
  br label %cond.end407, !dbg !5934

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5934
  br label %cond.end409, !dbg !5934

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5934
  br label %cond.end411, !dbg !5934

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5934
  br label %cond.end413, !dbg !5934

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5934
  br label %cond.end415, !dbg !5934

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5934
  br label %cond.end417, !dbg !5934

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5934
  br label %cond.end419, !dbg !5934

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5934
  br label %cond.end421, !dbg !5934

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5934
  br label %cond.end423, !dbg !5934

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5934
  br label %cond.end425, !dbg !5934

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5934
  br label %cond.end427, !dbg !5934

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5934
  br label %cond.end429, !dbg !5934

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5934
  br label %cond.end431, !dbg !5934

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5934
  br label %cond.end433, !dbg !5934

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5934
  br label %cond.end435, !dbg !5934

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5934
  br label %cond.end437, !dbg !5934

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5934
  br label %cond.end440, !dbg !5934

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5934

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5934
  br label %cond.end444, !dbg !5934

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5934
  %sub443 = sub i64 %72, 1, !dbg !5934
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5934
  br label %cond.end444, !dbg !5934

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5934
  %sub446 = sub i32 %cond445, 12, !dbg !5935
  %add = add i32 %sub446, 1, !dbg !5936
  store i32 %add, i32* %retval, align 4, !dbg !5937
  br label %return, !dbg !5937

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5938
  %dec = add i64 %73, -1, !dbg !5938
  store i64 %dec, i64* %size.addr, align 8, !dbg !5938
  %74 = load i64, i64* %size.addr, align 8, !dbg !5939
  %shr = lshr i64 %74, 12, !dbg !5939
  store i64 %shr, i64* %size.addr, align 8, !dbg !5939
  %75 = load i64, i64* %size.addr, align 8, !dbg !5940
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5917
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5941
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5942
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5941, !srcloc !5943
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5941
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5944
  %add.i = add i32 %79, 1, !dbg !5945
  store i32 %add.i, i32* %retval, align 4, !dbg !5946
  br label %return, !dbg !5946

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5947
  ret i32 %80, !dbg !5947
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5948 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5910, metadata !DIExpression()), !dbg !5952
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5916, metadata !DIExpression()), !dbg !5954
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  %0 = load i64, i64* %n.addr, align 8, !dbg !5957
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5954
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5958
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5959
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5958, !srcloc !5943
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5958
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5960
  %add.i = add i32 %4, 1, !dbg !5961
  %sub = sub i32 %add.i, 1, !dbg !5962
  ret i32 %sub, !dbg !5963
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5964 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5976
  ret i8* %0, !dbg !5977
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nfcmrvl_nci_open(%struct.nci_dev* %ndev) #0 !dbg !5978 {
entry:
  %retval = alloca i32, align 4
  %ndev.addr = alloca %struct.nci_dev*, align 8
  %priv = alloca %struct.nfcmrvl_private*, align 8
  %err = alloca i32, align 4
  store %struct.nci_dev* %ndev, %struct.nci_dev** %ndev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nci_dev** %ndev.addr, metadata !5979, metadata !DIExpression()), !dbg !5980
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_private** %priv, metadata !5981, metadata !DIExpression()), !dbg !5982
  %0 = load %struct.nci_dev*, %struct.nci_dev** %ndev.addr, align 8, !dbg !5983
  %call = call i8* @nci_get_drvdata(%struct.nci_dev* %0) #8, !dbg !5984
  %1 = bitcast i8* %call to %struct.nfcmrvl_private*, !dbg !5984
  store %struct.nfcmrvl_private* %1, %struct.nfcmrvl_private** %priv, align 8, !dbg !5982
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5985, metadata !DIExpression()), !dbg !5986
  %2 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5987
  %flags = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %2, i32 0, i32 0, !dbg !5989
  %call1 = call zeroext i1 @test_and_set_bit(i64 1, i64* %flags) #8, !dbg !5990
  br i1 %call1, label %if.then, label %if.end, !dbg !5991

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5992
  br label %return, !dbg !5992

if.end:                                           ; preds = %entry
  %3 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5993
  %flags2 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %3, i32 0, i32 0, !dbg !5994
  call void @clear_bit(i64 2, i64* %flags2) #8, !dbg !5995
  %4 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5996
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %4, i32 0, i32 8, !dbg !5997
  %5 = load %struct.nfcmrvl_if_ops*, %struct.nfcmrvl_if_ops** %if_ops, align 8, !dbg !5997
  %nci_open = getelementptr inbounds %struct.nfcmrvl_if_ops, %struct.nfcmrvl_if_ops* %5, i32 0, i32 0, !dbg !5998
  %6 = load i32 (%struct.nfcmrvl_private*)*, i32 (%struct.nfcmrvl_private*)** %nci_open, align 8, !dbg !5998
  %7 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !5999
  %call3 = call i32 %6(%struct.nfcmrvl_private* %7) #8, !dbg !5996
  store i32 %call3, i32* %err, align 4, !dbg !6000
  %8 = load i32, i32* %err, align 4, !dbg !6001
  %tobool = icmp ne i32 %8, 0, !dbg !6001
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !6003

if.then4:                                         ; preds = %if.end
  %9 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !6004
  %flags5 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %9, i32 0, i32 0, !dbg !6005
  call void @clear_bit(i64 1, i64* %flags5) #8, !dbg !6006
  br label %if.end6, !dbg !6006

if.end6:                                          ; preds = %if.then4, %if.end
  %10 = load i32, i32* %err, align 4, !dbg !6007
  store i32 %10, i32* %retval, align 4, !dbg !6008
  br label %return, !dbg !6008

return:                                           ; preds = %if.end6, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !6009
  ret i32 %11, !dbg !6009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nfcmrvl_nci_close(%struct.nci_dev* %ndev) #0 !dbg !6010 {
entry:
  %retval = alloca i32, align 4
  %ndev.addr = alloca %struct.nci_dev*, align 8
  %priv = alloca %struct.nfcmrvl_private*, align 8
  store %struct.nci_dev* %ndev, %struct.nci_dev** %ndev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nci_dev** %ndev.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_private** %priv, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load %struct.nci_dev*, %struct.nci_dev** %ndev.addr, align 8, !dbg !6015
  %call = call i8* @nci_get_drvdata(%struct.nci_dev* %0) #8, !dbg !6016
  %1 = bitcast i8* %call to %struct.nfcmrvl_private*, !dbg !6016
  store %struct.nfcmrvl_private* %1, %struct.nfcmrvl_private** %priv, align 8, !dbg !6014
  %2 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !6017
  %flags = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %2, i32 0, i32 0, !dbg !6019
  %call1 = call zeroext i1 @test_and_clear_bit(i64 1, i64* %flags) #8, !dbg !6020
  br i1 %call1, label %if.end, label %if.then, !dbg !6021

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6022
  br label %return, !dbg !6022

if.end:                                           ; preds = %entry
  %3 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !6023
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %3, i32 0, i32 8, !dbg !6024
  %4 = load %struct.nfcmrvl_if_ops*, %struct.nfcmrvl_if_ops** %if_ops, align 8, !dbg !6024
  %nci_close = getelementptr inbounds %struct.nfcmrvl_if_ops, %struct.nfcmrvl_if_ops* %4, i32 0, i32 1, !dbg !6025
  %5 = load i32 (%struct.nfcmrvl_private*)*, i32 (%struct.nfcmrvl_private*)** %nci_close, align 8, !dbg !6025
  %6 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !6026
  %call2 = call i32 %5(%struct.nfcmrvl_private* %6) #8, !dbg !6023
  store i32 0, i32* %retval, align 4, !dbg !6027
  br label %return, !dbg !6027

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6028
  ret i32 %7, !dbg !6028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nfcmrvl_nci_send(%struct.nci_dev* %ndev, %struct.sk_buff* %skb) #0 !dbg !6029 {
entry:
  %ndev.addr = alloca %struct.nci_dev*, align 8
  %skb.addr = alloca %struct.sk_buff*, align 8
  %priv = alloca %struct.nfcmrvl_private*, align 8
  %hdr = alloca i8*, align 8
  %len2 = alloca i8, align 1
  store %struct.nci_dev* %ndev, %struct.nci_dev** %ndev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nci_dev** %ndev.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sk_buff** %skb.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  call void @llvm.dbg.declare(metadata %struct.nfcmrvl_private** %priv, metadata !6034, metadata !DIExpression()), !dbg !6035
  %0 = load %struct.nci_dev*, %struct.nci_dev** %ndev.addr, align 8, !dbg !6036
  %call = call i8* @nci_get_drvdata(%struct.nci_dev* %0) #8, !dbg !6037
  %1 = bitcast i8* %call to %struct.nfcmrvl_private*, !dbg !6037
  store %struct.nfcmrvl_private* %1, %struct.nfcmrvl_private** %priv, align 8, !dbg !6035
  %2 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !6038
  %dev = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %2, i32 0, i32 6, !dbg !6038
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6038
  %4 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !6038
  %len = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 5, !dbg !6038
  %5 = load i32, i32* %len, align 8, !dbg !6038
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %5) #9, !dbg !6038
  %6 = load %struct.nci_dev*, %struct.nci_dev** %ndev.addr, align 8, !dbg !6039
  %7 = bitcast %struct.nci_dev* %6 to i8*, !dbg !6040
  %8 = bitcast i8* %7 to %struct.net_device*, !dbg !6040
  %9 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !6041
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0, !dbg !6042
  %11 = bitcast %union.anon.69* %10 to %struct.anon.70*, !dbg !6042
  %12 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %11, i32 0, i32 2, !dbg !6042
  %dev1 = bitcast %union.anon.71* %12 to %struct.net_device**, !dbg !6042
  store %struct.net_device* %8, %struct.net_device** %dev1, align 8, !dbg !6043
  %13 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !6044
  %config = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %13, i32 0, i32 1, !dbg !6046
  %hci_muxed = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %config, i32 0, i32 1, !dbg !6047
  %14 = load i32, i32* %hci_muxed, align 4, !dbg !6047
  %tobool = icmp ne i32 %14, 0, !dbg !6044
  br i1 %tobool, label %if.then, label %if.end, !dbg !6048

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %hdr, metadata !6049, metadata !DIExpression()), !dbg !6051
  call void @llvm.dbg.declare(metadata i8* %len2, metadata !6052, metadata !DIExpression()), !dbg !6053
  %15 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !6054
  %len3 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 5, !dbg !6055
  %16 = load i32, i32* %len3, align 8, !dbg !6055
  %conv = trunc i32 %16 to i8, !dbg !6054
  store i8 %conv, i8* %len2, align 1, !dbg !6053
  %17 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !6056
  %call4 = call i8* @skb_push(%struct.sk_buff* %17, i32 4) #8, !dbg !6057
  store i8* %call4, i8** %hdr, align 8, !dbg !6058
  %18 = load i8*, i8** %hdr, align 8, !dbg !6059
  %arrayidx = getelementptr i8, i8* %18, i64 0, !dbg !6059
  store i8 1, i8* %arrayidx, align 1, !dbg !6060
  %19 = load i8*, i8** %hdr, align 8, !dbg !6061
  %arrayidx5 = getelementptr i8, i8* %19, i64 1, !dbg !6061
  store i8 -127, i8* %arrayidx5, align 1, !dbg !6062
  %20 = load i8*, i8** %hdr, align 8, !dbg !6063
  %arrayidx6 = getelementptr i8, i8* %20, i64 2, !dbg !6063
  store i8 -2, i8* %arrayidx6, align 1, !dbg !6064
  %21 = load i8, i8* %len2, align 1, !dbg !6065
  %22 = load i8*, i8** %hdr, align 8, !dbg !6066
  %arrayidx7 = getelementptr i8, i8* %22, i64 3, !dbg !6066
  store i8 %21, i8* %arrayidx7, align 1, !dbg !6067
  br label %if.end, !dbg !6068

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !6069
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %23, i32 0, i32 8, !dbg !6070
  %24 = load %struct.nfcmrvl_if_ops*, %struct.nfcmrvl_if_ops** %if_ops, align 8, !dbg !6070
  %nci_send = getelementptr inbounds %struct.nfcmrvl_if_ops, %struct.nfcmrvl_if_ops* %24, i32 0, i32 2, !dbg !6071
  %25 = load i32 (%struct.nfcmrvl_private*, %struct.sk_buff*)*, i32 (%struct.nfcmrvl_private*, %struct.sk_buff*)** %nci_send, align 8, !dbg !6071
  %26 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %priv, align 8, !dbg !6072
  %27 = load %struct.sk_buff*, %struct.sk_buff** %skb.addr, align 8, !dbg !6073
  %call8 = call i32 %25(%struct.nfcmrvl_private* %26, %struct.sk_buff* %27) #8, !dbg !6069
  ret i32 %call8, !dbg !6074
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nfcmrvl_nci_setup(%struct.nci_dev* %ndev) #0 !dbg !6075 {
entry:
  %ndev.addr = alloca %struct.nci_dev*, align 8
  %val = alloca i8, align 1
  store %struct.nci_dev* %ndev, %struct.nci_dev** %ndev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nci_dev** %ndev.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6078, metadata !DIExpression()), !dbg !6079
  store i8 1, i8* %val, align 1, !dbg !6079
  %0 = load %struct.nci_dev*, %struct.nci_dev** %ndev.addr, align 8, !dbg !6080
  %call = call i32 @nci_set_config(%struct.nci_dev* %0, i8 zeroext 17, i64 1, i8* %val) #8, !dbg !6081
  ret i32 0, !dbg !6082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nfcmrvl_nci_fw_download(%struct.nci_dev* %ndev, i8* %firmware_name) #0 !dbg !6083 {
entry:
  %ndev.addr = alloca %struct.nci_dev*, align 8
  %firmware_name.addr = alloca i8*, align 8
  store %struct.nci_dev* %ndev, %struct.nci_dev** %ndev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nci_dev** %ndev.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  store i8* %firmware_name, i8** %firmware_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %firmware_name.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  %0 = load %struct.nci_dev*, %struct.nci_dev** %ndev.addr, align 8, !dbg !6088
  %1 = load i8*, i8** %firmware_name.addr, align 8, !dbg !6089
  %call = call i32 @nfcmrvl_fw_dnld_start(%struct.nci_dev* %0, i8* %1) #8, !dbg !6090
  ret i32 %call, !dbg !6091
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @nci_get_drvdata(%struct.nci_dev* %ndev) #0 !dbg !6092 {
entry:
  %ndev.addr = alloca %struct.nci_dev*, align 8
  store %struct.nci_dev* %ndev, %struct.nci_dev** %ndev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nci_dev** %ndev.addr, metadata !6095, metadata !DIExpression()), !dbg !6096
  %0 = load %struct.nci_dev*, %struct.nci_dev** %ndev.addr, align 8, !dbg !6097
  %driver_data = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %0, i32 0, i32 26, !dbg !6098
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6098
  ret i8* %1, !dbg !6099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !6100 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6103, metadata !DIExpression()), !dbg !6105
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6107, metadata !DIExpression()), !dbg !6108
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !6109, metadata !DIExpression()), !dbg !6111
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6112, metadata !DIExpression()), !dbg !6114
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6116, metadata !DIExpression()), !dbg !6117
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6120, metadata !DIExpression()), !dbg !6121
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6122
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6123
  %div = sdiv i64 %1, 64, !dbg !6123
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6124
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6122
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6125
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6126
  %conv.i = trunc i64 %4 to i32, !dbg !6126
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !6127
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6128
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6128
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #12, !dbg !6128
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6129
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6130
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !6111
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !6111
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #10, !dbg !6111, !srcloc !6131
  store i8 %11, i8* %c.i, align 1, !dbg !6111
  %12 = load i8, i8* %c.i, align 1, !dbg !6111
  %tobool.i = trunc i8 %12 to i1, !dbg !6111
  %frombool.i = zext i1 %tobool.i to i8, !dbg !6111
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !6111
  %13 = load i8, i8* %tmp.i, align 1, !dbg !6111
  %tobool1.i = trunc i8 %13 to i1, !dbg !6111
  ret i1 %tobool1.i, !dbg !6132
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !6133 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  ret i1 true, !dbg !6141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6142 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6146, metadata !DIExpression()), !dbg !6147
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6148, metadata !DIExpression()), !dbg !6149
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  ret void, !dbg !6152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !6153 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6154, metadata !DIExpression()), !dbg !6156
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6158, metadata !DIExpression()), !dbg !6159
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !6160, metadata !DIExpression()), !dbg !6162
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6112, metadata !DIExpression()), !dbg !6163
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6116, metadata !DIExpression()), !dbg !6165
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6168, metadata !DIExpression()), !dbg !6169
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6170
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6171
  %div = sdiv i64 %1, 64, !dbg !6171
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6172
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6170
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6173
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6174
  %conv.i = trunc i64 %4 to i32, !dbg !6174
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !6175
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6176
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6176
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #12, !dbg !6176
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6177
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6178
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !6162
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !6162
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #10, !dbg !6162, !srcloc !6179
  store i8 %11, i8* %c.i, align 1, !dbg !6162
  %12 = load i8, i8* %c.i, align 1, !dbg !6162
  %tobool.i = trunc i8 %12 to i1, !dbg !6162
  %frombool.i = zext i1 %tobool.i to i8, !dbg !6162
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !6162
  %13 = load i8, i8* %tmp.i, align 1, !dbg !6162
  %tobool1.i = trunc i8 %13 to i1, !dbg !6162
  ret i1 %tobool1.i, !dbg !6180
}

; Function Attrs: noredzone
declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nci_set_config(%struct.nci_dev*, i8 zeroext, i64, i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @nfcmrvl_fw_dnld_start(%struct.nci_dev*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6181 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6184, metadata !DIExpression()), !dbg !6185
  ret i1 true, !dbg !6186
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__gpio_set_value(i32 %gpio, i32 %value) #0 !dbg !6187 {
entry:
  %gpio.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i32 %gpio, i32* %gpio.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpio.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  %0 = load i32, i32* %gpio.addr, align 4, !dbg !6192
  %call = call %struct.gpio_desc* @gpio_to_desc(i32 %0) #8, !dbg !6193
  %1 = load i32, i32* %value.addr, align 4, !dbg !6194
  call void @gpiod_set_raw_value(%struct.gpio_desc* %call, i32 %1) #8, !dbg !6195
  ret void, !dbg !6196
}

; Function Attrs: noredzone
declare dso_local void @gpiod_set_raw_value(%struct.gpio_desc*, i32) #3

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @gpio_to_desc(i32) #3

; Function Attrs: noredzone
declare dso_local i32 @of_get_named_gpio_flags(%struct.device_node*, i8*, i32, i32*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5030, !5031, !5032, !5033}
!llvm.ident = !{!5034}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nfcmrvl_nci_ops", scope: !2, file: !3, line: 95, type: !181, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !147, globals: !159, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/nfc/nfcmrvl/main.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !135, !142}
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
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nfcmrvl_phy", file: !129, line: 57, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "drivers/nfc/nfcmrvl/nfcmrvl.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "NFCMRVL_PHY_USB", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "NFCMRVL_PHY_UART", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "NFCMRVL_PHY_I2C", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "NFCMRVL_PHY_SPI", value: 3, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !136, line: 305, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !139, !140, !141}
!138 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 10, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!147 = !{!148, !150, !151, !153, !156}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !149, line: 148, baseType: !7)
!149 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !155)
!155 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!158 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!159 = !{!160, !166, !171, !176, !0}
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author278", scope: !2, file: !3, line: 285, type: !162, isLocal: true, isDefinition: true, align: 8)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 336, elements: !164)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!164 = !{!165}
!165 = !DISubrange(count: 42)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description279", scope: !2, file: !3, line: 286, type: !168, isLocal: true, isDefinition: true, align: 8)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 312, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 39)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file280", scope: !2, file: !3, line: 287, type: !173, isLocal: true, isDefinition: true, align: 8)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 328, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 41)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license281", scope: !2, file: !3, line: 287, type: !178, isLocal: true, isDefinition: true, align: 8)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 184, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 23)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nci_ops", file: !182, line: 64, size: 1216, elements: !183)
!182 = !DIFile(filename: "./include/net/nfc/nci_core.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !4988, !4989, !4990, !4994, !4995, !4996, !5000, !5004, !5005, !5009, !5010, !5014, !5015, !5019, !5020, !5027, !5028, !5029}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !181, file: !182, line: 65, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !189}
!188 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nci_dev", file: !182, line: 195, size: 10304, elements: !191)
!191 = !{!192, !4878, !4880, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4970, !4971, !4972, !4973, !4974, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4987}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nfc_dev", scope: !190, file: !182, line: 196, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfc_dev", file: !195, line: 163, size: 7424, elements: !196)
!195 = !DIFile(filename: "./include/net/nfc/nfc.h", directory: "/home/lizy2001/genbc/linux")
!196 = !{!197, !198, !203, !242, !243, !244, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4665, !4675, !4676, !4875}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !194, file: !195, line: 164, baseType: !188, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "target_next_idx", scope: !194, file: !195, line: 165, baseType: !199, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !200, line: 21, baseType: !201)
!200 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !202, line: 27, baseType: !7)
!202 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "targets", scope: !194, file: !195, line: 166, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfc_target", file: !195, line: 90, size: 608, elements: !206)
!206 = !{!207, !208, !209, !213, !217, !218, !222, !223, !227, !228, !232, !233, !237, !238, !239, !240, !241}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !205, file: !195, line: 91, baseType: !199, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "supported_protocols", scope: !205, file: !195, line: 92, baseType: !199, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sens_res", scope: !205, file: !195, line: 93, baseType: !210, size: 16, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !200, line: 19, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !202, line: 24, baseType: !212)
!212 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sel_res", scope: !205, file: !195, line: 94, baseType: !214, size: 8, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !200, line: 17, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !202, line: 21, baseType: !216)
!216 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "nfcid1_len", scope: !205, file: !195, line: 95, baseType: !214, size: 8, offset: 88)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nfcid1", scope: !205, file: !195, line: 96, baseType: !219, size: 80, offset: 96)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 80, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 10)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nfcid2_len", scope: !205, file: !195, line: 97, baseType: !214, size: 8, offset: 176)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "nfcid2", scope: !205, file: !195, line: 98, baseType: !224, size: 64, offset: 184)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 64, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sensb_res_len", scope: !205, file: !195, line: 99, baseType: !214, size: 8, offset: 248)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sensb_res", scope: !205, file: !195, line: 100, baseType: !229, size: 96, offset: 256)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 96, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 12)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sensf_res_len", scope: !205, file: !195, line: 101, baseType: !214, size: 8, offset: 352)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sensf_res", scope: !205, file: !195, line: 102, baseType: !234, size: 144, offset: 360)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 144, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 18)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "hci_reader_gate", scope: !205, file: !195, line: 103, baseType: !214, size: 8, offset: 504)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "logical_idx", scope: !205, file: !195, line: 104, baseType: !214, size: 8, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "is_iso15693", scope: !205, file: !195, line: 105, baseType: !214, size: 8, offset: 520)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "iso15693_dsfid", scope: !205, file: !195, line: 106, baseType: !214, size: 8, offset: 528)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "iso15693_uid", scope: !205, file: !195, line: 107, baseType: !224, size: 64, offset: 536)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "n_targets", scope: !194, file: !195, line: 167, baseType: !188, size: 32, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "targets_generation", scope: !194, file: !195, line: 168, baseType: !188, size: 32, offset: 160)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !194, file: !195, line: 169, baseType: !245, size: 5568, offset: 192)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !246)
!246 = !{!247, !3881, !3882, !3885, !3886, !3937, !4028, !4029, !4030, !4031, !4032, !4041, !4146, !4159, !4571, !4572, !4576, !4578, !4579, !4580, !4584, !4590, !4591, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4632, !4633, !4634, !4637, !4640, !4641, !4642, !4643}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !245, file: !73, line: 462, baseType: !248, size: 512)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !249, line: 64, size: 512, elements: !250)
!249 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251, !253, !259, !261, !321, !3748, !3875, !3876, !3877, !3878, !3879, !3880}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !249, line: 65, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !248, file: !249, line: 66, baseType: !254, size: 128, offset: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !149, line: 178, size: 128, elements: !255)
!255 = !{!256, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !149, line: 179, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !254, file: !149, line: 179, baseType: !257, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !248, file: !249, line: 67, baseType: !260, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !248, file: !249, line: 68, baseType: !262, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !249, line: 192, size: 704, elements: !264)
!264 = !{!265, !266, !282, !283}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !263, file: !249, line: 193, baseType: !254, size: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !263, file: !249, line: 194, baseType: !267, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !268, line: 83, baseType: !269)
!268 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !268, line: 71, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !268, line: 72, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !268, line: 72, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !272, file: !268, line: 73, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !268, line: 20, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !275, file: !268, line: 21, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !279, line: 25, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 25, elements: !281)
!281 = !{}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !263, file: !249, line: 195, baseType: !248, size: 512, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !263, file: !249, line: 196, baseType: !284, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !249, line: 156, size: 192, elements: !287)
!287 = !{!288, !293, !298}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !286, file: !249, line: 157, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!188, !262, !260}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !249, line: 158, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!252, !262, !260}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !286, file: !249, line: 159, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!188, !262, !260, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !249, line: 148, size: 20736, elements: !305)
!305 = !{!306, !311, !315, !316, !320}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !304, file: !249, line: 149, baseType: !307, size: 192)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 192, elements: !309)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!309 = !{!310}
!310 = !DISubrange(count: 3)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !304, file: !249, line: 150, baseType: !312, size: 4096, offset: 192)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 4096, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !304, file: !249, line: 151, baseType: !188, size: 32, offset: 4288)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !304, file: !249, line: 152, baseType: !317, size: 16384, offset: 4320)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 16384, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 2048)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !304, file: !249, line: 153, baseType: !188, size: 32, offset: 20704)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !248, file: !249, line: 69, baseType: !322, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !249, line: 138, size: 448, elements: !324)
!324 = !{!325, !329, !356, !358, !3710, !3738, !3742}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !323, file: !249, line: 139, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !260}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !323, file: !249, line: 140, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !333, line: 230, size: 128, elements: !334)
!333 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !349}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !332, file: !333, line: 231, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !260, !343, !308}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !149, line: 60, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !341, line: 73, baseType: !342)
!341 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !341, line: 15, baseType: !158)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !333, line: 30, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !333, line: 31, baseType: !252, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !344, file: !333, line: 32, baseType: !348, size: 16, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !149, line: 19, baseType: !212)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !332, file: !333, line: 232, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!339, !260, !343, !252, !353}
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 55, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !341, line: 72, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !341, line: 16, baseType: !152)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !323, file: !249, line: 141, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !323, file: !249, line: 142, baseType: !359, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !333, line: 84, size: 320, elements: !363)
!363 = !{!364, !365, !369, !3707, !3708}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !333, line: 85, baseType: !252, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !362, file: !333, line: 86, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!348, !260, !343, !188}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !362, file: !333, line: 88, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!348, !260, !373, !188}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !333, line: 168, size: 448, elements: !375)
!375 = !{!376, !377, !378, !379, !3702, !3703}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !374, file: !333, line: 169, baseType: !344, size: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !374, file: !333, line: 170, baseType: !353, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !374, file: !333, line: 171, baseType: !150, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !374, file: !333, line: 172, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!339, !383, !260, !373, !308, !557, !353}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !385)
!385 = !{!386, !404, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3685, !3686, !3695, !3696, !3697, !3698, !3699, !3700, !3701}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !384, file: !44, line: 920, baseType: !387, size: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !44, line: 917, size: 128, elements: !388)
!388 = !{!389, !395}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !387, file: !44, line: 918, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !391, line: 58, size: 64, elements: !392)
!391 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !391, line: 59, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !387, file: !44, line: 919, baseType: !396, size: 128, align: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !149, line: 216, size: 128, align: 64, elements: !397)
!397 = !{!398, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !149, line: 217, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !396, file: !149, line: 218, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !399}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !384, file: !44, line: 921, baseType: !405, size: 128, offset: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !406, line: 8, size: 128, elements: !407)
!406 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !412}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !405, file: !406, line: 9, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !411, line: 18, flags: DIFlagFwdDecl)
!411 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !405, file: !406, line: 10, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !411, line: 89, size: 1536, elements: !415)
!415 = !{!416, !417, !427, !435, !436, !454, !3635, !3637, !3649, !3650, !3651, !3652, !3653, !3659, !3660, !3661}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !414, file: !411, line: 91, baseType: !7, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !414, file: !411, line: 92, baseType: !418, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !419, line: 277, baseType: !420)
!419 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !419, line: 277, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !420, file: !419, line: 277, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !419, line: 70, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !419, line: 65, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !424, file: !419, line: 66, baseType: !7, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !414, file: !411, line: 93, baseType: !428, size: 128, offset: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !429, line: 38, size: 128, elements: !430)
!429 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!430 = !{!431, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !429, line: 39, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !428, file: !429, line: 39, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !414, file: !411, line: 94, baseType: !413, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !414, file: !411, line: 95, baseType: !437, size: 128, offset: 256)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !411, line: 47, size: 128, elements: !438)
!438 = !{!439, !451}
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !411, line: 48, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !411, line: 48, size: 64, elements: !441)
!441 = !{!442, !447}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !411, line: 49, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !411, line: 49, size: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !443, file: !411, line: 50, baseType: !199, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !443, file: !411, line: 50, baseType: !199, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !440, file: !411, line: 52, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !200, line: 23, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !202, line: 31, baseType: !450)
!450 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !437, file: !411, line: 54, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !414, file: !411, line: 96, baseType: !455, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !457)
!457 = !{!458, !459, !460, !468, !475, !476, !624, !3570, !3571, !3572, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3613, !3621, !3622, !3623, !3631, !3632, !3633, !3634}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !456, file: !44, line: 611, baseType: !348, size: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !456, file: !44, line: 612, baseType: !212, size: 16, offset: 16)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !456, file: !44, line: 613, baseType: !461, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !462, line: 23, baseType: !463)
!462 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 21, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !463, file: !462, line: 22, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !149, line: 32, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !341, line: 49, baseType: !7)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !456, file: !44, line: 614, baseType: !469, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !462, line: 28, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 26, size: 32, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !470, file: !462, line: 27, baseType: !473, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !149, line: 33, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !341, line: 50, baseType: !7)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !456, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !456, file: !44, line: 622, baseType: !477, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !480)
!480 = !{!481, !485, !498, !502, !508, !512, !518, !522, !526, !530, !534, !535, !541, !545, !571, !600, !604, !610, !615, !619, !620}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !479, file: !44, line: 1865, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!413, !455, !413, !7}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !479, file: !44, line: 1866, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!252, !413, !455, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !491, line: 10, size: 128, elements: !492)
!491 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!492 = !{!493, !497}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !490, file: !491, line: 11, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !150}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !490, file: !491, line: 12, baseType: !150, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !479, file: !44, line: 1867, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!188, !455, !188}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !479, file: !44, line: 1868, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !455, !188}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !479, file: !44, line: 1870, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!188, !413, !308, !188}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !479, file: !44, line: 1872, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!188, !455, !413, !348, !516}
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !149, line: 30, baseType: !517)
!517 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !479, file: !44, line: 1873, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!188, !413, !455, !413}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !479, file: !44, line: 1874, baseType: !523, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!188, !455, !413}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !479, file: !44, line: 1875, baseType: !527, size: 64, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!188, !455, !413, !252}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !479, file: !44, line: 1876, baseType: !531, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!188, !455, !413, !348}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !479, file: !44, line: 1877, baseType: !523, size: 64, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !479, file: !44, line: 1878, baseType: !536, size: 64, offset: 704)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!188, !455, !413, !348, !539}
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !149, line: 16, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !149, line: 13, baseType: !199)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !479, file: !44, line: 1879, baseType: !542, size: 64, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!188, !455, !413, !455, !413, !7}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !479, file: !44, line: 1881, baseType: !546, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!188, !413, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !560, !568, !569, !570}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !550, file: !44, line: 220, baseType: !7, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !550, file: !44, line: 221, baseType: !348, size: 16, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !550, file: !44, line: 222, baseType: !461, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !550, file: !44, line: 223, baseType: !469, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !550, file: !44, line: 224, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !149, line: 46, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !341, line: 88, baseType: !559)
!559 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !550, file: !44, line: 225, baseType: !561, size: 128, offset: 192)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !562, line: 13, size: 128, elements: !563)
!562 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!563 = !{!564, !567}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !561, file: !562, line: 14, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !562, line: 8, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !202, line: 30, baseType: !559)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !561, file: !562, line: 15, baseType: !158, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !550, file: !44, line: 226, baseType: !561, size: 128, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !550, file: !44, line: 227, baseType: !561, size: 128, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !550, file: !44, line: 234, baseType: !383, size: 64, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !479, file: !44, line: 1882, baseType: !572, size: 64, offset: 896)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!188, !575, !577, !199, !7}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !579, line: 22, size: 1152, elements: !580)
!579 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!580 = !{!581, !582, !583, !584, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !578, file: !579, line: 23, baseType: !199, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !578, file: !579, line: 24, baseType: !348, size: 16, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !578, file: !579, line: 25, baseType: !7, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !578, file: !579, line: 26, baseType: !585, size: 32, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !149, line: 104, baseType: !199)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !578, file: !579, line: 27, baseType: !448, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !578, file: !579, line: 28, baseType: !448, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !578, file: !579, line: 37, baseType: !448, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !578, file: !579, line: 38, baseType: !539, size: 32, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !578, file: !579, line: 39, baseType: !539, size: 32, offset: 352)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !578, file: !579, line: 40, baseType: !461, size: 32, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !578, file: !579, line: 41, baseType: !469, size: 32, offset: 416)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !578, file: !579, line: 42, baseType: !557, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !578, file: !579, line: 43, baseType: !561, size: 128, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !578, file: !579, line: 44, baseType: !561, size: 128, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !578, file: !579, line: 45, baseType: !561, size: 128, offset: 768)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !578, file: !579, line: 46, baseType: !561, size: 128, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !578, file: !579, line: 47, baseType: !448, size: 64, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !578, file: !579, line: 48, baseType: !448, size: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !479, file: !44, line: 1883, baseType: !601, size: 64, offset: 960)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!339, !413, !308, !353}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !479, file: !44, line: 1884, baseType: !605, size: 64, offset: 1024)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!188, !455, !608, !448, !448}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !479, file: !44, line: 1886, baseType: !611, size: 64, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!188, !455, !614, !188}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !479, file: !44, line: 1887, baseType: !616, size: 64, offset: 1152)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!188, !455, !413, !383, !7, !348}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !479, file: !44, line: 1890, baseType: !531, size: 64, offset: 1216)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !479, file: !44, line: 1891, baseType: !621, size: 64, offset: 1280)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!188, !455, !506, !188}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !456, file: !44, line: 623, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !683, !3177, !3259, !3342, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3358, !3362, !3363, !3366, !3367, !3370, !3371, !3372, !3413, !3440, !3441, !3442, !3443, !3444, !3445, !3448, !3450, !3457, !3458, !3460, !3461, !3462, !3521, !3522, !3537, !3538, !3539, !3540, !3541, !3544, !3545, !3546, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !626, file: !44, line: 1417, baseType: !254, size: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !626, file: !44, line: 1418, baseType: !539, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !626, file: !44, line: 1419, baseType: !216, size: 8, offset: 160)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !626, file: !44, line: 1420, baseType: !152, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !626, file: !44, line: 1421, baseType: !557, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !626, file: !44, line: 1422, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !636)
!636 = !{!637, !638, !639, !646, !650, !654, !658, !662, !663, !673, !676, !677, !678, !680, !681, !682}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !635, file: !44, line: 2229, baseType: !252, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !635, file: !44, line: 2230, baseType: !188, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !635, file: !44, line: 2238, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!188, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !645, line: 28, flags: DIFlagFwdDecl)
!645 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!646 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !635, file: !44, line: 2239, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !635, file: !44, line: 2240, baseType: !651, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!413, !634, !188, !252, !150}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !635, file: !44, line: 2242, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !625}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !635, file: !44, line: 2243, baseType: !659, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !661, line: 76, flags: DIFlagFwdDecl)
!661 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !635, file: !44, line: 2244, baseType: !634, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !635, file: !44, line: 2245, baseType: !664, size: 64, offset: 512)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !149, line: 182, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !664, file: !149, line: 183, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !149, line: 186, size: 128, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !668, file: !149, line: 187, baseType: !667, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !668, file: !149, line: 187, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !635, file: !44, line: 2247, baseType: !674, offset: 576)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !675, line: 187, elements: !281)
!675 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !635, file: !44, line: 2248, baseType: !674, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !635, file: !44, line: 2249, baseType: !674, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !635, file: !44, line: 2250, baseType: !679, offset: 576)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, elements: !309)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !635, file: !44, line: 2252, baseType: !674, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !635, file: !44, line: 2253, baseType: !674, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !635, file: !44, line: 2254, baseType: !674, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !626, file: !44, line: 1423, baseType: !684, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !687)
!687 = !{!688, !692, !696, !697, !701, !707, !711, !712, !713, !717, !721, !722, !723, !724, !730, !735, !736, !792, !793, !794, !795, !3161, !3176}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !686, file: !44, line: 1936, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!455, !625}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !686, file: !44, line: 1937, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !455}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !686, file: !44, line: 1938, baseType: !693, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !686, file: !44, line: 1940, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !455, !188}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !686, file: !44, line: 1941, baseType: !702, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!188, !455, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !686, file: !44, line: 1942, baseType: !708, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!188, !455}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !686, file: !44, line: 1943, baseType: !693, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !686, file: !44, line: 1944, baseType: !655, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !686, file: !44, line: 1945, baseType: !714, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!188, !625, !188}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !686, file: !44, line: 1946, baseType: !718, size: 64, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!188, !625}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !686, file: !44, line: 1947, baseType: !718, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !686, file: !44, line: 1948, baseType: !718, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !686, file: !44, line: 1949, baseType: !718, size: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !686, file: !44, line: 1950, baseType: !725, size: 64, offset: 832)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!188, !413, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !686, file: !44, line: 1951, baseType: !731, size: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!188, !625, !734, !308}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !686, file: !44, line: 1952, baseType: !655, size: 64, offset: 960)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !686, file: !44, line: 1954, baseType: !737, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!188, !740, !413}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !742, line: 16, size: 896, elements: !743)
!742 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !765, !787, !788, !791}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !741, file: !742, line: 17, baseType: !308, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !741, file: !742, line: 18, baseType: !353, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !741, file: !742, line: 19, baseType: !353, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !741, file: !742, line: 20, baseType: !353, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !741, file: !742, line: 21, baseType: !353, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !741, file: !742, line: 22, baseType: !557, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !741, file: !742, line: 23, baseType: !557, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !742, line: 24, baseType: !752, size: 192, offset: 448)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !753, line: 53, size: 192, elements: !754)
!753 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !763, !764}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !752, file: !753, line: 54, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !757, line: 13, baseType: !758)
!757 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !149, line: 175, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 173, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !759, file: !149, line: 174, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !200, line: 22, baseType: !566)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !752, file: !753, line: 55, baseType: !267, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !752, file: !753, line: 59, baseType: !254, size: 128, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !741, file: !742, line: 25, baseType: !766, size: 64, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !742, line: 31, size: 256, elements: !769)
!769 = !{!770, !775, !779, !783}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !768, file: !742, line: 32, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!150, !740, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !768, file: !742, line: 33, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !740, !150}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !768, file: !742, line: 34, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!150, !740, !150, !774}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !768, file: !742, line: 35, baseType: !784, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!188, !740, !150}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !741, file: !742, line: 26, baseType: !188, size: 32, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !741, file: !742, line: 27, baseType: !789, size: 64, offset: 768)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !741, file: !742, line: 28, baseType: !150, size: 64, offset: 832)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !686, file: !44, line: 1955, baseType: !737, size: 64, offset: 1088)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !686, file: !44, line: 1956, baseType: !737, size: 64, offset: 1152)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !686, file: !44, line: 1957, baseType: !737, size: 64, offset: 1216)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !686, file: !44, line: 1963, baseType: !796, size: 64, offset: 1280)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!188, !625, !799, !148}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !801, line: 68, size: 512, align: 128, elements: !802)
!801 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !804, !3153, !3160}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !801, line: 69, baseType: !152, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 77, baseType: !805, size: 320, offset: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 77, size: 320, elements: !806)
!806 = !{!807, !1127, !1132, !1160, !1168, !1174, !3084, !3152}
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !801, line: 78, baseType: !808, size: 320)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !801, line: 78, size: 320, elements: !809)
!809 = !{!810, !811, !1125, !1126}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !808, file: !801, line: 84, baseType: !254, size: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !808, file: !801, line: 86, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !814)
!814 = !{!815, !816, !823, !824, !829, !844, !853, !854, !855, !856, !1118, !1119, !1122, !1123, !1124}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !813, file: !44, line: 452, baseType: !455, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !813, file: !44, line: 453, baseType: !817, size: 128, offset: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !818, line: 292, size: 128, elements: !819)
!818 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !817, file: !818, line: 293, baseType: !267)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !817, file: !818, line: 295, baseType: !148, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !817, file: !818, line: 296, baseType: !150, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !813, file: !44, line: 454, baseType: !148, size: 32, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !813, file: !44, line: 455, baseType: !825, size: 32, offset: 224)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !149, line: 168, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 166, size: 32, elements: !827)
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !826, file: !149, line: 167, baseType: !188, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !813, file: !44, line: 460, baseType: !830, size: 128, offset: 256)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !831, line: 125, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !843}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !830, file: !831, line: 126, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !831, line: 31, size: 64, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !834, file: !831, line: 32, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !831, line: 24, size: 192, align: 64, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !838, file: !831, line: 25, baseType: !152, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !838, file: !831, line: 26, baseType: !837, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !838, file: !831, line: 27, baseType: !837, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !830, file: !831, line: 127, baseType: !837, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !813, file: !44, line: 461, baseType: !845, size: 256, offset: 384)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !846, line: 35, size: 256, elements: !847)
!846 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!847 = !{!848, !849, !850, !852}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !845, file: !846, line: 36, baseType: !756, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !845, file: !846, line: 42, baseType: !756, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !845, file: !846, line: 46, baseType: !851, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !268, line: 29, baseType: !275)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !845, file: !846, line: 47, baseType: !254, size: 128, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !813, file: !44, line: 462, baseType: !152, size: 64, offset: 640)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !813, file: !44, line: 463, baseType: !152, size: 64, offset: 704)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !813, file: !44, line: 464, baseType: !152, size: 64, offset: 768)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !813, file: !44, line: 465, baseType: !857, size: 64, offset: 832)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !860)
!860 = !{!861, !865, !869, !873, !877, !881, !887, !893, !897, !902, !906, !910, !914, !1082, !1086, !1092, !1093, !1094, !1098, !1103, !1107, !1114}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !859, file: !44, line: 368, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!188, !799, !705}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !859, file: !44, line: 369, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!188, !383, !799}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !859, file: !44, line: 372, baseType: !870, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!188, !812, !705}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !859, file: !44, line: 375, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!188, !799}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !859, file: !44, line: 381, baseType: !878, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!188, !383, !812, !257, !7}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !859, file: !44, line: 383, baseType: !882, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !859, file: !44, line: 385, baseType: !888, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!188, !383, !812, !557, !7, !7, !891, !892}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !859, file: !44, line: 388, baseType: !894, size: 64, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!188, !383, !812, !557, !7, !7, !799, !150}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !859, file: !44, line: 393, baseType: !898, size: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!901, !812, !901}
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !149, line: 125, baseType: !448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !859, file: !44, line: 394, baseType: !903, size: 64, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !799, !7, !7}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !859, file: !44, line: 395, baseType: !907, size: 64, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!188, !799, !148}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !859, file: !44, line: 396, baseType: !911, size: 64, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !799}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !859, file: !44, line: 397, baseType: !915, size: 64, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!339, !918, !938}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !920)
!920 = !{!921, !922, !923, !927, !928, !929, !930, !931}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !919, file: !44, line: 321, baseType: !383, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !919, file: !44, line: 326, baseType: !557, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !919, file: !44, line: 327, baseType: !924, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !918, !158, !158}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !919, file: !44, line: 328, baseType: !150, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !919, file: !44, line: 329, baseType: !188, size: 32, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !919, file: !44, line: 330, baseType: !210, size: 16, offset: 288)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !919, file: !44, line: 331, baseType: !210, size: 16, offset: 304)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !44, line: 332, baseType: !932, size: 64, offset: 320)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !44, line: 332, size: 64, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !932, file: !44, line: 333, baseType: !7, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !932, file: !44, line: 334, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !940, line: 29, size: 320, elements: !941)
!940 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!941 = !{!942, !943, !944, !945, !1073}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !939, file: !940, line: 35, baseType: !7, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !939, file: !940, line: 36, baseType: !353, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !939, file: !940, line: 37, baseType: !353, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !940, line: 38, baseType: !946, size: 64, offset: 192)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !940, line: 38, size: 64, elements: !947)
!947 = !{!948, !956, !963, !972}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !946, file: !940, line: 39, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !952, line: 17, size: 128, elements: !953)
!952 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !951, file: !952, line: 19, baseType: !150, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !951, file: !952, line: 20, baseType: !354, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !946, file: !940, line: 40, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !940, line: 15, size: 128, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !959, file: !940, line: 16, baseType: !150, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !959, file: !940, line: 17, baseType: !353, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !946, file: !940, line: 41, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !967, line: 31, size: 128, elements: !968)
!967 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !966, file: !967, line: 32, baseType: !799, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !966, file: !967, line: 33, baseType: !7, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !966, file: !967, line: 34, baseType: !7, size: 32, offset: 96)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !946, file: !940, line: 42, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !975, line: 57, size: 1088, elements: !976)
!975 = !DIFile(filename: "./include/linux/pipe_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!976 = !{!977, !978, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !1014, !1015, !1042}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !974, file: !975, line: 58, baseType: !752, size: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rd_wait", scope: !974, file: !975, line: 59, baseType: !979, size: 128, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !980, line: 40, baseType: !981)
!980 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !980, line: 36, size: 128, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !981, file: !980, line: 37, baseType: !267)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !981, file: !980, line: 38, baseType: !254, size: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "wr_wait", scope: !974, file: !975, line: 59, baseType: !979, size: 128, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !974, file: !975, line: 60, baseType: !7, size: 32, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !974, file: !975, line: 61, baseType: !7, size: 32, offset: 480)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "max_usage", scope: !974, file: !975, line: 62, baseType: !7, size: 32, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size", scope: !974, file: !975, line: 63, baseType: !7, size: 32, offset: 544)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_accounted", scope: !974, file: !975, line: 67, baseType: !7, size: 32, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !974, file: !975, line: 68, baseType: !7, size: 32, offset: 608)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !974, file: !975, line: 69, baseType: !7, size: 32, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !974, file: !975, line: 70, baseType: !7, size: 32, offset: 672)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "r_counter", scope: !974, file: !975, line: 71, baseType: !7, size: 32, offset: 704)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "w_counter", scope: !974, file: !975, line: 72, baseType: !7, size: 32, offset: 736)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_page", scope: !974, file: !975, line: 73, baseType: !799, size: 64, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "fasync_readers", scope: !974, file: !975, line: 74, baseType: !998, size: 64, offset: 832)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !1000)
!1000 = !{!1001, !1009, !1010, !1011, !1012, !1013}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !999, file: !44, line: 1315, baseType: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1003, line: 20, baseType: !1004)
!1003 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1003, line: 11, elements: !1005)
!1005 = !{!1006}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1004, file: !1003, line: 12, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !279, line: 33, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 31, elements: !281)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !999, file: !44, line: 1316, baseType: !188, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !999, file: !44, line: 1317, baseType: !188, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !999, file: !44, line: 1318, baseType: !998, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !999, file: !44, line: 1319, baseType: !383, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !999, file: !44, line: 1320, baseType: !396, size: 128, align: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "fasync_writers", scope: !974, file: !975, line: 75, baseType: !998, size: 64, offset: 896)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !974, file: !975, line: 76, baseType: !1016, size: 64, offset: 960)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_buffer", file: !975, line: 26, size: 320, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1040, !1041}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1017, file: !975, line: 27, baseType: !799, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1017, file: !975, line: 28, baseType: !7, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1017, file: !975, line: 28, baseType: !7, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1017, file: !975, line: 29, baseType: !1023, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_buf_operations", file: !975, line: 93, size: 256, elements: !1026)
!1026 = !{!1027, !1031, !1035, !1039}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "confirm", scope: !1025, file: !975, line: 101, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!188, !973, !1016}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1025, file: !975, line: 107, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !973, !1016}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "try_steal", scope: !1025, file: !975, line: 117, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!516, !973, !1016}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1025, file: !975, line: 122, baseType: !1036, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1017, file: !975, line: 30, baseType: !7, size: 32, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1017, file: !975, line: 31, baseType: !152, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !974, file: !975, line: 77, baseType: !1043, size: 64, offset: 1024)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1045, line: 13, size: 896, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1046 = !{!1047, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1044, file: !1045, line: 14, baseType: !1048, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1049, line: 113, baseType: !1050)
!1049 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1049, line: 111, size: 32, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1050, file: !1049, line: 112, baseType: !825, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1044, file: !1045, line: 15, baseType: !825, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1044, file: !1045, line: 16, baseType: !825, size: 32, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1044, file: !1045, line: 21, baseType: !756, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1044, file: !1045, line: 27, baseType: !152, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1044, file: !1045, line: 28, baseType: !152, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1044, file: !1045, line: 29, baseType: !756, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1044, file: !1045, line: 32, baseType: !668, size: 128, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1044, file: !1045, line: 33, baseType: !461, size: 32, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1044, file: !1045, line: 37, baseType: !756, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1044, file: !1045, line: 44, baseType: !1063, size: 256, offset: 640)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1064, line: 15, size: 256, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !1064, line: 16, baseType: !851)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1063, file: !1064, line: 18, baseType: !188, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1063, file: !1064, line: 19, baseType: !188, size: 32, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1063, file: !1064, line: 20, baseType: !188, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1063, file: !1064, line: 21, baseType: !188, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1063, file: !1064, line: 22, baseType: !152, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !1064, line: 23, baseType: !152, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !940, line: 44, baseType: !1074, size: 64, offset: 256)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !940, line: 44, size: 64, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1074, file: !940, line: 45, baseType: !152, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !940, line: 46, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !940, line: 46, size: 64, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1078, file: !940, line: 47, baseType: !7, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !1078, file: !940, line: 48, baseType: !7, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !859, file: !44, line: 402, baseType: !1083, size: 64, offset: 832)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!188, !812, !799, !799, !5}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !859, file: !44, line: 404, baseType: !1087, size: 64, offset: 896)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!516, !799, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1091, line: 305, baseType: !7)
!1091 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !859, file: !44, line: 405, baseType: !911, size: 64, offset: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !859, file: !44, line: 406, baseType: !874, size: 64, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !859, file: !44, line: 407, baseType: !1095, size: 64, offset: 1088)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!188, !799, !152, !152}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !859, file: !44, line: 409, baseType: !1099, size: 64, offset: 1152)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !799, !1102, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !859, file: !44, line: 410, baseType: !1104, size: 64, offset: 1216)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!188, !812, !799}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !859, file: !44, line: 413, baseType: !1108, size: 64, offset: 1280)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!188, !1111, !383, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !859, file: !44, line: 415, baseType: !1115, size: 64, offset: 1344)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !383}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !44, line: 466, baseType: !152, size: 64, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !813, file: !44, line: 467, baseType: !1120, size: 32, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1121, line: 8, baseType: !199)
!1121 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !813, file: !44, line: 468, baseType: !267, offset: 992)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !813, file: !44, line: 469, baseType: !254, size: 128, offset: 1024)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !813, file: !44, line: 470, baseType: !150, size: 64, offset: 1152)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !808, file: !801, line: 87, baseType: !152, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !808, file: !801, line: 94, baseType: !152, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !801, line: 96, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !801, line: 96, size: 64, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1128, file: !801, line: 101, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !149, line: 143, baseType: !448)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !801, line: 103, baseType: !1133, size: 320)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !801, line: 103, size: 320, elements: !1134)
!1134 = !{!1135, !1145, !1148, !1149}
!1135 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !801, line: 104, baseType: !1136, size: 128)
!1136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !801, line: 104, size: 128, elements: !1137)
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1136, file: !801, line: 105, baseType: !254, size: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !801, line: 106, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1136, file: !801, line: 106, size: 128, elements: !1141)
!1141 = !{!1142, !1143, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1140, file: !801, line: 107, baseType: !799, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1140, file: !801, line: 109, baseType: !188, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1140, file: !801, line: 110, baseType: !188, size: 32, offset: 96)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1133, file: !801, line: 117, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !801, line: 117, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1133, file: !801, line: 119, baseType: !150, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !801, line: 120, baseType: !1150, size: 64, offset: 256)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !801, line: 120, size: 64, elements: !1151)
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1150, file: !801, line: 121, baseType: !150, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1150, file: !801, line: 122, baseType: !152, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !801, line: 123, baseType: !1155, size: 32)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !801, line: 123, size: 32, elements: !1156)
!1156 = !{!1157, !1158, !1159}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1155, file: !801, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1155, file: !801, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1155, file: !801, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !801, line: 130, baseType: !1161, size: 192)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !801, line: 130, size: 192, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1161, file: !801, line: 131, baseType: !152, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1161, file: !801, line: 134, baseType: !216, size: 8, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1161, file: !801, line: 135, baseType: !216, size: 8, offset: 72)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1161, file: !801, line: 136, baseType: !825, size: 32, offset: 96)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1161, file: !801, line: 137, baseType: !7, size: 32, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !801, line: 139, baseType: !1169, size: 256)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !801, line: 139, size: 256, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1169, file: !801, line: 140, baseType: !152, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1169, file: !801, line: 141, baseType: !825, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1169, file: !801, line: 143, baseType: !254, size: 128, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !801, line: 145, baseType: !1175, size: 256)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !801, line: 145, size: 256, elements: !1176)
!1176 = !{!1177, !1178, !1181, !1182, !3083}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1175, file: !801, line: 146, baseType: !152, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1175, file: !801, line: 147, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1180, line: 509, baseType: !799)
!1180 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1175, file: !801, line: 148, baseType: !152, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !801, line: 149, baseType: !1183, size: 64, offset: 192)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !801, line: 149, size: 64, elements: !1184)
!1184 = !{!1185, !3082}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1183, file: !801, line: 150, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !801, line: 388, size: 7296, elements: !1188)
!1188 = !{!1189, !3081}
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !801, line: 389, baseType: !1190, size: 7296)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1187, file: !801, line: 389, size: 7296, elements: !1191)
!1191 = !{!1192, !1310, !1311, !1312, !1316, !1317, !1318, !1319, !1320, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1361, !1369, !1372, !1412, !1413, !3065, !3066, !3069, !3070, !3071, !3074, !3075, !3076, !3079, !3080}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1190, file: !801, line: 390, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !801, line: 305, size: 1472, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1210, !1211, !1216, !1217, !1220, !1304, !1305, !1306, !1307, !1308}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1194, file: !801, line: 308, baseType: !152, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1194, file: !801, line: 309, baseType: !152, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1194, file: !801, line: 313, baseType: !1193, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1194, file: !801, line: 313, baseType: !1193, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1194, file: !801, line: 315, baseType: !838, size: 192, align: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1194, file: !801, line: 323, baseType: !152, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1194, file: !801, line: 327, baseType: !1186, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1194, file: !801, line: 333, baseType: !1204, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1180, line: 284, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1180, line: 284, size: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1205, file: !1180, line: 284, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1209, line: 19, baseType: !152)
!1209 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1194, file: !801, line: 334, baseType: !152, size: 64, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1194, file: !801, line: 343, baseType: !1212, size: 256, offset: 704)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !801, line: 340, size: 256, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1212, file: !801, line: 341, baseType: !838, size: 192, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1212, file: !801, line: 342, baseType: !152, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1194, file: !801, line: 351, baseType: !254, size: 128, offset: 960)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1194, file: !801, line: 353, baseType: !1218, size: 64, offset: 1088)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !801, line: 353, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1194, file: !801, line: 356, baseType: !1221, size: 64, offset: 1152)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1224)
!1224 = !{!1225, !1229, !1230, !1234, !1238, !1278, !1282, !1286, !1290, !1291, !1292, !1296, !1300}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1223, file: !14, line: 558, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1193}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1223, file: !14, line: 559, baseType: !1226, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1223, file: !14, line: 560, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!188, !1193, !152}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1223, file: !14, line: 561, baseType: !1235, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!188, !1193}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1223, file: !14, line: 562, baseType: !1239, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !801, line: 682, baseType: !7)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1258, !1265, !1271, !1272, !1273, !1275, !1277}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1244, file: !14, line: 509, baseType: !1193, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1244, file: !14, line: 511, baseType: !148, size: 32, offset: 96)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1244, file: !14, line: 512, baseType: !152, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1244, file: !14, line: 513, baseType: !152, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1244, file: !14, line: 514, baseType: !1252, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1180, line: 385, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 385, size: 64, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1254, file: !1180, line: 385, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1209, line: 15, baseType: !152)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1244, file: !14, line: 516, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1180, line: 359, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 359, size: 64, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1261, file: !1180, line: 359, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1209, line: 16, baseType: !152)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1244, file: !14, line: 519, baseType: !1266, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1209, line: 21, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1209, line: 21, size: 64, elements: !1268)
!1268 = !{!1269}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1267, file: !1209, line: 21, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1209, line: 14, baseType: !152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1244, file: !14, line: 521, baseType: !799, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1244, file: !14, line: 522, baseType: !799, size: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1244, file: !14, line: 528, baseType: !1274, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1244, file: !14, line: 532, baseType: !1276, size: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1244, file: !14, line: 536, baseType: !1179, size: 64, offset: 704)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1223, file: !14, line: 563, baseType: !1279, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!1242, !1243, !13}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1223, file: !14, line: 565, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1243, !152, !152}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1223, file: !14, line: 567, baseType: !1287, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!152, !1193}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1223, file: !14, line: 571, baseType: !1239, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1223, file: !14, line: 574, baseType: !1239, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1223, file: !14, line: 579, baseType: !1293, size: 64, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!188, !1193, !152, !150, !188, !188}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1223, file: !14, line: 585, baseType: !1297, size: 64, offset: 704)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!252, !1193}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1223, file: !14, line: 615, baseType: !1301, size: 64, offset: 768)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!799, !1193, !152}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1194, file: !801, line: 359, baseType: !152, size: 64, offset: 1216)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1194, file: !801, line: 361, baseType: !383, size: 64, offset: 1280)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1194, file: !801, line: 362, baseType: !150, size: 64, offset: 1344)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1194, file: !801, line: 365, baseType: !756, size: 64, offset: 1408)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1194, file: !801, line: 373, baseType: !1309, offset: 1472)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !801, line: 296, elements: !281)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1190, file: !801, line: 391, baseType: !834, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1190, file: !801, line: 392, baseType: !448, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1190, file: !801, line: 394, baseType: !1313, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!152, !383, !152, !152, !152, !152}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1190, file: !801, line: 398, baseType: !152, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1190, file: !801, line: 399, baseType: !152, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1190, file: !801, line: 405, baseType: !152, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1190, file: !801, line: 406, baseType: !152, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1190, file: !801, line: 407, baseType: !1321, size: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1180, line: 286, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 286, size: 64, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1323, file: !1180, line: 286, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1209, line: 18, baseType: !152)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1190, file: !801, line: 416, baseType: !825, size: 32, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1190, file: !801, line: 428, baseType: !825, size: 32, offset: 608)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1190, file: !801, line: 437, baseType: !825, size: 32, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1190, file: !801, line: 447, baseType: !825, size: 32, offset: 672)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1190, file: !801, line: 450, baseType: !756, size: 64, offset: 704)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1190, file: !801, line: 452, baseType: !188, size: 32, offset: 768)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1190, file: !801, line: 454, baseType: !267, offset: 800)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1190, file: !801, line: 457, baseType: !845, size: 256, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1190, file: !801, line: 459, baseType: !254, size: 128, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1190, file: !801, line: 466, baseType: !152, size: 64, offset: 1216)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1190, file: !801, line: 467, baseType: !152, size: 64, offset: 1280)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1190, file: !801, line: 469, baseType: !152, size: 64, offset: 1344)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1190, file: !801, line: 470, baseType: !152, size: 64, offset: 1408)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1190, file: !801, line: 471, baseType: !758, size: 64, offset: 1472)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1190, file: !801, line: 472, baseType: !152, size: 64, offset: 1536)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1190, file: !801, line: 473, baseType: !152, size: 64, offset: 1600)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1190, file: !801, line: 474, baseType: !152, size: 64, offset: 1664)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1190, file: !801, line: 475, baseType: !152, size: 64, offset: 1728)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1190, file: !801, line: 477, baseType: !267, offset: 1792)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1190, file: !801, line: 478, baseType: !152, size: 64, offset: 1792)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1190, file: !801, line: 478, baseType: !152, size: 64, offset: 1856)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1190, file: !801, line: 478, baseType: !152, size: 64, offset: 1920)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1190, file: !801, line: 478, baseType: !152, size: 64, offset: 1984)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1190, file: !801, line: 479, baseType: !152, size: 64, offset: 2048)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1190, file: !801, line: 479, baseType: !152, size: 64, offset: 2112)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1190, file: !801, line: 479, baseType: !152, size: 64, offset: 2176)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1190, file: !801, line: 480, baseType: !152, size: 64, offset: 2240)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1190, file: !801, line: 480, baseType: !152, size: 64, offset: 2304)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1190, file: !801, line: 480, baseType: !152, size: 64, offset: 2368)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1190, file: !801, line: 480, baseType: !152, size: 64, offset: 2432)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1190, file: !801, line: 482, baseType: !1358, size: 2816, offset: 2496)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2816, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 44)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1190, file: !801, line: 488, baseType: !1362, size: 256, offset: 5312)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1363, line: 60, size: 256, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1362, file: !1363, line: 61, baseType: !1366, size: 256)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 256, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: 4)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1190, file: !801, line: 490, baseType: !1370, size: 64, offset: 5568)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !801, line: 490, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1190, file: !801, line: 493, baseType: !1373, size: 896, offset: 5632)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1374, line: 53, baseType: !1375)
!1374 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1374, line: 13, size: 896, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1383, !1384, !1385, !1386, !1406, !1407, !1408}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1375, file: !1374, line: 18, baseType: !448, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1375, file: !1374, line: 28, baseType: !758, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1375, file: !1374, line: 31, baseType: !845, size: 256, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1375, file: !1374, line: 32, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1374, line: 32, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1375, file: !1374, line: 37, baseType: !212, size: 16, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1375, file: !1374, line: 40, baseType: !752, size: 192, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1375, file: !1374, line: 41, baseType: !150, size: 64, offset: 704)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1375, file: !1374, line: 42, baseType: !1387, size: 64, offset: 768)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1390, line: 13, size: 896, elements: !1391)
!1390 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1389, file: !1390, line: 14, baseType: !150, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1389, file: !1390, line: 15, baseType: !152, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1389, file: !1390, line: 17, baseType: !152, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1389, file: !1390, line: 17, baseType: !152, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1389, file: !1390, line: 19, baseType: !158, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1389, file: !1390, line: 21, baseType: !158, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1389, file: !1390, line: 22, baseType: !158, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1389, file: !1390, line: 23, baseType: !158, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1389, file: !1390, line: 24, baseType: !158, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1389, file: !1390, line: 25, baseType: !158, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1389, file: !1390, line: 26, baseType: !158, size: 64, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1389, file: !1390, line: 27, baseType: !158, size: 64, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1389, file: !1390, line: 28, baseType: !158, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1389, file: !1390, line: 29, baseType: !158, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1375, file: !1374, line: 44, baseType: !825, size: 32, offset: 832)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1375, file: !1374, line: 50, baseType: !210, size: 16, offset: 864)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1375, file: !1374, line: 51, baseType: !1409, size: 16, offset: 880)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !200, line: 18, baseType: !1410)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !202, line: 23, baseType: !1411)
!1411 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !801, line: 495, baseType: !152, size: 64, offset: 6528)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1190, file: !801, line: 497, baseType: !1414, size: 64, offset: 6592)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !801, line: 381, size: 384, elements: !1416)
!1416 = !{!1417, !1418, !3064}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1415, file: !801, line: 382, baseType: !825, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1415, file: !801, line: 383, baseType: !1419, size: 128, offset: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !801, line: 376, size: 128, elements: !1420)
!1420 = !{!1421, !3062}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1419, file: !801, line: 377, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1424, line: 640, size: 48640, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1446, !1464, !1475, !1556, !1557, !1558, !1569, !1570, !1572, !1573, !1574, !1575, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1654, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1686, !1688, !1689, !1690, !1702, !1703, !1704, !1705, !1706, !1707, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1731, !1736, !1895, !1896, !1897, !1898, !1902, !1905, !1908, !1911, !1914, !1918, !2619, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2665, !2666, !2667, !2668, !2669, !2674, !2675, !2676, !2679, !2680, !2683, !2686, !2689, !2692, !2724, !2727, !2728, !2807, !2808, !2811, !2812, !2815, !2816, !2817, !2821, !2822, !2823, !2836, !2837, !2838, !2848, !2853, !2854, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1423, file: !1424, line: 646, baseType: !1427, size: 128)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1428, line: 56, size: 128, elements: !1429)
!1428 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !1428, line: 57, baseType: !152, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1427, file: !1428, line: 58, baseType: !199, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1423, file: !1424, line: 649, baseType: !157, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1423, file: !1424, line: 657, baseType: !150, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1423, file: !1424, line: 658, baseType: !1048, size: 32, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !1424, line: 660, baseType: !7, size: 32, offset: 288)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1423, file: !1424, line: 661, baseType: !7, size: 32, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1423, file: !1424, line: 684, baseType: !188, size: 32, offset: 352)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1423, file: !1424, line: 686, baseType: !188, size: 32, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1423, file: !1424, line: 687, baseType: !188, size: 32, offset: 416)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1423, file: !1424, line: 688, baseType: !188, size: 32, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1423, file: !1424, line: 689, baseType: !7, size: 32, offset: 480)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1423, file: !1424, line: 691, baseType: !1443, size: 64, offset: 512)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1424, line: 691, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1423, file: !1424, line: 692, baseType: !1447, size: 832, offset: 576)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1424, line: 451, size: 832, elements: !1448)
!1448 = !{!1449, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1447, file: !1424, line: 453, baseType: !1450, size: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1424, line: 325, size: 128, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1450, file: !1424, line: 326, baseType: !152, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1450, file: !1424, line: 327, baseType: !199, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1447, file: !1424, line: 454, baseType: !838, size: 192, align: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1447, file: !1424, line: 455, baseType: !254, size: 128, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1447, file: !1424, line: 456, baseType: !7, size: 32, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1447, file: !1424, line: 458, baseType: !448, size: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1447, file: !1424, line: 459, baseType: !448, size: 64, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1447, file: !1424, line: 460, baseType: !448, size: 64, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1447, file: !1424, line: 461, baseType: !448, size: 64, offset: 704)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1447, file: !1424, line: 463, baseType: !448, size: 64, offset: 768)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1447, file: !1424, line: 465, baseType: !1463, offset: 832)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1424, line: 415, elements: !281)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1423, file: !1424, line: 693, baseType: !1465, size: 384, offset: 1408)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1424, line: 489, size: 384, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1465, file: !1424, line: 490, baseType: !254, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1465, file: !1424, line: 491, baseType: !152, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1465, file: !1424, line: 492, baseType: !152, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1465, file: !1424, line: 493, baseType: !7, size: 32, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1465, file: !1424, line: 494, baseType: !212, size: 16, offset: 288)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1465, file: !1424, line: 495, baseType: !212, size: 16, offset: 304)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1465, file: !1424, line: 497, baseType: !1474, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1423, file: !1424, line: 697, baseType: !1476, size: 1792, offset: 1792)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1424, line: 507, size: 1792, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1553, !1554}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1476, file: !1424, line: 508, baseType: !838, size: 192, align: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1476, file: !1424, line: 515, baseType: !448, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1476, file: !1424, line: 516, baseType: !448, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1476, file: !1424, line: 517, baseType: !448, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1476, file: !1424, line: 518, baseType: !448, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1476, file: !1424, line: 519, baseType: !448, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1476, file: !1424, line: 526, baseType: !762, size: 64, offset: 512)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1476, file: !1424, line: 527, baseType: !448, size: 64, offset: 576)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1476, file: !1424, line: 528, baseType: !7, size: 32, offset: 640)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1476, file: !1424, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1476, file: !1424, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1476, file: !1424, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1476, file: !1424, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1476, file: !1424, line: 563, baseType: !1492, size: 512, offset: 704)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1493)
!1493 = !{!1494, !1502, !1503, !1508, !1549, !1550, !1551, !1552}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1492, file: !20, line: 119, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1496, line: 9, size: 256, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1495, file: !1496, line: 10, baseType: !838, size: 192, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1495, file: !1496, line: 11, baseType: !1500, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1501, line: 29, baseType: !762)
!1501 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1492, file: !20, line: 120, baseType: !1500, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1492, file: !20, line: 121, baseType: !1504, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!19, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1492, file: !20, line: 122, baseType: !1509, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1511)
!1511 = !{!1512, !1530, !1531, !1534, !1539, !1540, !1544, !1548}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1510, file: !20, line: 160, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !20, line: 215, baseType: !851)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1514, file: !20, line: 216, baseType: !7, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1514, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1514, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1514, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1514, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1514, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1514, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1514, file: !20, line: 233, baseType: !1500, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1514, file: !20, line: 234, baseType: !1507, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1514, file: !20, line: 235, baseType: !1500, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1514, file: !20, line: 236, baseType: !1507, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1514, file: !20, line: 237, baseType: !1529, size: 4096, offset: 512)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1510, size: 4096, elements: !225)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1510, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1510, file: !20, line: 162, baseType: !1532, size: 32, offset: 96)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !149, line: 27, baseType: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !341, line: 96, baseType: !188)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1510, file: !20, line: 163, baseType: !1535, size: 32, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !419, line: 276, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !419, line: 276, size: 32, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1536, file: !419, line: 276, baseType: !423, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1510, file: !20, line: 164, baseType: !1507, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1510, file: !20, line: 165, baseType: !1541, size: 128, offset: 256)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1496, line: 14, size: 128, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1541, file: !1496, line: 15, baseType: !830, size: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1510, file: !20, line: 166, baseType: !1545, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1500}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1510, file: !20, line: 167, baseType: !1500, size: 64, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1492, file: !20, line: 123, baseType: !214, size: 8, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1492, file: !20, line: 124, baseType: !214, size: 8, offset: 456)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1492, file: !20, line: 125, baseType: !214, size: 8, offset: 464)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1492, file: !20, line: 126, baseType: !214, size: 8, offset: 472)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1476, file: !1424, line: 572, baseType: !1492, size: 512, offset: 1216)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1476, file: !1424, line: 580, baseType: !1555, size: 64, offset: 1728)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1423, file: !1424, line: 721, baseType: !7, size: 32, offset: 3584)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1423, file: !1424, line: 722, baseType: !188, size: 32, offset: 3616)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1423, file: !1424, line: 723, baseType: !1559, size: 64, offset: 3648)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1562, line: 17, baseType: !1563)
!1562 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1562, line: 17, size: 64, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1563, file: !1562, line: 17, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !1567)
!1567 = !{!1568}
!1568 = !DISubrange(count: 1)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1423, file: !1424, line: 724, baseType: !1561, size: 64, offset: 3712)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1423, file: !1424, line: 749, baseType: !1571, offset: 3776)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1424, line: 290, elements: !281)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1423, file: !1424, line: 751, baseType: !254, size: 128, offset: 3776)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1423, file: !1424, line: 757, baseType: !1186, size: 64, offset: 3904)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1423, file: !1424, line: 758, baseType: !1186, size: 64, offset: 3968)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1423, file: !1424, line: 761, baseType: !1576, size: 320, offset: 4032)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1363, line: 34, size: 320, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1576, file: !1363, line: 35, baseType: !448, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1576, file: !1363, line: 36, baseType: !1580, size: 256, offset: 64)
!1580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1193, size: 256, elements: !1367)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1423, file: !1424, line: 766, baseType: !188, size: 32, offset: 4352)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1423, file: !1424, line: 767, baseType: !188, size: 32, offset: 4384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1423, file: !1424, line: 768, baseType: !188, size: 32, offset: 4416)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1423, file: !1424, line: 770, baseType: !188, size: 32, offset: 4448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1423, file: !1424, line: 772, baseType: !152, size: 64, offset: 4480)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1423, file: !1424, line: 775, baseType: !7, size: 32, offset: 4544)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1423, file: !1424, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1423, file: !1424, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1423, file: !1424, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1423, file: !1424, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1423, file: !1424, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1423, file: !1424, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1423, file: !1424, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1423, file: !1424, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1423, file: !1424, line: 831, baseType: !152, size: 64, offset: 4672)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1423, file: !1424, line: 833, baseType: !1597, size: 384, offset: 4736)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1598)
!1598 = !{!1599, !1604}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1597, file: !25, line: 26, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!158, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !25, line: 27, baseType: !1605, size: 320, offset: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1597, file: !25, line: 27, size: 320, elements: !1606)
!1606 = !{!1607, !1617, !1644}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1605, file: !25, line: 36, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !25, line: 29, size: 320, elements: !1609)
!1609 = !{!1610, !1612, !1613, !1614, !1615, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1608, file: !25, line: 30, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1608, file: !25, line: 31, baseType: !199, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !25, line: 32, baseType: !199, size: 32, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1608, file: !25, line: 33, baseType: !199, size: 32, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1608, file: !25, line: 34, baseType: !448, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1608, file: !25, line: 35, baseType: !1611, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1605, file: !25, line: 46, baseType: !1618, size: 192)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !25, line: 38, size: 192, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1643}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1618, file: !25, line: 39, baseType: !1532, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1618, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !25, line: 41, baseType: !1623, size: 64, offset: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1618, file: !25, line: 41, size: 64, elements: !1624)
!1624 = !{!1625, !1633}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1623, file: !25, line: 42, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1628, line: 7, size: 128, elements: !1629)
!1628 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1627, file: !1628, line: 8, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !341, line: 93, baseType: !559)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1627, file: !1628, line: 9, baseType: !559, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1623, file: !25, line: 43, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1636, line: 7, size: 64, elements: !1637)
!1636 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1642}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1635, file: !1636, line: 8, baseType: !1639, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1636, line: 5, baseType: !1640)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !200, line: 20, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !202, line: 26, baseType: !188)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1635, file: !1636, line: 9, baseType: !1640, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1618, file: !25, line: 45, baseType: !448, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1605, file: !25, line: 54, baseType: !1645, size: 256)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !25, line: 48, size: 256, elements: !1646)
!1646 = !{!1647, !1650, !1651, !1652, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1645, file: !25, line: 49, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1645, file: !25, line: 50, baseType: !188, size: 32, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1645, file: !25, line: 51, baseType: !188, size: 32, offset: 96)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1645, file: !25, line: 52, baseType: !152, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1645, file: !25, line: 53, baseType: !152, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1423, file: !1424, line: 835, baseType: !1655, size: 32, offset: 5120)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !149, line: 22, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !341, line: 28, baseType: !188)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1423, file: !1424, line: 836, baseType: !1655, size: 32, offset: 5152)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1423, file: !1424, line: 840, baseType: !152, size: 64, offset: 5184)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1423, file: !1424, line: 849, baseType: !1422, size: 64, offset: 5248)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1423, file: !1424, line: 852, baseType: !1422, size: 64, offset: 5312)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1423, file: !1424, line: 857, baseType: !254, size: 128, offset: 5376)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1423, file: !1424, line: 858, baseType: !254, size: 128, offset: 5504)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1423, file: !1424, line: 859, baseType: !1422, size: 64, offset: 5632)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1423, file: !1424, line: 867, baseType: !254, size: 128, offset: 5696)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1423, file: !1424, line: 868, baseType: !254, size: 128, offset: 5824)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1423, file: !1424, line: 871, baseType: !1667, size: 64, offset: 5952)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1675, !1676, !1677, !1678}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1668, file: !53, line: 61, baseType: !1048, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1668, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1668, file: !53, line: 63, baseType: !267, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1668, file: !53, line: 65, baseType: !1674, size: 256, offset: 64)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 256, elements: !1367)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1668, file: !53, line: 66, baseType: !664, size: 64, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1668, file: !53, line: 68, baseType: !979, size: 128, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1668, file: !53, line: 69, baseType: !396, size: 128, align: 64, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1668, file: !53, line: 70, baseType: !1679, size: 128, offset: 640)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1680, size: 128, elements: !1567)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1680, file: !53, line: 55, baseType: !188, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1680, file: !53, line: 56, baseType: !1684, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1423, file: !1424, line: 872, baseType: !1687, size: 512, offset: 6016)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 512, elements: !1367)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1423, file: !1424, line: 873, baseType: !254, size: 128, offset: 6528)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1423, file: !1424, line: 874, baseType: !254, size: 128, offset: 6656)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1423, file: !1424, line: 876, baseType: !1691, size: 64, offset: 6784)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1693, line: 26, size: 192, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1692, file: !1693, line: 27, baseType: !7, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1692, file: !1693, line: 28, baseType: !1697, size: 128, offset: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1698, line: 43, size: 128, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !1698, line: 44, baseType: !851)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1697, file: !1698, line: 45, baseType: !254, size: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1423, file: !1424, line: 879, baseType: !734, size: 64, offset: 6848)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1423, file: !1424, line: 882, baseType: !734, size: 64, offset: 6912)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1423, file: !1424, line: 884, baseType: !448, size: 64, offset: 6976)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1423, file: !1424, line: 885, baseType: !448, size: 64, offset: 7040)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1423, file: !1424, line: 890, baseType: !448, size: 64, offset: 7104)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1423, file: !1424, line: 891, baseType: !1708, size: 128, offset: 7168)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1424, line: 242, size: 128, elements: !1709)
!1709 = !{!1710, !1711, !1712}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1708, file: !1424, line: 244, baseType: !448, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1708, file: !1424, line: 245, baseType: !448, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1708, file: !1424, line: 246, baseType: !851, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1423, file: !1424, line: 900, baseType: !152, size: 64, offset: 7296)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1423, file: !1424, line: 901, baseType: !152, size: 64, offset: 7360)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1423, file: !1424, line: 904, baseType: !448, size: 64, offset: 7424)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1423, file: !1424, line: 907, baseType: !448, size: 64, offset: 7488)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1423, file: !1424, line: 910, baseType: !152, size: 64, offset: 7552)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1423, file: !1424, line: 911, baseType: !152, size: 64, offset: 7616)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1423, file: !1424, line: 914, baseType: !1720, size: 640, offset: 7680)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1721, line: 123, size: 640, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !{!1723, !1729, !1730}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1720, file: !1721, line: 124, baseType: !1724, size: 576)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1725, size: 576, elements: !309)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1721, line: 108, size: 192, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1725, file: !1721, line: 109, baseType: !448, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1725, file: !1721, line: 110, baseType: !1541, size: 128, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1720, file: !1721, line: 125, baseType: !7, size: 32, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1720, file: !1721, line: 126, baseType: !7, size: 32, offset: 608)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1423, file: !1424, line: 917, baseType: !1732, size: 192, offset: 8320)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1721, line: 134, size: 192, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1732, file: !1721, line: 135, baseType: !396, size: 128, align: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1732, file: !1721, line: 136, baseType: !7, size: 32, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1423, file: !1424, line: 923, baseType: !1737, size: 64, offset: 8512)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1740, line: 111, size: 1280, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1761, !1762, !1763, !1764, !1765, !1766, !1873, !1874, !1875, !1876, !1877, !1880, !1890}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1739, file: !1740, line: 112, baseType: !825, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1739, file: !1740, line: 120, baseType: !461, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1739, file: !1740, line: 121, baseType: !469, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1739, file: !1740, line: 122, baseType: !461, size: 32, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1739, file: !1740, line: 123, baseType: !469, size: 32, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1739, file: !1740, line: 124, baseType: !461, size: 32, offset: 160)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1739, file: !1740, line: 125, baseType: !469, size: 32, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1739, file: !1740, line: 126, baseType: !461, size: 32, offset: 224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1739, file: !1740, line: 127, baseType: !469, size: 32, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1739, file: !1740, line: 128, baseType: !7, size: 32, offset: 288)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1739, file: !1740, line: 129, baseType: !1753, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1754, line: 26, baseType: !1755)
!1754 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1754, line: 24, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1755, file: !1754, line: 25, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 64, elements: !1759)
!1759 = !{!1760}
!1760 = !DISubrange(count: 2)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1739, file: !1740, line: 130, baseType: !1753, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1739, file: !1740, line: 131, baseType: !1753, size: 64, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1739, file: !1740, line: 132, baseType: !1753, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1739, file: !1740, line: 133, baseType: !1753, size: 64, offset: 576)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1739, file: !1740, line: 135, baseType: !216, size: 8, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1739, file: !1740, line: 137, baseType: !1767, size: 64, offset: 704)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1769, line: 189, size: 1664, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1772, !1775, !1780, !1781, !1784, !1785, !1790, !1791, !1792, !1793, !1795, !1796, !1797, !1798, !1799, !1837, !1858}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1768, file: !1769, line: 190, baseType: !1048, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1768, file: !1769, line: 191, baseType: !1773, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1769, line: 28, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !149, line: 98, baseType: !1640)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1769, line: 192, baseType: !1776, size: 192, offset: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1769, line: 192, size: 192, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1776, file: !1769, line: 193, baseType: !254, size: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1776, file: !1769, line: 194, baseType: !838, size: 192, align: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1768, file: !1769, line: 199, baseType: !845, size: 256, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1768, file: !1769, line: 200, baseType: !1782, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1769, line: 200, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1768, file: !1769, line: 201, baseType: !150, size: 64, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1769, line: 202, baseType: !1786, size: 64, offset: 640)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1769, line: 202, size: 64, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1786, file: !1769, line: 203, baseType: !565, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1786, file: !1769, line: 204, baseType: !565, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1768, file: !1769, line: 206, baseType: !565, size: 64, offset: 704)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1768, file: !1769, line: 207, baseType: !461, size: 32, offset: 768)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1768, file: !1769, line: 208, baseType: !469, size: 32, offset: 800)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1768, file: !1769, line: 209, baseType: !1794, size: 32, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1769, line: 31, baseType: !585)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1768, file: !1769, line: 210, baseType: !212, size: 16, offset: 864)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1768, file: !1769, line: 211, baseType: !212, size: 16, offset: 880)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1768, file: !1769, line: 215, baseType: !1411, size: 16, offset: 896)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1768, file: !1769, line: 222, baseType: !152, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1769, line: 239, baseType: !1800, size: 320, offset: 1024)
!1800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1769, line: 239, size: 320, elements: !1801)
!1801 = !{!1802, !1829}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1800, file: !1769, line: 240, baseType: !1803, size: 320)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1769, line: 108, size: 320, elements: !1804)
!1804 = !{!1805, !1806, !1818, !1821, !1828}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1803, file: !1769, line: 110, baseType: !152, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1769, line: 111, baseType: !1807, size: 64, offset: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !1769, line: 111, size: 64, elements: !1808)
!1808 = !{!1809, !1817}
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !1769, line: 112, baseType: !1810, size: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1807, file: !1769, line: 112, size: 64, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1810, file: !1769, line: 114, baseType: !210, size: 16)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1810, file: !1769, line: 115, baseType: !1814, size: 48, offset: 16)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 48, elements: !1815)
!1815 = !{!1816}
!1816 = !DISubrange(count: 6)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1807, file: !1769, line: 121, baseType: !152, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1803, file: !1769, line: 123, baseType: !1819, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1769, line: 96, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1803, file: !1769, line: 124, baseType: !1822, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1769, line: 102, size: 192, elements: !1824)
!1824 = !{!1825, !1826, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1823, file: !1769, line: 103, baseType: !396, size: 128, align: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1823, file: !1769, line: 104, baseType: !1048, size: 32, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1823, file: !1769, line: 105, baseType: !516, size: 8, offset: 160)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1803, file: !1769, line: 125, baseType: !252, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !1769, line: 241, baseType: !1830, size: 320)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1800, file: !1769, line: 241, size: 320, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1830, file: !1769, line: 242, baseType: !152, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1830, file: !1769, line: 243, baseType: !152, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1830, file: !1769, line: 244, baseType: !1819, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1830, file: !1769, line: 245, baseType: !1822, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1830, file: !1769, line: 246, baseType: !308, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1769, line: 254, baseType: !1838, size: 256, offset: 1344)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1769, line: 254, size: 256, elements: !1839)
!1839 = !{!1840, !1846}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1838, file: !1769, line: 255, baseType: !1841, size: 256)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1769, line: 128, size: 256, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1841, file: !1769, line: 129, baseType: !150, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1841, file: !1769, line: 130, baseType: !1845, size: 256)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !1367)
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1769, line: 256, baseType: !1847, size: 256)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1838, file: !1769, line: 256, size: 256, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1847, file: !1769, line: 258, baseType: !254, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1847, file: !1769, line: 259, baseType: !1851, size: 128, offset: 128)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1852, line: 22, size: 128, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1851, file: !1852, line: 23, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1852, line: 23, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1851, file: !1852, line: 24, baseType: !152, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1768, file: !1769, line: 274, baseType: !1859, size: 64, offset: 1600)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1769, line: 170, size: 192, elements: !1861)
!1861 = !{!1862, !1871, !1872}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1860, file: !1769, line: 171, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1769, line: 165, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!188, !1767, !1867, !1869, !1767}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1841)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1860, file: !1769, line: 172, baseType: !1767, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1860, file: !1769, line: 173, baseType: !1819, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1739, file: !1740, line: 138, baseType: !1767, size: 64, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1739, file: !1740, line: 139, baseType: !1767, size: 64, offset: 832)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1739, file: !1740, line: 140, baseType: !1767, size: 64, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1739, file: !1740, line: 145, baseType: !1043, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1739, file: !1740, line: 146, baseType: !1878, size: 64, offset: 1024)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !462, line: 18, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1739, file: !1740, line: 147, baseType: !1881, size: 64, offset: 1088)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1740, line: 25, size: 64, elements: !1883)
!1883 = !{!1884, !1885, !1886}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1882, file: !1740, line: 26, baseType: !825, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1882, file: !1740, line: 27, baseType: !188, size: 32, offset: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1882, file: !1740, line: 28, baseType: !1887, offset: 64)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, elements: !1888)
!1888 = !{!1889}
!1889 = !DISubrange(count: 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !1740, line: 149, baseType: !1891, size: 128, offset: 1152)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !1740, line: 149, size: 128, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1891, file: !1740, line: 150, baseType: !188, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1891, file: !1740, line: 151, baseType: !396, size: 128, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1423, file: !1424, line: 926, baseType: !1737, size: 64, offset: 8576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1423, file: !1424, line: 929, baseType: !1737, size: 64, offset: 8640)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1423, file: !1424, line: 933, baseType: !1767, size: 64, offset: 8704)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1423, file: !1424, line: 943, baseType: !1899, size: 128, offset: 8768)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !1900)
!1900 = !{!1901}
!1901 = !DISubrange(count: 16)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1423, file: !1424, line: 945, baseType: !1903, size: 64, offset: 8896)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1424, line: 49, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1423, file: !1424, line: 956, baseType: !1906, size: 64, offset: 8960)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1424, line: 45, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1423, file: !1424, line: 959, baseType: !1909, size: 64, offset: 9024)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1424, line: 959, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1423, file: !1424, line: 962, baseType: !1912, size: 64, offset: 9088)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1424, line: 66, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1423, file: !1424, line: 966, baseType: !1915, size: 64, offset: 9152)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1917, line: 35, flags: DIFlagFwdDecl)
!1917 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1423, file: !1424, line: 969, baseType: !1919, size: 64, offset: 9216)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1921, line: 82, size: 7296, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1958, !1967, !1968, !1970, !1971, !1972, !2575, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2605, !2606, !2613, !2614, !2615, !2616, !2617, !2618}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1920, file: !1921, line: 83, baseType: !1048, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1920, file: !1921, line: 84, baseType: !825, size: 32, offset: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1920, file: !1921, line: 85, baseType: !188, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1920, file: !1921, line: 86, baseType: !254, size: 128, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1920, file: !1921, line: 88, baseType: !979, size: 128, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1920, file: !1921, line: 91, baseType: !1422, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1920, file: !1921, line: 94, baseType: !1930, size: 192, offset: 448)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1931, line: 30, size: 192, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1930, file: !1931, line: 31, baseType: !254, size: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1930, file: !1931, line: 32, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1936, line: 25, baseType: !1937)
!1936 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1936, line: 23, size: 64, elements: !1938)
!1938 = !{!1939}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1937, file: !1936, line: 24, baseType: !1566, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1920, file: !1921, line: 97, baseType: !664, size: 64, offset: 640)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1920, file: !1921, line: 100, baseType: !188, size: 32, offset: 704)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1920, file: !1921, line: 106, baseType: !188, size: 32, offset: 736)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1920, file: !1921, line: 107, baseType: !1422, size: 64, offset: 768)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1920, file: !1921, line: 110, baseType: !188, size: 32, offset: 832)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1920, file: !1921, line: 111, baseType: !7, size: 32, offset: 864)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1920, file: !1921, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1920, file: !1921, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1920, file: !1921, line: 128, baseType: !188, size: 32, offset: 928)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1920, file: !1921, line: 129, baseType: !254, size: 128, offset: 960)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1920, file: !1921, line: 132, baseType: !1492, size: 512, offset: 1088)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1920, file: !1921, line: 133, baseType: !1500, size: 64, offset: 1600)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1920, file: !1921, line: 140, baseType: !1953, size: 256, offset: 1664)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1954, size: 256, elements: !1759)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1921, line: 38, size: 128, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1954, file: !1921, line: 39, baseType: !448, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1954, file: !1921, line: 40, baseType: !448, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1920, file: !1921, line: 146, baseType: !1959, size: 192, offset: 1920)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1921, line: 66, size: 192, elements: !1960)
!1960 = !{!1961}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1959, file: !1921, line: 67, baseType: !1962, size: 192)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1921, line: 47, size: 192, elements: !1963)
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1962, file: !1921, line: 48, baseType: !758, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1962, file: !1921, line: 49, baseType: !758, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1962, file: !1921, line: 50, baseType: !758, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1920, file: !1921, line: 150, baseType: !1720, size: 640, offset: 2112)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1920, file: !1921, line: 153, baseType: !1969, size: 256, offset: 2752)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1667, size: 256, elements: !1367)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1920, file: !1921, line: 159, baseType: !1667, size: 64, offset: 3008)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1920, file: !1921, line: 162, baseType: !188, size: 32, offset: 3072)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1920, file: !1921, line: 164, baseType: !1973, size: 64, offset: 3136)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1975, line: 285, size: 5056, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!1976 = !{!1977, !1978, !1983, !1985, !2474, !2475, !2476, !2485, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1974, file: !1975, line: 286, baseType: !188, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1974, file: !1975, line: 287, baseType: !1979, size: 32, offset: 32)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1980, line: 19, size: 32, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1979, file: !1980, line: 20, baseType: !1048, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1974, file: !1975, line: 288, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1974, file: !1975, line: 289, baseType: !1986, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !1988, line: 302, size: 1472, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!1989 = !{!1990, !1991, !1992, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2236, !2237, !2241, !2242, !2244, !2344, !2347, !2348, !2473}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1987, file: !1988, line: 303, baseType: !188, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1987, file: !1988, line: 304, baseType: !1979, size: 32, offset: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !1987, file: !1988, line: 305, baseType: !1993, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1996, line: 14, size: 832, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !1999, !2000, !2206, !2207, !2208}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1995, file: !1996, line: 15, baseType: !248, size: 512)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1995, file: !1996, line: 16, baseType: !659, size: 64, offset: 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1995, file: !1996, line: 17, baseType: !2001, size: 64, offset: 576)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2004)
!2004 = !{!2005, !2006, !2010, !2014, !2018, !2019, !2020, !2024, !2037, !2038, !2046, !2050, !2051, !2055, !2056, !2060, !2065, !2066, !2070, !2074, !2166, !2170, !2171, !2175, !2176, !2180, !2184, !2189, !2193, !2197, !2201, !2205}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2003, file: !44, line: 1823, baseType: !659, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2003, file: !44, line: 1824, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!557, !383, !557, !188}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2003, file: !44, line: 1825, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!339, !383, !308, !353, !774}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2003, file: !44, line: 1826, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!339, !383, !252, !353, !774}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2003, file: !44, line: 1827, baseType: !915, size: 64, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2003, file: !44, line: 1828, baseType: !915, size: 64, offset: 320)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2003, file: !44, line: 1829, baseType: !2021, size: 64, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!188, !918, !516}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2003, file: !44, line: 1830, baseType: !2025, size: 64, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!188, !383, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2030)
!2030 = !{!2031, !2036}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2029, file: !44, line: 1777, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!188, !2028, !252, !188, !557, !448, !7}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2029, file: !44, line: 1778, baseType: !557, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2003, file: !44, line: 1831, baseType: !2025, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2003, file: !44, line: 1832, baseType: !2039, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!2042, !383, !2044}
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2043, line: 52, baseType: !7)
!2043 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !645, line: 27, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2003, file: !44, line: 1833, baseType: !2047, size: 64, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!158, !383, !7, !152}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2003, file: !44, line: 1834, baseType: !2047, size: 64, offset: 704)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2003, file: !44, line: 1835, baseType: !2052, size: 64, offset: 768)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!188, !383, !1193}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2003, file: !44, line: 1836, baseType: !152, size: 64, offset: 832)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2003, file: !44, line: 1837, baseType: !2057, size: 64, offset: 896)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!188, !455, !383}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2003, file: !44, line: 1838, baseType: !2061, size: 64, offset: 960)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!188, !383, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !150)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2003, file: !44, line: 1839, baseType: !2057, size: 64, offset: 1024)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2003, file: !44, line: 1840, baseType: !2067, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!188, !383, !557, !557, !188}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2003, file: !44, line: 1841, baseType: !2071, size: 64, offset: 1152)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!188, !188, !383, !188}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2003, file: !44, line: 1842, baseType: !2075, size: 64, offset: 1216)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!188, !383, !188, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2111, !2142}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2079, file: !44, line: 1063, baseType: !2078, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2079, file: !44, line: 1064, baseType: !254, size: 128, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2079, file: !44, line: 1065, baseType: !668, size: 128, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2079, file: !44, line: 1066, baseType: !254, size: 128, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2079, file: !44, line: 1069, baseType: !254, size: 128, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2079, file: !44, line: 1072, baseType: !2064, size: 64, offset: 576)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2079, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2079, file: !44, line: 1074, baseType: !216, size: 8, offset: 672)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2079, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2079, file: !44, line: 1076, baseType: !188, size: 32, offset: 736)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2079, file: !44, line: 1077, baseType: !979, size: 128, offset: 768)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2079, file: !44, line: 1078, baseType: !383, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2079, file: !44, line: 1079, baseType: !557, size: 64, offset: 960)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2079, file: !44, line: 1080, baseType: !557, size: 64, offset: 1024)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2079, file: !44, line: 1082, baseType: !998, size: 64, offset: 1088)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2079, file: !44, line: 1084, baseType: !152, size: 64, offset: 1152)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2079, file: !44, line: 1085, baseType: !152, size: 64, offset: 1216)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2079, file: !44, line: 1087, baseType: !2099, size: 64, offset: 1280)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2102)
!2102 = !{!2103, !2107}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2101, file: !44, line: 1012, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !2078, !2078}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2101, file: !44, line: 1013, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !2078}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2079, file: !44, line: 1088, baseType: !2112, size: 64, offset: 1344)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2115)
!2115 = !{!2116, !2120, !2124, !2125, !2129, !2133, !2137, !2141}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2114, file: !44, line: 1017, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!2064, !2064}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2114, file: !44, line: 1018, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2064}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2114, file: !44, line: 1019, baseType: !2108, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2114, file: !44, line: 1020, baseType: !2126, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!188, !2078, !188}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2114, file: !44, line: 1021, baseType: !2130, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!516, !2078}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2114, file: !44, line: 1022, baseType: !2134, size: 64, offset: 320)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!188, !2078, !188, !257}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2114, file: !44, line: 1023, baseType: !2138, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2078, !892}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2114, file: !44, line: 1024, baseType: !2130, size: 64, offset: 448)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2079, file: !44, line: 1097, baseType: !2143, size: 256, offset: 1408)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !44, line: 1089, size: 256, elements: !2144)
!2144 = !{!2145, !2154, !2160}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2143, file: !44, line: 1090, baseType: !2146, size: 256)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2147, line: 10, size: 256, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2148 = !{!2149, !2150, !2153}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2146, file: !2147, line: 11, baseType: !199, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2146, file: !2147, line: 12, baseType: !2151, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2147, line: 5, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2146, file: !2147, line: 13, baseType: !254, size: 128, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2143, file: !44, line: 1091, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2147, line: 17, size: 64, elements: !2156)
!2156 = !{!2157}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2155, file: !2147, line: 18, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2147, line: 16, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2143, file: !44, line: 1096, baseType: !2161, size: 192)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !44, line: 1092, size: 192, elements: !2162)
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2161, file: !44, line: 1093, baseType: !254, size: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2161, file: !44, line: 1094, baseType: !188, size: 32, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2161, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2003, file: !44, line: 1843, baseType: !2167, size: 64, offset: 1280)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!339, !383, !799, !188, !353, !774, !188}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2003, file: !44, line: 1844, baseType: !1313, size: 64, offset: 1344)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2003, file: !44, line: 1845, baseType: !2172, size: 64, offset: 1408)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!188, !188}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2003, file: !44, line: 1846, baseType: !2075, size: 64, offset: 1472)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2003, file: !44, line: 1847, baseType: !2177, size: 64, offset: 1536)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!339, !973, !383, !774, !353, !7}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2003, file: !44, line: 1848, baseType: !2181, size: 64, offset: 1600)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!339, !383, !774, !973, !353, !7}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2003, file: !44, line: 1849, baseType: !2185, size: 64, offset: 1664)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!188, !383, !158, !2188, !892}
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2003, file: !44, line: 1850, baseType: !2190, size: 64, offset: 1728)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!158, !383, !188, !557, !557}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2003, file: !44, line: 1852, baseType: !2194, size: 64, offset: 1792)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !740, !383}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2003, file: !44, line: 1856, baseType: !2198, size: 64, offset: 1856)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!339, !383, !557, !383, !557, !353, !7}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2003, file: !44, line: 1858, baseType: !2202, size: 64, offset: 1920)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!557, !383, !557, !383, !557, !557, !7}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2003, file: !44, line: 1861, baseType: !2067, size: 64, offset: 1984)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1995, file: !1996, line: 18, baseType: !254, size: 128, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1995, file: !1996, line: 19, baseType: !539, size: 32, offset: 768)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1995, file: !1996, line: 20, baseType: !7, size: 32, offset: 800)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1987, file: !1988, line: 306, baseType: !659, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !1987, file: !1988, line: 307, baseType: !252, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1987, file: !1988, line: 308, baseType: !252, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !1987, file: !1988, line: 309, baseType: !188, size: 32, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1987, file: !1988, line: 310, baseType: !188, size: 32, offset: 352)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !1987, file: !1988, line: 311, baseType: !188, size: 32, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1987, file: !1988, line: 312, baseType: !7, size: 32, offset: 416)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1987, file: !1988, line: 313, baseType: !1411, size: 16, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !1987, file: !1988, line: 314, baseType: !1411, size: 16, offset: 464)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !1987, file: !1988, line: 315, baseType: !2219, size: 352, offset: 480)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2220, line: 32, size: 352, elements: !2221)
!2220 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !{!2222, !2224, !2225, !2226, !2227, !2229, !2233, !2235}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2219, file: !2220, line: 33, baseType: !2223, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2220, line: 9, baseType: !7)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2219, file: !2220, line: 34, baseType: !2223, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2219, file: !2220, line: 35, baseType: !2223, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2219, file: !2220, line: 36, baseType: !2223, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2219, file: !2220, line: 37, baseType: !2228, size: 8, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2220, line: 7, baseType: !216)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2219, file: !2220, line: 38, baseType: !2230, size: 152, offset: 136)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2228, size: 152, elements: !2231)
!2231 = !{!2232}
!2232 = !DISubrange(count: 19)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2219, file: !2220, line: 39, baseType: !2234, size: 32, offset: 288)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2220, line: 8, baseType: !7)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2219, file: !2220, line: 40, baseType: !2234, size: 32, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1987, file: !1988, line: 316, baseType: !152, size: 64, offset: 832)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !1987, file: !1988, line: 317, baseType: !2238, size: 64, offset: 896)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2240, line: 14, flags: DIFlagFwdDecl)
!2240 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1987, file: !1988, line: 318, baseType: !1986, size: 64, offset: 960)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !1987, file: !1988, line: 323, baseType: !2243, size: 64, offset: 1024)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !1987, file: !1988, line: 324, baseType: !2245, size: 64, offset: 1088)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !1975, line: 230, size: 2432, elements: !2248)
!2248 = !{!2249, !2292, !2293, !2294, !2316, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2339, !2340, !2341, !2342, !2343}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2247, file: !1975, line: 231, baseType: !2250, size: 1024)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !1975, line: 85, size: 1024, elements: !2251)
!2251 = !{!2252, !2270, !2282, !2283, !2284, !2285, !2289, !2290, !2291}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2250, file: !1975, line: 86, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !1975, line: 58, size: 256, elements: !2255)
!2255 = !{!2256, !2261, !2262, !2263, !2264, !2265, !2266}
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2254, file: !1975, line: 59, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2254, file: !1975, line: 59, size: 64, elements: !2258)
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2257, file: !1975, line: 60, baseType: !2253, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2257, file: !1975, line: 61, baseType: !390, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2254, file: !1975, line: 63, baseType: !188, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2254, file: !1975, line: 64, baseType: !188, size: 32, offset: 96)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2254, file: !1975, line: 65, baseType: !188, size: 32, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2254, file: !1975, line: 66, baseType: !188, size: 32, offset: 160)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2254, file: !1975, line: 67, baseType: !188, size: 32, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2254, file: !1975, line: 69, baseType: !2267, offset: 256)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, elements: !2268)
!2268 = !{!2269}
!2269 = !DISubrange(count: -1)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2250, file: !1975, line: 87, baseType: !2271, size: 256, offset: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2272, line: 102, size: 256, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2273 = !{!2274, !2275, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2271, file: !2272, line: 103, baseType: !756, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2271, file: !2272, line: 104, baseType: !254, size: 128, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2271, file: !2272, line: 105, baseType: !2277, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2272, line: 21, baseType: !2278)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !2281}
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2250, file: !1975, line: 88, baseType: !752, size: 192, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2250, file: !1975, line: 89, baseType: !825, size: 32, offset: 512)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2250, file: !1975, line: 90, baseType: !2254, size: 256, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2250, file: !1975, line: 91, baseType: !2286, size: 64, offset: 832)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !391, line: 54, size: 64, elements: !2287)
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2286, file: !391, line: 55, baseType: !394, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2250, file: !1975, line: 92, baseType: !825, size: 32, offset: 896)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2250, file: !1975, line: 93, baseType: !188, size: 32, offset: 928)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2250, file: !1975, line: 94, baseType: !2253, size: 64, offset: 960)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2247, file: !1975, line: 232, baseType: !1973, size: 64, offset: 1024)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2247, file: !1975, line: 233, baseType: !1973, size: 64, offset: 1088)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2247, file: !1975, line: 234, baseType: !2295, size: 64, offset: 1152)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2297)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !1975, line: 205, size: 320, elements: !2298)
!2298 = !{!2299, !2303, !2307, !2311, !2315}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2297, file: !1975, line: 207, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!188, !2246}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2297, file: !1975, line: 209, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !2246, !188}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2297, file: !1975, line: 213, baseType: !2308, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2246}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2297, file: !1975, line: 218, baseType: !2312, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!188, !2246, !1973}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2297, file: !1975, line: 220, baseType: !2308, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2247, file: !1975, line: 235, baseType: !2317, size: 64, offset: 1216)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !1975, line: 223, size: 128, elements: !2320)
!2320 = !{!2321, !2325}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2319, file: !1975, line: 224, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!188, !2246, !452, !452, !353}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2319, file: !1975, line: 225, baseType: !2308, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2247, file: !1975, line: 236, baseType: !267, offset: 1280)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2247, file: !1975, line: 237, baseType: !188, size: 32, offset: 1280)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2247, file: !1975, line: 238, baseType: !188, size: 32, offset: 1312)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2247, file: !1975, line: 239, baseType: !979, size: 128, offset: 1344)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2247, file: !1975, line: 240, baseType: !979, size: 128, offset: 1472)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2247, file: !1975, line: 241, baseType: !152, size: 64, offset: 1600)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2247, file: !1975, line: 242, baseType: !152, size: 64, offset: 1664)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2247, file: !1975, line: 243, baseType: !216, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !2247, file: !1975, line: 244, baseType: !216, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2247, file: !1975, line: 245, baseType: !752, size: 192, offset: 1792)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2247, file: !1975, line: 246, baseType: !752, size: 192, offset: 1984)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2247, file: !1975, line: 247, baseType: !2338, size: 64, offset: 2176)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2247, file: !1975, line: 248, baseType: !7, size: 32, offset: 2240)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2247, file: !1975, line: 249, baseType: !7, size: 32, offset: 2272)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2247, file: !1975, line: 250, baseType: !188, size: 32, offset: 2304)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2247, file: !1975, line: 253, baseType: !1979, size: 32, offset: 2336)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2247, file: !1975, line: 254, baseType: !150, size: 64, offset: 2368)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1987, file: !1988, line: 325, baseType: !2345, size: 64, offset: 1152)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !1987, file: !1988, line: 326, baseType: !150, size: 64, offset: 1216)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1987, file: !1988, line: 332, baseType: !2349, size: 64, offset: 1280)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2351)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !1988, line: 254, size: 2176, elements: !2352)
!2352 = !{!2353, !2357, !2361, !2365, !2369, !2373, !2377, !2378, !2382, !2386, !2387, !2391, !2392, !2396, !2400, !2404, !2405, !2406, !2407, !2408, !2409, !2413, !2414, !2415, !2419, !2423, !2424, !2428, !2440, !2455, !2461, !2467, !2468, !2472}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2351, file: !1988, line: 255, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!1973, !1986, !383, !188}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2351, file: !1988, line: 257, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!188, !1986, !1973}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2351, file: !1988, line: 258, baseType: !2362, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !1986, !1973}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2351, file: !1988, line: 259, baseType: !2366, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!188, !1973, !383}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2351, file: !1988, line: 260, baseType: !2370, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !1973, !383}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2351, file: !1988, line: 261, baseType: !2374, size: 64, offset: 320)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !1973}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2351, file: !1988, line: 262, baseType: !2374, size: 64, offset: 384)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2351, file: !1988, line: 263, baseType: !2379, size: 64, offset: 448)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!188, !1973, !452, !188}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2351, file: !1988, line: 265, baseType: !2383, size: 64, offset: 512)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!188, !1973, !216}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2351, file: !1988, line: 266, baseType: !2374, size: 64, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2351, file: !1988, line: 267, baseType: !2388, size: 64, offset: 640)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!188, !1973}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2351, file: !1988, line: 268, baseType: !2388, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2351, file: !1988, line: 269, baseType: !2393, size: 64, offset: 768)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!188, !1973, !7, !152}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2351, file: !1988, line: 271, baseType: !2397, size: 64, offset: 832)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!158, !1973, !7, !152}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2351, file: !1988, line: 273, baseType: !2401, size: 64, offset: 896)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !1973, !2346}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2351, file: !1988, line: 274, baseType: !2374, size: 64, offset: 960)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2351, file: !1988, line: 275, baseType: !2374, size: 64, offset: 1024)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2351, file: !1988, line: 276, baseType: !2374, size: 64, offset: 1088)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2351, file: !1988, line: 277, baseType: !2374, size: 64, offset: 1152)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2351, file: !1988, line: 278, baseType: !2374, size: 64, offset: 1216)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2351, file: !1988, line: 279, baseType: !2410, size: 64, offset: 1280)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!188, !1973, !188}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2351, file: !1988, line: 280, baseType: !2374, size: 64, offset: 1344)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2351, file: !1988, line: 281, baseType: !2374, size: 64, offset: 1408)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2351, file: !1988, line: 282, baseType: !2416, size: 64, offset: 1472)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !1973, !188}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2351, file: !1988, line: 283, baseType: !2420, size: 64, offset: 1536)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !1973, !155}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2351, file: !1988, line: 284, baseType: !2388, size: 64, offset: 1600)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2351, file: !1988, line: 285, baseType: !2425, size: 64, offset: 1664)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!188, !1973, !7, !7}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2351, file: !1988, line: 287, baseType: !2429, size: 64, offset: 1728)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!188, !1973, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !2434, line: 15, size: 64, elements: !2435)
!2434 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!2435 = !{!2436, !2437, !2438, !2439}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !2433, file: !2434, line: 16, baseType: !212, size: 16)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !2433, file: !2434, line: 17, baseType: !212, size: 16, offset: 16)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !2433, file: !2434, line: 18, baseType: !212, size: 16, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !2433, file: !2434, line: 19, baseType: !212, size: 16, offset: 48)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !2351, file: !1988, line: 288, baseType: !2441, size: 64, offset: 1792)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!188, !1973, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !2446, line: 10, size: 128, elements: !2447)
!2446 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!2447 = !{!2448, !2449, !2450, !2454}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !2445, file: !2446, line: 12, baseType: !211, size: 16)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !2445, file: !2446, line: 13, baseType: !211, size: 16, offset: 16)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !2445, file: !2446, line: 14, baseType: !2451, size: 80, offset: 32)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 80, elements: !2452)
!2452 = !{!2453}
!2453 = !DISubrange(count: 5)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !2445, file: !2446, line: 15, baseType: !211, size: 16, offset: 112)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2351, file: !1988, line: 289, baseType: !2456, size: 64, offset: 1856)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!188, !1973, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !1988, line: 251, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2351, file: !1988, line: 291, baseType: !2462, size: 64, offset: 1920)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!188, !1973, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !1988, line: 252, flags: DIFlagFwdDecl)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2351, file: !1988, line: 292, baseType: !2462, size: 64, offset: 1984)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2351, file: !1988, line: 293, baseType: !2469, size: 64, offset: 2048)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !1973, !740}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2351, file: !1988, line: 299, baseType: !784, size: 64, offset: 2112)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !1987, file: !1988, line: 333, baseType: !254, size: 128, offset: 1344)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1974, file: !1975, line: 290, baseType: !2349, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1974, file: !1975, line: 291, baseType: !188, size: 32, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !1974, file: !1975, line: 294, baseType: !2477, size: 384, offset: 320)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !2478, line: 133, size: 384, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !{!2480, !2481, !2482, !2483, !2484}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2477, file: !2478, line: 134, baseType: !756, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2477, file: !2478, line: 135, baseType: !851, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !2477, file: !2478, line: 136, baseType: !7, size: 32, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2477, file: !2478, line: 137, baseType: !254, size: 128, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2477, file: !2478, line: 138, baseType: !254, size: 128, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !1974, file: !1975, line: 295, baseType: !2486, size: 64, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !2478, line: 215, size: 128, elements: !2488)
!2488 = !{!2489, !2534}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2487, file: !2478, line: 216, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !2478, line: 175, size: 1216, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2504, !2508, !2512, !2513, !2514, !2518, !2519, !2523, !2524, !2528, !2532, !2533}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2491, file: !2478, line: 176, baseType: !188, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2491, file: !2478, line: 177, baseType: !308, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2491, file: !2478, line: 178, baseType: !188, size: 32, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2491, file: !2478, line: 179, baseType: !188, size: 32, offset: 160)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2491, file: !2478, line: 184, baseType: !2388, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2491, file: !2478, line: 185, baseType: !2374, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2491, file: !2478, line: 186, baseType: !2374, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2491, file: !2478, line: 187, baseType: !2501, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!339, !1973, !383, !2338, !353}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2491, file: !2478, line: 189, baseType: !2505, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!339, !1973, !383, !452, !353}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2491, file: !2478, line: 191, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!188, !1973, !383, !7, !152}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2491, file: !2478, line: 193, baseType: !2509, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2491, file: !2478, line: 195, baseType: !2401, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2491, file: !2478, line: 196, baseType: !2515, size: 64, offset: 704)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!2042, !1973, !383, !2044}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2491, file: !2478, line: 198, baseType: !2388, size: 64, offset: 768)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2491, file: !2478, line: 203, baseType: !2520, size: 64, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !1973, !452, !308, !188}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2491, file: !2478, line: 205, baseType: !2374, size: 64, offset: 896)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !2491, file: !2478, line: 206, baseType: !2525, size: 64, offset: 960)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !1973, !7}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !2491, file: !2478, line: 207, baseType: !2529, size: 64, offset: 1024)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!188, !1973, !452, !308, !188}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2491, file: !2478, line: 210, baseType: !659, size: 64, offset: 1088)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2491, file: !2478, line: 212, baseType: !188, size: 32, offset: 1152)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2487, file: !2478, line: 217, baseType: !1973, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !1974, file: !1975, line: 297, baseType: !752, size: 192, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !1974, file: !1975, line: 298, baseType: !752, size: 192, offset: 960)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !1974, file: !1975, line: 299, baseType: !752, size: 192, offset: 1152)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !1974, file: !1975, line: 300, baseType: !845, size: 256, offset: 1344)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !1974, file: !1975, line: 301, baseType: !752, size: 192, offset: 1600)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !1974, file: !1975, line: 302, baseType: !267, offset: 1792)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !1974, file: !1975, line: 303, baseType: !267, offset: 1792)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1974, file: !1975, line: 305, baseType: !2219, size: 352, offset: 1792)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !1974, file: !1975, line: 305, baseType: !2219, size: 352, offset: 2144)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !1974, file: !1975, line: 306, baseType: !2444, size: 64, offset: 2496)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1974, file: !1975, line: 307, baseType: !2546, size: 512, offset: 2560)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 512, elements: !313)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !1974, file: !1975, line: 308, baseType: !1667, size: 64, offset: 3072)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1974, file: !1975, line: 313, baseType: !1667, size: 64, offset: 3136)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1974, file: !1975, line: 314, baseType: !152, size: 64, offset: 3200)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1974, file: !1975, line: 315, baseType: !188, size: 32, offset: 3264)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !1974, file: !1975, line: 316, baseType: !2433, size: 64, offset: 3296)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !1974, file: !1975, line: 317, baseType: !152, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !1974, file: !1975, line: 318, baseType: !152, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1974, file: !1975, line: 319, baseType: !152, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !1974, file: !1975, line: 320, baseType: !188, size: 32, offset: 3456)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !1974, file: !1975, line: 321, baseType: !152, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !1974, file: !1975, line: 322, baseType: !152, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !1974, file: !1975, line: 323, baseType: !152, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !1974, file: !1975, line: 324, baseType: !7, size: 32, offset: 3584)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !1974, file: !1975, line: 325, baseType: !188, size: 32, offset: 3616)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1974, file: !1975, line: 327, baseType: !1973, size: 64, offset: 3648)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1974, file: !1975, line: 328, baseType: !998, size: 64, offset: 3712)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !1974, file: !1975, line: 329, baseType: !979, size: 128, offset: 3776)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !1974, file: !1975, line: 330, baseType: !979, size: 128, offset: 3904)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !1974, file: !1975, line: 331, baseType: !2271, size: 256, offset: 4032)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !1974, file: !1975, line: 332, baseType: !150, size: 64, offset: 4288)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1974, file: !1975, line: 333, baseType: !150, size: 64, offset: 4352)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !1974, file: !1975, line: 334, baseType: !267, offset: 4416)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !1974, file: !1975, line: 335, baseType: !254, size: 128, offset: 4416)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !1974, file: !1975, line: 339, baseType: !188, size: 32, offset: 4544)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1974, file: !1975, line: 340, baseType: !2338, size: 64, offset: 4608)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !1974, file: !1975, line: 341, baseType: !188, size: 32, offset: 4672)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !1974, file: !1975, line: 343, baseType: !2271, size: 256, offset: 4736)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1974, file: !1975, line: 344, baseType: !2246, size: 64, offset: 4992)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1920, file: !1921, line: 175, baseType: !2576, size: 32, offset: 3200)
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !419, line: 805, baseType: !2577)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 798, size: 32, elements: !2578)
!2578 = !{!2579, !2580}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2577, file: !419, line: 803, baseType: !418, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2577, file: !419, line: 804, baseType: !267, offset: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1920, file: !1921, line: 176, baseType: !448, size: 64, offset: 3264)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1920, file: !1921, line: 176, baseType: !448, size: 64, offset: 3328)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1920, file: !1921, line: 176, baseType: !448, size: 64, offset: 3392)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1920, file: !1921, line: 176, baseType: !448, size: 64, offset: 3456)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1920, file: !1921, line: 177, baseType: !448, size: 64, offset: 3520)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1920, file: !1921, line: 178, baseType: !448, size: 64, offset: 3584)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1920, file: !1921, line: 179, baseType: !1708, size: 128, offset: 3648)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1920, file: !1921, line: 180, baseType: !152, size: 64, offset: 3776)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1920, file: !1921, line: 180, baseType: !152, size: 64, offset: 3840)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1920, file: !1921, line: 180, baseType: !152, size: 64, offset: 3904)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1920, file: !1921, line: 180, baseType: !152, size: 64, offset: 3968)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1920, file: !1921, line: 181, baseType: !152, size: 64, offset: 4032)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1920, file: !1921, line: 181, baseType: !152, size: 64, offset: 4096)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1920, file: !1921, line: 181, baseType: !152, size: 64, offset: 4160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1920, file: !1921, line: 181, baseType: !152, size: 64, offset: 4224)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1920, file: !1921, line: 182, baseType: !152, size: 64, offset: 4288)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1920, file: !1921, line: 182, baseType: !152, size: 64, offset: 4352)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1920, file: !1921, line: 182, baseType: !152, size: 64, offset: 4416)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1920, file: !1921, line: 182, baseType: !152, size: 64, offset: 4480)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1920, file: !1921, line: 183, baseType: !152, size: 64, offset: 4544)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1920, file: !1921, line: 183, baseType: !152, size: 64, offset: 4608)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1920, file: !1921, line: 184, baseType: !2603, offset: 4672)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2604, line: 12, elements: !281)
!2604 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1920, file: !1921, line: 192, baseType: !450, size: 64, offset: 4672)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1920, file: !1921, line: 203, baseType: !2607, size: 2048, offset: 4736)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 2048, elements: !1900)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2609, line: 43, size: 128, elements: !2610)
!2609 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2608, file: !2609, line: 44, baseType: !355, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2608, file: !2609, line: 45, baseType: !355, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1920, file: !1921, line: 220, baseType: !516, size: 8, offset: 6784)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1920, file: !1921, line: 221, baseType: !1411, size: 16, offset: 6800)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1920, file: !1921, line: 222, baseType: !1411, size: 16, offset: 6816)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1920, file: !1921, line: 224, baseType: !1186, size: 64, offset: 6848)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1920, file: !1921, line: 227, baseType: !752, size: 192, offset: 6912)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1920, file: !1921, line: 233, baseType: !752, size: 192, offset: 7104)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1423, file: !1424, line: 970, baseType: !2620, size: 64, offset: 9280)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1921, line: 20, size: 16576, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2626}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2621, file: !1921, line: 21, baseType: !267)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2621, file: !1921, line: 22, baseType: !1048, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2621, file: !1921, line: 23, baseType: !979, size: 128, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2621, file: !1921, line: 24, baseType: !2627, size: 16384, offset: 192)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2628, size: 16384, elements: !313)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1931, line: 49, size: 256, elements: !2629)
!2629 = !{!2630}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2628, file: !1931, line: 50, baseType: !2631, size: 256)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1931, line: 35, size: 256, elements: !2632)
!2632 = !{!2633, !2640, !2641, !2647}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2631, file: !1931, line: 37, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2635, line: 19, baseType: !2636)
!2635 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2635, line: 18, baseType: !2638)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !188}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2631, file: !1931, line: 38, baseType: !152, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2631, file: !1931, line: 44, baseType: !2642, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2635, line: 22, baseType: !2643)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2635, line: 21, baseType: !2645)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{null}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2631, file: !1931, line: 46, baseType: !1935, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1423, file: !1424, line: 971, baseType: !1935, size: 64, offset: 9344)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1423, file: !1424, line: 972, baseType: !1935, size: 64, offset: 9408)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1423, file: !1424, line: 974, baseType: !1935, size: 64, offset: 9472)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1423, file: !1424, line: 975, baseType: !1930, size: 192, offset: 9536)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1423, file: !1424, line: 976, baseType: !152, size: 64, offset: 9728)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1423, file: !1424, line: 977, baseType: !353, size: 64, offset: 9792)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1423, file: !1424, line: 978, baseType: !7, size: 32, offset: 9856)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1423, file: !1424, line: 980, baseType: !399, size: 64, offset: 9920)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1423, file: !1424, line: 989, baseType: !2657, size: 128, offset: 9984)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2658, line: 35, size: 128, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2659 = !{!2660, !2661, !2662}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2657, file: !2658, line: 36, baseType: !188, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2657, file: !2658, line: 37, baseType: !825, size: 32, offset: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2657, file: !2658, line: 38, baseType: !2663, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2658, line: 23, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1423, file: !1424, line: 992, baseType: !448, size: 64, offset: 10112)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1423, file: !1424, line: 993, baseType: !448, size: 64, offset: 10176)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1423, file: !1424, line: 996, baseType: !267, offset: 10240)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1423, file: !1424, line: 999, baseType: !851, offset: 10240)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1423, file: !1424, line: 1001, baseType: !2670, size: 64, offset: 10240)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1424, line: 636, size: 64, elements: !2671)
!2671 = !{!2672}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2670, file: !1424, line: 637, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1423, file: !1424, line: 1005, baseType: !830, size: 128, offset: 10304)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1423, file: !1424, line: 1007, baseType: !1422, size: 64, offset: 10432)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1423, file: !1424, line: 1009, baseType: !2677, size: 64, offset: 10496)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1424, line: 1009, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1423, file: !1424, line: 1043, baseType: !150, size: 64, offset: 10560)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1423, file: !1424, line: 1046, baseType: !2681, size: 64, offset: 10624)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1424, line: 41, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1423, file: !1424, line: 1050, baseType: !2684, size: 64, offset: 10688)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1424, line: 42, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1423, file: !1424, line: 1054, baseType: !2687, size: 64, offset: 10752)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1424, line: 55, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1423, file: !1424, line: 1056, baseType: !2690, size: 64, offset: 10816)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1424, line: 40, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1423, file: !1424, line: 1058, baseType: !2693, size: 64, offset: 10880)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2695, line: 99, size: 704, elements: !2696)
!2695 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2696 = !{!2697, !2698, !2699, !2700, !2701, !2702, !2703, !2722, !2723}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2694, file: !2695, line: 100, baseType: !756, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2694, file: !2695, line: 101, baseType: !825, size: 32, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2694, file: !2695, line: 102, baseType: !825, size: 32, offset: 96)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2694, file: !2695, line: 105, baseType: !267, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2694, file: !2695, line: 107, baseType: !212, size: 16, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2694, file: !2695, line: 109, baseType: !817, size: 128, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2694, file: !2695, line: 110, baseType: !2704, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2695, line: 73, size: 448, elements: !2706)
!2706 = !{!2707, !2710, !2711, !2716, !2721}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2705, file: !2695, line: 74, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2695, line: 74, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2705, file: !2695, line: 75, baseType: !2693, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, scope: !2705, file: !2695, line: 83, baseType: !2712, size: 128, offset: 128)
!2712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2705, file: !2695, line: 83, size: 128, elements: !2713)
!2713 = !{!2714, !2715}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2712, file: !2695, line: 84, baseType: !254, size: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2712, file: !2695, line: 85, baseType: !1146, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, scope: !2705, file: !2695, line: 87, baseType: !2717, size: 128, offset: 256)
!2717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2705, file: !2695, line: 87, size: 128, elements: !2718)
!2718 = !{!2719, !2720}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2717, file: !2695, line: 88, baseType: !668, size: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2717, file: !2695, line: 89, baseType: !396, size: 128, align: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2705, file: !2695, line: 92, baseType: !7, size: 32, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2694, file: !2695, line: 111, baseType: !664, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2694, file: !2695, line: 113, baseType: !2271, size: 256, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1423, file: !1424, line: 1061, baseType: !2725, size: 64, offset: 10944)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1424, line: 43, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1423, file: !1424, line: 1064, baseType: !152, size: 64, offset: 11008)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1423, file: !1424, line: 1065, baseType: !2729, size: 64, offset: 11072)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1931, line: 14, baseType: !2731)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1931, line: 12, size: 384, elements: !2732)
!2732 = !{!2733}
!2733 = !DIDerivedType(tag: DW_TAG_member, scope: !2731, file: !1931, line: 13, baseType: !2734, size: 384)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2731, file: !1931, line: 13, size: 384, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2734, file: !1931, line: 13, baseType: !188, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2734, file: !1931, line: 13, baseType: !188, size: 32, offset: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2734, file: !1931, line: 13, baseType: !188, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2734, file: !1931, line: 13, baseType: !2740, size: 256, offset: 128)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2741, line: 32, size: 256, elements: !2742)
!2741 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2742 = !{!2743, !2748, !2761, !2767, !2776, !2796, !2801}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2740, file: !2741, line: 37, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2741, line: 34, size: 64, elements: !2745)
!2745 = !{!2746, !2747}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2744, file: !2741, line: 35, baseType: !1656, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2744, file: !2741, line: 36, baseType: !467, size: 32, offset: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2740, file: !2741, line: 45, baseType: !2749, size: 192)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2741, line: 40, size: 192, elements: !2750)
!2750 = !{!2751, !2753, !2754, !2760}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2749, file: !2741, line: 41, baseType: !2752, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !341, line: 95, baseType: !188)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2749, file: !2741, line: 42, baseType: !188, size: 32, offset: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2749, file: !2741, line: 43, baseType: !2755, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2741, line: 11, baseType: !2756)
!2756 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2741, line: 8, size: 64, elements: !2757)
!2757 = !{!2758, !2759}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2756, file: !2741, line: 9, baseType: !188, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2756, file: !2741, line: 10, baseType: !150, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2749, file: !2741, line: 44, baseType: !188, size: 32, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2740, file: !2741, line: 52, baseType: !2762, size: 128)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2741, line: 48, size: 128, elements: !2763)
!2763 = !{!2764, !2765, !2766}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2762, file: !2741, line: 49, baseType: !1656, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2762, file: !2741, line: 50, baseType: !467, size: 32, offset: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2762, file: !2741, line: 51, baseType: !2755, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2740, file: !2741, line: 61, baseType: !2768, size: 256)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2741, line: 55, size: 256, elements: !2769)
!2769 = !{!2770, !2771, !2772, !2773, !2775}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2768, file: !2741, line: 56, baseType: !1656, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2768, file: !2741, line: 57, baseType: !467, size: 32, offset: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2768, file: !2741, line: 58, baseType: !188, size: 32, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2768, file: !2741, line: 59, baseType: !2774, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !341, line: 94, baseType: !342)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2768, file: !2741, line: 60, baseType: !2774, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2740, file: !2741, line: 95, baseType: !2777, size: 256)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2741, line: 64, size: 256, elements: !2778)
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2777, file: !2741, line: 65, baseType: !150, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !2777, file: !2741, line: 77, baseType: !2781, size: 192, offset: 64)
!2781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2777, file: !2741, line: 77, size: 192, elements: !2782)
!2782 = !{!2783, !2784, !2791}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2781, file: !2741, line: 82, baseType: !1411, size: 16)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2781, file: !2741, line: 88, baseType: !2785, size: 192)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2781, file: !2741, line: 84, size: 192, elements: !2786)
!2786 = !{!2787, !2789, !2790}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2785, file: !2741, line: 85, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !225)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2785, file: !2741, line: 86, baseType: !150, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2785, file: !2741, line: 87, baseType: !150, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2781, file: !2741, line: 93, baseType: !2792, size: 96)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2781, file: !2741, line: 90, size: 96, elements: !2793)
!2793 = !{!2794, !2795}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2792, file: !2741, line: 91, baseType: !2788, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2792, file: !2741, line: 92, baseType: !201, size: 32, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2740, file: !2741, line: 101, baseType: !2797, size: 128)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2741, line: 98, size: 128, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2797, file: !2741, line: 99, baseType: !158, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2797, file: !2741, line: 100, baseType: !188, size: 32, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2740, file: !2741, line: 108, baseType: !2802, size: 128)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2741, line: 104, size: 128, elements: !2803)
!2803 = !{!2804, !2805, !2806}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2802, file: !2741, line: 105, baseType: !150, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2802, file: !2741, line: 106, baseType: !188, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2802, file: !2741, line: 107, baseType: !7, size: 32, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1423, file: !1424, line: 1067, baseType: !2603, offset: 11136)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1423, file: !1424, line: 1099, baseType: !2809, size: 64, offset: 11136)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1424, line: 56, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1423, file: !1424, line: 1103, baseType: !254, size: 128, offset: 11200)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1423, file: !1424, line: 1104, baseType: !2813, size: 64, offset: 11328)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1424, line: 46, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1423, file: !1424, line: 1105, baseType: !752, size: 192, offset: 11392)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1423, file: !1424, line: 1106, baseType: !7, size: 32, offset: 11584)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1423, file: !1424, line: 1109, baseType: !2818, size: 128, offset: 11648)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2819, size: 128, elements: !1759)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1424, line: 51, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1423, file: !1424, line: 1110, baseType: !752, size: 192, offset: 11776)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1423, file: !1424, line: 1111, baseType: !254, size: 128, offset: 11968)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1423, file: !1424, line: 1173, baseType: !2824, size: 64, offset: 12096)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2826, line: 62, size: 256, align: 256, elements: !2827)
!2826 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2827 = !{!2828, !2829, !2830, !2835}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2825, file: !2826, line: 75, baseType: !201, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2825, file: !2826, line: 90, baseType: !201, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2825, file: !2826, line: 124, baseType: !2831, size: 64, offset: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2825, file: !2826, line: 109, size: 64, elements: !2832)
!2832 = !{!2833, !2834}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2831, file: !2826, line: 110, baseType: !449, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2831, file: !2826, line: 112, baseType: !449, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !2826, line: 144, baseType: !201, size: 32, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1423, file: !1424, line: 1174, baseType: !199, size: 32, offset: 12160)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1423, file: !1424, line: 1179, baseType: !152, size: 64, offset: 12224)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1423, file: !1424, line: 1182, baseType: !2839, size: 128, offset: 12288)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1363, line: 76, size: 128, elements: !2840)
!2840 = !{!2841, !2846, !2847}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2839, file: !1363, line: 85, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2843, line: 7, size: 64, elements: !2844)
!2843 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2842, file: !2843, line: 12, baseType: !1563, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2839, file: !1363, line: 88, baseType: !516, size: 8, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2839, file: !1363, line: 95, baseType: !516, size: 8, offset: 72)
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 1184, baseType: !2849, size: 128, offset: 12416)
!2849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 1184, size: 128, elements: !2850)
!2850 = !{!2851, !2852}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2849, file: !1424, line: 1185, baseType: !1048, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2849, file: !1424, line: 1186, baseType: !396, size: 128, align: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1423, file: !1424, line: 1190, baseType: !973, size: 64, offset: 12544)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1423, file: !1424, line: 1192, baseType: !2855, size: 128, offset: 12608)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1363, line: 64, size: 128, elements: !2856)
!2856 = !{!2857, !2858, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2855, file: !1363, line: 65, baseType: !799, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2855, file: !1363, line: 67, baseType: !201, size: 32, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2855, file: !1363, line: 68, baseType: !201, size: 32, offset: 96)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1423, file: !1424, line: 1206, baseType: !188, size: 32, offset: 12736)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1423, file: !1424, line: 1207, baseType: !188, size: 32, offset: 12768)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1423, file: !1424, line: 1209, baseType: !152, size: 64, offset: 12800)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1423, file: !1424, line: 1219, baseType: !448, size: 64, offset: 12864)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1423, file: !1424, line: 1220, baseType: !448, size: 64, offset: 12928)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1423, file: !1424, line: 1317, baseType: !188, size: 32, offset: 12992)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1423, file: !1424, line: 1319, baseType: !1422, size: 64, offset: 13056)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1423, file: !1424, line: 1322, baseType: !2868, size: 64, offset: 13120)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2870, line: 56, size: 512, elements: !2871)
!2870 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877, !2878, !2880}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2869, file: !2870, line: 57, baseType: !2868, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2869, file: !2870, line: 58, baseType: !150, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2869, file: !2870, line: 59, baseType: !152, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2869, file: !2870, line: 60, baseType: !152, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2869, file: !2870, line: 61, baseType: !891, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2869, file: !2870, line: 62, baseType: !7, size: 32, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2869, file: !2870, line: 63, baseType: !2879, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !149, line: 153, baseType: !448)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2869, file: !2870, line: 64, baseType: !2881, size: 64, offset: 448)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1423, file: !1424, line: 1326, baseType: !1048, size: 32, offset: 13184)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1423, file: !1424, line: 1342, baseType: !150, size: 64, offset: 13248)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1423, file: !1424, line: 1343, baseType: !449, size: 64, offset: 13312)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1423, file: !1424, line: 1344, baseType: !448, size: 64, offset: 13376)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1423, file: !1424, line: 1345, baseType: !449, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1423, file: !1424, line: 1346, baseType: !449, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1423, file: !1424, line: 1347, baseType: !449, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1423, file: !1424, line: 1348, baseType: !396, size: 128, align: 64, offset: 13504)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1423, file: !1424, line: 1358, baseType: !2892, size: 34816, offset: 13824)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2893, line: 485, size: 34816, elements: !2894)
!2893 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2894 = !{!2895, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2924, !2925, !2926, !2927, !2928, !2929, !2932, !2933, !2934}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2892, file: !2893, line: 487, baseType: !2896, size: 192)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, size: 192, elements: !309)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2898, line: 16, size: 64, elements: !2899)
!2898 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2897, file: !2898, line: 17, baseType: !210, size: 16)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2897, file: !2898, line: 18, baseType: !210, size: 16, offset: 16)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2897, file: !2898, line: 19, baseType: !210, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2897, file: !2898, line: 19, baseType: !210, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2897, file: !2898, line: 19, baseType: !210, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2897, file: !2898, line: 19, baseType: !210, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2897, file: !2898, line: 19, baseType: !210, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2897, file: !2898, line: 20, baseType: !210, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2897, file: !2898, line: 20, baseType: !210, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2897, file: !2898, line: 20, baseType: !210, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2897, file: !2898, line: 20, baseType: !210, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2897, file: !2898, line: 20, baseType: !210, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2897, file: !2898, line: 20, baseType: !210, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2892, file: !2893, line: 491, baseType: !152, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2892, file: !2893, line: 495, baseType: !212, size: 16, offset: 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2892, file: !2893, line: 496, baseType: !212, size: 16, offset: 272)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2892, file: !2893, line: 497, baseType: !212, size: 16, offset: 288)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2892, file: !2893, line: 498, baseType: !212, size: 16, offset: 304)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2892, file: !2893, line: 502, baseType: !152, size: 64, offset: 320)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2892, file: !2893, line: 503, baseType: !152, size: 64, offset: 384)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2892, file: !2893, line: 514, baseType: !2921, size: 256, offset: 448)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2922, size: 256, elements: !1367)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2893, line: 483, flags: DIFlagFwdDecl)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2892, file: !2893, line: 516, baseType: !152, size: 64, offset: 704)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2892, file: !2893, line: 518, baseType: !152, size: 64, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2892, file: !2893, line: 520, baseType: !152, size: 64, offset: 832)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2892, file: !2893, line: 521, baseType: !152, size: 64, offset: 896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2892, file: !2893, line: 522, baseType: !152, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2892, file: !2893, line: 528, baseType: !2930, size: 64, offset: 1024)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2893, line: 10, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2892, file: !2893, line: 535, baseType: !152, size: 64, offset: 1088)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2892, file: !2893, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2892, file: !2893, line: 540, baseType: !2935, size: 33280, offset: 1536)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2936, line: 317, size: 33280, elements: !2937)
!2936 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2937 = !{!2938, !2939, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2935, file: !2936, line: 330, baseType: !7, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2935, file: !2936, line: 337, baseType: !152, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2935, file: !2936, line: 348, baseType: !2941, size: 32768, offset: 512)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2936, line: 304, size: 32768, elements: !2942)
!2942 = !{!2943, !2958, !2995, !3045, !3058}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2941, file: !2936, line: 305, baseType: !2944, size: 896)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2936, line: 12, size: 896, elements: !2945)
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2957}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2944, file: !2936, line: 13, baseType: !199, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2944, file: !2936, line: 14, baseType: !199, size: 32, offset: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2944, file: !2936, line: 15, baseType: !199, size: 32, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2944, file: !2936, line: 16, baseType: !199, size: 32, offset: 96)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2944, file: !2936, line: 17, baseType: !199, size: 32, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2944, file: !2936, line: 18, baseType: !199, size: 32, offset: 160)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2944, file: !2936, line: 19, baseType: !199, size: 32, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2944, file: !2936, line: 22, baseType: !2954, size: 640, offset: 224)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 640, elements: !2955)
!2955 = !{!2956}
!2956 = !DISubrange(count: 20)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2944, file: !2936, line: 25, baseType: !199, size: 32, offset: 864)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2941, file: !2936, line: 306, baseType: !2959, size: 4096, align: 128)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2936, line: 34, size: 4096, align: 128, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964, !2965, !2980, !2981, !2982, !2986, !2988, !2990}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2959, file: !2936, line: 35, baseType: !210, size: 16)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2959, file: !2936, line: 36, baseType: !210, size: 16, offset: 16)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2959, file: !2936, line: 37, baseType: !210, size: 16, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2959, file: !2936, line: 38, baseType: !210, size: 16, offset: 48)
!2965 = !DIDerivedType(tag: DW_TAG_member, scope: !2959, file: !2936, line: 39, baseType: !2966, size: 128, offset: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2959, file: !2936, line: 39, size: 128, elements: !2967)
!2967 = !{!2968, !2973}
!2968 = !DIDerivedType(tag: DW_TAG_member, scope: !2966, file: !2936, line: 40, baseType: !2969, size: 128)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2936, line: 40, size: 128, elements: !2970)
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2969, file: !2936, line: 41, baseType: !448, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2969, file: !2936, line: 42, baseType: !448, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, scope: !2966, file: !2936, line: 44, baseType: !2974, size: 128)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2936, line: 44, size: 128, elements: !2975)
!2975 = !{!2976, !2977, !2978, !2979}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2974, file: !2936, line: 45, baseType: !199, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2974, file: !2936, line: 46, baseType: !199, size: 32, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2974, file: !2936, line: 47, baseType: !199, size: 32, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2974, file: !2936, line: 48, baseType: !199, size: 32, offset: 96)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2959, file: !2936, line: 51, baseType: !199, size: 32, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2959, file: !2936, line: 52, baseType: !199, size: 32, offset: 224)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2959, file: !2936, line: 55, baseType: !2983, size: 1024, offset: 256)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 1024, elements: !2984)
!2984 = !{!2985}
!2985 = !DISubrange(count: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2959, file: !2936, line: 58, baseType: !2987, size: 2048, offset: 1280)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 2048, elements: !313)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2959, file: !2936, line: 60, baseType: !2989, size: 384, offset: 3328)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 384, elements: !230)
!2990 = !DIDerivedType(tag: DW_TAG_member, scope: !2959, file: !2936, line: 62, baseType: !2991, size: 384, offset: 3712)
!2991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2959, file: !2936, line: 62, size: 384, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2991, file: !2936, line: 63, baseType: !2989, size: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2991, file: !2936, line: 64, baseType: !2989, size: 384)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2941, file: !2936, line: 307, baseType: !2996, size: 1088)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2936, line: 79, size: 1088, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3044}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2996, file: !2936, line: 80, baseType: !199, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2996, file: !2936, line: 81, baseType: !199, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2996, file: !2936, line: 82, baseType: !199, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2996, file: !2936, line: 83, baseType: !199, size: 32, offset: 96)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2996, file: !2936, line: 84, baseType: !199, size: 32, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2996, file: !2936, line: 85, baseType: !199, size: 32, offset: 160)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2996, file: !2936, line: 86, baseType: !199, size: 32, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2996, file: !2936, line: 88, baseType: !2954, size: 640, offset: 224)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2996, file: !2936, line: 89, baseType: !214, size: 8, offset: 864)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2996, file: !2936, line: 90, baseType: !214, size: 8, offset: 872)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2996, file: !2936, line: 91, baseType: !214, size: 8, offset: 880)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2996, file: !2936, line: 92, baseType: !214, size: 8, offset: 888)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2996, file: !2936, line: 93, baseType: !214, size: 8, offset: 896)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2996, file: !2936, line: 94, baseType: !214, size: 8, offset: 904)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2996, file: !2936, line: 95, baseType: !3013, size: 64, offset: 960)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3015, line: 11, size: 128, elements: !3016)
!3015 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3016 = !{!3017, !3018}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3014, file: !3015, line: 12, baseType: !158, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3014, file: !3015, line: 13, baseType: !3019, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3021, line: 56, size: 1344, elements: !3022)
!3021 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3020, file: !3021, line: 61, baseType: !152, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3020, file: !3021, line: 62, baseType: !152, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3020, file: !3021, line: 63, baseType: !152, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3020, file: !3021, line: 64, baseType: !152, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3020, file: !3021, line: 65, baseType: !152, size: 64, offset: 256)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3020, file: !3021, line: 66, baseType: !152, size: 64, offset: 320)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3020, file: !3021, line: 68, baseType: !152, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3020, file: !3021, line: 69, baseType: !152, size: 64, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3020, file: !3021, line: 70, baseType: !152, size: 64, offset: 512)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3020, file: !3021, line: 71, baseType: !152, size: 64, offset: 576)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3020, file: !3021, line: 72, baseType: !152, size: 64, offset: 640)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3020, file: !3021, line: 73, baseType: !152, size: 64, offset: 704)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3020, file: !3021, line: 74, baseType: !152, size: 64, offset: 768)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3020, file: !3021, line: 75, baseType: !152, size: 64, offset: 832)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3020, file: !3021, line: 76, baseType: !152, size: 64, offset: 896)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3020, file: !3021, line: 81, baseType: !152, size: 64, offset: 960)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3020, file: !3021, line: 83, baseType: !152, size: 64, offset: 1024)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3020, file: !3021, line: 84, baseType: !152, size: 64, offset: 1088)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3020, file: !3021, line: 85, baseType: !152, size: 64, offset: 1152)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3020, file: !3021, line: 86, baseType: !152, size: 64, offset: 1216)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3020, file: !3021, line: 87, baseType: !152, size: 64, offset: 1280)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2996, file: !2936, line: 96, baseType: !199, size: 32, offset: 1024)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2941, file: !2936, line: 308, baseType: !3046, size: 4608, align: 512)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2936, line: 289, size: 4608, align: 512, elements: !3047)
!3047 = !{!3048, !3049, !3056}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3046, file: !2936, line: 290, baseType: !2959, size: 4096, align: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3046, file: !2936, line: 291, baseType: !3050, size: 512, offset: 4096)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2936, line: 268, size: 512, elements: !3051)
!3051 = !{!3052, !3053, !3054}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3050, file: !2936, line: 269, baseType: !448, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3050, file: !2936, line: 270, baseType: !448, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3050, file: !2936, line: 271, baseType: !3055, size: 384, offset: 128)
!3055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 384, elements: !1815)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3046, file: !2936, line: 292, baseType: !3057, offset: 4608)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, elements: !1888)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2941, file: !2936, line: 309, baseType: !3059, size: 32768)
!3059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 32768, elements: !3060)
!3060 = !{!3061}
!3061 = !DISubrange(count: 4096)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1419, file: !801, line: 378, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1415, file: !801, line: 384, baseType: !1692, size: 192, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1190, file: !801, line: 500, baseType: !267, offset: 6656)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1190, file: !801, line: 501, baseType: !3067, size: 64, offset: 6656)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !801, line: 387, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1190, file: !801, line: 516, baseType: !1878, size: 64, offset: 6720)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1190, file: !801, line: 519, baseType: !383, size: 64, offset: 6784)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1190, file: !801, line: 521, baseType: !3072, size: 64, offset: 6848)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !801, line: 521, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1190, file: !801, line: 545, baseType: !825, size: 32, offset: 6912)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1190, file: !801, line: 548, baseType: !516, size: 8, offset: 6944)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1190, file: !801, line: 550, baseType: !3077, offset: 6952)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3078, line: 142, elements: !281)
!3078 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1190, file: !801, line: 554, baseType: !2271, size: 256, offset: 6976)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1190, file: !801, line: 557, baseType: !199, size: 32, offset: 7232)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1187, file: !801, line: 565, baseType: !2267, offset: 7296)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1183, file: !801, line: 151, baseType: !825, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1175, file: !801, line: 156, baseType: !267, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !801, line: 159, baseType: !3085, size: 128)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !801, line: 159, size: 128, elements: !3086)
!3086 = !{!3087, !3151}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3085, file: !801, line: 161, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !3090)
!3090 = !{!3091, !3101, !3122, !3123, !3124, !3125, !3126, !3138, !3139, !3140}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3089, file: !31, line: 111, baseType: !3092, size: 384)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !3093)
!3093 = !{!3094, !3096, !3097, !3098, !3099, !3100}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3092, file: !31, line: 20, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3092, file: !31, line: 21, baseType: !3095, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3092, file: !31, line: 22, baseType: !3095, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3092, file: !31, line: 23, baseType: !152, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3092, file: !31, line: 24, baseType: !152, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3092, file: !31, line: 25, baseType: !152, size: 64, offset: 320)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3089, file: !31, line: 112, baseType: !3102, size: 64, offset: 384)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3104, line: 105, size: 128, elements: !3105)
!3104 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3103, file: !3104, line: 110, baseType: !152, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3103, file: !3104, line: 118, baseType: !3108, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3104, line: 95, size: 448, elements: !3110)
!3110 = !{!3111, !3112, !3117, !3118, !3119, !3120, !3121}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3109, file: !3104, line: 96, baseType: !756, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3109, file: !3104, line: 97, baseType: !3113, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3104, line: 60, baseType: !3115)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !3102}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3109, file: !3104, line: 98, baseType: !3113, size: 64, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3109, file: !3104, line: 99, baseType: !516, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3109, file: !3104, line: 100, baseType: !516, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3109, file: !3104, line: 101, baseType: !396, size: 128, align: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3109, file: !3104, line: 102, baseType: !3102, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3089, file: !31, line: 113, baseType: !3103, size: 128, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3089, file: !31, line: 114, baseType: !1692, size: 192, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3089, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3089, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3089, file: !31, line: 117, baseType: !3127, size: 64, offset: 832)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3129)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !3130)
!3130 = !{!3131, !3132, !3136, !3137}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3129, file: !31, line: 73, baseType: !911, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3129, file: !31, line: 78, baseType: !3133, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{null, !3088}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3129, file: !31, line: 83, baseType: !3133, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3129, file: !31, line: 89, baseType: !1239, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3089, file: !31, line: 118, baseType: !150, size: 64, offset: 896)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3089, file: !31, line: 119, baseType: !188, size: 32, offset: 960)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !31, line: 120, baseType: !3141, size: 128, offset: 1024)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3089, file: !31, line: 120, size: 128, elements: !3142)
!3142 = !{!3143, !3149}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3141, file: !31, line: 121, baseType: !3144, size: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3145, line: 6, size: 128, elements: !3146)
!3145 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3146 = !{!3147, !3148}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3144, file: !3145, line: 7, baseType: !448, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3144, file: !3145, line: 8, baseType: !448, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3141, file: !31, line: 122, baseType: !3150)
!3150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3144, elements: !1888)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3085, file: !801, line: 162, baseType: !150, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !805, file: !801, line: 176, baseType: !396, size: 128, align: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 179, baseType: !3154, size: 32, offset: 384)
!3154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 179, size: 32, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3154, file: !801, line: 184, baseType: !825, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3154, file: !801, line: 192, baseType: !7, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3154, file: !801, line: 194, baseType: !7, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3154, file: !801, line: 195, baseType: !188, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !800, file: !801, line: 199, baseType: !825, size: 32, offset: 416)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !686, file: !44, line: 1964, baseType: !3162, size: 64, offset: 1344)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!158, !625, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3167, line: 12, size: 256, elements: !3168)
!3167 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3168 = !{!3169, !3170, !3171, !3172, !3173}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3166, file: !3167, line: 13, baseType: !148, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3166, file: !3167, line: 16, baseType: !188, size: 32, offset: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3166, file: !3167, line: 23, baseType: !152, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3166, file: !3167, line: 30, baseType: !152, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3166, file: !3167, line: 33, baseType: !3174, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !801, line: 27, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !686, file: !44, line: 1966, baseType: !3162, size: 64, offset: 1408)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !626, file: !44, line: 1424, baseType: !3178, size: 64, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3180)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !3181)
!3181 = !{!3182, !3228, !3232, !3236, !3237, !3238, !3239, !3240, !3245, !3250, !3254}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3180, file: !38, line: 323, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!188, !3186}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3213, !3214, !3215}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3187, file: !38, line: 295, baseType: !668, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3187, file: !38, line: 296, baseType: !254, size: 128, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3187, file: !38, line: 297, baseType: !254, size: 128, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3187, file: !38, line: 298, baseType: !254, size: 128, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3187, file: !38, line: 299, baseType: !752, size: 192, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3187, file: !38, line: 300, baseType: !267, offset: 704)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3187, file: !38, line: 301, baseType: !825, size: 32, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3187, file: !38, line: 302, baseType: !625, size: 64, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3187, file: !38, line: 303, baseType: !3198, size: 64, offset: 832)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !3199)
!3199 = !{!3200, !3212}
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !38, line: 69, baseType: !3201, size: 32)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3198, file: !38, line: 69, size: 32, elements: !3202)
!3202 = !{!3203, !3204, !3205}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3201, file: !38, line: 70, baseType: !461, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3201, file: !38, line: 71, baseType: !469, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3201, file: !38, line: 72, baseType: !3206, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3207, line: 24, baseType: !3208)
!3207 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3207, line: 22, size: 32, elements: !3209)
!3209 = !{!3210}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3208, file: !3207, line: 23, baseType: !3211, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3207, line: 20, baseType: !467)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3198, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3187, file: !38, line: 304, baseType: !557, size: 64, offset: 896)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3187, file: !38, line: 305, baseType: !152, size: 64, offset: 960)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3187, file: !38, line: 306, baseType: !3216, size: 576, offset: 1024)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !3217)
!3217 = !{!3218, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3216, file: !38, line: 206, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !559)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3216, file: !38, line: 207, baseType: !3219, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3216, file: !38, line: 208, baseType: !3219, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3216, file: !38, line: 209, baseType: !3219, size: 64, offset: 192)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3216, file: !38, line: 210, baseType: !3219, size: 64, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3216, file: !38, line: 211, baseType: !3219, size: 64, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3216, file: !38, line: 212, baseType: !3219, size: 64, offset: 384)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3216, file: !38, line: 213, baseType: !565, size: 64, offset: 448)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3216, file: !38, line: 214, baseType: !565, size: 64, offset: 512)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3180, file: !38, line: 324, baseType: !3229, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!3186, !625, !188}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3180, file: !38, line: 325, baseType: !3233, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !3186}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3180, file: !38, line: 326, baseType: !3183, size: 64, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3180, file: !38, line: 327, baseType: !3183, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3180, file: !38, line: 328, baseType: !3183, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3180, file: !38, line: 329, baseType: !714, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3180, file: !38, line: 332, baseType: !3241, size: 64, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!3244, !455}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3180, file: !38, line: 333, baseType: !3246, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!188, !455, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3180, file: !38, line: 335, baseType: !3251, size: 64, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!188, !455, !3244}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3180, file: !38, line: 337, baseType: !3255, size: 64, offset: 640)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!188, !625, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !626, file: !44, line: 1425, baseType: !3260, size: 64, offset: 512)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !3263)
!3263 = !{!3264, !3268, !3269, !3273, !3274, !3275, !3290, !3313, !3317, !3318, !3341}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3262, file: !38, line: 429, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!188, !625, !188, !188, !575}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3262, file: !38, line: 430, baseType: !714, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3262, file: !38, line: 431, baseType: !3270, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!188, !625, !7}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3262, file: !38, line: 432, baseType: !3270, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3262, file: !38, line: 433, baseType: !714, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3262, file: !38, line: 434, baseType: !3276, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!188, !625, !188, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3280, file: !38, line: 416, baseType: !188, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3280, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3280, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3280, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3280, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3280, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3280, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3280, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3262, file: !38, line: 435, baseType: !3291, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!188, !625, !3198, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3295, file: !38, line: 344, baseType: !188, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3295, file: !38, line: 345, baseType: !448, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3295, file: !38, line: 346, baseType: !448, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3295, file: !38, line: 347, baseType: !448, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3295, file: !38, line: 348, baseType: !448, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3295, file: !38, line: 349, baseType: !448, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3295, file: !38, line: 350, baseType: !448, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3295, file: !38, line: 351, baseType: !762, size: 64, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3295, file: !38, line: 353, baseType: !762, size: 64, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3295, file: !38, line: 354, baseType: !188, size: 32, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3295, file: !38, line: 355, baseType: !188, size: 32, offset: 608)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3295, file: !38, line: 356, baseType: !448, size: 64, offset: 640)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3295, file: !38, line: 357, baseType: !448, size: 64, offset: 704)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3295, file: !38, line: 358, baseType: !448, size: 64, offset: 768)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3295, file: !38, line: 359, baseType: !762, size: 64, offset: 832)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3295, file: !38, line: 360, baseType: !188, size: 32, offset: 896)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3262, file: !38, line: 436, baseType: !3314, size: 64, offset: 448)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!188, !625, !3258, !3294}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3262, file: !38, line: 438, baseType: !3291, size: 64, offset: 512)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3262, file: !38, line: 439, baseType: !3319, size: 64, offset: 576)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!188, !625, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !3324)
!3324 = !{!3325, !3326}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3323, file: !38, line: 410, baseType: !7, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3323, file: !38, line: 411, baseType: !3327, size: 1344, offset: 64)
!3327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3328, size: 1344, elements: !309)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3340}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3328, file: !38, line: 396, baseType: !7, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3328, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3328, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3328, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3328, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3328, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3328, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3328, file: !38, line: 404, baseType: !450, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3328, file: !38, line: 405, baseType: !3339, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !149, line: 126, baseType: !448)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3328, file: !38, line: 406, baseType: !3339, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3262, file: !38, line: 440, baseType: !3270, size: 64, offset: 640)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !626, file: !44, line: 1426, baseType: !3343, size: 64, offset: 576)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3345)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !626, file: !44, line: 1427, baseType: !152, size: 64, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !626, file: !44, line: 1428, baseType: !152, size: 64, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !626, file: !44, line: 1429, baseType: !152, size: 64, offset: 768)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !626, file: !44, line: 1430, baseType: !413, size: 64, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !626, file: !44, line: 1431, baseType: !845, size: 256, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !626, file: !44, line: 1432, baseType: !188, size: 32, offset: 1152)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !626, file: !44, line: 1433, baseType: !825, size: 32, offset: 1184)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !626, file: !44, line: 1437, baseType: !3354, size: 64, offset: 1216)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !626, file: !44, line: 1449, baseType: !3359, size: 64, offset: 1280)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !429, line: 34, size: 64, elements: !3360)
!3360 = !{!3361}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3359, file: !429, line: 35, baseType: !432, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !626, file: !44, line: 1450, baseType: !254, size: 128, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !626, file: !44, line: 1451, baseType: !3364, size: 64, offset: 1472)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !626, file: !44, line: 1452, baseType: !2690, size: 64, offset: 1536)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !626, file: !44, line: 1453, baseType: !3368, size: 64, offset: 1600)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !626, file: !44, line: 1454, baseType: !668, size: 128, offset: 1664)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !626, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !626, file: !44, line: 1456, baseType: !3373, size: 2432, offset: 1856)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3379, !3411}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3373, file: !38, line: 519, baseType: !7, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3373, file: !38, line: 520, baseType: !845, size: 256, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3373, file: !38, line: 521, baseType: !3378, size: 192, offset: 320)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 192, elements: !309)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3373, file: !38, line: 522, baseType: !3380, size: 1728, offset: 512)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3381, size: 1728, elements: !309)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !3382)
!3382 = !{!3383, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3381, file: !38, line: 223, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !3386)
!3386 = !{!3387, !3388, !3401, !3402}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3385, file: !38, line: 444, baseType: !188, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3385, file: !38, line: 445, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3391, file: !38, line: 311, baseType: !714, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3391, file: !38, line: 312, baseType: !714, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3391, file: !38, line: 313, baseType: !714, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3391, file: !38, line: 314, baseType: !714, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3391, file: !38, line: 315, baseType: !3183, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3391, file: !38, line: 316, baseType: !3183, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3391, file: !38, line: 317, baseType: !3183, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3391, file: !38, line: 318, baseType: !3255, size: 64, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3385, file: !38, line: 446, baseType: !659, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3385, file: !38, line: 447, baseType: !3384, size: 64, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3381, file: !38, line: 224, baseType: !188, size: 32, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3381, file: !38, line: 226, baseType: !254, size: 128, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3381, file: !38, line: 227, baseType: !152, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3381, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3381, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3381, file: !38, line: 230, baseType: !3219, size: 64, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3381, file: !38, line: 231, baseType: !3219, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3381, file: !38, line: 232, baseType: !150, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3373, file: !38, line: 523, baseType: !3412, size: 192, offset: 2240)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3389, size: 192, elements: !309)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !626, file: !44, line: 1458, baseType: !3414, size: 2112, offset: 4288)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !3415)
!3415 = !{!3416, !3417, !3418}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3414, file: !44, line: 1411, baseType: !188, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3414, file: !44, line: 1412, baseType: !979, size: 128, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3414, file: !44, line: 1413, baseType: !3419, size: 1920, offset: 192)
!3419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3420, size: 1920, elements: !309)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3421, line: 12, size: 640, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3422 = !{!3423, !3431, !3433, !3438, !3439}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3420, file: !3421, line: 13, baseType: !3424, size: 320)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3425, line: 17, size: 320, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3426 = !{!3427, !3428, !3429, !3430}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3424, file: !3425, line: 18, baseType: !188, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3424, file: !3425, line: 19, baseType: !188, size: 32, offset: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3424, file: !3425, line: 20, baseType: !979, size: 128, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3424, file: !3425, line: 22, baseType: !396, size: 128, align: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3420, file: !3421, line: 14, baseType: !3432, size: 64, offset: 320)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3420, file: !3421, line: 15, baseType: !3434, size: 64, offset: 384)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3435, line: 16, size: 64, elements: !3436)
!3435 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3436 = !{!3437}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3434, file: !3435, line: 17, baseType: !1422, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3420, file: !3421, line: 16, baseType: !979, size: 128, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3420, file: !3421, line: 17, baseType: !825, size: 32, offset: 576)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !626, file: !44, line: 1465, baseType: !150, size: 64, offset: 6400)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !626, file: !44, line: 1468, baseType: !199, size: 32, offset: 6464)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !626, file: !44, line: 1470, baseType: !565, size: 64, offset: 6528)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !626, file: !44, line: 1471, baseType: !565, size: 64, offset: 6592)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !626, file: !44, line: 1473, baseType: !201, size: 32, offset: 6656)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !626, file: !44, line: 1474, baseType: !3446, size: 64, offset: 6720)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !626, file: !44, line: 1477, baseType: !3449, size: 256, offset: 6784)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !2984)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !626, file: !44, line: 1478, baseType: !3451, size: 128, offset: 7040)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3452, line: 18, baseType: !3453)
!3452 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3452, line: 16, size: 128, elements: !3454)
!3454 = !{!3455}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3453, file: !3452, line: 17, baseType: !3456, size: 128)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !1900)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !626, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !626, file: !44, line: 1481, baseType: !3459, size: 32, offset: 7200)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !149, line: 150, baseType: !7)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !626, file: !44, line: 1487, baseType: !752, size: 192, offset: 7232)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !626, file: !44, line: 1493, baseType: !252, size: 64, offset: 7424)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !626, file: !44, line: 1495, baseType: !3463, size: 64, offset: 7488)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !411, line: 135, size: 1024, align: 512, elements: !3466)
!3466 = !{!3467, !3471, !3472, !3479, !3485, !3489, !3493, !3497, !3498, !3502, !3506, !3511, !3515}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3465, file: !411, line: 136, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!188, !413, !7}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3465, file: !411, line: 137, baseType: !3468, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3465, file: !411, line: 138, baseType: !3473, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!188, !3476, !3478}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3465, file: !411, line: 139, baseType: !3480, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!188, !3476, !7, !252, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3465, file: !411, line: 141, baseType: !3486, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!188, !3476}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3465, file: !411, line: 142, baseType: !3490, size: 64, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!188, !413}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3465, file: !411, line: 143, baseType: !3494, size: 64, offset: 384)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !413}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3465, file: !411, line: 144, baseType: !3494, size: 64, offset: 448)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3465, file: !411, line: 145, baseType: !3499, size: 64, offset: 512)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !413, !455}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3465, file: !411, line: 146, baseType: !3503, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!308, !413, !308, !188}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3465, file: !411, line: 147, baseType: !3507, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!409, !3510}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3465, file: !411, line: 148, baseType: !3512, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!188, !575, !516}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3465, file: !411, line: 149, baseType: !3516, size: 64, offset: 768)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!413, !413, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !626, file: !44, line: 1500, baseType: !188, size: 32, offset: 7552)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !626, file: !44, line: 1502, baseType: !3523, size: 448, offset: 7616)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3167, line: 60, size: 448, elements: !3524)
!3524 = !{!3525, !3530, !3531, !3532, !3533, !3534, !3535}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3523, file: !3167, line: 61, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!152, !3529, !3165}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3523, file: !3167, line: 63, baseType: !3526, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3523, file: !3167, line: 66, baseType: !158, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3523, file: !3167, line: 67, baseType: !188, size: 32, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3523, file: !3167, line: 68, baseType: !7, size: 32, offset: 224)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3523, file: !3167, line: 71, baseType: !254, size: 128, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3523, file: !3167, line: 77, baseType: !3536, size: 64, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !626, file: !44, line: 1505, baseType: !756, size: 64, offset: 8064)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !626, file: !44, line: 1508, baseType: !756, size: 64, offset: 8128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !626, file: !44, line: 1511, baseType: !188, size: 32, offset: 8192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !626, file: !44, line: 1514, baseType: !1120, size: 32, offset: 8224)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !626, file: !44, line: 1517, baseType: !3542, size: 64, offset: 8256)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2272, line: 18, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !626, file: !44, line: 1518, baseType: !664, size: 64, offset: 8320)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !626, file: !44, line: 1525, baseType: !1878, size: 64, offset: 8384)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !626, file: !44, line: 1532, baseType: !3547, size: 64, offset: 8448)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3548, line: 52, size: 64, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3549 = !{!3550}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3547, file: !3548, line: 53, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3548, line: 40, size: 256, elements: !3553)
!3553 = !{!3554, !3555, !3560}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3552, file: !3548, line: 42, baseType: !267)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3552, file: !3548, line: 44, baseType: !3556, size: 192)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3548, line: 28, size: 192, elements: !3557)
!3557 = !{!3558, !3559}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3556, file: !3548, line: 29, baseType: !254, size: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3556, file: !3548, line: 31, baseType: !158, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3552, file: !3548, line: 49, baseType: !158, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !626, file: !44, line: 1533, baseType: !3547, size: 64, offset: 8512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !626, file: !44, line: 1534, baseType: !396, size: 128, align: 64, offset: 8576)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !626, file: !44, line: 1535, baseType: !2271, size: 256, offset: 8704)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !626, file: !44, line: 1537, baseType: !752, size: 192, offset: 8960)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !626, file: !44, line: 1542, baseType: !188, size: 32, offset: 9152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !626, file: !44, line: 1545, baseType: !267, offset: 9184)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !626, file: !44, line: 1546, baseType: !254, size: 128, offset: 9216)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !626, file: !44, line: 1548, baseType: !267, offset: 9344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !626, file: !44, line: 1549, baseType: !254, size: 128, offset: 9344)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !456, file: !44, line: 624, baseType: !812, size: 64, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !456, file: !44, line: 631, baseType: !152, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !44, line: 639, baseType: !3573, size: 32, offset: 384)
!3573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !44, line: 639, size: 32, elements: !3574)
!3574 = !{!3575, !3577}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3573, file: !44, line: 640, baseType: !3576, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3573, file: !44, line: 641, baseType: !7, size: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !456, file: !44, line: 643, baseType: !539, size: 32, offset: 416)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !456, file: !44, line: 644, baseType: !557, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !456, file: !44, line: 645, baseType: !561, size: 128, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !456, file: !44, line: 646, baseType: !561, size: 128, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !456, file: !44, line: 647, baseType: !561, size: 128, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !456, file: !44, line: 648, baseType: !267, offset: 896)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !456, file: !44, line: 649, baseType: !212, size: 16, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !456, file: !44, line: 650, baseType: !214, size: 8, offset: 912)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !456, file: !44, line: 651, baseType: !214, size: 8, offset: 920)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !456, file: !44, line: 652, baseType: !3339, size: 64, offset: 960)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !456, file: !44, line: 659, baseType: !152, size: 64, offset: 1024)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !456, file: !44, line: 660, baseType: !845, size: 256, offset: 1088)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !456, file: !44, line: 662, baseType: !152, size: 64, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !456, file: !44, line: 663, baseType: !152, size: 64, offset: 1408)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !456, file: !44, line: 665, baseType: !668, size: 128, offset: 1472)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !456, file: !44, line: 666, baseType: !254, size: 128, offset: 1600)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !456, file: !44, line: 675, baseType: !254, size: 128, offset: 1728)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !456, file: !44, line: 676, baseType: !254, size: 128, offset: 1856)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !456, file: !44, line: 677, baseType: !254, size: 128, offset: 1984)
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !44, line: 678, baseType: !3598, size: 128, offset: 2112)
!3598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !44, line: 678, size: 128, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3598, file: !44, line: 679, baseType: !664, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3598, file: !44, line: 680, baseType: !396, size: 128, align: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !456, file: !44, line: 682, baseType: !758, size: 64, offset: 2240)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !456, file: !44, line: 683, baseType: !758, size: 64, offset: 2304)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !456, file: !44, line: 684, baseType: !825, size: 32, offset: 2368)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !456, file: !44, line: 685, baseType: !825, size: 32, offset: 2400)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !456, file: !44, line: 686, baseType: !825, size: 32, offset: 2432)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !456, file: !44, line: 688, baseType: !825, size: 32, offset: 2464)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !44, line: 690, baseType: !3609, size: 64, offset: 2496)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !44, line: 690, size: 64, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3609, file: !44, line: 691, baseType: !2001, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3609, file: !44, line: 692, baseType: !693, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !456, file: !44, line: 694, baseType: !3614, size: 64, offset: 2560)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3615, file: !44, line: 1101, baseType: !267)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3615, file: !44, line: 1102, baseType: !254, size: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3615, file: !44, line: 1103, baseType: !254, size: 128, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3615, file: !44, line: 1104, baseType: !254, size: 128, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !456, file: !44, line: 695, baseType: !813, size: 1216, align: 64, offset: 2624)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !456, file: !44, line: 696, baseType: !254, size: 128, offset: 3840)
!3623 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !44, line: 697, baseType: !3624, size: 64, offset: 3968)
!3624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !44, line: 697, size: 64, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3624, file: !44, line: 698, baseType: !973, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3624, file: !44, line: 699, baseType: !3364, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3624, file: !44, line: 700, baseType: !1994, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3624, file: !44, line: 701, baseType: !308, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3624, file: !44, line: 702, baseType: !7, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !456, file: !44, line: 705, baseType: !201, size: 32, offset: 4032)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !456, file: !44, line: 708, baseType: !201, size: 32, offset: 4064)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !456, file: !44, line: 709, baseType: !3446, size: 64, offset: 4096)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !456, file: !44, line: 720, baseType: !150, size: 64, offset: 4160)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !414, file: !411, line: 98, baseType: !3636, size: 256, offset: 448)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 256, elements: !2984)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !414, file: !411, line: 101, baseType: !3638, size: 32, offset: 704)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3639, line: 25, size: 32, elements: !3640)
!3639 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3640 = !{!3641}
!3641 = !DIDerivedType(tag: DW_TAG_member, scope: !3638, file: !3639, line: 26, baseType: !3642, size: 32)
!3642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3638, file: !3639, line: 26, size: 32, elements: !3643)
!3643 = !{!3644}
!3644 = !DIDerivedType(tag: DW_TAG_member, scope: !3642, file: !3639, line: 30, baseType: !3645, size: 32)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3642, file: !3639, line: 30, size: 32, elements: !3646)
!3646 = !{!3647, !3648}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3645, file: !3639, line: 31, baseType: !267)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3645, file: !3639, line: 32, baseType: !188, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !414, file: !411, line: 102, baseType: !3463, size: 64, offset: 768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !414, file: !411, line: 103, baseType: !625, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !414, file: !411, line: 104, baseType: !152, size: 64, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !414, file: !411, line: 105, baseType: !150, size: 64, offset: 960)
!3653 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !411, line: 107, baseType: !3654, size: 128, offset: 1024)
!3654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !411, line: 107, size: 128, elements: !3655)
!3655 = !{!3656, !3657}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3654, file: !411, line: 108, baseType: !254, size: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3654, file: !411, line: 109, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !414, file: !411, line: 111, baseType: !254, size: 128, offset: 1152)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !414, file: !411, line: 112, baseType: !254, size: 128, offset: 1280)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !414, file: !411, line: 120, baseType: !3662, size: 128, offset: 1408)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !411, line: 116, size: 128, elements: !3663)
!3663 = !{!3664, !3665, !3666}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3662, file: !411, line: 117, baseType: !668, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3662, file: !411, line: 118, baseType: !428, size: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3662, file: !411, line: 119, baseType: !396, size: 128, align: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !384, file: !44, line: 922, baseType: !455, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !384, file: !44, line: 923, baseType: !2001, size: 64, offset: 320)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !384, file: !44, line: 929, baseType: !267, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !384, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !384, file: !44, line: 931, baseType: !756, size: 64, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !384, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !384, file: !44, line: 933, baseType: !3459, size: 32, offset: 544)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !384, file: !44, line: 934, baseType: !752, size: 192, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !384, file: !44, line: 935, baseType: !557, size: 64, offset: 768)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !384, file: !44, line: 936, baseType: !3677, size: 192, offset: 832)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3677, file: !44, line: 886, baseType: !1002)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3677, file: !44, line: 887, baseType: !1667, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3677, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3677, file: !44, line: 889, baseType: !461, size: 32, offset: 96)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3677, file: !44, line: 889, baseType: !461, size: 32, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3677, file: !44, line: 890, baseType: !188, size: 32, offset: 160)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !384, file: !44, line: 937, baseType: !1737, size: 64, offset: 1024)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !384, file: !44, line: 938, baseType: !3687, size: 256, offset: 1088)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3692, !3693, !3694}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3687, file: !44, line: 897, baseType: !152, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3687, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3687, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3687, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3687, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3687, file: !44, line: 904, baseType: !557, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !384, file: !44, line: 940, baseType: !448, size: 64, offset: 1344)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !384, file: !44, line: 945, baseType: !150, size: 64, offset: 1408)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !384, file: !44, line: 949, baseType: !254, size: 128, offset: 1472)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !384, file: !44, line: 950, baseType: !254, size: 128, offset: 1600)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !384, file: !44, line: 952, baseType: !812, size: 64, offset: 1728)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !384, file: !44, line: 953, baseType: !1120, size: 32, offset: 1792)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !384, file: !44, line: 954, baseType: !1120, size: 32, offset: 1824)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !374, file: !333, line: 174, baseType: !380, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !374, file: !333, line: 176, baseType: !3704, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!188, !383, !260, !373, !1193}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !362, file: !333, line: 90, baseType: !357, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !362, file: !333, line: 91, baseType: !3709, size: 64, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !323, file: !249, line: 143, baseType: !3711, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!3714, !260}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3716)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3717)
!3717 = !{!3718, !3719, !3723, !3727, !3733, !3737}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3716, file: !61, line: 40, baseType: !60, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3716, file: !61, line: 41, baseType: !3720, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!516}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3716, file: !61, line: 42, baseType: !3724, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!150}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3716, file: !61, line: 43, baseType: !3728, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!2881, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3716, file: !61, line: 44, baseType: !3734, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!2881}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3716, file: !61, line: 45, baseType: !494, size: 64, offset: 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !323, file: !249, line: 144, baseType: !3739, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!2881, !260}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !323, file: !249, line: 145, baseType: !3743, size: 64, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !260, !3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !248, file: !249, line: 70, baseType: !3749, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !645, line: 123, size: 1024, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3868, !3869, !3870, !3871, !3872}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3750, file: !645, line: 124, baseType: !825, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3750, file: !645, line: 125, baseType: !825, size: 32, offset: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3750, file: !645, line: 135, baseType: !3749, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3750, file: !645, line: 136, baseType: !252, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3750, file: !645, line: 138, baseType: !838, size: 192, align: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3750, file: !645, line: 140, baseType: !2881, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3750, file: !645, line: 141, baseType: !7, size: 32, offset: 448)
!3759 = !DIDerivedType(tag: DW_TAG_member, scope: !3750, file: !645, line: 142, baseType: !3760, size: 256, offset: 512)
!3760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3750, file: !645, line: 142, size: 256, elements: !3761)
!3761 = !{!3762, !3808, !3812}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3760, file: !645, line: 143, baseType: !3763, size: 192)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !645, line: 91, size: 192, elements: !3764)
!3764 = !{!3765, !3766, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3763, file: !645, line: 92, baseType: !152, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3763, file: !645, line: 94, baseType: !834, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3763, file: !645, line: 100, baseType: !3768, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !645, line: 180, size: 704, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3780, !3781, !3782, !3806, !3807}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3769, file: !645, line: 182, baseType: !3749, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3769, file: !645, line: 183, baseType: !7, size: 32, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3769, file: !645, line: 186, baseType: !3774, size: 192, offset: 128)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3775, line: 19, size: 192, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3774, file: !3775, line: 20, baseType: !817, size: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3774, file: !3775, line: 21, baseType: !7, size: 32, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3774, file: !3775, line: 22, baseType: !7, size: 32, offset: 160)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3769, file: !645, line: 187, baseType: !199, size: 32, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3769, file: !645, line: 188, baseType: !199, size: 32, offset: 352)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3769, file: !645, line: 189, baseType: !3783, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !645, line: 168, size: 320, elements: !3785)
!3785 = !{!3786, !3790, !3794, !3798, !3802}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3784, file: !645, line: 169, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!188, !740, !3768}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3784, file: !645, line: 171, baseType: !3791, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!188, !3749, !252, !348}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3784, file: !645, line: 173, baseType: !3795, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!188, !3749}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3784, file: !645, line: 174, baseType: !3799, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!188, !3749, !3749, !252}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3784, file: !645, line: 176, baseType: !3803, size: 64, offset: 256)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!188, !740, !3749, !3768}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3769, file: !645, line: 192, baseType: !254, size: 128, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3769, file: !645, line: 194, baseType: !979, size: 128, offset: 576)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3760, file: !645, line: 144, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !645, line: 103, size: 64, elements: !3810)
!3810 = !{!3811}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3809, file: !645, line: 104, baseType: !3749, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3760, file: !645, line: 145, baseType: !3813, size: 256)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !645, line: 107, size: 256, elements: !3814)
!3814 = !{!3815, !3863, !3866, !3867}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3813, file: !645, line: 108, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !645, line: 217, size: 768, elements: !3819)
!3819 = !{!3820, !3840, !3844, !3845, !3846, !3847, !3848, !3852, !3853, !3854, !3855, !3859}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3818, file: !645, line: 222, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!188, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !645, line: 197, size: 1088, elements: !3826)
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3825, file: !645, line: 199, baseType: !3749, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3825, file: !645, line: 200, baseType: !383, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3825, file: !645, line: 201, baseType: !740, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3825, file: !645, line: 202, baseType: !150, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3825, file: !645, line: 205, baseType: !752, size: 192, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3825, file: !645, line: 206, baseType: !752, size: 192, offset: 448)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3825, file: !645, line: 207, baseType: !188, size: 32, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3825, file: !645, line: 208, baseType: !254, size: 128, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3825, file: !645, line: 209, baseType: !308, size: 64, offset: 832)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3825, file: !645, line: 211, baseType: !353, size: 64, offset: 896)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3825, file: !645, line: 212, baseType: !516, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3825, file: !645, line: 213, baseType: !516, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3825, file: !645, line: 214, baseType: !1221, size: 64, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3818, file: !645, line: 223, baseType: !3841, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3824}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3818, file: !645, line: 236, baseType: !784, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3818, file: !645, line: 238, baseType: !771, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3818, file: !645, line: 239, baseType: !780, size: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3818, file: !645, line: 240, baseType: !776, size: 64, offset: 320)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3818, file: !645, line: 242, baseType: !3849, size: 64, offset: 384)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!339, !3824, !308, !353, !557}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3818, file: !645, line: 252, baseType: !353, size: 64, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3818, file: !645, line: 259, baseType: !516, size: 8, offset: 512)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3818, file: !645, line: 260, baseType: !3849, size: 64, offset: 576)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3818, file: !645, line: 263, baseType: !3856, size: 64, offset: 640)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!2042, !3824, !2044}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3818, file: !645, line: 266, baseType: !3860, size: 64, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!188, !3824, !1193}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3813, file: !645, line: 109, baseType: !3864, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !645, line: 31, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3813, file: !645, line: 110, baseType: !557, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3813, file: !645, line: 111, baseType: !3749, size: 64, offset: 192)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3750, file: !645, line: 148, baseType: !150, size: 64, offset: 768)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3750, file: !645, line: 154, baseType: !448, size: 64, offset: 832)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3750, file: !645, line: 156, baseType: !212, size: 16, offset: 896)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3750, file: !645, line: 157, baseType: !348, size: 16, offset: 912)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3750, file: !645, line: 158, baseType: !3873, size: 64, offset: 960)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !645, line: 32, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !248, file: !249, line: 71, baseType: !1979, size: 32, offset: 448)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !248, file: !249, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !248, file: !249, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !248, file: !249, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !248, file: !249, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !248, file: !249, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !73, line: 463, baseType: !1984, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !245, file: !73, line: 465, baseType: !3883, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !245, file: !73, line: 467, baseType: !252, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !73, line: 468, baseType: !3887, size: 64, offset: 704)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3897, !3902, !3906}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3889, file: !73, line: 88, baseType: !252, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3889, file: !73, line: 89, baseType: !359, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3889, file: !73, line: 90, baseType: !3894, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!188, !1984, !303}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3889, file: !73, line: 91, baseType: !3898, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!308, !1984, !3901, !3746, !3747}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3889, file: !73, line: 93, baseType: !3903, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !1984}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3889, file: !73, line: 95, baseType: !3907, size: 64, offset: 320)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3910)
!3910 = !{!3911, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3909, file: !80, line: 279, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!188, !1984}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3909, file: !80, line: 280, baseType: !3903, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3909, file: !80, line: 281, baseType: !3912, size: 64, offset: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3909, file: !80, line: 282, baseType: !3912, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3909, file: !80, line: 283, baseType: !3912, size: 64, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3909, file: !80, line: 284, baseType: !3912, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3909, file: !80, line: 285, baseType: !3912, size: 64, offset: 384)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3909, file: !80, line: 286, baseType: !3912, size: 64, offset: 448)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3909, file: !80, line: 287, baseType: !3912, size: 64, offset: 512)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3909, file: !80, line: 288, baseType: !3912, size: 64, offset: 576)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3909, file: !80, line: 289, baseType: !3912, size: 64, offset: 640)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3909, file: !80, line: 290, baseType: !3912, size: 64, offset: 704)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3909, file: !80, line: 291, baseType: !3912, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3909, file: !80, line: 292, baseType: !3912, size: 64, offset: 832)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3909, file: !80, line: 293, baseType: !3912, size: 64, offset: 896)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3909, file: !80, line: 294, baseType: !3912, size: 64, offset: 960)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3909, file: !80, line: 295, baseType: !3912, size: 64, offset: 1024)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3909, file: !80, line: 296, baseType: !3912, size: 64, offset: 1088)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3909, file: !80, line: 297, baseType: !3912, size: 64, offset: 1152)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3909, file: !80, line: 298, baseType: !3912, size: 64, offset: 1216)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3909, file: !80, line: 299, baseType: !3912, size: 64, offset: 1280)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3909, file: !80, line: 300, baseType: !3912, size: 64, offset: 1344)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3909, file: !80, line: 301, baseType: !3912, size: 64, offset: 1408)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !245, file: !73, line: 470, baseType: !3938, size: 64, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3940, line: 82, size: 1408, elements: !3941)
!3940 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4023, !4026, !4027}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3939, file: !3940, line: 83, baseType: !252, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3939, file: !3940, line: 84, baseType: !252, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3939, file: !3940, line: 85, baseType: !1984, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3939, file: !3940, line: 86, baseType: !359, size: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3939, file: !3940, line: 87, baseType: !359, size: 64, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3939, file: !3940, line: 88, baseType: !359, size: 64, offset: 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3939, file: !3940, line: 90, baseType: !3949, size: 64, offset: 384)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!188, !1984, !3952}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960, !3961, !3974, !3987, !3988, !3989, !3990, !3991, !3999, !4000, !4001, !4002, !4003, !4004}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3953, file: !67, line: 96, baseType: !252, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3953, file: !67, line: 97, baseType: !3938, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3953, file: !67, line: 99, baseType: !659, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3953, file: !67, line: 100, baseType: !252, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3953, file: !67, line: 102, baseType: !516, size: 8, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3953, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3953, file: !67, line: 105, baseType: !3962, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3965, line: 262, size: 1600, elements: !3966)
!3965 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3966 = !{!3967, !3968, !3969, !3973}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3964, file: !3965, line: 263, baseType: !3449, size: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3964, file: !3965, line: 264, baseType: !3449, size: 256, offset: 256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3964, file: !3965, line: 265, baseType: !3970, size: 1024, offset: 512)
!3970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 1024, elements: !3971)
!3971 = !{!3972}
!3972 = !DISubrange(count: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3964, file: !3965, line: 266, baseType: !2881, size: 64, offset: 1536)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3953, file: !67, line: 106, baseType: !3975, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3965, line: 210, size: 256, elements: !3978)
!3978 = !{!3979, !3983, !3985, !3986}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3977, file: !3965, line: 211, baseType: !3980, size: 72)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 72, elements: !3981)
!3981 = !{!3982}
!3982 = !DISubrange(count: 9)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3977, file: !3965, line: 212, baseType: !3984, size: 64, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3965, line: 14, baseType: !152)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3977, file: !3965, line: 213, baseType: !201, size: 32, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3977, file: !3965, line: 214, baseType: !201, size: 32, offset: 224)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3953, file: !67, line: 108, baseType: !3912, size: 64, offset: 448)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3953, file: !67, line: 109, baseType: !3903, size: 64, offset: 512)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3953, file: !67, line: 110, baseType: !3912, size: 64, offset: 576)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3953, file: !67, line: 111, baseType: !3903, size: 64, offset: 640)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3953, file: !67, line: 112, baseType: !3992, size: 64, offset: 704)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!188, !1984, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3996)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3997)
!3997 = !{!3998}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3996, file: !80, line: 51, baseType: !188, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3953, file: !67, line: 113, baseType: !3912, size: 64, offset: 768)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3953, file: !67, line: 114, baseType: !359, size: 64, offset: 832)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3953, file: !67, line: 115, baseType: !359, size: 64, offset: 896)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3953, file: !67, line: 117, baseType: !3907, size: 64, offset: 960)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3953, file: !67, line: 118, baseType: !3903, size: 64, offset: 1024)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3953, file: !67, line: 120, baseType: !4005, size: 64, offset: 1088)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3939, file: !3940, line: 91, baseType: !3894, size: 64, offset: 448)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3939, file: !3940, line: 92, baseType: !3912, size: 64, offset: 512)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3939, file: !3940, line: 93, baseType: !3903, size: 64, offset: 576)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3939, file: !3940, line: 94, baseType: !3912, size: 64, offset: 640)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3939, file: !3940, line: 95, baseType: !3903, size: 64, offset: 704)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3939, file: !3940, line: 97, baseType: !3912, size: 64, offset: 768)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3939, file: !3940, line: 98, baseType: !3912, size: 64, offset: 832)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3939, file: !3940, line: 100, baseType: !3992, size: 64, offset: 896)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3939, file: !3940, line: 101, baseType: !3912, size: 64, offset: 960)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3939, file: !3940, line: 103, baseType: !3912, size: 64, offset: 1024)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3939, file: !3940, line: 105, baseType: !3912, size: 64, offset: 1088)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3939, file: !3940, line: 107, baseType: !3907, size: 64, offset: 1152)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3939, file: !3940, line: 109, baseType: !4020, size: 64, offset: 1216)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3940, line: 109, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3939, file: !3940, line: 111, baseType: !4024, size: 64, offset: 1280)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3940, line: 111, flags: DIFlagFwdDecl)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3939, file: !3940, line: 112, baseType: !674, offset: 1344)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3939, file: !3940, line: 114, baseType: !516, size: 8, offset: 1344)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !245, file: !73, line: 471, baseType: !3952, size: 64, offset: 832)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !245, file: !73, line: 473, baseType: !150, size: 64, offset: 896)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !245, file: !73, line: 475, baseType: !150, size: 64, offset: 960)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !245, file: !73, line: 480, baseType: !752, size: 192, offset: 1024)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !245, file: !73, line: 484, baseType: !4033, size: 576, offset: 1216)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4033, file: !73, line: 362, baseType: !254, size: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4033, file: !73, line: 363, baseType: !254, size: 128, offset: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4033, file: !73, line: 364, baseType: !254, size: 128, offset: 256)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4033, file: !73, line: 365, baseType: !254, size: 128, offset: 384)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4033, file: !73, line: 366, baseType: !516, size: 8, offset: 512)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4033, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !245, file: !73, line: 485, baseType: !4042, size: 2304, offset: 1792)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4139, !4143}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4042, file: !80, line: 566, baseType: !3995, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4042, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4042, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4042, file: !80, line: 569, baseType: !516, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4042, file: !80, line: 570, baseType: !516, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4042, file: !80, line: 571, baseType: !516, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4042, file: !80, line: 572, baseType: !516, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4042, file: !80, line: 573, baseType: !516, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4042, file: !80, line: 574, baseType: !516, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4042, file: !80, line: 575, baseType: !516, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4042, file: !80, line: 576, baseType: !516, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4042, file: !80, line: 577, baseType: !199, size: 32, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4042, file: !80, line: 578, baseType: !267, offset: 96)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4042, file: !80, line: 580, baseType: !254, size: 128, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4042, file: !80, line: 581, baseType: !1692, size: 192, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4042, file: !80, line: 582, baseType: !4060, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4062, line: 43, size: 1472, elements: !4063)
!4062 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4063 = !{!4064, !4065, !4066, !4067, !4068, !4071, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4061, file: !4062, line: 44, baseType: !252, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4061, file: !4062, line: 45, baseType: !188, size: 32, offset: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4061, file: !4062, line: 46, baseType: !254, size: 128, offset: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4061, file: !4062, line: 47, baseType: !267, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4061, file: !4062, line: 48, baseType: !4069, size: 64, offset: 256)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4061, file: !4062, line: 49, baseType: !4072, size: 320, offset: 320)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !4073, line: 11, size: 320, elements: !4074)
!4073 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!4074 = !{!4075, !4076, !4077, !4082}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4072, file: !4073, line: 16, baseType: !668, size: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4072, file: !4073, line: 17, baseType: !152, size: 64, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4072, file: !4073, line: 18, baseType: !4078, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{null, !4081}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4072, file: !4073, line: 19, baseType: !199, size: 32, offset: 256)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4061, file: !4062, line: 50, baseType: !152, size: 64, offset: 640)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4061, file: !4062, line: 51, baseType: !1500, size: 64, offset: 704)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4061, file: !4062, line: 52, baseType: !1500, size: 64, offset: 768)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4061, file: !4062, line: 53, baseType: !1500, size: 64, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4061, file: !4062, line: 54, baseType: !1500, size: 64, offset: 896)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4061, file: !4062, line: 55, baseType: !1500, size: 64, offset: 960)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4061, file: !4062, line: 56, baseType: !152, size: 64, offset: 1024)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4061, file: !4062, line: 57, baseType: !152, size: 64, offset: 1088)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4061, file: !4062, line: 58, baseType: !152, size: 64, offset: 1152)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4061, file: !4062, line: 59, baseType: !152, size: 64, offset: 1216)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4061, file: !4062, line: 60, baseType: !152, size: 64, offset: 1280)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4061, file: !4062, line: 61, baseType: !1984, size: 64, offset: 1344)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4061, file: !4062, line: 62, baseType: !516, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4061, file: !4062, line: 63, baseType: !516, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4042, file: !80, line: 583, baseType: !516, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4042, file: !80, line: 584, baseType: !516, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4042, file: !80, line: 585, baseType: !516, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4042, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4042, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4042, file: !80, line: 592, baseType: !1492, size: 512, offset: 576)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4042, file: !80, line: 593, baseType: !448, size: 64, offset: 1088)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4042, file: !80, line: 594, baseType: !2271, size: 256, offset: 1152)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4042, file: !80, line: 595, baseType: !979, size: 128, offset: 1408)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4042, file: !80, line: 596, baseType: !4069, size: 64, offset: 1536)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4042, file: !80, line: 597, baseType: !825, size: 32, offset: 1600)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4042, file: !80, line: 598, baseType: !825, size: 32, offset: 1632)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4042, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4042, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4042, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4042, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4042, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4042, file: !80, line: 604, baseType: !516, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4042, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4042, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4042, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4042, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4042, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4042, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4042, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4042, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4042, file: !80, line: 613, baseType: !188, size: 32, offset: 1792)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4042, file: !80, line: 614, baseType: !188, size: 32, offset: 1824)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4042, file: !80, line: 615, baseType: !448, size: 64, offset: 1856)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4042, file: !80, line: 616, baseType: !448, size: 64, offset: 1920)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4042, file: !80, line: 617, baseType: !448, size: 64, offset: 1984)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4042, file: !80, line: 618, baseType: !448, size: 64, offset: 2048)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4042, file: !80, line: 620, baseType: !4130, size: 64, offset: 2112)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4131, file: !80, line: 537, baseType: !267)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4131, file: !80, line: 538, baseType: !7, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4131, file: !80, line: 540, baseType: !254, size: 128, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4131, file: !80, line: 543, baseType: !4137, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4042, file: !80, line: 621, baseType: !4140, size: 64, offset: 2176)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{null, !1984, !1640}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4042, file: !80, line: 622, baseType: !4144, size: 64, offset: 2240)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !245, file: !73, line: 486, baseType: !4147, size: 64, offset: 4096)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !4149)
!4149 = !{!4150, !4151, !4152, !4156, !4157, !4158}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4148, file: !80, line: 643, baseType: !3909, size: 1472)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4148, file: !80, line: 644, baseType: !3912, size: 64, offset: 1472)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4148, file: !80, line: 645, baseType: !4153, size: 64, offset: 1536)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !1984, !516}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4148, file: !80, line: 646, baseType: !3912, size: 64, offset: 1600)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4148, file: !80, line: 647, baseType: !3903, size: 64, offset: 1664)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4148, file: !80, line: 648, baseType: !3903, size: 64, offset: 1728)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !245, file: !73, line: 493, baseType: !4160, size: 64, offset: 4160)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !4162)
!4162 = !{!4163, !4164, !4165, !4435, !4436, !4437, !4438, !4439, !4440, !4563, !4564, !4565, !4566, !4567, !4568, !4569}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4161, file: !94, line: 163, baseType: !254, size: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4161, file: !94, line: 164, baseType: !252, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4161, file: !94, line: 165, baseType: !4166, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !4169)
!4169 = !{!4170, !4288, !4299, !4304, !4308, !4314, !4318, !4322, !4427, !4431}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4168, file: !94, line: 106, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!188, !4160, !4174, !93}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4176, line: 51, size: 1344, elements: !4177)
!4176 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4177 = !{!4178, !4179, !4181, !4182, !4272, !4281, !4282, !4283, !4284, !4285, !4286, !4287}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4175, file: !4176, line: 52, baseType: !252, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4175, file: !4176, line: 53, baseType: !4180, size: 32, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4176, line: 28, baseType: !199)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4175, file: !4176, line: 54, baseType: !252, size: 64, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4175, file: !4176, line: 55, baseType: !4183, size: 192, offset: 192)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4184, line: 17, size: 192, elements: !4185)
!4184 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4185 = !{!4186, !4188, !4271}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4183, file: !4184, line: 18, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4183, file: !4184, line: 19, baseType: !4189, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4191)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4184, line: 110, size: 1152, elements: !4192)
!4192 = !{!4193, !4197, !4201, !4207, !4213, !4217, !4221, !4226, !4230, !4231, !4235, !4239, !4243, !4254, !4255, !4256, !4257, !4267}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4191, file: !4184, line: 111, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!4187, !4187}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4191, file: !4184, line: 112, baseType: !4198, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4187}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4191, file: !4184, line: 113, baseType: !4202, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!516, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4183)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4191, file: !4184, line: 114, baseType: !4208, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!2881, !4205, !4211}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4191, file: !4184, line: 116, baseType: !4214, size: 64, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!516, !4205, !252}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4191, file: !4184, line: 118, baseType: !4218, size: 64, offset: 320)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!188, !4205, !252, !7, !150, !353}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4191, file: !4184, line: 123, baseType: !4222, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!188, !4205, !252, !4225, !353}
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4191, file: !4184, line: 126, baseType: !4227, size: 64, offset: 448)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!252, !4205}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4191, file: !4184, line: 127, baseType: !4227, size: 64, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4191, file: !4184, line: 128, baseType: !4232, size: 64, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!4187, !4205}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4191, file: !4184, line: 130, baseType: !4236, size: 64, offset: 640)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!4187, !4205, !4187}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4191, file: !4184, line: 133, baseType: !4240, size: 64, offset: 704)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!4187, !4205, !252}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4191, file: !4184, line: 135, baseType: !4244, size: 64, offset: 768)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!188, !4205, !252, !252, !7, !7, !4247}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4184, line: 43, size: 640, elements: !4249)
!4249 = !{!4250, !4251, !4252}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4248, file: !4184, line: 44, baseType: !4187, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4248, file: !4184, line: 45, baseType: !7, size: 32, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4248, file: !4184, line: 46, baseType: !4253, size: 512, offset: 128)
!4253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 512, elements: !225)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4191, file: !4184, line: 140, baseType: !4236, size: 64, offset: 832)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4191, file: !4184, line: 143, baseType: !4232, size: 64, offset: 896)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4191, file: !4184, line: 145, baseType: !4194, size: 64, offset: 960)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4191, file: !4184, line: 146, baseType: !4258, size: 64, offset: 1024)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!188, !4205, !4261}
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4184, line: 29, size: 128, elements: !4263)
!4263 = !{!4264, !4265, !4266}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4262, file: !4184, line: 30, baseType: !7, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4262, file: !4184, line: 31, baseType: !7, size: 32, offset: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4262, file: !4184, line: 32, baseType: !4205, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4191, file: !4184, line: 148, baseType: !4268, size: 64, offset: 1088)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!188, !4205, !1984}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4183, file: !4184, line: 20, baseType: !1984, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4175, file: !4176, line: 57, baseType: !4273, size: 64, offset: 384)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4176, line: 31, size: 704, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4274, file: !4176, line: 32, baseType: !308, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4274, file: !4176, line: 33, baseType: !188, size: 32, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4274, file: !4176, line: 34, baseType: !150, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4274, file: !4176, line: 35, baseType: !4273, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4274, file: !4176, line: 43, baseType: !374, size: 448, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4175, file: !4176, line: 58, baseType: !4273, size: 64, offset: 448)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4175, file: !4176, line: 59, baseType: !4174, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4175, file: !4176, line: 60, baseType: !4174, size: 64, offset: 576)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4175, file: !4176, line: 61, baseType: !4174, size: 64, offset: 640)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4175, file: !4176, line: 63, baseType: !248, size: 512, offset: 704)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4175, file: !4176, line: 65, baseType: !152, size: 64, offset: 1216)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4175, file: !4176, line: 66, baseType: !150, size: 64, offset: 1280)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4168, file: !94, line: 108, baseType: !4289, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!188, !4160, !4292, !93}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !4294)
!4294 = !{!4295, !4296, !4297}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4293, file: !94, line: 64, baseType: !4187, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4293, file: !94, line: 65, baseType: !188, size: 32, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4293, file: !94, line: 66, baseType: !4298, size: 512, offset: 96)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 512, elements: !1900)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4168, file: !94, line: 110, baseType: !4300, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!188, !4160, !7, !4303}
!4303 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !149, line: 164, baseType: !152)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4168, file: !94, line: 111, baseType: !4305, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !4160, !7}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4168, file: !94, line: 112, baseType: !4309, size: 64, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!188, !4160, !4174, !4312, !7, !151, !3432}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4168, file: !94, line: 117, baseType: !4315, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!188, !4160, !7, !7, !150}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4168, file: !94, line: 119, baseType: !4319, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !4160, !7, !7}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4168, file: !94, line: 121, baseType: !4323, size: 64, offset: 448)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!188, !4160, !4326, !516}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332, !4344, !4424, !4425, !4426}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4327, file: !115, line: 176, baseType: !199, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4327, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !4327, file: !115, line: 178, baseType: !152, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !4327, file: !115, line: 179, baseType: !4333, size: 64, offset: 128)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4341}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !4334, file: !115, line: 146, baseType: !7, size: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !4334, file: !115, line: 150, baseType: !150, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !4334, file: !115, line: 151, baseType: !4339, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !115, line: 127, flags: DIFlagFwdDecl)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4334, file: !115, line: 152, baseType: !4342, size: 64, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1562, line: 756, baseType: !4343)
!4343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 64, elements: !1567)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4327, file: !115, line: 180, baseType: !4345, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4354, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4371, !4375, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4392, !4393, !4394, !4400, !4401, !4405, !4409, !4413, !4417, !4421, !4422, !4423}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !4346, file: !115, line: 504, baseType: !1984, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4346, file: !115, line: 505, baseType: !252, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !4346, file: !115, line: 506, baseType: !4351, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!7, !4326}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !4346, file: !115, line: 507, baseType: !4355, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{null, !4326}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !4346, file: !115, line: 508, baseType: !4355, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !4346, file: !115, line: 509, baseType: !4355, size: 64, offset: 320)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !4346, file: !115, line: 511, baseType: !4355, size: 64, offset: 384)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4346, file: !115, line: 512, baseType: !4355, size: 64, offset: 448)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !4346, file: !115, line: 513, baseType: !4355, size: 64, offset: 512)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !4346, file: !115, line: 514, baseType: !4355, size: 64, offset: 576)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !4346, file: !115, line: 515, baseType: !4355, size: 64, offset: 640)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !4346, file: !115, line: 517, baseType: !4366, size: 64, offset: 704)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!188, !4326, !4369, !516}
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !4346, file: !115, line: 518, baseType: !4372, size: 64, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!188, !4326}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !4346, file: !115, line: 519, baseType: !4376, size: 64, offset: 832)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!188, !4326, !7}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !4346, file: !115, line: 520, baseType: !4376, size: 64, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !4346, file: !115, line: 522, baseType: !4355, size: 64, offset: 960)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !4346, file: !115, line: 523, baseType: !4355, size: 64, offset: 1024)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !4346, file: !115, line: 525, baseType: !4355, size: 64, offset: 1088)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !4346, file: !115, line: 526, baseType: !4355, size: 64, offset: 1152)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !4346, file: !115, line: 528, baseType: !4355, size: 64, offset: 1216)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !4346, file: !115, line: 529, baseType: !4355, size: 64, offset: 1280)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !4346, file: !115, line: 530, baseType: !4355, size: 64, offset: 1344)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !4346, file: !115, line: 532, baseType: !4355, size: 64, offset: 1408)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !4346, file: !115, line: 534, baseType: !4389, size: 64, offset: 1472)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !4326, !740}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !4346, file: !115, line: 535, baseType: !4372, size: 64, offset: 1536)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !4346, file: !115, line: 536, baseType: !4355, size: 64, offset: 1600)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !4346, file: !115, line: 538, baseType: !4395, size: 64, offset: 1664)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4326, !4398}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !115, line: 29, flags: DIFlagFwdDecl)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !4346, file: !115, line: 539, baseType: !4395, size: 64, offset: 1728)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !4346, file: !115, line: 541, baseType: !4402, size: 64, offset: 1792)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!188, !4326, !107, !1102}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !4346, file: !115, line: 542, baseType: !4406, size: 64, offset: 1856)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!188, !4326, !107, !516}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !4346, file: !115, line: 544, baseType: !4410, size: 64, offset: 1920)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!188, !4326, !150}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !4346, file: !115, line: 546, baseType: !4414, size: 64, offset: 1984)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{null, !4326, !7}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !4346, file: !115, line: 547, baseType: !4418, size: 64, offset: 2048)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{null, !4326, !4369}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !4346, file: !115, line: 549, baseType: !4372, size: 64, offset: 2112)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !4346, file: !115, line: 550, baseType: !4355, size: 64, offset: 2176)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4346, file: !115, line: 552, baseType: !152, size: 64, offset: 2240)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4327, file: !115, line: 181, baseType: !4160, size: 64, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !4327, file: !115, line: 183, baseType: !4326, size: 64, offset: 320)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !4327, file: !115, line: 185, baseType: !150, size: 64, offset: 384)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4168, file: !94, line: 122, baseType: !4428, size: 64, offset: 512)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !4160, !4326}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4168, file: !94, line: 123, baseType: !4432, size: 64, offset: 576)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!188, !4160, !4292, !151, !3432}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4161, file: !94, line: 166, baseType: !150, size: 64, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4161, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4161, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4161, file: !94, line: 171, baseType: !4187, size: 64, offset: 384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4161, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4161, file: !94, line: 173, baseType: !4441, size: 64, offset: 512)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !4443)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4449}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4442, file: !115, line: 1102, baseType: !7, size: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4442, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4442, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4442, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4442, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4442, file: !115, line: 1107, baseType: !4450, offset: 192)
!4450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4451, elements: !2268)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !4453)
!4453 = !{!4454, !4455, !4456, !4460, !4464, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4452, file: !115, line: 1052, baseType: !851)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4452, file: !115, line: 1053, baseType: !150, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4452, file: !115, line: 1054, baseType: !4457, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!199, !150}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4452, file: !115, line: 1055, baseType: !4461, size: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{null, !199, !150}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4452, file: !115, line: 1056, baseType: !4465, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !4451}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4452, file: !115, line: 1057, baseType: !4465, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4452, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4452, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4452, file: !115, line: 1060, baseType: !199, size: 32, offset: 384)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4452, file: !115, line: 1061, baseType: !199, size: 32, offset: 416)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4452, file: !115, line: 1062, baseType: !199, size: 32, offset: 448)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4452, file: !115, line: 1063, baseType: !199, size: 32, offset: 480)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4452, file: !115, line: 1064, baseType: !199, size: 32, offset: 512)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4452, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4452, file: !115, line: 1066, baseType: !150, size: 64, offset: 576)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4452, file: !115, line: 1067, baseType: !152, size: 64, offset: 640)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4452, file: !115, line: 1068, baseType: !152, size: 64, offset: 704)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4452, file: !115, line: 1069, baseType: !4160, size: 64, offset: 768)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4452, file: !115, line: 1070, baseType: !254, size: 128, offset: 832)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4452, file: !115, line: 1071, baseType: !4483, offset: 960)
!4483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4484, elements: !2268)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !4485)
!4485 = !{!4486, !4487, !4497, !4560, !4561, !4562}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4484, file: !115, line: 1010, baseType: !4346, size: 2304)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4484, file: !115, line: 1011, baseType: !4488, size: 448, offset: 2304)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !4489)
!4489 = !{!4490, !4491, !4492, !4493, !4494, !4495, !4496}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4488, file: !115, line: 987, baseType: !152, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4488, file: !115, line: 988, baseType: !152, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4488, file: !115, line: 989, baseType: !152, size: 64, offset: 128)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4488, file: !115, line: 990, baseType: !152, size: 64, offset: 192)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4488, file: !115, line: 991, baseType: !152, size: 64, offset: 256)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4488, file: !115, line: 992, baseType: !152, size: 64, offset: 320)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4488, file: !115, line: 993, baseType: !152, size: 64, offset: 384)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4484, file: !115, line: 1012, baseType: !4498, size: 64, offset: 2752)
!4498 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4499, line: 12, baseType: !4500)
!4499 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{null, !4503}
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2240, line: 55, size: 2880, elements: !4505)
!4505 = !{!4506, !4507, !4508, !4509, !4510, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4504, file: !2240, line: 56, baseType: !4334, size: 256)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4504, file: !2240, line: 57, baseType: !4327, size: 448, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4504, file: !2240, line: 58, baseType: !3432, size: 64, offset: 704)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4504, file: !2240, line: 59, baseType: !4498, size: 64, offset: 768)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4504, file: !2240, line: 60, baseType: !4511, size: 64, offset: 832)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !4513)
!4513 = !{!4514, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4512, file: !108, line: 111, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !4516)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!4519, !188, !150}
!4519 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4512, file: !108, line: 112, baseType: !150, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4512, file: !108, line: 113, baseType: !150, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4512, file: !108, line: 114, baseType: !4511, size: 64, offset: 192)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4512, file: !108, line: 115, baseType: !4515, size: 64, offset: 256)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4512, file: !108, line: 116, baseType: !1422, size: 64, offset: 320)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4512, file: !108, line: 117, baseType: !4511, size: 64, offset: 384)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4512, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4512, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4512, file: !108, line: 120, baseType: !152, size: 64, offset: 512)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4512, file: !108, line: 121, baseType: !152, size: 64, offset: 576)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4512, file: !108, line: 122, baseType: !252, size: 64, offset: 640)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4512, file: !108, line: 123, baseType: !2238, size: 64, offset: 704)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4504, file: !2240, line: 61, baseType: !7, size: 32, offset: 896)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4504, file: !2240, line: 62, baseType: !7, size: 32, offset: 928)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4504, file: !2240, line: 63, baseType: !7, size: 32, offset: 960)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4504, file: !2240, line: 64, baseType: !7, size: 32, offset: 992)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4504, file: !2240, line: 65, baseType: !7, size: 32, offset: 1024)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4504, file: !2240, line: 66, baseType: !7, size: 32, offset: 1056)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4504, file: !2240, line: 67, baseType: !152, size: 64, offset: 1088)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4504, file: !2240, line: 68, baseType: !7, size: 32, offset: 1152)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4504, file: !2240, line: 69, baseType: !825, size: 32, offset: 1184)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4504, file: !2240, line: 70, baseType: !188, size: 32, offset: 1216)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4504, file: !2240, line: 71, baseType: !851, offset: 1248)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4504, file: !2240, line: 72, baseType: !4544, size: 64, offset: 1280)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4504, file: !2240, line: 73, baseType: !4369, size: 64, offset: 1344)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4504, file: !2240, line: 81, baseType: !152, size: 64, offset: 1408)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4504, file: !2240, line: 82, baseType: !825, size: 32, offset: 1472)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4504, file: !2240, line: 83, baseType: !979, size: 128, offset: 1536)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4504, file: !2240, line: 85, baseType: !7, size: 32, offset: 1664)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4504, file: !2240, line: 86, baseType: !7, size: 32, offset: 1696)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4504, file: !2240, line: 87, baseType: !7, size: 32, offset: 1728)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4504, file: !2240, line: 88, baseType: !7, size: 32, offset: 1760)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4504, file: !2240, line: 91, baseType: !2238, size: 64, offset: 1792)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4504, file: !2240, line: 98, baseType: !396, size: 128, align: 64, offset: 1856)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4504, file: !2240, line: 99, baseType: !248, size: 512, offset: 1984)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4504, file: !2240, line: 101, baseType: !752, size: 192, offset: 2496)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4504, file: !2240, line: 102, baseType: !188, size: 32, offset: 2688)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4504, file: !2240, line: 103, baseType: !659, size: 64, offset: 2752)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4504, file: !2240, line: 104, baseType: !252, size: 64, offset: 2816)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4484, file: !115, line: 1013, baseType: !199, size: 32, offset: 2816)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4484, file: !115, line: 1014, baseType: !199, size: 32, offset: 2848)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4484, file: !115, line: 1015, baseType: !1611, size: 64, offset: 2880)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4161, file: !94, line: 175, baseType: !4160, size: 64, offset: 576)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4161, file: !94, line: 182, baseType: !4303, size: 64, offset: 640)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4161, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4161, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4161, file: !94, line: 185, baseType: !817, size: 128, offset: 768)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4161, file: !94, line: 186, baseType: !752, size: 192, offset: 896)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4161, file: !94, line: 187, baseType: !4570, offset: 1088)
!4570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2268)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !245, file: !73, line: 499, baseType: !254, size: 128, offset: 4224)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !245, file: !73, line: 502, baseType: !4573, size: 64, offset: 4352)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4575)
!4575 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !245, file: !73, line: 504, baseType: !4577, size: 64, offset: 4416)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !245, file: !73, line: 505, baseType: !448, size: 64, offset: 4480)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !245, file: !73, line: 510, baseType: !448, size: 64, offset: 4544)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !245, file: !73, line: 511, baseType: !4581, size: 64, offset: 4608)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4583)
!4583 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !245, file: !73, line: 513, baseType: !4585, size: 64, offset: 4672)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4587)
!4587 = !{!4588, !4589}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4586, file: !73, line: 293, baseType: !7, size: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4586, file: !73, line: 294, baseType: !152, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !245, file: !73, line: 515, baseType: !254, size: 128, offset: 4736)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !245, file: !73, line: 526, baseType: !4592, offset: 4864)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4593, line: 5, elements: !281)
!4593 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !245, file: !73, line: 528, baseType: !4174, size: 64, offset: 4864)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !245, file: !73, line: 529, baseType: !4187, size: 64, offset: 4928)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !245, file: !73, line: 534, baseType: !539, size: 32, offset: 4992)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !245, file: !73, line: 535, baseType: !199, size: 32, offset: 5024)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !245, file: !73, line: 537, baseType: !267, offset: 5056)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !245, file: !73, line: 538, baseType: !254, size: 128, offset: 5056)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !245, file: !73, line: 540, baseType: !4601, size: 64, offset: 5184)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4603, line: 54, size: 960, elements: !4604)
!4603 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610, !4611, !4615, !4619, !4620, !4621, !4622, !4626, !4630, !4631}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4602, file: !4603, line: 55, baseType: !252, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4602, file: !4603, line: 56, baseType: !659, size: 64, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4602, file: !4603, line: 58, baseType: !359, size: 64, offset: 128)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4602, file: !4603, line: 59, baseType: !359, size: 64, offset: 192)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4602, file: !4603, line: 60, baseType: !260, size: 64, offset: 256)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4602, file: !4603, line: 62, baseType: !3894, size: 64, offset: 320)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4602, file: !4603, line: 63, baseType: !4612, size: 64, offset: 384)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!308, !1984, !3901}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4602, file: !4603, line: 65, baseType: !4616, size: 64, offset: 448)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{null, !4601}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4602, file: !4603, line: 66, baseType: !3903, size: 64, offset: 512)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4602, file: !4603, line: 68, baseType: !3912, size: 64, offset: 576)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4602, file: !4603, line: 70, baseType: !3714, size: 64, offset: 640)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4602, file: !4603, line: 71, baseType: !4623, size: 64, offset: 704)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!2881, !1984}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4602, file: !4603, line: 73, baseType: !4627, size: 64, offset: 768)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !1984, !3746, !3747}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4602, file: !4603, line: 75, baseType: !3907, size: 64, offset: 832)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4602, file: !4603, line: 77, baseType: !4024, size: 64, offset: 896)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !245, file: !73, line: 541, baseType: !359, size: 64, offset: 5248)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !73, line: 543, baseType: !3903, size: 64, offset: 5312)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !245, file: !73, line: 544, baseType: !4635, size: 64, offset: 5376)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !245, file: !73, line: 545, baseType: !4638, size: 64, offset: 5440)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !245, file: !73, line: 547, baseType: !516, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !245, file: !73, line: 548, baseType: !516, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !245, file: !73, line: 549, baseType: !516, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !245, file: !73, line: 550, baseType: !516, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dev_up", scope: !194, file: !195, line: 170, baseType: !516, size: 8, offset: 5760)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "fw_download_in_progress", scope: !194, file: !195, line: 171, baseType: !516, size: 8, offset: 5768)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "rf_mode", scope: !194, file: !195, line: 172, baseType: !214, size: 8, offset: 5776)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "polling", scope: !194, file: !195, line: 173, baseType: !516, size: 8, offset: 5784)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "active_target", scope: !194, file: !195, line: 174, baseType: !204, size: 64, offset: 5824)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dep_link_up", scope: !194, file: !195, line: 175, baseType: !516, size: 8, offset: 5888)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "genl_data", scope: !194, file: !195, line: 176, baseType: !4651, size: 256, offset: 5952)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfc_genl_data", file: !195, line: 152, size: 256, elements: !4652)
!4652 = !{!4653, !4654}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "poll_req_portid", scope: !4651, file: !195, line: 153, baseType: !199, size: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "genl_data_mutex", scope: !4651, file: !195, line: 154, baseType: !752, size: 192, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "supported_protocols", scope: !194, file: !195, line: 177, baseType: !199, size: 32, offset: 6208)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "secure_elements", scope: !194, file: !195, line: 179, baseType: !254, size: 128, offset: 6272)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "tx_headroom", scope: !194, file: !195, line: 181, baseType: !188, size: 32, offset: 6400)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tailroom", scope: !194, file: !195, line: 182, baseType: !188, size: 32, offset: 6432)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "check_pres_timer", scope: !194, file: !195, line: 184, baseType: !4072, size: 320, offset: 6464)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "check_pres_work", scope: !194, file: !195, line: 185, baseType: !2271, size: 256, offset: 6784)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "shutting_down", scope: !194, file: !195, line: 187, baseType: !516, size: 8, offset: 7040)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "rfkill", scope: !194, file: !195, line: 189, baseType: !4663, size: 64, offset: 7104)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DICompositeType(tag: DW_TAG_structure_type, name: "rfkill", file: !195, line: 189, flags: DIFlagFwdDecl)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_cmds", scope: !194, file: !195, line: 191, baseType: !4666, size: 64, offset: 7168)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfc_vendor_cmd", file: !195, line: 157, size: 128, elements: !4668)
!4668 = !{!4669, !4670, !4671}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !4667, file: !195, line: 158, baseType: !201, size: 32)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "subcmd", scope: !4667, file: !195, line: 159, baseType: !201, size: 32, offset: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "doit", scope: !4667, file: !195, line: 160, baseType: !4672, size: 64, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!188, !193, !150, !353}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "n_vendor_cmds", scope: !194, file: !195, line: 192, baseType: !188, size: 32, offset: 7232)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !194, file: !195, line: 194, baseType: !4677, size: 64, offset: 7296)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfc_ops", file: !195, line: 48, size: 1024, elements: !4679)
!4679 = !{!4680, !4684, !4685, !4689, !4693, !4698, !4699, !4703, !4707, !4849, !4853, !4857, !4861, !4862, !4866, !4867}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_up", scope: !4678, file: !195, line: 49, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!188, !193}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_down", scope: !4678, file: !195, line: 50, baseType: !4681, size: 64, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "start_poll", scope: !4678, file: !195, line: 51, baseType: !4686, size: 64, offset: 128)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!188, !193, !199, !199}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "stop_poll", scope: !4678, file: !195, line: 53, baseType: !4690, size: 64, offset: 192)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{null, !193}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dep_link_up", scope: !4678, file: !195, line: 54, baseType: !4694, size: 64, offset: 256)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!188, !193, !204, !214, !4697, !353}
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dep_link_down", scope: !4678, file: !195, line: 56, baseType: !4681, size: 64, offset: 320)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "activate_target", scope: !4678, file: !195, line: 57, baseType: !4700, size: 64, offset: 384)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!188, !193, !204, !199}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_target", scope: !4678, file: !195, line: 59, baseType: !4704, size: 64, offset: 448)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !193, !204, !214}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "im_transceive", scope: !4678, file: !195, line: 61, baseType: !4708, size: 64, offset: 512)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!188, !193, !204, !4711, !4845, !150}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !4713, line: 713, size: 1600, elements: !4714)
!4713 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/lizy2001/genbc/linux")
!4714 = !{!4715, !4732, !4737, !4742, !4746, !4758, !4759, !4760, !4761, !4762, !4763, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4809, !4810, !4811, !4812, !4814, !4815, !4820, !4825, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4840, !4841, !4842, !4843, !4844}
!4715 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !4713, line: 714, baseType: !4716, size: 192)
!4716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !4713, line: 714, size: 192, elements: !4717)
!4717 = !{!4718, !4730, !4731}
!4718 = !DIDerivedType(tag: DW_TAG_member, scope: !4716, file: !4713, line: 715, baseType: !4719, size: 192)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4716, file: !4713, line: 715, size: 192, elements: !4720)
!4720 = !{!4721, !4722, !4723}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4719, file: !4713, line: 717, baseType: !4711, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4719, file: !4713, line: 718, baseType: !4711, size: 64, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, scope: !4719, file: !4713, line: 720, baseType: !4724, size: 64, offset: 128)
!4724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4719, file: !4713, line: 720, size: 64, elements: !4725)
!4725 = !{!4726, !4729}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4724, file: !4713, line: 721, baseType: !4727, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !4713, line: 242, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !4724, file: !4713, line: 726, baseType: !152, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !4716, file: !4713, line: 729, baseType: !838, size: 192, align: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4716, file: !4713, line: 730, baseType: !254, size: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !4713, line: 733, baseType: !4733, size: 64, offset: 192)
!4733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !4713, line: 733, size: 64, elements: !4734)
!4734 = !{!4735, !4736}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !4733, file: !4713, line: 734, baseType: !3731, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "ip_defrag_offset", scope: !4733, file: !4713, line: 735, baseType: !188, size: 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !4713, line: 738, baseType: !4738, size: 64, offset: 256)
!4738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !4713, line: 738, size: 64, elements: !4739)
!4739 = !{!4740, !4741}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !4738, file: !4713, line: 739, baseType: !1500, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !4738, file: !4713, line: 740, baseType: !448, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !4712, file: !4713, line: 748, baseType: !4743, size: 384, align: 64, offset: 320)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 384, elements: !4744)
!4744 = !{!4745}
!4745 = !DISubrange(count: 48)
!4746 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !4713, line: 750, baseType: !4747, size: 128, offset: 704)
!4747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !4713, line: 750, size: 128, elements: !4748)
!4748 = !{!4749, !4757}
!4749 = !DIDerivedType(tag: DW_TAG_member, scope: !4747, file: !4713, line: 751, baseType: !4750, size: 128)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4747, file: !4713, line: 751, size: 128, elements: !4751)
!4751 = !{!4752, !4753}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !4750, file: !4713, line: 752, baseType: !152, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !4750, file: !4713, line: 753, baseType: !4754, size: 64, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{null, !4711}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !4747, file: !4713, line: 755, baseType: !254, size: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4712, file: !4713, line: 761, baseType: !7, size: 32, offset: 832)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !4712, file: !4713, line: 762, baseType: !7, size: 32, offset: 864)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !4712, file: !4713, line: 763, baseType: !211, size: 16, offset: 896)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !4712, file: !4713, line: 764, baseType: !211, size: 16, offset: 912)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !4712, file: !4713, line: 769, baseType: !211, size: 16, offset: 928)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !4712, file: !4713, line: 780, baseType: !4764, offset: 944)
!4764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !1888)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !4712, file: !4713, line: 782, baseType: !215, size: 1, offset: 944, flags: DIFlagBitField, extraData: i64 944)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !4712, file: !4713, line: 783, baseType: !215, size: 1, offset: 945, flags: DIFlagBitField, extraData: i64 944)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !4712, file: !4713, line: 784, baseType: !215, size: 2, offset: 946, flags: DIFlagBitField, extraData: i64 944)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !4712, file: !4713, line: 785, baseType: !215, size: 1, offset: 948, flags: DIFlagBitField, extraData: i64 944)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !4712, file: !4713, line: 786, baseType: !215, size: 1, offset: 949, flags: DIFlagBitField, extraData: i64 944)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !4712, file: !4713, line: 787, baseType: !215, size: 1, offset: 950, flags: DIFlagBitField, extraData: i64 944)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "headers_start", scope: !4712, file: !4713, line: 795, baseType: !4772, offset: 960)
!4772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, elements: !1888)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4712, file: !4713, line: 807, baseType: !4764, offset: 960)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4712, file: !4713, line: 809, baseType: !215, size: 3, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4712, file: !4713, line: 810, baseType: !215, size: 1, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "nf_trace", scope: !4712, file: !4713, line: 811, baseType: !215, size: 1, offset: 964, flags: DIFlagBitField, extraData: i64 960)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4712, file: !4713, line: 812, baseType: !215, size: 2, offset: 965, flags: DIFlagBitField, extraData: i64 960)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4712, file: !4713, line: 813, baseType: !215, size: 1, offset: 967, flags: DIFlagBitField, extraData: i64 960)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4712, file: !4713, line: 815, baseType: !215, size: 1, offset: 968, flags: DIFlagBitField, extraData: i64 960)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4712, file: !4713, line: 816, baseType: !215, size: 1, offset: 969, flags: DIFlagBitField, extraData: i64 960)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4712, file: !4713, line: 817, baseType: !215, size: 1, offset: 970, flags: DIFlagBitField, extraData: i64 960)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4712, file: !4713, line: 818, baseType: !215, size: 1, offset: 971, flags: DIFlagBitField, extraData: i64 960)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4712, file: !4713, line: 819, baseType: !215, size: 1, offset: 972, flags: DIFlagBitField, extraData: i64 960)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4712, file: !4713, line: 821, baseType: !215, size: 1, offset: 973, flags: DIFlagBitField, extraData: i64 960)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4712, file: !4713, line: 822, baseType: !215, size: 1, offset: 974, flags: DIFlagBitField, extraData: i64 960)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4712, file: !4713, line: 823, baseType: !215, size: 1, offset: 975, flags: DIFlagBitField, extraData: i64 960)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_vlan_present_offset", scope: !4712, file: !4713, line: 832, baseType: !4764, offset: 976)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_present", scope: !4712, file: !4713, line: 834, baseType: !215, size: 1, offset: 976, flags: DIFlagBitField, extraData: i64 976)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4712, file: !4713, line: 835, baseType: !215, size: 1, offset: 977, flags: DIFlagBitField, extraData: i64 976)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4712, file: !4713, line: 836, baseType: !215, size: 2, offset: 978, flags: DIFlagBitField, extraData: i64 976)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "csum_not_inet", scope: !4712, file: !4713, line: 837, baseType: !215, size: 1, offset: 980, flags: DIFlagBitField, extraData: i64 976)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4712, file: !4713, line: 838, baseType: !215, size: 1, offset: 981, flags: DIFlagBitField, extraData: i64 976)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4712, file: !4713, line: 840, baseType: !215, size: 2, offset: 982, flags: DIFlagBitField, extraData: i64 976)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "ipvs_property", scope: !4712, file: !4713, line: 843, baseType: !215, size: 1, offset: 984, flags: DIFlagBitField, extraData: i64 976)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4712, file: !4713, line: 844, baseType: !215, size: 1, offset: 985, flags: DIFlagBitField, extraData: i64 976)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4712, file: !4713, line: 845, baseType: !215, size: 1, offset: 986, flags: DIFlagBitField, extraData: i64 976)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "offload_fwd_mark", scope: !4712, file: !4713, line: 847, baseType: !215, size: 1, offset: 987, flags: DIFlagBitField, extraData: i64 976)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "offload_l3_fwd_mark", scope: !4712, file: !4713, line: 848, baseType: !215, size: 1, offset: 988, flags: DIFlagBitField, extraData: i64 976)
!4799 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !4713, line: 866, baseType: !4800, size: 32, offset: 992)
!4800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !4713, line: 866, size: 32, elements: !4801)
!4801 = !{!4802, !4804}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4800, file: !4713, line: 867, baseType: !4803, size: 32)
!4803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !2043, line: 37, baseType: !201)
!4804 = !DIDerivedType(tag: DW_TAG_member, scope: !4800, file: !4713, line: 868, baseType: !4805, size: 32)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4800, file: !4713, line: 868, size: 32, elements: !4806)
!4806 = !{!4807, !4808}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4805, file: !4713, line: 869, baseType: !211, size: 16)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4805, file: !4713, line: 870, baseType: !211, size: 16, offset: 16)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4712, file: !4713, line: 873, baseType: !201, size: 32, offset: 1024)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4712, file: !4713, line: 874, baseType: !188, size: 32, offset: 1056)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4712, file: !4713, line: 875, baseType: !201, size: 32, offset: 1088)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4712, file: !4713, line: 876, baseType: !4813, size: 16, offset: 1120)
!4813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !2043, line: 30, baseType: !211)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4712, file: !4713, line: 877, baseType: !211, size: 16, offset: 1136)
!4815 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !4713, line: 879, baseType: !4816, size: 32, offset: 1152)
!4816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !4713, line: 879, size: 32, elements: !4817)
!4817 = !{!4818, !4819}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4816, file: !4713, line: 880, baseType: !7, size: 32)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4816, file: !4713, line: 881, baseType: !7, size: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !4713, line: 888, baseType: !4821, size: 32, offset: 1184)
!4821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !4713, line: 888, size: 32, elements: !4822)
!4822 = !{!4823, !4824}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4821, file: !4713, line: 889, baseType: !201, size: 32)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4821, file: !4713, line: 890, baseType: !201, size: 32)
!4825 = !DIDerivedType(tag: DW_TAG_member, scope: !4712, file: !4713, line: 893, baseType: !4826, size: 16, offset: 1216)
!4826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4712, file: !4713, line: 893, size: 16, elements: !4827)
!4827 = !{!4828, !4829}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4826, file: !4713, line: 894, baseType: !4813, size: 16)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4826, file: !4713, line: 895, baseType: !215, size: 8)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4712, file: !4713, line: 898, baseType: !211, size: 16, offset: 1232)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4712, file: !4713, line: 899, baseType: !211, size: 16, offset: 1248)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4712, file: !4713, line: 900, baseType: !211, size: 16, offset: 1264)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4712, file: !4713, line: 902, baseType: !4813, size: 16, offset: 1280)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4712, file: !4713, line: 903, baseType: !211, size: 16, offset: 1296)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4712, file: !4713, line: 904, baseType: !211, size: 16, offset: 1312)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4712, file: !4713, line: 905, baseType: !211, size: 16, offset: 1328)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "headers_end", scope: !4712, file: !4713, line: 908, baseType: !4772, offset: 1344)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4712, file: !4713, line: 912, baseType: !4839, size: 32, offset: 1344)
!4839 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !4713, line: 606, baseType: !7)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4712, file: !4713, line: 913, baseType: !4839, size: 32, offset: 1376)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4712, file: !4713, line: 914, baseType: !2338, size: 64, offset: 1408)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4712, file: !4713, line: 915, baseType: !2338, size: 64, offset: 1472)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !4712, file: !4713, line: 916, baseType: !7, size: 32, offset: 1536)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4712, file: !4713, line: 917, baseType: !1048, size: 32, offset: 1568)
!4845 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_exchange_cb_t", file: !195, line: 41, baseType: !4846)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{null, !150, !4711, !188}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "tm_send", scope: !4678, file: !195, line: 64, baseType: !4850, size: 64, offset: 576)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!188, !193, !4711}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "check_presence", scope: !4678, file: !195, line: 65, baseType: !4854, size: 64, offset: 640)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!188, !193, !204}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "fw_download", scope: !4678, file: !195, line: 66, baseType: !4858, size: 64, offset: 704)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!188, !193, !252}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "discover_se", scope: !4678, file: !195, line: 69, baseType: !4681, size: 64, offset: 768)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "enable_se", scope: !4678, file: !195, line: 70, baseType: !4863, size: 64, offset: 832)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!188, !193, !199}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "disable_se", scope: !4678, file: !195, line: 71, baseType: !4863, size: 64, offset: 896)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "se_io", scope: !4678, file: !195, line: 72, baseType: !4868, size: 64, offset: 960)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!188, !193, !199, !4697, !353, !4871, !150}
!4871 = !DIDerivedType(tag: DW_TAG_typedef, name: "se_io_cb_t", file: !195, line: 44, baseType: !4872)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !150, !4697, !353, !188}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cmd_info", scope: !194, file: !195, line: 195, baseType: !4876, size: 64, offset: 7360)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DICompositeType(tag: DW_TAG_structure_type, name: "genl_info", file: !195, line: 195, flags: DIFlagFwdDecl)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !190, file: !182, line: 197, baseType: !4879, size: 64, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "hci_dev", scope: !190, file: !182, line: 198, baseType: !4881, size: 64, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nci_hci_dev", file: !182, line: 178, size: 6272, elements: !4883)
!4883 = !{!4884, !4885, !4886, !4906, !4921, !4927, !4931, !4932, !4933, !4940, !4941}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "nfcee_id", scope: !4882, file: !182, line: 179, baseType: !214, size: 8)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "ndev", scope: !4882, file: !182, line: 180, baseType: !189, size: 64, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "conn_info", scope: !4882, file: !182, line: 181, baseType: !4887, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nci_conn_info", file: !182, line: 98, size: 512, elements: !4889)
!4889 = !{!4890, !4891, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4888, file: !182, line: 99, baseType: !254, size: 128)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "dest_params", scope: !4888, file: !182, line: 105, baseType: !4892, size: 64, offset: 128)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dest_spec_params", file: !4894, line: 239, size: 16, elements: !4895)
!4894 = !DIFile(filename: "./include/net/nfc/nci.h", directory: "/home/lizy2001/genbc/linux")
!4895 = !{!4896, !4897}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4893, file: !4894, line: 240, baseType: !215, size: 8)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4893, file: !4894, line: 241, baseType: !215, size: 8, offset: 8)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "dest_type", scope: !4888, file: !182, line: 106, baseType: !215, size: 8, offset: 192)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !4888, file: !182, line: 107, baseType: !215, size: 8, offset: 200)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "max_pkt_payload_len", scope: !4888, file: !182, line: 108, baseType: !215, size: 8, offset: 208)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "credits_cnt", scope: !4888, file: !182, line: 110, baseType: !825, size: 32, offset: 224)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "initial_num_credits", scope: !4888, file: !182, line: 111, baseType: !215, size: 8, offset: 256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "data_exchange_cb", scope: !4888, file: !182, line: 113, baseType: !4845, size: 64, offset: 320)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "data_exchange_cb_context", scope: !4888, file: !182, line: 114, baseType: !150, size: 64, offset: 384)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "rx_skb", scope: !4888, file: !182, line: 116, baseType: !4711, size: 64, offset: 448)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !4882, file: !182, line: 183, baseType: !4907, size: 1280, offset: 192)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nci_hci_init_data", file: !182, line: 170, size: 1280, elements: !4908)
!4908 = !{!4909, !4910, !4919}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "gate_count", scope: !4907, file: !182, line: 171, baseType: !214, size: 8)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "gates", scope: !4907, file: !182, line: 172, baseType: !4911, size: 1200, offset: 8)
!4911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4912, size: 1200, elements: !4917)
!4912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nci_hci_gate", file: !182, line: 159, size: 24, elements: !4913)
!4913 = !{!4914, !4915, !4916}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !4912, file: !182, line: 160, baseType: !214, size: 8)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4912, file: !182, line: 161, baseType: !214, size: 8, offset: 8)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "dest_host", scope: !4912, file: !182, line: 162, baseType: !214, size: 8, offset: 16)
!4917 = !{!4918}
!4918 = !DISubrange(count: 50)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !4907, file: !182, line: 173, baseType: !4920, size: 72, offset: 1208)
!4920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 72, elements: !3981)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !4882, file: !182, line: 184, baseType: !4922, size: 2048, offset: 1472)
!4922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4923, size: 2048, elements: !3971)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nci_hci_pipe", file: !182, line: 165, size: 16, elements: !4924)
!4924 = !{!4925, !4926}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !4923, file: !182, line: 166, baseType: !214, size: 8)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !4923, file: !182, line: 167, baseType: !214, size: 8, offset: 8)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "gate2pipe", scope: !4882, file: !182, line: 185, baseType: !4928, size: 2048, offset: 3520)
!4928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 2048, elements: !4929)
!4929 = !{!4930}
!4930 = !DISubrange(count: 256)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "expected_pipes", scope: !4882, file: !182, line: 186, baseType: !188, size: 32, offset: 5568)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "count_pipes", scope: !4882, file: !182, line: 187, baseType: !188, size: 32, offset: 5600)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "rx_hcp_frags", scope: !4882, file: !182, line: 189, baseType: !4934, size: 192, offset: 5632)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff_head", file: !4713, line: 291, size: 192, elements: !4935)
!4935 = !{!4936, !4937, !4938, !4939}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4934, file: !4713, line: 293, baseType: !4711, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4934, file: !4713, line: 294, baseType: !4711, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !4934, file: !4713, line: 296, baseType: !201, size: 32, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4934, file: !4713, line: 297, baseType: !267, offset: 160)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "msg_rx_work", scope: !4882, file: !182, line: 190, baseType: !2271, size: 256, offset: 5824)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "msg_rx_queue", scope: !4882, file: !182, line: 191, baseType: !4934, size: 192, offset: 6080)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "tx_headroom", scope: !190, file: !182, line: 200, baseType: !188, size: 32, offset: 192)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tailroom", scope: !190, file: !182, line: 201, baseType: !188, size: 32, offset: 224)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !190, file: !182, line: 203, baseType: !825, size: 32, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !182, line: 204, baseType: !152, size: 64, offset: 320)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_cnt", scope: !190, file: !182, line: 206, baseType: !825, size: 32, offset: 384)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "cur_conn_id", scope: !190, file: !182, line: 207, baseType: !215, size: 8, offset: 416)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "conn_info_list", scope: !190, file: !182, line: 209, baseType: !254, size: 128, offset: 448)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "rf_conn_info", scope: !190, file: !182, line: 210, baseType: !4887, size: 64, offset: 576)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_timer", scope: !190, file: !182, line: 212, baseType: !4072, size: 320, offset: 640)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "data_timer", scope: !190, file: !182, line: 213, baseType: !4072, size: 320, offset: 960)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_wq", scope: !190, file: !182, line: 215, baseType: !3542, size: 64, offset: 1280)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_work", scope: !190, file: !182, line: 216, baseType: !2271, size: 256, offset: 1344)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "rx_wq", scope: !190, file: !182, line: 218, baseType: !3542, size: 64, offset: 1600)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "rx_work", scope: !190, file: !182, line: 219, baseType: !2271, size: 256, offset: 1664)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "tx_wq", scope: !190, file: !182, line: 221, baseType: !3542, size: 64, offset: 1920)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "tx_work", scope: !190, file: !182, line: 222, baseType: !2271, size: 256, offset: 1984)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_q", scope: !190, file: !182, line: 224, baseType: !4934, size: 192, offset: 2240)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "rx_q", scope: !190, file: !182, line: 225, baseType: !4934, size: 192, offset: 2432)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "tx_q", scope: !190, file: !182, line: 226, baseType: !4934, size: 192, offset: 2624)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "req_lock", scope: !190, file: !182, line: 228, baseType: !752, size: 192, offset: 2816)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "req_completion", scope: !190, file: !182, line: 229, baseType: !1692, size: 192, offset: 3008)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "req_status", scope: !190, file: !182, line: 230, baseType: !201, size: 32, offset: 3200)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "req_result", scope: !190, file: !182, line: 231, baseType: !201, size: 32, offset: 3232)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !190, file: !182, line: 233, baseType: !150, size: 64, offset: 3264)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "poll_prots", scope: !190, file: !182, line: 235, baseType: !201, size: 32, offset: 3328)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "target_active_prot", scope: !190, file: !182, line: 236, baseType: !201, size: 32, offset: 3360)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "targets", scope: !190, file: !182, line: 238, baseType: !4969, size: 6080, offset: 3392)
!4969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 6080, elements: !220)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "n_targets", scope: !190, file: !182, line: 239, baseType: !188, size: 32, offset: 9472)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "nci_ver", scope: !190, file: !182, line: 242, baseType: !215, size: 8, offset: 9504)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "nfcc_features", scope: !190, file: !182, line: 245, baseType: !201, size: 32, offset: 9536)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "num_supported_rf_interfaces", scope: !190, file: !182, line: 246, baseType: !215, size: 8, offset: 9568)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "supported_rf_interfaces", scope: !190, file: !182, line: 247, baseType: !4975, size: 32, offset: 9576)
!4975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32, elements: !1367)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "max_logical_connections", scope: !190, file: !182, line: 249, baseType: !215, size: 8, offset: 9608)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "max_routing_table_size", scope: !190, file: !182, line: 250, baseType: !211, size: 16, offset: 9616)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "max_ctrl_pkt_payload_len", scope: !190, file: !182, line: 251, baseType: !215, size: 8, offset: 9632)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "max_size_for_large_params", scope: !190, file: !182, line: 252, baseType: !211, size: 16, offset: 9648)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "manufact_id", scope: !190, file: !182, line: 253, baseType: !215, size: 8, offset: 9664)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "manufact_specific_info", scope: !190, file: !182, line: 254, baseType: !201, size: 32, offset: 9696)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "cur_params", scope: !190, file: !182, line: 257, baseType: !4893, size: 16, offset: 9728)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "cur_dest_type", scope: !190, file: !182, line: 259, baseType: !215, size: 8, offset: 9744)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "rx_data_reassembly", scope: !190, file: !182, line: 262, baseType: !4711, size: 64, offset: 9792)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "remote_gb", scope: !190, file: !182, line: 265, baseType: !4986, size: 384, offset: 9856)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 384, elements: !4744)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "remote_gb_len", scope: !190, file: !182, line: 266, baseType: !215, size: 8, offset: 10240)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !181, file: !182, line: 66, baseType: !185, size: 64, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !181, file: !182, line: 67, baseType: !185, size: 64, offset: 128)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !181, file: !182, line: 68, baseType: !4991, size: 64, offset: 192)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!188, !189, !4711}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !181, file: !182, line: 69, baseType: !185, size: 64, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "post_setup", scope: !181, file: !182, line: 70, baseType: !185, size: 64, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "fw_download", scope: !181, file: !182, line: 71, baseType: !4997, size: 64, offset: 384)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!188, !189, !252}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "get_rfprotocol", scope: !181, file: !182, line: 72, baseType: !5001, size: 64, offset: 448)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!201, !189, !215}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "discover_se", scope: !181, file: !182, line: 73, baseType: !185, size: 64, offset: 512)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "disable_se", scope: !181, file: !182, line: 74, baseType: !5006, size: 64, offset: 576)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!188, !189, !199}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "enable_se", scope: !181, file: !182, line: 75, baseType: !5006, size: 64, offset: 640)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "se_io", scope: !181, file: !182, line: 76, baseType: !5011, size: 64, offset: 704)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!188, !189, !199, !4697, !353, !4871, !150}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "hci_load_session", scope: !181, file: !182, line: 79, baseType: !185, size: 64, offset: 768)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "hci_event_received", scope: !181, file: !182, line: 80, baseType: !5016, size: 64, offset: 832)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{null, !189, !214, !214, !4711}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "hci_cmd_received", scope: !181, file: !182, line: 82, baseType: !5016, size: 64, offset: 896)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "prop_ops", scope: !181, file: !182, line: 85, baseType: !5021, size: 64, offset: 960)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nci_driver_ops", file: !182, line: 58, size: 192, elements: !5023)
!5023 = !{!5024, !5025, !5026}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !5022, file: !182, line: 59, baseType: !211, size: 16)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !5022, file: !182, line: 60, baseType: !4991, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ntf", scope: !5022, file: !182, line: 61, baseType: !4991, size: 64, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "n_prop_ops", scope: !181, file: !182, line: 86, baseType: !353, size: 64, offset: 1024)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "core_ops", scope: !181, file: !182, line: 88, baseType: !5021, size: 64, offset: 1088)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "n_core_ops", scope: !181, file: !182, line: 89, baseType: !353, size: 64, offset: 1152)
!5030 = !{i32 7, !"Dwarf Version", i32 4}
!5031 = !{i32 2, !"Debug Info Version", i32 3}
!5032 = !{i32 1, !"wchar_size", i32 2}
!5033 = !{i32 1, !"Code Model", i32 2}
!5034 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5035 = distinct !DISubprogram(name: "nfcmrvl_nci_register_dev", scope: !3, file: !3, line: 103, type: !5036, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!5038, !128, !150, !5116, !1984, !5132}
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_private", file: !129, line: 64, size: 2112, elements: !5040)
!5040 = !{!5041, !5042, !5052, !5053, !5111, !5112, !5113, !5114, !5115}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5039, file: !129, line: 66, baseType: !152, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5039, file: !129, line: 69, baseType: !5043, size: 192, offset: 64)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_platform_data", file: !5044, line: 20, size: 192, elements: !5045)
!5044 = !DIFile(filename: "./include/linux/platform_data/nfcmrvl.h", directory: "/home/lizy2001/genbc/linux")
!5045 = !{!5046, !5047, !5048, !5049, !5050, !5051}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "reset_n_io", scope: !5043, file: !5044, line: 26, baseType: !188, size: 32)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "hci_muxed", scope: !5043, file: !5044, line: 28, baseType: !7, size: 32, offset: 32)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !5043, file: !5044, line: 35, baseType: !7, size: 32, offset: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "break_control", scope: !5043, file: !5044, line: 37, baseType: !7, size: 32, offset: 96)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5043, file: !5044, line: 44, baseType: !7, size: 32, offset: 128)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "irq_polarity", scope: !5043, file: !5044, line: 45, baseType: !7, size: 32, offset: 160)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "ndev", scope: !5039, file: !129, line: 72, baseType: !189, size: 64, offset: 256)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "fw_dnld", scope: !5039, file: !129, line: 75, baseType: !5054, size: 1472, offset: 320)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_fw_dnld", file: !5055, line: 72, size: 1472, elements: !5056)
!5055 = !DIFile(filename: "drivers/nfc/nfcmrvl/fw_dnld.h", directory: "/home/lizy2001/genbc/linux")
!5056 = !{!5057, !5061, !5065, !5100, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5054, file: !5055, line: 73, baseType: !5058, size: 264)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 264, elements: !5059)
!5059 = !{!5060}
!5060 = !DISubrange(count: 33)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "fw", scope: !5054, file: !5055, line: 74, baseType: !5062, size: 64, offset: 320)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5064)
!5064 = !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5055, line: 74, flags: DIFlagFwdDecl)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5054, file: !5055, line: 76, baseType: !5066, size: 64, offset: 384)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5068)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_fw", file: !5055, line: 62, size: 2240, elements: !5069)
!5069 = !{!5070, !5071, !5072, !5073, !5097, !5098, !5099}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5068, file: !5055, line: 63, baseType: !585, size: 32)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "ref_clock", scope: !5068, file: !5055, line: 64, baseType: !585, size: 32, offset: 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "phy", scope: !5068, file: !5055, line: 65, baseType: !585, size: 32, offset: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "bootrom", scope: !5068, file: !5055, line: 66, baseType: !5074, size: 544, offset: 96)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_fw_binary_config", file: !5055, line: 51, size: 544, elements: !5075)
!5075 = !{!5076, !5077}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5074, file: !5055, line: 52, baseType: !585, size: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, scope: !5074, file: !5055, line: 53, baseType: !5078, size: 512, offset: 32)
!5078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5074, file: !5055, line: 53, size: 512, elements: !5079)
!5079 = !{!5080, !5081, !5087, !5091, !5095}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5078, file: !5055, line: 54, baseType: !150, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "uart", scope: !5078, file: !5055, line: 55, baseType: !5082, size: 40)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_fw_uart_config", file: !5055, line: 38, size: 40, elements: !5083)
!5083 = !{!5084, !5086}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !5082, file: !5055, line: 39, baseType: !5085, size: 8)
!5085 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !149, line: 102, baseType: !214)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5082, file: !5055, line: 40, baseType: !585, size: 32, offset: 8)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !5078, file: !5055, line: 56, baseType: !5088, size: 32)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_fw_i2c_config", file: !5055, line: 43, size: 32, elements: !5089)
!5089 = !{!5090}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !5088, file: !5055, line: 44, baseType: !585, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !5078, file: !5055, line: 57, baseType: !5092, size: 32)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_fw_spi_config", file: !5055, line: 47, size: 32, elements: !5093)
!5093 = !{!5094}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !5092, file: !5055, line: 48, baseType: !585, size: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5078, file: !5055, line: 58, baseType: !5096, size: 512)
!5096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5085, size: 512, elements: !313)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "helper", scope: !5068, file: !5055, line: 67, baseType: !5074, size: 544, offset: 640)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "firmware", scope: !5068, file: !5055, line: 68, baseType: !5074, size: 544, offset: 1184)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5068, file: !5055, line: 69, baseType: !5096, size: 512, offset: 1728)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "binary_config", scope: !5054, file: !5055, line: 77, baseType: !5101, size: 64, offset: 448)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5074)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5054, file: !5055, line: 79, baseType: !188, size: 32, offset: 512)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "substate", scope: !5054, file: !5055, line: 80, baseType: !188, size: 32, offset: 544)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5054, file: !5055, line: 81, baseType: !188, size: 32, offset: 576)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_len", scope: !5054, file: !5055, line: 82, baseType: !188, size: 32, offset: 608)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "rx_wq", scope: !5054, file: !5055, line: 84, baseType: !3542, size: 64, offset: 640)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "rx_work", scope: !5054, file: !5055, line: 85, baseType: !2271, size: 256, offset: 704)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "rx_q", scope: !5054, file: !5055, line: 86, baseType: !4934, size: 192, offset: 960)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5054, file: !5055, line: 88, baseType: !4072, size: 320, offset: 1152)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "support_fw_dnld", scope: !5039, file: !129, line: 78, baseType: !516, size: 8, offset: 1792)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !5039, file: !129, line: 85, baseType: !150, size: 64, offset: 1856)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5039, file: !129, line: 87, baseType: !1984, size: 64, offset: 1920)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "phy", scope: !5039, file: !129, line: 89, baseType: !128, size: 32, offset: 1984)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "if_ops", scope: !5039, file: !129, line: 91, baseType: !5116, size: 64, offset: 2048)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfcmrvl_if_ops", file: !129, line: 94, size: 256, elements: !5118)
!5118 = !{!5119, !5123, !5124, !5128}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "nci_open", scope: !5117, file: !129, line: 95, baseType: !5120, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!188, !5038}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "nci_close", scope: !5117, file: !129, line: 96, baseType: !5120, size: 64, offset: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "nci_send", scope: !5117, file: !129, line: 97, baseType: !5125, size: 64, offset: 128)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!188, !5038, !4711}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "nci_update_config", scope: !5117, file: !129, line: 98, baseType: !5129, size: 64, offset: 192)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{null, !5038, !2881}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5133 = !DILocalVariable(name: "phy", arg: 1, scope: !5035, file: !3, line: 103, type: !128)
!5134 = !DILocation(line: 103, column: 67, scope: !5035)
!5135 = !DILocalVariable(name: "drv_data", arg: 2, scope: !5035, file: !3, line: 104, type: !150)
!5136 = !DILocation(line: 104, column: 11, scope: !5035)
!5137 = !DILocalVariable(name: "ops", arg: 3, scope: !5035, file: !3, line: 105, type: !5116)
!5138 = !DILocation(line: 105, column: 28, scope: !5035)
!5139 = !DILocalVariable(name: "dev", arg: 4, scope: !5035, file: !3, line: 106, type: !1984)
!5140 = !DILocation(line: 106, column: 20, scope: !5035)
!5141 = !DILocalVariable(name: "pdata", arg: 5, scope: !5035, file: !3, line: 107, type: !5132)
!5142 = !DILocation(line: 107, column: 35, scope: !5035)
!5143 = !DILocalVariable(name: "priv", scope: !5035, file: !3, line: 109, type: !5038)
!5144 = !DILocation(line: 109, column: 26, scope: !5035)
!5145 = !DILocalVariable(name: "rc", scope: !5035, file: !3, line: 110, type: !188)
!5146 = !DILocation(line: 110, column: 6, scope: !5035)
!5147 = !DILocalVariable(name: "headroom", scope: !5035, file: !3, line: 111, type: !188)
!5148 = !DILocation(line: 111, column: 6, scope: !5035)
!5149 = !DILocalVariable(name: "tailroom", scope: !5035, file: !3, line: 112, type: !188)
!5150 = !DILocation(line: 112, column: 6, scope: !5035)
!5151 = !DILocalVariable(name: "protocols", scope: !5035, file: !3, line: 113, type: !199)
!5152 = !DILocation(line: 113, column: 6, scope: !5035)
!5153 = !DILocation(line: 115, column: 9, scope: !5035)
!5154 = !DILocation(line: 115, column: 7, scope: !5035)
!5155 = !DILocation(line: 116, column: 7, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 116, column: 6)
!5157 = !DILocation(line: 116, column: 6, scope: !5035)
!5158 = !DILocation(line: 117, column: 10, scope: !5156)
!5159 = !DILocation(line: 117, column: 3, scope: !5156)
!5160 = !DILocation(line: 119, column: 19, scope: !5035)
!5161 = !DILocation(line: 119, column: 2, scope: !5035)
!5162 = !DILocation(line: 119, column: 8, scope: !5035)
!5163 = !DILocation(line: 119, column: 17, scope: !5035)
!5164 = !DILocation(line: 120, column: 17, scope: !5035)
!5165 = !DILocation(line: 120, column: 2, scope: !5035)
!5166 = !DILocation(line: 120, column: 8, scope: !5035)
!5167 = !DILocation(line: 120, column: 15, scope: !5035)
!5168 = !DILocation(line: 121, column: 14, scope: !5035)
!5169 = !DILocation(line: 121, column: 2, scope: !5035)
!5170 = !DILocation(line: 121, column: 8, scope: !5035)
!5171 = !DILocation(line: 121, column: 12, scope: !5035)
!5172 = !DILocation(line: 122, column: 14, scope: !5035)
!5173 = !DILocation(line: 122, column: 2, scope: !5035)
!5174 = !DILocation(line: 122, column: 8, scope: !5035)
!5175 = !DILocation(line: 122, column: 12, scope: !5035)
!5176 = !DILocation(line: 124, column: 10, scope: !5035)
!5177 = !DILocation(line: 124, column: 16, scope: !5035)
!5178 = !DILocation(line: 124, column: 2, scope: !5035)
!5179 = !DILocation(line: 124, column: 24, scope: !5035)
!5180 = !DILocation(line: 126, column: 20, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 126, column: 6)
!5182 = !DILocation(line: 126, column: 26, scope: !5181)
!5183 = !DILocation(line: 126, column: 33, scope: !5181)
!5184 = !DILocation(line: 126, column: 6, scope: !5181)
!5185 = !DILocation(line: 126, column: 6, scope: !5035)
!5186 = !DILocation(line: 127, column: 25, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 126, column: 46)
!5188 = !DILocation(line: 127, column: 31, scope: !5187)
!5189 = !DILocation(line: 127, column: 38, scope: !5187)
!5190 = !DILocation(line: 127, column: 8, scope: !5187)
!5191 = !DILocation(line: 127, column: 6, scope: !5187)
!5192 = !DILocation(line: 130, column: 7, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 130, column: 7)
!5194 = !DILocation(line: 130, column: 10, scope: !5193)
!5195 = !DILocation(line: 130, column: 7, scope: !5187)
!5196 = !DILocation(line: 131, column: 4, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 130, column: 15)
!5198 = !DILocation(line: 131, column: 10, scope: !5197)
!5199 = !DILocation(line: 131, column: 17, scope: !5197)
!5200 = !DILocation(line: 131, column: 28, scope: !5197)
!5201 = !DILocation(line: 132, column: 4, scope: !5197)
!5202 = !DILocation(line: 133, column: 3, scope: !5197)
!5203 = !DILocation(line: 134, column: 2, scope: !5187)
!5204 = !DILocation(line: 136, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 136, column: 6)
!5206 = !DILocation(line: 136, column: 10, scope: !5205)
!5207 = !DILocation(line: 136, column: 6, scope: !5035)
!5208 = !DILocation(line: 137, column: 12, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 136, column: 30)
!5210 = !DILocation(line: 138, column: 12, scope: !5209)
!5211 = !DILocation(line: 139, column: 2, scope: !5209)
!5212 = !DILocation(line: 140, column: 23, scope: !5205)
!5213 = !DILocation(line: 140, column: 12, scope: !5205)
!5214 = !DILocation(line: 142, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 142, column: 6)
!5216 = !DILocation(line: 142, column: 12, scope: !5215)
!5217 = !DILocation(line: 142, column: 19, scope: !5215)
!5218 = !DILocation(line: 142, column: 6, scope: !5035)
!5219 = !DILocation(line: 143, column: 12, scope: !5215)
!5220 = !DILocation(line: 143, column: 3, scope: !5215)
!5221 = !DILocation(line: 145, column: 12, scope: !5035)
!5222 = !DILocation(line: 153, column: 53, scope: !5035)
!5223 = !DILocation(line: 154, column: 7, scope: !5035)
!5224 = !DILocation(line: 154, column: 17, scope: !5035)
!5225 = !DILocation(line: 153, column: 15, scope: !5035)
!5226 = !DILocation(line: 153, column: 2, scope: !5035)
!5227 = !DILocation(line: 153, column: 8, scope: !5035)
!5228 = !DILocation(line: 153, column: 13, scope: !5035)
!5229 = !DILocation(line: 155, column: 7, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 155, column: 6)
!5231 = !DILocation(line: 155, column: 13, scope: !5230)
!5232 = !DILocation(line: 155, column: 6, scope: !5035)
!5233 = !DILocation(line: 156, column: 3, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 155, column: 19)
!5235 = !DILocation(line: 157, column: 6, scope: !5234)
!5236 = !DILocation(line: 158, column: 3, scope: !5234)
!5237 = !DILocation(line: 161, column: 28, scope: !5035)
!5238 = !DILocation(line: 161, column: 7, scope: !5035)
!5239 = !DILocation(line: 161, column: 5, scope: !5035)
!5240 = !DILocation(line: 162, column: 6, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 162, column: 6)
!5242 = !DILocation(line: 162, column: 6, scope: !5035)
!5243 = !DILocation(line: 163, column: 3, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 162, column: 10)
!5245 = !DILocation(line: 164, column: 3, scope: !5244)
!5246 = !DILocation(line: 167, column: 18, scope: !5035)
!5247 = !DILocation(line: 167, column: 24, scope: !5035)
!5248 = !DILocation(line: 167, column: 30, scope: !5035)
!5249 = !DILocation(line: 167, column: 2, scope: !5035)
!5250 = !DILocation(line: 169, column: 27, scope: !5035)
!5251 = !DILocation(line: 169, column: 33, scope: !5035)
!5252 = !DILocation(line: 169, column: 7, scope: !5035)
!5253 = !DILocation(line: 169, column: 5, scope: !5035)
!5254 = !DILocation(line: 170, column: 6, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 170, column: 6)
!5256 = !DILocation(line: 170, column: 6, scope: !5035)
!5257 = !DILocation(line: 171, column: 3, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 170, column: 10)
!5259 = !DILocation(line: 172, column: 3, scope: !5258)
!5260 = !DILocation(line: 176, column: 20, scope: !5035)
!5261 = !DILocation(line: 176, column: 2, scope: !5035)
!5262 = !DILocation(line: 178, column: 2, scope: !5035)
!5263 = !DILocation(line: 179, column: 9, scope: !5035)
!5264 = !DILocation(line: 179, column: 2, scope: !5035)
!5265 = !DILabel(scope: !5035, name: "error_fw_dnld_deinit", file: !3, line: 181)
!5266 = !DILocation(line: 181, column: 1, scope: !5035)
!5267 = !DILocation(line: 182, column: 25, scope: !5035)
!5268 = !DILocation(line: 182, column: 2, scope: !5035)
!5269 = !DILabel(scope: !5035, name: "error_free_dev", file: !3, line: 183)
!5270 = !DILocation(line: 183, column: 1, scope: !5035)
!5271 = !DILocation(line: 184, column: 18, scope: !5035)
!5272 = !DILocation(line: 184, column: 24, scope: !5035)
!5273 = !DILocation(line: 184, column: 2, scope: !5035)
!5274 = !DILabel(scope: !5035, name: "error_free_gpio", file: !3, line: 185)
!5275 = !DILocation(line: 185, column: 1, scope: !5035)
!5276 = !DILocation(line: 186, column: 20, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 186, column: 6)
!5278 = !DILocation(line: 186, column: 26, scope: !5277)
!5279 = !DILocation(line: 186, column: 33, scope: !5277)
!5280 = !DILocation(line: 186, column: 6, scope: !5277)
!5281 = !DILocation(line: 186, column: 6, scope: !5035)
!5282 = !DILocation(line: 187, column: 13, scope: !5277)
!5283 = !DILocation(line: 187, column: 19, scope: !5277)
!5284 = !DILocation(line: 187, column: 26, scope: !5277)
!5285 = !DILocation(line: 187, column: 3, scope: !5277)
!5286 = !DILocation(line: 188, column: 8, scope: !5035)
!5287 = !DILocation(line: 188, column: 2, scope: !5035)
!5288 = !DILocation(line: 189, column: 17, scope: !5035)
!5289 = !DILocation(line: 189, column: 9, scope: !5035)
!5290 = !DILocation(line: 189, column: 2, scope: !5035)
!5291 = !DILocation(line: 190, column: 1, scope: !5035)
!5292 = distinct !DISubprogram(name: "kzalloc", scope: !136, file: !136, line: 662, type: !5293, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!150, !353, !148}
!5295 = !DILocalVariable(name: "s", arg: 1, scope: !5296, file: !136, line: 445, type: !1146)
!5296 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !136, file: !136, line: 445, type: !5297, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!150, !1146, !148, !353}
!5299 = !DILocation(line: 445, column: 72, scope: !5296, inlinedAt: !5300)
!5300 = distinct !DILocation(line: 552, column: 10, scope: !5301, inlinedAt: !5304)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !136, line: 540, column: 34)
!5302 = distinct !DILexicalBlock(scope: !5303, file: !136, line: 540, column: 6)
!5303 = distinct !DISubprogram(name: "kmalloc", scope: !136, file: !136, line: 538, type: !5293, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5304 = distinct !DILocation(line: 664, column: 9, scope: !5292)
!5305 = !DILocalVariable(name: "flags", arg: 2, scope: !5296, file: !136, line: 446, type: !148)
!5306 = !DILocation(line: 446, column: 9, scope: !5296, inlinedAt: !5300)
!5307 = !DILocalVariable(name: "size", arg: 3, scope: !5296, file: !136, line: 446, type: !353)
!5308 = !DILocation(line: 446, column: 23, scope: !5296, inlinedAt: !5300)
!5309 = !DILocalVariable(name: "ret", scope: !5296, file: !136, line: 448, type: !150)
!5310 = !DILocation(line: 448, column: 8, scope: !5296, inlinedAt: !5300)
!5311 = !DILocalVariable(name: "flags", arg: 1, scope: !5312, file: !136, line: 318, type: !148)
!5312 = distinct !DISubprogram(name: "kmalloc_type", scope: !136, file: !136, line: 318, type: !5313, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!135, !148}
!5315 = !DILocation(line: 318, column: 67, scope: !5312, inlinedAt: !5316)
!5316 = distinct !DILocation(line: 553, column: 20, scope: !5301, inlinedAt: !5304)
!5317 = !DILocalVariable(name: "size", arg: 1, scope: !5318, file: !136, line: 346, type: !353)
!5318 = distinct !DISubprogram(name: "kmalloc_index", scope: !136, file: !136, line: 346, type: !5319, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!7, !353}
!5321 = !DILocation(line: 346, column: 58, scope: !5318, inlinedAt: !5322)
!5322 = distinct !DILocation(line: 547, column: 11, scope: !5301, inlinedAt: !5304)
!5323 = !DILocalVariable(name: "size", arg: 1, scope: !5324, file: !136, line: 472, type: !353)
!5324 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !136, file: !136, line: 472, type: !5325, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!150, !353, !148, !7}
!5327 = !DILocation(line: 472, column: 28, scope: !5324, inlinedAt: !5328)
!5328 = distinct !DILocation(line: 481, column: 9, scope: !5329, inlinedAt: !5330)
!5329 = distinct !DISubprogram(name: "kmalloc_large", scope: !136, file: !136, line: 478, type: !5293, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5330 = distinct !DILocation(line: 545, column: 11, scope: !5331, inlinedAt: !5304)
!5331 = distinct !DILexicalBlock(scope: !5301, file: !136, line: 544, column: 7)
!5332 = !DILocalVariable(name: "flags", arg: 2, scope: !5324, file: !136, line: 472, type: !148)
!5333 = !DILocation(line: 472, column: 40, scope: !5324, inlinedAt: !5328)
!5334 = !DILocalVariable(name: "order", arg: 3, scope: !5324, file: !136, line: 472, type: !7)
!5335 = !DILocation(line: 472, column: 60, scope: !5324, inlinedAt: !5328)
!5336 = !DILocalVariable(name: "size", arg: 1, scope: !5329, file: !136, line: 478, type: !353)
!5337 = !DILocation(line: 478, column: 51, scope: !5329, inlinedAt: !5330)
!5338 = !DILocalVariable(name: "flags", arg: 2, scope: !5329, file: !136, line: 478, type: !148)
!5339 = !DILocation(line: 478, column: 63, scope: !5329, inlinedAt: !5330)
!5340 = !DILocalVariable(name: "order", scope: !5329, file: !136, line: 480, type: !7)
!5341 = !DILocation(line: 480, column: 15, scope: !5329, inlinedAt: !5330)
!5342 = !DILocalVariable(name: "size", arg: 1, scope: !5303, file: !136, line: 538, type: !353)
!5343 = !DILocation(line: 538, column: 45, scope: !5303, inlinedAt: !5304)
!5344 = !DILocalVariable(name: "flags", arg: 2, scope: !5303, file: !136, line: 538, type: !148)
!5345 = !DILocation(line: 538, column: 57, scope: !5303, inlinedAt: !5304)
!5346 = !DILocalVariable(name: "index", scope: !5301, file: !136, line: 542, type: !7)
!5347 = !DILocation(line: 542, column: 16, scope: !5301, inlinedAt: !5304)
!5348 = !DILocalVariable(name: "size", arg: 1, scope: !5292, file: !136, line: 662, type: !353)
!5349 = !DILocation(line: 662, column: 36, scope: !5292)
!5350 = !DILocalVariable(name: "flags", arg: 2, scope: !5292, file: !136, line: 662, type: !148)
!5351 = !DILocation(line: 662, column: 48, scope: !5292)
!5352 = !DILocation(line: 664, column: 17, scope: !5292)
!5353 = !DILocation(line: 664, column: 23, scope: !5292)
!5354 = !DILocation(line: 664, column: 29, scope: !5292)
!5355 = !DILocation(line: 540, column: 27, scope: !5302, inlinedAt: !5304)
!5356 = !DILocation(line: 540, column: 6, scope: !5302, inlinedAt: !5304)
!5357 = !DILocation(line: 540, column: 6, scope: !5303, inlinedAt: !5304)
!5358 = !DILocation(line: 544, column: 7, scope: !5331, inlinedAt: !5304)
!5359 = !DILocation(line: 544, column: 12, scope: !5331, inlinedAt: !5304)
!5360 = !DILocation(line: 544, column: 7, scope: !5301, inlinedAt: !5304)
!5361 = !DILocation(line: 545, column: 25, scope: !5331, inlinedAt: !5304)
!5362 = !DILocation(line: 545, column: 31, scope: !5331, inlinedAt: !5304)
!5363 = !DILocation(line: 480, column: 33, scope: !5329, inlinedAt: !5330)
!5364 = !DILocation(line: 480, column: 23, scope: !5329, inlinedAt: !5330)
!5365 = !DILocation(line: 481, column: 29, scope: !5329, inlinedAt: !5330)
!5366 = !DILocation(line: 481, column: 35, scope: !5329, inlinedAt: !5330)
!5367 = !DILocation(line: 481, column: 42, scope: !5329, inlinedAt: !5330)
!5368 = !DILocation(line: 474, column: 23, scope: !5324, inlinedAt: !5328)
!5369 = !DILocation(line: 474, column: 29, scope: !5324, inlinedAt: !5328)
!5370 = !DILocation(line: 474, column: 36, scope: !5324, inlinedAt: !5328)
!5371 = !DILocation(line: 474, column: 9, scope: !5324, inlinedAt: !5328)
!5372 = !DILocation(line: 545, column: 4, scope: !5331, inlinedAt: !5304)
!5373 = !DILocation(line: 547, column: 25, scope: !5301, inlinedAt: !5304)
!5374 = !DILocation(line: 348, column: 7, scope: !5375, inlinedAt: !5322)
!5375 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 348, column: 6)
!5376 = !DILocation(line: 348, column: 6, scope: !5318, inlinedAt: !5322)
!5377 = !DILocation(line: 349, column: 3, scope: !5375, inlinedAt: !5322)
!5378 = !DILocation(line: 351, column: 6, scope: !5379, inlinedAt: !5322)
!5379 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 351, column: 6)
!5380 = !DILocation(line: 351, column: 11, scope: !5379, inlinedAt: !5322)
!5381 = !DILocation(line: 351, column: 6, scope: !5318, inlinedAt: !5322)
!5382 = !DILocation(line: 352, column: 3, scope: !5379, inlinedAt: !5322)
!5383 = !DILocation(line: 354, column: 32, scope: !5384, inlinedAt: !5322)
!5384 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 354, column: 6)
!5385 = !DILocation(line: 354, column: 37, scope: !5384, inlinedAt: !5322)
!5386 = !DILocation(line: 354, column: 42, scope: !5384, inlinedAt: !5322)
!5387 = !DILocation(line: 354, column: 45, scope: !5384, inlinedAt: !5322)
!5388 = !DILocation(line: 354, column: 50, scope: !5384, inlinedAt: !5322)
!5389 = !DILocation(line: 354, column: 6, scope: !5318, inlinedAt: !5322)
!5390 = !DILocation(line: 355, column: 3, scope: !5384, inlinedAt: !5322)
!5391 = !DILocation(line: 356, column: 32, scope: !5392, inlinedAt: !5322)
!5392 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 356, column: 6)
!5393 = !DILocation(line: 356, column: 37, scope: !5392, inlinedAt: !5322)
!5394 = !DILocation(line: 356, column: 43, scope: !5392, inlinedAt: !5322)
!5395 = !DILocation(line: 356, column: 46, scope: !5392, inlinedAt: !5322)
!5396 = !DILocation(line: 356, column: 51, scope: !5392, inlinedAt: !5322)
!5397 = !DILocation(line: 356, column: 6, scope: !5318, inlinedAt: !5322)
!5398 = !DILocation(line: 357, column: 3, scope: !5392, inlinedAt: !5322)
!5399 = !DILocation(line: 358, column: 6, scope: !5400, inlinedAt: !5322)
!5400 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 358, column: 6)
!5401 = !DILocation(line: 358, column: 11, scope: !5400, inlinedAt: !5322)
!5402 = !DILocation(line: 358, column: 6, scope: !5318, inlinedAt: !5322)
!5403 = !DILocation(line: 358, column: 26, scope: !5400, inlinedAt: !5322)
!5404 = !DILocation(line: 359, column: 6, scope: !5405, inlinedAt: !5322)
!5405 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 359, column: 6)
!5406 = !DILocation(line: 359, column: 11, scope: !5405, inlinedAt: !5322)
!5407 = !DILocation(line: 359, column: 6, scope: !5318, inlinedAt: !5322)
!5408 = !DILocation(line: 359, column: 26, scope: !5405, inlinedAt: !5322)
!5409 = !DILocation(line: 360, column: 6, scope: !5410, inlinedAt: !5322)
!5410 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 360, column: 6)
!5411 = !DILocation(line: 360, column: 11, scope: !5410, inlinedAt: !5322)
!5412 = !DILocation(line: 360, column: 6, scope: !5318, inlinedAt: !5322)
!5413 = !DILocation(line: 360, column: 26, scope: !5410, inlinedAt: !5322)
!5414 = !DILocation(line: 361, column: 6, scope: !5415, inlinedAt: !5322)
!5415 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 361, column: 6)
!5416 = !DILocation(line: 361, column: 11, scope: !5415, inlinedAt: !5322)
!5417 = !DILocation(line: 361, column: 6, scope: !5318, inlinedAt: !5322)
!5418 = !DILocation(line: 361, column: 26, scope: !5415, inlinedAt: !5322)
!5419 = !DILocation(line: 362, column: 6, scope: !5420, inlinedAt: !5322)
!5420 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 362, column: 6)
!5421 = !DILocation(line: 362, column: 11, scope: !5420, inlinedAt: !5322)
!5422 = !DILocation(line: 362, column: 6, scope: !5318, inlinedAt: !5322)
!5423 = !DILocation(line: 362, column: 26, scope: !5420, inlinedAt: !5322)
!5424 = !DILocation(line: 363, column: 6, scope: !5425, inlinedAt: !5322)
!5425 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 363, column: 6)
!5426 = !DILocation(line: 363, column: 11, scope: !5425, inlinedAt: !5322)
!5427 = !DILocation(line: 363, column: 6, scope: !5318, inlinedAt: !5322)
!5428 = !DILocation(line: 363, column: 26, scope: !5425, inlinedAt: !5322)
!5429 = !DILocation(line: 364, column: 6, scope: !5430, inlinedAt: !5322)
!5430 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 364, column: 6)
!5431 = !DILocation(line: 364, column: 11, scope: !5430, inlinedAt: !5322)
!5432 = !DILocation(line: 364, column: 6, scope: !5318, inlinedAt: !5322)
!5433 = !DILocation(line: 364, column: 26, scope: !5430, inlinedAt: !5322)
!5434 = !DILocation(line: 365, column: 6, scope: !5435, inlinedAt: !5322)
!5435 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 365, column: 6)
!5436 = !DILocation(line: 365, column: 11, scope: !5435, inlinedAt: !5322)
!5437 = !DILocation(line: 365, column: 6, scope: !5318, inlinedAt: !5322)
!5438 = !DILocation(line: 365, column: 26, scope: !5435, inlinedAt: !5322)
!5439 = !DILocation(line: 366, column: 6, scope: !5440, inlinedAt: !5322)
!5440 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 366, column: 6)
!5441 = !DILocation(line: 366, column: 11, scope: !5440, inlinedAt: !5322)
!5442 = !DILocation(line: 366, column: 6, scope: !5318, inlinedAt: !5322)
!5443 = !DILocation(line: 366, column: 26, scope: !5440, inlinedAt: !5322)
!5444 = !DILocation(line: 367, column: 6, scope: !5445, inlinedAt: !5322)
!5445 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 367, column: 6)
!5446 = !DILocation(line: 367, column: 11, scope: !5445, inlinedAt: !5322)
!5447 = !DILocation(line: 367, column: 6, scope: !5318, inlinedAt: !5322)
!5448 = !DILocation(line: 367, column: 26, scope: !5445, inlinedAt: !5322)
!5449 = !DILocation(line: 368, column: 6, scope: !5450, inlinedAt: !5322)
!5450 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 368, column: 6)
!5451 = !DILocation(line: 368, column: 11, scope: !5450, inlinedAt: !5322)
!5452 = !DILocation(line: 368, column: 6, scope: !5318, inlinedAt: !5322)
!5453 = !DILocation(line: 368, column: 26, scope: !5450, inlinedAt: !5322)
!5454 = !DILocation(line: 369, column: 6, scope: !5455, inlinedAt: !5322)
!5455 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 369, column: 6)
!5456 = !DILocation(line: 369, column: 11, scope: !5455, inlinedAt: !5322)
!5457 = !DILocation(line: 369, column: 6, scope: !5318, inlinedAt: !5322)
!5458 = !DILocation(line: 369, column: 26, scope: !5455, inlinedAt: !5322)
!5459 = !DILocation(line: 370, column: 6, scope: !5460, inlinedAt: !5322)
!5460 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 370, column: 6)
!5461 = !DILocation(line: 370, column: 11, scope: !5460, inlinedAt: !5322)
!5462 = !DILocation(line: 370, column: 6, scope: !5318, inlinedAt: !5322)
!5463 = !DILocation(line: 370, column: 26, scope: !5460, inlinedAt: !5322)
!5464 = !DILocation(line: 371, column: 6, scope: !5465, inlinedAt: !5322)
!5465 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 371, column: 6)
!5466 = !DILocation(line: 371, column: 11, scope: !5465, inlinedAt: !5322)
!5467 = !DILocation(line: 371, column: 6, scope: !5318, inlinedAt: !5322)
!5468 = !DILocation(line: 371, column: 26, scope: !5465, inlinedAt: !5322)
!5469 = !DILocation(line: 372, column: 6, scope: !5470, inlinedAt: !5322)
!5470 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 372, column: 6)
!5471 = !DILocation(line: 372, column: 11, scope: !5470, inlinedAt: !5322)
!5472 = !DILocation(line: 372, column: 6, scope: !5318, inlinedAt: !5322)
!5473 = !DILocation(line: 372, column: 26, scope: !5470, inlinedAt: !5322)
!5474 = !DILocation(line: 373, column: 6, scope: !5475, inlinedAt: !5322)
!5475 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 373, column: 6)
!5476 = !DILocation(line: 373, column: 11, scope: !5475, inlinedAt: !5322)
!5477 = !DILocation(line: 373, column: 6, scope: !5318, inlinedAt: !5322)
!5478 = !DILocation(line: 373, column: 26, scope: !5475, inlinedAt: !5322)
!5479 = !DILocation(line: 374, column: 6, scope: !5480, inlinedAt: !5322)
!5480 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 374, column: 6)
!5481 = !DILocation(line: 374, column: 11, scope: !5480, inlinedAt: !5322)
!5482 = !DILocation(line: 374, column: 6, scope: !5318, inlinedAt: !5322)
!5483 = !DILocation(line: 374, column: 26, scope: !5480, inlinedAt: !5322)
!5484 = !DILocation(line: 375, column: 6, scope: !5485, inlinedAt: !5322)
!5485 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 375, column: 6)
!5486 = !DILocation(line: 375, column: 11, scope: !5485, inlinedAt: !5322)
!5487 = !DILocation(line: 375, column: 6, scope: !5318, inlinedAt: !5322)
!5488 = !DILocation(line: 375, column: 27, scope: !5485, inlinedAt: !5322)
!5489 = !DILocation(line: 376, column: 6, scope: !5490, inlinedAt: !5322)
!5490 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 376, column: 6)
!5491 = !DILocation(line: 376, column: 11, scope: !5490, inlinedAt: !5322)
!5492 = !DILocation(line: 376, column: 6, scope: !5318, inlinedAt: !5322)
!5493 = !DILocation(line: 376, column: 32, scope: !5490, inlinedAt: !5322)
!5494 = !DILocation(line: 377, column: 6, scope: !5495, inlinedAt: !5322)
!5495 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 377, column: 6)
!5496 = !DILocation(line: 377, column: 11, scope: !5495, inlinedAt: !5322)
!5497 = !DILocation(line: 377, column: 6, scope: !5318, inlinedAt: !5322)
!5498 = !DILocation(line: 377, column: 32, scope: !5495, inlinedAt: !5322)
!5499 = !DILocation(line: 378, column: 6, scope: !5500, inlinedAt: !5322)
!5500 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 378, column: 6)
!5501 = !DILocation(line: 378, column: 11, scope: !5500, inlinedAt: !5322)
!5502 = !DILocation(line: 378, column: 6, scope: !5318, inlinedAt: !5322)
!5503 = !DILocation(line: 378, column: 32, scope: !5500, inlinedAt: !5322)
!5504 = !DILocation(line: 379, column: 6, scope: !5505, inlinedAt: !5322)
!5505 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 379, column: 6)
!5506 = !DILocation(line: 379, column: 11, scope: !5505, inlinedAt: !5322)
!5507 = !DILocation(line: 379, column: 6, scope: !5318, inlinedAt: !5322)
!5508 = !DILocation(line: 379, column: 33, scope: !5505, inlinedAt: !5322)
!5509 = !DILocation(line: 380, column: 6, scope: !5510, inlinedAt: !5322)
!5510 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 380, column: 6)
!5511 = !DILocation(line: 380, column: 11, scope: !5510, inlinedAt: !5322)
!5512 = !DILocation(line: 380, column: 6, scope: !5318, inlinedAt: !5322)
!5513 = !DILocation(line: 380, column: 33, scope: !5510, inlinedAt: !5322)
!5514 = !DILocation(line: 381, column: 6, scope: !5515, inlinedAt: !5322)
!5515 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 381, column: 6)
!5516 = !DILocation(line: 381, column: 11, scope: !5515, inlinedAt: !5322)
!5517 = !DILocation(line: 381, column: 6, scope: !5318, inlinedAt: !5322)
!5518 = !DILocation(line: 381, column: 33, scope: !5515, inlinedAt: !5322)
!5519 = !DILocation(line: 382, column: 2, scope: !5520, inlinedAt: !5322)
!5520 = distinct !DILexicalBlock(scope: !5521, file: !136, line: 382, column: 2)
!5521 = distinct !DILexicalBlock(scope: !5318, file: !136, line: 382, column: 2)
!5522 = !{i32 -2143397445, i32 -2143397416, i32 -2143397370, i32 -2143397312, i32 -2143397258, i32 -2143397204, i32 -2143397149, i32 -2143397118}
!5523 = !DILocation(line: 382, column: 2, scope: !5524, inlinedAt: !5322)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !136, line: 382, column: 2)
!5525 = distinct !DILexicalBlock(scope: !5521, file: !136, line: 382, column: 2)
!5526 = !{i32 -2143396675, i32 -2143396668, i32 -2143396614, i32 -2143396583, i32 -2143396553}
!5527 = !DILocation(line: 382, column: 2, scope: !5525, inlinedAt: !5322)
!5528 = !DILocation(line: 386, column: 1, scope: !5318, inlinedAt: !5322)
!5529 = !DILocation(line: 547, column: 9, scope: !5301, inlinedAt: !5304)
!5530 = !DILocation(line: 549, column: 8, scope: !5531, inlinedAt: !5304)
!5531 = distinct !DILexicalBlock(scope: !5301, file: !136, line: 549, column: 7)
!5532 = !DILocation(line: 549, column: 7, scope: !5301, inlinedAt: !5304)
!5533 = !DILocation(line: 550, column: 4, scope: !5531, inlinedAt: !5304)
!5534 = !DILocation(line: 553, column: 33, scope: !5301, inlinedAt: !5304)
!5535 = !DILocation(line: 325, column: 6, scope: !5536, inlinedAt: !5316)
!5536 = distinct !DILexicalBlock(scope: !5312, file: !136, line: 325, column: 6)
!5537 = !DILocation(line: 325, column: 6, scope: !5312, inlinedAt: !5316)
!5538 = !DILocation(line: 326, column: 3, scope: !5536, inlinedAt: !5316)
!5539 = !DILocation(line: 332, column: 9, scope: !5312, inlinedAt: !5316)
!5540 = !DILocation(line: 332, column: 15, scope: !5312, inlinedAt: !5316)
!5541 = !DILocation(line: 332, column: 2, scope: !5312, inlinedAt: !5316)
!5542 = !DILocation(line: 336, column: 1, scope: !5312, inlinedAt: !5316)
!5543 = !DILocation(line: 553, column: 5, scope: !5301, inlinedAt: !5304)
!5544 = !DILocation(line: 553, column: 41, scope: !5301, inlinedAt: !5304)
!5545 = !DILocation(line: 554, column: 5, scope: !5301, inlinedAt: !5304)
!5546 = !DILocation(line: 554, column: 12, scope: !5301, inlinedAt: !5304)
!5547 = !DILocation(line: 448, column: 31, scope: !5296, inlinedAt: !5300)
!5548 = !DILocation(line: 448, column: 34, scope: !5296, inlinedAt: !5300)
!5549 = !DILocation(line: 448, column: 14, scope: !5296, inlinedAt: !5300)
!5550 = !DILocation(line: 450, column: 22, scope: !5296, inlinedAt: !5300)
!5551 = !DILocation(line: 450, column: 25, scope: !5296, inlinedAt: !5300)
!5552 = !DILocation(line: 450, column: 30, scope: !5296, inlinedAt: !5300)
!5553 = !DILocation(line: 450, column: 36, scope: !5296, inlinedAt: !5300)
!5554 = !DILocation(line: 450, column: 8, scope: !5296, inlinedAt: !5300)
!5555 = !DILocation(line: 450, column: 6, scope: !5296, inlinedAt: !5300)
!5556 = !DILocation(line: 451, column: 9, scope: !5296, inlinedAt: !5300)
!5557 = !DILocation(line: 552, column: 3, scope: !5301, inlinedAt: !5304)
!5558 = !DILocation(line: 557, column: 19, scope: !5303, inlinedAt: !5304)
!5559 = !DILocation(line: 557, column: 25, scope: !5303, inlinedAt: !5304)
!5560 = !DILocation(line: 557, column: 9, scope: !5303, inlinedAt: !5304)
!5561 = !DILocation(line: 557, column: 2, scope: !5303, inlinedAt: !5304)
!5562 = !DILocation(line: 558, column: 1, scope: !5303, inlinedAt: !5304)
!5563 = !DILocation(line: 664, column: 2, scope: !5292)
!5564 = distinct !DISubprogram(name: "ERR_PTR", scope: !5565, file: !5565, line: 24, type: !5566, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5565 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!150, !158}
!5568 = !DILocalVariable(name: "error", arg: 1, scope: !5564, file: !5565, line: 24, type: !158)
!5569 = !DILocation(line: 24, column: 48, scope: !5564)
!5570 = !DILocation(line: 26, column: 18, scope: !5564)
!5571 = !DILocation(line: 26, column: 9, scope: !5564)
!5572 = !DILocation(line: 26, column: 2, scope: !5564)
!5573 = distinct !DISubprogram(name: "gpio_is_valid", scope: !5574, file: !5574, line: 44, type: !5575, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5574 = !DIFile(filename: "./include/asm-generic/gpio.h", directory: "/home/lizy2001/genbc/linux")
!5575 = !DISubroutineType(types: !5576)
!5576 = !{!516, !188}
!5577 = !DILocalVariable(name: "number", arg: 1, scope: !5573, file: !5574, line: 44, type: !188)
!5578 = !DILocation(line: 44, column: 38, scope: !5573)
!5579 = !DILocation(line: 46, column: 9, scope: !5573)
!5580 = !DILocation(line: 46, column: 16, scope: !5573)
!5581 = !DILocation(line: 46, column: 21, scope: !5573)
!5582 = !DILocation(line: 46, column: 24, scope: !5573)
!5583 = !DILocation(line: 46, column: 31, scope: !5573)
!5584 = !DILocation(line: 0, scope: !5573)
!5585 = !DILocation(line: 46, column: 2, scope: !5573)
!5586 = distinct !DISubprogram(name: "nci_set_drvdata", scope: !182, file: !182, line: 334, type: !5587, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{null, !189, !150}
!5589 = !DILocalVariable(name: "ndev", arg: 1, scope: !5586, file: !182, line: 334, type: !189)
!5590 = !DILocation(line: 334, column: 52, scope: !5586)
!5591 = !DILocalVariable(name: "data", arg: 2, scope: !5586, file: !182, line: 334, type: !150)
!5592 = !DILocation(line: 334, column: 64, scope: !5586)
!5593 = !DILocation(line: 336, column: 22, scope: !5586)
!5594 = !DILocation(line: 336, column: 2, scope: !5586)
!5595 = !DILocation(line: 336, column: 8, scope: !5586)
!5596 = !DILocation(line: 336, column: 20, scope: !5586)
!5597 = !DILocation(line: 337, column: 1, scope: !5586)
!5598 = distinct !DISubprogram(name: "nfcmrvl_chip_halt", scope: !3, file: !3, line: 256, type: !5599, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{null, !5038}
!5601 = !DILocalVariable(name: "priv", arg: 1, scope: !5598, file: !3, line: 256, type: !5038)
!5602 = !DILocation(line: 256, column: 48, scope: !5598)
!5603 = !DILocation(line: 258, column: 20, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 258, column: 6)
!5605 = !DILocation(line: 258, column: 26, scope: !5604)
!5606 = !DILocation(line: 258, column: 33, scope: !5604)
!5607 = !DILocation(line: 258, column: 6, scope: !5604)
!5608 = !DILocation(line: 258, column: 6, scope: !5598)
!5609 = !DILocation(line: 259, column: 18, scope: !5604)
!5610 = !DILocation(line: 259, column: 24, scope: !5604)
!5611 = !DILocation(line: 259, column: 31, scope: !5604)
!5612 = !DILocation(line: 259, column: 3, scope: !5604)
!5613 = !DILocation(line: 260, column: 1, scope: !5598)
!5614 = distinct !DISubprogram(name: "nfcmrvl_nci_unregister_dev", scope: !3, file: !3, line: 193, type: !5599, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5615 = !DILocalVariable(name: "priv", arg: 1, scope: !5614, file: !3, line: 193, type: !5038)
!5616 = !DILocation(line: 193, column: 57, scope: !5614)
!5617 = !DILocalVariable(name: "ndev", scope: !5614, file: !3, line: 195, type: !189)
!5618 = !DILocation(line: 195, column: 18, scope: !5614)
!5619 = !DILocation(line: 195, column: 25, scope: !5614)
!5620 = !DILocation(line: 195, column: 31, scope: !5614)
!5621 = !DILocation(line: 197, column: 6, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 197, column: 6)
!5623 = !DILocation(line: 197, column: 12, scope: !5622)
!5624 = !DILocation(line: 197, column: 18, scope: !5622)
!5625 = !DILocation(line: 197, column: 27, scope: !5622)
!5626 = !DILocation(line: 197, column: 6, scope: !5614)
!5627 = !DILocation(line: 198, column: 25, scope: !5622)
!5628 = !DILocation(line: 198, column: 3, scope: !5622)
!5629 = !DILocation(line: 200, column: 25, scope: !5614)
!5630 = !DILocation(line: 200, column: 2, scope: !5614)
!5631 = !DILocation(line: 202, column: 20, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 202, column: 6)
!5633 = !DILocation(line: 202, column: 26, scope: !5632)
!5634 = !DILocation(line: 202, column: 33, scope: !5632)
!5635 = !DILocation(line: 202, column: 6, scope: !5632)
!5636 = !DILocation(line: 202, column: 6, scope: !5614)
!5637 = !DILocation(line: 203, column: 13, scope: !5632)
!5638 = !DILocation(line: 203, column: 19, scope: !5632)
!5639 = !DILocation(line: 203, column: 26, scope: !5632)
!5640 = !DILocation(line: 203, column: 3, scope: !5632)
!5641 = !DILocation(line: 205, column: 24, scope: !5614)
!5642 = !DILocation(line: 205, column: 2, scope: !5614)
!5643 = !DILocation(line: 206, column: 18, scope: !5614)
!5644 = !DILocation(line: 206, column: 2, scope: !5614)
!5645 = !DILocation(line: 207, column: 8, scope: !5614)
!5646 = !DILocation(line: 207, column: 2, scope: !5614)
!5647 = !DILocation(line: 208, column: 1, scope: !5614)
!5648 = distinct !DISubprogram(name: "nfcmrvl_nci_recv_frame", scope: !3, file: !3, line: 211, type: !5126, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5649 = !DILocalVariable(name: "priv", arg: 1, scope: !5648, file: !3, line: 211, type: !5038)
!5650 = !DILocation(line: 211, column: 52, scope: !5648)
!5651 = !DILocalVariable(name: "skb", arg: 2, scope: !5648, file: !3, line: 211, type: !4711)
!5652 = !DILocation(line: 211, column: 74, scope: !5648)
!5653 = !DILocation(line: 213, column: 6, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 213, column: 6)
!5655 = !DILocation(line: 213, column: 12, scope: !5654)
!5656 = !DILocation(line: 213, column: 19, scope: !5654)
!5657 = !DILocation(line: 213, column: 6, scope: !5648)
!5658 = !DILocation(line: 214, column: 7, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 214, column: 7)
!5660 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 213, column: 30)
!5661 = !DILocation(line: 214, column: 12, scope: !5659)
!5662 = !DILocation(line: 214, column: 20, scope: !5659)
!5663 = !DILocation(line: 214, column: 46, scope: !5659)
!5664 = !DILocation(line: 215, column: 7, scope: !5659)
!5665 = !DILocation(line: 215, column: 12, scope: !5659)
!5666 = !DILocation(line: 215, column: 20, scope: !5659)
!5667 = !DILocation(line: 214, column: 7, scope: !5660)
!5668 = !DILocation(line: 217, column: 13, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 215, column: 51)
!5670 = !DILocation(line: 217, column: 4, scope: !5669)
!5671 = !DILocation(line: 218, column: 3, scope: !5669)
!5672 = !DILocation(line: 220, column: 14, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 218, column: 10)
!5674 = !DILocation(line: 220, column: 4, scope: !5673)
!5675 = !DILocation(line: 221, column: 4, scope: !5673)
!5676 = !DILocation(line: 223, column: 2, scope: !5660)
!5677 = !DILocation(line: 225, column: 6, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 225, column: 6)
!5679 = !DILocation(line: 225, column: 12, scope: !5678)
!5680 = !DILocation(line: 225, column: 18, scope: !5678)
!5681 = !DILocation(line: 225, column: 27, scope: !5678)
!5682 = !DILocation(line: 225, column: 6, scope: !5648)
!5683 = !DILocation(line: 226, column: 30, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 225, column: 52)
!5685 = !DILocation(line: 226, column: 36, scope: !5684)
!5686 = !DILocation(line: 226, column: 3, scope: !5684)
!5687 = !DILocation(line: 227, column: 3, scope: !5684)
!5688 = !DILocation(line: 230, column: 37, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 230, column: 6)
!5690 = !DILocation(line: 230, column: 43, scope: !5689)
!5691 = !DILocation(line: 230, column: 6, scope: !5689)
!5692 = !DILocation(line: 230, column: 6, scope: !5648)
!5693 = !DILocation(line: 231, column: 18, scope: !5689)
!5694 = !DILocation(line: 231, column: 24, scope: !5689)
!5695 = !DILocation(line: 231, column: 30, scope: !5689)
!5696 = !DILocation(line: 231, column: 3, scope: !5689)
!5697 = !DILocation(line: 234, column: 13, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 232, column: 7)
!5699 = !DILocation(line: 234, column: 3, scope: !5698)
!5700 = !DILocation(line: 235, column: 3, scope: !5698)
!5701 = !DILocation(line: 238, column: 2, scope: !5648)
!5702 = !DILocation(line: 239, column: 1, scope: !5648)
!5703 = distinct !DISubprogram(name: "test_bit", scope: !5704, file: !5704, line: 132, type: !5705, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5704 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!516, !158, !5707}
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5709)
!5709 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !152)
!5710 = !DILocalVariable(name: "nr", arg: 1, scope: !5711, file: !5712, line: 210, type: !158)
!5711 = distinct !DISubprogram(name: "variable_test_bit", scope: !5712, file: !5712, line: 210, type: !5705, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5712 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5713 = !DILocation(line: 210, column: 52, scope: !5711, inlinedAt: !5714)
!5714 = distinct !DILocation(line: 135, column: 9, scope: !5703)
!5715 = !DILocalVariable(name: "addr", arg: 2, scope: !5711, file: !5712, line: 210, type: !5707)
!5716 = !DILocation(line: 210, column: 86, scope: !5711, inlinedAt: !5714)
!5717 = !DILocalVariable(name: "oldbit", scope: !5711, file: !5712, line: 212, type: !516)
!5718 = !DILocation(line: 212, column: 7, scope: !5711, inlinedAt: !5714)
!5719 = !DILocalVariable(name: "nr", arg: 1, scope: !5720, file: !5712, line: 204, type: !158)
!5720 = distinct !DISubprogram(name: "constant_test_bit", scope: !5712, file: !5712, line: 204, type: !5705, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5721 = !DILocation(line: 204, column: 52, scope: !5720, inlinedAt: !5722)
!5722 = distinct !DILocation(line: 135, column: 9, scope: !5703)
!5723 = !DILocalVariable(name: "addr", arg: 2, scope: !5720, file: !5712, line: 204, type: !5707)
!5724 = !DILocation(line: 204, column: 86, scope: !5720, inlinedAt: !5722)
!5725 = !DILocalVariable(name: "v", arg: 1, scope: !5726, file: !5727, line: 69, type: !5730)
!5726 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5727, file: !5727, line: 69, type: !5728, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5727 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5728 = !DISubroutineType(types: !5729)
!5729 = !{null, !5730, !353}
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5731, size: 64)
!5731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5732)
!5732 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5733 = !DILocation(line: 69, column: 73, scope: !5726, inlinedAt: !5734)
!5734 = distinct !DILocation(line: 134, column: 2, scope: !5703)
!5735 = !DILocalVariable(name: "size", arg: 2, scope: !5726, file: !5727, line: 69, type: !353)
!5736 = !DILocation(line: 69, column: 83, scope: !5726, inlinedAt: !5734)
!5737 = !DILocalVariable(name: "nr", arg: 1, scope: !5703, file: !5704, line: 132, type: !158)
!5738 = !DILocation(line: 132, column: 34, scope: !5703)
!5739 = !DILocalVariable(name: "addr", arg: 2, scope: !5703, file: !5704, line: 132, type: !5707)
!5740 = !DILocation(line: 132, column: 68, scope: !5703)
!5741 = !DILocation(line: 134, column: 25, scope: !5703)
!5742 = !DILocation(line: 134, column: 32, scope: !5703)
!5743 = !DILocation(line: 134, column: 30, scope: !5703)
!5744 = !DILocation(line: 71, column: 19, scope: !5726, inlinedAt: !5734)
!5745 = !DILocation(line: 71, column: 22, scope: !5726, inlinedAt: !5734)
!5746 = !DILocation(line: 71, column: 2, scope: !5726, inlinedAt: !5734)
!5747 = !DILocation(line: 72, column: 2, scope: !5726, inlinedAt: !5734)
!5748 = !DILocation(line: 135, column: 9, scope: !5703)
!5749 = !DILocation(line: 206, column: 19, scope: !5720, inlinedAt: !5722)
!5750 = !DILocation(line: 206, column: 22, scope: !5720, inlinedAt: !5722)
!5751 = !DILocation(line: 206, column: 15, scope: !5720, inlinedAt: !5722)
!5752 = !DILocation(line: 207, column: 4, scope: !5720, inlinedAt: !5722)
!5753 = !DILocation(line: 207, column: 9, scope: !5720, inlinedAt: !5722)
!5754 = !DILocation(line: 207, column: 12, scope: !5720, inlinedAt: !5722)
!5755 = !DILocation(line: 206, column: 44, scope: !5720, inlinedAt: !5722)
!5756 = !DILocation(line: 207, column: 37, scope: !5720, inlinedAt: !5722)
!5757 = !DILocation(line: 217, column: 33, scope: !5711, inlinedAt: !5714)
!5758 = !DILocation(line: 217, column: 46, scope: !5711, inlinedAt: !5714)
!5759 = !DILocation(line: 214, column: 2, scope: !5711, inlinedAt: !5714)
!5760 = !{i32 -2147139365, i32 -2147139305}
!5761 = !DILocation(line: 219, column: 9, scope: !5711, inlinedAt: !5714)
!5762 = !DILocation(line: 135, column: 2, scope: !5703)
!5763 = distinct !DISubprogram(name: "nfcmrvl_chip_reset", scope: !3, file: !3, line: 242, type: !5599, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5764 = !DILocalVariable(name: "priv", arg: 1, scope: !5763, file: !3, line: 242, type: !5038)
!5765 = !DILocation(line: 242, column: 49, scope: !5763)
!5766 = !DILocation(line: 245, column: 32, scope: !5763)
!5767 = !DILocation(line: 245, column: 38, scope: !5763)
!5768 = !DILocation(line: 245, column: 2, scope: !5763)
!5769 = !DILocation(line: 247, column: 20, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 247, column: 6)
!5771 = !DILocation(line: 247, column: 26, scope: !5770)
!5772 = !DILocation(line: 247, column: 33, scope: !5770)
!5773 = !DILocation(line: 247, column: 6, scope: !5770)
!5774 = !DILocation(line: 247, column: 6, scope: !5763)
!5775 = !DILocation(line: 248, column: 3, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 247, column: 46)
!5777 = !DILocation(line: 249, column: 18, scope: !5776)
!5778 = !DILocation(line: 249, column: 24, scope: !5776)
!5779 = !DILocation(line: 249, column: 31, scope: !5776)
!5780 = !DILocation(line: 249, column: 3, scope: !5776)
!5781 = !DILocation(line: 250, column: 3, scope: !5776)
!5782 = !DILocation(line: 251, column: 18, scope: !5776)
!5783 = !DILocation(line: 251, column: 24, scope: !5776)
!5784 = !DILocation(line: 251, column: 31, scope: !5776)
!5785 = !DILocation(line: 251, column: 3, scope: !5776)
!5786 = !DILocation(line: 252, column: 2, scope: !5776)
!5787 = !DILocation(line: 253, column: 3, scope: !5770)
!5788 = !DILocation(line: 254, column: 1, scope: !5763)
!5789 = distinct !DISubprogram(name: "clear_bit", scope: !5790, file: !5790, line: 39, type: !5791, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5790 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5791 = !DISubroutineType(types: !5792)
!5792 = !{null, !158, !5793}
!5793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5709, size: 64)
!5794 = !DILocalVariable(name: "nr", arg: 1, scope: !5795, file: !5712, line: 72, type: !158)
!5795 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5712, file: !5712, line: 72, type: !5791, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5796 = !DILocation(line: 72, column: 21, scope: !5795, inlinedAt: !5797)
!5797 = distinct !DILocation(line: 42, column: 2, scope: !5789)
!5798 = !DILocalVariable(name: "addr", arg: 2, scope: !5795, file: !5712, line: 72, type: !5793)
!5799 = !DILocation(line: 72, column: 49, scope: !5795, inlinedAt: !5797)
!5800 = !DILocalVariable(name: "v", arg: 1, scope: !5801, file: !5727, line: 84, type: !5730)
!5801 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5727, file: !5727, line: 84, type: !5728, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5802 = !DILocation(line: 84, column: 74, scope: !5801, inlinedAt: !5803)
!5803 = distinct !DILocation(line: 41, column: 2, scope: !5789)
!5804 = !DILocalVariable(name: "size", arg: 2, scope: !5801, file: !5727, line: 84, type: !353)
!5805 = !DILocation(line: 84, column: 84, scope: !5801, inlinedAt: !5803)
!5806 = !DILocalVariable(name: "nr", arg: 1, scope: !5789, file: !5790, line: 39, type: !158)
!5807 = !DILocation(line: 39, column: 35, scope: !5789)
!5808 = !DILocalVariable(name: "addr", arg: 2, scope: !5789, file: !5790, line: 39, type: !5793)
!5809 = !DILocation(line: 39, column: 63, scope: !5789)
!5810 = !DILocation(line: 41, column: 26, scope: !5789)
!5811 = !DILocation(line: 41, column: 33, scope: !5789)
!5812 = !DILocation(line: 41, column: 31, scope: !5789)
!5813 = !DILocation(line: 86, column: 20, scope: !5801, inlinedAt: !5803)
!5814 = !DILocation(line: 86, column: 23, scope: !5801, inlinedAt: !5803)
!5815 = !DILocation(line: 86, column: 2, scope: !5801, inlinedAt: !5803)
!5816 = !DILocation(line: 87, column: 2, scope: !5801, inlinedAt: !5803)
!5817 = !DILocation(line: 42, column: 17, scope: !5789)
!5818 = !DILocation(line: 42, column: 21, scope: !5789)
!5819 = !DILocation(line: 74, column: 27, scope: !5820, inlinedAt: !5797)
!5820 = distinct !DILexicalBlock(scope: !5795, file: !5712, line: 74, column: 6)
!5821 = !DILocation(line: 74, column: 6, scope: !5820, inlinedAt: !5797)
!5822 = !DILocation(line: 74, column: 6, scope: !5795, inlinedAt: !5797)
!5823 = !DILocation(line: 76, column: 6, scope: !5824, inlinedAt: !5797)
!5824 = distinct !DILexicalBlock(scope: !5820, file: !5712, line: 74, column: 32)
!5825 = !DILocation(line: 77, column: 13, scope: !5824, inlinedAt: !5797)
!5826 = !DILocation(line: 77, column: 12, scope: !5824, inlinedAt: !5797)
!5827 = !DILocation(line: 75, column: 3, scope: !5824, inlinedAt: !5797)
!5828 = !{i32 -2147147659}
!5829 = !DILocation(line: 78, column: 2, scope: !5824, inlinedAt: !5797)
!5830 = !DILocation(line: 80, column: 8, scope: !5831, inlinedAt: !5797)
!5831 = distinct !DILexicalBlock(scope: !5820, file: !5712, line: 78, column: 9)
!5832 = !DILocation(line: 80, column: 32, scope: !5831, inlinedAt: !5797)
!5833 = !DILocation(line: 79, column: 3, scope: !5831, inlinedAt: !5797)
!5834 = !{i32 -2147147527}
!5835 = !DILocation(line: 43, column: 1, scope: !5789)
!5836 = distinct !DISubprogram(name: "gpio_set_value", scope: !5837, file: !5837, line: 69, type: !5838, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5837 = !DIFile(filename: "./include/linux/gpio.h", directory: "/home/lizy2001/genbc/linux")
!5838 = !DISubroutineType(types: !5839)
!5839 = !{null, !7, !188}
!5840 = !DILocalVariable(name: "gpio", arg: 1, scope: !5836, file: !5837, line: 69, type: !7)
!5841 = !DILocation(line: 69, column: 48, scope: !5836)
!5842 = !DILocalVariable(name: "value", arg: 2, scope: !5836, file: !5837, line: 69, type: !188)
!5843 = !DILocation(line: 69, column: 58, scope: !5836)
!5844 = !DILocation(line: 71, column: 19, scope: !5836)
!5845 = !DILocation(line: 71, column: 25, scope: !5836)
!5846 = !DILocation(line: 71, column: 2, scope: !5836)
!5847 = !DILocation(line: 72, column: 1, scope: !5836)
!5848 = distinct !DISubprogram(name: "nfcmrvl_parse_dt", scope: !3, file: !3, line: 262, type: !5849, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!188, !4174, !5132}
!5851 = !DILocalVariable(name: "node", arg: 1, scope: !5848, file: !3, line: 262, type: !4174)
!5852 = !DILocation(line: 262, column: 42, scope: !5848)
!5853 = !DILocalVariable(name: "pdata", arg: 2, scope: !5848, file: !3, line: 263, type: !5132)
!5854 = !DILocation(line: 263, column: 38, scope: !5848)
!5855 = !DILocalVariable(name: "reset_n_io", scope: !5848, file: !3, line: 265, type: !188)
!5856 = !DILocation(line: 265, column: 6, scope: !5848)
!5857 = !DILocation(line: 267, column: 33, scope: !5848)
!5858 = !DILocation(line: 267, column: 15, scope: !5848)
!5859 = !DILocation(line: 267, column: 13, scope: !5848)
!5860 = !DILocation(line: 268, column: 6, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 268, column: 6)
!5862 = !DILocation(line: 268, column: 17, scope: !5861)
!5863 = !DILocation(line: 268, column: 6, scope: !5848)
!5864 = !DILocation(line: 269, column: 3, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 268, column: 22)
!5866 = !DILocation(line: 270, column: 2, scope: !5865)
!5867 = !DILocation(line: 270, column: 28, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 270, column: 13)
!5869 = !DILocation(line: 270, column: 14, scope: !5868)
!5870 = !DILocation(line: 270, column: 13, scope: !5861)
!5871 = !DILocation(line: 271, column: 3, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 270, column: 41)
!5873 = !DILocation(line: 272, column: 10, scope: !5872)
!5874 = !DILocation(line: 272, column: 3, scope: !5872)
!5875 = !DILocation(line: 274, column: 22, scope: !5848)
!5876 = !DILocation(line: 274, column: 2, scope: !5848)
!5877 = !DILocation(line: 274, column: 9, scope: !5848)
!5878 = !DILocation(line: 274, column: 20, scope: !5848)
!5879 = !DILocation(line: 276, column: 23, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 276, column: 6)
!5881 = !DILocation(line: 276, column: 6, scope: !5880)
!5882 = !DILocation(line: 276, column: 6, scope: !5848)
!5883 = !DILocation(line: 277, column: 3, scope: !5880)
!5884 = !DILocation(line: 277, column: 10, scope: !5880)
!5885 = !DILocation(line: 277, column: 20, scope: !5880)
!5886 = !DILocation(line: 279, column: 3, scope: !5880)
!5887 = !DILocation(line: 279, column: 10, scope: !5880)
!5888 = !DILocation(line: 279, column: 20, scope: !5880)
!5889 = !DILocation(line: 281, column: 2, scope: !5848)
!5890 = !DILocation(line: 282, column: 1, scope: !5848)
!5891 = distinct !DISubprogram(name: "of_get_named_gpio", scope: !5892, file: !5892, line: 132, type: !5893, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5892 = !DIFile(filename: "./include/linux/of_gpio.h", directory: "/home/lizy2001/genbc/linux")
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!188, !4174, !252, !188}
!5895 = !DILocalVariable(name: "np", arg: 1, scope: !5891, file: !5892, line: 132, type: !4174)
!5896 = !DILocation(line: 132, column: 57, scope: !5891)
!5897 = !DILocalVariable(name: "propname", arg: 2, scope: !5891, file: !5892, line: 133, type: !252)
!5898 = !DILocation(line: 133, column: 48, scope: !5891)
!5899 = !DILocalVariable(name: "index", arg: 3, scope: !5891, file: !5892, line: 133, type: !188)
!5900 = !DILocation(line: 133, column: 62, scope: !5891)
!5901 = !DILocation(line: 135, column: 33, scope: !5891)
!5902 = !DILocation(line: 135, column: 37, scope: !5891)
!5903 = !DILocation(line: 135, column: 47, scope: !5891)
!5904 = !DILocation(line: 135, column: 9, scope: !5891)
!5905 = !DILocation(line: 135, column: 2, scope: !5891)
!5906 = distinct !DISubprogram(name: "get_order", scope: !5907, file: !5907, line: 29, type: !5908, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5907 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!188, !152}
!5910 = !DILocalVariable(name: "x", arg: 1, scope: !5911, file: !5712, line: 366, type: !449)
!5911 = distinct !DISubprogram(name: "fls64", scope: !5712, file: !5712, line: 366, type: !5912, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5912 = !DISubroutineType(types: !5913)
!5913 = !{!188, !449}
!5914 = !DILocation(line: 366, column: 40, scope: !5911, inlinedAt: !5915)
!5915 = distinct !DILocation(line: 46, column: 9, scope: !5906)
!5916 = !DILocalVariable(name: "bitpos", scope: !5911, file: !5712, line: 368, type: !188)
!5917 = !DILocation(line: 368, column: 6, scope: !5911, inlinedAt: !5915)
!5918 = !DILocalVariable(name: "size", arg: 1, scope: !5906, file: !5907, line: 29, type: !152)
!5919 = !DILocation(line: 29, column: 63, scope: !5906)
!5920 = !DILocation(line: 31, column: 27, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5906, file: !5907, line: 31, column: 6)
!5922 = !DILocation(line: 31, column: 6, scope: !5921)
!5923 = !DILocation(line: 31, column: 6, scope: !5906)
!5924 = !DILocation(line: 32, column: 8, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5926, file: !5907, line: 32, column: 7)
!5926 = distinct !DILexicalBlock(scope: !5921, file: !5907, line: 31, column: 34)
!5927 = !DILocation(line: 32, column: 7, scope: !5926)
!5928 = !DILocation(line: 33, column: 4, scope: !5925)
!5929 = !DILocation(line: 35, column: 7, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5926, file: !5907, line: 35, column: 7)
!5931 = !DILocation(line: 35, column: 12, scope: !5930)
!5932 = !DILocation(line: 35, column: 7, scope: !5926)
!5933 = !DILocation(line: 36, column: 4, scope: !5930)
!5934 = !DILocation(line: 38, column: 10, scope: !5926)
!5935 = !DILocation(line: 38, column: 28, scope: !5926)
!5936 = !DILocation(line: 38, column: 41, scope: !5926)
!5937 = !DILocation(line: 38, column: 3, scope: !5926)
!5938 = !DILocation(line: 41, column: 6, scope: !5906)
!5939 = !DILocation(line: 42, column: 7, scope: !5906)
!5940 = !DILocation(line: 46, column: 15, scope: !5906)
!5941 = !DILocation(line: 374, column: 2, scope: !5911, inlinedAt: !5915)
!5942 = !DILocation(line: 376, column: 14, scope: !5911, inlinedAt: !5915)
!5943 = !{i32 303608}
!5944 = !DILocation(line: 377, column: 9, scope: !5911, inlinedAt: !5915)
!5945 = !DILocation(line: 377, column: 16, scope: !5911, inlinedAt: !5915)
!5946 = !DILocation(line: 46, column: 2, scope: !5906)
!5947 = !DILocation(line: 48, column: 1, scope: !5906)
!5948 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5949, file: !5949, line: 30, type: !5950, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5949 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!188, !448}
!5952 = !DILocation(line: 366, column: 40, scope: !5911, inlinedAt: !5953)
!5953 = distinct !DILocation(line: 32, column: 9, scope: !5948)
!5954 = !DILocation(line: 368, column: 6, scope: !5911, inlinedAt: !5953)
!5955 = !DILocalVariable(name: "n", arg: 1, scope: !5948, file: !5949, line: 30, type: !448)
!5956 = !DILocation(line: 30, column: 21, scope: !5948)
!5957 = !DILocation(line: 32, column: 15, scope: !5948)
!5958 = !DILocation(line: 374, column: 2, scope: !5911, inlinedAt: !5953)
!5959 = !DILocation(line: 376, column: 14, scope: !5911, inlinedAt: !5953)
!5960 = !DILocation(line: 377, column: 9, scope: !5911, inlinedAt: !5953)
!5961 = !DILocation(line: 377, column: 16, scope: !5911, inlinedAt: !5953)
!5962 = !DILocation(line: 32, column: 18, scope: !5948)
!5963 = !DILocation(line: 32, column: 2, scope: !5948)
!5964 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5965, file: !5965, line: 137, type: !5966, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5965 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!150, !1146, !2881, !353, !148}
!5968 = !DILocalVariable(name: "s", arg: 1, scope: !5964, file: !5965, line: 137, type: !1146)
!5969 = !DILocation(line: 137, column: 54, scope: !5964)
!5970 = !DILocalVariable(name: "object", arg: 2, scope: !5964, file: !5965, line: 137, type: !2881)
!5971 = !DILocation(line: 137, column: 69, scope: !5964)
!5972 = !DILocalVariable(name: "size", arg: 3, scope: !5964, file: !5965, line: 138, type: !353)
!5973 = !DILocation(line: 138, column: 12, scope: !5964)
!5974 = !DILocalVariable(name: "flags", arg: 4, scope: !5964, file: !5965, line: 138, type: !148)
!5975 = !DILocation(line: 138, column: 24, scope: !5964)
!5976 = !DILocation(line: 140, column: 17, scope: !5964)
!5977 = !DILocation(line: 140, column: 2, scope: !5964)
!5978 = distinct !DISubprogram(name: "nfcmrvl_nci_open", scope: !3, file: !3, line: 28, type: !186, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5979 = !DILocalVariable(name: "ndev", arg: 1, scope: !5978, file: !3, line: 28, type: !189)
!5980 = !DILocation(line: 28, column: 45, scope: !5978)
!5981 = !DILocalVariable(name: "priv", scope: !5978, file: !3, line: 30, type: !5038)
!5982 = !DILocation(line: 30, column: 26, scope: !5978)
!5983 = !DILocation(line: 30, column: 49, scope: !5978)
!5984 = !DILocation(line: 30, column: 33, scope: !5978)
!5985 = !DILocalVariable(name: "err", scope: !5978, file: !3, line: 31, type: !188)
!5986 = !DILocation(line: 31, column: 6, scope: !5978)
!5987 = !DILocation(line: 33, column: 45, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 33, column: 6)
!5989 = !DILocation(line: 33, column: 51, scope: !5988)
!5990 = !DILocation(line: 33, column: 6, scope: !5988)
!5991 = !DILocation(line: 33, column: 6, scope: !5978)
!5992 = !DILocation(line: 34, column: 3, scope: !5988)
!5993 = !DILocation(line: 37, column: 32, scope: !5978)
!5994 = !DILocation(line: 37, column: 38, scope: !5978)
!5995 = !DILocation(line: 37, column: 2, scope: !5978)
!5996 = !DILocation(line: 39, column: 8, scope: !5978)
!5997 = !DILocation(line: 39, column: 14, scope: !5978)
!5998 = !DILocation(line: 39, column: 22, scope: !5978)
!5999 = !DILocation(line: 39, column: 31, scope: !5978)
!6000 = !DILocation(line: 39, column: 6, scope: !5978)
!6001 = !DILocation(line: 41, column: 6, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 41, column: 6)
!6003 = !DILocation(line: 41, column: 6, scope: !5978)
!6004 = !DILocation(line: 42, column: 35, scope: !6002)
!6005 = !DILocation(line: 42, column: 41, scope: !6002)
!6006 = !DILocation(line: 42, column: 3, scope: !6002)
!6007 = !DILocation(line: 44, column: 9, scope: !5978)
!6008 = !DILocation(line: 44, column: 2, scope: !5978)
!6009 = !DILocation(line: 45, column: 1, scope: !5978)
!6010 = distinct !DISubprogram(name: "nfcmrvl_nci_close", scope: !3, file: !3, line: 47, type: !186, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6011 = !DILocalVariable(name: "ndev", arg: 1, scope: !6010, file: !3, line: 47, type: !189)
!6012 = !DILocation(line: 47, column: 46, scope: !6010)
!6013 = !DILocalVariable(name: "priv", scope: !6010, file: !3, line: 49, type: !5038)
!6014 = !DILocation(line: 49, column: 26, scope: !6010)
!6015 = !DILocation(line: 49, column: 49, scope: !6010)
!6016 = !DILocation(line: 49, column: 33, scope: !6010)
!6017 = !DILocation(line: 51, column: 48, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 51, column: 6)
!6019 = !DILocation(line: 51, column: 54, scope: !6018)
!6020 = !DILocation(line: 51, column: 7, scope: !6018)
!6021 = !DILocation(line: 51, column: 6, scope: !6010)
!6022 = !DILocation(line: 52, column: 3, scope: !6018)
!6023 = !DILocation(line: 54, column: 2, scope: !6010)
!6024 = !DILocation(line: 54, column: 8, scope: !6010)
!6025 = !DILocation(line: 54, column: 16, scope: !6010)
!6026 = !DILocation(line: 54, column: 26, scope: !6010)
!6027 = !DILocation(line: 56, column: 2, scope: !6010)
!6028 = !DILocation(line: 57, column: 1, scope: !6010)
!6029 = distinct !DISubprogram(name: "nfcmrvl_nci_send", scope: !3, file: !3, line: 59, type: !4992, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6030 = !DILocalVariable(name: "ndev", arg: 1, scope: !6029, file: !3, line: 59, type: !189)
!6031 = !DILocation(line: 59, column: 45, scope: !6029)
!6032 = !DILocalVariable(name: "skb", arg: 2, scope: !6029, file: !3, line: 59, type: !4711)
!6033 = !DILocation(line: 59, column: 67, scope: !6029)
!6034 = !DILocalVariable(name: "priv", scope: !6029, file: !3, line: 61, type: !5038)
!6035 = !DILocation(line: 61, column: 26, scope: !6029)
!6036 = !DILocation(line: 61, column: 49, scope: !6029)
!6037 = !DILocation(line: 61, column: 33, scope: !6029)
!6038 = !DILocation(line: 63, column: 2, scope: !6029)
!6039 = !DILocation(line: 65, column: 21, scope: !6029)
!6040 = !DILocation(line: 65, column: 13, scope: !6029)
!6041 = !DILocation(line: 65, column: 2, scope: !6029)
!6042 = !DILocation(line: 65, column: 7, scope: !6029)
!6043 = !DILocation(line: 65, column: 11, scope: !6029)
!6044 = !DILocation(line: 67, column: 6, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 67, column: 6)
!6046 = !DILocation(line: 67, column: 12, scope: !6045)
!6047 = !DILocation(line: 67, column: 19, scope: !6045)
!6048 = !DILocation(line: 67, column: 6, scope: !6029)
!6049 = !DILocalVariable(name: "hdr", scope: !6050, file: !3, line: 68, type: !2338)
!6050 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 67, column: 30)
!6051 = !DILocation(line: 68, column: 18, scope: !6050)
!6052 = !DILocalVariable(name: "len", scope: !6050, file: !3, line: 69, type: !216)
!6053 = !DILocation(line: 69, column: 17, scope: !6050)
!6054 = !DILocation(line: 69, column: 23, scope: !6050)
!6055 = !DILocation(line: 69, column: 28, scope: !6050)
!6056 = !DILocation(line: 71, column: 18, scope: !6050)
!6057 = !DILocation(line: 71, column: 9, scope: !6050)
!6058 = !DILocation(line: 71, column: 7, scope: !6050)
!6059 = !DILocation(line: 72, column: 3, scope: !6050)
!6060 = !DILocation(line: 72, column: 10, scope: !6050)
!6061 = !DILocation(line: 73, column: 3, scope: !6050)
!6062 = !DILocation(line: 73, column: 10, scope: !6050)
!6063 = !DILocation(line: 74, column: 3, scope: !6050)
!6064 = !DILocation(line: 74, column: 10, scope: !6050)
!6065 = !DILocation(line: 75, column: 12, scope: !6050)
!6066 = !DILocation(line: 75, column: 3, scope: !6050)
!6067 = !DILocation(line: 75, column: 10, scope: !6050)
!6068 = !DILocation(line: 76, column: 2, scope: !6050)
!6069 = !DILocation(line: 78, column: 9, scope: !6029)
!6070 = !DILocation(line: 78, column: 15, scope: !6029)
!6071 = !DILocation(line: 78, column: 23, scope: !6029)
!6072 = !DILocation(line: 78, column: 32, scope: !6029)
!6073 = !DILocation(line: 78, column: 38, scope: !6029)
!6074 = !DILocation(line: 78, column: 2, scope: !6029)
!6075 = distinct !DISubprogram(name: "nfcmrvl_nci_setup", scope: !3, file: !3, line: 81, type: !186, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6076 = !DILocalVariable(name: "ndev", arg: 1, scope: !6075, file: !3, line: 81, type: !189)
!6077 = !DILocation(line: 81, column: 46, scope: !6075)
!6078 = !DILocalVariable(name: "val", scope: !6075, file: !3, line: 83, type: !215)
!6079 = !DILocation(line: 83, column: 7, scope: !6075)
!6080 = !DILocation(line: 85, column: 17, scope: !6075)
!6081 = !DILocation(line: 85, column: 2, scope: !6075)
!6082 = !DILocation(line: 86, column: 2, scope: !6075)
!6083 = distinct !DISubprogram(name: "nfcmrvl_nci_fw_download", scope: !3, file: !3, line: 89, type: !4998, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6084 = !DILocalVariable(name: "ndev", arg: 1, scope: !6083, file: !3, line: 89, type: !189)
!6085 = !DILocation(line: 89, column: 52, scope: !6083)
!6086 = !DILocalVariable(name: "firmware_name", arg: 2, scope: !6083, file: !3, line: 90, type: !252)
!6087 = !DILocation(line: 90, column: 20, scope: !6083)
!6088 = !DILocation(line: 92, column: 31, scope: !6083)
!6089 = !DILocation(line: 92, column: 37, scope: !6083)
!6090 = !DILocation(line: 92, column: 9, scope: !6083)
!6091 = !DILocation(line: 92, column: 2, scope: !6083)
!6092 = distinct !DISubprogram(name: "nci_get_drvdata", scope: !182, file: !182, line: 339, type: !6093, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6093 = !DISubroutineType(types: !6094)
!6094 = !{!150, !189}
!6095 = !DILocalVariable(name: "ndev", arg: 1, scope: !6092, file: !182, line: 339, type: !189)
!6096 = !DILocation(line: 339, column: 53, scope: !6092)
!6097 = !DILocation(line: 341, column: 9, scope: !6092)
!6098 = !DILocation(line: 341, column: 15, scope: !6092)
!6099 = !DILocation(line: 341, column: 2, scope: !6092)
!6100 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5790, file: !5790, line: 68, type: !6101, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!516, !158, !5793}
!6103 = !DILocalVariable(name: "nr", arg: 1, scope: !6104, file: !5712, line: 136, type: !158)
!6104 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5712, file: !5712, line: 136, type: !6101, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6105 = !DILocation(line: 136, column: 28, scope: !6104, inlinedAt: !6106)
!6106 = distinct !DILocation(line: 71, column: 9, scope: !6100)
!6107 = !DILocalVariable(name: "addr", arg: 2, scope: !6104, file: !5712, line: 136, type: !5793)
!6108 = !DILocation(line: 136, column: 56, scope: !6104, inlinedAt: !6106)
!6109 = !DILocalVariable(name: "c", scope: !6110, file: !5712, line: 138, type: !516)
!6110 = distinct !DILexicalBlock(scope: !6104, file: !5712, line: 138, column: 9)
!6111 = !DILocation(line: 138, column: 9, scope: !6110, inlinedAt: !6106)
!6112 = !DILocalVariable(name: "v", arg: 1, scope: !6113, file: !5727, line: 99, type: !5730)
!6113 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5727, file: !5727, line: 99, type: !5728, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6114 = !DILocation(line: 99, column: 79, scope: !6113, inlinedAt: !6115)
!6115 = distinct !DILocation(line: 70, column: 2, scope: !6100)
!6116 = !DILocalVariable(name: "size", arg: 2, scope: !6113, file: !5727, line: 99, type: !353)
!6117 = !DILocation(line: 99, column: 89, scope: !6113, inlinedAt: !6115)
!6118 = !DILocalVariable(name: "nr", arg: 1, scope: !6100, file: !5790, line: 68, type: !158)
!6119 = !DILocation(line: 68, column: 42, scope: !6100)
!6120 = !DILocalVariable(name: "addr", arg: 2, scope: !6100, file: !5790, line: 68, type: !5793)
!6121 = !DILocation(line: 68, column: 70, scope: !6100)
!6122 = !DILocation(line: 70, column: 31, scope: !6100)
!6123 = !DILocation(line: 70, column: 38, scope: !6100)
!6124 = !DILocation(line: 70, column: 36, scope: !6100)
!6125 = !DILocation(line: 101, column: 20, scope: !6113, inlinedAt: !6115)
!6126 = !DILocation(line: 101, column: 23, scope: !6113, inlinedAt: !6115)
!6127 = !DILocation(line: 101, column: 2, scope: !6113, inlinedAt: !6115)
!6128 = !DILocation(line: 102, column: 2, scope: !6113, inlinedAt: !6115)
!6129 = !DILocation(line: 71, column: 31, scope: !6100)
!6130 = !DILocation(line: 71, column: 35, scope: !6100)
!6131 = !{i32 -2147144127, i32 -2147144031}
!6132 = !DILocation(line: 71, column: 2, scope: !6100)
!6133 = distinct !DISubprogram(name: "kasan_check_write", scope: !6134, file: !6134, line: 38, type: !6135, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6134 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6135 = !DISubroutineType(types: !6136)
!6136 = !{!516, !5730, !7}
!6137 = !DILocalVariable(name: "p", arg: 1, scope: !6133, file: !6134, line: 38, type: !5730)
!6138 = !DILocation(line: 38, column: 59, scope: !6133)
!6139 = !DILocalVariable(name: "size", arg: 2, scope: !6133, file: !6134, line: 38, type: !7)
!6140 = !DILocation(line: 38, column: 75, scope: !6133)
!6141 = !DILocation(line: 40, column: 2, scope: !6133)
!6142 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6143, file: !6143, line: 178, type: !6144, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6143 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6144 = !DISubroutineType(types: !6145)
!6145 = !{null, !5730, !353, !188}
!6146 = !DILocalVariable(name: "ptr", arg: 1, scope: !6142, file: !6143, line: 178, type: !5730)
!6147 = !DILocation(line: 178, column: 60, scope: !6142)
!6148 = !DILocalVariable(name: "size", arg: 2, scope: !6142, file: !6143, line: 178, type: !353)
!6149 = !DILocation(line: 178, column: 72, scope: !6142)
!6150 = !DILocalVariable(name: "type", arg: 3, scope: !6142, file: !6143, line: 179, type: !188)
!6151 = !DILocation(line: 179, column: 15, scope: !6142)
!6152 = !DILocation(line: 179, column: 23, scope: !6142)
!6153 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !5790, file: !5790, line: 81, type: !6101, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6154 = !DILocalVariable(name: "nr", arg: 1, scope: !6155, file: !5712, line: 160, type: !158)
!6155 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !5712, file: !5712, line: 160, type: !6101, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6156 = !DILocation(line: 160, column: 30, scope: !6155, inlinedAt: !6157)
!6157 = distinct !DILocation(line: 84, column: 9, scope: !6153)
!6158 = !DILocalVariable(name: "addr", arg: 2, scope: !6155, file: !5712, line: 160, type: !5793)
!6159 = !DILocation(line: 160, column: 58, scope: !6155, inlinedAt: !6157)
!6160 = !DILocalVariable(name: "c", scope: !6161, file: !5712, line: 162, type: !516)
!6161 = distinct !DILexicalBlock(scope: !6155, file: !5712, line: 162, column: 9)
!6162 = !DILocation(line: 162, column: 9, scope: !6161, inlinedAt: !6157)
!6163 = !DILocation(line: 99, column: 79, scope: !6113, inlinedAt: !6164)
!6164 = distinct !DILocation(line: 83, column: 2, scope: !6153)
!6165 = !DILocation(line: 99, column: 89, scope: !6113, inlinedAt: !6164)
!6166 = !DILocalVariable(name: "nr", arg: 1, scope: !6153, file: !5790, line: 81, type: !158)
!6167 = !DILocation(line: 81, column: 44, scope: !6153)
!6168 = !DILocalVariable(name: "addr", arg: 2, scope: !6153, file: !5790, line: 81, type: !5793)
!6169 = !DILocation(line: 81, column: 72, scope: !6153)
!6170 = !DILocation(line: 83, column: 31, scope: !6153)
!6171 = !DILocation(line: 83, column: 38, scope: !6153)
!6172 = !DILocation(line: 83, column: 36, scope: !6153)
!6173 = !DILocation(line: 101, column: 20, scope: !6113, inlinedAt: !6164)
!6174 = !DILocation(line: 101, column: 23, scope: !6113, inlinedAt: !6164)
!6175 = !DILocation(line: 101, column: 2, scope: !6113, inlinedAt: !6164)
!6176 = !DILocation(line: 102, column: 2, scope: !6113, inlinedAt: !6164)
!6177 = !DILocation(line: 84, column: 33, scope: !6153)
!6178 = !DILocation(line: 84, column: 37, scope: !6153)
!6179 = !{i32 -2147142215, i32 -2147142119}
!6180 = !DILocation(line: 84, column: 2, scope: !6153)
!6181 = distinct !DISubprogram(name: "kasan_check_read", scope: !6134, file: !6134, line: 34, type: !6135, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6182 = !DILocalVariable(name: "p", arg: 1, scope: !6181, file: !6134, line: 34, type: !5730)
!6183 = !DILocation(line: 34, column: 58, scope: !6181)
!6184 = !DILocalVariable(name: "size", arg: 2, scope: !6181, file: !6134, line: 34, type: !7)
!6185 = !DILocation(line: 34, column: 74, scope: !6181)
!6186 = !DILocation(line: 36, column: 2, scope: !6181)
!6187 = distinct !DISubprogram(name: "__gpio_set_value", scope: !5574, file: !5574, line: 100, type: !5838, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6188 = !DILocalVariable(name: "gpio", arg: 1, scope: !6187, file: !5574, line: 100, type: !7)
!6189 = !DILocation(line: 100, column: 46, scope: !6187)
!6190 = !DILocalVariable(name: "value", arg: 2, scope: !6187, file: !5574, line: 100, type: !188)
!6191 = !DILocation(line: 100, column: 56, scope: !6187)
!6192 = !DILocation(line: 102, column: 42, scope: !6187)
!6193 = !DILocation(line: 102, column: 29, scope: !6187)
!6194 = !DILocation(line: 102, column: 49, scope: !6187)
!6195 = !DILocation(line: 102, column: 9, scope: !6187)
!6196 = !DILocation(line: 102, column: 2, scope: !6187)
