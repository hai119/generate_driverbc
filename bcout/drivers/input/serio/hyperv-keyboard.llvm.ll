; ModuleID = '../bcout/drivers/input/serio/hyperv-keyboard.llvm.bc'
source_filename = "drivers/input/serio/hyperv-keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_hv_kbd_init6:\09\09\09"
module asm ".long\09hv_kbd_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.hv_driver = type { i8*, i8, %struct.guid_t, %struct.hv_vmbus_device_id*, %struct.device_driver, %struct.anon.65, i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)*, i32 (%struct.hv_device*)*, void (%struct.hv_device*)*, i32 (%struct.hv_device*)*, i32 (%struct.hv_device*)* }
%struct.guid_t = type { [16 x i8] }
%struct.hv_vmbus_device_id = type { %struct.guid_t, i64 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.poll_table_struct = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.driver_private = type opaque
%struct.anon.65 = type { %struct.spinlock, %struct.list_head }
%struct.hv_device = type { %struct.guid_t, %struct.guid_t, i16, i16, %struct.device, i8*, %struct.vmbus_channel*, %struct.kset*, %struct.dentry* }
%struct.vmbus_channel = type { %struct.list_head, %struct.hv_device*, i32, %struct.vmbus_channel_offer_channel, i8, i8, i8, %struct.completion, i32, %struct.page*, i32, i32, %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info, %struct.vmbus_close_msg, i64, i64, i64, i8, %struct.tasklet_struct, void (i8*)*, i8*, void (%struct.vmbus_channel*, i32, i32)*, %struct.spinlock, i32, i8, i64, i32, void (%struct.vmbus_channel*)*, void (%struct.vmbus_channel*)*, %struct.list_head, %struct.vmbus_channel*, i8*, %struct.callback_head, %struct.kobject, i8, i8, i16, %struct.work_struct, i64, i64, i64, i8, i32, i32 }
%struct.vmbus_channel_offer_channel = type <{ %struct.vmbus_channel_message_header, %struct.vmbus_channel_offer, i32, i8, [3 x i8], i32 }>
%struct.vmbus_channel_message_header = type { i32, i32 }
%struct.vmbus_channel_offer = type { %struct.guid_t, %struct.guid_t, i64, i64, i16, i16, %union.anon.66, i16, i16 }
%union.anon.66 = type { %struct.anon.68 }
%struct.anon.68 = type { i32, [116 x i8] }
%struct.hv_ring_buffer_info = type { %struct.hv_ring_buffer*, i32, %struct.reciprocal_value, %struct.spinlock, i32, i32, %struct.mutex }
%struct.hv_ring_buffer = type { i32, i32, i32, i32, [12 x i32], %union.anon.69, [4028 x i8], [0 x i8] }
%union.anon.69 = type { i32 }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.vmbus_close_msg = type { %struct.vmbus_channel_msginfo, %struct.vmbus_channel_close_channel }
%struct.vmbus_channel_msginfo = type { %struct.list_head, %struct.list_head, %struct.completion, %struct.vmbus_channel*, %union.anon.71, i32, [0 x i8] }
%union.anon.71 = type { %struct.vmbus_channel_open_result }
%struct.vmbus_channel_open_result = type { %struct.vmbus_channel_message_header, i32, i32, i32 }
%struct.vmbus_channel_close_channel = type { %struct.vmbus_channel_message_header, i32 }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.72, i64 }
%union.anon.72 = type { void (i64)* }
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
%struct.hv_kbd_dev = type { %struct.hv_device*, %struct.serio*, %struct.synth_kbd_protocol_request, %struct.synth_kbd_protocol_response, %struct.completion, %struct.spinlock, i8 }
%struct.serio = type { i8*, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, i32 (%struct.serio*, i8)*, i32 (%struct.serio*)*, void (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, %struct.serio*, %struct.list_head, %struct.list_head, i32, %struct.serio_driver*, %struct.mutex, %struct.device, %struct.list_head, %struct.mutex* }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { i8*, %struct.serio_device_id*, i8, void (%struct.serio*)*, i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, %struct.serio_driver*)*, i32 (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, void (%struct.serio*)*, %struct.device_driver }
%struct.synth_kbd_protocol_request = type { %struct.synth_kbd_msg_hdr, %union.synth_kbd_version }
%struct.synth_kbd_msg_hdr = type { i32 }
%union.synth_kbd_version = type { i32 }
%struct.synth_kbd_protocol_response = type { %struct.synth_kbd_msg_hdr, i32 }
%struct.vmpacket_descriptor = type { i16, i16, i16, i16, i64 }
%struct.synth_kbd_msg = type { %struct.synth_kbd_msg_hdr, [0 x i8] }
%struct.synth_kbd_keystroke = type { %struct.synth_kbd_msg_hdr, i16, i16, i32 }

@hv_kbd_drv = internal global %struct.hv_driver { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8 0, %struct.guid_t zeroinitializer, %struct.hv_vmbus_device_id* getelementptr inbounds ([2 x %struct.hv_vmbus_device_id], [2 x %struct.hv_vmbus_device_id]* @id_table, i32 0, i32 0), %struct.device_driver { i8* null, %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 1, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.anon.65 zeroinitializer, i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)* @hv_kbd_probe, i32 (%struct.hv_device*)* @hv_kbd_remove, void (%struct.hv_device*)* null, i32 (%struct.hv_device*)* @hv_kbd_suspend, i32 (%struct.hv_device*)* @hv_kbd_resume }, align 8, !dbg !0
@__UNIQUE_ID_file232 = internal constant [57 x i8] c"hyperv_keyboard.file=drivers/input/serio/hyperv-keyboard\00", section ".modinfo", align 1, !dbg !198
@__UNIQUE_ID_license233 = internal constant [28 x i8] c"hyperv_keyboard.license=GPL\00", section ".modinfo", align 1, !dbg !205
@__UNIQUE_ID_description234 = internal constant [72 x i8] c"hyperv_keyboard.description=Microsoft Hyper-V Synthetic Keyboard Driver\00", section ".modinfo", align 1, !dbg !210
@__UNIQUE_ID___addressable_hv_kbd_init235 = internal global i8* bitcast (i32 ()* @hv_kbd_init to i8*), section ".discard.addressable", align 8, !dbg !215
@__exitcall_hv_kbd_exit = internal global void ()* @hv_kbd_exit, section ".exitcall.exit", align 8, !dbg !217
@.str = private unnamed_addr constant [16 x i8] c"hyperv_keyboard\00", align 1
@id_table = internal constant [2 x %struct.hv_vmbus_device_id] [%struct.hv_vmbus_device_id { %struct.guid_t { [16 x i8] c"m\AD\12\F9\17+\EAH\BDe\F9'\A6\1Cv\84" }, i64 0 }, %struct.hv_vmbus_device_id zeroinitializer], align 16, !dbg !224
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !246
@.str.2 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Illegal packet (type: %d, tid: %llx, size: %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"unhandled packet type %d, tid %llx len %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Illegal protocol response packet (len: %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Illegal keyboard event packet (len: %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"unhandled message type %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"synth_kbd protocol request failed (version %d)\0A\00", align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (void ()* @hv_kbd_exit to i8*), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_file232, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_license233, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__UNIQUE_ID_description234, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_hv_kbd_init235 to i8*), i8* bitcast (void ()** @__exitcall_hv_kbd_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @hv_kbd_exit() #0 section ".exit.text" !dbg !4096 {
entry:
  call void @vmbus_driver_unregister(%struct.hv_driver* @hv_kbd_drv) #11, !dbg !4097
  ret void, !dbg !4098
}

; Function Attrs: noredzone
declare dso_local void @vmbus_driver_unregister(%struct.hv_driver*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_kbd_init() #0 section ".init.text" !dbg !4099 {
entry:
  %call = call i32 @__vmbus_driver_register(%struct.hv_driver* @hv_kbd_drv, %struct.module* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4102
  ret i32 %call, !dbg !4103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_kbd_probe(%struct.hv_device* %hv_dev, %struct.hv_vmbus_device_id* %dev_id) #2 !dbg !4104 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4105, metadata !DIExpression()), !dbg !4111
  %retval = alloca i32, align 4
  %hv_dev.addr = alloca %struct.hv_device*, align 8
  %dev_id.addr = alloca %struct.hv_vmbus_device_id*, align 8
  %kbd_dev = alloca %struct.hv_kbd_dev*, align 8
  %hv_serio = alloca %struct.serio*, align 8
  %error = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.hv_device* %hv_dev, %struct.hv_device** %hv_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %hv_dev.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  store %struct.hv_vmbus_device_id* %dev_id, %struct.hv_vmbus_device_id** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_vmbus_device_id** %dev_id.addr, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.declare(metadata %struct.hv_kbd_dev** %kbd_dev, metadata !4118, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.declare(metadata %struct.serio** %hv_serio, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4207, metadata !DIExpression()), !dbg !4208
  %call = call i8* @kzalloc(i64 64, i32 3264) #11, !dbg !4209
  %0 = bitcast i8* %call to %struct.hv_kbd_dev*, !dbg !4209
  store %struct.hv_kbd_dev* %0, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4210
  %call1 = call i8* @kzalloc(i64 1048, i32 3264) #11, !dbg !4211
  %1 = bitcast i8* %call1 to %struct.serio*, !dbg !4211
  store %struct.serio* %1, %struct.serio** %hv_serio, align 8, !dbg !4212
  %2 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4213
  %tobool = icmp ne %struct.hv_kbd_dev* %2, null, !dbg !4213
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4215

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4216
  %tobool2 = icmp ne %struct.serio* %3, null, !dbg !4216
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4217

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -12, i32* %error, align 4, !dbg !4218
  br label %err_free_mem, !dbg !4220

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4221
  %5 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4222
  %hv_dev3 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %5, i32 0, i32 0, !dbg !4223
  store %struct.hv_device* %4, %struct.hv_device** %hv_dev3, align 8, !dbg !4224
  %6 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4225
  %7 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4226
  %hv_serio4 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %7, i32 0, i32 1, !dbg !4227
  store %struct.serio* %6, %struct.serio** %hv_serio4, align 8, !dbg !4228
  br label %do.body, !dbg !4229

do.body:                                          ; preds = %if.end
  %8 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4230
  %lock = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %8, i32 0, i32 5, !dbg !4230
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4231
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !4232
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !4232
  %11 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4230
  %lock6 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %11, i32 0, i32 5, !dbg !4230
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4230
  %rlock = bitcast %union.anon.3* %12 to %struct.raw_spinlock*, !dbg !4230
  %13 = bitcast %struct.spinlock* %lock6 to i8*, !dbg !4230
  %14 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 0, i1 false), !dbg !4230
  br label %do.end, !dbg !4230

do.end:                                           ; preds = %do.body
  %15 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4233
  %wait_event = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %15, i32 0, i32 4, !dbg !4233
  call void @__init_completion(%struct.completion* %wait_event) #11, !dbg !4233
  %16 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4234
  %17 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4235
  %18 = bitcast %struct.hv_kbd_dev* %17 to i8*, !dbg !4235
  call void @hv_set_drvdata(%struct.hv_device* %16, i8* %18) #11, !dbg !4236
  %19 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4237
  %device = getelementptr inbounds %struct.hv_device, %struct.hv_device* %19, i32 0, i32 4, !dbg !4238
  %20 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4239
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 18, !dbg !4240
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4241
  store %struct.device* %device, %struct.device** %parent, align 8, !dbg !4242
  %21 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4243
  %id = getelementptr inbounds %struct.serio, %struct.serio* %21, i32 0, i32 5, !dbg !4244
  %type = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id, i32 0, i32 0, !dbg !4245
  store i8 6, i8* %type, align 1, !dbg !4246
  %22 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4247
  %23 = bitcast %struct.hv_kbd_dev* %22 to i8*, !dbg !4247
  %24 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4248
  %port_data = getelementptr inbounds %struct.serio, %struct.serio* %24, i32 0, i32 0, !dbg !4249
  store i8* %23, i8** %port_data, align 8, !dbg !4250
  %25 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4251
  %name = getelementptr inbounds %struct.serio, %struct.serio* %25, i32 0, i32 1, !dbg !4252
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !4251
  %26 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4253
  %device7 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %26, i32 0, i32 4, !dbg !4254
  %call8 = call i8* @dev_name(%struct.device* %device7) #11, !dbg !4255
  %call9 = call i64 @strlcpy(i8* %arraydecay, i8* %call8, i64 32) #11, !dbg !4256
  %27 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4257
  %phys = getelementptr inbounds %struct.serio, %struct.serio* %27, i32 0, i32 2, !dbg !4258
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4257
  %28 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4259
  %device11 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %28, i32 0, i32 4, !dbg !4260
  %call12 = call i8* @dev_name(%struct.device* %device11) #11, !dbg !4261
  %call13 = call i64 @strlcpy(i8* %arraydecay10, i8* %call12, i64 32) #11, !dbg !4262
  %29 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4263
  %start = getelementptr inbounds %struct.serio, %struct.serio* %29, i32 0, i32 10, !dbg !4264
  store i32 (%struct.serio*)* @hv_kbd_start, i32 (%struct.serio*)** %start, align 8, !dbg !4265
  %30 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4266
  %stop = getelementptr inbounds %struct.serio, %struct.serio* %30, i32 0, i32 11, !dbg !4267
  store void (%struct.serio*)* @hv_kbd_stop, void (%struct.serio*)** %stop, align 8, !dbg !4268
  %31 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4269
  %channel = getelementptr inbounds %struct.hv_device, %struct.hv_device* %31, i32 0, i32 6, !dbg !4270
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4270
  %33 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4271
  %34 = bitcast %struct.hv_device* %33 to i8*, !dbg !4271
  %call14 = call i32 @vmbus_open(%struct.vmbus_channel* %32, i32 40960, i32 40960, i8* null, i32 0, void (i8*)* @hv_kbd_on_channel_callback, i8* %34) #11, !dbg !4272
  store i32 %call14, i32* %error, align 4, !dbg !4273
  %35 = load i32, i32* %error, align 4, !dbg !4274
  %tobool15 = icmp ne i32 %35, 0, !dbg !4274
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4276

if.then16:                                        ; preds = %do.end
  br label %err_free_mem, !dbg !4277

if.end17:                                         ; preds = %do.end
  %36 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4278
  %call18 = call i32 @hv_kbd_connect_to_vsp(%struct.hv_device* %36) #11, !dbg !4279
  store i32 %call18, i32* %error, align 4, !dbg !4280
  %37 = load i32, i32* %error, align 4, !dbg !4281
  %tobool19 = icmp ne i32 %37, 0, !dbg !4281
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4283

if.then20:                                        ; preds = %if.end17
  br label %err_close_vmbus, !dbg !4284

if.end21:                                         ; preds = %if.end17
  %38 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4285
  %hv_serio22 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %38, i32 0, i32 1, !dbg !4285
  %39 = load %struct.serio*, %struct.serio** %hv_serio22, align 8, !dbg !4285
  call void @__serio_register_port(%struct.serio* %39, %struct.module* null) #11, !dbg !4285
  %40 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4286
  %device23 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %40, i32 0, i32 4, !dbg !4287
  %call24 = call i32 @device_init_wakeup(%struct.device* %device23, i1 zeroext true) #11, !dbg !4288
  store i32 0, i32* %retval, align 4, !dbg !4289
  br label %return, !dbg !4289

err_close_vmbus:                                  ; preds = %if.then20
  call void @llvm.dbg.label(metadata !4290), !dbg !4291
  %41 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4292
  %channel25 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %41, i32 0, i32 6, !dbg !4293
  %42 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel25, align 8, !dbg !4293
  call void @vmbus_close(%struct.vmbus_channel* %42) #11, !dbg !4294
  br label %err_free_mem, !dbg !4294

err_free_mem:                                     ; preds = %err_close_vmbus, %if.then16, %if.then
  call void @llvm.dbg.label(metadata !4295), !dbg !4296
  %43 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4297
  %44 = bitcast %struct.serio* %43 to i8*, !dbg !4297
  call void @kfree(i8* %44) #11, !dbg !4298
  %45 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4299
  %46 = bitcast %struct.hv_kbd_dev* %45 to i8*, !dbg !4299
  call void @kfree(i8* %46) #11, !dbg !4300
  %47 = load i32, i32* %error, align 4, !dbg !4301
  store i32 %47, i32* %retval, align 4, !dbg !4302
  br label %return, !dbg !4302

return:                                           ; preds = %err_free_mem, %if.end21
  %48 = load i32, i32* %retval, align 4, !dbg !4303
  ret i32 %48, !dbg !4303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_kbd_remove(%struct.hv_device* %hv_dev) #2 !dbg !4304 {
entry:
  %hv_dev.addr = alloca %struct.hv_device*, align 8
  %kbd_dev = alloca %struct.hv_kbd_dev*, align 8
  store %struct.hv_device* %hv_dev, %struct.hv_device** %hv_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %hv_dev.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.declare(metadata %struct.hv_kbd_dev** %kbd_dev, metadata !4307, metadata !DIExpression()), !dbg !4308
  %0 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4309
  %call = call i8* @hv_get_drvdata(%struct.hv_device* %0) #11, !dbg !4310
  %1 = bitcast i8* %call to %struct.hv_kbd_dev*, !dbg !4310
  store %struct.hv_kbd_dev* %1, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4308
  %2 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4311
  %hv_serio = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %2, i32 0, i32 1, !dbg !4312
  %3 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !4312
  call void @serio_unregister_port(%struct.serio* %3) #11, !dbg !4313
  %4 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4314
  %channel = getelementptr inbounds %struct.hv_device, %struct.hv_device* %4, i32 0, i32 6, !dbg !4315
  %5 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4315
  call void @vmbus_close(%struct.vmbus_channel* %5) #11, !dbg !4316
  %6 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4317
  %7 = bitcast %struct.hv_kbd_dev* %6 to i8*, !dbg !4317
  call void @kfree(i8* %7) #11, !dbg !4318
  %8 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4319
  call void @hv_set_drvdata(%struct.hv_device* %8, i8* null) #11, !dbg !4320
  ret i32 0, !dbg !4321
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_kbd_suspend(%struct.hv_device* %hv_dev) #2 !dbg !4322 {
entry:
  %hv_dev.addr = alloca %struct.hv_device*, align 8
  store %struct.hv_device* %hv_dev, %struct.hv_device** %hv_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %hv_dev.addr, metadata !4323, metadata !DIExpression()), !dbg !4324
  %0 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4325
  %channel = getelementptr inbounds %struct.hv_device, %struct.hv_device* %0, i32 0, i32 6, !dbg !4326
  %1 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4326
  call void @vmbus_close(%struct.vmbus_channel* %1) #11, !dbg !4327
  ret i32 0, !dbg !4328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_kbd_resume(%struct.hv_device* %hv_dev) #2 !dbg !4329 {
entry:
  %hv_dev.addr = alloca %struct.hv_device*, align 8
  %ret = alloca i32, align 4
  store %struct.hv_device* %hv_dev, %struct.hv_device** %hv_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %hv_dev.addr, metadata !4330, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4332, metadata !DIExpression()), !dbg !4333
  %0 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4334
  %channel = getelementptr inbounds %struct.hv_device, %struct.hv_device* %0, i32 0, i32 6, !dbg !4335
  %1 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4335
  %2 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4336
  %3 = bitcast %struct.hv_device* %2 to i8*, !dbg !4336
  %call = call i32 @vmbus_open(%struct.vmbus_channel* %1, i32 40960, i32 40960, i8* null, i32 0, void (i8*)* @hv_kbd_on_channel_callback, i8* %3) #11, !dbg !4337
  store i32 %call, i32* %ret, align 4, !dbg !4338
  %4 = load i32, i32* %ret, align 4, !dbg !4339
  %cmp = icmp eq i32 %4, 0, !dbg !4341
  br i1 %cmp, label %if.then, label %if.end, !dbg !4342

if.then:                                          ; preds = %entry
  %5 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4343
  %call1 = call i32 @hv_kbd_connect_to_vsp(%struct.hv_device* %5) #11, !dbg !4344
  store i32 %call1, i32* %ret, align 4, !dbg !4345
  br label %if.end, !dbg !4346

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %ret, align 4, !dbg !4347
  ret i32 %6, !dbg !4348
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4349 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4352, metadata !DIExpression()), !dbg !4356
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4362, metadata !DIExpression()), !dbg !4363
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4364, metadata !DIExpression()), !dbg !4365
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4366, metadata !DIExpression()), !dbg !4367
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4368, metadata !DIExpression()), !dbg !4372
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4374, metadata !DIExpression()), !dbg !4378
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4380, metadata !DIExpression()), !dbg !4384
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4389, metadata !DIExpression()), !dbg !4390
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4391, metadata !DIExpression()), !dbg !4392
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4393, metadata !DIExpression()), !dbg !4394
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4395, metadata !DIExpression()), !dbg !4396
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4397, metadata !DIExpression()), !dbg !4398
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4399, metadata !DIExpression()), !dbg !4400
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4401, metadata !DIExpression()), !dbg !4402
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4403, metadata !DIExpression()), !dbg !4404
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  %0 = load i64, i64* %size.addr, align 8, !dbg !4409
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4410
  %or = or i32 %1, 256, !dbg !4411
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4412
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4413
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4414

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4415
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4416
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4417

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4418
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4419
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4420
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4421
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4398
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4422
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4423
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4424
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4425
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4426
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4427
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4428
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4428
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4428
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4428
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4428
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4429
  br label %kmalloc.exit, !dbg !4429

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4430
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4431
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4431
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4433

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4434
  br label %kmalloc_index.exit.i, !dbg !4434

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4435
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4437
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4438

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4439
  br label %kmalloc_index.exit.i, !dbg !4439

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4440
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4442
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4443

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4444
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4445
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4446

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4447
  br label %kmalloc_index.exit.i, !dbg !4447

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4448
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4450
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4451

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4452
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4453
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4454

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4455
  br label %kmalloc_index.exit.i, !dbg !4455

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4456
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4458
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4459

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4460
  br label %kmalloc_index.exit.i, !dbg !4460

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4461
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4463
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4464

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4465
  br label %kmalloc_index.exit.i, !dbg !4465

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4466
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4468
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4469

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4470
  br label %kmalloc_index.exit.i, !dbg !4470

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4471
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4473
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4474

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4475
  br label %kmalloc_index.exit.i, !dbg !4475

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4476
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4478
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4479

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4480
  br label %kmalloc_index.exit.i, !dbg !4480

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4481
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4483
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4484

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4485
  br label %kmalloc_index.exit.i, !dbg !4485

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4486
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4488
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4489

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4490
  br label %kmalloc_index.exit.i, !dbg !4490

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4491
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4493
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4494

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4495
  br label %kmalloc_index.exit.i, !dbg !4495

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4496
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4498
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4499

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4500
  br label %kmalloc_index.exit.i, !dbg !4500

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4501
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4503
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4504

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4505
  br label %kmalloc_index.exit.i, !dbg !4505

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4506
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4508
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4509

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4510
  br label %kmalloc_index.exit.i, !dbg !4510

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4511
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4513
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4514

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4515
  br label %kmalloc_index.exit.i, !dbg !4515

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4516
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4518
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4519

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4520
  br label %kmalloc_index.exit.i, !dbg !4520

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4521
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4523
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4524

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4525
  br label %kmalloc_index.exit.i, !dbg !4525

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4526
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4528
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4529

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4530
  br label %kmalloc_index.exit.i, !dbg !4530

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4531
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4533
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4534

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4535
  br label %kmalloc_index.exit.i, !dbg !4535

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4536
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4538
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4539

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4540
  br label %kmalloc_index.exit.i, !dbg !4540

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4541
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4543
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4544

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4545
  br label %kmalloc_index.exit.i, !dbg !4545

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4546
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4548
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4549

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4550
  br label %kmalloc_index.exit.i, !dbg !4550

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4551
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4553
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4554

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4555
  br label %kmalloc_index.exit.i, !dbg !4555

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4556
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4558
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4559

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4560
  br label %kmalloc_index.exit.i, !dbg !4560

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4561
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4563
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4564

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4565
  br label %kmalloc_index.exit.i, !dbg !4565

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4566
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4568
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4569

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4570
  br label %kmalloc_index.exit.i, !dbg !4570

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4571
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4573
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4574

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4575
  br label %kmalloc_index.exit.i, !dbg !4575

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4576, !srcloc !4579
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 231) #9, !dbg !4580, !srcloc !4583
  unreachable, !dbg !4584

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4585
  store i32 %45, i32* %index.i, align 4, !dbg !4586
  %46 = load i32, i32* %index.i, align 4, !dbg !4587
  %tobool.i = icmp ne i32 %46, 0, !dbg !4587
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4589

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4590
  br label %kmalloc.exit, !dbg !4590

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4591
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4592
  %and.i.i = and i32 %48, 17, !dbg !4592
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4592
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4592
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4592
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4592
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4594

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4595
  br label %kmalloc_type.exit.i, !dbg !4595

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4596
  %and2.i.i = and i32 %49, 1, !dbg !4597
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4596
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4596
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4596
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4598
  br label %kmalloc_type.exit.i, !dbg !4598

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4599
  %idxprom.i = zext i32 %51 to i64, !dbg !4600
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4600
  %52 = load i32, i32* %index.i, align 4, !dbg !4601
  %idxprom6.i = zext i32 %52 to i64, !dbg !4600
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4600
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4600
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4602
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4603
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4604
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4605
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4606
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4606
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4606
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4606
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4606
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4367
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4607
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4608
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4609
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4610
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4611
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4612
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4613
  store i8* %62, i8** %retval.i, align 8, !dbg !4614
  br label %kmalloc.exit, !dbg !4614

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4615
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4616
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4617
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4617
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4617
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4617
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4617
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4618
  br label %kmalloc.exit, !dbg !4618

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4619
  ret i8* %65, !dbg !4620
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #2 !dbg !248 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !4621, metadata !DIExpression()), !dbg !4622
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4623
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !4624
  store i32 0, i32* %done, align 8, !dbg !4625
  br label %do.body, !dbg !4626

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4627
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !4627
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #11, !dbg !4627
  br label %do.end, !dbg !4627

do.end:                                           ; preds = %do.body
  ret void, !dbg !4629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_set_drvdata(%struct.hv_device* %dev, i8* %data) #2 !dbg !4630 {
entry:
  %dev.addr = alloca %struct.hv_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.hv_device* %dev, %struct.hv_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %dev.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  %0 = load %struct.hv_device*, %struct.hv_device** %dev.addr, align 8, !dbg !4637
  %device = getelementptr inbounds %struct.hv_device, %struct.hv_device* %0, i32 0, i32 4, !dbg !4638
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4639
  call void @dev_set_drvdata(%struct.device* %device, i8* %1) #11, !dbg !4640
  ret void, !dbg !4641
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !4642 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4647
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4649
  %1 = load i8*, i8** %init_name, align 8, !dbg !4649
  %tobool = icmp ne i8* %1, null, !dbg !4647
  br i1 %tobool, label %if.then, label %if.end, !dbg !4650

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4651
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4652
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4652
  store i8* %3, i8** %retval, align 8, !dbg !4653
  br label %return, !dbg !4653

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4654
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4655
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #11, !dbg !4656
  store i8* %call, i8** %retval, align 8, !dbg !4657
  br label %return, !dbg !4657

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4658
  ret i8* %5, !dbg !4658
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_kbd_start(%struct.serio* %serio) #2 !dbg !4659 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !4660, metadata !DIExpression()), !dbg !4664
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4666, metadata !DIExpression()), !dbg !4667
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4105, metadata !DIExpression()), !dbg !4668
  %serio.addr = alloca %struct.serio*, align 8
  %kbd_dev = alloca %struct.hv_kbd_dev*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata %struct.hv_kbd_dev** %kbd_dev, metadata !4677, metadata !DIExpression()), !dbg !4678
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4679
  %port_data = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 0, !dbg !4680
  %1 = load i8*, i8** %port_data, align 8, !dbg !4680
  %2 = bitcast i8* %1 to %struct.hv_kbd_dev*, !dbg !4679
  store %struct.hv_kbd_dev* %2, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4678
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4681, metadata !DIExpression()), !dbg !4682
  br label %do.body, !dbg !4683

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4684

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4685, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4688, metadata !DIExpression()), !dbg !4687
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4687
  %conv = zext i1 %cmp to i32, !dbg !4687
  store i32 1, i32* %tmp, align 4, !dbg !4687
  %3 = load i32, i32* %tmp, align 4, !dbg !4687
  br label %do.body2, !dbg !4689

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4690

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4691

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4693, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4697, metadata !DIExpression()), !dbg !4696
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4696
  %conv8 = zext i1 %cmp7 to i32, !dbg !4696
  store i32 1, i32* %tmp9, align 4, !dbg !4696
  %4 = load i32, i32* %tmp9, align 4, !dbg !4696
  %call = call i64 @arch_local_irq_save() #11, !dbg !4698
  store i64 %call, i64* %flags, align 8, !dbg !4698
  br label %do.end, !dbg !4698

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4691

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4690

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4699, !srcloc !4700
  br label %do.body12, !dbg !4699

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4701
  %lock = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %5, i32 0, i32 5, !dbg !4701
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4702
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !4703
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !4703
  br label %do.end14, !dbg !4701

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4699

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4690

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4689

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4684

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4704
  %started = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %8, i32 0, i32 6, !dbg !4705
  store i8 1, i8* %started, align 8, !dbg !4706
  %9 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4707
  %lock19 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %9, i32 0, i32 5, !dbg !4708
  %10 = load i64, i64* %flags, align 8, !dbg !4709
  store %struct.spinlock* %lock19, %struct.spinlock** %lock.addr.i20, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !269, metadata !4710, metadata !DIExpression()) #9, !dbg !4713
  call void @llvm.dbg.declare(metadata !269, metadata !4714, metadata !DIExpression()) #9, !dbg !4713
  store i32 1, i32* %tmp.i, align 4, !dbg !4713
  %11 = load i32, i32* %tmp.i, align 4, !dbg !4713
  call void @llvm.dbg.declare(metadata !269, metadata !4715, metadata !DIExpression()) #9, !dbg !4720
  call void @llvm.dbg.declare(metadata !269, metadata !4721, metadata !DIExpression()) #9, !dbg !4720
  store i32 1, i32* %tmp8.i, align 4, !dbg !4720
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !4720
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !4722
  call void @arch_local_irq_restore(i64 %13) #13, !dbg !4722
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4723, !srcloc !4725
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !4726
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !4726
  %rlock.i21 = bitcast %union.anon.3* %15 to %struct.raw_spinlock*, !dbg !4726
  ret i32 0, !dbg !4728
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_kbd_stop(%struct.serio* %serio) #2 !dbg !4729 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !4660, metadata !DIExpression()), !dbg !4730
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4666, metadata !DIExpression()), !dbg !4732
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4105, metadata !DIExpression()), !dbg !4733
  %serio.addr = alloca %struct.serio*, align 8
  %kbd_dev = alloca %struct.hv_kbd_dev*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata %struct.hv_kbd_dev** %kbd_dev, metadata !4742, metadata !DIExpression()), !dbg !4743
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4744
  %port_data = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 0, !dbg !4745
  %1 = load i8*, i8** %port_data, align 8, !dbg !4745
  %2 = bitcast i8* %1 to %struct.hv_kbd_dev*, !dbg !4744
  store %struct.hv_kbd_dev* %2, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4743
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4746, metadata !DIExpression()), !dbg !4747
  br label %do.body, !dbg !4748

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4749

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4750, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4753, metadata !DIExpression()), !dbg !4752
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4752
  %conv = zext i1 %cmp to i32, !dbg !4752
  store i32 1, i32* %tmp, align 4, !dbg !4752
  %3 = load i32, i32* %tmp, align 4, !dbg !4752
  br label %do.body2, !dbg !4754

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4755

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4756

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4758, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4762, metadata !DIExpression()), !dbg !4761
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4761
  %conv8 = zext i1 %cmp7 to i32, !dbg !4761
  store i32 1, i32* %tmp9, align 4, !dbg !4761
  %4 = load i32, i32* %tmp9, align 4, !dbg !4761
  %call = call i64 @arch_local_irq_save() #11, !dbg !4763
  store i64 %call, i64* %flags, align 8, !dbg !4763
  br label %do.end, !dbg !4763

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4756

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4755

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4764, !srcloc !4765
  br label %do.body12, !dbg !4764

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4766
  %lock = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %5, i32 0, i32 5, !dbg !4766
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4767
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !4768
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !4768
  br label %do.end14, !dbg !4766

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4764

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4755

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4754

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4749

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4769
  %started = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %8, i32 0, i32 6, !dbg !4770
  store i8 0, i8* %started, align 8, !dbg !4771
  %9 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4772
  %lock19 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %9, i32 0, i32 5, !dbg !4773
  %10 = load i64, i64* %flags, align 8, !dbg !4774
  store %struct.spinlock* %lock19, %struct.spinlock** %lock.addr.i20, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !269, metadata !4710, metadata !DIExpression()) #9, !dbg !4775
  call void @llvm.dbg.declare(metadata !269, metadata !4714, metadata !DIExpression()) #9, !dbg !4775
  store i32 1, i32* %tmp.i, align 4, !dbg !4775
  %11 = load i32, i32* %tmp.i, align 4, !dbg !4775
  call void @llvm.dbg.declare(metadata !269, metadata !4715, metadata !DIExpression()) #9, !dbg !4776
  call void @llvm.dbg.declare(metadata !269, metadata !4721, metadata !DIExpression()) #9, !dbg !4776
  store i32 1, i32* %tmp8.i, align 4, !dbg !4776
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !4776
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !4777
  call void @arch_local_irq_restore(i64 %13) #13, !dbg !4777
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4778, !srcloc !4725
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !4779
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !4779
  %rlock.i21 = bitcast %union.anon.3* %15 to %struct.raw_spinlock*, !dbg !4779
  ret void, !dbg !4780
}

; Function Attrs: noredzone
declare dso_local i32 @vmbus_open(%struct.vmbus_channel*, i32, i32, i8*, i32, void (i8*)*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_kbd_on_channel_callback(i8* %context) #2 !dbg !4781 {
entry:
  %context.addr = alloca i8*, align 8
  %desc = alloca %struct.vmpacket_descriptor*, align 8
  %hv_dev = alloca %struct.hv_device*, align 8
  %bytes_recvd = alloca i32, align 4
  %req_id = alloca i64, align 8
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4782, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.declare(metadata %struct.vmpacket_descriptor** %desc, metadata !4784, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.declare(metadata %struct.hv_device** %hv_dev, metadata !4794, metadata !DIExpression()), !dbg !4795
  %0 = load i8*, i8** %context.addr, align 8, !dbg !4796
  %1 = bitcast i8* %0 to %struct.hv_device*, !dbg !4796
  store %struct.hv_device* %1, %struct.hv_device** %hv_dev, align 8, !dbg !4795
  call void @llvm.dbg.declare(metadata i32* %bytes_recvd, metadata !4797, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.declare(metadata i64* %req_id, metadata !4799, metadata !DIExpression()), !dbg !4800
  %2 = load %struct.hv_device*, %struct.hv_device** %hv_dev, align 8, !dbg !4801
  %channel = getelementptr inbounds %struct.hv_device, %struct.hv_device* %2, i32 0, i32 6, !dbg !4801
  %3 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4801
  %call = call %struct.vmpacket_descriptor* @hv_pkt_iter_first(%struct.vmbus_channel* %3) #11, !dbg !4801
  store %struct.vmpacket_descriptor* %call, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4801
  br label %for.cond, !dbg !4801

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4803
  %tobool = icmp ne %struct.vmpacket_descriptor* %4, null, !dbg !4801
  br i1 %tobool, label %for.body, label %for.end, !dbg !4801

for.body:                                         ; preds = %for.cond
  %5 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4805
  %len8 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %5, i32 0, i32 2, !dbg !4807
  %6 = load i16, i16* %len8, align 1, !dbg !4807
  %conv = zext i16 %6 to i32, !dbg !4805
  %mul = mul i32 %conv, 8, !dbg !4808
  store i32 %mul, i32* %bytes_recvd, align 4, !dbg !4809
  %7 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4810
  %trans_id = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %7, i32 0, i32 4, !dbg !4811
  %8 = load i64, i64* %trans_id, align 1, !dbg !4811
  store i64 %8, i64* %req_id, align 8, !dbg !4812
  %9 = load %struct.hv_device*, %struct.hv_device** %hv_dev, align 8, !dbg !4813
  %10 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4814
  %11 = load i32, i32* %bytes_recvd, align 4, !dbg !4815
  %12 = load i64, i64* %req_id, align 8, !dbg !4816
  call void @hv_kbd_handle_received_packet(%struct.hv_device* %9, %struct.vmpacket_descriptor* %10, i32 %11, i64 %12) #11, !dbg !4817
  br label %for.inc, !dbg !4818

for.inc:                                          ; preds = %for.body
  %13 = load %struct.hv_device*, %struct.hv_device** %hv_dev, align 8, !dbg !4803
  %channel1 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %13, i32 0, i32 6, !dbg !4803
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel1, align 8, !dbg !4803
  %15 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4803
  %call2 = call %struct.vmpacket_descriptor* @hv_pkt_iter_next(%struct.vmbus_channel* %14, %struct.vmpacket_descriptor* %15) #11, !dbg !4803
  store %struct.vmpacket_descriptor* %call2, %struct.vmpacket_descriptor** %desc, align 8, !dbg !4803
  br label %for.cond, !dbg !4803, !llvm.loop !4819

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_kbd_connect_to_vsp(%struct.hv_device* %hv_dev) #2 !dbg !4822 {
entry:
  %retval = alloca i32, align 4
  %hv_dev.addr = alloca %struct.hv_device*, align 8
  %kbd_dev = alloca %struct.hv_kbd_dev*, align 8
  %request = alloca %struct.synth_kbd_protocol_request*, align 8
  %response = alloca %struct.synth_kbd_protocol_response*, align 8
  %proto_status = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.hv_device* %hv_dev, %struct.hv_device** %hv_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %hv_dev.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.declare(metadata %struct.hv_kbd_dev** %kbd_dev, metadata !4825, metadata !DIExpression()), !dbg !4826
  %0 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4827
  %call = call i8* @hv_get_drvdata(%struct.hv_device* %0) #11, !dbg !4828
  %1 = bitcast i8* %call to %struct.hv_kbd_dev*, !dbg !4828
  store %struct.hv_kbd_dev* %1, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4826
  call void @llvm.dbg.declare(metadata %struct.synth_kbd_protocol_request** %request, metadata !4829, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.declare(metadata %struct.synth_kbd_protocol_response** %response, metadata !4832, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.declare(metadata i32* %proto_status, metadata !4835, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4837, metadata !DIExpression()), !dbg !4838
  %2 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4839
  %wait_event = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %2, i32 0, i32 4, !dbg !4840
  call void @reinit_completion(%struct.completion* %wait_event) #11, !dbg !4841
  %3 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4842
  %protocol_req = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %3, i32 0, i32 2, !dbg !4843
  store %struct.synth_kbd_protocol_request* %protocol_req, %struct.synth_kbd_protocol_request** %request, align 8, !dbg !4844
  %4 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %request, align 8, !dbg !4845
  %5 = bitcast %struct.synth_kbd_protocol_request* %4 to i8*, !dbg !4846
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false), !dbg !4846
  %6 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %request, align 8, !dbg !4847
  %header = getelementptr inbounds %struct.synth_kbd_protocol_request, %struct.synth_kbd_protocol_request* %6, i32 0, i32 0, !dbg !4848
  %type = getelementptr inbounds %struct.synth_kbd_msg_hdr, %struct.synth_kbd_msg_hdr* %header, i32 0, i32 0, !dbg !4849
  store i32 1, i32* %type, align 4, !dbg !4850
  %7 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %request, align 8, !dbg !4851
  %version_requested = getelementptr inbounds %struct.synth_kbd_protocol_request, %struct.synth_kbd_protocol_request* %7, i32 0, i32 1, !dbg !4852
  %version = bitcast %union.synth_kbd_version* %version_requested to i32*, !dbg !4853
  store i32 65536, i32* %version, align 4, !dbg !4854
  %8 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4855
  %channel = getelementptr inbounds %struct.hv_device, %struct.hv_device* %8, i32 0, i32 6, !dbg !4856
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4856
  %10 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %request, align 8, !dbg !4857
  %11 = bitcast %struct.synth_kbd_protocol_request* %10 to i8*, !dbg !4857
  %12 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %request, align 8, !dbg !4858
  %13 = ptrtoint %struct.synth_kbd_protocol_request* %12 to i64, !dbg !4859
  %call1 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %9, i8* %11, i32 8, i64 %13, i32 6, i32 1) #11, !dbg !4860
  store i32 %call1, i32* %error, align 4, !dbg !4861
  %14 = load i32, i32* %error, align 4, !dbg !4862
  %tobool = icmp ne i32 %14, 0, !dbg !4862
  br i1 %tobool, label %if.then, label %if.end, !dbg !4864

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %error, align 4, !dbg !4865
  store i32 %15, i32* %retval, align 4, !dbg !4866
  br label %return, !dbg !4866

if.end:                                           ; preds = %entry
  %16 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4867
  %wait_event2 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %16, i32 0, i32 4, !dbg !4869
  %call3 = call i64 @wait_for_completion_timeout(%struct.completion* %wait_event2, i64 2500) #11, !dbg !4870
  %tobool4 = icmp ne i64 %call3, 0, !dbg !4870
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4871

if.then5:                                         ; preds = %if.end
  store i32 -110, i32* %retval, align 4, !dbg !4872
  br label %return, !dbg !4872

if.end6:                                          ; preds = %if.end
  %17 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !4873
  %protocol_resp = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %17, i32 0, i32 3, !dbg !4874
  store %struct.synth_kbd_protocol_response* %protocol_resp, %struct.synth_kbd_protocol_response** %response, align 8, !dbg !4875
  %18 = load %struct.synth_kbd_protocol_response*, %struct.synth_kbd_protocol_response** %response, align 8, !dbg !4876
  %proto_status7 = getelementptr inbounds %struct.synth_kbd_protocol_response, %struct.synth_kbd_protocol_response* %18, i32 0, i32 1, !dbg !4876
  %19 = load i32, i32* %proto_status7, align 4, !dbg !4876
  store i32 %19, i32* %proto_status, align 4, !dbg !4877
  %20 = load i32, i32* %proto_status, align 4, !dbg !4878
  %conv = zext i32 %20 to i64, !dbg !4878
  %and = and i64 %conv, 1, !dbg !4880
  %tobool8 = icmp ne i64 %and, 0, !dbg !4880
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4881

if.then9:                                         ; preds = %if.end6
  %21 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !4882
  %device = getelementptr inbounds %struct.hv_device, %struct.hv_device* %21, i32 0, i32 4, !dbg !4882
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %device, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 65536) #14, !dbg !4882
  store i32 -19, i32* %retval, align 4, !dbg !4884
  br label %return, !dbg !4884

if.end10:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4, !dbg !4885
  br label %return, !dbg !4885

return:                                           ; preds = %if.end10, %if.then9, %if.then5, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4886
  ret i32 %22, !dbg !4886
}

; Function Attrs: noredzone
declare dso_local void @__serio_register_port(%struct.serio*, %struct.module*) #1

; Function Attrs: noredzone
declare dso_local i32 @device_init_wakeup(%struct.device*, i1 zeroext) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @vmbus_close(%struct.vmbus_channel*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4887 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4891, metadata !DIExpression()), !dbg !4896
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4898, metadata !DIExpression()), !dbg !4899
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  %0 = load i64, i64* %size.addr, align 8, !dbg !4902
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4904
  br i1 %1, label %if.then, label %if.end447, !dbg !4905

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4906
  %tobool = icmp ne i64 %2, 0, !dbg !4906
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4909

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4910
  br label %return, !dbg !4910

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4911
  %cmp = icmp ult i64 %3, 4096, !dbg !4913
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4914

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4915
  br label %return, !dbg !4915

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub = sub i64 %4, 1, !dbg !4916
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4916
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4916

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub4 = sub i64 %6, 1, !dbg !4916
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4916
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4916

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub6 = sub i64 %8, 1, !dbg !4916
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4916
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4916

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4916

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub9 = sub i64 %9, 1, !dbg !4916
  %and = and i64 %sub9, -9223372036854775808, !dbg !4916
  %tobool10 = icmp ne i64 %and, 0, !dbg !4916
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4916

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4916

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub13 = sub i64 %10, 1, !dbg !4916
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4916
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4916
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4916

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4916

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub18 = sub i64 %11, 1, !dbg !4916
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4916
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4916
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4916

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4916

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub23 = sub i64 %12, 1, !dbg !4916
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4916
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4916
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4916

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4916

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub28 = sub i64 %13, 1, !dbg !4916
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4916
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4916
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4916

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4916

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub33 = sub i64 %14, 1, !dbg !4916
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4916
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4916
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4916

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4916

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub38 = sub i64 %15, 1, !dbg !4916
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4916
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4916
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4916

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4916

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub43 = sub i64 %16, 1, !dbg !4916
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4916
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4916
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4916

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4916

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub48 = sub i64 %17, 1, !dbg !4916
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4916
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4916
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4916

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4916

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub53 = sub i64 %18, 1, !dbg !4916
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4916
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4916
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4916

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4916

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub58 = sub i64 %19, 1, !dbg !4916
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4916
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4916
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4916

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4916

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub63 = sub i64 %20, 1, !dbg !4916
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4916
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4916
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4916

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4916

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub68 = sub i64 %21, 1, !dbg !4916
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4916
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4916
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4916

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4916

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub73 = sub i64 %22, 1, !dbg !4916
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4916
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4916
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4916

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4916

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub78 = sub i64 %23, 1, !dbg !4916
  %and79 = and i64 %sub78, 562949953421312, !dbg !4916
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4916
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4916

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4916

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub83 = sub i64 %24, 1, !dbg !4916
  %and84 = and i64 %sub83, 281474976710656, !dbg !4916
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4916
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4916

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4916

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub88 = sub i64 %25, 1, !dbg !4916
  %and89 = and i64 %sub88, 140737488355328, !dbg !4916
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4916
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4916

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4916

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub93 = sub i64 %26, 1, !dbg !4916
  %and94 = and i64 %sub93, 70368744177664, !dbg !4916
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4916
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4916

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4916

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub98 = sub i64 %27, 1, !dbg !4916
  %and99 = and i64 %sub98, 35184372088832, !dbg !4916
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4916
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4916

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4916

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub103 = sub i64 %28, 1, !dbg !4916
  %and104 = and i64 %sub103, 17592186044416, !dbg !4916
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4916
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4916

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4916

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub108 = sub i64 %29, 1, !dbg !4916
  %and109 = and i64 %sub108, 8796093022208, !dbg !4916
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4916
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4916

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4916

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub113 = sub i64 %30, 1, !dbg !4916
  %and114 = and i64 %sub113, 4398046511104, !dbg !4916
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4916
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4916

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4916

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub118 = sub i64 %31, 1, !dbg !4916
  %and119 = and i64 %sub118, 2199023255552, !dbg !4916
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4916
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4916

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4916

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub123 = sub i64 %32, 1, !dbg !4916
  %and124 = and i64 %sub123, 1099511627776, !dbg !4916
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4916
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4916

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4916

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub128 = sub i64 %33, 1, !dbg !4916
  %and129 = and i64 %sub128, 549755813888, !dbg !4916
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4916
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4916

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4916

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub133 = sub i64 %34, 1, !dbg !4916
  %and134 = and i64 %sub133, 274877906944, !dbg !4916
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4916
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4916

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4916

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub138 = sub i64 %35, 1, !dbg !4916
  %and139 = and i64 %sub138, 137438953472, !dbg !4916
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4916
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4916

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4916

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub143 = sub i64 %36, 1, !dbg !4916
  %and144 = and i64 %sub143, 68719476736, !dbg !4916
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4916
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4916

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4916

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub148 = sub i64 %37, 1, !dbg !4916
  %and149 = and i64 %sub148, 34359738368, !dbg !4916
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4916
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4916

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4916

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub153 = sub i64 %38, 1, !dbg !4916
  %and154 = and i64 %sub153, 17179869184, !dbg !4916
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4916
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4916

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4916

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub158 = sub i64 %39, 1, !dbg !4916
  %and159 = and i64 %sub158, 8589934592, !dbg !4916
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4916
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4916

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4916

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub163 = sub i64 %40, 1, !dbg !4916
  %and164 = and i64 %sub163, 4294967296, !dbg !4916
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4916
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4916

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4916

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub168 = sub i64 %41, 1, !dbg !4916
  %and169 = and i64 %sub168, 2147483648, !dbg !4916
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4916
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4916

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4916

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub173 = sub i64 %42, 1, !dbg !4916
  %and174 = and i64 %sub173, 1073741824, !dbg !4916
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4916
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4916

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4916

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub178 = sub i64 %43, 1, !dbg !4916
  %and179 = and i64 %sub178, 536870912, !dbg !4916
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4916
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4916

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4916

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub183 = sub i64 %44, 1, !dbg !4916
  %and184 = and i64 %sub183, 268435456, !dbg !4916
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4916
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4916

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4916

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub188 = sub i64 %45, 1, !dbg !4916
  %and189 = and i64 %sub188, 134217728, !dbg !4916
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4916
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4916

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4916

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub193 = sub i64 %46, 1, !dbg !4916
  %and194 = and i64 %sub193, 67108864, !dbg !4916
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4916
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4916

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4916

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub198 = sub i64 %47, 1, !dbg !4916
  %and199 = and i64 %sub198, 33554432, !dbg !4916
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4916
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4916

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4916

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub203 = sub i64 %48, 1, !dbg !4916
  %and204 = and i64 %sub203, 16777216, !dbg !4916
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4916
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4916

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4916

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub208 = sub i64 %49, 1, !dbg !4916
  %and209 = and i64 %sub208, 8388608, !dbg !4916
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4916
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4916

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4916

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub213 = sub i64 %50, 1, !dbg !4916
  %and214 = and i64 %sub213, 4194304, !dbg !4916
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4916
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4916

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4916

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub218 = sub i64 %51, 1, !dbg !4916
  %and219 = and i64 %sub218, 2097152, !dbg !4916
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4916
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4916

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4916

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub223 = sub i64 %52, 1, !dbg !4916
  %and224 = and i64 %sub223, 1048576, !dbg !4916
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4916
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4916

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4916

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub228 = sub i64 %53, 1, !dbg !4916
  %and229 = and i64 %sub228, 524288, !dbg !4916
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4916
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4916

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4916

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub233 = sub i64 %54, 1, !dbg !4916
  %and234 = and i64 %sub233, 262144, !dbg !4916
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4916
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4916

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4916

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub238 = sub i64 %55, 1, !dbg !4916
  %and239 = and i64 %sub238, 131072, !dbg !4916
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4916
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4916

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4916

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub243 = sub i64 %56, 1, !dbg !4916
  %and244 = and i64 %sub243, 65536, !dbg !4916
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4916
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4916

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4916

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub248 = sub i64 %57, 1, !dbg !4916
  %and249 = and i64 %sub248, 32768, !dbg !4916
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4916
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4916

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4916

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub253 = sub i64 %58, 1, !dbg !4916
  %and254 = and i64 %sub253, 16384, !dbg !4916
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4916
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4916

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4916

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub258 = sub i64 %59, 1, !dbg !4916
  %and259 = and i64 %sub258, 8192, !dbg !4916
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4916
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4916

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4916

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub263 = sub i64 %60, 1, !dbg !4916
  %and264 = and i64 %sub263, 4096, !dbg !4916
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4916
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4916

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4916

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub268 = sub i64 %61, 1, !dbg !4916
  %and269 = and i64 %sub268, 2048, !dbg !4916
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4916
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4916

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4916

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub273 = sub i64 %62, 1, !dbg !4916
  %and274 = and i64 %sub273, 1024, !dbg !4916
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4916
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4916

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4916

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub278 = sub i64 %63, 1, !dbg !4916
  %and279 = and i64 %sub278, 512, !dbg !4916
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4916
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4916

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4916

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub283 = sub i64 %64, 1, !dbg !4916
  %and284 = and i64 %sub283, 256, !dbg !4916
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4916
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4916

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4916

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub288 = sub i64 %65, 1, !dbg !4916
  %and289 = and i64 %sub288, 128, !dbg !4916
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4916
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4916

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4916

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub293 = sub i64 %66, 1, !dbg !4916
  %and294 = and i64 %sub293, 64, !dbg !4916
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4916
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4916

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4916

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub298 = sub i64 %67, 1, !dbg !4916
  %and299 = and i64 %sub298, 32, !dbg !4916
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4916
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4916

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4916

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub303 = sub i64 %68, 1, !dbg !4916
  %and304 = and i64 %sub303, 16, !dbg !4916
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4916
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4916

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4916

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub308 = sub i64 %69, 1, !dbg !4916
  %and309 = and i64 %sub308, 8, !dbg !4916
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4916
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4916

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4916

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub313 = sub i64 %70, 1, !dbg !4916
  %and314 = and i64 %sub313, 4, !dbg !4916
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4916
  %71 = zext i1 %tobool315 to i64, !dbg !4916
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4916
  br label %cond.end, !dbg !4916

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4916
  br label %cond.end317, !dbg !4916

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4916
  br label %cond.end319, !dbg !4916

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4916
  br label %cond.end321, !dbg !4916

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4916
  br label %cond.end323, !dbg !4916

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4916
  br label %cond.end325, !dbg !4916

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4916
  br label %cond.end327, !dbg !4916

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4916
  br label %cond.end329, !dbg !4916

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4916
  br label %cond.end331, !dbg !4916

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4916
  br label %cond.end333, !dbg !4916

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4916
  br label %cond.end335, !dbg !4916

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4916
  br label %cond.end337, !dbg !4916

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4916
  br label %cond.end339, !dbg !4916

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4916
  br label %cond.end341, !dbg !4916

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4916
  br label %cond.end343, !dbg !4916

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4916
  br label %cond.end345, !dbg !4916

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4916
  br label %cond.end347, !dbg !4916

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4916
  br label %cond.end349, !dbg !4916

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4916
  br label %cond.end351, !dbg !4916

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4916
  br label %cond.end353, !dbg !4916

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4916
  br label %cond.end355, !dbg !4916

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4916
  br label %cond.end357, !dbg !4916

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4916
  br label %cond.end359, !dbg !4916

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4916
  br label %cond.end361, !dbg !4916

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4916
  br label %cond.end363, !dbg !4916

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4916
  br label %cond.end365, !dbg !4916

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4916
  br label %cond.end367, !dbg !4916

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4916
  br label %cond.end369, !dbg !4916

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4916
  br label %cond.end371, !dbg !4916

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4916
  br label %cond.end373, !dbg !4916

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4916
  br label %cond.end375, !dbg !4916

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4916
  br label %cond.end377, !dbg !4916

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4916
  br label %cond.end379, !dbg !4916

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4916
  br label %cond.end381, !dbg !4916

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4916
  br label %cond.end383, !dbg !4916

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4916
  br label %cond.end385, !dbg !4916

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4916
  br label %cond.end387, !dbg !4916

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4916
  br label %cond.end389, !dbg !4916

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4916
  br label %cond.end391, !dbg !4916

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4916
  br label %cond.end393, !dbg !4916

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4916
  br label %cond.end395, !dbg !4916

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4916
  br label %cond.end397, !dbg !4916

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4916
  br label %cond.end399, !dbg !4916

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4916
  br label %cond.end401, !dbg !4916

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4916
  br label %cond.end403, !dbg !4916

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4916
  br label %cond.end405, !dbg !4916

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4916
  br label %cond.end407, !dbg !4916

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4916
  br label %cond.end409, !dbg !4916

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4916
  br label %cond.end411, !dbg !4916

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4916
  br label %cond.end413, !dbg !4916

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4916
  br label %cond.end415, !dbg !4916

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4916
  br label %cond.end417, !dbg !4916

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4916
  br label %cond.end419, !dbg !4916

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4916
  br label %cond.end421, !dbg !4916

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4916
  br label %cond.end423, !dbg !4916

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4916
  br label %cond.end425, !dbg !4916

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4916
  br label %cond.end427, !dbg !4916

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4916
  br label %cond.end429, !dbg !4916

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4916
  br label %cond.end431, !dbg !4916

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4916
  br label %cond.end433, !dbg !4916

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4916
  br label %cond.end435, !dbg !4916

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4916
  br label %cond.end437, !dbg !4916

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4916
  br label %cond.end440, !dbg !4916

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4916

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4916
  br label %cond.end444, !dbg !4916

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4916
  %sub443 = sub i64 %72, 1, !dbg !4916
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4916
  br label %cond.end444, !dbg !4916

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4916
  %sub446 = sub i32 %cond445, 12, !dbg !4917
  %add = add i32 %sub446, 1, !dbg !4918
  store i32 %add, i32* %retval, align 4, !dbg !4919
  br label %return, !dbg !4919

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4920
  %dec = add i64 %73, -1, !dbg !4920
  store i64 %dec, i64* %size.addr, align 8, !dbg !4920
  %74 = load i64, i64* %size.addr, align 8, !dbg !4921
  %shr = lshr i64 %74, 12, !dbg !4921
  store i64 %shr, i64* %size.addr, align 8, !dbg !4921
  %75 = load i64, i64* %size.addr, align 8, !dbg !4922
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4899
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4923
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4924
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !4923, !srcloc !4925
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4923
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4926
  %add.i = add i32 %79, 1, !dbg !4927
  store i32 %add.i, i32* %retval, align 4, !dbg !4928
  br label %return, !dbg !4928

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4929
  ret i32 %80, !dbg !4929
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4930 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4891, metadata !DIExpression()), !dbg !4934
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4898, metadata !DIExpression()), !dbg !4936
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  %0 = load i64, i64* %n.addr, align 8, !dbg !4939
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4936
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4940
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4941
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !4940, !srcloc !4925
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4940
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4942
  %add.i = add i32 %4, 1, !dbg !4943
  %sub = sub i32 %add.i, 1, !dbg !4944
  ret i32 %sub, !dbg !4945
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !4946 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4950, metadata !DIExpression()), !dbg !4951
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4954, metadata !DIExpression()), !dbg !4955
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4956, metadata !DIExpression()), !dbg !4957
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4958
  ret i8* %0, !dbg !4959
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4960 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4967
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4968
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4969
  store i8* %0, i8** %driver_data, align 8, !dbg !4970
  ret void, !dbg !4971
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !4972 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4979
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4980
  %1 = load i8*, i8** %name, align 8, !dbg !4980
  ret i8* %1, !dbg !4981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !4982 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4986, metadata !DIExpression()), !dbg !4987
  %call = call i64 @arch_local_save_flags() #11, !dbg !4988
  store i64 %call, i64* %f, align 8, !dbg !4989
  call void @arch_local_irq_disable() #11, !dbg !4990
  %0 = load i64, i64* %f, align 8, !dbg !4991
  ret i64 %0, !dbg !4992
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !4993 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4994, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4997, metadata !DIExpression()), !dbg !4996
  %0 = load i64, i64* %__edi, align 8, !dbg !4996
  store i64 %0, i64* %__edi, align 8, !dbg !4996
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4998, metadata !DIExpression()), !dbg !4996
  %1 = load i64, i64* %__esi, align 8, !dbg !4996
  store i64 %1, i64* %__esi, align 8, !dbg !4996
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4999, metadata !DIExpression()), !dbg !4996
  %2 = load i64, i64* %__edx, align 8, !dbg !4996
  store i64 %2, i64* %__edx, align 8, !dbg !4996
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5000, metadata !DIExpression()), !dbg !4996
  %3 = load i64, i64* %__ecx, align 8, !dbg !4996
  store i64 %3, i64* %__ecx, align 8, !dbg !4996
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5001, metadata !DIExpression()), !dbg !4996
  %4 = load i64, i64* %__eax, align 8, !dbg !4996
  store i64 %4, i64* %__eax, align 8, !dbg !4996
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4996
  %6 = call i64 @llvm.read_register.i64(metadata !4090), !dbg !5002
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !5002, !srcloc !5005
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5002
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5002
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5002
  call void @llvm.write_register.i64(metadata !4090, i64 %asmresult1), !dbg !5002
  %8 = load i64, i64* %__eax, align 8, !dbg !5002
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5006, metadata !DIExpression()), !dbg !5008
  store i64 -1, i64* %__mask, align 8, !dbg !5008
  %9 = load i64, i64* %__mask, align 8, !dbg !5008
  store i64 %9, i64* %tmp, align 8, !dbg !5008
  %10 = load i64, i64* %tmp, align 8, !dbg !5008
  %and = and i64 %8, %10, !dbg !5002
  store i64 %and, i64* %__ret, align 8, !dbg !5002
  %11 = load i64, i64* %__ret, align 8, !dbg !4996
  store i64 %11, i64* %tmp2, align 8, !dbg !5009
  %12 = load i64, i64* %tmp2, align 8, !dbg !4996
  ret i64 %12, !dbg !5010
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !5011 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5012, metadata !DIExpression()), !dbg !5014
  %0 = load i64, i64* %__edi, align 8, !dbg !5014
  store i64 %0, i64* %__edi, align 8, !dbg !5014
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5015, metadata !DIExpression()), !dbg !5014
  %1 = load i64, i64* %__esi, align 8, !dbg !5014
  store i64 %1, i64* %__esi, align 8, !dbg !5014
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5016, metadata !DIExpression()), !dbg !5014
  %2 = load i64, i64* %__edx, align 8, !dbg !5014
  store i64 %2, i64* %__edx, align 8, !dbg !5014
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5017, metadata !DIExpression()), !dbg !5014
  %3 = load i64, i64* %__ecx, align 8, !dbg !5014
  store i64 %3, i64* %__ecx, align 8, !dbg !5014
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5018, metadata !DIExpression()), !dbg !5014
  %4 = load i64, i64* %__eax, align 8, !dbg !5014
  store i64 %4, i64* %__eax, align 8, !dbg !5014
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5014
  %6 = call i64 @llvm.read_register.i64(metadata !4090), !dbg !5014
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !5014, !srcloc !5019
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5014
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5014
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5014
  call void @llvm.write_register.i64(metadata !4090, i64 %asmresult1), !dbg !5014
  ret void, !dbg !5020
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !5021 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5024, metadata !DIExpression()), !dbg !5026
  %0 = load i64, i64* %__edi, align 8, !dbg !5026
  store i64 %0, i64* %__edi, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5027, metadata !DIExpression()), !dbg !5026
  %1 = load i64, i64* %__esi, align 8, !dbg !5026
  store i64 %1, i64* %__esi, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5028, metadata !DIExpression()), !dbg !5026
  %2 = load i64, i64* %__edx, align 8, !dbg !5026
  store i64 %2, i64* %__edx, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5029, metadata !DIExpression()), !dbg !5026
  %3 = load i64, i64* %__ecx, align 8, !dbg !5026
  store i64 %3, i64* %__ecx, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5030, metadata !DIExpression()), !dbg !5026
  %4 = load i64, i64* %__eax, align 8, !dbg !5026
  store i64 %4, i64* %__eax, align 8, !dbg !5026
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5026
  %6 = call i64 @llvm.read_register.i64(metadata !4090), !dbg !5026
  %7 = load i64, i64* %f.addr, align 8, !dbg !5026
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !5026, !srcloc !5031
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5026
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5026
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5026
  call void @llvm.write_register.i64(metadata !4090, i64 %asmresult1), !dbg !5026
  ret void, !dbg !5032
}

; Function Attrs: noredzone
declare dso_local %struct.vmpacket_descriptor* @hv_pkt_iter_first(%struct.vmbus_channel*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_kbd_handle_received_packet(%struct.hv_device* %hv_dev, %struct.vmpacket_descriptor* %desc, i32 %bytes_recvd, i64 %req_id) #2 !dbg !5033 {
entry:
  %hv_dev.addr = alloca %struct.hv_device*, align 8
  %desc.addr = alloca %struct.vmpacket_descriptor*, align 8
  %bytes_recvd.addr = alloca i32, align 4
  %req_id.addr = alloca i64, align 8
  %msg = alloca %struct.synth_kbd_msg*, align 8
  %msg_sz = alloca i32, align 4
  store %struct.hv_device* %hv_dev, %struct.hv_device** %hv_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %hv_dev.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store %struct.vmpacket_descriptor* %desc, %struct.vmpacket_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmpacket_descriptor** %desc.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  store i32 %bytes_recvd, i32* %bytes_recvd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bytes_recvd.addr, metadata !5040, metadata !DIExpression()), !dbg !5041
  store i64 %req_id, i64* %req_id.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %req_id.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.declare(metadata %struct.synth_kbd_msg** %msg, metadata !5044, metadata !DIExpression()), !dbg !5051
  call void @llvm.dbg.declare(metadata i32* %msg_sz, metadata !5052, metadata !DIExpression()), !dbg !5053
  %0 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc.addr, align 8, !dbg !5054
  %type = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %0, i32 0, i32 0, !dbg !5055
  %1 = load i16, i16* %type, align 1, !dbg !5055
  %conv = zext i16 %1 to i32, !dbg !5054
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 6, label %sw.bb1
  ], !dbg !5056

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5057

sw.bb1:                                           ; preds = %entry
  %2 = load i32, i32* %bytes_recvd.addr, align 4, !dbg !5059
  %3 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc.addr, align 8, !dbg !5060
  %offset8 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %3, i32 0, i32 1, !dbg !5061
  %4 = load i16, i16* %offset8, align 1, !dbg !5061
  %conv2 = zext i16 %4 to i32, !dbg !5060
  %shl = shl i32 %conv2, 3, !dbg !5062
  %sub = sub i32 %2, %shl, !dbg !5063
  store i32 %sub, i32* %msg_sz, align 4, !dbg !5064
  %5 = load i32, i32* %msg_sz, align 4, !dbg !5065
  %conv3 = zext i32 %5 to i64, !dbg !5065
  %cmp = icmp ule i64 %conv3, 4, !dbg !5067
  br i1 %cmp, label %if.then, label %if.end, !dbg !5068

if.then:                                          ; preds = %sw.bb1
  %6 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !5069
  %device = getelementptr inbounds %struct.hv_device, %struct.hv_device* %6, i32 0, i32 4, !dbg !5069
  %7 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc.addr, align 8, !dbg !5069
  %type5 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %7, i32 0, i32 0, !dbg !5069
  %8 = load i16, i16* %type5, align 1, !dbg !5069
  %conv6 = zext i16 %8 to i32, !dbg !5069
  %9 = load i64, i64* %req_id.addr, align 8, !dbg !5069
  %10 = load i32, i32* %msg_sz, align 4, !dbg !5069
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %device, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %conv6, i64 %9, i32 %10) #14, !dbg !5069
  br label %sw.epilog, !dbg !5071

if.end:                                           ; preds = %sw.bb1
  %11 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc.addr, align 8, !dbg !5072
  %12 = bitcast %struct.vmpacket_descriptor* %11 to i8*, !dbg !5073
  %13 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc.addr, align 8, !dbg !5074
  %offset87 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %13, i32 0, i32 1, !dbg !5075
  %14 = load i16, i16* %offset87, align 1, !dbg !5075
  %conv8 = zext i16 %14 to i32, !dbg !5074
  %shl9 = shl i32 %conv8, 3, !dbg !5076
  %idx.ext = sext i32 %shl9 to i64, !dbg !5077
  %add.ptr = getelementptr i8, i8* %12, i64 %idx.ext, !dbg !5077
  %15 = bitcast i8* %add.ptr to %struct.synth_kbd_msg*, !dbg !5073
  store %struct.synth_kbd_msg* %15, %struct.synth_kbd_msg** %msg, align 8, !dbg !5078
  %16 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !5079
  %17 = load %struct.synth_kbd_msg*, %struct.synth_kbd_msg** %msg, align 8, !dbg !5080
  %18 = load i32, i32* %msg_sz, align 4, !dbg !5081
  call void @hv_kbd_on_receive(%struct.hv_device* %16, %struct.synth_kbd_msg* %17, i32 %18) #11, !dbg !5082
  br label %sw.epilog, !dbg !5083

sw.default:                                       ; preds = %entry
  %19 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !5084
  %device10 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %19, i32 0, i32 4, !dbg !5084
  %20 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %desc.addr, align 8, !dbg !5084
  %type11 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %20, i32 0, i32 0, !dbg !5084
  %21 = load i16, i16* %type11, align 1, !dbg !5084
  %conv12 = zext i16 %21 to i32, !dbg !5084
  %22 = load i64, i64* %req_id.addr, align 8, !dbg !5084
  %23 = load i32, i32* %bytes_recvd.addr, align 4, !dbg !5084
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %device10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %conv12, i64 %22, i32 %23) #14, !dbg !5084
  br label %sw.epilog, !dbg !5085

sw.epilog:                                        ; preds = %sw.default, %if.end, %if.then, %sw.bb
  ret void, !dbg !5086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.vmpacket_descriptor* @hv_pkt_iter_next(%struct.vmbus_channel* %channel, %struct.vmpacket_descriptor* %pkt) #2 !dbg !5087 {
entry:
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %pkt.addr = alloca %struct.vmpacket_descriptor*, align 8
  %nxt = alloca %struct.vmpacket_descriptor*, align 8
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  store %struct.vmpacket_descriptor* %pkt, %struct.vmpacket_descriptor** %pkt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmpacket_descriptor** %pkt.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.declare(metadata %struct.vmpacket_descriptor** %nxt, metadata !5096, metadata !DIExpression()), !dbg !5097
  %0 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !5098
  %1 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %pkt.addr, align 8, !dbg !5099
  %call = call %struct.vmpacket_descriptor* @__hv_pkt_iter_next(%struct.vmbus_channel* %0, %struct.vmpacket_descriptor* %1) #11, !dbg !5100
  store %struct.vmpacket_descriptor* %call, %struct.vmpacket_descriptor** %nxt, align 8, !dbg !5101
  %2 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %nxt, align 8, !dbg !5102
  %tobool = icmp ne %struct.vmpacket_descriptor* %2, null, !dbg !5102
  br i1 %tobool, label %if.end, label %if.then, !dbg !5104

if.then:                                          ; preds = %entry
  %3 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !5105
  call void @hv_pkt_iter_close(%struct.vmbus_channel* %3) #11, !dbg !5106
  br label %if.end, !dbg !5106

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %nxt, align 8, !dbg !5107
  ret %struct.vmpacket_descriptor* %4, !dbg !5108
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_kbd_on_receive(%struct.hv_device* %hv_dev, %struct.synth_kbd_msg* %msg, i32 %msg_length) #2 !dbg !5109 {
entry:
  %lock.addr.i63 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i63, metadata !4660, metadata !DIExpression()), !dbg !5112
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4666, metadata !DIExpression()), !dbg !5115
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4105, metadata !DIExpression()), !dbg !5116
  %hv_dev.addr = alloca %struct.hv_device*, align 8
  %msg.addr = alloca %struct.synth_kbd_msg*, align 8
  %msg_length.addr = alloca i32, align 4
  %kbd_dev = alloca %struct.hv_kbd_dev*, align 8
  %ks_msg = alloca %struct.synth_kbd_keystroke*, align 8
  %flags = alloca i64, align 8
  %msg_type = alloca i32, align 4
  %info = alloca i32, align 4
  %scan_code = alloca i16, align 2
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  store %struct.hv_device* %hv_dev, %struct.hv_device** %hv_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %hv_dev.addr, metadata !5123, metadata !DIExpression()), !dbg !5124
  store %struct.synth_kbd_msg* %msg, %struct.synth_kbd_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.synth_kbd_msg** %msg.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  store i32 %msg_length, i32* %msg_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msg_length.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.declare(metadata %struct.hv_kbd_dev** %kbd_dev, metadata !5129, metadata !DIExpression()), !dbg !5130
  %0 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !5131
  %call = call i8* @hv_get_drvdata(%struct.hv_device* %0) #11, !dbg !5132
  %1 = bitcast i8* %call to %struct.hv_kbd_dev*, !dbg !5132
  store %struct.hv_kbd_dev* %1, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5130
  call void @llvm.dbg.declare(metadata %struct.synth_kbd_keystroke** %ks_msg, metadata !5133, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5135, metadata !DIExpression()), !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %msg_type, metadata !5137, metadata !DIExpression()), !dbg !5138
  %2 = load %struct.synth_kbd_msg*, %struct.synth_kbd_msg** %msg.addr, align 8, !dbg !5139
  %header = getelementptr inbounds %struct.synth_kbd_msg, %struct.synth_kbd_msg* %2, i32 0, i32 0, !dbg !5139
  %type = getelementptr inbounds %struct.synth_kbd_msg_hdr, %struct.synth_kbd_msg_hdr* %header, i32 0, i32 0, !dbg !5139
  %3 = load i32, i32* %type, align 4, !dbg !5139
  store i32 %3, i32* %msg_type, align 4, !dbg !5138
  call void @llvm.dbg.declare(metadata i32* %info, metadata !5140, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.declare(metadata i16* %scan_code, metadata !5142, metadata !DIExpression()), !dbg !5143
  %4 = load i32, i32* %msg_type, align 4, !dbg !5144
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
  ], !dbg !5145

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %msg_length.addr, align 4, !dbg !5146
  %conv = zext i32 %5 to i64, !dbg !5146
  %cmp = icmp ult i64 %conv, 8, !dbg !5148
  br i1 %cmp, label %if.then, label %if.end, !dbg !5149

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !5150
  %device = getelementptr inbounds %struct.hv_device, %struct.hv_device* %6, i32 0, i32 4, !dbg !5150
  %7 = load i32, i32* %msg_length.addr, align 4, !dbg !5150
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %device, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %7) #14, !dbg !5150
  br label %sw.epilog, !dbg !5152

if.end:                                           ; preds = %sw.bb
  %8 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5153
  %protocol_resp = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %8, i32 0, i32 3, !dbg !5154
  %9 = bitcast %struct.synth_kbd_protocol_response* %protocol_resp to i8*, !dbg !5155
  %10 = load %struct.synth_kbd_msg*, %struct.synth_kbd_msg** %msg.addr, align 8, !dbg !5156
  %11 = bitcast %struct.synth_kbd_msg* %10 to i8*, !dbg !5155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 4 %11, i64 8, i1 false), !dbg !5155
  %12 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5157
  %wait_event = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %12, i32 0, i32 4, !dbg !5158
  call void @complete(%struct.completion* %wait_event) #11, !dbg !5159
  br label %sw.epilog, !dbg !5160

sw.bb2:                                           ; preds = %entry
  %13 = load i32, i32* %msg_length.addr, align 4, !dbg !5161
  %conv3 = zext i32 %13 to i64, !dbg !5161
  %cmp4 = icmp ult i64 %conv3, 12, !dbg !5163
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !5164

if.then6:                                         ; preds = %sw.bb2
  %14 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !5165
  %device7 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %14, i32 0, i32 4, !dbg !5165
  %15 = load i32, i32* %msg_length.addr, align 4, !dbg !5165
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %device7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %15) #14, !dbg !5165
  br label %sw.epilog, !dbg !5167

if.end8:                                          ; preds = %sw.bb2
  %16 = load %struct.synth_kbd_msg*, %struct.synth_kbd_msg** %msg.addr, align 8, !dbg !5168
  %17 = bitcast %struct.synth_kbd_msg* %16 to %struct.synth_kbd_keystroke*, !dbg !5169
  store %struct.synth_kbd_keystroke* %17, %struct.synth_kbd_keystroke** %ks_msg, align 8, !dbg !5170
  %18 = load %struct.synth_kbd_keystroke*, %struct.synth_kbd_keystroke** %ks_msg, align 8, !dbg !5171
  %info9 = getelementptr inbounds %struct.synth_kbd_keystroke, %struct.synth_kbd_keystroke* %18, i32 0, i32 3, !dbg !5171
  %19 = load i32, i32* %info9, align 4, !dbg !5171
  store i32 %19, i32* %info, align 4, !dbg !5172
  br label %do.body, !dbg !5173

do.body:                                          ; preds = %if.end8
  br label %do.body10, !dbg !5174

do.body10:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5175, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5178, metadata !DIExpression()), !dbg !5177
  %cmp11 = icmp eq i64* %__dummy, %__dummy2, !dbg !5177
  %conv12 = zext i1 %cmp11 to i32, !dbg !5177
  store i32 1, i32* %tmp, align 4, !dbg !5177
  %20 = load i32, i32* %tmp, align 4, !dbg !5177
  br label %do.body13, !dbg !5179

do.body13:                                        ; preds = %do.body10
  br label %do.body14, !dbg !5180

do.body14:                                        ; preds = %do.body13
  br label %do.body15, !dbg !5181

do.body15:                                        ; preds = %do.body14
  call void @llvm.dbg.declare(metadata i64* %__dummy16, metadata !5183, metadata !DIExpression()), !dbg !5186
  call void @llvm.dbg.declare(metadata i64* %__dummy217, metadata !5187, metadata !DIExpression()), !dbg !5186
  %cmp18 = icmp eq i64* %__dummy16, %__dummy217, !dbg !5186
  %conv19 = zext i1 %cmp18 to i32, !dbg !5186
  store i32 1, i32* %tmp20, align 4, !dbg !5186
  %21 = load i32, i32* %tmp20, align 4, !dbg !5186
  %call21 = call i64 @arch_local_irq_save() #11, !dbg !5188
  store i64 %call21, i64* %flags, align 8, !dbg !5188
  br label %do.end, !dbg !5188

do.end:                                           ; preds = %do.body15
  br label %do.end22, !dbg !5181

do.end22:                                         ; preds = %do.end
  br label %do.body23, !dbg !5180

do.body23:                                        ; preds = %do.end22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5189, !srcloc !5190
  br label %do.body24, !dbg !5189

do.body24:                                        ; preds = %do.body23
  %22 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5191
  %lock = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %22, i32 0, i32 5, !dbg !5191
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5192
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !5193
  %rlock.i = bitcast %union.anon.3* %24 to %struct.raw_spinlock*, !dbg !5193
  br label %do.end26, !dbg !5191

do.end26:                                         ; preds = %do.body24
  br label %do.end27, !dbg !5189

do.end27:                                         ; preds = %do.end26
  br label %do.end28, !dbg !5180

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !5179

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !5174

do.end30:                                         ; preds = %do.end29
  %25 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5194
  %started = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %25, i32 0, i32 6, !dbg !5196
  %26 = load i8, i8* %started, align 8, !dbg !5196
  %tobool = trunc i8 %26 to i1, !dbg !5196
  br i1 %tobool, label %if.then31, label %if.end54, !dbg !5197

if.then31:                                        ; preds = %do.end30
  %27 = load i32, i32* %info, align 4, !dbg !5198
  %conv32 = zext i32 %27 to i64, !dbg !5198
  %and = and i64 %conv32, 4, !dbg !5201
  %tobool33 = icmp ne i64 %and, 0, !dbg !5201
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !5202

if.then34:                                        ; preds = %if.then31
  %28 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5203
  %hv_serio = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %28, i32 0, i32 1, !dbg !5204
  %29 = load %struct.serio*, %struct.serio** %hv_serio, align 8, !dbg !5204
  %call35 = call i32 @serio_interrupt(%struct.serio* %29, i8 zeroext -32, i32 0) #11, !dbg !5205
  br label %if.end36, !dbg !5205

if.end36:                                         ; preds = %if.then34, %if.then31
  %30 = load i32, i32* %info, align 4, !dbg !5206
  %conv37 = zext i32 %30 to i64, !dbg !5206
  %and38 = and i64 %conv37, 8, !dbg !5208
  %tobool39 = icmp ne i64 %and38, 0, !dbg !5208
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !5209

if.then40:                                        ; preds = %if.end36
  %31 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5210
  %hv_serio41 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %31, i32 0, i32 1, !dbg !5211
  %32 = load %struct.serio*, %struct.serio** %hv_serio41, align 8, !dbg !5211
  %call42 = call i32 @serio_interrupt(%struct.serio* %32, i8 zeroext -31, i32 0) #11, !dbg !5212
  br label %if.end43, !dbg !5212

if.end43:                                         ; preds = %if.then40, %if.end36
  %33 = load %struct.synth_kbd_keystroke*, %struct.synth_kbd_keystroke** %ks_msg, align 8, !dbg !5213
  %make_code = getelementptr inbounds %struct.synth_kbd_keystroke, %struct.synth_kbd_keystroke* %33, i32 0, i32 1, !dbg !5213
  %34 = load i16, i16* %make_code, align 4, !dbg !5213
  store i16 %34, i16* %scan_code, align 2, !dbg !5214
  %35 = load i32, i32* %info, align 4, !dbg !5215
  %conv44 = zext i32 %35 to i64, !dbg !5215
  %and45 = and i64 %conv44, 2, !dbg !5217
  %tobool46 = icmp ne i64 %and45, 0, !dbg !5217
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !5218

if.then47:                                        ; preds = %if.end43
  %36 = load i16, i16* %scan_code, align 2, !dbg !5219
  %conv48 = zext i16 %36 to i32, !dbg !5219
  %or = or i32 %conv48, 128, !dbg !5219
  %conv49 = trunc i32 %or to i16, !dbg !5219
  store i16 %conv49, i16* %scan_code, align 2, !dbg !5219
  br label %if.end50, !dbg !5220

if.end50:                                         ; preds = %if.then47, %if.end43
  %37 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5221
  %hv_serio51 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %37, i32 0, i32 1, !dbg !5222
  %38 = load %struct.serio*, %struct.serio** %hv_serio51, align 8, !dbg !5222
  %39 = load i16, i16* %scan_code, align 2, !dbg !5223
  %conv52 = trunc i16 %39 to i8, !dbg !5223
  %call53 = call i32 @serio_interrupt(%struct.serio* %38, i8 zeroext %conv52, i32 0) #11, !dbg !5224
  br label %if.end54, !dbg !5225

if.end54:                                         ; preds = %if.end50, %do.end30
  %40 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %kbd_dev, align 8, !dbg !5226
  %lock55 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %40, i32 0, i32 5, !dbg !5227
  %41 = load i64, i64* %flags, align 8, !dbg !5228
  store %struct.spinlock* %lock55, %struct.spinlock** %lock.addr.i63, align 8
  store i64 %41, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !269, metadata !4710, metadata !DIExpression()) #9, !dbg !5229
  call void @llvm.dbg.declare(metadata !269, metadata !4714, metadata !DIExpression()) #9, !dbg !5229
  store i32 1, i32* %tmp.i, align 4, !dbg !5229
  %42 = load i32, i32* %tmp.i, align 4, !dbg !5229
  call void @llvm.dbg.declare(metadata !269, metadata !4715, metadata !DIExpression()) #9, !dbg !5230
  call void @llvm.dbg.declare(metadata !269, metadata !4721, metadata !DIExpression()) #9, !dbg !5230
  store i32 1, i32* %tmp8.i, align 4, !dbg !5230
  %43 = load i32, i32* %tmp8.i, align 4, !dbg !5230
  %44 = load i64, i64* %flags.addr.i, align 8, !dbg !5231
  call void @arch_local_irq_restore(i64 %44) #13, !dbg !5231
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5232, !srcloc !4725
  %45 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i63, align 8, !dbg !5233
  %46 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %45, i32 0, i32 0, !dbg !5233
  %rlock.i64 = bitcast %union.anon.3* %46 to %struct.raw_spinlock*, !dbg !5233
  %47 = load i32, i32* %info, align 4, !dbg !5234
  %conv56 = zext i32 %47 to i64, !dbg !5234
  %and57 = and i64 %conv56, 2, !dbg !5236
  %tobool58 = icmp ne i64 %and57, 0, !dbg !5236
  br i1 %tobool58, label %if.end61, label %if.then59, !dbg !5237

if.then59:                                        ; preds = %if.end54
  %48 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !5238
  %device60 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %48, i32 0, i32 4, !dbg !5239
  call void @pm_wakeup_hard_event(%struct.device* %device60) #11, !dbg !5240
  br label %if.end61, !dbg !5240

if.end61:                                         ; preds = %if.then59, %if.end54
  br label %sw.epilog, !dbg !5241

sw.default:                                       ; preds = %entry
  %49 = load %struct.hv_device*, %struct.hv_device** %hv_dev.addr, align 8, !dbg !5242
  %device62 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %49, i32 0, i32 4, !dbg !5242
  %50 = load i32, i32* %msg_type, align 4, !dbg !5242
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %device62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %50) #14, !dbg !5242
  br label %sw.epilog, !dbg !5243

sw.epilog:                                        ; preds = %sw.default, %if.end61, %if.then6, %if.end, %if.then
  ret void, !dbg !5244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hv_get_drvdata(%struct.hv_device* %dev) #2 !dbg !5245 {
entry:
  %dev.addr = alloca %struct.hv_device*, align 8
  store %struct.hv_device* %dev, %struct.hv_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_device** %dev.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  %0 = load %struct.hv_device*, %struct.hv_device** %dev.addr, align 8, !dbg !5250
  %device = getelementptr inbounds %struct.hv_device, %struct.hv_device* %0, i32 0, i32 4, !dbg !5251
  %call = call i8* @dev_get_drvdata(%struct.device* %device) #11, !dbg !5252
  ret i8* %call, !dbg !5253
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #1

; Function Attrs: noredzone
declare dso_local i32 @serio_interrupt(%struct.serio*, i8 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_wakeup_hard_event(%struct.device* %dev) #2 !dbg !5254 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5257
  call void @pm_wakeup_dev_event(%struct.device* %0, i32 0, i1 zeroext true) #11, !dbg !5258
  ret void, !dbg !5259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5260 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5265
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5266
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5266
  ret i8* %1, !dbg !5267
}

; Function Attrs: noredzone
declare dso_local void @pm_wakeup_dev_event(%struct.device*, i32, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local %struct.vmpacket_descriptor* @__hv_pkt_iter_next(%struct.vmbus_channel*, %struct.vmpacket_descriptor*) #1

; Function Attrs: noredzone
declare dso_local void @hv_pkt_iter_close(%struct.vmbus_channel*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reinit_completion(%struct.completion* %x) #2 !dbg !5268 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5271
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !5272
  store i32 0, i32* %done, align 8, !dbg !5273
  ret void, !dbg !5274
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i8*, i32, i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #1

; Function Attrs: noredzone
declare dso_local void @serio_unregister_port(%struct.serio*) #1

; Function Attrs: noredzone
declare dso_local i32 @__vmbus_driver_register(%struct.hv_driver*, %struct.module*, i8*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4090}
!llvm.module.flags = !{!4091, !4092, !4093, !4094}
!llvm.ident = !{!4095}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hv_kbd_drv", scope: !2, file: !3, line: 416, type: !278, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172, globals: !197, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/serio/hyperv-keyboard.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !73, !81, !87, !93, !100, !127, !132, !138, !143, !150, !156}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !67, line: 343, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !74, line: 524, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!80 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !74, line: 502, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 44, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_channel_state", file: !94, line: 696, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/hyperv.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "CHANNEL_OFFER_STATE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "CHANNEL_OPENING_STATE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "CHANNEL_OPEN_STATE", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "CHANNEL_OPENED_STATE", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_channel_message_type", file: !94, line: 453, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!102 = !DIEnumerator(name: "CHANNELMSG_INVALID", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "CHANNELMSG_OFFERCHANNEL", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "CHANNELMSG_RESCIND_CHANNELOFFER", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "CHANNELMSG_REQUESTOFFERS", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "CHANNELMSG_ALLOFFERS_DELIVERED", value: 4, isUnsigned: true)
!107 = !DIEnumerator(name: "CHANNELMSG_OPENCHANNEL", value: 5, isUnsigned: true)
!108 = !DIEnumerator(name: "CHANNELMSG_OPENCHANNEL_RESULT", value: 6, isUnsigned: true)
!109 = !DIEnumerator(name: "CHANNELMSG_CLOSECHANNEL", value: 7, isUnsigned: true)
!110 = !DIEnumerator(name: "CHANNELMSG_GPADL_HEADER", value: 8, isUnsigned: true)
!111 = !DIEnumerator(name: "CHANNELMSG_GPADL_BODY", value: 9, isUnsigned: true)
!112 = !DIEnumerator(name: "CHANNELMSG_GPADL_CREATED", value: 10, isUnsigned: true)
!113 = !DIEnumerator(name: "CHANNELMSG_GPADL_TEARDOWN", value: 11, isUnsigned: true)
!114 = !DIEnumerator(name: "CHANNELMSG_GPADL_TORNDOWN", value: 12, isUnsigned: true)
!115 = !DIEnumerator(name: "CHANNELMSG_RELID_RELEASED", value: 13, isUnsigned: true)
!116 = !DIEnumerator(name: "CHANNELMSG_INITIATE_CONTACT", value: 14, isUnsigned: true)
!117 = !DIEnumerator(name: "CHANNELMSG_VERSION_RESPONSE", value: 15, isUnsigned: true)
!118 = !DIEnumerator(name: "CHANNELMSG_UNLOAD", value: 16, isUnsigned: true)
!119 = !DIEnumerator(name: "CHANNELMSG_UNLOAD_RESPONSE", value: 17, isUnsigned: true)
!120 = !DIEnumerator(name: "CHANNELMSG_18", value: 18, isUnsigned: true)
!121 = !DIEnumerator(name: "CHANNELMSG_19", value: 19, isUnsigned: true)
!122 = !DIEnumerator(name: "CHANNELMSG_20", value: 20, isUnsigned: true)
!123 = !DIEnumerator(name: "CHANNELMSG_TL_CONNECT_REQUEST", value: 21, isUnsigned: true)
!124 = !DIEnumerator(name: "CHANNELMSG_MODIFYCHANNEL", value: 22, isUnsigned: true)
!125 = !DIEnumerator(name: "CHANNELMSG_TL_CONNECT_RESULT", value: 23, isUnsigned: true)
!126 = !DIEnumerator(name: "CHANNELMSG_COUNT", value: 24, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hv_callback_mode", file: !94, line: 844, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "HV_CALL_BATCHED", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "HV_CALL_DIRECT", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "HV_CALL_ISR", value: 2, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !133, line: 11, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !139, line: 10, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!140 = !{!141, !142}
!141 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !144, line: 305, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!146, !147, !148, !149}
!146 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "synth_kbd_msg_type", file: !3, line: 27, baseType: !7, size: 32, elements: !151)
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "SYNTH_KBD_PROTOCOL_REQUEST", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "SYNTH_KBD_PROTOCOL_RESPONSE", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "SYNTH_KBD_EVENT", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "SYNTH_KBD_LED_INDICATORS", value: 4, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_packet_type", file: !94, line: 432, baseType: !7, size: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!158 = !DIEnumerator(name: "VM_PKT_INVALID", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "VM_PKT_SYNCH", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "VM_PKT_ADD_XFER_PAGESET", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "VM_PKT_RM_XFER_PAGESET", value: 3, isUnsigned: true)
!162 = !DIEnumerator(name: "VM_PKT_ESTABLISH_GPADL", value: 4, isUnsigned: true)
!163 = !DIEnumerator(name: "VM_PKT_TEARDOWN_GPADL", value: 5, isUnsigned: true)
!164 = !DIEnumerator(name: "VM_PKT_DATA_INBAND", value: 6, isUnsigned: true)
!165 = !DIEnumerator(name: "VM_PKT_DATA_USING_XFER_PAGES", value: 7, isUnsigned: true)
!166 = !DIEnumerator(name: "VM_PKT_DATA_USING_GPADL", value: 8, isUnsigned: true)
!167 = !DIEnumerator(name: "VM_PKT_DATA_USING_GPA_DIRECT", value: 9, isUnsigned: true)
!168 = !DIEnumerator(name: "VM_PKT_CANCEL_REQUEST", value: 10, isUnsigned: true)
!169 = !DIEnumerator(name: "VM_PKT_COMP", value: 11, isUnsigned: true)
!170 = !DIEnumerator(name: "VM_PKT_DATA_USING_ADDITIONAL_PKT", value: 12, isUnsigned: true)
!171 = !DIEnumerator(name: "VM_PKT_ADDITIONAL_DATA", value: 13, isUnsigned: true)
!172 = !{!173, !175, !176, !177, !180, !182, !184, !193, !192}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 148, baseType: !7)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !179, line: 76, flags: DIFlagFwdDecl)
!179 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !181, line: 27, baseType: !7)
!181 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !183, line: 31, baseType: !180)
!183 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "synth_kbd_keystroke", file: !3, line: 68, size: 96, elements: !186)
!186 = !{!187, !191, !195, !196}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !185, file: !3, line: 69, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "synth_kbd_msg_hdr", file: !3, line: 37, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !3, line: 38, baseType: !182, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "make_code", scope: !185, file: !3, line: 70, baseType: !192, size: 16, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !183, line: 29, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !181, line: 24, baseType: !194)
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !185, file: !3, line: 71, baseType: !192, size: 16, offset: 48)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !185, file: !3, line: 72, baseType: !182, size: 32, offset: 64)
!197 = !{!198, !205, !210, !215, !217, !0, !224, !246}
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file232", scope: !2, file: !3, line: 438, type: !200, isLocal: true, isDefinition: true, align: 8)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 456, elements: !203)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!203 = !{!204}
!204 = !DISubrange(count: 57)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license233", scope: !2, file: !3, line: 438, type: !207, isLocal: true, isDefinition: true, align: 8)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 224, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 28)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description234", scope: !2, file: !3, line: 439, type: !212, isLocal: true, isDefinition: true, align: 8)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 576, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 72)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hv_kbd_init235", scope: !2, file: !3, line: 441, type: !176, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "__exitcall_hv_kbd_exit", scope: !2, file: !3, line: 442, type: !219, isLocal: true, isDefinition: true)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !220, line: 117, baseType: !221)
!220 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "id_table", scope: !2, file: !3, line: 408, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 384, elements: !244)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_vmbus_device_id", file: !229, line: 438, size: 192, elements: !230)
!229 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !242}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !228, file: !229, line: 439, baseType: !232, size: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !233, line: 25, baseType: !234)
!233 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 23, size: 128, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !234, file: !233, line: 24, baseType: !237, size: 128)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, elements: !240)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !181, line: 21, baseType: !239)
!239 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!240 = !{!241}
!241 = !DISubrange(count: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !228, file: !229, line: 440, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !229, line: 14, baseType: !175)
!244 = !{!245}
!245 = !DISubrange(count: 2)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "__key", scope: !248, file: !249, line: 88, type: !276, isLocal: true, isDefinition: true)
!248 = distinct !DISubprogram(name: "__init_completion", scope: !249, file: !249, line: 85, type: !250, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!249 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DISubroutineType(types: !251)
!251 = !{null, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !249, line: 26, size: 192, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !253, file: !249, line: 27, baseType: !7, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !253, file: !249, line: 28, baseType: !257, size: 128, offset: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !258, line: 43, size: 128, elements: !259)
!258 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !270}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !257, file: !258, line: 44, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !262, line: 29, baseType: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !262, line: 20, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !263, file: !262, line: 21, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !267, line: 25, baseType: !268)
!267 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 25, elements: !269)
!269 = !{}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !257, file: !258, line: 45, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 178, size: 128, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !174, line: 179, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !271, file: !174, line: 179, baseType: !274, size: 64, offset: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !277, line: 187, elements: !269)
!277 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_driver", file: !94, line: 1180, size: 1920, elements: !279)
!279 = !{!280, !282, !285, !286, !288, !3853, !3858, !4080, !4084, !4088, !4089}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !94, line: 1181, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "hvsock", scope: !278, file: !94, line: 1195, baseType: !283, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 30, baseType: !284)
!284 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !278, file: !94, line: 1198, baseType: !232, size: 128, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !278, file: !94, line: 1199, baseType: !287, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !278, file: !94, line: 1201, baseType: !289, size: 1152, offset: 320)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 95, size: 1152, elements: !290)
!290 = !{!291, !292, !3812, !3813, !3814, !3815, !3816, !3828, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !88, line: 96, baseType: !281, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !289, file: !88, line: 97, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !295, line: 82, size: 1408, elements: !296)
!295 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !298, !299, !3783, !3784, !3785, !3786, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3801, !3802, !3803, !3804, !3805, !3809, !3810, !3811}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !295, line: 83, baseType: !281, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !294, file: !295, line: 84, baseType: !281, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !294, file: !295, line: 85, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !302)
!302 = !{!303, !3420, !3421, !3424, !3425, !3476, !3477, !3479, !3480, !3481, !3482, !3491, !3600, !3613, !3616, !3617, !3621, !3623, !3624, !3625, !3629, !3635, !3636, !3639, !3643, !3733, !3734, !3735, !3736, !3737, !3771, !3772, !3773, !3776, !3779, !3780, !3781, !3782}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !301, file: !67, line: 462, baseType: !304, size: 512)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !305, line: 64, size: 512, elements: !306)
!305 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !308, !309, !311, !364, !3271, !3410, !3415, !3416, !3417, !3418, !3419}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 65, baseType: !281, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !304, file: !305, line: 66, baseType: !271, size: 128, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !304, file: !305, line: 67, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !304, file: !305, line: 68, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !305, line: 192, size: 704, elements: !314)
!314 = !{!315, !316, !324, !325}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !313, file: !305, line: 193, baseType: !271, size: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !313, file: !305, line: 194, baseType: !317, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !262, line: 83, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !262, line: 71, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !262, line: 72, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !262, line: 72, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !321, file: !262, line: 73, baseType: !263)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !313, file: !305, line: 195, baseType: !304, size: 512, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !313, file: !305, line: 196, baseType: !326, size: 64, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !305, line: 156, size: 192, elements: !329)
!329 = !{!330, !336, !341}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !328, file: !305, line: 157, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !312, !310}
!335 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !305, line: 158, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!281, !312, !310}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !328, file: !305, line: 159, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!335, !312, !310, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !305, line: 148, size: 20736, elements: !348)
!348 = !{!349, !354, !358, !359, !363}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !347, file: !305, line: 149, baseType: !350, size: 192)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 192, elements: !352)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!352 = !{!353}
!353 = !DISubrange(count: 3)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !347, file: !305, line: 150, baseType: !355, size: 4096, offset: 192)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 4096, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !347, file: !305, line: 151, baseType: !335, size: 32, offset: 4288)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !347, file: !305, line: 152, baseType: !360, size: 16384, offset: 4320)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 16384, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 2048)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !347, file: !305, line: 153, baseType: !335, size: 32, offset: 20704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !304, file: !305, line: 69, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !305, line: 138, size: 448, elements: !367)
!367 = !{!368, !372, !400, !402, !3233, !3261, !3265}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !366, file: !305, line: 139, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !310}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !366, file: !305, line: 140, baseType: !373, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !376, line: 230, size: 128, elements: !377)
!376 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !393}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !375, file: !376, line: 231, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !310, !387, !351}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 60, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !384, line: 73, baseType: !385)
!384 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !384, line: 15, baseType: !386)
!386 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !376, line: 30, size: 128, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !388, file: !376, line: 31, baseType: !281, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !388, file: !376, line: 32, baseType: !392, size: 16, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 19, baseType: !194)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !375, file: !376, line: 232, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!382, !310, !387, !281, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 55, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !384, line: 72, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !384, line: 16, baseType: !175)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !366, file: !305, line: 141, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !366, file: !305, line: 142, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !376, line: 84, size: 320, elements: !407)
!407 = !{!408, !409, !413, !3230, !3231}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !376, line: 85, baseType: !281, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !406, file: !376, line: 86, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!392, !310, !387, !335}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !406, file: !376, line: 88, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!392, !310, !417, !335}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !376, line: 168, size: 448, elements: !419)
!419 = !{!420, !421, !422, !423, !3225, !3226}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !418, file: !376, line: 169, baseType: !388, size: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !418, file: !376, line: 170, baseType: !397, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !418, file: !376, line: 171, baseType: !176, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !418, file: !376, line: 172, baseType: !424, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!382, !427, !310, !417, !351, !601, !397}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !429)
!429 = !{!430, !448, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3208, !3209, !3218, !3219, !3220, !3221, !3222, !3223, !3224}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !428, file: !44, line: 920, baseType: !431, size: 128)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !44, line: 917, size: 128, elements: !432)
!432 = !{!433, !439}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !431, file: !44, line: 918, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !435, line: 58, size: 64, elements: !436)
!435 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !435, line: 59, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !431, file: !44, line: 919, baseType: !440, size: 128, align: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !174, line: 216, size: 128, align: 64, elements: !441)
!441 = !{!442, !444}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !174, line: 217, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !440, file: !174, line: 218, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !443}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !428, file: !44, line: 921, baseType: !449, size: 128, offset: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !450, line: 8, size: 128, elements: !451)
!450 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!451 = !{!452, !456}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !449, file: !450, line: 9, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !455, line: 18, flags: DIFlagFwdDecl)
!455 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !449, file: !450, line: 10, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !455, line: 89, size: 1536, elements: !459)
!459 = !{!460, !461, !471, !479, !480, !500, !3158, !3160, !3172, !3173, !3174, !3175, !3176, !3182, !3183, !3184}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !458, file: !455, line: 91, baseType: !7, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !458, file: !455, line: 92, baseType: !462, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !463, line: 277, baseType: !464)
!463 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !463, line: 277, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !464, file: !463, line: 277, baseType: !467, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !463, line: 70, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !463, line: 65, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !468, file: !463, line: 66, baseType: !7, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !458, file: !455, line: 93, baseType: !472, size: 128, offset: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !473, line: 38, size: 128, elements: !474)
!473 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!474 = !{!475, !477}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !473, line: 39, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !472, file: !473, line: 39, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !458, file: !455, line: 94, baseType: !457, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !458, file: !455, line: 95, baseType: !481, size: 128, offset: 256)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !455, line: 47, size: 128, elements: !482)
!482 = !{!483, !497}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !455, line: 48, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !455, line: 48, size: 64, elements: !485)
!485 = !{!486, !493}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !455, line: 49, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !455, line: 49, size: 64, elements: !488)
!488 = !{!489, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !487, file: !455, line: 50, baseType: !490, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !491, line: 21, baseType: !180)
!491 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!492 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !487, file: !455, line: 50, baseType: !490, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !484, file: !455, line: 52, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !491, line: 23, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !181, line: 31, baseType: !496)
!496 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !481, file: !455, line: 54, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !458, file: !455, line: 96, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !503)
!503 = !{!504, !505, !506, !514, !521, !522, !668, !2870, !2871, !2872, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !3134, !3142, !3143, !3144, !3154, !3155, !3156, !3157}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !502, file: !44, line: 611, baseType: !392, size: 16)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !502, file: !44, line: 612, baseType: !194, size: 16, offset: 16)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !502, file: !44, line: 613, baseType: !507, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !508, line: 23, baseType: !509)
!508 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 21, size: 32, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !509, file: !508, line: 22, baseType: !512, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 32, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !384, line: 49, baseType: !7)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !502, file: !44, line: 614, baseType: !515, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !508, line: 28, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 26, size: 32, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !516, file: !508, line: 27, baseType: !519, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 33, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !384, line: 50, baseType: !7)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !502, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !502, file: !44, line: 622, baseType: !523, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !526)
!526 = !{!527, !531, !544, !548, !554, !558, !562, !566, !570, !574, !578, !579, !585, !589, !615, !644, !648, !654, !659, !663, !664}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !525, file: !44, line: 1865, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!457, !501, !457, !7}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !525, file: !44, line: 1866, baseType: !532, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!281, !457, !501, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !537, line: 10, size: 128, elements: !538)
!537 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!538 = !{!539, !543}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !536, file: !537, line: 11, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !176}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !536, file: !537, line: 12, baseType: !176, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !525, file: !44, line: 1867, baseType: !545, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!335, !501, !335}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !525, file: !44, line: 1868, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!552, !501, !335}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !525, file: !44, line: 1870, baseType: !555, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!335, !457, !351, !335}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !525, file: !44, line: 1872, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!335, !501, !457, !392, !283}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !525, file: !44, line: 1873, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!335, !457, !501, !457}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !525, file: !44, line: 1874, baseType: !567, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!335, !501, !457}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !525, file: !44, line: 1875, baseType: !571, size: 64, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!335, !501, !457, !281}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !525, file: !44, line: 1876, baseType: !575, size: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!335, !501, !457, !392}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !525, file: !44, line: 1877, baseType: !567, size: 64, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !525, file: !44, line: 1878, baseType: !580, size: 64, offset: 704)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!335, !501, !457, !392, !583}
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 16, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !174, line: 13, baseType: !490)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !525, file: !44, line: 1879, baseType: !586, size: 64, offset: 768)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!335, !501, !457, !501, !457, !7}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !525, file: !44, line: 1881, baseType: !590, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!335, !457, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !604, !612, !613, !614}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !594, file: !44, line: 220, baseType: !7, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !594, file: !44, line: 221, baseType: !392, size: 16, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !594, file: !44, line: 222, baseType: !507, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !594, file: !44, line: 223, baseType: !515, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !594, file: !44, line: 224, baseType: !601, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 46, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !384, line: 88, baseType: !603)
!603 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !594, file: !44, line: 225, baseType: !605, size: 128, offset: 192)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !606, line: 13, size: 128, elements: !607)
!606 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608, !611}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !605, file: !606, line: 14, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !606, line: 8, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !181, line: 30, baseType: !603)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !605, file: !606, line: 15, baseType: !386, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !594, file: !44, line: 226, baseType: !605, size: 128, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !594, file: !44, line: 227, baseType: !605, size: 128, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !594, file: !44, line: 234, baseType: !427, size: 64, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !525, file: !44, line: 1882, baseType: !616, size: 64, offset: 896)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!335, !619, !621, !490, !7}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !623, line: 22, size: 1152, elements: !624)
!623 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!624 = !{!625, !626, !627, !628, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !622, file: !623, line: 23, baseType: !490, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !622, file: !623, line: 24, baseType: !392, size: 16, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !622, file: !623, line: 25, baseType: !7, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !622, file: !623, line: 26, baseType: !629, size: 32, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 104, baseType: !490)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !622, file: !623, line: 27, baseType: !494, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !622, file: !623, line: 28, baseType: !494, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !622, file: !623, line: 37, baseType: !494, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !622, file: !623, line: 38, baseType: !583, size: 32, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !622, file: !623, line: 39, baseType: !583, size: 32, offset: 352)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !622, file: !623, line: 40, baseType: !507, size: 32, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !622, file: !623, line: 41, baseType: !515, size: 32, offset: 416)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !622, file: !623, line: 42, baseType: !601, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !622, file: !623, line: 43, baseType: !605, size: 128, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !622, file: !623, line: 44, baseType: !605, size: 128, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !622, file: !623, line: 45, baseType: !605, size: 128, offset: 768)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !622, file: !623, line: 46, baseType: !605, size: 128, offset: 896)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !622, file: !623, line: 47, baseType: !494, size: 64, offset: 1024)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !622, file: !623, line: 48, baseType: !494, size: 64, offset: 1088)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !525, file: !44, line: 1883, baseType: !645, size: 64, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!382, !457, !351, !397}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !525, file: !44, line: 1884, baseType: !649, size: 64, offset: 1024)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!335, !501, !652, !494, !494}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !525, file: !44, line: 1886, baseType: !655, size: 64, offset: 1088)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!335, !501, !658, !335}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !525, file: !44, line: 1887, baseType: !660, size: 64, offset: 1152)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!335, !501, !457, !427, !7, !392}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !525, file: !44, line: 1890, baseType: !575, size: 64, offset: 1216)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !525, file: !44, line: 1891, baseType: !665, size: 64, offset: 1280)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!335, !501, !552, !335}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !502, file: !44, line: 623, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !722, !2478, !2560, !2643, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2659, !2663, !2664, !2667, !2668, !2671, !2672, !2673, !2714, !2741, !2742, !2743, !2744, !2745, !2746, !2749, !2751, !2757, !2758, !2760, !2761, !2762, !2821, !2822, !2837, !2838, !2839, !2840, !2841, !2844, !2845, !2846, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !670, file: !44, line: 1417, baseType: !271, size: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !670, file: !44, line: 1418, baseType: !583, size: 32, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !670, file: !44, line: 1419, baseType: !239, size: 8, offset: 160)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !670, file: !44, line: 1420, baseType: !175, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !670, file: !44, line: 1421, baseType: !601, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !670, file: !44, line: 1422, baseType: !678, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !680)
!680 = !{!681, !682, !683, !690, !694, !698, !702, !703, !704, !714, !715, !716, !717, !719, !720, !721}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !679, file: !44, line: 2229, baseType: !281, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !679, file: !44, line: 2230, baseType: !335, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !679, file: !44, line: 2238, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!335, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !689, line: 28, flags: DIFlagFwdDecl)
!689 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !679, file: !44, line: 2239, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !679, file: !44, line: 2240, baseType: !695, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!457, !678, !335, !281, !176}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !679, file: !44, line: 2242, baseType: !699, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !669}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !679, file: !44, line: 2243, baseType: !177, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !44, line: 2244, baseType: !678, size: 64, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !679, file: !44, line: 2245, baseType: !705, size: 64, offset: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !174, line: 182, size: 64, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !705, file: !174, line: 183, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !174, line: 186, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !174, line: 187, baseType: !708, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !709, file: !174, line: 187, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !679, file: !44, line: 2247, baseType: !276, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !679, file: !44, line: 2248, baseType: !276, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !679, file: !44, line: 2249, baseType: !276, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !679, file: !44, line: 2250, baseType: !718, offset: 576)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, elements: !352)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !679, file: !44, line: 2252, baseType: !276, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !679, file: !44, line: 2253, baseType: !276, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !679, file: !44, line: 2254, baseType: !276, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !670, file: !44, line: 1423, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !726)
!726 = !{!727, !731, !735, !736, !740, !746, !750, !751, !752, !756, !760, !761, !762, !763, !769, !774, !775, !782, !783, !784, !785, !2462, !2477}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !725, file: !44, line: 1936, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!501, !669}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !725, file: !44, line: 1937, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !501}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !725, file: !44, line: 1938, baseType: !732, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !725, file: !44, line: 1940, baseType: !737, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !501, !335}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !725, file: !44, line: 1941, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!335, !501, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !725, file: !44, line: 1942, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!335, !501}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !725, file: !44, line: 1943, baseType: !732, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !725, file: !44, line: 1944, baseType: !699, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !725, file: !44, line: 1945, baseType: !753, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!335, !669, !335}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !725, file: !44, line: 1946, baseType: !757, size: 64, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!335, !669}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !725, file: !44, line: 1947, baseType: !757, size: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !725, file: !44, line: 1948, baseType: !757, size: 64, offset: 704)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !725, file: !44, line: 1949, baseType: !757, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !725, file: !44, line: 1950, baseType: !764, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!335, !457, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !725, file: !44, line: 1951, baseType: !770, size: 64, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!335, !669, !773, !351}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !725, file: !44, line: 1952, baseType: !699, size: 64, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !725, file: !44, line: 1954, baseType: !776, size: 64, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!335, !779, !457}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !781, line: 539, flags: DIFlagFwdDecl)
!781 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !725, file: !44, line: 1955, baseType: !776, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !725, file: !44, line: 1956, baseType: !776, size: 64, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !725, file: !44, line: 1957, baseType: !776, size: 64, offset: 1216)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !725, file: !44, line: 1963, baseType: !786, size: 64, offset: 1280)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!335, !669, !789, !173}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !791, line: 68, size: 512, align: 128, elements: !792)
!791 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794, !2454, !2461}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !791, line: 69, baseType: !175, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 77, baseType: !795, size: 320, offset: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 77, size: 320, elements: !796)
!796 = !{!797, !982, !987, !1015, !1023, !1029, !2385, !2453}
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 78, baseType: !798, size: 320)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 78, size: 320, elements: !799)
!799 = !{!800, !801, !980, !981}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !798, file: !791, line: 84, baseType: !271, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !798, file: !791, line: 86, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !804)
!804 = !{!805, !806, !813, !814, !819, !834, !849, !850, !851, !852, !973, !974, !977, !978, !979}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !803, file: !44, line: 452, baseType: !501, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !803, file: !44, line: 453, baseType: !807, size: 128, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !808, line: 292, size: 128, elements: !809)
!808 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !807, file: !808, line: 293, baseType: !317)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !807, file: !808, line: 295, baseType: !173, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !807, file: !808, line: 296, baseType: !176, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !803, file: !44, line: 454, baseType: !173, size: 32, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !803, file: !44, line: 455, baseType: !815, size: 32, offset: 224)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 168, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 166, size: 32, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !816, file: !174, line: 167, baseType: !335, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !803, file: !44, line: 460, baseType: !820, size: 128, offset: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !821, line: 125, size: 128, elements: !822)
!821 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!822 = !{!823, !833}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !820, file: !821, line: 126, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !821, line: 31, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !824, file: !821, line: 32, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !821, line: 24, size: 192, align: 64, elements: !829)
!829 = !{!830, !831, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !828, file: !821, line: 25, baseType: !175, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !828, file: !821, line: 26, baseType: !827, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !828, file: !821, line: 27, baseType: !827, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !820, file: !821, line: 127, baseType: !827, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !803, file: !44, line: 461, baseType: !835, size: 256, offset: 384)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !836, line: 35, size: 256, elements: !837)
!836 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!837 = !{!838, !846, !847, !848}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !835, file: !836, line: 36, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !840, line: 13, baseType: !841)
!840 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 175, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 173, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !842, file: !174, line: 174, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !491, line: 22, baseType: !610)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !835, file: !836, line: 42, baseType: !839, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !835, file: !836, line: 46, baseType: !261, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !835, file: !836, line: 47, baseType: !271, size: 128, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !803, file: !44, line: 462, baseType: !175, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !803, file: !44, line: 463, baseType: !175, size: 64, offset: 704)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !803, file: !44, line: 464, baseType: !175, size: 64, offset: 768)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !803, file: !44, line: 465, baseType: !853, size: 64, offset: 832)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !856)
!856 = !{!857, !861, !865, !869, !873, !877, !883, !889, !893, !898, !902, !906, !910, !937, !941, !947, !948, !949, !953, !958, !962, !969}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !855, file: !44, line: 368, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!335, !789, !744}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !855, file: !44, line: 369, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!335, !427, !789}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !855, file: !44, line: 372, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!335, !802, !744}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !855, file: !44, line: 375, baseType: !870, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!335, !789}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !855, file: !44, line: 381, baseType: !874, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!335, !427, !802, !274, !7}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !855, file: !44, line: 383, baseType: !878, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !855, file: !44, line: 385, baseType: !884, size: 64, offset: 384)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!335, !427, !802, !601, !7, !7, !887, !888}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !855, file: !44, line: 388, baseType: !890, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!335, !427, !802, !601, !7, !7, !789, !176}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !855, file: !44, line: 393, baseType: !894, size: 64, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!897, !802, !897}
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !174, line: 125, baseType: !494)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !855, file: !44, line: 394, baseType: !899, size: 64, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !789, !7, !7}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !855, file: !44, line: 395, baseType: !903, size: 64, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!335, !789, !173}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !855, file: !44, line: 396, baseType: !907, size: 64, offset: 704)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !789}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !855, file: !44, line: 397, baseType: !911, size: 64, offset: 768)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!382, !914, !935}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !916)
!916 = !{!917, !918, !919, !923, !924, !925, !927, !928}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !915, file: !44, line: 321, baseType: !427, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !915, file: !44, line: 326, baseType: !601, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !915, file: !44, line: 327, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !914, !386, !386}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !915, file: !44, line: 328, baseType: !176, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !915, file: !44, line: 329, baseType: !335, size: 32, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !915, file: !44, line: 330, baseType: !926, size: 16, offset: 288)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !491, line: 19, baseType: !193)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !915, file: !44, line: 331, baseType: !926, size: 16, offset: 304)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !44, line: 332, baseType: !929, size: 64, offset: 320)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !44, line: 332, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !929, file: !44, line: 333, baseType: !7, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !929, file: !44, line: 334, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !855, file: !44, line: 402, baseType: !938, size: 64, offset: 832)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!335, !802, !789, !789, !5}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !855, file: !44, line: 404, baseType: !942, size: 64, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!283, !789, !945}
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !946, line: 305, baseType: !7)
!946 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !855, file: !44, line: 405, baseType: !907, size: 64, offset: 960)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !855, file: !44, line: 406, baseType: !870, size: 64, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !855, file: !44, line: 407, baseType: !950, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!335, !789, !175, !175}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !855, file: !44, line: 409, baseType: !954, size: 64, offset: 1152)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !789, !957, !957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !855, file: !44, line: 410, baseType: !959, size: 64, offset: 1216)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!335, !802, !789}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !855, file: !44, line: 413, baseType: !963, size: 64, offset: 1280)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!335, !966, !427, !968}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !855, file: !44, line: 415, baseType: !970, size: 64, offset: 1344)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !427}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !44, line: 466, baseType: !175, size: 64, offset: 896)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !803, file: !44, line: 467, baseType: !975, size: 32, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !976, line: 8, baseType: !490)
!976 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!977 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !803, file: !44, line: 468, baseType: !317, offset: 992)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !803, file: !44, line: 469, baseType: !271, size: 128, offset: 1024)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !803, file: !44, line: 470, baseType: !176, size: 64, offset: 1152)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !798, file: !791, line: 87, baseType: !175, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !798, file: !791, line: 94, baseType: !175, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 96, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 96, size: 64, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !983, file: !791, line: 101, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !174, line: 143, baseType: !494)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 103, baseType: !988, size: 320)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 103, size: 320, elements: !989)
!989 = !{!990, !1000, !1003, !1004}
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !791, line: 104, baseType: !991, size: 128)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !791, line: 104, size: 128, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !991, file: !791, line: 105, baseType: !271, size: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !791, line: 106, baseType: !995, size: 128)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !991, file: !791, line: 106, size: 128, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !995, file: !791, line: 107, baseType: !789, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !995, file: !791, line: 109, baseType: !335, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !995, file: !791, line: 110, baseType: !335, size: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !988, file: !791, line: 117, baseType: !1001, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !791, line: 117, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !988, file: !791, line: 119, baseType: !176, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !791, line: 120, baseType: !1005, size: 64, offset: 256)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !791, line: 120, size: 64, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1005, file: !791, line: 121, baseType: !176, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1005, file: !791, line: 122, baseType: !175, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !791, line: 123, baseType: !1010, size: 32)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !791, line: 123, size: 32, elements: !1011)
!1011 = !{!1012, !1013, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1010, file: !791, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1010, file: !791, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1010, file: !791, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 130, baseType: !1016, size: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 130, size: 192, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1016, file: !791, line: 131, baseType: !175, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1016, file: !791, line: 134, baseType: !239, size: 8, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1016, file: !791, line: 135, baseType: !239, size: 8, offset: 72)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1016, file: !791, line: 136, baseType: !815, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1016, file: !791, line: 137, baseType: !7, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 139, baseType: !1024, size: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 139, size: 256, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1024, file: !791, line: 140, baseType: !175, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1024, file: !791, line: 141, baseType: !815, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1024, file: !791, line: 143, baseType: !271, size: 128, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 145, baseType: !1030, size: 256)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 145, size: 256, elements: !1031)
!1031 = !{!1032, !1033, !1035, !1036, !2384}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1030, file: !791, line: 146, baseType: !175, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1030, file: !791, line: 147, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !781, line: 509, baseType: !789)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1030, file: !791, line: 148, baseType: !175, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !791, line: 149, baseType: !1037, size: 64, offset: 192)
!1037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1030, file: !791, line: 149, size: 64, elements: !1038)
!1038 = !{!1039, !2383}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1037, file: !791, line: 150, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !791, line: 388, size: 7296, elements: !1042)
!1042 = !{!1043, !2379}
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !791, line: 389, baseType: !1044, size: 7296)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !791, line: 389, size: 7296, elements: !1045)
!1045 = !{!1046, !1164, !1165, !1166, !1170, !1171, !1172, !1173, !1174, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1215, !1223, !1226, !1272, !1273, !2363, !2364, !2367, !2368, !2369, !2372, !2373, !2374, !2377, !2378}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1044, file: !791, line: 390, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !791, line: 305, size: 1472, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1064, !1065, !1070, !1071, !1074, !1158, !1159, !1160, !1161, !1162}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1048, file: !791, line: 308, baseType: !175, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1048, file: !791, line: 309, baseType: !175, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1048, file: !791, line: 313, baseType: !1047, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1048, file: !791, line: 313, baseType: !1047, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1048, file: !791, line: 315, baseType: !828, size: 192, align: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1048, file: !791, line: 323, baseType: !175, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1048, file: !791, line: 327, baseType: !1040, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1048, file: !791, line: 333, baseType: !1058, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !781, line: 284, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !781, line: 284, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1059, file: !781, line: 284, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1063, line: 19, baseType: !175)
!1063 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1048, file: !791, line: 334, baseType: !175, size: 64, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1048, file: !791, line: 343, baseType: !1066, size: 256, offset: 704)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !791, line: 340, size: 256, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1066, file: !791, line: 341, baseType: !828, size: 192, align: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1066, file: !791, line: 342, baseType: !175, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1048, file: !791, line: 351, baseType: !271, size: 128, offset: 960)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1048, file: !791, line: 353, baseType: !1072, size: 64, offset: 1088)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !791, line: 353, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1048, file: !791, line: 356, baseType: !1075, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1078)
!1078 = !{!1079, !1083, !1084, !1088, !1092, !1132, !1136, !1140, !1144, !1145, !1146, !1150, !1154}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1077, file: !14, line: 558, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !1047}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1077, file: !14, line: 559, baseType: !1080, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1077, file: !14, line: 560, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!335, !1047, !175}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1077, file: !14, line: 561, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!335, !1047}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1077, file: !14, line: 562, baseType: !1093, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !791, line: 682, baseType: !7)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1112, !1119, !1125, !1126, !1127, !1129, !1131}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1098, file: !14, line: 509, baseType: !1047, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1098, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1098, file: !14, line: 511, baseType: !173, size: 32, offset: 96)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1098, file: !14, line: 512, baseType: !175, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1098, file: !14, line: 513, baseType: !175, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1098, file: !14, line: 514, baseType: !1106, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !781, line: 385, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 385, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1108, file: !781, line: 385, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1063, line: 15, baseType: !175)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1098, file: !14, line: 516, baseType: !1113, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !781, line: 359, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 359, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1115, file: !781, line: 359, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1063, line: 16, baseType: !175)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1098, file: !14, line: 519, baseType: !1120, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1063, line: 21, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1063, line: 21, size: 64, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1121, file: !1063, line: 21, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1063, line: 14, baseType: !175)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1098, file: !14, line: 521, baseType: !789, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1098, file: !14, line: 522, baseType: !789, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1098, file: !14, line: 528, baseType: !1128, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1098, file: !14, line: 532, baseType: !1130, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1098, file: !14, line: 536, baseType: !1034, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1077, file: !14, line: 563, baseType: !1133, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1096, !1097, !13}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1077, file: !14, line: 565, baseType: !1137, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1097, !175, !175}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1077, file: !14, line: 567, baseType: !1141, size: 64, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!175, !1047}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1077, file: !14, line: 571, baseType: !1093, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1077, file: !14, line: 574, baseType: !1093, size: 64, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1077, file: !14, line: 579, baseType: !1147, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!335, !1047, !175, !176, !335, !335}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1077, file: !14, line: 585, baseType: !1151, size: 64, offset: 704)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!281, !1047}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1077, file: !14, line: 615, baseType: !1155, size: 64, offset: 768)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!789, !1047, !175}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1048, file: !791, line: 359, baseType: !175, size: 64, offset: 1216)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1048, file: !791, line: 361, baseType: !427, size: 64, offset: 1280)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1048, file: !791, line: 362, baseType: !176, size: 64, offset: 1344)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1048, file: !791, line: 365, baseType: !839, size: 64, offset: 1408)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1048, file: !791, line: 373, baseType: !1163, offset: 1472)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !791, line: 296, elements: !269)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1044, file: !791, line: 391, baseType: !824, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1044, file: !791, line: 392, baseType: !494, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1044, file: !791, line: 394, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!175, !427, !175, !175, !175, !175}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1044, file: !791, line: 398, baseType: !175, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1044, file: !791, line: 399, baseType: !175, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1044, file: !791, line: 405, baseType: !175, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1044, file: !791, line: 406, baseType: !175, size: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1044, file: !791, line: 407, baseType: !1175, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !781, line: 286, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 286, size: 64, elements: !1178)
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1177, file: !781, line: 286, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1063, line: 18, baseType: !175)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1044, file: !791, line: 416, baseType: !815, size: 32, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1044, file: !791, line: 428, baseType: !815, size: 32, offset: 608)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1044, file: !791, line: 437, baseType: !815, size: 32, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1044, file: !791, line: 447, baseType: !815, size: 32, offset: 672)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1044, file: !791, line: 450, baseType: !839, size: 64, offset: 704)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1044, file: !791, line: 452, baseType: !335, size: 32, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1044, file: !791, line: 454, baseType: !317, offset: 800)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1044, file: !791, line: 457, baseType: !835, size: 256, offset: 832)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1044, file: !791, line: 459, baseType: !271, size: 128, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1044, file: !791, line: 466, baseType: !175, size: 64, offset: 1216)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1044, file: !791, line: 467, baseType: !175, size: 64, offset: 1280)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1044, file: !791, line: 469, baseType: !175, size: 64, offset: 1344)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1044, file: !791, line: 470, baseType: !175, size: 64, offset: 1408)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1044, file: !791, line: 471, baseType: !841, size: 64, offset: 1472)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1044, file: !791, line: 472, baseType: !175, size: 64, offset: 1536)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1044, file: !791, line: 473, baseType: !175, size: 64, offset: 1600)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1044, file: !791, line: 474, baseType: !175, size: 64, offset: 1664)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1044, file: !791, line: 475, baseType: !175, size: 64, offset: 1728)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1044, file: !791, line: 477, baseType: !317, offset: 1792)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1044, file: !791, line: 478, baseType: !175, size: 64, offset: 1792)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1044, file: !791, line: 478, baseType: !175, size: 64, offset: 1856)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1044, file: !791, line: 478, baseType: !175, size: 64, offset: 1920)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1044, file: !791, line: 478, baseType: !175, size: 64, offset: 1984)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1044, file: !791, line: 479, baseType: !175, size: 64, offset: 2048)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1044, file: !791, line: 479, baseType: !175, size: 64, offset: 2112)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1044, file: !791, line: 479, baseType: !175, size: 64, offset: 2176)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1044, file: !791, line: 480, baseType: !175, size: 64, offset: 2240)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1044, file: !791, line: 480, baseType: !175, size: 64, offset: 2304)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1044, file: !791, line: 480, baseType: !175, size: 64, offset: 2368)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1044, file: !791, line: 480, baseType: !175, size: 64, offset: 2432)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1044, file: !791, line: 482, baseType: !1212, size: 2816, offset: 2496)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 2816, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 44)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1044, file: !791, line: 488, baseType: !1216, size: 256, offset: 5312)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1217, line: 60, size: 256, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1216, file: !1217, line: 61, baseType: !1220, size: 256)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 256, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 4)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1044, file: !791, line: 490, baseType: !1224, size: 64, offset: 5568)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !791, line: 490, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1044, file: !791, line: 493, baseType: !1227, size: 896, offset: 5632)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1228, line: 53, baseType: !1229)
!1228 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 13, size: 896, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1237, !1238, !1245, !1246, !1266, !1267, !1268}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1229, file: !1228, line: 18, baseType: !494, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1229, file: !1228, line: 28, baseType: !841, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1229, file: !1228, line: 31, baseType: !835, size: 256, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1229, file: !1228, line: 32, baseType: !1235, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1228, line: 32, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1229, file: !1228, line: 37, baseType: !194, size: 16, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1229, file: !1228, line: 40, baseType: !1239, size: 192, offset: 512)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1240, line: 53, size: 192, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1239, file: !1240, line: 54, baseType: !839, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1239, file: !1240, line: 55, baseType: !317, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1239, file: !1240, line: 59, baseType: !271, size: 128, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1229, file: !1228, line: 41, baseType: !176, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1229, file: !1228, line: 42, baseType: !1247, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1250, line: 13, size: 896, elements: !1251)
!1250 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1249, file: !1250, line: 14, baseType: !176, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1249, file: !1250, line: 15, baseType: !175, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1249, file: !1250, line: 17, baseType: !175, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1249, file: !1250, line: 17, baseType: !175, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1249, file: !1250, line: 19, baseType: !386, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1249, file: !1250, line: 21, baseType: !386, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1249, file: !1250, line: 22, baseType: !386, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1249, file: !1250, line: 23, baseType: !386, size: 64, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1249, file: !1250, line: 24, baseType: !386, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1249, file: !1250, line: 25, baseType: !386, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1249, file: !1250, line: 26, baseType: !386, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1249, file: !1250, line: 27, baseType: !386, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1249, file: !1250, line: 28, baseType: !386, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1249, file: !1250, line: 29, baseType: !386, size: 64, offset: 832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1229, file: !1228, line: 44, baseType: !815, size: 32, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1229, file: !1228, line: 50, baseType: !926, size: 16, offset: 864)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1229, file: !1228, line: 51, baseType: !1269, size: 16, offset: 880)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !491, line: 18, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !181, line: 23, baseType: !1271)
!1271 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !791, line: 495, baseType: !175, size: 64, offset: 6528)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1044, file: !791, line: 497, baseType: !1274, size: 64, offset: 6592)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !791, line: 381, size: 384, elements: !1276)
!1276 = !{!1277, !1278, !2362}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1275, file: !791, line: 382, baseType: !815, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1275, file: !791, line: 383, baseType: !1279, size: 128, offset: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !791, line: 376, size: 128, elements: !1280)
!1280 = !{!1281, !2360}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1279, file: !791, line: 377, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1284, line: 640, size: 48640, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !{!1286, !1292, !1294, !1295, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1312, !1330, !1341, !1425, !1426, !1427, !1438, !1439, !1441, !1442, !1443, !1444, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1523, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1561, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1595, !1600, !1782, !1783, !1784, !1785, !1787, !1790, !1793, !1796, !1799, !1803, !1904, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1948, !1949, !1950, !1951, !1952, !1957, !1958, !1959, !1962, !1963, !1966, !1969, !1972, !1975, !2018, !2021, !2022, !2101, !2102, !2105, !2106, !2109, !2110, !2111, !2115, !2116, !2117, !2130, !2131, !2132, !2142, !2147, !2150, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1283, file: !1284, line: 646, baseType: !1287, size: 128)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1288, line: 56, size: 128, elements: !1289)
!1288 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1287, file: !1288, line: 57, baseType: !175, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1287, file: !1288, line: 58, baseType: !490, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1283, file: !1284, line: 649, baseType: !1293, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !386)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1283, file: !1284, line: 657, baseType: !176, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1283, file: !1284, line: 658, baseType: !1296, size: 32, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1297, line: 113, baseType: !1298)
!1297 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1297, line: 111, size: 32, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1298, file: !1297, line: 112, baseType: !815, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1283, file: !1284, line: 660, baseType: !7, size: 32, offset: 288)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1283, file: !1284, line: 661, baseType: !7, size: 32, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1283, file: !1284, line: 684, baseType: !335, size: 32, offset: 352)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1283, file: !1284, line: 686, baseType: !335, size: 32, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1283, file: !1284, line: 687, baseType: !335, size: 32, offset: 416)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1283, file: !1284, line: 688, baseType: !335, size: 32, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1283, file: !1284, line: 689, baseType: !7, size: 32, offset: 480)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1283, file: !1284, line: 691, baseType: !1309, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1311)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1284, line: 691, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1283, file: !1284, line: 692, baseType: !1313, size: 832, offset: 576)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1284, line: 451, size: 832, elements: !1314)
!1314 = !{!1315, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1313, file: !1284, line: 453, baseType: !1316, size: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1284, line: 325, size: 128, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1316, file: !1284, line: 326, baseType: !175, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1316, file: !1284, line: 327, baseType: !490, size: 32, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1313, file: !1284, line: 454, baseType: !828, size: 192, align: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1313, file: !1284, line: 455, baseType: !271, size: 128, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1313, file: !1284, line: 456, baseType: !7, size: 32, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1313, file: !1284, line: 458, baseType: !494, size: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1313, file: !1284, line: 459, baseType: !494, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1313, file: !1284, line: 460, baseType: !494, size: 64, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1313, file: !1284, line: 461, baseType: !494, size: 64, offset: 704)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1313, file: !1284, line: 463, baseType: !494, size: 64, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1313, file: !1284, line: 465, baseType: !1329, offset: 832)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1284, line: 415, elements: !269)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1283, file: !1284, line: 693, baseType: !1331, size: 384, offset: 1408)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1284, line: 489, size: 384, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1331, file: !1284, line: 490, baseType: !271, size: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1331, file: !1284, line: 491, baseType: !175, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1331, file: !1284, line: 492, baseType: !175, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1331, file: !1284, line: 493, baseType: !7, size: 32, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1331, file: !1284, line: 494, baseType: !194, size: 16, offset: 288)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1331, file: !1284, line: 495, baseType: !194, size: 16, offset: 304)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1331, file: !1284, line: 497, baseType: !1340, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1283, file: !1284, line: 697, baseType: !1342, size: 1792, offset: 1792)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1284, line: 507, size: 1792, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1422, !1423}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1342, file: !1284, line: 508, baseType: !828, size: 192, align: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1342, file: !1284, line: 515, baseType: !494, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1342, file: !1284, line: 516, baseType: !494, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1342, file: !1284, line: 517, baseType: !494, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1342, file: !1284, line: 518, baseType: !494, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1342, file: !1284, line: 519, baseType: !494, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1342, file: !1284, line: 526, baseType: !845, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1342, file: !1284, line: 527, baseType: !494, size: 64, offset: 576)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1342, file: !1284, line: 528, baseType: !7, size: 32, offset: 640)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1342, file: !1284, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1342, file: !1284, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1342, file: !1284, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1342, file: !1284, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1342, file: !1284, line: 563, baseType: !1358, size: 512, offset: 704)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1359)
!1359 = !{!1360, !1368, !1369, !1374, !1417, !1419, !1420, !1421}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1358, file: !20, line: 119, baseType: !1361, size: 256)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1362, line: 9, size: 256, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1361, file: !1362, line: 10, baseType: !828, size: 192, align: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1361, file: !1362, line: 11, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1367, line: 29, baseType: !845)
!1367 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1358, file: !20, line: 120, baseType: !1366, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1358, file: !20, line: 121, baseType: !1370, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!19, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1358, file: !20, line: 122, baseType: !1375, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1377)
!1377 = !{!1378, !1398, !1399, !1402, !1407, !1408, !1412, !1416}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1376, file: !20, line: 160, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1380, file: !20, line: 215, baseType: !261)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1380, file: !20, line: 216, baseType: !7, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1380, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1380, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1380, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1380, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1380, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1380, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1380, file: !20, line: 233, baseType: !1366, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1380, file: !20, line: 234, baseType: !1373, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1380, file: !20, line: 235, baseType: !1366, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1380, file: !20, line: 236, baseType: !1373, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1380, file: !20, line: 237, baseType: !1395, size: 4096, offset: 512)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 4096, elements: !1396)
!1396 = !{!1397}
!1397 = !DISubrange(count: 8)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1376, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1376, file: !20, line: 162, baseType: !1400, size: 32, offset: 96)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !174, line: 27, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !384, line: 96, baseType: !335)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1376, file: !20, line: 163, baseType: !1403, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !463, line: 276, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !463, line: 276, size: 32, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1404, file: !463, line: 276, baseType: !467, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1376, file: !20, line: 164, baseType: !1373, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1376, file: !20, line: 165, baseType: !1409, size: 128, offset: 256)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1362, line: 14, size: 128, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1409, file: !1362, line: 15, baseType: !820, size: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1376, file: !20, line: 166, baseType: !1413, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1366}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1376, file: !20, line: 167, baseType: !1366, size: 64, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1358, file: !20, line: 123, baseType: !1418, size: 8, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !491, line: 17, baseType: !238)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1358, file: !20, line: 124, baseType: !1418, size: 8, offset: 456)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1358, file: !20, line: 125, baseType: !1418, size: 8, offset: 464)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1358, file: !20, line: 126, baseType: !1418, size: 8, offset: 472)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1342, file: !1284, line: 572, baseType: !1358, size: 512, offset: 1216)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1342, file: !1284, line: 580, baseType: !1424, size: 64, offset: 1728)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1283, file: !1284, line: 721, baseType: !7, size: 32, offset: 3584)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1283, file: !1284, line: 722, baseType: !335, size: 32, offset: 3616)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1283, file: !1284, line: 723, baseType: !1428, size: 64, offset: 3648)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1431, line: 17, baseType: !1432)
!1431 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1431, line: 17, size: 64, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1432, file: !1431, line: 17, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 64, elements: !1436)
!1436 = !{!1437}
!1437 = !DISubrange(count: 1)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1283, file: !1284, line: 724, baseType: !1430, size: 64, offset: 3712)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1283, file: !1284, line: 749, baseType: !1440, offset: 3776)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1284, line: 290, elements: !269)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1283, file: !1284, line: 751, baseType: !271, size: 128, offset: 3776)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1283, file: !1284, line: 757, baseType: !1040, size: 64, offset: 3904)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1283, file: !1284, line: 758, baseType: !1040, size: 64, offset: 3968)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1283, file: !1284, line: 761, baseType: !1445, size: 320, offset: 4032)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1217, line: 34, size: 320, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1445, file: !1217, line: 35, baseType: !494, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1445, file: !1217, line: 36, baseType: !1449, size: 256, offset: 64)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 256, elements: !1221)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1283, file: !1284, line: 766, baseType: !335, size: 32, offset: 4352)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1283, file: !1284, line: 767, baseType: !335, size: 32, offset: 4384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1283, file: !1284, line: 768, baseType: !335, size: 32, offset: 4416)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1283, file: !1284, line: 770, baseType: !335, size: 32, offset: 4448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1283, file: !1284, line: 772, baseType: !175, size: 64, offset: 4480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1283, file: !1284, line: 775, baseType: !7, size: 32, offset: 4544)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1283, file: !1284, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1283, file: !1284, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1283, file: !1284, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1283, file: !1284, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1283, file: !1284, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1283, file: !1284, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1283, file: !1284, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1283, file: !1284, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1283, file: !1284, line: 831, baseType: !175, size: 64, offset: 4672)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1283, file: !1284, line: 833, baseType: !1466, size: 384, offset: 4736)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1467)
!1467 = !{!1468, !1473}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1466, file: !25, line: 26, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!386, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !25, line: 27, baseType: !1474, size: 320, offset: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1466, file: !25, line: 27, size: 320, elements: !1475)
!1475 = !{!1476, !1486, !1513}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1474, file: !25, line: 36, baseType: !1477, size: 320)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !25, line: 29, size: 320, elements: !1478)
!1478 = !{!1479, !1481, !1482, !1483, !1484, !1485}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1477, file: !25, line: 30, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1477, file: !25, line: 31, baseType: !490, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !25, line: 32, baseType: !490, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1477, file: !25, line: 33, baseType: !490, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1477, file: !25, line: 34, baseType: !494, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1477, file: !25, line: 35, baseType: !1480, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1474, file: !25, line: 46, baseType: !1487, size: 192)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !25, line: 38, size: 192, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1512}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1487, file: !25, line: 39, baseType: !1400, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1487, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !25, line: 41, baseType: !1492, size: 64, offset: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !25, line: 41, size: 64, elements: !1493)
!1493 = !{!1494, !1502}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1492, file: !25, line: 42, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1497, line: 7, size: 128, elements: !1498)
!1497 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1501}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1496, file: !1497, line: 8, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !384, line: 93, baseType: !603)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1496, file: !1497, line: 9, baseType: !603, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1492, file: !25, line: 43, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1505, line: 7, size: 64, elements: !1506)
!1505 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1511}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1504, file: !1505, line: 8, baseType: !1508, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1505, line: 5, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !491, line: 20, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !181, line: 26, baseType: !335)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1504, file: !1505, line: 9, baseType: !1509, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1487, file: !25, line: 45, baseType: !494, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1474, file: !25, line: 54, baseType: !1514, size: 256)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !25, line: 48, size: 256, elements: !1515)
!1515 = !{!1516, !1519, !1520, !1521, !1522}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1514, file: !25, line: 49, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1514, file: !25, line: 50, baseType: !335, size: 32, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1514, file: !25, line: 51, baseType: !335, size: 32, offset: 96)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1514, file: !25, line: 52, baseType: !175, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1514, file: !25, line: 53, baseType: !175, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1283, file: !1284, line: 835, baseType: !1524, size: 32, offset: 5120)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !174, line: 22, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !384, line: 28, baseType: !335)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1283, file: !1284, line: 836, baseType: !1524, size: 32, offset: 5152)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1283, file: !1284, line: 840, baseType: !175, size: 64, offset: 5184)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1283, file: !1284, line: 849, baseType: !1282, size: 64, offset: 5248)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1283, file: !1284, line: 852, baseType: !1282, size: 64, offset: 5312)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1283, file: !1284, line: 857, baseType: !271, size: 128, offset: 5376)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1283, file: !1284, line: 858, baseType: !271, size: 128, offset: 5504)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1283, file: !1284, line: 859, baseType: !1282, size: 64, offset: 5632)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1283, file: !1284, line: 867, baseType: !271, size: 128, offset: 5696)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1283, file: !1284, line: 868, baseType: !271, size: 128, offset: 5824)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1283, file: !1284, line: 871, baseType: !1536, size: 64, offset: 5952)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1544, !1545, !1552, !1553}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1537, file: !53, line: 61, baseType: !1296, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1537, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !53, line: 63, baseType: !317, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1537, file: !53, line: 65, baseType: !1543, size: 256, offset: 64)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 256, elements: !1221)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1537, file: !53, line: 66, baseType: !705, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1537, file: !53, line: 68, baseType: !1546, size: 128, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1547, line: 40, baseType: !1548)
!1547 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1547, line: 36, size: 128, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1548, file: !1547, line: 37, baseType: !317)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1548, file: !1547, line: 38, baseType: !271, size: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1537, file: !53, line: 69, baseType: !440, size: 128, align: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1537, file: !53, line: 70, baseType: !1554, size: 128, offset: 640)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1555, size: 128, elements: !1436)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1555, file: !53, line: 55, baseType: !335, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1555, file: !53, line: 56, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1283, file: !1284, line: 872, baseType: !1562, size: 512, offset: 6016)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 512, elements: !1221)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1283, file: !1284, line: 873, baseType: !271, size: 128, offset: 6528)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1283, file: !1284, line: 874, baseType: !271, size: 128, offset: 6656)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1283, file: !1284, line: 876, baseType: !252, size: 64, offset: 6784)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1283, file: !1284, line: 879, baseType: !773, size: 64, offset: 6848)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1283, file: !1284, line: 882, baseType: !773, size: 64, offset: 6912)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1283, file: !1284, line: 884, baseType: !494, size: 64, offset: 6976)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1283, file: !1284, line: 885, baseType: !494, size: 64, offset: 7040)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1283, file: !1284, line: 890, baseType: !494, size: 64, offset: 7104)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1283, file: !1284, line: 891, baseType: !1572, size: 128, offset: 7168)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1284, line: 242, size: 128, elements: !1573)
!1573 = !{!1574, !1575, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1572, file: !1284, line: 244, baseType: !494, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1572, file: !1284, line: 245, baseType: !494, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1572, file: !1284, line: 246, baseType: !261, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1283, file: !1284, line: 900, baseType: !175, size: 64, offset: 7296)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1283, file: !1284, line: 901, baseType: !175, size: 64, offset: 7360)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1283, file: !1284, line: 904, baseType: !494, size: 64, offset: 7424)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1283, file: !1284, line: 907, baseType: !494, size: 64, offset: 7488)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1283, file: !1284, line: 910, baseType: !175, size: 64, offset: 7552)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1283, file: !1284, line: 911, baseType: !175, size: 64, offset: 7616)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1283, file: !1284, line: 914, baseType: !1584, size: 640, offset: 7680)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1585, line: 123, size: 640, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1586 = !{!1587, !1593, !1594}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1584, file: !1585, line: 124, baseType: !1588, size: 576)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1589, size: 576, elements: !352)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1585, line: 108, size: 192, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1589, file: !1585, line: 109, baseType: !494, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1589, file: !1585, line: 110, baseType: !1409, size: 128, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1584, file: !1585, line: 125, baseType: !7, size: 32, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1584, file: !1585, line: 126, baseType: !7, size: 32, offset: 608)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1283, file: !1284, line: 917, baseType: !1596, size: 192, offset: 8320)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1585, line: 134, size: 192, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1596, file: !1585, line: 135, baseType: !440, size: 128, align: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1596, file: !1585, line: 136, baseType: !7, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1283, file: !1284, line: 923, baseType: !1601, size: 64, offset: 8512)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1604, line: 111, size: 1280, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1623, !1624, !1625, !1626, !1627, !1628, !1735, !1736, !1737, !1738, !1764, !1767, !1777}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1603, file: !1604, line: 112, baseType: !815, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1603, file: !1604, line: 120, baseType: !507, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1603, file: !1604, line: 121, baseType: !515, size: 32, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1603, file: !1604, line: 122, baseType: !507, size: 32, offset: 96)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1603, file: !1604, line: 123, baseType: !515, size: 32, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1603, file: !1604, line: 124, baseType: !507, size: 32, offset: 160)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1603, file: !1604, line: 125, baseType: !515, size: 32, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1603, file: !1604, line: 126, baseType: !507, size: 32, offset: 224)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1603, file: !1604, line: 127, baseType: !515, size: 32, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1603, file: !1604, line: 128, baseType: !7, size: 32, offset: 288)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1603, file: !1604, line: 129, baseType: !1617, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1618, line: 26, baseType: !1619)
!1618 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1618, line: 24, size: 64, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1619, file: !1618, line: 25, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !244)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1603, file: !1604, line: 130, baseType: !1617, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1603, file: !1604, line: 131, baseType: !1617, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1603, file: !1604, line: 132, baseType: !1617, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1603, file: !1604, line: 133, baseType: !1617, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1603, file: !1604, line: 135, baseType: !239, size: 8, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1603, file: !1604, line: 137, baseType: !1629, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1631, line: 189, size: 1664, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !{!1633, !1634, !1637, !1642, !1643, !1646, !1647, !1652, !1653, !1654, !1655, !1657, !1658, !1659, !1660, !1661, !1699, !1720}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1630, file: !1631, line: 190, baseType: !1296, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1630, file: !1631, line: 191, baseType: !1635, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1631, line: 28, baseType: !1636)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 98, baseType: !1509)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 192, baseType: !1638, size: 192, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 192, size: 192, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1638, file: !1631, line: 193, baseType: !271, size: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1638, file: !1631, line: 194, baseType: !828, size: 192, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1630, file: !1631, line: 199, baseType: !835, size: 256, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1630, file: !1631, line: 200, baseType: !1644, size: 64, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1631, line: 200, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1630, file: !1631, line: 201, baseType: !176, size: 64, offset: 576)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 202, baseType: !1648, size: 64, offset: 640)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 202, size: 64, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1648, file: !1631, line: 203, baseType: !609, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1648, file: !1631, line: 204, baseType: !609, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1630, file: !1631, line: 206, baseType: !609, size: 64, offset: 704)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1630, file: !1631, line: 207, baseType: !507, size: 32, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1630, file: !1631, line: 208, baseType: !515, size: 32, offset: 800)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1630, file: !1631, line: 209, baseType: !1656, size: 32, offset: 832)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1631, line: 31, baseType: !629)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1630, file: !1631, line: 210, baseType: !194, size: 16, offset: 864)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1630, file: !1631, line: 211, baseType: !194, size: 16, offset: 880)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1630, file: !1631, line: 215, baseType: !1271, size: 16, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !1631, line: 222, baseType: !175, size: 64, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 239, baseType: !1662, size: 320, offset: 1024)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 239, size: 320, elements: !1663)
!1663 = !{!1664, !1691}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1662, file: !1631, line: 240, baseType: !1665, size: 320)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1631, line: 108, size: 320, elements: !1666)
!1666 = !{!1667, !1668, !1680, !1683, !1690}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1665, file: !1631, line: 110, baseType: !175, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1631, line: 111, baseType: !1669, size: 64, offset: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !1631, line: 111, size: 64, elements: !1670)
!1670 = !{!1671, !1679}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1631, line: 112, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !1631, line: 112, size: 64, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1672, file: !1631, line: 114, baseType: !926, size: 16)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1672, file: !1631, line: 115, baseType: !1676, size: 48, offset: 16)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 48, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 6)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1669, file: !1631, line: 121, baseType: !175, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1665, file: !1631, line: 123, baseType: !1681, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1631, line: 96, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1665, file: !1631, line: 124, baseType: !1684, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1631, line: 102, size: 192, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1685, file: !1631, line: 103, baseType: !440, size: 128, align: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1685, file: !1631, line: 104, baseType: !1296, size: 32, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1685, file: !1631, line: 105, baseType: !283, size: 8, offset: 160)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1665, file: !1631, line: 125, baseType: !281, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1631, line: 241, baseType: !1692, size: 320)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1631, line: 241, size: 320, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1697, !1698}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1692, file: !1631, line: 242, baseType: !175, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1692, file: !1631, line: 243, baseType: !175, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1692, file: !1631, line: 244, baseType: !1681, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1692, file: !1631, line: 245, baseType: !1684, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1692, file: !1631, line: 246, baseType: !351, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 254, baseType: !1700, size: 256, offset: 1344)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 254, size: 256, elements: !1701)
!1701 = !{!1702, !1708}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1700, file: !1631, line: 255, baseType: !1703, size: 256)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1631, line: 128, size: 256, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1703, file: !1631, line: 129, baseType: !176, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1703, file: !1631, line: 130, baseType: !1707, size: 256)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !1221)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !1631, line: 256, baseType: !1709, size: 256)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1700, file: !1631, line: 256, size: 256, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1709, file: !1631, line: 258, baseType: !271, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1709, file: !1631, line: 259, baseType: !1713, size: 128, offset: 128)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1714, line: 22, size: 128, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !{!1716, !1719}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1713, file: !1714, line: 23, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1714, line: 23, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1713, file: !1714, line: 24, baseType: !175, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1630, file: !1631, line: 274, baseType: !1721, size: 64, offset: 1600)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1631, line: 170, size: 192, elements: !1723)
!1723 = !{!1724, !1733, !1734}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1722, file: !1631, line: 171, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1631, line: 165, baseType: !1726)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!335, !1629, !1729, !1731, !1629}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1722, file: !1631, line: 172, baseType: !1629, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1722, file: !1631, line: 173, baseType: !1681, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1603, file: !1604, line: 138, baseType: !1629, size: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1603, file: !1604, line: 139, baseType: !1629, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1603, file: !1604, line: 140, baseType: !1629, size: 64, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1603, file: !1604, line: 145, baseType: !1739, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1741, line: 13, size: 896, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1740, file: !1741, line: 14, baseType: !1296, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1740, file: !1741, line: 15, baseType: !815, size: 32, offset: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1740, file: !1741, line: 16, baseType: !815, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1740, file: !1741, line: 21, baseType: !839, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1740, file: !1741, line: 27, baseType: !175, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1740, file: !1741, line: 28, baseType: !175, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1740, file: !1741, line: 29, baseType: !839, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1740, file: !1741, line: 32, baseType: !709, size: 128, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1740, file: !1741, line: 33, baseType: !507, size: 32, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1740, file: !1741, line: 37, baseType: !839, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1740, file: !1741, line: 44, baseType: !1754, size: 256, offset: 640)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1755, line: 15, size: 256, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1754, file: !1755, line: 16, baseType: !261)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1754, file: !1755, line: 18, baseType: !335, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1754, file: !1755, line: 19, baseType: !335, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1754, file: !1755, line: 20, baseType: !335, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1754, file: !1755, line: 21, baseType: !335, size: 32, offset: 96)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1754, file: !1755, line: 22, baseType: !175, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1754, file: !1755, line: 23, baseType: !175, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1603, file: !1604, line: 146, baseType: !1765, size: 64, offset: 1024)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !508, line: 18, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1603, file: !1604, line: 147, baseType: !1768, size: 64, offset: 1088)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1604, line: 25, size: 64, elements: !1770)
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1769, file: !1604, line: 26, baseType: !815, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1769, file: !1604, line: 27, baseType: !335, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1769, file: !1604, line: 28, baseType: !1774, offset: 64)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, elements: !1775)
!1775 = !{!1776}
!1776 = !DISubrange(count: 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !1604, line: 149, baseType: !1778, size: 128, offset: 1152)
!1778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1603, file: !1604, line: 149, size: 128, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1778, file: !1604, line: 150, baseType: !335, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1778, file: !1604, line: 151, baseType: !440, size: 128, align: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1283, file: !1284, line: 926, baseType: !1601, size: 64, offset: 8576)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1283, file: !1284, line: 929, baseType: !1601, size: 64, offset: 8640)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1283, file: !1284, line: 933, baseType: !1629, size: 64, offset: 8704)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1283, file: !1284, line: 943, baseType: !1786, size: 128, offset: 8768)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !240)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1283, file: !1284, line: 945, baseType: !1788, size: 64, offset: 8896)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1284, line: 49, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1283, file: !1284, line: 956, baseType: !1791, size: 64, offset: 8960)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1284, line: 45, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1283, file: !1284, line: 959, baseType: !1794, size: 64, offset: 9024)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1284, line: 959, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1283, file: !1284, line: 962, baseType: !1797, size: 64, offset: 9088)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1284, line: 66, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1283, file: !1284, line: 966, baseType: !1800, size: 64, offset: 9152)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1802, line: 35, flags: DIFlagFwdDecl)
!1802 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1283, file: !1284, line: 969, baseType: !1804, size: 64, offset: 9216)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1806, line: 82, size: 7296, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813, !1814, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1843, !1852, !1853, !1855, !1856, !1857, !1860, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1890, !1891, !1898, !1899, !1900, !1901, !1902, !1903}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1805, file: !1806, line: 83, baseType: !1296, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1805, file: !1806, line: 84, baseType: !815, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1805, file: !1806, line: 85, baseType: !335, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1805, file: !1806, line: 86, baseType: !271, size: 128, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1805, file: !1806, line: 88, baseType: !1546, size: 128, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1805, file: !1806, line: 91, baseType: !1282, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1805, file: !1806, line: 94, baseType: !1815, size: 192, offset: 448)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1816, line: 30, size: 192, elements: !1817)
!1816 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1815, file: !1816, line: 31, baseType: !271, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1815, file: !1816, line: 32, baseType: !1820, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1821, line: 25, baseType: !1822)
!1821 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1821, line: 23, size: 64, elements: !1823)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1822, file: !1821, line: 24, baseType: !1435, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1805, file: !1806, line: 97, baseType: !705, size: 64, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1805, file: !1806, line: 100, baseType: !335, size: 32, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1805, file: !1806, line: 106, baseType: !335, size: 32, offset: 736)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1805, file: !1806, line: 107, baseType: !1282, size: 64, offset: 768)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1805, file: !1806, line: 110, baseType: !335, size: 32, offset: 832)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1805, file: !1806, line: 111, baseType: !7, size: 32, offset: 864)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1805, file: !1806, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1805, file: !1806, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1805, file: !1806, line: 128, baseType: !335, size: 32, offset: 928)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1805, file: !1806, line: 129, baseType: !271, size: 128, offset: 960)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1805, file: !1806, line: 132, baseType: !1358, size: 512, offset: 1088)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1805, file: !1806, line: 133, baseType: !1366, size: 64, offset: 1600)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1805, file: !1806, line: 140, baseType: !1838, size: 256, offset: 1664)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1839, size: 256, elements: !244)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1806, line: 38, size: 128, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1839, file: !1806, line: 39, baseType: !494, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1839, file: !1806, line: 40, baseType: !494, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1805, file: !1806, line: 146, baseType: !1844, size: 192, offset: 1920)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1806, line: 66, size: 192, elements: !1845)
!1845 = !{!1846}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1844, file: !1806, line: 67, baseType: !1847, size: 192)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1806, line: 47, size: 192, elements: !1848)
!1848 = !{!1849, !1850, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1847, file: !1806, line: 48, baseType: !841, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1847, file: !1806, line: 49, baseType: !841, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1847, file: !1806, line: 50, baseType: !841, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1805, file: !1806, line: 150, baseType: !1584, size: 640, offset: 2112)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1805, file: !1806, line: 153, baseType: !1854, size: 256, offset: 2752)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 256, elements: !1221)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1805, file: !1806, line: 159, baseType: !1536, size: 64, offset: 3008)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1805, file: !1806, line: 162, baseType: !335, size: 32, offset: 3072)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1805, file: !1806, line: 164, baseType: !1858, size: 64, offset: 3136)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1806, line: 164, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1805, file: !1806, line: 175, baseType: !1861, size: 32, offset: 3200)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !463, line: 805, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 798, size: 32, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1862, file: !463, line: 803, baseType: !462, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1862, file: !463, line: 804, baseType: !317, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1805, file: !1806, line: 176, baseType: !494, size: 64, offset: 3264)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1805, file: !1806, line: 176, baseType: !494, size: 64, offset: 3328)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1805, file: !1806, line: 176, baseType: !494, size: 64, offset: 3392)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1805, file: !1806, line: 176, baseType: !494, size: 64, offset: 3456)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1805, file: !1806, line: 177, baseType: !494, size: 64, offset: 3520)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1805, file: !1806, line: 178, baseType: !494, size: 64, offset: 3584)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1805, file: !1806, line: 179, baseType: !1572, size: 128, offset: 3648)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1805, file: !1806, line: 180, baseType: !175, size: 64, offset: 3776)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1805, file: !1806, line: 180, baseType: !175, size: 64, offset: 3840)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1805, file: !1806, line: 180, baseType: !175, size: 64, offset: 3904)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1805, file: !1806, line: 180, baseType: !175, size: 64, offset: 3968)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1805, file: !1806, line: 181, baseType: !175, size: 64, offset: 4032)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1805, file: !1806, line: 181, baseType: !175, size: 64, offset: 4096)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1805, file: !1806, line: 181, baseType: !175, size: 64, offset: 4160)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1805, file: !1806, line: 181, baseType: !175, size: 64, offset: 4224)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1805, file: !1806, line: 182, baseType: !175, size: 64, offset: 4288)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1805, file: !1806, line: 182, baseType: !175, size: 64, offset: 4352)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1805, file: !1806, line: 182, baseType: !175, size: 64, offset: 4416)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1805, file: !1806, line: 182, baseType: !175, size: 64, offset: 4480)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1805, file: !1806, line: 183, baseType: !175, size: 64, offset: 4544)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1805, file: !1806, line: 183, baseType: !175, size: 64, offset: 4608)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1805, file: !1806, line: 184, baseType: !1888, offset: 4672)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1889, line: 12, elements: !269)
!1889 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1805, file: !1806, line: 192, baseType: !496, size: 64, offset: 4672)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1805, file: !1806, line: 203, baseType: !1892, size: 2048, offset: 4736)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1893, size: 2048, elements: !240)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1894, line: 43, size: 128, elements: !1895)
!1894 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1893, file: !1894, line: 44, baseType: !399, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1893, file: !1894, line: 45, baseType: !399, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1805, file: !1806, line: 220, baseType: !283, size: 8, offset: 6784)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1805, file: !1806, line: 221, baseType: !1271, size: 16, offset: 6800)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1805, file: !1806, line: 222, baseType: !1271, size: 16, offset: 6816)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1805, file: !1806, line: 224, baseType: !1040, size: 64, offset: 6848)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1805, file: !1806, line: 227, baseType: !1239, size: 192, offset: 6912)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1805, file: !1806, line: 233, baseType: !1239, size: 192, offset: 7104)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1283, file: !1284, line: 970, baseType: !1905, size: 64, offset: 9280)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1806, line: 20, size: 16576, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1911}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1906, file: !1806, line: 21, baseType: !317)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1906, file: !1806, line: 22, baseType: !1296, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1906, file: !1806, line: 23, baseType: !1546, size: 128, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1906, file: !1806, line: 24, baseType: !1912, size: 16384, offset: 192)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 16384, elements: !356)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1816, line: 49, size: 256, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1913, file: !1816, line: 50, baseType: !1916, size: 256)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1816, line: 35, size: 256, elements: !1917)
!1917 = !{!1918, !1925, !1926, !1930}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1916, file: !1816, line: 37, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1920, line: 19, baseType: !1921)
!1920 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1920, line: 18, baseType: !1923)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !335}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1916, file: !1816, line: 38, baseType: !175, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1916, file: !1816, line: 44, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1920, line: 22, baseType: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1920, line: 21, baseType: !222)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1916, file: !1816, line: 46, baseType: !1820, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1283, file: !1284, line: 971, baseType: !1820, size: 64, offset: 9344)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1283, file: !1284, line: 972, baseType: !1820, size: 64, offset: 9408)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1283, file: !1284, line: 974, baseType: !1820, size: 64, offset: 9472)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1283, file: !1284, line: 975, baseType: !1815, size: 192, offset: 9536)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1283, file: !1284, line: 976, baseType: !175, size: 64, offset: 9728)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1283, file: !1284, line: 977, baseType: !397, size: 64, offset: 9792)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1283, file: !1284, line: 978, baseType: !7, size: 32, offset: 9856)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1283, file: !1284, line: 980, baseType: !443, size: 64, offset: 9920)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1283, file: !1284, line: 989, baseType: !1940, size: 128, offset: 9984)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1941, line: 35, size: 128, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1942 = !{!1943, !1944, !1945}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1940, file: !1941, line: 36, baseType: !335, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1940, file: !1941, line: 37, baseType: !815, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1940, file: !1941, line: 38, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1941, line: 23, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1283, file: !1284, line: 992, baseType: !494, size: 64, offset: 10112)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1283, file: !1284, line: 993, baseType: !494, size: 64, offset: 10176)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1283, file: !1284, line: 996, baseType: !317, offset: 10240)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1283, file: !1284, line: 999, baseType: !261, offset: 10240)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1283, file: !1284, line: 1001, baseType: !1953, size: 64, offset: 10240)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1284, line: 636, size: 64, elements: !1954)
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1953, file: !1284, line: 637, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1283, file: !1284, line: 1005, baseType: !820, size: 128, offset: 10304)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1283, file: !1284, line: 1007, baseType: !1282, size: 64, offset: 10432)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1283, file: !1284, line: 1009, baseType: !1960, size: 64, offset: 10496)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1284, line: 1009, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1283, file: !1284, line: 1043, baseType: !176, size: 64, offset: 10560)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1283, file: !1284, line: 1046, baseType: !1964, size: 64, offset: 10624)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1284, line: 41, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1283, file: !1284, line: 1050, baseType: !1967, size: 64, offset: 10688)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1284, line: 42, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1283, file: !1284, line: 1054, baseType: !1970, size: 64, offset: 10752)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1284, line: 55, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1283, file: !1284, line: 1056, baseType: !1973, size: 64, offset: 10816)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1284, line: 40, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1283, file: !1284, line: 1058, baseType: !1976, size: 64, offset: 10880)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1978, line: 99, size: 704, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1985, !1986, !2005, !2006}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1977, file: !1978, line: 100, baseType: !839, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1977, file: !1978, line: 101, baseType: !815, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1977, file: !1978, line: 102, baseType: !815, size: 32, offset: 96)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1977, file: !1978, line: 105, baseType: !317, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1977, file: !1978, line: 107, baseType: !194, size: 16, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1977, file: !1978, line: 109, baseType: !807, size: 128, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1977, file: !1978, line: 110, baseType: !1987, size: 64, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1978, line: 73, size: 448, elements: !1989)
!1989 = !{!1990, !1993, !1994, !1999, !2004}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1988, file: !1978, line: 74, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1978, line: 74, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1988, file: !1978, line: 75, baseType: !1976, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !1978, line: 83, baseType: !1995, size: 128, offset: 128)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1988, file: !1978, line: 83, size: 128, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1995, file: !1978, line: 84, baseType: !271, size: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1995, file: !1978, line: 85, baseType: !1001, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !1978, line: 87, baseType: !2000, size: 128, offset: 256)
!2000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1988, file: !1978, line: 87, size: 128, elements: !2001)
!2001 = !{!2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2000, file: !1978, line: 88, baseType: !709, size: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2000, file: !1978, line: 89, baseType: !440, size: 128, align: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1988, file: !1978, line: 92, baseType: !7, size: 32, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1977, file: !1978, line: 111, baseType: !705, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1977, file: !1978, line: 113, baseType: !2007, size: 256, offset: 448)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2008, line: 102, size: 256, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2007, file: !2008, line: 103, baseType: !839, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2007, file: !2008, line: 104, baseType: !271, size: 128, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2007, file: !2008, line: 105, baseType: !2013, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2008, line: 21, baseType: !2014)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1283, file: !1284, line: 1061, baseType: !2019, size: 64, offset: 10944)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1284, line: 43, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1283, file: !1284, line: 1064, baseType: !175, size: 64, offset: 11008)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1283, file: !1284, line: 1065, baseType: !2023, size: 64, offset: 11072)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1816, line: 14, baseType: !2025)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1816, line: 12, size: 384, elements: !2026)
!2026 = !{!2027}
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !1816, line: 13, baseType: !2028, size: 384)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2025, file: !1816, line: 13, size: 384, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2028, file: !1816, line: 13, baseType: !335, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2028, file: !1816, line: 13, baseType: !335, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2028, file: !1816, line: 13, baseType: !335, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2028, file: !1816, line: 13, baseType: !2034, size: 256, offset: 128)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2035, line: 32, size: 256, elements: !2036)
!2035 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2036 = !{!2037, !2042, !2055, !2061, !2070, !2090, !2095}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2034, file: !2035, line: 37, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2035, line: 34, size: 64, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2038, file: !2035, line: 35, baseType: !1525, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2038, file: !2035, line: 36, baseType: !513, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2034, file: !2035, line: 45, baseType: !2043, size: 192)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2035, line: 40, size: 192, elements: !2044)
!2044 = !{!2045, !2047, !2048, !2054}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2043, file: !2035, line: 41, baseType: !2046, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !384, line: 95, baseType: !335)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2043, file: !2035, line: 42, baseType: !335, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2043, file: !2035, line: 43, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2035, line: 11, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2035, line: 8, size: 64, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2050, file: !2035, line: 9, baseType: !335, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2050, file: !2035, line: 10, baseType: !176, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2043, file: !2035, line: 44, baseType: !335, size: 32, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2034, file: !2035, line: 52, baseType: !2056, size: 128)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2035, line: 48, size: 128, elements: !2057)
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2056, file: !2035, line: 49, baseType: !1525, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2056, file: !2035, line: 50, baseType: !513, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2056, file: !2035, line: 51, baseType: !2049, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2034, file: !2035, line: 61, baseType: !2062, size: 256)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2035, line: 55, size: 256, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2067, !2069}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2062, file: !2035, line: 56, baseType: !1525, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2062, file: !2035, line: 57, baseType: !513, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2062, file: !2035, line: 58, baseType: !335, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2062, file: !2035, line: 59, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !384, line: 94, baseType: !385)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2062, file: !2035, line: 60, baseType: !2068, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2034, file: !2035, line: 95, baseType: !2071, size: 256)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2035, line: 64, size: 256, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2071, file: !2035, line: 65, baseType: !176, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2035, line: 77, baseType: !2075, size: 192, offset: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2071, file: !2035, line: 77, size: 192, elements: !2076)
!2076 = !{!2077, !2078, !2085}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2075, file: !2035, line: 82, baseType: !1271, size: 16)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2075, file: !2035, line: 88, baseType: !2079, size: 192)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2075, file: !2035, line: 84, size: 192, elements: !2080)
!2080 = !{!2081, !2083, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2079, file: !2035, line: 85, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !1396)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2079, file: !2035, line: 86, baseType: !176, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2079, file: !2035, line: 87, baseType: !176, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2075, file: !2035, line: 93, baseType: !2086, size: 96)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2075, file: !2035, line: 90, size: 96, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2086, file: !2035, line: 91, baseType: !2082, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2086, file: !2035, line: 92, baseType: !180, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2034, file: !2035, line: 101, baseType: !2091, size: 128)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2035, line: 98, size: 128, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2091, file: !2035, line: 99, baseType: !386, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2091, file: !2035, line: 100, baseType: !335, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2034, file: !2035, line: 108, baseType: !2096, size: 128)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2035, line: 104, size: 128, elements: !2097)
!2097 = !{!2098, !2099, !2100}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2096, file: !2035, line: 105, baseType: !176, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2096, file: !2035, line: 106, baseType: !335, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2096, file: !2035, line: 107, baseType: !7, size: 32, offset: 96)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1283, file: !1284, line: 1067, baseType: !1888, offset: 11136)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1283, file: !1284, line: 1099, baseType: !2103, size: 64, offset: 11136)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1284, line: 56, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1283, file: !1284, line: 1103, baseType: !271, size: 128, offset: 11200)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1283, file: !1284, line: 1104, baseType: !2107, size: 64, offset: 11328)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1284, line: 46, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1283, file: !1284, line: 1105, baseType: !1239, size: 192, offset: 11392)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1283, file: !1284, line: 1106, baseType: !7, size: 32, offset: 11584)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1283, file: !1284, line: 1109, baseType: !2112, size: 128, offset: 11648)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2113, size: 128, elements: !244)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1284, line: 51, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1283, file: !1284, line: 1110, baseType: !1239, size: 192, offset: 11776)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1283, file: !1284, line: 1111, baseType: !271, size: 128, offset: 11968)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1283, file: !1284, line: 1173, baseType: !2118, size: 64, offset: 12096)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2120, line: 62, size: 256, align: 256, elements: !2121)
!2120 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2123, !2124, !2129}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2119, file: !2120, line: 75, baseType: !180, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2119, file: !2120, line: 90, baseType: !180, size: 32, offset: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2119, file: !2120, line: 124, baseType: !2125, size: 64, offset: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !2120, line: 109, size: 64, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2125, file: !2120, line: 110, baseType: !495, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2125, file: !2120, line: 112, baseType: !495, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2119, file: !2120, line: 144, baseType: !180, size: 32, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1283, file: !1284, line: 1174, baseType: !490, size: 32, offset: 12160)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1283, file: !1284, line: 1179, baseType: !175, size: 64, offset: 12224)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1283, file: !1284, line: 1182, baseType: !2133, size: 128, offset: 12288)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1217, line: 76, size: 128, elements: !2134)
!2134 = !{!2135, !2140, !2141}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2133, file: !1217, line: 85, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2137, line: 7, size: 64, elements: !2138)
!2137 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2136, file: !2137, line: 12, baseType: !1432, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2133, file: !1217, line: 88, baseType: !283, size: 8, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2133, file: !1217, line: 95, baseType: !283, size: 8, offset: 72)
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !1284, line: 1184, baseType: !2143, size: 128, offset: 12416)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !1284, line: 1184, size: 128, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2143, file: !1284, line: 1185, baseType: !1296, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2143, file: !1284, line: 1186, baseType: !440, size: 128, align: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1283, file: !1284, line: 1190, baseType: !2148, size: 64, offset: 12544)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1284, line: 53, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1283, file: !1284, line: 1192, baseType: !2151, size: 128, offset: 12608)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1217, line: 64, size: 128, elements: !2152)
!2152 = !{!2153, !2154, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2151, file: !1217, line: 65, baseType: !789, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2151, file: !1217, line: 67, baseType: !180, size: 32, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2151, file: !1217, line: 68, baseType: !180, size: 32, offset: 96)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1283, file: !1284, line: 1206, baseType: !335, size: 32, offset: 12736)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1283, file: !1284, line: 1207, baseType: !335, size: 32, offset: 12768)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1283, file: !1284, line: 1209, baseType: !175, size: 64, offset: 12800)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1283, file: !1284, line: 1219, baseType: !494, size: 64, offset: 12864)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1283, file: !1284, line: 1220, baseType: !494, size: 64, offset: 12928)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1283, file: !1284, line: 1317, baseType: !335, size: 32, offset: 12992)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1283, file: !1284, line: 1319, baseType: !1282, size: 64, offset: 13056)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1283, file: !1284, line: 1322, baseType: !2164, size: 64, offset: 13120)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2166, line: 56, size: 512, elements: !2167)
!2166 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2176}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2165, file: !2166, line: 57, baseType: !2164, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2165, file: !2166, line: 58, baseType: !176, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2165, file: !2166, line: 59, baseType: !175, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2165, file: !2166, line: 60, baseType: !175, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2165, file: !2166, line: 61, baseType: !887, size: 64, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2165, file: !2166, line: 62, baseType: !7, size: 32, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2165, file: !2166, line: 63, baseType: !2175, size: 64, offset: 384)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !174, line: 153, baseType: !494)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2165, file: !2166, line: 64, baseType: !2177, size: 64, offset: 448)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1283, file: !1284, line: 1326, baseType: !1296, size: 32, offset: 13184)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1283, file: !1284, line: 1342, baseType: !176, size: 64, offset: 13248)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1283, file: !1284, line: 1343, baseType: !495, size: 64, offset: 13312)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1283, file: !1284, line: 1344, baseType: !494, size: 64, offset: 13376)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1283, file: !1284, line: 1345, baseType: !495, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1283, file: !1284, line: 1346, baseType: !495, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1283, file: !1284, line: 1347, baseType: !495, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1283, file: !1284, line: 1348, baseType: !440, size: 128, align: 64, offset: 13504)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1283, file: !1284, line: 1358, baseType: !2188, size: 34816, offset: 13824)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2189, line: 485, size: 34816, elements: !2190)
!2189 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !{!2191, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2220, !2221, !2222, !2223, !2224, !2225, !2228, !2229, !2230}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2188, file: !2189, line: 487, baseType: !2192, size: 192)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2193, size: 192, elements: !352)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2194, line: 16, size: 64, elements: !2195)
!2194 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2193, file: !2194, line: 17, baseType: !926, size: 16)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2193, file: !2194, line: 18, baseType: !926, size: 16, offset: 16)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2193, file: !2194, line: 19, baseType: !926, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2193, file: !2194, line: 19, baseType: !926, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2193, file: !2194, line: 19, baseType: !926, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2193, file: !2194, line: 19, baseType: !926, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2193, file: !2194, line: 19, baseType: !926, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2193, file: !2194, line: 20, baseType: !926, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2193, file: !2194, line: 20, baseType: !926, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2193, file: !2194, line: 20, baseType: !926, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2193, file: !2194, line: 20, baseType: !926, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2193, file: !2194, line: 20, baseType: !926, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2193, file: !2194, line: 20, baseType: !926, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2188, file: !2189, line: 491, baseType: !175, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2188, file: !2189, line: 495, baseType: !194, size: 16, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2188, file: !2189, line: 496, baseType: !194, size: 16, offset: 272)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2188, file: !2189, line: 497, baseType: !194, size: 16, offset: 288)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2188, file: !2189, line: 498, baseType: !194, size: 16, offset: 304)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2188, file: !2189, line: 502, baseType: !175, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2188, file: !2189, line: 503, baseType: !175, size: 64, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2188, file: !2189, line: 514, baseType: !2217, size: 256, offset: 448)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2218, size: 256, elements: !1221)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2189, line: 483, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2188, file: !2189, line: 516, baseType: !175, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2188, file: !2189, line: 518, baseType: !175, size: 64, offset: 768)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2188, file: !2189, line: 520, baseType: !175, size: 64, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2188, file: !2189, line: 521, baseType: !175, size: 64, offset: 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2188, file: !2189, line: 522, baseType: !175, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2188, file: !2189, line: 528, baseType: !2226, size: 64, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2189, line: 10, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2188, file: !2189, line: 535, baseType: !175, size: 64, offset: 1088)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2188, file: !2189, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2188, file: !2189, line: 540, baseType: !2231, size: 33280, offset: 1536)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2232, line: 317, size: 33280, elements: !2233)
!2232 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2233 = !{!2234, !2235, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2231, file: !2232, line: 330, baseType: !7, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2231, file: !2232, line: 337, baseType: !175, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2231, file: !2232, line: 348, baseType: !2237, size: 32768, offset: 512)
!2237 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2232, line: 304, size: 32768, elements: !2238)
!2238 = !{!2239, !2254, !2293, !2343, !2356}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2237, file: !2232, line: 305, baseType: !2240, size: 896)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2232, line: 12, size: 896, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2253}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2240, file: !2232, line: 13, baseType: !490, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2240, file: !2232, line: 14, baseType: !490, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2240, file: !2232, line: 15, baseType: !490, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2240, file: !2232, line: 16, baseType: !490, size: 32, offset: 96)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2240, file: !2232, line: 17, baseType: !490, size: 32, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2240, file: !2232, line: 18, baseType: !490, size: 32, offset: 160)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2240, file: !2232, line: 19, baseType: !490, size: 32, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2240, file: !2232, line: 22, baseType: !2250, size: 640, offset: 224)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 640, elements: !2251)
!2251 = !{!2252}
!2252 = !DISubrange(count: 20)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2240, file: !2232, line: 25, baseType: !490, size: 32, offset: 864)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2237, file: !2232, line: 306, baseType: !2255, size: 4096, align: 128)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2232, line: 34, size: 4096, align: 128, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2276, !2277, !2278, !2282, !2284, !2288}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2255, file: !2232, line: 35, baseType: !926, size: 16)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2255, file: !2232, line: 36, baseType: !926, size: 16, offset: 16)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2255, file: !2232, line: 37, baseType: !926, size: 16, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2255, file: !2232, line: 38, baseType: !926, size: 16, offset: 48)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !2232, line: 39, baseType: !2262, size: 128, offset: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !2232, line: 39, size: 128, elements: !2263)
!2263 = !{!2264, !2269}
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2262, file: !2232, line: 40, baseType: !2265, size: 128)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2262, file: !2232, line: 40, size: 128, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2265, file: !2232, line: 41, baseType: !494, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2265, file: !2232, line: 42, baseType: !494, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2262, file: !2232, line: 44, baseType: !2270, size: 128)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2262, file: !2232, line: 44, size: 128, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2270, file: !2232, line: 45, baseType: !490, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2270, file: !2232, line: 46, baseType: !490, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2270, file: !2232, line: 47, baseType: !490, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2270, file: !2232, line: 48, baseType: !490, size: 32, offset: 96)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2255, file: !2232, line: 51, baseType: !490, size: 32, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2255, file: !2232, line: 52, baseType: !490, size: 32, offset: 224)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2255, file: !2232, line: 55, baseType: !2279, size: 1024, offset: 256)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 1024, elements: !2280)
!2280 = !{!2281}
!2281 = !DISubrange(count: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2255, file: !2232, line: 58, baseType: !2283, size: 2048, offset: 1280)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 2048, elements: !356)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2255, file: !2232, line: 60, baseType: !2285, size: 384, offset: 3328)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 384, elements: !2286)
!2286 = !{!2287}
!2287 = !DISubrange(count: 12)
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !2232, line: 62, baseType: !2289, size: 384, offset: 3712)
!2289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !2232, line: 62, size: 384, elements: !2290)
!2290 = !{!2291, !2292}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2289, file: !2232, line: 63, baseType: !2285, size: 384)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2289, file: !2232, line: 64, baseType: !2285, size: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2237, file: !2232, line: 307, baseType: !2294, size: 1088)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2232, line: 79, size: 1088, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2342}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2294, file: !2232, line: 80, baseType: !490, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2294, file: !2232, line: 81, baseType: !490, size: 32, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2294, file: !2232, line: 82, baseType: !490, size: 32, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2294, file: !2232, line: 83, baseType: !490, size: 32, offset: 96)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2294, file: !2232, line: 84, baseType: !490, size: 32, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2294, file: !2232, line: 85, baseType: !490, size: 32, offset: 160)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2294, file: !2232, line: 86, baseType: !490, size: 32, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2294, file: !2232, line: 88, baseType: !2250, size: 640, offset: 224)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2294, file: !2232, line: 89, baseType: !1418, size: 8, offset: 864)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2294, file: !2232, line: 90, baseType: !1418, size: 8, offset: 872)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2294, file: !2232, line: 91, baseType: !1418, size: 8, offset: 880)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2294, file: !2232, line: 92, baseType: !1418, size: 8, offset: 888)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2294, file: !2232, line: 93, baseType: !1418, size: 8, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2294, file: !2232, line: 94, baseType: !1418, size: 8, offset: 904)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2294, file: !2232, line: 95, baseType: !2311, size: 64, offset: 960)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2313, line: 11, size: 128, elements: !2314)
!2313 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2314 = !{!2315, !2316}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2312, file: !2313, line: 12, baseType: !386, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2312, file: !2313, line: 13, baseType: !2317, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2319, line: 56, size: 1344, elements: !2320)
!2319 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2318, file: !2319, line: 61, baseType: !175, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2318, file: !2319, line: 62, baseType: !175, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2318, file: !2319, line: 63, baseType: !175, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2318, file: !2319, line: 64, baseType: !175, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2318, file: !2319, line: 65, baseType: !175, size: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2318, file: !2319, line: 66, baseType: !175, size: 64, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2318, file: !2319, line: 68, baseType: !175, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2318, file: !2319, line: 69, baseType: !175, size: 64, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2318, file: !2319, line: 70, baseType: !175, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2318, file: !2319, line: 71, baseType: !175, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2318, file: !2319, line: 72, baseType: !175, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2318, file: !2319, line: 73, baseType: !175, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2318, file: !2319, line: 74, baseType: !175, size: 64, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2318, file: !2319, line: 75, baseType: !175, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2318, file: !2319, line: 76, baseType: !175, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2318, file: !2319, line: 81, baseType: !175, size: 64, offset: 960)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2318, file: !2319, line: 83, baseType: !175, size: 64, offset: 1024)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2318, file: !2319, line: 84, baseType: !175, size: 64, offset: 1088)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2318, file: !2319, line: 85, baseType: !175, size: 64, offset: 1152)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2318, file: !2319, line: 86, baseType: !175, size: 64, offset: 1216)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2318, file: !2319, line: 87, baseType: !175, size: 64, offset: 1280)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2294, file: !2232, line: 96, baseType: !490, size: 32, offset: 1024)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2237, file: !2232, line: 308, baseType: !2344, size: 4608, align: 512)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2232, line: 289, size: 4608, align: 512, elements: !2345)
!2345 = !{!2346, !2347, !2354}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2344, file: !2232, line: 290, baseType: !2255, size: 4096, align: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2344, file: !2232, line: 291, baseType: !2348, size: 512, offset: 4096)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2232, line: 268, size: 512, elements: !2349)
!2349 = !{!2350, !2351, !2352}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2348, file: !2232, line: 269, baseType: !494, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2348, file: !2232, line: 270, baseType: !494, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2348, file: !2232, line: 271, baseType: !2353, size: 384, offset: 128)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 384, elements: !1677)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2344, file: !2232, line: 292, baseType: !2355, offset: 4608)
!2355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, elements: !1775)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2237, file: !2232, line: 309, baseType: !2357, size: 32768)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 32768, elements: !2358)
!2358 = !{!2359}
!2359 = !DISubrange(count: 4096)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1279, file: !791, line: 378, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1275, file: !791, line: 384, baseType: !253, size: 192, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1044, file: !791, line: 500, baseType: !317, offset: 6656)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1044, file: !791, line: 501, baseType: !2365, size: 64, offset: 6656)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !791, line: 387, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1044, file: !791, line: 516, baseType: !1765, size: 64, offset: 6720)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1044, file: !791, line: 519, baseType: !427, size: 64, offset: 6784)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1044, file: !791, line: 521, baseType: !2370, size: 64, offset: 6848)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !791, line: 521, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1044, file: !791, line: 545, baseType: !815, size: 32, offset: 6912)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1044, file: !791, line: 548, baseType: !283, size: 8, offset: 6944)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1044, file: !791, line: 550, baseType: !2375, offset: 6952)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2376, line: 142, elements: !269)
!2376 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1044, file: !791, line: 554, baseType: !2007, size: 256, offset: 6976)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1044, file: !791, line: 557, baseType: !490, size: 32, offset: 7232)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1041, file: !791, line: 565, baseType: !2380, offset: 7296)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, elements: !2381)
!2381 = !{!2382}
!2382 = !DISubrange(count: -1)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1037, file: !791, line: 151, baseType: !815, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1030, file: !791, line: 156, baseType: !317, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 159, baseType: !2386, size: 128)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 159, size: 128, elements: !2387)
!2387 = !{!2388, !2452}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2386, file: !791, line: 161, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2391)
!2391 = !{!2392, !2402, !2423, !2424, !2425, !2426, !2427, !2439, !2440, !2441}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2390, file: !31, line: 111, baseType: !2393, size: 384)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2394)
!2394 = !{!2395, !2397, !2398, !2399, !2400, !2401}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2393, file: !31, line: 20, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2393, file: !31, line: 21, baseType: !2396, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2393, file: !31, line: 22, baseType: !2396, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2393, file: !31, line: 23, baseType: !175, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2393, file: !31, line: 24, baseType: !175, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2393, file: !31, line: 25, baseType: !175, size: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2390, file: !31, line: 112, baseType: !2403, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2405, line: 105, size: 128, elements: !2406)
!2405 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2406 = !{!2407, !2408}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2404, file: !2405, line: 110, baseType: !175, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2404, file: !2405, line: 118, baseType: !2409, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2405, line: 95, size: 448, elements: !2411)
!2411 = !{!2412, !2413, !2418, !2419, !2420, !2421, !2422}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2410, file: !2405, line: 96, baseType: !839, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2410, file: !2405, line: 97, baseType: !2414, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2405, line: 60, baseType: !2416)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2403}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2410, file: !2405, line: 98, baseType: !2414, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2410, file: !2405, line: 99, baseType: !283, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2410, file: !2405, line: 100, baseType: !283, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2410, file: !2405, line: 101, baseType: !440, size: 128, align: 64, offset: 256)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2410, file: !2405, line: 102, baseType: !2403, size: 64, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2390, file: !31, line: 113, baseType: !2404, size: 128, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2390, file: !31, line: 114, baseType: !253, size: 192, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2390, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2390, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2390, file: !31, line: 117, baseType: !2428, size: 64, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2430)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2431)
!2431 = !{!2432, !2433, !2437, !2438}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2430, file: !31, line: 73, baseType: !907, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2430, file: !31, line: 78, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !2389}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2430, file: !31, line: 83, baseType: !2434, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2430, file: !31, line: 89, baseType: !1093, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2390, file: !31, line: 118, baseType: !176, size: 64, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2390, file: !31, line: 119, baseType: !335, size: 32, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !31, line: 120, baseType: !2442, size: 128, offset: 1024)
!2442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !31, line: 120, size: 128, elements: !2443)
!2443 = !{!2444, !2450}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2442, file: !31, line: 121, baseType: !2445, size: 128)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2446, line: 6, size: 128, elements: !2447)
!2446 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2447 = !{!2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2445, file: !2446, line: 7, baseType: !494, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2445, file: !2446, line: 8, baseType: !494, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2442, file: !31, line: 122, baseType: !2451)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2445, elements: !1775)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2386, file: !791, line: 162, baseType: !176, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !795, file: !791, line: 176, baseType: !440, size: 128, align: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 179, baseType: !2455, size: 32, offset: 384)
!2455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 179, size: 32, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2455, file: !791, line: 184, baseType: !815, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2455, file: !791, line: 192, baseType: !7, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2455, file: !791, line: 194, baseType: !7, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2455, file: !791, line: 195, baseType: !335, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !790, file: !791, line: 199, baseType: !815, size: 32, offset: 416)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !725, file: !44, line: 1964, baseType: !2463, size: 64, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!386, !669, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2468, line: 12, size: 256, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2469 = !{!2470, !2471, !2472, !2473, !2474}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2467, file: !2468, line: 13, baseType: !173, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2467, file: !2468, line: 16, baseType: !335, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2467, file: !2468, line: 23, baseType: !175, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2467, file: !2468, line: 30, baseType: !175, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2467, file: !2468, line: 33, baseType: !2475, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !791, line: 27, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !725, file: !44, line: 1966, baseType: !2463, size: 64, offset: 1408)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !670, file: !44, line: 1424, baseType: !2479, size: 64, offset: 448)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2482)
!2482 = !{!2483, !2529, !2533, !2537, !2538, !2539, !2540, !2541, !2546, !2551, !2555}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2481, file: !38, line: 323, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!335, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2489)
!2489 = !{!2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2514, !2515, !2516}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2488, file: !38, line: 295, baseType: !709, size: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2488, file: !38, line: 296, baseType: !271, size: 128, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2488, file: !38, line: 297, baseType: !271, size: 128, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2488, file: !38, line: 298, baseType: !271, size: 128, offset: 384)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2488, file: !38, line: 299, baseType: !1239, size: 192, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2488, file: !38, line: 300, baseType: !317, offset: 704)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2488, file: !38, line: 301, baseType: !815, size: 32, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2488, file: !38, line: 302, baseType: !669, size: 64, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2488, file: !38, line: 303, baseType: !2499, size: 64, offset: 832)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2500)
!2500 = !{!2501, !2513}
!2501 = !DIDerivedType(tag: DW_TAG_member, scope: !2499, file: !38, line: 69, baseType: !2502, size: 32)
!2502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2499, file: !38, line: 69, size: 32, elements: !2503)
!2503 = !{!2504, !2505, !2506}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2502, file: !38, line: 70, baseType: !507, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2502, file: !38, line: 71, baseType: !515, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2502, file: !38, line: 72, baseType: !2507, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2508, line: 24, baseType: !2509)
!2508 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2508, line: 22, size: 32, elements: !2510)
!2510 = !{!2511}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2509, file: !2508, line: 23, baseType: !2512, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2508, line: 20, baseType: !513)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2499, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2488, file: !38, line: 304, baseType: !601, size: 64, offset: 896)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2488, file: !38, line: 305, baseType: !175, size: 64, offset: 960)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2488, file: !38, line: 306, baseType: !2517, size: 576, offset: 1024)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2518)
!2518 = !{!2519, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2517, file: !38, line: 206, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !603)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2517, file: !38, line: 207, baseType: !2520, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2517, file: !38, line: 208, baseType: !2520, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2517, file: !38, line: 209, baseType: !2520, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2517, file: !38, line: 210, baseType: !2520, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2517, file: !38, line: 211, baseType: !2520, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2517, file: !38, line: 212, baseType: !2520, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2517, file: !38, line: 213, baseType: !609, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2517, file: !38, line: 214, baseType: !609, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2481, file: !38, line: 324, baseType: !2530, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2487, !669, !335}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2481, file: !38, line: 325, baseType: !2534, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !2487}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2481, file: !38, line: 326, baseType: !2484, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2481, file: !38, line: 327, baseType: !2484, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2481, file: !38, line: 328, baseType: !2484, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2481, file: !38, line: 329, baseType: !753, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2481, file: !38, line: 332, baseType: !2542, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!2545, !501}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2481, file: !38, line: 333, baseType: !2547, size: 64, offset: 512)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!335, !501, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2481, file: !38, line: 335, baseType: !2552, size: 64, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!335, !501, !2545}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2481, file: !38, line: 337, baseType: !2556, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!335, !669, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !670, file: !44, line: 1425, baseType: !2561, size: 64, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2564)
!2564 = !{!2565, !2569, !2570, !2574, !2575, !2576, !2591, !2614, !2618, !2619, !2642}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2563, file: !38, line: 429, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!335, !669, !335, !335, !619}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2563, file: !38, line: 430, baseType: !753, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2563, file: !38, line: 431, baseType: !2571, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!335, !669, !7}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2563, file: !38, line: 432, baseType: !2571, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2563, file: !38, line: 433, baseType: !753, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2563, file: !38, line: 434, baseType: !2577, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!335, !669, !335, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2581, file: !38, line: 416, baseType: !335, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2581, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2581, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2581, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2581, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2581, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2581, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2581, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2563, file: !38, line: 435, baseType: !2592, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!335, !669, !2499, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2596, file: !38, line: 344, baseType: !335, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2596, file: !38, line: 345, baseType: !494, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2596, file: !38, line: 346, baseType: !494, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2596, file: !38, line: 347, baseType: !494, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2596, file: !38, line: 348, baseType: !494, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2596, file: !38, line: 349, baseType: !494, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2596, file: !38, line: 350, baseType: !494, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2596, file: !38, line: 351, baseType: !845, size: 64, offset: 448)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2596, file: !38, line: 353, baseType: !845, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2596, file: !38, line: 354, baseType: !335, size: 32, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2596, file: !38, line: 355, baseType: !335, size: 32, offset: 608)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2596, file: !38, line: 356, baseType: !494, size: 64, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2596, file: !38, line: 357, baseType: !494, size: 64, offset: 704)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2596, file: !38, line: 358, baseType: !494, size: 64, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2596, file: !38, line: 359, baseType: !845, size: 64, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2596, file: !38, line: 360, baseType: !335, size: 32, offset: 896)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2563, file: !38, line: 436, baseType: !2615, size: 64, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!335, !669, !2559, !2595}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2563, file: !38, line: 438, baseType: !2592, size: 64, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2563, file: !38, line: 439, baseType: !2620, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!335, !669, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2625)
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2624, file: !38, line: 410, baseType: !7, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2624, file: !38, line: 411, baseType: !2628, size: 1344, offset: 64)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2629, size: 1344, elements: !352)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2641}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2629, file: !38, line: 396, baseType: !7, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2629, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2629, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2629, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2629, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2629, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2629, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2629, file: !38, line: 404, baseType: !496, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2629, file: !38, line: 405, baseType: !2640, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !174, line: 126, baseType: !494)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2629, file: !38, line: 406, baseType: !2640, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2563, file: !38, line: 440, baseType: !2571, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !670, file: !44, line: 1426, baseType: !2644, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !670, file: !44, line: 1427, baseType: !175, size: 64, offset: 640)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !670, file: !44, line: 1428, baseType: !175, size: 64, offset: 704)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !670, file: !44, line: 1429, baseType: !175, size: 64, offset: 768)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !670, file: !44, line: 1430, baseType: !457, size: 64, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !670, file: !44, line: 1431, baseType: !835, size: 256, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !670, file: !44, line: 1432, baseType: !335, size: 32, offset: 1152)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !670, file: !44, line: 1433, baseType: !815, size: 32, offset: 1184)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !670, file: !44, line: 1437, baseType: !2655, size: 64, offset: 1216)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !670, file: !44, line: 1449, baseType: !2660, size: 64, offset: 1280)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !473, line: 34, size: 64, elements: !2661)
!2661 = !{!2662}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2660, file: !473, line: 35, baseType: !476, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !670, file: !44, line: 1450, baseType: !271, size: 128, offset: 1344)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !670, file: !44, line: 1451, baseType: !2665, size: 64, offset: 1472)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !670, file: !44, line: 1452, baseType: !1973, size: 64, offset: 1536)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !670, file: !44, line: 1453, baseType: !2669, size: 64, offset: 1600)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !670, file: !44, line: 1454, baseType: !709, size: 128, offset: 1664)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !670, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !670, file: !44, line: 1456, baseType: !2674, size: 2432, offset: 1856)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2680, !2712}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2674, file: !38, line: 519, baseType: !7, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2674, file: !38, line: 520, baseType: !835, size: 256, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2674, file: !38, line: 521, baseType: !2679, size: 192, offset: 320)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 192, elements: !352)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2674, file: !38, line: 522, baseType: !2681, size: 1728, offset: 512)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 1728, elements: !352)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2683)
!2683 = !{!2684, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2682, file: !38, line: 223, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2687)
!2687 = !{!2688, !2689, !2702, !2703}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2686, file: !38, line: 444, baseType: !335, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2686, file: !38, line: 445, baseType: !2690, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2692)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2692, file: !38, line: 311, baseType: !753, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2692, file: !38, line: 312, baseType: !753, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2692, file: !38, line: 313, baseType: !753, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2692, file: !38, line: 314, baseType: !753, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2692, file: !38, line: 315, baseType: !2484, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2692, file: !38, line: 316, baseType: !2484, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2692, file: !38, line: 317, baseType: !2484, size: 64, offset: 384)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2692, file: !38, line: 318, baseType: !2556, size: 64, offset: 448)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2686, file: !38, line: 446, baseType: !177, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2686, file: !38, line: 447, baseType: !2685, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2682, file: !38, line: 224, baseType: !335, size: 32, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2682, file: !38, line: 226, baseType: !271, size: 128, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2682, file: !38, line: 227, baseType: !175, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2682, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2682, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2682, file: !38, line: 230, baseType: !2520, size: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2682, file: !38, line: 231, baseType: !2520, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2682, file: !38, line: 232, baseType: !176, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2674, file: !38, line: 523, baseType: !2713, size: 192, offset: 2240)
!2713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 192, elements: !352)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !670, file: !44, line: 1458, baseType: !2715, size: 2112, offset: 4288)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2716)
!2716 = !{!2717, !2718, !2719}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2715, file: !44, line: 1411, baseType: !335, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2715, file: !44, line: 1412, baseType: !1546, size: 128, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2715, file: !44, line: 1413, baseType: !2720, size: 1920, offset: 192)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2721, size: 1920, elements: !352)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2722, line: 12, size: 640, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2723 = !{!2724, !2732, !2734, !2739, !2740}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2721, file: !2722, line: 13, baseType: !2725, size: 320)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2726, line: 17, size: 320, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2727 = !{!2728, !2729, !2730, !2731}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2725, file: !2726, line: 18, baseType: !335, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2725, file: !2726, line: 19, baseType: !335, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2725, file: !2726, line: 20, baseType: !1546, size: 128, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2725, file: !2726, line: 22, baseType: !440, size: 128, align: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2721, file: !2722, line: 14, baseType: !2733, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2721, file: !2722, line: 15, baseType: !2735, size: 64, offset: 384)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2736, line: 16, size: 64, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2735, file: !2736, line: 17, baseType: !1282, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2721, file: !2722, line: 16, baseType: !1546, size: 128, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2721, file: !2722, line: 17, baseType: !815, size: 32, offset: 576)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !670, file: !44, line: 1465, baseType: !176, size: 64, offset: 6400)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !670, file: !44, line: 1468, baseType: !490, size: 32, offset: 6464)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !670, file: !44, line: 1470, baseType: !609, size: 64, offset: 6528)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !670, file: !44, line: 1471, baseType: !609, size: 64, offset: 6592)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !670, file: !44, line: 1473, baseType: !180, size: 32, offset: 6656)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !670, file: !44, line: 1474, baseType: !2747, size: 64, offset: 6720)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !670, file: !44, line: 1477, baseType: !2750, size: 256, offset: 6784)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !2280)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !670, file: !44, line: 1478, baseType: !2752, size: 128, offset: 7040)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2753, line: 18, baseType: !2754)
!2753 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2753, line: 16, size: 128, elements: !2755)
!2755 = !{!2756}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2754, file: !2753, line: 17, baseType: !237, size: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !670, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !670, file: !44, line: 1481, baseType: !2759, size: 32, offset: 7200)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !174, line: 150, baseType: !7)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !670, file: !44, line: 1487, baseType: !1239, size: 192, offset: 7232)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !670, file: !44, line: 1493, baseType: !281, size: 64, offset: 7424)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !670, file: !44, line: 1495, baseType: !2763, size: 64, offset: 7488)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !455, line: 135, size: 1024, align: 512, elements: !2766)
!2766 = !{!2767, !2771, !2772, !2779, !2785, !2789, !2793, !2797, !2798, !2802, !2806, !2811, !2815}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2765, file: !455, line: 136, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!335, !457, !7}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2765, file: !455, line: 137, baseType: !2768, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2765, file: !455, line: 138, baseType: !2773, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!335, !2776, !2778}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2765, file: !455, line: 139, baseType: !2780, size: 64, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!335, !2776, !7, !281, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2765, file: !455, line: 141, baseType: !2786, size: 64, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!335, !2776}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2765, file: !455, line: 142, baseType: !2790, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!335, !457}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2765, file: !455, line: 143, baseType: !2794, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !457}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2765, file: !455, line: 144, baseType: !2794, size: 64, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2765, file: !455, line: 145, baseType: !2799, size: 64, offset: 512)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{null, !457, !501}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2765, file: !455, line: 146, baseType: !2803, size: 64, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!351, !457, !351, !335}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2765, file: !455, line: 147, baseType: !2807, size: 64, offset: 640)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!453, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2765, file: !455, line: 148, baseType: !2812, size: 64, offset: 704)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!335, !619, !283}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2765, file: !455, line: 149, baseType: !2816, size: 64, offset: 768)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!457, !457, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !670, file: !44, line: 1500, baseType: !335, size: 32, offset: 7552)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !670, file: !44, line: 1502, baseType: !2823, size: 448, offset: 7616)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2468, line: 60, size: 448, elements: !2824)
!2824 = !{!2825, !2830, !2831, !2832, !2833, !2834, !2835}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2823, file: !2468, line: 61, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!175, !2829, !2466}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2823, file: !2468, line: 63, baseType: !2826, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2823, file: !2468, line: 66, baseType: !386, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2823, file: !2468, line: 67, baseType: !335, size: 32, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2823, file: !2468, line: 68, baseType: !7, size: 32, offset: 224)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2823, file: !2468, line: 71, baseType: !271, size: 128, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2823, file: !2468, line: 77, baseType: !2836, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !670, file: !44, line: 1505, baseType: !839, size: 64, offset: 8064)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !670, file: !44, line: 1508, baseType: !839, size: 64, offset: 8128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !670, file: !44, line: 1511, baseType: !335, size: 32, offset: 8192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !670, file: !44, line: 1514, baseType: !975, size: 32, offset: 8224)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !670, file: !44, line: 1517, baseType: !2842, size: 64, offset: 8256)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2008, line: 18, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !670, file: !44, line: 1518, baseType: !705, size: 64, offset: 8320)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !670, file: !44, line: 1525, baseType: !1765, size: 64, offset: 8384)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !670, file: !44, line: 1532, baseType: !2847, size: 64, offset: 8448)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2848, line: 52, size: 64, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2849 = !{!2850}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2847, file: !2848, line: 53, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2848, line: 40, size: 256, elements: !2853)
!2853 = !{!2854, !2855, !2860}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2852, file: !2848, line: 42, baseType: !317)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2852, file: !2848, line: 44, baseType: !2856, size: 192)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2848, line: 28, size: 192, elements: !2857)
!2857 = !{!2858, !2859}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2856, file: !2848, line: 29, baseType: !271, size: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2856, file: !2848, line: 31, baseType: !386, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2852, file: !2848, line: 49, baseType: !386, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !670, file: !44, line: 1533, baseType: !2847, size: 64, offset: 8512)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !670, file: !44, line: 1534, baseType: !440, size: 128, align: 64, offset: 8576)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !670, file: !44, line: 1535, baseType: !2007, size: 256, offset: 8704)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !670, file: !44, line: 1537, baseType: !1239, size: 192, offset: 8960)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !670, file: !44, line: 1542, baseType: !335, size: 32, offset: 9152)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !670, file: !44, line: 1545, baseType: !317, offset: 9184)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !670, file: !44, line: 1546, baseType: !271, size: 128, offset: 9216)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !670, file: !44, line: 1548, baseType: !317, offset: 9344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !670, file: !44, line: 1549, baseType: !271, size: 128, offset: 9344)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !502, file: !44, line: 624, baseType: !802, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !502, file: !44, line: 631, baseType: !175, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !44, line: 639, baseType: !2873, size: 32, offset: 384)
!2873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !44, line: 639, size: 32, elements: !2874)
!2874 = !{!2875, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2873, file: !44, line: 640, baseType: !2876, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2873, file: !44, line: 641, baseType: !7, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !502, file: !44, line: 643, baseType: !583, size: 32, offset: 416)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !502, file: !44, line: 644, baseType: !601, size: 64, offset: 448)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !502, file: !44, line: 645, baseType: !605, size: 128, offset: 512)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !502, file: !44, line: 646, baseType: !605, size: 128, offset: 640)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !502, file: !44, line: 647, baseType: !605, size: 128, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !502, file: !44, line: 648, baseType: !317, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !502, file: !44, line: 649, baseType: !194, size: 16, offset: 896)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !502, file: !44, line: 650, baseType: !1418, size: 8, offset: 912)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !502, file: !44, line: 651, baseType: !1418, size: 8, offset: 920)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !502, file: !44, line: 652, baseType: !2640, size: 64, offset: 960)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !502, file: !44, line: 659, baseType: !175, size: 64, offset: 1024)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !502, file: !44, line: 660, baseType: !835, size: 256, offset: 1088)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !502, file: !44, line: 662, baseType: !175, size: 64, offset: 1344)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !502, file: !44, line: 663, baseType: !175, size: 64, offset: 1408)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !502, file: !44, line: 665, baseType: !709, size: 128, offset: 1472)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !502, file: !44, line: 666, baseType: !271, size: 128, offset: 1600)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !502, file: !44, line: 675, baseType: !271, size: 128, offset: 1728)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !502, file: !44, line: 676, baseType: !271, size: 128, offset: 1856)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !502, file: !44, line: 677, baseType: !271, size: 128, offset: 1984)
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !44, line: 678, baseType: !2898, size: 128, offset: 2112)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !44, line: 678, size: 128, elements: !2899)
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2898, file: !44, line: 679, baseType: !705, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2898, file: !44, line: 680, baseType: !440, size: 128, align: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !502, file: !44, line: 682, baseType: !841, size: 64, offset: 2240)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !502, file: !44, line: 683, baseType: !841, size: 64, offset: 2304)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !502, file: !44, line: 684, baseType: !815, size: 32, offset: 2368)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !502, file: !44, line: 685, baseType: !815, size: 32, offset: 2400)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !502, file: !44, line: 686, baseType: !815, size: 32, offset: 2432)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !502, file: !44, line: 688, baseType: !815, size: 32, offset: 2464)
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !44, line: 690, baseType: !2909, size: 64, offset: 2496)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !44, line: 690, size: 64, elements: !2910)
!2910 = !{!2911, !3133}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2909, file: !44, line: 691, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2914)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2915)
!2915 = !{!2916, !2917, !2921, !2926, !2930, !2931, !2932, !2936, !2949, !2950, !2957, !2961, !2962, !2966, !2967, !2971, !2976, !2977, !2981, !2985, !3093, !3097, !3098, !3102, !3103, !3107, !3111, !3116, !3120, !3124, !3128, !3132}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2914, file: !44, line: 1823, baseType: !177, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2914, file: !44, line: 1824, baseType: !2918, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!601, !427, !601, !335}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2914, file: !44, line: 1825, baseType: !2922, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!382, !427, !351, !397, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2914, file: !44, line: 1826, baseType: !2927, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!382, !427, !281, !397, !2925}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2914, file: !44, line: 1827, baseType: !911, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2914, file: !44, line: 1828, baseType: !911, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2914, file: !44, line: 1829, baseType: !2933, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!335, !914, !283}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2914, file: !44, line: 1830, baseType: !2937, size: 64, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!335, !427, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2942)
!2942 = !{!2943, !2948}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2941, file: !44, line: 1777, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!335, !2940, !281, !335, !601, !494, !7}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2941, file: !44, line: 1778, baseType: !601, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2914, file: !44, line: 1831, baseType: !2937, size: 64, offset: 512)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2914, file: !44, line: 1832, baseType: !2951, size: 64, offset: 576)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!2954, !427, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !183, line: 52, baseType: !7)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !689, line: 27, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2914, file: !44, line: 1833, baseType: !2958, size: 64, offset: 640)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!386, !427, !7, !175}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2914, file: !44, line: 1834, baseType: !2958, size: 64, offset: 704)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2914, file: !44, line: 1835, baseType: !2963, size: 64, offset: 768)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!335, !427, !1047}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2914, file: !44, line: 1836, baseType: !175, size: 64, offset: 832)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2914, file: !44, line: 1837, baseType: !2968, size: 64, offset: 896)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!335, !501, !427}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2914, file: !44, line: 1838, baseType: !2972, size: 64, offset: 960)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!335, !427, !2975}
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !176)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2914, file: !44, line: 1839, baseType: !2968, size: 64, offset: 1024)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2914, file: !44, line: 1840, baseType: !2978, size: 64, offset: 1088)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!335, !427, !601, !601, !335}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2914, file: !44, line: 1841, baseType: !2982, size: 64, offset: 1152)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!335, !335, !427, !335}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2914, file: !44, line: 1842, baseType: !2986, size: 64, offset: 1216)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!335, !427, !335, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2991)
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3023, !3024, !3025, !3038, !3069}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2990, file: !44, line: 1063, baseType: !2989, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2990, file: !44, line: 1064, baseType: !271, size: 128, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2990, file: !44, line: 1065, baseType: !709, size: 128, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2990, file: !44, line: 1066, baseType: !271, size: 128, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2990, file: !44, line: 1069, baseType: !271, size: 128, offset: 448)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2990, file: !44, line: 1072, baseType: !2975, size: 64, offset: 576)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2990, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2990, file: !44, line: 1074, baseType: !239, size: 8, offset: 672)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2990, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2990, file: !44, line: 1076, baseType: !335, size: 32, offset: 736)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2990, file: !44, line: 1077, baseType: !1546, size: 128, offset: 768)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2990, file: !44, line: 1078, baseType: !427, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2990, file: !44, line: 1079, baseType: !601, size: 64, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2990, file: !44, line: 1080, baseType: !601, size: 64, offset: 1024)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2990, file: !44, line: 1082, baseType: !3007, size: 64, offset: 1088)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3009)
!3009 = !{!3010, !3018, !3019, !3020, !3021, !3022}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3008, file: !44, line: 1315, baseType: !3011)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3012, line: 20, baseType: !3013)
!3012 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3012, line: 11, elements: !3014)
!3014 = !{!3015}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3013, file: !3012, line: 12, baseType: !3016)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !267, line: 33, baseType: !3017)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 31, elements: !269)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3008, file: !44, line: 1316, baseType: !335, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3008, file: !44, line: 1317, baseType: !335, size: 32, offset: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3008, file: !44, line: 1318, baseType: !3007, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3008, file: !44, line: 1319, baseType: !427, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3008, file: !44, line: 1320, baseType: !440, size: 128, align: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2990, file: !44, line: 1084, baseType: !175, size: 64, offset: 1152)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2990, file: !44, line: 1085, baseType: !175, size: 64, offset: 1216)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2990, file: !44, line: 1087, baseType: !3026, size: 64, offset: 1280)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3028)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3029)
!3029 = !{!3030, !3034}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3028, file: !44, line: 1012, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !2989, !2989}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3028, file: !44, line: 1013, baseType: !3035, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !2989}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2990, file: !44, line: 1088, baseType: !3039, size: 64, offset: 1344)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3042)
!3042 = !{!3043, !3047, !3051, !3052, !3056, !3060, !3064, !3068}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3041, file: !44, line: 1017, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!2975, !2975}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3041, file: !44, line: 1018, baseType: !3048, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !2975}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3041, file: !44, line: 1019, baseType: !3035, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3041, file: !44, line: 1020, baseType: !3053, size: 64, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!335, !2989, !335}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3041, file: !44, line: 1021, baseType: !3057, size: 64, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!283, !2989}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3041, file: !44, line: 1022, baseType: !3061, size: 64, offset: 320)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!335, !2989, !335, !274}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3041, file: !44, line: 1023, baseType: !3065, size: 64, offset: 384)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !2989, !888}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3041, file: !44, line: 1024, baseType: !3057, size: 64, offset: 448)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2990, file: !44, line: 1097, baseType: !3070, size: 256, offset: 1408)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2990, file: !44, line: 1089, size: 256, elements: !3071)
!3071 = !{!3072, !3081, !3087}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3070, file: !44, line: 1090, baseType: !3073, size: 256)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3074, line: 10, size: 256, elements: !3075)
!3074 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3075 = !{!3076, !3077, !3080}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3073, file: !3074, line: 11, baseType: !490, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3073, file: !3074, line: 12, baseType: !3078, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3074, line: 5, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3073, file: !3074, line: 13, baseType: !271, size: 128, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3070, file: !44, line: 1091, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3074, line: 17, size: 64, elements: !3083)
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3082, file: !3074, line: 18, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3074, line: 16, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3070, file: !44, line: 1096, baseType: !3088, size: 192)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !44, line: 1092, size: 192, elements: !3089)
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3088, file: !44, line: 1093, baseType: !271, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3088, file: !44, line: 1094, baseType: !335, size: 32, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3088, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2914, file: !44, line: 1843, baseType: !3094, size: 64, offset: 1280)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!382, !427, !789, !335, !397, !2925, !335}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2914, file: !44, line: 1844, baseType: !1167, size: 64, offset: 1344)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2914, file: !44, line: 1845, baseType: !3099, size: 64, offset: 1408)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!335, !335}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2914, file: !44, line: 1846, baseType: !2986, size: 64, offset: 1472)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2914, file: !44, line: 1847, baseType: !3104, size: 64, offset: 1536)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!382, !2148, !427, !2925, !397, !7}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2914, file: !44, line: 1848, baseType: !3108, size: 64, offset: 1600)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!382, !427, !2925, !2148, !397, !7}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2914, file: !44, line: 1849, baseType: !3112, size: 64, offset: 1664)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!335, !427, !386, !3115, !888}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2914, file: !44, line: 1850, baseType: !3117, size: 64, offset: 1728)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!386, !427, !335, !601, !601}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2914, file: !44, line: 1852, baseType: !3121, size: 64, offset: 1792)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !779, !427}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2914, file: !44, line: 1856, baseType: !3125, size: 64, offset: 1856)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!382, !427, !601, !427, !601, !397, !7}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2914, file: !44, line: 1858, baseType: !3129, size: 64, offset: 1920)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!601, !427, !601, !427, !601, !601, !7}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2914, file: !44, line: 1861, baseType: !2978, size: 64, offset: 1984)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2909, file: !44, line: 692, baseType: !732, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !502, file: !44, line: 694, baseType: !3135, size: 64, offset: 2560)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3141}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3136, file: !44, line: 1101, baseType: !317)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3136, file: !44, line: 1102, baseType: !271, size: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3136, file: !44, line: 1103, baseType: !271, size: 128, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3136, file: !44, line: 1104, baseType: !271, size: 128, offset: 256)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !502, file: !44, line: 695, baseType: !803, size: 1216, align: 64, offset: 2624)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !502, file: !44, line: 696, baseType: !271, size: 128, offset: 3840)
!3144 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !44, line: 697, baseType: !3145, size: 64, offset: 3968)
!3145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !44, line: 697, size: 64, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3152, !3153}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3145, file: !44, line: 698, baseType: !2148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3145, file: !44, line: 699, baseType: !2665, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3145, file: !44, line: 700, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3145, file: !44, line: 701, baseType: !351, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3145, file: !44, line: 702, baseType: !7, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !502, file: !44, line: 705, baseType: !180, size: 32, offset: 4032)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !502, file: !44, line: 708, baseType: !180, size: 32, offset: 4064)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !502, file: !44, line: 709, baseType: !2747, size: 64, offset: 4096)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !502, file: !44, line: 720, baseType: !176, size: 64, offset: 4160)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !458, file: !455, line: 98, baseType: !3159, size: 256, offset: 448)
!3159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 256, elements: !2280)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !458, file: !455, line: 101, baseType: !3161, size: 32, offset: 704)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3162, line: 25, size: 32, elements: !3163)
!3162 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3163 = !{!3164}
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !3162, line: 26, baseType: !3165, size: 32)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3161, file: !3162, line: 26, size: 32, elements: !3166)
!3166 = !{!3167}
!3167 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !3162, line: 30, baseType: !3168, size: 32)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3165, file: !3162, line: 30, size: 32, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3168, file: !3162, line: 31, baseType: !317)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3168, file: !3162, line: 32, baseType: !335, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !458, file: !455, line: 102, baseType: !2763, size: 64, offset: 768)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !458, file: !455, line: 103, baseType: !669, size: 64, offset: 832)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !458, file: !455, line: 104, baseType: !175, size: 64, offset: 896)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !458, file: !455, line: 105, baseType: !176, size: 64, offset: 960)
!3176 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !455, line: 107, baseType: !3177, size: 128, offset: 1024)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !458, file: !455, line: 107, size: 128, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3177, file: !455, line: 108, baseType: !271, size: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3177, file: !455, line: 109, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !458, file: !455, line: 111, baseType: !271, size: 128, offset: 1152)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !458, file: !455, line: 112, baseType: !271, size: 128, offset: 1280)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !458, file: !455, line: 120, baseType: !3185, size: 128, offset: 1408)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !458, file: !455, line: 116, size: 128, elements: !3186)
!3186 = !{!3187, !3188, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3185, file: !455, line: 117, baseType: !709, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3185, file: !455, line: 118, baseType: !472, size: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3185, file: !455, line: 119, baseType: !440, size: 128, align: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !428, file: !44, line: 922, baseType: !501, size: 64, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !428, file: !44, line: 923, baseType: !2912, size: 64, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !428, file: !44, line: 929, baseType: !317, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !428, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !428, file: !44, line: 931, baseType: !839, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !428, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !428, file: !44, line: 933, baseType: !2759, size: 32, offset: 544)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !428, file: !44, line: 934, baseType: !1239, size: 192, offset: 576)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !428, file: !44, line: 935, baseType: !601, size: 64, offset: 768)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !428, file: !44, line: 936, baseType: !3200, size: 192, offset: 832)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3200, file: !44, line: 886, baseType: !3011)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3200, file: !44, line: 887, baseType: !1536, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3200, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3200, file: !44, line: 889, baseType: !507, size: 32, offset: 96)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3200, file: !44, line: 889, baseType: !507, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3200, file: !44, line: 890, baseType: !335, size: 32, offset: 160)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !428, file: !44, line: 937, baseType: !1601, size: 64, offset: 1024)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !428, file: !44, line: 938, baseType: !3210, size: 256, offset: 1088)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3210, file: !44, line: 897, baseType: !175, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3210, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3210, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3210, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3210, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3210, file: !44, line: 904, baseType: !601, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !428, file: !44, line: 940, baseType: !494, size: 64, offset: 1344)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !428, file: !44, line: 945, baseType: !176, size: 64, offset: 1408)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !428, file: !44, line: 949, baseType: !271, size: 128, offset: 1472)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !428, file: !44, line: 950, baseType: !271, size: 128, offset: 1600)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !428, file: !44, line: 952, baseType: !802, size: 64, offset: 1728)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !428, file: !44, line: 953, baseType: !975, size: 32, offset: 1792)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !428, file: !44, line: 954, baseType: !975, size: 32, offset: 1824)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !418, file: !376, line: 174, baseType: !424, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !418, file: !376, line: 176, baseType: !3227, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!335, !427, !310, !417, !1047}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !406, file: !376, line: 90, baseType: !401, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !406, file: !376, line: 91, baseType: !3232, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !366, file: !305, line: 143, baseType: !3234, size: 64, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!3237, !310}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3240)
!3240 = !{!3241, !3242, !3246, !3250, !3256, !3260}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3239, file: !61, line: 40, baseType: !60, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3239, file: !61, line: 41, baseType: !3243, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!283}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3239, file: !61, line: 42, baseType: !3247, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!176}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3239, file: !61, line: 43, baseType: !3251, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!2177, !3254}
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3239, file: !61, line: 44, baseType: !3257, size: 64, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!2177}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3239, file: !61, line: 45, baseType: !540, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !366, file: !305, line: 144, baseType: !3262, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!2177, !310}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !366, file: !305, line: 145, baseType: !3266, size: 64, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !310, !3269, !3270}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !304, file: !305, line: 70, baseType: !3272, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !689, line: 123, size: 1024, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3403, !3404, !3405, !3406, !3407}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3273, file: !689, line: 124, baseType: !815, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3273, file: !689, line: 125, baseType: !815, size: 32, offset: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3273, file: !689, line: 135, baseType: !3272, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3273, file: !689, line: 136, baseType: !281, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3273, file: !689, line: 138, baseType: !828, size: 192, align: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3273, file: !689, line: 140, baseType: !2177, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3273, file: !689, line: 141, baseType: !7, size: 32, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3273, file: !689, line: 142, baseType: !3283, size: 256, offset: 512)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3273, file: !689, line: 142, size: 256, elements: !3284)
!3284 = !{!3285, !3331, !3335}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3283, file: !689, line: 143, baseType: !3286, size: 192)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !689, line: 91, size: 192, elements: !3287)
!3287 = !{!3288, !3289, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3286, file: !689, line: 92, baseType: !175, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3286, file: !689, line: 94, baseType: !824, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3286, file: !689, line: 100, baseType: !3291, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !689, line: 180, size: 704, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3303, !3304, !3305, !3329, !3330}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3292, file: !689, line: 182, baseType: !3272, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3292, file: !689, line: 183, baseType: !7, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3292, file: !689, line: 186, baseType: !3297, size: 192, offset: 128)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3298, line: 19, size: 192, elements: !3299)
!3298 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3299 = !{!3300, !3301, !3302}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3297, file: !3298, line: 20, baseType: !807, size: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3297, file: !3298, line: 21, baseType: !7, size: 32, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3297, file: !3298, line: 22, baseType: !7, size: 32, offset: 160)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3292, file: !689, line: 187, baseType: !490, size: 32, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3292, file: !689, line: 188, baseType: !490, size: 32, offset: 352)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3292, file: !689, line: 189, baseType: !3306, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !689, line: 168, size: 320, elements: !3308)
!3308 = !{!3309, !3313, !3317, !3321, !3325}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3307, file: !689, line: 169, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!335, !779, !3291}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3307, file: !689, line: 171, baseType: !3314, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!335, !3272, !281, !392}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3307, file: !689, line: 173, baseType: !3318, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!335, !3272}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3307, file: !689, line: 174, baseType: !3322, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!335, !3272, !3272, !281}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3307, file: !689, line: 176, baseType: !3326, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!335, !779, !3272, !3291}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3292, file: !689, line: 192, baseType: !271, size: 128, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3292, file: !689, line: 194, baseType: !1546, size: 128, offset: 576)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3283, file: !689, line: 144, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !689, line: 103, size: 64, elements: !3333)
!3333 = !{!3334}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3332, file: !689, line: 104, baseType: !3272, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3283, file: !689, line: 145, baseType: !3336, size: 256)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !689, line: 107, size: 256, elements: !3337)
!3337 = !{!3338, !3398, !3401, !3402}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3336, file: !689, line: 108, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3341)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !689, line: 217, size: 768, elements: !3342)
!3342 = !{!3343, !3363, !3367, !3371, !3375, !3379, !3383, !3387, !3388, !3389, !3390, !3394}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3341, file: !689, line: 222, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!335, !3347}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !689, line: 197, size: 1088, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3348, file: !689, line: 199, baseType: !3272, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3348, file: !689, line: 200, baseType: !427, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3348, file: !689, line: 201, baseType: !779, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3348, file: !689, line: 202, baseType: !176, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3348, file: !689, line: 205, baseType: !1239, size: 192, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3348, file: !689, line: 206, baseType: !1239, size: 192, offset: 448)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3348, file: !689, line: 207, baseType: !335, size: 32, offset: 640)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3348, file: !689, line: 208, baseType: !271, size: 128, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3348, file: !689, line: 209, baseType: !351, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3348, file: !689, line: 211, baseType: !397, size: 64, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3348, file: !689, line: 212, baseType: !283, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3348, file: !689, line: 213, baseType: !283, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3348, file: !689, line: 214, baseType: !1075, size: 64, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3341, file: !689, line: 223, baseType: !3364, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{null, !3347}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3341, file: !689, line: 236, baseType: !3368, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!335, !779, !176}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3341, file: !689, line: 238, baseType: !3372, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!176, !779, !2925}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3341, file: !689, line: 239, baseType: !3376, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!176, !779, !176, !2925}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3341, file: !689, line: 240, baseType: !3380, size: 64, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !779, !176}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3341, file: !689, line: 242, baseType: !3384, size: 64, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!382, !3347, !351, !397, !601}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3341, file: !689, line: 252, baseType: !397, size: 64, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3341, file: !689, line: 259, baseType: !283, size: 8, offset: 512)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3341, file: !689, line: 260, baseType: !3384, size: 64, offset: 576)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3341, file: !689, line: 263, baseType: !3391, size: 64, offset: 640)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!2954, !3347, !2955}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3341, file: !689, line: 266, baseType: !3395, size: 64, offset: 704)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!335, !3347, !1047}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3336, file: !689, line: 109, baseType: !3399, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !689, line: 31, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3336, file: !689, line: 110, baseType: !601, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3336, file: !689, line: 111, baseType: !3272, size: 64, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3273, file: !689, line: 148, baseType: !176, size: 64, offset: 768)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3273, file: !689, line: 154, baseType: !494, size: 64, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3273, file: !689, line: 156, baseType: !194, size: 16, offset: 896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3273, file: !689, line: 157, baseType: !392, size: 16, offset: 912)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3273, file: !689, line: 158, baseType: !3408, size: 64, offset: 960)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !689, line: 32, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !304, file: !305, line: 71, baseType: !3411, size: 32, offset: 448)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3412, line: 19, size: 32, elements: !3413)
!3412 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3413 = !{!3414}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3411, file: !3412, line: 20, baseType: !1296, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !304, file: !305, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !304, file: !305, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !304, file: !305, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !304, file: !305, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !304, file: !305, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !301, file: !67, line: 463, baseType: !300, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !301, file: !67, line: 465, baseType: !3422, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !301, file: !67, line: 467, baseType: !281, size: 64, offset: 640)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !301, file: !67, line: 468, baseType: !3426, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3436, !3441, !3445}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3428, file: !67, line: 88, baseType: !281, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3428, file: !67, line: 89, baseType: !403, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3428, file: !67, line: 90, baseType: !3433, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!335, !300, !346}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3428, file: !67, line: 91, baseType: !3437, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!351, !300, !3440, !3269, !3270}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3428, file: !67, line: 93, baseType: !3442, size: 64, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{null, !300}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3428, file: !67, line: 95, baseType: !3446, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3448)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3449)
!3449 = !{!3450, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3448, file: !74, line: 279, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!335, !300}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3448, file: !74, line: 280, baseType: !3442, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3448, file: !74, line: 281, baseType: !3451, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3448, file: !74, line: 282, baseType: !3451, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3448, file: !74, line: 283, baseType: !3451, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3448, file: !74, line: 284, baseType: !3451, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3448, file: !74, line: 285, baseType: !3451, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3448, file: !74, line: 286, baseType: !3451, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3448, file: !74, line: 287, baseType: !3451, size: 64, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3448, file: !74, line: 288, baseType: !3451, size: 64, offset: 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3448, file: !74, line: 289, baseType: !3451, size: 64, offset: 640)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3448, file: !74, line: 290, baseType: !3451, size: 64, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3448, file: !74, line: 291, baseType: !3451, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3448, file: !74, line: 292, baseType: !3451, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3448, file: !74, line: 293, baseType: !3451, size: 64, offset: 896)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3448, file: !74, line: 294, baseType: !3451, size: 64, offset: 960)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3448, file: !74, line: 295, baseType: !3451, size: 64, offset: 1024)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3448, file: !74, line: 296, baseType: !3451, size: 64, offset: 1088)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3448, file: !74, line: 297, baseType: !3451, size: 64, offset: 1152)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3448, file: !74, line: 298, baseType: !3451, size: 64, offset: 1216)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3448, file: !74, line: 299, baseType: !3451, size: 64, offset: 1280)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3448, file: !74, line: 300, baseType: !3451, size: 64, offset: 1344)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3448, file: !74, line: 301, baseType: !3451, size: 64, offset: 1408)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !301, file: !67, line: 470, baseType: !293, size: 64, offset: 768)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !301, file: !67, line: 471, baseType: !3478, size: 64, offset: 832)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !301, file: !67, line: 473, baseType: !176, size: 64, offset: 896)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !301, file: !67, line: 475, baseType: !176, size: 64, offset: 960)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !301, file: !67, line: 480, baseType: !1239, size: 192, offset: 1024)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !301, file: !67, line: 484, baseType: !3483, size: 576, offset: 1216)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3483, file: !67, line: 362, baseType: !271, size: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3483, file: !67, line: 363, baseType: !271, size: 128, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3483, file: !67, line: 364, baseType: !271, size: 128, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3483, file: !67, line: 365, baseType: !271, size: 128, offset: 384)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3483, file: !67, line: 366, baseType: !283, size: 8, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3483, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !301, file: !67, line: 485, baseType: !3492, size: 2304, offset: 1792)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3493)
!3493 = !{!3494, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3593, !3597}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3492, file: !74, line: 566, baseType: !3495, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3497)
!3497 = !{!3498}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3496, file: !74, line: 51, baseType: !335, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3492, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3492, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3492, file: !74, line: 569, baseType: !283, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3492, file: !74, line: 570, baseType: !283, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3492, file: !74, line: 571, baseType: !283, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3492, file: !74, line: 572, baseType: !283, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3492, file: !74, line: 573, baseType: !283, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3492, file: !74, line: 574, baseType: !283, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3492, file: !74, line: 575, baseType: !283, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3492, file: !74, line: 576, baseType: !283, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3492, file: !74, line: 577, baseType: !490, size: 32, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3492, file: !74, line: 578, baseType: !317, offset: 96)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3492, file: !74, line: 580, baseType: !271, size: 128, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3492, file: !74, line: 581, baseType: !253, size: 192, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3492, file: !74, line: 582, baseType: !3514, size: 64, offset: 448)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3516, line: 43, size: 1472, elements: !3517)
!3516 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3525, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3515, file: !3516, line: 44, baseType: !281, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3515, file: !3516, line: 45, baseType: !335, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3515, file: !3516, line: 46, baseType: !271, size: 128, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3515, file: !3516, line: 47, baseType: !317, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3515, file: !3516, line: 48, baseType: !3523, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3515, file: !3516, line: 49, baseType: !3526, size: 320, offset: 320)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3527, line: 11, size: 320, elements: !3528)
!3527 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3528 = !{!3529, !3530, !3531, !3536}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3526, file: !3527, line: 16, baseType: !709, size: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3526, file: !3527, line: 17, baseType: !175, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3526, file: !3527, line: 18, baseType: !3532, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{null, !3535}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3526, file: !3527, line: 19, baseType: !490, size: 32, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3515, file: !3516, line: 50, baseType: !175, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3515, file: !3516, line: 51, baseType: !1366, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3515, file: !3516, line: 52, baseType: !1366, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3515, file: !3516, line: 53, baseType: !1366, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3515, file: !3516, line: 54, baseType: !1366, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3515, file: !3516, line: 55, baseType: !1366, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3515, file: !3516, line: 56, baseType: !175, size: 64, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3515, file: !3516, line: 57, baseType: !175, size: 64, offset: 1088)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3515, file: !3516, line: 58, baseType: !175, size: 64, offset: 1152)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3515, file: !3516, line: 59, baseType: !175, size: 64, offset: 1216)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3515, file: !3516, line: 60, baseType: !175, size: 64, offset: 1280)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3515, file: !3516, line: 61, baseType: !300, size: 64, offset: 1344)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3515, file: !3516, line: 62, baseType: !283, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3515, file: !3516, line: 63, baseType: !283, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3492, file: !74, line: 583, baseType: !283, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3492, file: !74, line: 584, baseType: !283, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3492, file: !74, line: 585, baseType: !283, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3492, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3492, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3492, file: !74, line: 592, baseType: !1358, size: 512, offset: 576)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3492, file: !74, line: 593, baseType: !494, size: 64, offset: 1088)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3492, file: !74, line: 594, baseType: !2007, size: 256, offset: 1152)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3492, file: !74, line: 595, baseType: !1546, size: 128, offset: 1408)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3492, file: !74, line: 596, baseType: !3523, size: 64, offset: 1536)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3492, file: !74, line: 597, baseType: !815, size: 32, offset: 1600)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3492, file: !74, line: 598, baseType: !815, size: 32, offset: 1632)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3492, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3492, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3492, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3492, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3492, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3492, file: !74, line: 604, baseType: !283, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3492, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3492, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3492, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3492, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3492, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3492, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3492, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3492, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3492, file: !74, line: 613, baseType: !335, size: 32, offset: 1792)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3492, file: !74, line: 614, baseType: !335, size: 32, offset: 1824)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3492, file: !74, line: 615, baseType: !494, size: 64, offset: 1856)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3492, file: !74, line: 616, baseType: !494, size: 64, offset: 1920)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3492, file: !74, line: 617, baseType: !494, size: 64, offset: 1984)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3492, file: !74, line: 618, baseType: !494, size: 64, offset: 2048)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3492, file: !74, line: 620, baseType: !3584, size: 64, offset: 2112)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3585, file: !74, line: 537, baseType: !317)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3585, file: !74, line: 538, baseType: !7, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3585, file: !74, line: 540, baseType: !271, size: 128, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3585, file: !74, line: 543, baseType: !3591, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3492, file: !74, line: 621, baseType: !3594, size: 64, offset: 2176)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !300, !1509}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3492, file: !74, line: 622, baseType: !3598, size: 64, offset: 2240)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !301, file: !67, line: 486, baseType: !3601, size: 64, offset: 4096)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3610, !3611, !3612}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3602, file: !74, line: 643, baseType: !3448, size: 1472)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3602, file: !74, line: 644, baseType: !3451, size: 64, offset: 1472)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3602, file: !74, line: 645, baseType: !3607, size: 64, offset: 1536)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !300, !283}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3602, file: !74, line: 646, baseType: !3451, size: 64, offset: 1600)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3602, file: !74, line: 647, baseType: !3442, size: 64, offset: 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3602, file: !74, line: 648, baseType: !3442, size: 64, offset: 1728)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !301, file: !67, line: 493, baseType: !3614, size: 64, offset: 4160)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !301, file: !67, line: 499, baseType: !271, size: 128, offset: 4224)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !301, file: !67, line: 502, baseType: !3618, size: 64, offset: 4352)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3620)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !301, file: !67, line: 504, baseType: !3622, size: 64, offset: 4416)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !301, file: !67, line: 505, baseType: !494, size: 64, offset: 4480)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !301, file: !67, line: 510, baseType: !494, size: 64, offset: 4544)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !301, file: !67, line: 511, baseType: !3626, size: 64, offset: 4608)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3628)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !301, file: !67, line: 513, baseType: !3630, size: 64, offset: 4672)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3631, file: !67, line: 293, baseType: !7, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3631, file: !67, line: 294, baseType: !175, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !301, file: !67, line: 515, baseType: !271, size: 128, offset: 4736)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !301, file: !67, line: 526, baseType: !3637, offset: 4864)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3638, line: 5, elements: !269)
!3638 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !301, file: !67, line: 528, baseType: !3640, size: 64, offset: 4864)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3642, line: 14, flags: DIFlagFwdDecl)
!3642 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !301, file: !67, line: 529, baseType: !3644, size: 64, offset: 4928)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3646, line: 17, size: 192, elements: !3647)
!3646 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3647 = !{!3648, !3649, !3732}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3645, file: !3646, line: 18, baseType: !3644, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3645, file: !3646, line: 19, baseType: !3650, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3646, line: 110, size: 1152, elements: !3653)
!3653 = !{!3654, !3658, !3662, !3668, !3674, !3678, !3682, !3687, !3691, !3692, !3696, !3700, !3704, !3715, !3716, !3717, !3718, !3728}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3652, file: !3646, line: 111, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!3644, !3644}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3652, file: !3646, line: 112, baseType: !3659, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{null, !3644}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3652, file: !3646, line: 113, baseType: !3663, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!283, !3666}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3652, file: !3646, line: 114, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!2177, !3666, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3652, file: !3646, line: 116, baseType: !3675, size: 64, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!283, !3666, !281}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3652, file: !3646, line: 118, baseType: !3679, size: 64, offset: 320)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!335, !3666, !281, !7, !176, !397}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3652, file: !3646, line: 123, baseType: !3683, size: 64, offset: 384)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!335, !3666, !281, !3686, !397}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3652, file: !3646, line: 126, baseType: !3688, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!281, !3666}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3652, file: !3646, line: 127, baseType: !3688, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3652, file: !3646, line: 128, baseType: !3693, size: 64, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!3644, !3666}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3652, file: !3646, line: 130, baseType: !3697, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!3644, !3666, !3644}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3652, file: !3646, line: 133, baseType: !3701, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!3644, !3666, !281}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3652, file: !3646, line: 135, baseType: !3705, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!335, !3666, !281, !281, !7, !7, !3708}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3646, line: 43, size: 640, elements: !3710)
!3710 = !{!3711, !3712, !3713}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3709, file: !3646, line: 44, baseType: !3644, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3709, file: !3646, line: 45, baseType: !7, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3709, file: !3646, line: 46, baseType: !3714, size: 512, offset: 128)
!3714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 512, elements: !1396)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3652, file: !3646, line: 140, baseType: !3697, size: 64, offset: 832)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3652, file: !3646, line: 143, baseType: !3693, size: 64, offset: 896)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3652, file: !3646, line: 145, baseType: !3655, size: 64, offset: 960)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3652, file: !3646, line: 146, baseType: !3719, size: 64, offset: 1024)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!335, !3666, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3646, line: 29, size: 128, elements: !3724)
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3723, file: !3646, line: 30, baseType: !7, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3723, file: !3646, line: 31, baseType: !7, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3723, file: !3646, line: 32, baseType: !3666, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3652, file: !3646, line: 148, baseType: !3729, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!335, !3666, !300}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3645, file: !3646, line: 20, baseType: !300, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !301, file: !67, line: 534, baseType: !583, size: 32, offset: 4992)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !301, file: !67, line: 535, baseType: !490, size: 32, offset: 5024)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !301, file: !67, line: 537, baseType: !317, offset: 5056)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !301, file: !67, line: 538, baseType: !271, size: 128, offset: 5056)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !301, file: !67, line: 540, baseType: !3738, size: 64, offset: 5184)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3740, line: 54, size: 960, elements: !3741)
!3740 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3752, !3756, !3757, !3758, !3759, !3763, !3767, !3768}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3739, file: !3740, line: 55, baseType: !281, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3739, file: !3740, line: 56, baseType: !177, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3739, file: !3740, line: 58, baseType: !403, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3739, file: !3740, line: 59, baseType: !403, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3739, file: !3740, line: 60, baseType: !310, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3739, file: !3740, line: 62, baseType: !3433, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3739, file: !3740, line: 63, baseType: !3749, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!351, !300, !3440}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3739, file: !3740, line: 65, baseType: !3753, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3738}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3739, file: !3740, line: 66, baseType: !3442, size: 64, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3739, file: !3740, line: 68, baseType: !3451, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3739, file: !3740, line: 70, baseType: !3237, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3739, file: !3740, line: 71, baseType: !3760, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!2177, !300}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3739, file: !3740, line: 73, baseType: !3764, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !300, !3269, !3270}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3739, file: !3740, line: 75, baseType: !3446, size: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3739, file: !3740, line: 77, baseType: !3769, size: 64, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !295, line: 111, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !301, file: !67, line: 541, baseType: !403, size: 64, offset: 5248)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !301, file: !67, line: 543, baseType: !3442, size: 64, offset: 5312)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !301, file: !67, line: 544, baseType: !3774, size: 64, offset: 5376)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !301, file: !67, line: 545, baseType: !3777, size: 64, offset: 5440)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !301, file: !67, line: 547, baseType: !283, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !301, file: !67, line: 548, baseType: !283, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !301, file: !67, line: 549, baseType: !283, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !301, file: !67, line: 550, baseType: !283, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !294, file: !295, line: 86, baseType: !403, size: 64, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !294, file: !295, line: 87, baseType: !403, size: 64, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !294, file: !295, line: 88, baseType: !403, size: 64, offset: 320)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !294, file: !295, line: 90, baseType: !3787, size: 64, offset: 384)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!335, !300, !3478}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !294, file: !295, line: 91, baseType: !3433, size: 64, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !294, file: !295, line: 92, baseType: !3451, size: 64, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !294, file: !295, line: 93, baseType: !3442, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !294, file: !295, line: 94, baseType: !3451, size: 64, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !294, file: !295, line: 95, baseType: !3442, size: 64, offset: 704)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !294, file: !295, line: 97, baseType: !3451, size: 64, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !294, file: !295, line: 98, baseType: !3451, size: 64, offset: 832)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !294, file: !295, line: 100, baseType: !3798, size: 64, offset: 896)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!335, !300, !3495}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !294, file: !295, line: 101, baseType: !3451, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !294, file: !295, line: 103, baseType: !3451, size: 64, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !294, file: !295, line: 105, baseType: !3451, size: 64, offset: 1088)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !294, file: !295, line: 107, baseType: !3446, size: 64, offset: 1152)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !294, file: !295, line: 109, baseType: !3806, size: 64, offset: 1216)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3808)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !295, line: 109, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !294, file: !295, line: 111, baseType: !3769, size: 64, offset: 1280)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !294, file: !295, line: 112, baseType: !276, offset: 1344)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !294, file: !295, line: 114, baseType: !283, size: 8, offset: 1344)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !289, file: !88, line: 99, baseType: !177, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !289, file: !88, line: 100, baseType: !281, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !289, file: !88, line: 102, baseType: !283, size: 8, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !289, file: !88, line: 103, baseType: !87, size: 32, offset: 288)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !289, file: !88, line: 105, baseType: !3817, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !229, line: 262, size: 1600, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3827}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3819, file: !229, line: 263, baseType: !2750, size: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3819, file: !229, line: 264, baseType: !2750, size: 256, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3819, file: !229, line: 265, baseType: !3824, size: 1024, offset: 512)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1024, elements: !3825)
!3825 = !{!3826}
!3826 = !DISubrange(count: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3819, file: !229, line: 266, baseType: !2177, size: 64, offset: 1536)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !289, file: !88, line: 106, baseType: !3829, size: 64, offset: 384)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !229, line: 210, size: 256, elements: !3832)
!3832 = !{!3833, !3837, !3838, !3839}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3831, file: !229, line: 211, baseType: !3834, size: 72)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 72, elements: !3835)
!3835 = !{!3836}
!3836 = !DISubrange(count: 9)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3831, file: !229, line: 212, baseType: !243, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3831, file: !229, line: 213, baseType: !180, size: 32, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3831, file: !229, line: 214, baseType: !180, size: 32, offset: 224)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !289, file: !88, line: 108, baseType: !3451, size: 64, offset: 448)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !289, file: !88, line: 109, baseType: !3442, size: 64, offset: 512)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !289, file: !88, line: 110, baseType: !3451, size: 64, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !289, file: !88, line: 111, baseType: !3442, size: 64, offset: 640)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !289, file: !88, line: 112, baseType: !3798, size: 64, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !289, file: !88, line: 113, baseType: !3451, size: 64, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !289, file: !88, line: 114, baseType: !403, size: 64, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !289, file: !88, line: 115, baseType: !403, size: 64, offset: 896)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !289, file: !88, line: 117, baseType: !3446, size: 64, offset: 960)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !289, file: !88, line: 118, baseType: !3442, size: 64, offset: 1024)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !289, file: !88, line: 120, baseType: !3851, size: 64, offset: 1088)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 120, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !278, file: !94, line: 1207, baseType: !3854, size: 128, offset: 1472)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !94, line: 1204, size: 128, elements: !3855)
!3855 = !{!3856, !3857}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3854, file: !94, line: 1205, baseType: !317)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3854, file: !94, line: 1206, baseType: !271, size: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !278, file: !94, line: 1209, baseType: !3859, size: 64, offset: 1600)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!335, !3862, !287}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_device", file: !94, line: 1219, size: 6144, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871, !4078, !4079}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !3863, file: !94, line: 1221, baseType: !232, size: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dev_instance", scope: !3863, file: !94, line: 1224, baseType: !232, size: 128, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !3863, file: !94, line: 1225, baseType: !926, size: 16, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !3863, file: !94, line: 1226, baseType: !926, size: 16, offset: 272)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3863, file: !94, line: 1228, baseType: !301, size: 5568, offset: 320)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3863, file: !94, line: 1229, baseType: !351, size: 64, offset: 5888)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !3863, file: !94, line: 1231, baseType: !3872, size: 64, offset: 5952)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel", file: !94, line: 773, size: 6592, elements: !3874)
!3874 = !{!3875, !3876, !3877, !3878, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3968, !3969, !4022, !4023, !4024, !4025, !4026, !4047, !4048, !4049, !4053, !4054, !4055, !4056, !4057, !4058, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "listentry", scope: !3873, file: !94, line: 774, baseType: !271, size: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "device_obj", scope: !3873, file: !94, line: 776, baseType: !3862, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3873, file: !94, line: 778, baseType: !93, size: 32, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "offermsg", scope: !3873, file: !94, line: 780, baseType: !3879, size: 1568, offset: 224)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_offer_channel", file: !94, line: 502, size: 1568, elements: !3880)
!3880 = !{!3881, !3886, !3915, !3916, !3917, !3918, !3919, !3920, !3921}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3879, file: !94, line: 503, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_message_header", file: !94, line: 484, size: 64, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "msgtype", scope: !3882, file: !94, line: 485, baseType: !100, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3882, file: !94, line: 486, baseType: !490, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "offer", scope: !3879, file: !94, line: 504, baseType: !3887, size: 1408, offset: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_offer", file: !94, line: 266, size: 1408, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894, !3895, !3913, !3914}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "if_type", scope: !3887, file: !94, line: 267, baseType: !232, size: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "if_instance", scope: !3887, file: !94, line: 268, baseType: !232, size: 128, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3887, file: !94, line: 273, baseType: !494, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !3887, file: !94, line: 274, baseType: !494, size: 64, offset: 320)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "chn_flags", scope: !3887, file: !94, line: 276, baseType: !926, size: 16, offset: 384)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_megabytes", scope: !3887, file: !94, line: 277, baseType: !926, size: 16, offset: 400)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3887, file: !94, line: 296, baseType: !3896, size: 960, offset: 416)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3887, file: !94, line: 279, size: 960, elements: !3897)
!3897 = !{!3898, !3905}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !3896, file: !94, line: 283, baseType: !3899, size: 960)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3896, file: !94, line: 281, size: 960, elements: !3900)
!3900 = !{!3901}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "user_def", scope: !3899, file: !94, line: 282, baseType: !3902, size: 960)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 960, elements: !3903)
!3903 = !{!3904}
!3904 = !DISubrange(count: 120)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3896, file: !94, line: 295, baseType: !3906, size: 960)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3896, file: !94, line: 292, size: 960, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mode", scope: !3906, file: !94, line: 293, baseType: !490, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "user_def", scope: !3906, file: !94, line: 294, baseType: !3910, size: 928, offset: 32)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 928, elements: !3911)
!3911 = !{!3912}
!3912 = !DISubrange(count: 116)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "sub_channel_index", scope: !3887, file: !94, line: 303, baseType: !926, size: 16, offset: 1376)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !3887, file: !94, line: 304, baseType: !926, size: 16, offset: 1392)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !3879, file: !94, line: 505, baseType: !490, size: 32, offset: 1472)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "monitorid", scope: !3879, file: !94, line: 506, baseType: !1418, size: 8, offset: 1504)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_allocated", scope: !3879, file: !94, line: 510, baseType: !1418, size: 1, offset: 1512, flags: DIFlagBitField, extraData: i64 1512)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3879, file: !94, line: 511, baseType: !1418, size: 7, offset: 1513, flags: DIFlagBitField, extraData: i64 1512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "is_dedicated_interrupt", scope: !3879, file: !94, line: 523, baseType: !926, size: 1, offset: 1520, flags: DIFlagBitField, extraData: i64 1512)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3879, file: !94, line: 524, baseType: !926, size: 15, offset: 1521, flags: DIFlagBitField, extraData: i64 1512)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !3879, file: !94, line: 525, baseType: !490, size: 32, offset: 1536)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_grp", scope: !3873, file: !94, line: 785, baseType: !1418, size: 8, offset: 1792)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_bit", scope: !3873, file: !94, line: 786, baseType: !1418, size: 8, offset: 1800)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "rescind", scope: !3873, file: !94, line: 788, baseType: !283, size: 8, offset: 1808)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "rescind_event", scope: !3873, file: !94, line: 789, baseType: !253, size: 192, offset: 1856)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_gpadlhandle", scope: !3873, file: !94, line: 791, baseType: !490, size: 32, offset: 2048)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_page", scope: !3873, file: !94, line: 794, baseType: !789, size: 64, offset: 2112)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_pagecount", scope: !3873, file: !94, line: 795, baseType: !490, size: 32, offset: 2176)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_send_offset", scope: !3873, file: !94, line: 796, baseType: !490, size: 32, offset: 2208)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "outbound", scope: !3873, file: !94, line: 797, baseType: !3931, size: 448, offset: 2240)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer_info", file: !94, line: 171, size: 448, elements: !3932)
!3932 = !{!3933, !3956, !3957, !3964, !3965, !3966, !3967}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer", scope: !3931, file: !94, line: 172, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer", file: !94, line: 113, size: 32768, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3950, !3954}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "write_index", scope: !3935, file: !94, line: 115, baseType: !490, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "read_index", scope: !3935, file: !94, line: 118, baseType: !490, size: 32, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_mask", scope: !3935, file: !94, line: 120, baseType: !490, size: 32, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "pending_send_sz", scope: !3935, file: !94, line: 148, baseType: !490, size: 32, offset: 96)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3935, file: !94, line: 149, baseType: !2285, size: 384, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "feature_bits", scope: !3935, file: !94, line: 155, baseType: !3943, size: 32, offset: 512)
!3943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !94, line: 150, size: 32, elements: !3944)
!3944 = !{!3945, !3949}
!3945 = !DIDerivedType(tag: DW_TAG_member, scope: !3943, file: !94, line: 151, baseType: !3946, size: 32)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3943, file: !94, line: 151, size: 32, elements: !3947)
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "feat_pending_send_sz", scope: !3946, file: !94, line: 152, baseType: !490, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3943, file: !94, line: 154, baseType: !490, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !3935, file: !94, line: 158, baseType: !3951, size: 32224, offset: 544)
!3951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 32224, elements: !3952)
!3952 = !{!3953}
!3953 = !DISubrange(count: 4028)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3935, file: !94, line: 164, baseType: !3955, offset: 32768)
!3955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, elements: !2381)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size", scope: !3931, file: !94, line: 173, baseType: !490, size: 32, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size_div10_reciprocal", scope: !3931, file: !94, line: 174, baseType: !3958, size: 64, offset: 96)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reciprocal_value", file: !3959, line: 23, size: 64, elements: !3960)
!3959 = !DIFile(filename: "./include/linux/reciprocal_div.h", directory: "/home/lizy2001/genbc/linux")
!3960 = !{!3961, !3962, !3963}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !3958, file: !3959, line: 24, baseType: !490, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "sh1", scope: !3958, file: !3959, line: 25, baseType: !1418, size: 8, offset: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "sh2", scope: !3958, file: !3959, line: 25, baseType: !1418, size: 8, offset: 40)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "ring_lock", scope: !3931, file: !94, line: 175, baseType: !317, offset: 160)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "ring_datasize", scope: !3931, file: !94, line: 177, baseType: !490, size: 32, offset: 160)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "priv_read_index", scope: !3931, file: !94, line: 178, baseType: !490, size: 32, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer_mutex", scope: !3931, file: !94, line: 183, baseType: !1239, size: 192, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "inbound", scope: !3873, file: !94, line: 798, baseType: !3931, size: 448, offset: 2688)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "close_msg", scope: !3873, file: !94, line: 800, baseType: !3970, size: 832, offset: 3136)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_close_msg", file: !94, line: 733, size: 832, elements: !3971)
!3971 = !{!3972, !4017}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3970, file: !94, line: 734, baseType: !3973, size: 704)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_msginfo", file: !94, line: 707, size: 704, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978, !3979, !4014, !4015}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "msglistentry", scope: !3973, file: !94, line: 709, baseType: !271, size: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "submsglist", scope: !3973, file: !94, line: 712, baseType: !271, size: 128, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "waitevent", scope: !3973, file: !94, line: 715, baseType: !253, size: 192, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_channel", scope: !3973, file: !94, line: 716, baseType: !3872, size: 64, offset: 448)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3973, file: !94, line: 723, baseType: !3980, size: 160, offset: 512)
!3980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3973, file: !94, line: 717, size: 160, elements: !3981)
!3981 = !{!3982, !3987, !3994, !3999, !4006}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !3980, file: !94, line: 718, baseType: !3983, size: 72)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_version_supported", file: !94, line: 496, size: 72, elements: !3984)
!3984 = !{!3985, !3986}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3983, file: !94, line: 497, baseType: !3882, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !3983, file: !94, line: 498, baseType: !1418, size: 8, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "open_result", scope: !3980, file: !94, line: 719, baseType: !3988, size: 160)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_open_result", file: !94, line: 584, size: 160, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3988, file: !94, line: 585, baseType: !3882, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !3988, file: !94, line: 586, baseType: !490, size: 32, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "openid", scope: !3988, file: !94, line: 587, baseType: !490, size: 32, offset: 96)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3988, file: !94, line: 588, baseType: !490, size: 32, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl_torndown", scope: !3980, file: !94, line: 720, baseType: !3995, size: 96)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_gpadl_torndown", file: !94, line: 638, size: 96, elements: !3996)
!3996 = !{!3997, !3998}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3995, file: !94, line: 639, baseType: !3882, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl", scope: !3995, file: !94, line: 640, baseType: !490, size: 32, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl_created", scope: !3980, file: !94, line: 721, baseType: !4000, size: 160)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_gpadl_created", file: !94, line: 625, size: 160, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4000, file: !94, line: 626, baseType: !3882, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !4000, file: !94, line: 627, baseType: !490, size: 32, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl", scope: !4000, file: !94, line: 628, baseType: !490, size: 32, offset: 96)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "creation_status", scope: !4000, file: !94, line: 629, baseType: !490, size: 32, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "version_response", scope: !3980, file: !94, line: 722, baseType: !4007, size: 128)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_version_response", file: !94, line: 678, size: 128, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4013}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4007, file: !94, line: 679, baseType: !3882, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !4007, file: !94, line: 680, baseType: !1418, size: 8, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "connection_state", scope: !4007, file: !94, line: 682, baseType: !1418, size: 8, offset: 72)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4007, file: !94, line: 683, baseType: !926, size: 16, offset: 80)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "msg_conn_id", scope: !4007, file: !94, line: 693, baseType: !490, size: 32, offset: 96)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "msgsize", scope: !3973, file: !94, line: 725, baseType: !490, size: 32, offset: 672)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3973, file: !94, line: 730, baseType: !4016, offset: 704)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, elements: !2381)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3970, file: !94, line: 735, baseType: !4018, size: 96, offset: 704)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_close_channel", file: !94, line: 592, size: 96, elements: !4019)
!4019 = !{!4020, !4021}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4018, file: !94, line: 593, baseType: !3882, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !4018, file: !94, line: 594, baseType: !490, size: 32, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3873, file: !94, line: 803, baseType: !494, size: 64, offset: 3968)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "sig_events", scope: !3873, file: !94, line: 804, baseType: !494, size: 64, offset: 4032)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "intr_out_empty", scope: !3873, file: !94, line: 810, baseType: !494, size: 64, offset: 4096)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_flag", scope: !3873, file: !94, line: 817, baseType: !283, size: 8, offset: 4160)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "callback_event", scope: !3873, file: !94, line: 820, baseType: !4027, size: 320, offset: 4224)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !4028, line: 609, size: 320, elements: !4029)
!4028 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4029 = !{!4030, !4032, !4033, !4034, !4035, !4046}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4027, file: !4028, line: 611, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4027, file: !4028, line: 612, baseType: !175, size: 64, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4027, file: !4028, line: 613, baseType: !815, size: 32, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4027, file: !4028, line: 614, baseType: !283, size: 8, offset: 160)
!4035 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !4028, line: 615, baseType: !4036, size: 64, offset: 192)
!4036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4027, file: !4028, line: 615, size: 64, elements: !4037)
!4037 = !{!4038, !4042}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4036, file: !4028, line: 616, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !175}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4036, file: !4028, line: 617, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !4031}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4027, file: !4028, line: 619, baseType: !175, size: 64, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "onchannel_callback", scope: !3873, file: !94, line: 821, baseType: !540, size: 64, offset: 4544)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "channel_callback_context", scope: !3873, file: !94, line: 822, baseType: !176, size: 64, offset: 4608)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "change_target_cpu_callback", scope: !3873, file: !94, line: 824, baseType: !4050, size: 64, offset: 4672)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !3872, !490, !490}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "sched_lock", scope: !3873, file: !94, line: 831, baseType: !317, offset: 4736)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "callback_mode", scope: !3873, file: !94, line: 848, baseType: !127, size: 32, offset: 4736)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "is_dedicated_interrupt", scope: !3873, file: !94, line: 850, baseType: !283, size: 8, offset: 4768)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "sig_event", scope: !3873, file: !94, line: 851, baseType: !494, size: 64, offset: 4800)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "target_cpu", scope: !3873, file: !94, line: 862, baseType: !490, size: 32, offset: 4864)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "sc_creation_callback", scope: !3873, file: !94, line: 883, baseType: !4059, size: 64, offset: 4928)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !3872}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "chn_rescind_callback", scope: !3873, file: !94, line: 889, baseType: !4059, size: 64, offset: 4992)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "sc_list", scope: !3873, file: !94, line: 894, baseType: !271, size: 128, offset: 5056)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "primary_channel", scope: !3873, file: !94, line: 899, baseType: !3872, size: 64, offset: 5184)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "per_channel_state", scope: !3873, file: !94, line: 903, baseType: !176, size: 64, offset: 5248)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3873, file: !94, line: 909, baseType: !440, size: 128, align: 64, offset: 5312)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3873, file: !94, line: 914, baseType: !304, size: 512, offset: 5440)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !3873, file: !94, line: 940, baseType: !283, size: 8, offset: 5952)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "probe_done", scope: !3873, file: !94, line: 942, baseType: !283, size: 8, offset: 5960)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !3873, file: !94, line: 949, baseType: !926, size: 16, offset: 5968)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "add_channel_work", scope: !3873, file: !94, line: 957, baseType: !2007, size: 256, offset: 6016)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "intr_in_full", scope: !3873, file: !94, line: 963, baseType: !494, size: 64, offset: 6272)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_total", scope: !3873, file: !94, line: 969, baseType: !494, size: 64, offset: 6336)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_first", scope: !3873, file: !94, line: 975, baseType: !494, size: 64, offset: 6400)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_state", scope: !3873, file: !94, line: 978, baseType: !283, size: 8, offset: 6464)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_interrupt_delay", scope: !3873, file: !94, line: 988, baseType: !490, size: 32, offset: 6496)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_message_delay", scope: !3873, file: !94, line: 989, baseType: !490, size: 32, offset: 6528)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "channels_kset", scope: !3863, file: !94, line: 1232, baseType: !312, size: 64, offset: 6016)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3863, file: !94, line: 1235, baseType: !457, size: 64, offset: 6080)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !278, file: !94, line: 1210, baseType: !4081, size: 64, offset: 1664)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!335, !3862}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !278, file: !94, line: 1211, baseType: !4085, size: 64, offset: 1728)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !3862}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !278, file: !94, line: 1213, baseType: !4081, size: 64, offset: 1792)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !278, file: !94, line: 1214, baseType: !4081, size: 64, offset: 1856)
!4090 = !{!"rsp"}
!4091 = !{i32 7, !"Dwarf Version", i32 4}
!4092 = !{i32 2, !"Debug Info Version", i32 3}
!4093 = !{i32 1, !"wchar_size", i32 2}
!4094 = !{i32 1, !"Code Model", i32 2}
!4095 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4096 = distinct !DISubprogram(name: "hv_kbd_exit", scope: !3, file: !3, line: 433, type: !222, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4097 = !DILocation(line: 435, column: 2, scope: !4096)
!4098 = !DILocation(line: 436, column: 1, scope: !4096)
!4099 = distinct !DISubprogram(name: "hv_kbd_init", scope: !3, file: !3, line: 428, type: !4100, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!335}
!4102 = !DILocation(line: 430, column: 9, scope: !4099)
!4103 = !DILocation(line: 430, column: 2, scope: !4099)
!4104 = distinct !DISubprogram(name: "hv_kbd_probe", scope: !3, file: !3, line: 314, type: !3860, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4105 = !DILocalVariable(name: "lock", arg: 1, scope: !4106, file: !4107, line: 327, type: !1130)
!4106 = distinct !DISubprogram(name: "spinlock_check", scope: !4107, file: !4107, line: 327, type: !4108, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4107 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!4110, !1130}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!4111 = !DILocation(line: 327, column: 67, scope: !4106, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 330, column: 2, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 330, column: 2)
!4114 = !DILocalVariable(name: "hv_dev", arg: 1, scope: !4104, file: !3, line: 314, type: !3862)
!4115 = !DILocation(line: 314, column: 43, scope: !4104)
!4116 = !DILocalVariable(name: "dev_id", arg: 2, scope: !4104, file: !3, line: 315, type: !287)
!4117 = !DILocation(line: 315, column: 37, scope: !4104)
!4118 = !DILocalVariable(name: "kbd_dev", scope: !4104, file: !3, line: 317, type: !4119)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_kbd_dev", file: !3, line: 89, size: 512, elements: !4121)
!4121 = !{!4122, !4123, !4188, !4196, !4201, !4202, !4203}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "hv_dev", scope: !4120, file: !3, line: 90, baseType: !3862, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "hv_serio", scope: !4120, file: !3, line: 91, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !4126, line: 20, size: 8384, elements: !4127)
!4126 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4140, !4141, !4145, !4149, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4183, !4184, !4185, !4186}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !4125, file: !4126, line: 21, baseType: !176, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4125, file: !4126, line: 23, baseType: !2750, size: 256, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4125, file: !4126, line: 24, baseType: !2750, size: 256, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !4125, file: !4126, line: 25, baseType: !3824, size: 1024, offset: 576)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4125, file: !4126, line: 27, baseType: !283, size: 8, offset: 1600)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4125, file: !4126, line: 29, baseType: !4134, size: 32, offset: 1608)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !229, line: 236, size: 32, elements: !4135)
!4135 = !{!4136, !4137, !4138, !4139}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4134, file: !229, line: 237, baseType: !238, size: 8)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4134, file: !229, line: 238, baseType: !238, size: 8, offset: 8)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4134, file: !229, line: 239, baseType: !238, size: 8, offset: 16)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !4134, file: !229, line: 240, baseType: !238, size: 8, offset: 24)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4125, file: !4126, line: 32, baseType: !317, offset: 1640)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4125, file: !4126, line: 34, baseType: !4142, size: 64, offset: 1664)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!335, !4124, !239}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4125, file: !4126, line: 35, baseType: !4146, size: 64, offset: 1728)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!335, !4124}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4125, file: !4126, line: 36, baseType: !4150, size: 64, offset: 1792)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !4124}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4125, file: !4126, line: 37, baseType: !4146, size: 64, offset: 1856)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4125, file: !4126, line: 38, baseType: !4150, size: 64, offset: 1920)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4125, file: !4126, line: 40, baseType: !4124, size: 64, offset: 1984)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !4125, file: !4126, line: 42, baseType: !271, size: 128, offset: 2048)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4125, file: !4126, line: 43, baseType: !271, size: 128, offset: 2176)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4125, file: !4126, line: 45, baseType: !7, size: 32, offset: 2304)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4125, file: !4126, line: 51, baseType: !4160, size: 64, offset: 2368)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !4126, line: 67, size: 1792, elements: !4162)
!4162 = !{!4163, !4164, !4167, !4168, !4169, !4174, !4178, !4179, !4180, !4181, !4182}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4161, file: !4126, line: 68, baseType: !281, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4161, file: !4126, line: 70, baseType: !4165, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4134)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4161, file: !4126, line: 71, baseType: !283, size: 8, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4161, file: !4126, line: 73, baseType: !4150, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !4161, file: !4126, line: 74, baseType: !4170, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!4173, !4124, !239, !7}
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !133, line: 17, baseType: !132)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4161, file: !4126, line: 75, baseType: !4175, size: 64, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!335, !4124, !4160}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !4161, file: !4126, line: 76, baseType: !4146, size: 64, offset: 384)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !4161, file: !4126, line: 77, baseType: !4146, size: 64, offset: 448)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4161, file: !4126, line: 78, baseType: !4150, size: 64, offset: 512)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4161, file: !4126, line: 79, baseType: !4150, size: 64, offset: 576)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4161, file: !4126, line: 81, baseType: !289, size: 1152, offset: 640)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !4125, file: !4126, line: 53, baseType: !1239, size: 192, offset: 2432)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4125, file: !4126, line: 55, baseType: !301, size: 5568, offset: 2624)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4125, file: !4126, line: 57, baseType: !271, size: 128, offset: 8192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !4125, file: !4126, line: 63, baseType: !4187, size: 64, offset: 8320)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_req", scope: !4120, file: !3, line: 92, baseType: !4189, size: 64, offset: 128)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "synth_kbd_protocol_request", file: !3, line: 53, size: 64, elements: !4190)
!4190 = !{!4191, !4192}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4189, file: !3, line: 54, baseType: !188, size: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "version_requested", scope: !4189, file: !3, line: 55, baseType: !4193, size: 32, offset: 32)
!4193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "synth_kbd_version", file: !3, line: 46, size: 32, elements: !4194)
!4194 = !{!4195}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4193, file: !3, line: 47, baseType: !182, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_resp", scope: !4120, file: !3, line: 93, baseType: !4197, size: 64, offset: 192)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "synth_kbd_protocol_response", file: !3, line: 59, size: 64, elements: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4197, file: !3, line: 60, baseType: !188, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "proto_status", scope: !4197, file: !3, line: 61, baseType: !182, size: 32, offset: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !4120, file: !3, line: 95, baseType: !253, size: 192, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4120, file: !3, line: 96, baseType: !317, offset: 448)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !4120, file: !3, line: 97, baseType: !283, size: 8, offset: 448)
!4204 = !DILocation(line: 317, column: 21, scope: !4104)
!4205 = !DILocalVariable(name: "hv_serio", scope: !4104, file: !3, line: 318, type: !4124)
!4206 = !DILocation(line: 318, column: 16, scope: !4104)
!4207 = !DILocalVariable(name: "error", scope: !4104, file: !3, line: 319, type: !335)
!4208 = !DILocation(line: 319, column: 6, scope: !4104)
!4209 = !DILocation(line: 321, column: 12, scope: !4104)
!4210 = !DILocation(line: 321, column: 10, scope: !4104)
!4211 = !DILocation(line: 322, column: 13, scope: !4104)
!4212 = !DILocation(line: 322, column: 11, scope: !4104)
!4213 = !DILocation(line: 323, column: 7, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 323, column: 6)
!4215 = !DILocation(line: 323, column: 15, scope: !4214)
!4216 = !DILocation(line: 323, column: 19, scope: !4214)
!4217 = !DILocation(line: 323, column: 6, scope: !4104)
!4218 = !DILocation(line: 324, column: 9, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 323, column: 29)
!4220 = !DILocation(line: 325, column: 3, scope: !4219)
!4221 = !DILocation(line: 328, column: 20, scope: !4104)
!4222 = !DILocation(line: 328, column: 2, scope: !4104)
!4223 = !DILocation(line: 328, column: 11, scope: !4104)
!4224 = !DILocation(line: 328, column: 18, scope: !4104)
!4225 = !DILocation(line: 329, column: 22, scope: !4104)
!4226 = !DILocation(line: 329, column: 2, scope: !4104)
!4227 = !DILocation(line: 329, column: 11, scope: !4104)
!4228 = !DILocation(line: 329, column: 20, scope: !4104)
!4229 = !DILocation(line: 330, column: 2, scope: !4104)
!4230 = !DILocation(line: 330, column: 2, scope: !4113)
!4231 = !DILocation(line: 329, column: 10, scope: !4106, inlinedAt: !4112)
!4232 = !DILocation(line: 329, column: 16, scope: !4106, inlinedAt: !4112)
!4233 = !DILocation(line: 331, column: 2, scope: !4104)
!4234 = !DILocation(line: 332, column: 17, scope: !4104)
!4235 = !DILocation(line: 332, column: 25, scope: !4104)
!4236 = !DILocation(line: 332, column: 2, scope: !4104)
!4237 = !DILocation(line: 334, column: 27, scope: !4104)
!4238 = !DILocation(line: 334, column: 35, scope: !4104)
!4239 = !DILocation(line: 334, column: 2, scope: !4104)
!4240 = !DILocation(line: 334, column: 12, scope: !4104)
!4241 = !DILocation(line: 334, column: 16, scope: !4104)
!4242 = !DILocation(line: 334, column: 24, scope: !4104)
!4243 = !DILocation(line: 335, column: 2, scope: !4104)
!4244 = !DILocation(line: 335, column: 12, scope: !4104)
!4245 = !DILocation(line: 335, column: 15, scope: !4104)
!4246 = !DILocation(line: 335, column: 20, scope: !4104)
!4247 = !DILocation(line: 336, column: 24, scope: !4104)
!4248 = !DILocation(line: 336, column: 2, scope: !4104)
!4249 = !DILocation(line: 336, column: 12, scope: !4104)
!4250 = !DILocation(line: 336, column: 22, scope: !4104)
!4251 = !DILocation(line: 337, column: 10, scope: !4104)
!4252 = !DILocation(line: 337, column: 20, scope: !4104)
!4253 = !DILocation(line: 337, column: 36, scope: !4104)
!4254 = !DILocation(line: 337, column: 44, scope: !4104)
!4255 = !DILocation(line: 337, column: 26, scope: !4104)
!4256 = !DILocation(line: 337, column: 2, scope: !4104)
!4257 = !DILocation(line: 339, column: 10, scope: !4104)
!4258 = !DILocation(line: 339, column: 20, scope: !4104)
!4259 = !DILocation(line: 339, column: 36, scope: !4104)
!4260 = !DILocation(line: 339, column: 44, scope: !4104)
!4261 = !DILocation(line: 339, column: 26, scope: !4104)
!4262 = !DILocation(line: 339, column: 2, scope: !4104)
!4263 = !DILocation(line: 342, column: 2, scope: !4104)
!4264 = !DILocation(line: 342, column: 12, scope: !4104)
!4265 = !DILocation(line: 342, column: 18, scope: !4104)
!4266 = !DILocation(line: 343, column: 2, scope: !4104)
!4267 = !DILocation(line: 343, column: 12, scope: !4104)
!4268 = !DILocation(line: 343, column: 17, scope: !4104)
!4269 = !DILocation(line: 345, column: 21, scope: !4104)
!4270 = !DILocation(line: 345, column: 29, scope: !4104)
!4271 = !DILocation(line: 350, column: 7, scope: !4104)
!4272 = !DILocation(line: 345, column: 10, scope: !4104)
!4273 = !DILocation(line: 345, column: 8, scope: !4104)
!4274 = !DILocation(line: 351, column: 6, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 351, column: 6)
!4276 = !DILocation(line: 351, column: 6, scope: !4104)
!4277 = !DILocation(line: 352, column: 3, scope: !4275)
!4278 = !DILocation(line: 354, column: 32, scope: !4104)
!4279 = !DILocation(line: 354, column: 10, scope: !4104)
!4280 = !DILocation(line: 354, column: 8, scope: !4104)
!4281 = !DILocation(line: 355, column: 6, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 355, column: 6)
!4283 = !DILocation(line: 355, column: 6, scope: !4104)
!4284 = !DILocation(line: 356, column: 3, scope: !4282)
!4285 = !DILocation(line: 358, column: 2, scope: !4104)
!4286 = !DILocation(line: 360, column: 22, scope: !4104)
!4287 = !DILocation(line: 360, column: 30, scope: !4104)
!4288 = !DILocation(line: 360, column: 2, scope: !4104)
!4289 = !DILocation(line: 362, column: 2, scope: !4104)
!4290 = !DILabel(scope: !4104, name: "err_close_vmbus", file: !3, line: 364)
!4291 = !DILocation(line: 364, column: 1, scope: !4104)
!4292 = !DILocation(line: 365, column: 14, scope: !4104)
!4293 = !DILocation(line: 365, column: 22, scope: !4104)
!4294 = !DILocation(line: 365, column: 2, scope: !4104)
!4295 = !DILabel(scope: !4104, name: "err_free_mem", file: !3, line: 366)
!4296 = !DILocation(line: 366, column: 1, scope: !4104)
!4297 = !DILocation(line: 367, column: 8, scope: !4104)
!4298 = !DILocation(line: 367, column: 2, scope: !4104)
!4299 = !DILocation(line: 368, column: 8, scope: !4104)
!4300 = !DILocation(line: 368, column: 2, scope: !4104)
!4301 = !DILocation(line: 369, column: 9, scope: !4104)
!4302 = !DILocation(line: 369, column: 2, scope: !4104)
!4303 = !DILocation(line: 370, column: 1, scope: !4104)
!4304 = distinct !DISubprogram(name: "hv_kbd_remove", scope: !3, file: !3, line: 372, type: !4082, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4305 = !DILocalVariable(name: "hv_dev", arg: 1, scope: !4304, file: !3, line: 372, type: !3862)
!4306 = !DILocation(line: 372, column: 44, scope: !4304)
!4307 = !DILocalVariable(name: "kbd_dev", scope: !4304, file: !3, line: 374, type: !4119)
!4308 = !DILocation(line: 374, column: 21, scope: !4304)
!4309 = !DILocation(line: 374, column: 46, scope: !4304)
!4310 = !DILocation(line: 374, column: 31, scope: !4304)
!4311 = !DILocation(line: 376, column: 24, scope: !4304)
!4312 = !DILocation(line: 376, column: 33, scope: !4304)
!4313 = !DILocation(line: 376, column: 2, scope: !4304)
!4314 = !DILocation(line: 377, column: 14, scope: !4304)
!4315 = !DILocation(line: 377, column: 22, scope: !4304)
!4316 = !DILocation(line: 377, column: 2, scope: !4304)
!4317 = !DILocation(line: 378, column: 8, scope: !4304)
!4318 = !DILocation(line: 378, column: 2, scope: !4304)
!4319 = !DILocation(line: 380, column: 17, scope: !4304)
!4320 = !DILocation(line: 380, column: 2, scope: !4304)
!4321 = !DILocation(line: 382, column: 2, scope: !4304)
!4322 = distinct !DISubprogram(name: "hv_kbd_suspend", scope: !3, file: !3, line: 385, type: !4082, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4323 = !DILocalVariable(name: "hv_dev", arg: 1, scope: !4322, file: !3, line: 385, type: !3862)
!4324 = !DILocation(line: 385, column: 45, scope: !4322)
!4325 = !DILocation(line: 387, column: 14, scope: !4322)
!4326 = !DILocation(line: 387, column: 22, scope: !4322)
!4327 = !DILocation(line: 387, column: 2, scope: !4322)
!4328 = !DILocation(line: 389, column: 2, scope: !4322)
!4329 = distinct !DISubprogram(name: "hv_kbd_resume", scope: !3, file: !3, line: 392, type: !4082, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4330 = !DILocalVariable(name: "hv_dev", arg: 1, scope: !4329, file: !3, line: 392, type: !3862)
!4331 = !DILocation(line: 392, column: 44, scope: !4329)
!4332 = !DILocalVariable(name: "ret", scope: !4329, file: !3, line: 394, type: !335)
!4333 = !DILocation(line: 394, column: 6, scope: !4329)
!4334 = !DILocation(line: 396, column: 19, scope: !4329)
!4335 = !DILocation(line: 396, column: 27, scope: !4329)
!4336 = !DILocation(line: 401, column: 5, scope: !4329)
!4337 = !DILocation(line: 396, column: 8, scope: !4329)
!4338 = !DILocation(line: 396, column: 6, scope: !4329)
!4339 = !DILocation(line: 402, column: 6, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 402, column: 6)
!4341 = !DILocation(line: 402, column: 10, scope: !4340)
!4342 = !DILocation(line: 402, column: 6, scope: !4329)
!4343 = !DILocation(line: 403, column: 31, scope: !4340)
!4344 = !DILocation(line: 403, column: 9, scope: !4340)
!4345 = !DILocation(line: 403, column: 7, scope: !4340)
!4346 = !DILocation(line: 403, column: 3, scope: !4340)
!4347 = !DILocation(line: 405, column: 9, scope: !4329)
!4348 = !DILocation(line: 405, column: 2, scope: !4329)
!4349 = distinct !DISubprogram(name: "kzalloc", scope: !144, file: !144, line: 662, type: !4350, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!176, !397, !173}
!4352 = !DILocalVariable(name: "s", arg: 1, scope: !4353, file: !144, line: 445, type: !1001)
!4353 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !144, file: !144, line: 445, type: !4354, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!176, !1001, !173, !397}
!4356 = !DILocation(line: 445, column: 72, scope: !4353, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 552, column: 10, scope: !4358, inlinedAt: !4361)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !144, line: 540, column: 34)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !144, line: 540, column: 6)
!4360 = distinct !DISubprogram(name: "kmalloc", scope: !144, file: !144, line: 538, type: !4350, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4361 = distinct !DILocation(line: 664, column: 9, scope: !4349)
!4362 = !DILocalVariable(name: "flags", arg: 2, scope: !4353, file: !144, line: 446, type: !173)
!4363 = !DILocation(line: 446, column: 9, scope: !4353, inlinedAt: !4357)
!4364 = !DILocalVariable(name: "size", arg: 3, scope: !4353, file: !144, line: 446, type: !397)
!4365 = !DILocation(line: 446, column: 23, scope: !4353, inlinedAt: !4357)
!4366 = !DILocalVariable(name: "ret", scope: !4353, file: !144, line: 448, type: !176)
!4367 = !DILocation(line: 448, column: 8, scope: !4353, inlinedAt: !4357)
!4368 = !DILocalVariable(name: "flags", arg: 1, scope: !4369, file: !144, line: 318, type: !173)
!4369 = distinct !DISubprogram(name: "kmalloc_type", scope: !144, file: !144, line: 318, type: !4370, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!143, !173}
!4372 = !DILocation(line: 318, column: 67, scope: !4369, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 553, column: 20, scope: !4358, inlinedAt: !4361)
!4374 = !DILocalVariable(name: "size", arg: 1, scope: !4375, file: !144, line: 346, type: !397)
!4375 = distinct !DISubprogram(name: "kmalloc_index", scope: !144, file: !144, line: 346, type: !4376, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!7, !397}
!4378 = !DILocation(line: 346, column: 58, scope: !4375, inlinedAt: !4379)
!4379 = distinct !DILocation(line: 547, column: 11, scope: !4358, inlinedAt: !4361)
!4380 = !DILocalVariable(name: "size", arg: 1, scope: !4381, file: !144, line: 472, type: !397)
!4381 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !144, file: !144, line: 472, type: !4382, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!176, !397, !173, !7}
!4384 = !DILocation(line: 472, column: 28, scope: !4381, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 481, column: 9, scope: !4386, inlinedAt: !4387)
!4386 = distinct !DISubprogram(name: "kmalloc_large", scope: !144, file: !144, line: 478, type: !4350, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4387 = distinct !DILocation(line: 545, column: 11, scope: !4388, inlinedAt: !4361)
!4388 = distinct !DILexicalBlock(scope: !4358, file: !144, line: 544, column: 7)
!4389 = !DILocalVariable(name: "flags", arg: 2, scope: !4381, file: !144, line: 472, type: !173)
!4390 = !DILocation(line: 472, column: 40, scope: !4381, inlinedAt: !4385)
!4391 = !DILocalVariable(name: "order", arg: 3, scope: !4381, file: !144, line: 472, type: !7)
!4392 = !DILocation(line: 472, column: 60, scope: !4381, inlinedAt: !4385)
!4393 = !DILocalVariable(name: "size", arg: 1, scope: !4386, file: !144, line: 478, type: !397)
!4394 = !DILocation(line: 478, column: 51, scope: !4386, inlinedAt: !4387)
!4395 = !DILocalVariable(name: "flags", arg: 2, scope: !4386, file: !144, line: 478, type: !173)
!4396 = !DILocation(line: 478, column: 63, scope: !4386, inlinedAt: !4387)
!4397 = !DILocalVariable(name: "order", scope: !4386, file: !144, line: 480, type: !7)
!4398 = !DILocation(line: 480, column: 15, scope: !4386, inlinedAt: !4387)
!4399 = !DILocalVariable(name: "size", arg: 1, scope: !4360, file: !144, line: 538, type: !397)
!4400 = !DILocation(line: 538, column: 45, scope: !4360, inlinedAt: !4361)
!4401 = !DILocalVariable(name: "flags", arg: 2, scope: !4360, file: !144, line: 538, type: !173)
!4402 = !DILocation(line: 538, column: 57, scope: !4360, inlinedAt: !4361)
!4403 = !DILocalVariable(name: "index", scope: !4358, file: !144, line: 542, type: !7)
!4404 = !DILocation(line: 542, column: 16, scope: !4358, inlinedAt: !4361)
!4405 = !DILocalVariable(name: "size", arg: 1, scope: !4349, file: !144, line: 662, type: !397)
!4406 = !DILocation(line: 662, column: 36, scope: !4349)
!4407 = !DILocalVariable(name: "flags", arg: 2, scope: !4349, file: !144, line: 662, type: !173)
!4408 = !DILocation(line: 662, column: 48, scope: !4349)
!4409 = !DILocation(line: 664, column: 17, scope: !4349)
!4410 = !DILocation(line: 664, column: 23, scope: !4349)
!4411 = !DILocation(line: 664, column: 29, scope: !4349)
!4412 = !DILocation(line: 540, column: 27, scope: !4359, inlinedAt: !4361)
!4413 = !DILocation(line: 540, column: 6, scope: !4359, inlinedAt: !4361)
!4414 = !DILocation(line: 540, column: 6, scope: !4360, inlinedAt: !4361)
!4415 = !DILocation(line: 544, column: 7, scope: !4388, inlinedAt: !4361)
!4416 = !DILocation(line: 544, column: 12, scope: !4388, inlinedAt: !4361)
!4417 = !DILocation(line: 544, column: 7, scope: !4358, inlinedAt: !4361)
!4418 = !DILocation(line: 545, column: 25, scope: !4388, inlinedAt: !4361)
!4419 = !DILocation(line: 545, column: 31, scope: !4388, inlinedAt: !4361)
!4420 = !DILocation(line: 480, column: 33, scope: !4386, inlinedAt: !4387)
!4421 = !DILocation(line: 480, column: 23, scope: !4386, inlinedAt: !4387)
!4422 = !DILocation(line: 481, column: 29, scope: !4386, inlinedAt: !4387)
!4423 = !DILocation(line: 481, column: 35, scope: !4386, inlinedAt: !4387)
!4424 = !DILocation(line: 481, column: 42, scope: !4386, inlinedAt: !4387)
!4425 = !DILocation(line: 474, column: 23, scope: !4381, inlinedAt: !4385)
!4426 = !DILocation(line: 474, column: 29, scope: !4381, inlinedAt: !4385)
!4427 = !DILocation(line: 474, column: 36, scope: !4381, inlinedAt: !4385)
!4428 = !DILocation(line: 474, column: 9, scope: !4381, inlinedAt: !4385)
!4429 = !DILocation(line: 545, column: 4, scope: !4388, inlinedAt: !4361)
!4430 = !DILocation(line: 547, column: 25, scope: !4358, inlinedAt: !4361)
!4431 = !DILocation(line: 348, column: 7, scope: !4432, inlinedAt: !4379)
!4432 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 348, column: 6)
!4433 = !DILocation(line: 348, column: 6, scope: !4375, inlinedAt: !4379)
!4434 = !DILocation(line: 349, column: 3, scope: !4432, inlinedAt: !4379)
!4435 = !DILocation(line: 351, column: 6, scope: !4436, inlinedAt: !4379)
!4436 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 351, column: 6)
!4437 = !DILocation(line: 351, column: 11, scope: !4436, inlinedAt: !4379)
!4438 = !DILocation(line: 351, column: 6, scope: !4375, inlinedAt: !4379)
!4439 = !DILocation(line: 352, column: 3, scope: !4436, inlinedAt: !4379)
!4440 = !DILocation(line: 354, column: 32, scope: !4441, inlinedAt: !4379)
!4441 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 354, column: 6)
!4442 = !DILocation(line: 354, column: 37, scope: !4441, inlinedAt: !4379)
!4443 = !DILocation(line: 354, column: 42, scope: !4441, inlinedAt: !4379)
!4444 = !DILocation(line: 354, column: 45, scope: !4441, inlinedAt: !4379)
!4445 = !DILocation(line: 354, column: 50, scope: !4441, inlinedAt: !4379)
!4446 = !DILocation(line: 354, column: 6, scope: !4375, inlinedAt: !4379)
!4447 = !DILocation(line: 355, column: 3, scope: !4441, inlinedAt: !4379)
!4448 = !DILocation(line: 356, column: 32, scope: !4449, inlinedAt: !4379)
!4449 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 356, column: 6)
!4450 = !DILocation(line: 356, column: 37, scope: !4449, inlinedAt: !4379)
!4451 = !DILocation(line: 356, column: 43, scope: !4449, inlinedAt: !4379)
!4452 = !DILocation(line: 356, column: 46, scope: !4449, inlinedAt: !4379)
!4453 = !DILocation(line: 356, column: 51, scope: !4449, inlinedAt: !4379)
!4454 = !DILocation(line: 356, column: 6, scope: !4375, inlinedAt: !4379)
!4455 = !DILocation(line: 357, column: 3, scope: !4449, inlinedAt: !4379)
!4456 = !DILocation(line: 358, column: 6, scope: !4457, inlinedAt: !4379)
!4457 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 358, column: 6)
!4458 = !DILocation(line: 358, column: 11, scope: !4457, inlinedAt: !4379)
!4459 = !DILocation(line: 358, column: 6, scope: !4375, inlinedAt: !4379)
!4460 = !DILocation(line: 358, column: 26, scope: !4457, inlinedAt: !4379)
!4461 = !DILocation(line: 359, column: 6, scope: !4462, inlinedAt: !4379)
!4462 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 359, column: 6)
!4463 = !DILocation(line: 359, column: 11, scope: !4462, inlinedAt: !4379)
!4464 = !DILocation(line: 359, column: 6, scope: !4375, inlinedAt: !4379)
!4465 = !DILocation(line: 359, column: 26, scope: !4462, inlinedAt: !4379)
!4466 = !DILocation(line: 360, column: 6, scope: !4467, inlinedAt: !4379)
!4467 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 360, column: 6)
!4468 = !DILocation(line: 360, column: 11, scope: !4467, inlinedAt: !4379)
!4469 = !DILocation(line: 360, column: 6, scope: !4375, inlinedAt: !4379)
!4470 = !DILocation(line: 360, column: 26, scope: !4467, inlinedAt: !4379)
!4471 = !DILocation(line: 361, column: 6, scope: !4472, inlinedAt: !4379)
!4472 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 361, column: 6)
!4473 = !DILocation(line: 361, column: 11, scope: !4472, inlinedAt: !4379)
!4474 = !DILocation(line: 361, column: 6, scope: !4375, inlinedAt: !4379)
!4475 = !DILocation(line: 361, column: 26, scope: !4472, inlinedAt: !4379)
!4476 = !DILocation(line: 362, column: 6, scope: !4477, inlinedAt: !4379)
!4477 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 362, column: 6)
!4478 = !DILocation(line: 362, column: 11, scope: !4477, inlinedAt: !4379)
!4479 = !DILocation(line: 362, column: 6, scope: !4375, inlinedAt: !4379)
!4480 = !DILocation(line: 362, column: 26, scope: !4477, inlinedAt: !4379)
!4481 = !DILocation(line: 363, column: 6, scope: !4482, inlinedAt: !4379)
!4482 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 363, column: 6)
!4483 = !DILocation(line: 363, column: 11, scope: !4482, inlinedAt: !4379)
!4484 = !DILocation(line: 363, column: 6, scope: !4375, inlinedAt: !4379)
!4485 = !DILocation(line: 363, column: 26, scope: !4482, inlinedAt: !4379)
!4486 = !DILocation(line: 364, column: 6, scope: !4487, inlinedAt: !4379)
!4487 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 364, column: 6)
!4488 = !DILocation(line: 364, column: 11, scope: !4487, inlinedAt: !4379)
!4489 = !DILocation(line: 364, column: 6, scope: !4375, inlinedAt: !4379)
!4490 = !DILocation(line: 364, column: 26, scope: !4487, inlinedAt: !4379)
!4491 = !DILocation(line: 365, column: 6, scope: !4492, inlinedAt: !4379)
!4492 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 365, column: 6)
!4493 = !DILocation(line: 365, column: 11, scope: !4492, inlinedAt: !4379)
!4494 = !DILocation(line: 365, column: 6, scope: !4375, inlinedAt: !4379)
!4495 = !DILocation(line: 365, column: 26, scope: !4492, inlinedAt: !4379)
!4496 = !DILocation(line: 366, column: 6, scope: !4497, inlinedAt: !4379)
!4497 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 366, column: 6)
!4498 = !DILocation(line: 366, column: 11, scope: !4497, inlinedAt: !4379)
!4499 = !DILocation(line: 366, column: 6, scope: !4375, inlinedAt: !4379)
!4500 = !DILocation(line: 366, column: 26, scope: !4497, inlinedAt: !4379)
!4501 = !DILocation(line: 367, column: 6, scope: !4502, inlinedAt: !4379)
!4502 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 367, column: 6)
!4503 = !DILocation(line: 367, column: 11, scope: !4502, inlinedAt: !4379)
!4504 = !DILocation(line: 367, column: 6, scope: !4375, inlinedAt: !4379)
!4505 = !DILocation(line: 367, column: 26, scope: !4502, inlinedAt: !4379)
!4506 = !DILocation(line: 368, column: 6, scope: !4507, inlinedAt: !4379)
!4507 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 368, column: 6)
!4508 = !DILocation(line: 368, column: 11, scope: !4507, inlinedAt: !4379)
!4509 = !DILocation(line: 368, column: 6, scope: !4375, inlinedAt: !4379)
!4510 = !DILocation(line: 368, column: 26, scope: !4507, inlinedAt: !4379)
!4511 = !DILocation(line: 369, column: 6, scope: !4512, inlinedAt: !4379)
!4512 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 369, column: 6)
!4513 = !DILocation(line: 369, column: 11, scope: !4512, inlinedAt: !4379)
!4514 = !DILocation(line: 369, column: 6, scope: !4375, inlinedAt: !4379)
!4515 = !DILocation(line: 369, column: 26, scope: !4512, inlinedAt: !4379)
!4516 = !DILocation(line: 370, column: 6, scope: !4517, inlinedAt: !4379)
!4517 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 370, column: 6)
!4518 = !DILocation(line: 370, column: 11, scope: !4517, inlinedAt: !4379)
!4519 = !DILocation(line: 370, column: 6, scope: !4375, inlinedAt: !4379)
!4520 = !DILocation(line: 370, column: 26, scope: !4517, inlinedAt: !4379)
!4521 = !DILocation(line: 371, column: 6, scope: !4522, inlinedAt: !4379)
!4522 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 371, column: 6)
!4523 = !DILocation(line: 371, column: 11, scope: !4522, inlinedAt: !4379)
!4524 = !DILocation(line: 371, column: 6, scope: !4375, inlinedAt: !4379)
!4525 = !DILocation(line: 371, column: 26, scope: !4522, inlinedAt: !4379)
!4526 = !DILocation(line: 372, column: 6, scope: !4527, inlinedAt: !4379)
!4527 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 372, column: 6)
!4528 = !DILocation(line: 372, column: 11, scope: !4527, inlinedAt: !4379)
!4529 = !DILocation(line: 372, column: 6, scope: !4375, inlinedAt: !4379)
!4530 = !DILocation(line: 372, column: 26, scope: !4527, inlinedAt: !4379)
!4531 = !DILocation(line: 373, column: 6, scope: !4532, inlinedAt: !4379)
!4532 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 373, column: 6)
!4533 = !DILocation(line: 373, column: 11, scope: !4532, inlinedAt: !4379)
!4534 = !DILocation(line: 373, column: 6, scope: !4375, inlinedAt: !4379)
!4535 = !DILocation(line: 373, column: 26, scope: !4532, inlinedAt: !4379)
!4536 = !DILocation(line: 374, column: 6, scope: !4537, inlinedAt: !4379)
!4537 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 374, column: 6)
!4538 = !DILocation(line: 374, column: 11, scope: !4537, inlinedAt: !4379)
!4539 = !DILocation(line: 374, column: 6, scope: !4375, inlinedAt: !4379)
!4540 = !DILocation(line: 374, column: 26, scope: !4537, inlinedAt: !4379)
!4541 = !DILocation(line: 375, column: 6, scope: !4542, inlinedAt: !4379)
!4542 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 375, column: 6)
!4543 = !DILocation(line: 375, column: 11, scope: !4542, inlinedAt: !4379)
!4544 = !DILocation(line: 375, column: 6, scope: !4375, inlinedAt: !4379)
!4545 = !DILocation(line: 375, column: 27, scope: !4542, inlinedAt: !4379)
!4546 = !DILocation(line: 376, column: 6, scope: !4547, inlinedAt: !4379)
!4547 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 376, column: 6)
!4548 = !DILocation(line: 376, column: 11, scope: !4547, inlinedAt: !4379)
!4549 = !DILocation(line: 376, column: 6, scope: !4375, inlinedAt: !4379)
!4550 = !DILocation(line: 376, column: 32, scope: !4547, inlinedAt: !4379)
!4551 = !DILocation(line: 377, column: 6, scope: !4552, inlinedAt: !4379)
!4552 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 377, column: 6)
!4553 = !DILocation(line: 377, column: 11, scope: !4552, inlinedAt: !4379)
!4554 = !DILocation(line: 377, column: 6, scope: !4375, inlinedAt: !4379)
!4555 = !DILocation(line: 377, column: 32, scope: !4552, inlinedAt: !4379)
!4556 = !DILocation(line: 378, column: 6, scope: !4557, inlinedAt: !4379)
!4557 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 378, column: 6)
!4558 = !DILocation(line: 378, column: 11, scope: !4557, inlinedAt: !4379)
!4559 = !DILocation(line: 378, column: 6, scope: !4375, inlinedAt: !4379)
!4560 = !DILocation(line: 378, column: 32, scope: !4557, inlinedAt: !4379)
!4561 = !DILocation(line: 379, column: 6, scope: !4562, inlinedAt: !4379)
!4562 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 379, column: 6)
!4563 = !DILocation(line: 379, column: 11, scope: !4562, inlinedAt: !4379)
!4564 = !DILocation(line: 379, column: 6, scope: !4375, inlinedAt: !4379)
!4565 = !DILocation(line: 379, column: 33, scope: !4562, inlinedAt: !4379)
!4566 = !DILocation(line: 380, column: 6, scope: !4567, inlinedAt: !4379)
!4567 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 380, column: 6)
!4568 = !DILocation(line: 380, column: 11, scope: !4567, inlinedAt: !4379)
!4569 = !DILocation(line: 380, column: 6, scope: !4375, inlinedAt: !4379)
!4570 = !DILocation(line: 380, column: 33, scope: !4567, inlinedAt: !4379)
!4571 = !DILocation(line: 381, column: 6, scope: !4572, inlinedAt: !4379)
!4572 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 381, column: 6)
!4573 = !DILocation(line: 381, column: 11, scope: !4572, inlinedAt: !4379)
!4574 = !DILocation(line: 381, column: 6, scope: !4375, inlinedAt: !4379)
!4575 = !DILocation(line: 381, column: 33, scope: !4572, inlinedAt: !4379)
!4576 = !DILocation(line: 382, column: 2, scope: !4577, inlinedAt: !4379)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !144, line: 382, column: 2)
!4578 = distinct !DILexicalBlock(scope: !4375, file: !144, line: 382, column: 2)
!4579 = !{i32 -2141982431, i32 -2141982402, i32 -2141982356, i32 -2141982298, i32 -2141982244, i32 -2141982190, i32 -2141982135, i32 -2141982104}
!4580 = !DILocation(line: 382, column: 2, scope: !4581, inlinedAt: !4379)
!4581 = distinct !DILexicalBlock(scope: !4582, file: !144, line: 382, column: 2)
!4582 = distinct !DILexicalBlock(scope: !4578, file: !144, line: 382, column: 2)
!4583 = !{i32 -2141981661, i32 -2141981654, i32 -2141981600, i32 -2141981569, i32 -2141981539}
!4584 = !DILocation(line: 382, column: 2, scope: !4582, inlinedAt: !4379)
!4585 = !DILocation(line: 386, column: 1, scope: !4375, inlinedAt: !4379)
!4586 = !DILocation(line: 547, column: 9, scope: !4358, inlinedAt: !4361)
!4587 = !DILocation(line: 549, column: 8, scope: !4588, inlinedAt: !4361)
!4588 = distinct !DILexicalBlock(scope: !4358, file: !144, line: 549, column: 7)
!4589 = !DILocation(line: 549, column: 7, scope: !4358, inlinedAt: !4361)
!4590 = !DILocation(line: 550, column: 4, scope: !4588, inlinedAt: !4361)
!4591 = !DILocation(line: 553, column: 33, scope: !4358, inlinedAt: !4361)
!4592 = !DILocation(line: 325, column: 6, scope: !4593, inlinedAt: !4373)
!4593 = distinct !DILexicalBlock(scope: !4369, file: !144, line: 325, column: 6)
!4594 = !DILocation(line: 325, column: 6, scope: !4369, inlinedAt: !4373)
!4595 = !DILocation(line: 326, column: 3, scope: !4593, inlinedAt: !4373)
!4596 = !DILocation(line: 332, column: 9, scope: !4369, inlinedAt: !4373)
!4597 = !DILocation(line: 332, column: 15, scope: !4369, inlinedAt: !4373)
!4598 = !DILocation(line: 332, column: 2, scope: !4369, inlinedAt: !4373)
!4599 = !DILocation(line: 336, column: 1, scope: !4369, inlinedAt: !4373)
!4600 = !DILocation(line: 553, column: 5, scope: !4358, inlinedAt: !4361)
!4601 = !DILocation(line: 553, column: 41, scope: !4358, inlinedAt: !4361)
!4602 = !DILocation(line: 554, column: 5, scope: !4358, inlinedAt: !4361)
!4603 = !DILocation(line: 554, column: 12, scope: !4358, inlinedAt: !4361)
!4604 = !DILocation(line: 448, column: 31, scope: !4353, inlinedAt: !4357)
!4605 = !DILocation(line: 448, column: 34, scope: !4353, inlinedAt: !4357)
!4606 = !DILocation(line: 448, column: 14, scope: !4353, inlinedAt: !4357)
!4607 = !DILocation(line: 450, column: 22, scope: !4353, inlinedAt: !4357)
!4608 = !DILocation(line: 450, column: 25, scope: !4353, inlinedAt: !4357)
!4609 = !DILocation(line: 450, column: 30, scope: !4353, inlinedAt: !4357)
!4610 = !DILocation(line: 450, column: 36, scope: !4353, inlinedAt: !4357)
!4611 = !DILocation(line: 450, column: 8, scope: !4353, inlinedAt: !4357)
!4612 = !DILocation(line: 450, column: 6, scope: !4353, inlinedAt: !4357)
!4613 = !DILocation(line: 451, column: 9, scope: !4353, inlinedAt: !4357)
!4614 = !DILocation(line: 552, column: 3, scope: !4358, inlinedAt: !4361)
!4615 = !DILocation(line: 557, column: 19, scope: !4360, inlinedAt: !4361)
!4616 = !DILocation(line: 557, column: 25, scope: !4360, inlinedAt: !4361)
!4617 = !DILocation(line: 557, column: 9, scope: !4360, inlinedAt: !4361)
!4618 = !DILocation(line: 557, column: 2, scope: !4360, inlinedAt: !4361)
!4619 = !DILocation(line: 558, column: 1, scope: !4360, inlinedAt: !4361)
!4620 = !DILocation(line: 664, column: 2, scope: !4349)
!4621 = !DILocalVariable(name: "x", arg: 1, scope: !248, file: !249, line: 85, type: !252)
!4622 = !DILocation(line: 85, column: 57, scope: !248)
!4623 = !DILocation(line: 87, column: 2, scope: !248)
!4624 = !DILocation(line: 87, column: 5, scope: !248)
!4625 = !DILocation(line: 87, column: 10, scope: !248)
!4626 = !DILocation(line: 88, column: 2, scope: !248)
!4627 = !DILocation(line: 88, column: 2, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !248, file: !249, line: 88, column: 2)
!4629 = !DILocation(line: 89, column: 1, scope: !248)
!4630 = distinct !DISubprogram(name: "hv_set_drvdata", scope: !94, file: !94, line: 1250, type: !4631, scopeLine: 1251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{null, !3862, !176}
!4633 = !DILocalVariable(name: "dev", arg: 1, scope: !4630, file: !94, line: 1250, type: !3862)
!4634 = !DILocation(line: 1250, column: 53, scope: !4630)
!4635 = !DILocalVariable(name: "data", arg: 2, scope: !4630, file: !94, line: 1250, type: !176)
!4636 = !DILocation(line: 1250, column: 64, scope: !4630)
!4637 = !DILocation(line: 1252, column: 19, scope: !4630)
!4638 = !DILocation(line: 1252, column: 24, scope: !4630)
!4639 = !DILocation(line: 1252, column: 32, scope: !4630)
!4640 = !DILocation(line: 1252, column: 2, scope: !4630)
!4641 = !DILocation(line: 1253, column: 1, scope: !4630)
!4642 = distinct !DISubprogram(name: "dev_name", scope: !67, file: !67, line: 609, type: !4643, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!281, !3672}
!4645 = !DILocalVariable(name: "dev", arg: 1, scope: !4642, file: !67, line: 609, type: !3672)
!4646 = !DILocation(line: 609, column: 57, scope: !4642)
!4647 = !DILocation(line: 612, column: 6, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4642, file: !67, line: 612, column: 6)
!4649 = !DILocation(line: 612, column: 11, scope: !4648)
!4650 = !DILocation(line: 612, column: 6, scope: !4642)
!4651 = !DILocation(line: 613, column: 10, scope: !4648)
!4652 = !DILocation(line: 613, column: 15, scope: !4648)
!4653 = !DILocation(line: 613, column: 3, scope: !4648)
!4654 = !DILocation(line: 615, column: 23, scope: !4642)
!4655 = !DILocation(line: 615, column: 28, scope: !4642)
!4656 = !DILocation(line: 615, column: 9, scope: !4642)
!4657 = !DILocation(line: 615, column: 2, scope: !4642)
!4658 = !DILocation(line: 616, column: 1, scope: !4642)
!4659 = distinct !DISubprogram(name: "hv_kbd_start", scope: !3, file: !3, line: 292, type: !4147, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4660 = !DILocalVariable(name: "lock", arg: 1, scope: !4661, file: !4107, line: 407, type: !1130)
!4661 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4107, file: !4107, line: 407, type: !4662, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !1130, !175}
!4664 = !DILocation(line: 407, column: 64, scope: !4661, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 299, column: 2, scope: !4659)
!4666 = !DILocalVariable(name: "flags", arg: 2, scope: !4661, file: !4107, line: 407, type: !175)
!4667 = !DILocation(line: 407, column: 84, scope: !4661, inlinedAt: !4665)
!4668 = !DILocation(line: 327, column: 67, scope: !4106, inlinedAt: !4669)
!4669 = distinct !DILocation(line: 297, column: 2, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 297, column: 2)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 297, column: 2)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 297, column: 2)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 297, column: 2)
!4674 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 297, column: 2)
!4675 = !DILocalVariable(name: "serio", arg: 1, scope: !4659, file: !3, line: 292, type: !4124)
!4676 = !DILocation(line: 292, column: 39, scope: !4659)
!4677 = !DILocalVariable(name: "kbd_dev", scope: !4659, file: !3, line: 294, type: !4119)
!4678 = !DILocation(line: 294, column: 21, scope: !4659)
!4679 = !DILocation(line: 294, column: 31, scope: !4659)
!4680 = !DILocation(line: 294, column: 38, scope: !4659)
!4681 = !DILocalVariable(name: "flags", scope: !4659, file: !3, line: 295, type: !175)
!4682 = !DILocation(line: 295, column: 16, scope: !4659)
!4683 = !DILocation(line: 297, column: 2, scope: !4659)
!4684 = !DILocation(line: 297, column: 2, scope: !4674)
!4685 = !DILocalVariable(name: "__dummy", scope: !4686, file: !3, line: 297, type: !175)
!4686 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 297, column: 2)
!4687 = !DILocation(line: 297, column: 2, scope: !4686)
!4688 = !DILocalVariable(name: "__dummy2", scope: !4686, file: !3, line: 297, type: !175)
!4689 = !DILocation(line: 297, column: 2, scope: !4673)
!4690 = !DILocation(line: 297, column: 2, scope: !4672)
!4691 = !DILocation(line: 297, column: 2, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 297, column: 2)
!4693 = !DILocalVariable(name: "__dummy", scope: !4694, file: !3, line: 297, type: !175)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 297, column: 2)
!4695 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 297, column: 2)
!4696 = !DILocation(line: 297, column: 2, scope: !4694)
!4697 = !DILocalVariable(name: "__dummy2", scope: !4694, file: !3, line: 297, type: !175)
!4698 = !DILocation(line: 297, column: 2, scope: !4695)
!4699 = !DILocation(line: 297, column: 2, scope: !4671)
!4700 = !{i32 -2141972455}
!4701 = !DILocation(line: 297, column: 2, scope: !4670)
!4702 = !DILocation(line: 329, column: 10, scope: !4106, inlinedAt: !4669)
!4703 = !DILocation(line: 329, column: 16, scope: !4106, inlinedAt: !4669)
!4704 = !DILocation(line: 298, column: 2, scope: !4659)
!4705 = !DILocation(line: 298, column: 11, scope: !4659)
!4706 = !DILocation(line: 298, column: 19, scope: !4659)
!4707 = !DILocation(line: 299, column: 26, scope: !4659)
!4708 = !DILocation(line: 299, column: 35, scope: !4659)
!4709 = !DILocation(line: 299, column: 41, scope: !4659)
!4710 = !DILocalVariable(name: "__dummy", scope: !4711, file: !4107, line: 409, type: !175)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !4107, line: 409, column: 2)
!4712 = distinct !DILexicalBlock(scope: !4661, file: !4107, line: 409, column: 2)
!4713 = !DILocation(line: 409, column: 2, scope: !4711, inlinedAt: !4665)
!4714 = !DILocalVariable(name: "__dummy2", scope: !4711, file: !4107, line: 409, type: !175)
!4715 = !DILocalVariable(name: "__dummy", scope: !4716, file: !4107, line: 409, type: !175)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !4107, line: 409, column: 2)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !4107, line: 409, column: 2)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !4107, line: 409, column: 2)
!4719 = distinct !DILexicalBlock(scope: !4712, file: !4107, line: 409, column: 2)
!4720 = !DILocation(line: 409, column: 2, scope: !4716, inlinedAt: !4665)
!4721 = !DILocalVariable(name: "__dummy2", scope: !4716, file: !4107, line: 409, type: !175)
!4722 = !DILocation(line: 409, column: 2, scope: !4717, inlinedAt: !4665)
!4723 = !DILocation(line: 409, column: 2, scope: !4724, inlinedAt: !4665)
!4724 = distinct !DILexicalBlock(scope: !4719, file: !4107, line: 409, column: 2)
!4725 = !{i32 -2145467260}
!4726 = !DILocation(line: 409, column: 2, scope: !4727, inlinedAt: !4665)
!4727 = distinct !DILexicalBlock(scope: !4724, file: !4107, line: 409, column: 2)
!4728 = !DILocation(line: 301, column: 2, scope: !4659)
!4729 = distinct !DISubprogram(name: "hv_kbd_stop", scope: !3, file: !3, line: 304, type: !4151, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4730 = !DILocation(line: 407, column: 64, scope: !4661, inlinedAt: !4731)
!4731 = distinct !DILocation(line: 311, column: 2, scope: !4729)
!4732 = !DILocation(line: 407, column: 84, scope: !4661, inlinedAt: !4731)
!4733 = !DILocation(line: 327, column: 67, scope: !4106, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 309, column: 2, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 309, column: 2)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 309, column: 2)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 309, column: 2)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 309, column: 2)
!4739 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 309, column: 2)
!4740 = !DILocalVariable(name: "serio", arg: 1, scope: !4729, file: !3, line: 304, type: !4124)
!4741 = !DILocation(line: 304, column: 39, scope: !4729)
!4742 = !DILocalVariable(name: "kbd_dev", scope: !4729, file: !3, line: 306, type: !4119)
!4743 = !DILocation(line: 306, column: 21, scope: !4729)
!4744 = !DILocation(line: 306, column: 31, scope: !4729)
!4745 = !DILocation(line: 306, column: 38, scope: !4729)
!4746 = !DILocalVariable(name: "flags", scope: !4729, file: !3, line: 307, type: !175)
!4747 = !DILocation(line: 307, column: 16, scope: !4729)
!4748 = !DILocation(line: 309, column: 2, scope: !4729)
!4749 = !DILocation(line: 309, column: 2, scope: !4739)
!4750 = !DILocalVariable(name: "__dummy", scope: !4751, file: !3, line: 309, type: !175)
!4751 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 309, column: 2)
!4752 = !DILocation(line: 309, column: 2, scope: !4751)
!4753 = !DILocalVariable(name: "__dummy2", scope: !4751, file: !3, line: 309, type: !175)
!4754 = !DILocation(line: 309, column: 2, scope: !4738)
!4755 = !DILocation(line: 309, column: 2, scope: !4737)
!4756 = !DILocation(line: 309, column: 2, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 309, column: 2)
!4758 = !DILocalVariable(name: "__dummy", scope: !4759, file: !3, line: 309, type: !175)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 309, column: 2)
!4760 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 309, column: 2)
!4761 = !DILocation(line: 309, column: 2, scope: !4759)
!4762 = !DILocalVariable(name: "__dummy2", scope: !4759, file: !3, line: 309, type: !175)
!4763 = !DILocation(line: 309, column: 2, scope: !4760)
!4764 = !DILocation(line: 309, column: 2, scope: !4736)
!4765 = !{i32 -2141971415}
!4766 = !DILocation(line: 309, column: 2, scope: !4735)
!4767 = !DILocation(line: 329, column: 10, scope: !4106, inlinedAt: !4734)
!4768 = !DILocation(line: 329, column: 16, scope: !4106, inlinedAt: !4734)
!4769 = !DILocation(line: 310, column: 2, scope: !4729)
!4770 = !DILocation(line: 310, column: 11, scope: !4729)
!4771 = !DILocation(line: 310, column: 19, scope: !4729)
!4772 = !DILocation(line: 311, column: 26, scope: !4729)
!4773 = !DILocation(line: 311, column: 35, scope: !4729)
!4774 = !DILocation(line: 311, column: 41, scope: !4729)
!4775 = !DILocation(line: 409, column: 2, scope: !4711, inlinedAt: !4731)
!4776 = !DILocation(line: 409, column: 2, scope: !4716, inlinedAt: !4731)
!4777 = !DILocation(line: 409, column: 2, scope: !4717, inlinedAt: !4731)
!4778 = !DILocation(line: 409, column: 2, scope: !4724, inlinedAt: !4731)
!4779 = !DILocation(line: 409, column: 2, scope: !4727, inlinedAt: !4731)
!4780 = !DILocation(line: 312, column: 1, scope: !4729)
!4781 = distinct !DISubprogram(name: "hv_kbd_on_channel_callback", scope: !3, file: !3, line: 238, type: !541, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4782 = !DILocalVariable(name: "context", arg: 1, scope: !4781, file: !3, line: 238, type: !176)
!4783 = !DILocation(line: 238, column: 46, scope: !4781)
!4784 = !DILocalVariable(name: "desc", scope: !4781, file: !3, line: 240, type: !4785)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmpacket_descriptor", file: !94, line: 317, size: 128, elements: !4787)
!4787 = !{!4788, !4789, !4790, !4791, !4792}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4786, file: !94, line: 318, baseType: !926, size: 16)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "offset8", scope: !4786, file: !94, line: 319, baseType: !926, size: 16, offset: 16)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "len8", scope: !4786, file: !94, line: 320, baseType: !926, size: 16, offset: 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4786, file: !94, line: 321, baseType: !926, size: 16, offset: 48)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "trans_id", scope: !4786, file: !94, line: 322, baseType: !494, size: 64, offset: 64)
!4793 = !DILocation(line: 240, column: 30, scope: !4781)
!4794 = !DILocalVariable(name: "hv_dev", scope: !4781, file: !3, line: 241, type: !3862)
!4795 = !DILocation(line: 241, column: 20, scope: !4781)
!4796 = !DILocation(line: 241, column: 29, scope: !4781)
!4797 = !DILocalVariable(name: "bytes_recvd", scope: !4781, file: !3, line: 242, type: !490)
!4798 = !DILocation(line: 242, column: 6, scope: !4781)
!4799 = !DILocalVariable(name: "req_id", scope: !4781, file: !3, line: 243, type: !494)
!4800 = !DILocation(line: 243, column: 6, scope: !4781)
!4801 = !DILocation(line: 245, column: 2, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 245, column: 2)
!4803 = !DILocation(line: 245, column: 2, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 245, column: 2)
!4805 = !DILocation(line: 246, column: 17, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 245, column: 43)
!4807 = !DILocation(line: 246, column: 23, scope: !4806)
!4808 = !DILocation(line: 246, column: 28, scope: !4806)
!4809 = !DILocation(line: 246, column: 15, scope: !4806)
!4810 = !DILocation(line: 247, column: 12, scope: !4806)
!4811 = !DILocation(line: 247, column: 18, scope: !4806)
!4812 = !DILocation(line: 247, column: 10, scope: !4806)
!4813 = !DILocation(line: 249, column: 33, scope: !4806)
!4814 = !DILocation(line: 249, column: 41, scope: !4806)
!4815 = !DILocation(line: 249, column: 47, scope: !4806)
!4816 = !DILocation(line: 250, column: 12, scope: !4806)
!4817 = !DILocation(line: 249, column: 3, scope: !4806)
!4818 = !DILocation(line: 251, column: 2, scope: !4806)
!4819 = distinct !{!4819, !4801, !4820}
!4820 = !DILocation(line: 251, column: 2, scope: !4802)
!4821 = !DILocation(line: 252, column: 1, scope: !4781)
!4822 = distinct !DISubprogram(name: "hv_kbd_connect_to_vsp", scope: !3, file: !3, line: 254, type: !4082, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4823 = !DILocalVariable(name: "hv_dev", arg: 1, scope: !4822, file: !3, line: 254, type: !3862)
!4824 = !DILocation(line: 254, column: 52, scope: !4822)
!4825 = !DILocalVariable(name: "kbd_dev", scope: !4822, file: !3, line: 256, type: !4119)
!4826 = !DILocation(line: 256, column: 21, scope: !4822)
!4827 = !DILocation(line: 256, column: 46, scope: !4822)
!4828 = !DILocation(line: 256, column: 31, scope: !4822)
!4829 = !DILocalVariable(name: "request", scope: !4822, file: !3, line: 257, type: !4830)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4831 = !DILocation(line: 257, column: 37, scope: !4822)
!4832 = !DILocalVariable(name: "response", scope: !4822, file: !3, line: 258, type: !4833)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4834 = !DILocation(line: 258, column: 38, scope: !4822)
!4835 = !DILocalVariable(name: "proto_status", scope: !4822, file: !3, line: 259, type: !490)
!4836 = !DILocation(line: 259, column: 6, scope: !4822)
!4837 = !DILocalVariable(name: "error", scope: !4822, file: !3, line: 260, type: !335)
!4838 = !DILocation(line: 260, column: 6, scope: !4822)
!4839 = !DILocation(line: 262, column: 21, scope: !4822)
!4840 = !DILocation(line: 262, column: 30, scope: !4822)
!4841 = !DILocation(line: 262, column: 2, scope: !4822)
!4842 = !DILocation(line: 264, column: 13, scope: !4822)
!4843 = !DILocation(line: 264, column: 22, scope: !4822)
!4844 = !DILocation(line: 264, column: 10, scope: !4822)
!4845 = !DILocation(line: 265, column: 9, scope: !4822)
!4846 = !DILocation(line: 265, column: 2, scope: !4822)
!4847 = !DILocation(line: 266, column: 2, scope: !4822)
!4848 = !DILocation(line: 266, column: 11, scope: !4822)
!4849 = !DILocation(line: 266, column: 18, scope: !4822)
!4850 = !DILocation(line: 266, column: 23, scope: !4822)
!4851 = !DILocation(line: 267, column: 2, scope: !4822)
!4852 = !DILocation(line: 267, column: 11, scope: !4822)
!4853 = !DILocation(line: 267, column: 29, scope: !4822)
!4854 = !DILocation(line: 267, column: 37, scope: !4822)
!4855 = !DILocation(line: 269, column: 27, scope: !4822)
!4856 = !DILocation(line: 269, column: 35, scope: !4822)
!4857 = !DILocation(line: 269, column: 44, scope: !4822)
!4858 = !DILocation(line: 271, column: 21, scope: !4822)
!4859 = !DILocation(line: 271, column: 6, scope: !4822)
!4860 = !DILocation(line: 269, column: 10, scope: !4822)
!4861 = !DILocation(line: 269, column: 8, scope: !4822)
!4862 = !DILocation(line: 274, column: 6, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 274, column: 6)
!4864 = !DILocation(line: 274, column: 6, scope: !4822)
!4865 = !DILocation(line: 275, column: 10, scope: !4863)
!4866 = !DILocation(line: 275, column: 3, scope: !4863)
!4867 = !DILocation(line: 277, column: 36, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 277, column: 6)
!4869 = !DILocation(line: 277, column: 45, scope: !4868)
!4870 = !DILocation(line: 277, column: 7, scope: !4868)
!4871 = !DILocation(line: 277, column: 6, scope: !4822)
!4872 = !DILocation(line: 278, column: 3, scope: !4868)
!4873 = !DILocation(line: 280, column: 14, scope: !4822)
!4874 = !DILocation(line: 280, column: 23, scope: !4822)
!4875 = !DILocation(line: 280, column: 11, scope: !4822)
!4876 = !DILocation(line: 281, column: 17, scope: !4822)
!4877 = !DILocation(line: 281, column: 15, scope: !4822)
!4878 = !DILocation(line: 282, column: 8, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 282, column: 6)
!4880 = !DILocation(line: 282, column: 21, scope: !4879)
!4881 = !DILocation(line: 282, column: 6, scope: !4822)
!4882 = !DILocation(line: 283, column: 3, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 282, column: 43)
!4884 = !DILocation(line: 286, column: 3, scope: !4883)
!4885 = !DILocation(line: 289, column: 2, scope: !4822)
!4886 = !DILocation(line: 290, column: 1, scope: !4822)
!4887 = distinct !DISubprogram(name: "get_order", scope: !4888, file: !4888, line: 29, type: !4889, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4888 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!335, !175}
!4891 = !DILocalVariable(name: "x", arg: 1, scope: !4892, file: !4893, line: 366, type: !495)
!4892 = distinct !DISubprogram(name: "fls64", scope: !4893, file: !4893, line: 366, type: !4894, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4893 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!335, !495}
!4896 = !DILocation(line: 366, column: 40, scope: !4892, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 46, column: 9, scope: !4887)
!4898 = !DILocalVariable(name: "bitpos", scope: !4892, file: !4893, line: 368, type: !335)
!4899 = !DILocation(line: 368, column: 6, scope: !4892, inlinedAt: !4897)
!4900 = !DILocalVariable(name: "size", arg: 1, scope: !4887, file: !4888, line: 29, type: !175)
!4901 = !DILocation(line: 29, column: 63, scope: !4887)
!4902 = !DILocation(line: 31, column: 27, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4887, file: !4888, line: 31, column: 6)
!4904 = !DILocation(line: 31, column: 6, scope: !4903)
!4905 = !DILocation(line: 31, column: 6, scope: !4887)
!4906 = !DILocation(line: 32, column: 8, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !4888, line: 32, column: 7)
!4908 = distinct !DILexicalBlock(scope: !4903, file: !4888, line: 31, column: 34)
!4909 = !DILocation(line: 32, column: 7, scope: !4908)
!4910 = !DILocation(line: 33, column: 4, scope: !4907)
!4911 = !DILocation(line: 35, column: 7, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4908, file: !4888, line: 35, column: 7)
!4913 = !DILocation(line: 35, column: 12, scope: !4912)
!4914 = !DILocation(line: 35, column: 7, scope: !4908)
!4915 = !DILocation(line: 36, column: 4, scope: !4912)
!4916 = !DILocation(line: 38, column: 10, scope: !4908)
!4917 = !DILocation(line: 38, column: 28, scope: !4908)
!4918 = !DILocation(line: 38, column: 41, scope: !4908)
!4919 = !DILocation(line: 38, column: 3, scope: !4908)
!4920 = !DILocation(line: 41, column: 6, scope: !4887)
!4921 = !DILocation(line: 42, column: 7, scope: !4887)
!4922 = !DILocation(line: 46, column: 15, scope: !4887)
!4923 = !DILocation(line: 374, column: 2, scope: !4892, inlinedAt: !4897)
!4924 = !DILocation(line: 376, column: 14, scope: !4892, inlinedAt: !4897)
!4925 = !{i32 317615}
!4926 = !DILocation(line: 377, column: 9, scope: !4892, inlinedAt: !4897)
!4927 = !DILocation(line: 377, column: 16, scope: !4892, inlinedAt: !4897)
!4928 = !DILocation(line: 46, column: 2, scope: !4887)
!4929 = !DILocation(line: 48, column: 1, scope: !4887)
!4930 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4931, file: !4931, line: 30, type: !4932, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4931 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!335, !494}
!4934 = !DILocation(line: 366, column: 40, scope: !4892, inlinedAt: !4935)
!4935 = distinct !DILocation(line: 32, column: 9, scope: !4930)
!4936 = !DILocation(line: 368, column: 6, scope: !4892, inlinedAt: !4935)
!4937 = !DILocalVariable(name: "n", arg: 1, scope: !4930, file: !4931, line: 30, type: !494)
!4938 = !DILocation(line: 30, column: 21, scope: !4930)
!4939 = !DILocation(line: 32, column: 15, scope: !4930)
!4940 = !DILocation(line: 374, column: 2, scope: !4892, inlinedAt: !4935)
!4941 = !DILocation(line: 376, column: 14, scope: !4892, inlinedAt: !4935)
!4942 = !DILocation(line: 377, column: 9, scope: !4892, inlinedAt: !4935)
!4943 = !DILocation(line: 377, column: 16, scope: !4892, inlinedAt: !4935)
!4944 = !DILocation(line: 32, column: 18, scope: !4930)
!4945 = !DILocation(line: 32, column: 2, scope: !4930)
!4946 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4947, file: !4947, line: 137, type: !4948, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4947 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!176, !1001, !2177, !397, !173}
!4950 = !DILocalVariable(name: "s", arg: 1, scope: !4946, file: !4947, line: 137, type: !1001)
!4951 = !DILocation(line: 137, column: 54, scope: !4946)
!4952 = !DILocalVariable(name: "object", arg: 2, scope: !4946, file: !4947, line: 137, type: !2177)
!4953 = !DILocation(line: 137, column: 69, scope: !4946)
!4954 = !DILocalVariable(name: "size", arg: 3, scope: !4946, file: !4947, line: 138, type: !397)
!4955 = !DILocation(line: 138, column: 12, scope: !4946)
!4956 = !DILocalVariable(name: "flags", arg: 4, scope: !4946, file: !4947, line: 138, type: !173)
!4957 = !DILocation(line: 138, column: 24, scope: !4946)
!4958 = !DILocation(line: 140, column: 17, scope: !4946)
!4959 = !DILocation(line: 140, column: 2, scope: !4946)
!4960 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !4961, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !300, !176}
!4963 = !DILocalVariable(name: "dev", arg: 1, scope: !4960, file: !67, line: 660, type: !300)
!4964 = !DILocation(line: 660, column: 51, scope: !4960)
!4965 = !DILocalVariable(name: "data", arg: 2, scope: !4960, file: !67, line: 660, type: !176)
!4966 = !DILocation(line: 660, column: 62, scope: !4960)
!4967 = !DILocation(line: 662, column: 21, scope: !4960)
!4968 = !DILocation(line: 662, column: 2, scope: !4960)
!4969 = !DILocation(line: 662, column: 7, scope: !4960)
!4970 = !DILocation(line: 662, column: 19, scope: !4960)
!4971 = !DILocation(line: 663, column: 1, scope: !4960)
!4972 = distinct !DISubprogram(name: "kobject_name", scope: !305, file: !305, line: 88, type: !4973, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!281, !4975}
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!4977 = !DILocalVariable(name: "kobj", arg: 1, scope: !4972, file: !305, line: 88, type: !4975)
!4978 = !DILocation(line: 88, column: 62, scope: !4972)
!4979 = !DILocation(line: 90, column: 9, scope: !4972)
!4980 = !DILocation(line: 90, column: 15, scope: !4972)
!4981 = !DILocation(line: 90, column: 2, scope: !4972)
!4982 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4983, file: !4983, line: 666, type: !4984, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4983 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!175}
!4986 = !DILocalVariable(name: "f", scope: !4982, file: !4983, line: 668, type: !175)
!4987 = !DILocation(line: 668, column: 16, scope: !4982)
!4988 = !DILocation(line: 670, column: 6, scope: !4982)
!4989 = !DILocation(line: 670, column: 4, scope: !4982)
!4990 = !DILocation(line: 671, column: 2, scope: !4982)
!4991 = !DILocation(line: 672, column: 9, scope: !4982)
!4992 = !DILocation(line: 672, column: 2, scope: !4982)
!4993 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4983, file: !4983, line: 646, type: !4984, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!4994 = !DILocalVariable(name: "__ret", scope: !4995, file: !4983, line: 648, type: !175)
!4995 = distinct !DILexicalBlock(scope: !4993, file: !4983, line: 648, column: 9)
!4996 = !DILocation(line: 648, column: 9, scope: !4995)
!4997 = !DILocalVariable(name: "__edi", scope: !4995, file: !4983, line: 648, type: !175)
!4998 = !DILocalVariable(name: "__esi", scope: !4995, file: !4983, line: 648, type: !175)
!4999 = !DILocalVariable(name: "__edx", scope: !4995, file: !4983, line: 648, type: !175)
!5000 = !DILocalVariable(name: "__ecx", scope: !4995, file: !4983, line: 648, type: !175)
!5001 = !DILocalVariable(name: "__eax", scope: !4995, file: !4983, line: 648, type: !175)
!5002 = !DILocation(line: 648, column: 9, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !4983, line: 648, column: 9)
!5004 = distinct !DILexicalBlock(scope: !4995, file: !4983, line: 648, column: 9)
!5005 = !{i32 -2145780829, i32 -2145778514, i32 -2145778280, i32 -2145778229, i32 -2145778201, i32 -2145778176, i32 -2145778492, i32 -2145778479, i32 -2145778041, i32 -2145777922, i32 -2145778387, i32 -2145778360, i32 -2145778332, i32 -2145778302}
!5006 = !DILocalVariable(name: "__mask", scope: !5007, file: !4983, line: 648, type: !175)
!5007 = distinct !DILexicalBlock(scope: !5003, file: !4983, line: 648, column: 9)
!5008 = !DILocation(line: 648, column: 9, scope: !5007)
!5009 = !DILocation(line: 648, column: 9, scope: !5004)
!5010 = !DILocation(line: 648, column: 2, scope: !4993)
!5011 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4983, file: !4983, line: 656, type: !222, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5012 = !DILocalVariable(name: "__edi", scope: !5013, file: !4983, line: 658, type: !175)
!5013 = distinct !DILexicalBlock(scope: !5011, file: !4983, line: 658, column: 2)
!5014 = !DILocation(line: 658, column: 2, scope: !5013)
!5015 = !DILocalVariable(name: "__esi", scope: !5013, file: !4983, line: 658, type: !175)
!5016 = !DILocalVariable(name: "__edx", scope: !5013, file: !4983, line: 658, type: !175)
!5017 = !DILocalVariable(name: "__ecx", scope: !5013, file: !4983, line: 658, type: !175)
!5018 = !DILocalVariable(name: "__eax", scope: !5013, file: !4983, line: 658, type: !175)
!5019 = !{i32 -2145773735, i32 -2145773003, i32 -2145772769, i32 -2145772718, i32 -2145772690, i32 -2145772665, i32 -2145772981, i32 -2145772968, i32 -2145772530, i32 -2145772411, i32 -2145772876, i32 -2145772849, i32 -2145772821, i32 -2145772791}
!5020 = !DILocation(line: 659, column: 1, scope: !5011)
!5021 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4983, file: !4983, line: 651, type: !4040, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5022 = !DILocalVariable(name: "f", arg: 1, scope: !5021, file: !4983, line: 651, type: !175)
!5023 = !DILocation(line: 651, column: 65, scope: !5021)
!5024 = !DILocalVariable(name: "__edi", scope: !5025, file: !4983, line: 653, type: !175)
!5025 = distinct !DILexicalBlock(scope: !5021, file: !4983, line: 653, column: 2)
!5026 = !DILocation(line: 653, column: 2, scope: !5025)
!5027 = !DILocalVariable(name: "__esi", scope: !5025, file: !4983, line: 653, type: !175)
!5028 = !DILocalVariable(name: "__edx", scope: !5025, file: !4983, line: 653, type: !175)
!5029 = !DILocalVariable(name: "__ecx", scope: !5025, file: !4983, line: 653, type: !175)
!5030 = !DILocalVariable(name: "__eax", scope: !5025, file: !4983, line: 653, type: !175)
!5031 = !{i32 -2145776362, i32 -2145775612, i32 -2145775378, i32 -2145775327, i32 -2145775299, i32 -2145775274, i32 -2145775590, i32 -2145775577, i32 -2145775139, i32 -2145775020, i32 -2145775485, i32 -2145775458, i32 -2145775430, i32 -2145775400}
!5032 = !DILocation(line: 654, column: 1, scope: !5021)
!5033 = distinct !DISubprogram(name: "hv_kbd_handle_received_packet", scope: !3, file: !3, line: 182, type: !5034, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{null, !3862, !4785, !490, !494}
!5036 = !DILocalVariable(name: "hv_dev", arg: 1, scope: !5033, file: !3, line: 182, type: !3862)
!5037 = !DILocation(line: 182, column: 61, scope: !5033)
!5038 = !DILocalVariable(name: "desc", arg: 2, scope: !5033, file: !3, line: 183, type: !4785)
!5039 = !DILocation(line: 183, column: 36, scope: !5033)
!5040 = !DILocalVariable(name: "bytes_recvd", arg: 3, scope: !5033, file: !3, line: 184, type: !490)
!5041 = !DILocation(line: 184, column: 12, scope: !5033)
!5042 = !DILocalVariable(name: "req_id", arg: 4, scope: !5033, file: !3, line: 185, type: !494)
!5043 = !DILocation(line: 185, column: 12, scope: !5033)
!5044 = !DILocalVariable(name: "msg", scope: !5033, file: !3, line: 187, type: !5045)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "synth_kbd_msg", file: !3, line: 41, size: 32, elements: !5047)
!5047 = !{!5048, !5049}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5046, file: !3, line: 42, baseType: !188, size: 32)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5046, file: !3, line: 43, baseType: !5050, offset: 32)
!5050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, elements: !2381)
!5051 = !DILocation(line: 187, column: 24, scope: !5033)
!5052 = !DILocalVariable(name: "msg_sz", scope: !5033, file: !3, line: 188, type: !490)
!5053 = !DILocation(line: 188, column: 6, scope: !5033)
!5054 = !DILocation(line: 190, column: 10, scope: !5033)
!5055 = !DILocation(line: 190, column: 16, scope: !5033)
!5056 = !DILocation(line: 190, column: 2, scope: !5033)
!5057 = !DILocation(line: 192, column: 3, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 190, column: 22)
!5059 = !DILocation(line: 214, column: 12, scope: !5058)
!5060 = !DILocation(line: 214, column: 27, scope: !5058)
!5061 = !DILocation(line: 214, column: 33, scope: !5058)
!5062 = !DILocation(line: 214, column: 41, scope: !5058)
!5063 = !DILocation(line: 214, column: 24, scope: !5058)
!5064 = !DILocation(line: 214, column: 10, scope: !5058)
!5065 = !DILocation(line: 215, column: 7, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 215, column: 7)
!5067 = !DILocation(line: 215, column: 14, scope: !5066)
!5068 = !DILocation(line: 215, column: 7, scope: !5058)
!5069 = !DILocation(line: 220, column: 4, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 215, column: 51)
!5071 = !DILocation(line: 223, column: 4, scope: !5070)
!5072 = !DILocation(line: 226, column: 17, scope: !5058)
!5073 = !DILocation(line: 226, column: 9, scope: !5058)
!5074 = !DILocation(line: 226, column: 25, scope: !5058)
!5075 = !DILocation(line: 226, column: 31, scope: !5058)
!5076 = !DILocation(line: 226, column: 39, scope: !5058)
!5077 = !DILocation(line: 226, column: 22, scope: !5058)
!5078 = !DILocation(line: 226, column: 7, scope: !5058)
!5079 = !DILocation(line: 227, column: 21, scope: !5058)
!5080 = !DILocation(line: 227, column: 29, scope: !5058)
!5081 = !DILocation(line: 227, column: 34, scope: !5058)
!5082 = !DILocation(line: 227, column: 3, scope: !5058)
!5083 = !DILocation(line: 228, column: 3, scope: !5058)
!5084 = !DILocation(line: 231, column: 3, scope: !5058)
!5085 = !DILocation(line: 234, column: 3, scope: !5058)
!5086 = !DILocation(line: 236, column: 1, scope: !5033)
!5087 = distinct !DISubprogram(name: "hv_pkt_iter_next", scope: !94, file: !94, line: 1636, type: !5088, scopeLine: 1638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!4785, !3872, !5090}
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4786)
!5092 = !DILocalVariable(name: "channel", arg: 1, scope: !5087, file: !94, line: 1636, type: !3872)
!5093 = !DILocation(line: 1636, column: 40, scope: !5087)
!5094 = !DILocalVariable(name: "pkt", arg: 2, scope: !5087, file: !94, line: 1637, type: !5090)
!5095 = !DILocation(line: 1637, column: 38, scope: !5087)
!5096 = !DILocalVariable(name: "nxt", scope: !5087, file: !94, line: 1639, type: !4785)
!5097 = !DILocation(line: 1639, column: 30, scope: !5087)
!5098 = !DILocation(line: 1641, column: 27, scope: !5087)
!5099 = !DILocation(line: 1641, column: 36, scope: !5087)
!5100 = !DILocation(line: 1641, column: 8, scope: !5087)
!5101 = !DILocation(line: 1641, column: 6, scope: !5087)
!5102 = !DILocation(line: 1642, column: 7, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5087, file: !94, line: 1642, column: 6)
!5104 = !DILocation(line: 1642, column: 6, scope: !5087)
!5105 = !DILocation(line: 1643, column: 21, scope: !5103)
!5106 = !DILocation(line: 1643, column: 3, scope: !5103)
!5107 = !DILocation(line: 1645, column: 9, scope: !5087)
!5108 = !DILocation(line: 1645, column: 2, scope: !5087)
!5109 = distinct !DISubprogram(name: "hv_kbd_on_receive", scope: !3, file: !3, line: 100, type: !5110, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{null, !3862, !5045, !490}
!5112 = !DILocation(line: 407, column: 64, scope: !4661, inlinedAt: !5113)
!5113 = distinct !DILocation(line: 164, column: 3, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 110, column: 20)
!5115 = !DILocation(line: 407, column: 84, scope: !4661, inlinedAt: !5113)
!5116 = !DILocation(line: 327, column: 67, scope: !4106, inlinedAt: !5117)
!5117 = distinct !DILocation(line: 150, column: 3, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 150, column: 3)
!5119 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 150, column: 3)
!5120 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 150, column: 3)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 150, column: 3)
!5122 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 150, column: 3)
!5123 = !DILocalVariable(name: "hv_dev", arg: 1, scope: !5109, file: !3, line: 100, type: !3862)
!5124 = !DILocation(line: 100, column: 49, scope: !5109)
!5125 = !DILocalVariable(name: "msg", arg: 2, scope: !5109, file: !3, line: 101, type: !5045)
!5126 = !DILocation(line: 101, column: 32, scope: !5109)
!5127 = !DILocalVariable(name: "msg_length", arg: 3, scope: !5109, file: !3, line: 101, type: !490)
!5128 = !DILocation(line: 101, column: 41, scope: !5109)
!5129 = !DILocalVariable(name: "kbd_dev", scope: !5109, file: !3, line: 103, type: !4119)
!5130 = !DILocation(line: 103, column: 21, scope: !5109)
!5131 = !DILocation(line: 103, column: 46, scope: !5109)
!5132 = !DILocation(line: 103, column: 31, scope: !5109)
!5133 = !DILocalVariable(name: "ks_msg", scope: !5109, file: !3, line: 104, type: !184)
!5134 = !DILocation(line: 104, column: 30, scope: !5109)
!5135 = !DILocalVariable(name: "flags", scope: !5109, file: !3, line: 105, type: !175)
!5136 = !DILocation(line: 105, column: 16, scope: !5109)
!5137 = !DILocalVariable(name: "msg_type", scope: !5109, file: !3, line: 106, type: !490)
!5138 = !DILocation(line: 106, column: 6, scope: !5109)
!5139 = !DILocation(line: 106, column: 17, scope: !5109)
!5140 = !DILocalVariable(name: "info", scope: !5109, file: !3, line: 107, type: !490)
!5141 = !DILocation(line: 107, column: 6, scope: !5109)
!5142 = !DILocalVariable(name: "scan_code", scope: !5109, file: !3, line: 108, type: !926)
!5143 = !DILocation(line: 108, column: 6, scope: !5109)
!5144 = !DILocation(line: 110, column: 10, scope: !5109)
!5145 = !DILocation(line: 110, column: 2, scope: !5109)
!5146 = !DILocation(line: 118, column: 7, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 118, column: 7)
!5148 = !DILocation(line: 118, column: 18, scope: !5147)
!5149 = !DILocation(line: 118, column: 7, scope: !5114)
!5150 = !DILocation(line: 119, column: 4, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 118, column: 64)
!5152 = !DILocation(line: 122, column: 4, scope: !5151)
!5153 = !DILocation(line: 125, column: 11, scope: !5114)
!5154 = !DILocation(line: 125, column: 20, scope: !5114)
!5155 = !DILocation(line: 125, column: 3, scope: !5114)
!5156 = !DILocation(line: 125, column: 35, scope: !5114)
!5157 = !DILocation(line: 127, column: 13, scope: !5114)
!5158 = !DILocation(line: 127, column: 22, scope: !5114)
!5159 = !DILocation(line: 127, column: 3, scope: !5114)
!5160 = !DILocation(line: 128, column: 3, scope: !5114)
!5161 = !DILocation(line: 137, column: 7, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 137, column: 7)
!5163 = !DILocation(line: 137, column: 18, scope: !5162)
!5164 = !DILocation(line: 137, column: 7, scope: !5114)
!5165 = !DILocation(line: 138, column: 4, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 137, column: 57)
!5167 = !DILocation(line: 141, column: 4, scope: !5166)
!5168 = !DILocation(line: 144, column: 42, scope: !5114)
!5169 = !DILocation(line: 144, column: 12, scope: !5114)
!5170 = !DILocation(line: 144, column: 10, scope: !5114)
!5171 = !DILocation(line: 145, column: 10, scope: !5114)
!5172 = !DILocation(line: 145, column: 8, scope: !5114)
!5173 = !DILocation(line: 150, column: 3, scope: !5114)
!5174 = !DILocation(line: 150, column: 3, scope: !5122)
!5175 = !DILocalVariable(name: "__dummy", scope: !5176, file: !3, line: 150, type: !175)
!5176 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 150, column: 3)
!5177 = !DILocation(line: 150, column: 3, scope: !5176)
!5178 = !DILocalVariable(name: "__dummy2", scope: !5176, file: !3, line: 150, type: !175)
!5179 = !DILocation(line: 150, column: 3, scope: !5121)
!5180 = !DILocation(line: 150, column: 3, scope: !5120)
!5181 = !DILocation(line: 150, column: 3, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 150, column: 3)
!5183 = !DILocalVariable(name: "__dummy", scope: !5184, file: !3, line: 150, type: !175)
!5184 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 150, column: 3)
!5185 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 150, column: 3)
!5186 = !DILocation(line: 150, column: 3, scope: !5184)
!5187 = !DILocalVariable(name: "__dummy2", scope: !5184, file: !3, line: 150, type: !175)
!5188 = !DILocation(line: 150, column: 3, scope: !5185)
!5189 = !DILocation(line: 150, column: 3, scope: !5119)
!5190 = !{i32 -2141975132}
!5191 = !DILocation(line: 150, column: 3, scope: !5118)
!5192 = !DILocation(line: 329, column: 10, scope: !4106, inlinedAt: !5117)
!5193 = !DILocation(line: 329, column: 16, scope: !4106, inlinedAt: !5117)
!5194 = !DILocation(line: 151, column: 7, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 151, column: 7)
!5196 = !DILocation(line: 151, column: 16, scope: !5195)
!5197 = !DILocation(line: 151, column: 7, scope: !5114)
!5198 = !DILocation(line: 152, column: 8, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 152, column: 8)
!5200 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 151, column: 25)
!5201 = !DILocation(line: 152, column: 13, scope: !5199)
!5202 = !DILocation(line: 152, column: 8, scope: !5200)
!5203 = !DILocation(line: 153, column: 21, scope: !5199)
!5204 = !DILocation(line: 153, column: 30, scope: !5199)
!5205 = !DILocation(line: 153, column: 5, scope: !5199)
!5206 = !DILocation(line: 155, column: 8, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 155, column: 8)
!5208 = !DILocation(line: 155, column: 13, scope: !5207)
!5209 = !DILocation(line: 155, column: 8, scope: !5200)
!5210 = !DILocation(line: 156, column: 21, scope: !5207)
!5211 = !DILocation(line: 156, column: 30, scope: !5207)
!5212 = !DILocation(line: 156, column: 5, scope: !5207)
!5213 = !DILocation(line: 158, column: 16, scope: !5200)
!5214 = !DILocation(line: 158, column: 14, scope: !5200)
!5215 = !DILocation(line: 159, column: 8, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 159, column: 8)
!5217 = !DILocation(line: 159, column: 13, scope: !5216)
!5218 = !DILocation(line: 159, column: 8, scope: !5200)
!5219 = !DILocation(line: 160, column: 15, scope: !5216)
!5220 = !DILocation(line: 160, column: 5, scope: !5216)
!5221 = !DILocation(line: 162, column: 20, scope: !5200)
!5222 = !DILocation(line: 162, column: 29, scope: !5200)
!5223 = !DILocation(line: 162, column: 39, scope: !5200)
!5224 = !DILocation(line: 162, column: 4, scope: !5200)
!5225 = !DILocation(line: 163, column: 3, scope: !5200)
!5226 = !DILocation(line: 164, column: 27, scope: !5114)
!5227 = !DILocation(line: 164, column: 36, scope: !5114)
!5228 = !DILocation(line: 164, column: 42, scope: !5114)
!5229 = !DILocation(line: 409, column: 2, scope: !4711, inlinedAt: !5113)
!5230 = !DILocation(line: 409, column: 2, scope: !4716, inlinedAt: !5113)
!5231 = !DILocation(line: 409, column: 2, scope: !4717, inlinedAt: !5113)
!5232 = !DILocation(line: 409, column: 2, scope: !4724, inlinedAt: !5113)
!5233 = !DILocation(line: 409, column: 2, scope: !4727, inlinedAt: !5113)
!5234 = !DILocation(line: 171, column: 9, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 171, column: 7)
!5236 = !DILocation(line: 171, column: 14, scope: !5235)
!5237 = !DILocation(line: 171, column: 7, scope: !5114)
!5238 = !DILocation(line: 172, column: 26, scope: !5235)
!5239 = !DILocation(line: 172, column: 34, scope: !5235)
!5240 = !DILocation(line: 172, column: 4, scope: !5235)
!5241 = !DILocation(line: 174, column: 3, scope: !5114)
!5242 = !DILocation(line: 177, column: 3, scope: !5114)
!5243 = !DILocation(line: 179, column: 2, scope: !5114)
!5244 = !DILocation(line: 180, column: 1, scope: !5109)
!5245 = distinct !DISubprogram(name: "hv_get_drvdata", scope: !94, file: !94, line: 1255, type: !5246, scopeLine: 1256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!176, !3862}
!5248 = !DILocalVariable(name: "dev", arg: 1, scope: !5245, file: !94, line: 1255, type: !3862)
!5249 = !DILocation(line: 1255, column: 54, scope: !5245)
!5250 = !DILocation(line: 1257, column: 26, scope: !5245)
!5251 = !DILocation(line: 1257, column: 31, scope: !5245)
!5252 = !DILocation(line: 1257, column: 9, scope: !5245)
!5253 = !DILocation(line: 1257, column: 2, scope: !5245)
!5254 = distinct !DISubprogram(name: "pm_wakeup_hard_event", scope: !3516, file: !3516, line: 205, type: !3443, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5255 = !DILocalVariable(name: "dev", arg: 1, scope: !5254, file: !3516, line: 205, type: !300)
!5256 = !DILocation(line: 205, column: 56, scope: !5254)
!5257 = !DILocation(line: 207, column: 29, scope: !5254)
!5258 = !DILocation(line: 207, column: 9, scope: !5254)
!5259 = !DILocation(line: 207, column: 2, scope: !5254)
!5260 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5261, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!176, !3672}
!5263 = !DILocalVariable(name: "dev", arg: 1, scope: !5260, file: !67, line: 655, type: !3672)
!5264 = !DILocation(line: 655, column: 58, scope: !5260)
!5265 = !DILocation(line: 657, column: 9, scope: !5260)
!5266 = !DILocation(line: 657, column: 14, scope: !5260)
!5267 = !DILocation(line: 657, column: 2, scope: !5260)
!5268 = distinct !DISubprogram(name: "reinit_completion", scope: !249, file: !249, line: 98, type: !250, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !269)
!5269 = !DILocalVariable(name: "x", arg: 1, scope: !5268, file: !249, line: 98, type: !252)
!5270 = !DILocation(line: 98, column: 57, scope: !5268)
!5271 = !DILocation(line: 100, column: 2, scope: !5268)
!5272 = !DILocation(line: 100, column: 5, scope: !5268)
!5273 = !DILocation(line: 100, column: 10, scope: !5268)
!5274 = !DILocation(line: 101, column: 1, scope: !5268)
