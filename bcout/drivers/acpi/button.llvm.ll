; ModuleID = '../bcout/drivers/acpi/button.llvm.bc'
source_filename = "drivers/acpi/button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_acpi_button_driver_init6:\09\09\09"
module asm ".long\09acpi_button_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.70 }
%struct.anon.70 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.72, i32, i32, %struct.list_head }
%struct.anon.72 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_irq = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.73, i8, i8, i32 }
%struct.anon.73 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.page = type { i64, %union.anon.3, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.vm_operations_struct = type opaque
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
%struct.kgid_t = type { i32 }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.acpi_gpio_mapping = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
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
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dmi_system_id = type { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.kmem_cache = type opaque
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_button = type { i32, %struct.input_dev*, [32 x i8], i64, i32, i64, i8, i8 }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.74 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.74 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }

@__UNIQUE_ID_author214 = internal constant [31 x i8] c"button.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description215 = internal constant [38 x i8] c"button.description=ACPI Button Driver\00", section ".modinfo", align 1, !dbg !3999
@__UNIQUE_ID_file216 = internal constant [32 x i8] c"button.file=drivers/acpi/button\00", section ".modinfo", align 1, !dbg !4004
@__UNIQUE_ID_license217 = internal constant [19 x i8] c"button.license=GPL\00", section ".modinfo", align 1, !dbg !4007
@__param_str_lid_report_interval = internal constant [27 x i8] c"button.lid_report_interval\00", align 16, !dbg !4090
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@lid_report_interval = internal global i64 500, section ".data..read_mostly", align 8, !dbg !4095
@__param_lid_report_interval = internal constant %struct.kernel_param { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__param_str_lid_report_interval, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @lid_report_interval to i8*) } }, section "__param", align 8, !dbg !4012
@__UNIQUE_ID_lid_report_intervaltype218 = internal constant [42 x i8] c"button.parmtype=lid_report_interval:ulong\00", section ".modinfo", align 1, !dbg !4064
@__UNIQUE_ID_lid_report_interval219 = internal constant [69 x i8] c"button.parm=lid_report_interval:Interval (ms) between lid key events\00", section ".modinfo", align 1, !dbg !4069
@lid_device = internal global %struct.acpi_device* null, align 8, !dbg !4088
@__param_str_lid_init_state = internal constant [22 x i8] c"button.lid_init_state\00", align 16, !dbg !4097
@__param_ops_lid_init_state = internal constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_lid_init_state, i32 (i8*, %struct.kernel_param*)* @param_get_lid_init_state, void (i8*)* null }, align 8, !dbg !4102
@__param_lid_init_state = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_lid_init_state, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @__param_ops_lid_init_state, i16 420, i8 -1, i8 0, %union.anon zeroinitializer }, section "__param", align 8, !dbg !4074
@__UNIQUE_ID_lid_init_state222 = internal constant [68 x i8] c"button.parm=lid_init_state:Behavior for reporting LID initial state\00", section ".modinfo", align 1, !dbg !4076
@__UNIQUE_ID___addressable_acpi_button_driver_init223 = internal global i8* bitcast (i32 ()* @acpi_button_driver_init to i8*), section ".discard.addressable", align 8, !dbg !4081
@acpi_button_driver = internal global %struct.acpi_driver { [80 x i8] c"button\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"button\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.acpi_device_id* getelementptr inbounds ([6 x %struct.acpi_device_id], [6 x %struct.acpi_device_id]* @button_device_ids, i32 0, i32 0), i32 0, %struct.acpi_device_ops { i32 (%struct.acpi_device*)* @acpi_button_add, i32 (%struct.acpi_device*)* @acpi_button_remove, void (%struct.acpi_device*, i32)* @acpi_button_notify }, %struct.device_driver { i8* null, %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @acpi_button_pm, void (%struct.device*)* null, %struct.driver_private* null }, %struct.module* null }, align 8, !dbg !4133
@__exitcall_acpi_button_driver_exit = internal global void ()* @acpi_button_driver_exit, section ".exitcall.exit", align 8, !dbg !4083
@.str = private unnamed_addr constant [5 x i8] c"_LID\00", align 1
@lid_init_state_str = internal constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)], align 16, !dbg !4104
@lid_init_state = internal global i64 -1, align 8, !dbg !4108
@.str.1 = private unnamed_addr constant [47 x i8] c"\016ACPI: button: Initial lid state set to '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@dmi_lid_quirks = internal constant [5 x %struct.dmi_system_id] [%struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Insyde\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"T701\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"BYT70A.YNCHENG.WIN.007\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], i8* inttoptr (i64 3 to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MEDION\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"E2215T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* inttoptr (i64 1 to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MEDION\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"E2228T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* inttoptr (i64 1 to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Razer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Razer Blade Stealth 13 Late 2019\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* inttoptr (i64 1 to i8*) }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !4110
@acpi_disabled = external dso_local global i32, align 4
@button_device_ids = internal constant [6 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"PNP0C0D\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"PNP0C0E\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"LNXSLPBN\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"PNP0C0C\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"LNXPWRBN\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !4135
@acpi_button_pm = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @acpi_button_suspend, i32 (%struct.device*)* @acpi_button_resume, i32 (%struct.device*)* @acpi_button_suspend, i32 (%struct.device*)* @acpi_button_resume, i32 (%struct.device*)* @acpi_button_suspend, i32 (%struct.device*)* @acpi_button_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !4147
@.str.8 = private unnamed_addr constant [8 x i8] c"PNP0C0D\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"PNP0C0C\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"LNXPWRBN\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Power Button\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"PNP0C0E\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"LNXSLPBN\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Sleep Button\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Lid Switch\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"lid\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"\013ACPI: Unsupported hid [%s]\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"%s/button/input0\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"\016ACPI: %s [%s]\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.24 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@acpi_lid_notify_state.__print_once = internal global i8 0, section ".data.once", align 1, !dbg !4138
@.str.25 = private unnamed_addr constant [60 x i8] c"\014ACPI: button: The lid device is not compliant to SW_LID.\0A\00", align 1
@acpi_button_dir = internal global %struct.proc_dir_entry* null, align 8, !dbg !4143
@acpi_lid_dir = internal global %struct.proc_dir_entry* null, align 8, !dbg !4145
@.str.26 = private unnamed_addr constant [41 x i8] c"\013ACPI: More than one Lid device found!\0A\00", align 1
@acpi_root_dir = external dso_local global %struct.proc_dir_entry*, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"state:      %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@llvm.used = appending global [12 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_author214, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_description215, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_file216, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license217, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_lid_report_interval to i8*), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_lid_report_intervaltype218, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_lid_report_interval219, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_lid_init_state to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_lid_init_state222, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_acpi_button_driver_init223 to i8*), i8* bitcast (void ()* @acpi_button_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_acpi_button_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_lid_open() #0 !dbg !4157 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.acpi_device*, %struct.acpi_device** @lid_device, align 8, !dbg !4160
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !4160
  br i1 %tobool, label %if.end, label %if.then, !dbg !4162

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4163
  br label %return, !dbg !4163

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** @lid_device, align 8, !dbg !4164
  %call = call i32 @acpi_lid_evaluate_state(%struct.acpi_device* %1) #8, !dbg !4165
  store i32 %call, i32* %retval, align 4, !dbg !4166
  br label %return, !dbg !4166

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !4167
  ret i32 %2, !dbg !4167
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_lid_evaluate_state(%struct.acpi_device* %device) #0 !dbg !4168 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %lid_state = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !4169, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.declare(metadata i64* %lid_state, metadata !4171, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4173, metadata !DIExpression()), !dbg !4175
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4176
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 1, !dbg !4177
  %1 = load i8*, i8** %handle, align 8, !dbg !4177
  %call = call i32 @acpi_evaluate_integer(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* null, i64* %lid_state) #8, !dbg !4178
  store i32 %call, i32* %status, align 4, !dbg !4179
  %2 = load i32, i32* %status, align 4, !dbg !4180
  %tobool = icmp ne i32 %2, 0, !dbg !4180
  br i1 %tobool, label %if.then, label %if.end, !dbg !4182

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4183
  br label %return, !dbg !4183

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %lid_state, align 8, !dbg !4184
  %tobool1 = icmp ne i64 %3, 0, !dbg !4184
  %4 = zext i1 %tobool1 to i64, !dbg !4184
  %cond = select i1 %tobool1, i32 1, i32 0, !dbg !4184
  store i32 %cond, i32* %retval, align 4, !dbg !4185
  br label %return, !dbg !4185

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !4186
  ret i32 %5, !dbg !4186
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_driver_init() #1 section ".init.text" !dbg !4187 {
entry:
  %call = call i32 @acpi_button_register_driver(%struct.acpi_driver* @acpi_button_driver) #8, !dbg !4188
  ret i32 %call, !dbg !4188
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_button_driver_exit() #1 section ".exit.text" !dbg !4189 {
entry:
  call void @acpi_button_unregister_driver(%struct.acpi_driver* @acpi_button_driver) #8, !dbg !4190
  ret void, !dbg !4190
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_button_unregister_driver(%struct.acpi_driver* %driver) #0 !dbg !4191 {
entry:
  %driver.addr = alloca %struct.acpi_driver*, align 8
  store %struct.acpi_driver* %driver, %struct.acpi_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_driver** %driver.addr, metadata !4194, metadata !DIExpression()), !dbg !4195
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !4196
  %tobool = icmp ne i32 %0, 0, !dbg !4196
  br i1 %tobool, label %if.end, label %if.then, !dbg !4198

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !4199
  call void @acpi_bus_unregister_driver(%struct.acpi_driver* %1) #8, !dbg !4200
  br label %if.end, !dbg !4200

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4201
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @param_set_lid_init_state(i8* %val, %struct.kernel_param* %kp) #0 !dbg !4202 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %kp.addr = alloca %struct.kernel_param*, align 8
  %i = alloca i32, align 4
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4203, metadata !DIExpression()), !dbg !4204
  store %struct.kernel_param* %kp, %struct.kernel_param** %kp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kernel_param** %kp.addr, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4207, metadata !DIExpression()), !dbg !4208
  %0 = load i8*, i8** %val.addr, align 8, !dbg !4209
  %call = call i32 @__sysfs_match_string(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @lid_init_state_str, i64 0, i64 0), i64 4, i8* %0) #8, !dbg !4209
  store i32 %call, i32* %i, align 4, !dbg !4210
  %1 = load i32, i32* %i, align 4, !dbg !4211
  %cmp = icmp slt i32 %1, 0, !dbg !4213
  br i1 %cmp, label %if.then, label %if.end, !dbg !4214

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i, align 4, !dbg !4215
  store i32 %2, i32* %retval, align 4, !dbg !4216
  br label %return, !dbg !4216

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %i, align 4, !dbg !4217
  %conv = sext i32 %3 to i64, !dbg !4217
  store i64 %conv, i64* @lid_init_state, align 8, !dbg !4218
  %4 = load i32, i32* %i, align 4, !dbg !4219
  %idxprom = sext i32 %4 to i64, !dbg !4219
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @lid_init_state_str, i64 0, i64 %idxprom, !dbg !4219
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !4219
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %5) #9, !dbg !4219
  store i32 0, i32* %retval, align 4, !dbg !4220
  br label %return, !dbg !4220

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4221
  ret i32 %6, !dbg !4221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @param_get_lid_init_state(i8* %buf, %struct.kernel_param* %kp) #0 !dbg !4222 {
entry:
  %buf.addr = alloca i8*, align 8
  %kp.addr = alloca %struct.kernel_param*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  store %struct.kernel_param* %kp, %struct.kernel_param** %kp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kernel_param** %kp.addr, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4227, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.declare(metadata i32* %c, metadata !4229, metadata !DIExpression()), !dbg !4230
  store i32 0, i32* %c, align 4, !dbg !4230
  store i32 0, i32* %i, align 4, !dbg !4231
  br label %for.cond, !dbg !4233

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4234
  %conv = sext i32 %0 to i64, !dbg !4234
  %cmp = icmp ult i64 %conv, 4, !dbg !4236
  br i1 %cmp, label %for.body, label %for.end, !dbg !4237

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !4238
  %conv2 = sext i32 %1 to i64, !dbg !4238
  %2 = load i64, i64* @lid_init_state, align 8, !dbg !4240
  %cmp3 = icmp eq i64 %conv2, %2, !dbg !4241
  br i1 %cmp3, label %if.then, label %if.else, !dbg !4242

if.then:                                          ; preds = %for.body
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4243
  %4 = load i32, i32* %c, align 4, !dbg !4244
  %idx.ext = sext i32 %4 to i64, !dbg !4245
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext, !dbg !4245
  %5 = load i32, i32* %i, align 4, !dbg !4246
  %idxprom = sext i32 %5 to i64, !dbg !4247
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @lid_init_state_str, i64 0, i64 %idxprom, !dbg !4247
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !4247
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %6) #8, !dbg !4248
  %7 = load i32, i32* %c, align 4, !dbg !4249
  %add = add i32 %7, %call, !dbg !4249
  store i32 %add, i32* %c, align 4, !dbg !4249
  br label %if.end, !dbg !4250

if.else:                                          ; preds = %for.body
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4251
  %9 = load i32, i32* %c, align 4, !dbg !4252
  %idx.ext5 = sext i32 %9 to i64, !dbg !4253
  %add.ptr6 = getelementptr i8, i8* %8, i64 %idx.ext5, !dbg !4253
  %10 = load i32, i32* %i, align 4, !dbg !4254
  %idxprom7 = sext i32 %10 to i64, !dbg !4255
  %arrayidx8 = getelementptr [4 x i8*], [4 x i8*]* @lid_init_state_str, i64 0, i64 %idxprom7, !dbg !4255
  %11 = load i8*, i8** %arrayidx8, align 8, !dbg !4255
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %11) #8, !dbg !4256
  %12 = load i32, i32* %c, align 4, !dbg !4257
  %add10 = add i32 %12, %call9, !dbg !4257
  store i32 %add10, i32* %c, align 4, !dbg !4257
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !4240

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !dbg !4258
  %inc = add i32 %13, 1, !dbg !4258
  store i32 %inc, i32* %i, align 4, !dbg !4258
  br label %for.cond, !dbg !4259, !llvm.loop !4260

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !4262
  %15 = load i32, i32* %c, align 4, !dbg !4263
  %sub = sub i32 %15, 1, !dbg !4264
  %idxprom11 = sext i32 %sub to i64, !dbg !4262
  %arrayidx12 = getelementptr i8, i8* %14, i64 %idxprom11, !dbg !4262
  store i8 10, i8* %arrayidx12, align 1, !dbg !4265
  %16 = load i32, i32* %c, align 4, !dbg !4266
  ret i32 %16, !dbg !4267
}

; Function Attrs: noredzone
declare dso_local i32 @__sysfs_match_string(i8**, i64, i8*) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_register_driver(%struct.acpi_driver* %driver) #0 !dbg !4268 {
entry:
  %retval = alloca i32, align 4
  %driver.addr = alloca %struct.acpi_driver*, align 8
  %dmi_id = alloca %struct.dmi_system_id*, align 8
  store %struct.acpi_driver* %driver, %struct.acpi_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_driver** %driver.addr, metadata !4271, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %dmi_id, metadata !4273, metadata !DIExpression()), !dbg !4274
  %0 = load i64, i64* @lid_init_state, align 8, !dbg !4275
  %cmp = icmp eq i64 %0, -1, !dbg !4277
  br i1 %cmp, label %if.then, label %if.end2, !dbg !4278

if.then:                                          ; preds = %entry
  %call = call %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id* getelementptr inbounds ([5 x %struct.dmi_system_id], [5 x %struct.dmi_system_id]* @dmi_lid_quirks, i64 0, i64 0)) #8, !dbg !4279
  store %struct.dmi_system_id* %call, %struct.dmi_system_id** %dmi_id, align 8, !dbg !4281
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %dmi_id, align 8, !dbg !4282
  %tobool = icmp ne %struct.dmi_system_id* %1, null, !dbg !4282
  br i1 %tobool, label %if.then1, label %if.else, !dbg !4284

if.then1:                                         ; preds = %if.then
  %2 = load %struct.dmi_system_id*, %struct.dmi_system_id** %dmi_id, align 8, !dbg !4285
  %driver_data = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %2, i32 0, i32 3, !dbg !4286
  %3 = load i8*, i8** %driver_data, align 8, !dbg !4286
  %4 = ptrtoint i8* %3 to i64, !dbg !4287
  store i64 %4, i64* @lid_init_state, align 8, !dbg !4288
  br label %if.end, !dbg !4289

if.else:                                          ; preds = %if.then
  store i64 2, i64* @lid_init_state, align 8, !dbg !4290
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end2, !dbg !4291

if.end2:                                          ; preds = %if.end, %entry
  %5 = load i32, i32* @acpi_disabled, align 4, !dbg !4292
  %tobool3 = icmp ne i32 %5, 0, !dbg !4292
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4294

if.then4:                                         ; preds = %if.end2
  store i32 0, i32* %retval, align 4, !dbg !4295
  br label %return, !dbg !4295

if.end5:                                          ; preds = %if.end2
  %6 = load %struct.acpi_driver*, %struct.acpi_driver** %driver.addr, align 8, !dbg !4296
  %call6 = call i32 @acpi_bus_register_driver(%struct.acpi_driver* %6) #8, !dbg !4297
  store i32 %call6, i32* %retval, align 4, !dbg !4298
  br label %return, !dbg !4298

return:                                           ; preds = %if.end5, %if.then4
  %7 = load i32, i32* %retval, align 4, !dbg !4299
  ret i32 %7, !dbg !4299
}

; Function Attrs: noredzone
declare dso_local %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_register_driver(%struct.acpi_driver*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_bus_unregister_driver(%struct.acpi_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_add(%struct.acpi_device* %device) #0 !dbg !4300 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %button = alloca %struct.acpi_button*, align 8
  %input = alloca %struct.input_dev*, align 8
  %hid = alloca i8*, align 8
  %name = alloca i8*, align 8
  %class = alloca i8*, align 8
  %error = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !4301, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !4303, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !4591, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.declare(metadata i8** %hid, metadata !4593, metadata !DIExpression()), !dbg !4594
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4595
  %call = call i8* @acpi_device_hid(%struct.acpi_device* %0) #8, !dbg !4596
  store i8* %call, i8** %hid, align 8, !dbg !4594
  call void @llvm.dbg.declare(metadata i8** %name, metadata !4597, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata i8** %class, metadata !4599, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4601, metadata !DIExpression()), !dbg !4602
  %1 = load i8*, i8** %hid, align 8, !dbg !4603
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !4605
  %tobool = icmp ne i32 %call1, 0, !dbg !4605
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4606

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* @lid_init_state, align 8, !dbg !4607
  %cmp = icmp eq i64 %2, 3, !dbg !4608
  br i1 %cmp, label %if.then, label %if.end, !dbg !4609

if.then:                                          ; preds = %land.lhs.true
  store i32 -19, i32* %retval, align 4, !dbg !4610
  br label %return, !dbg !4610

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call i8* @kzalloc(i64 80, i32 3264) #8, !dbg !4611
  %3 = bitcast i8* %call2 to %struct.acpi_button*, !dbg !4611
  store %struct.acpi_button* %3, %struct.acpi_button** %button, align 8, !dbg !4612
  %4 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4613
  %tobool3 = icmp ne %struct.acpi_button* %4, null, !dbg !4613
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4615

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

if.end5:                                          ; preds = %if.end
  %5 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4617
  %6 = bitcast %struct.acpi_button* %5 to i8*, !dbg !4617
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4618
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 20, !dbg !4619
  store i8* %6, i8** %driver_data, align 8, !dbg !4620
  %call6 = call %struct.input_dev* @input_allocate_device() #8, !dbg !4621
  store %struct.input_dev* %call6, %struct.input_dev** %input, align 8, !dbg !4622
  %8 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4623
  %input7 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %8, i32 0, i32 1, !dbg !4624
  store %struct.input_dev* %call6, %struct.input_dev** %input7, align 8, !dbg !4625
  %9 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4626
  %tobool8 = icmp ne %struct.input_dev* %9, null, !dbg !4626
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4628

if.then9:                                         ; preds = %if.end5
  store i32 -12, i32* %error, align 4, !dbg !4629
  br label %err_free_button, !dbg !4631

if.end10:                                         ; preds = %if.end5
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4632
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 10, !dbg !4632
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 5, !dbg !4632
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !4632
  store i8* %arraydecay, i8** %name, align 8, !dbg !4633
  %11 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4634
  %pnp11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 10, !dbg !4634
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp11, i32 0, i32 6, !dbg !4634
  %arraydecay12 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !4634
  store i8* %arraydecay12, i8** %class, align 8, !dbg !4635
  %12 = load i8*, i8** %hid, align 8, !dbg !4636
  %call13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !4638
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4638
  br i1 %tobool14, label %lor.lhs.false, label %if.then17, !dbg !4639

lor.lhs.false:                                    ; preds = %if.end10
  %13 = load i8*, i8** %hid, align 8, !dbg !4640
  %call15 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !4641
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4641
  br i1 %tobool16, label %if.else, label %if.then17, !dbg !4642

if.then17:                                        ; preds = %lor.lhs.false, %if.end10
  %14 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4643
  %type = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %14, i32 0, i32 0, !dbg !4645
  store i32 1, i32* %type, align 8, !dbg !4646
  %15 = load i8*, i8** %name, align 8, !dbg !4647
  %call18 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !4648
  %16 = load i8*, i8** %class, align 8, !dbg !4649
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !4650
  br label %if.end40, !dbg !4651

if.else:                                          ; preds = %lor.lhs.false
  %17 = load i8*, i8** %hid, align 8, !dbg !4652
  %call20 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !4654
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4654
  br i1 %tobool21, label %lor.lhs.false22, label %if.then25, !dbg !4655

lor.lhs.false22:                                  ; preds = %if.else
  %18 = load i8*, i8** %hid, align 8, !dbg !4656
  %call23 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !4657
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4657
  br i1 %tobool24, label %if.else29, label %if.then25, !dbg !4658

if.then25:                                        ; preds = %lor.lhs.false22, %if.else
  %19 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4659
  %type26 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %19, i32 0, i32 0, !dbg !4661
  store i32 3, i32* %type26, align 8, !dbg !4662
  %20 = load i8*, i8** %name, align 8, !dbg !4663
  %call27 = call i8* @strcpy(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !4664
  %21 = load i8*, i8** %class, align 8, !dbg !4665
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !4666
  br label %if.end39, !dbg !4667

if.else29:                                        ; preds = %lor.lhs.false22
  %22 = load i8*, i8** %hid, align 8, !dbg !4668
  %call30 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !4670
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4670
  br i1 %tobool31, label %if.else36, label %if.then32, !dbg !4671

if.then32:                                        ; preds = %if.else29
  %23 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4672
  %type33 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %23, i32 0, i32 0, !dbg !4674
  store i32 5, i32* %type33, align 8, !dbg !4675
  %24 = load i8*, i8** %name, align 8, !dbg !4676
  %call34 = call i8* @strcpy(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !4677
  %25 = load i8*, i8** %class, align 8, !dbg !4678
  %call35 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !4679
  %26 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4680
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 31, !dbg !4681
  store i32 (%struct.input_dev*)* @acpi_lid_input_open, i32 (%struct.input_dev*)** %open, align 8, !dbg !4682
  br label %if.end38, !dbg !4683

if.else36:                                        ; preds = %if.else29
  %27 = load i8*, i8** %hid, align 8, !dbg !4684
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i8* %27) #9, !dbg !4686
  store i32 -19, i32* %error, align 4, !dbg !4687
  br label %err_free_input, !dbg !4688

if.end38:                                         ; preds = %if.then32
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then25
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then17
  %28 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4689
  %call41 = call i32 @acpi_button_add_fs(%struct.acpi_device* %28) #8, !dbg !4690
  store i32 %call41, i32* %error, align 4, !dbg !4691
  %29 = load i32, i32* %error, align 4, !dbg !4692
  %tobool42 = icmp ne i32 %29, 0, !dbg !4692
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !4694

if.then43:                                        ; preds = %if.end40
  br label %err_free_input, !dbg !4695

if.end44:                                         ; preds = %if.end40
  %30 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4696
  %phys = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %30, i32 0, i32 2, !dbg !4697
  %arraydecay45 = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4696
  %31 = load i8*, i8** %hid, align 8, !dbg !4698
  %call46 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay45, i64 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %31) #8, !dbg !4699
  %32 = load i8*, i8** %name, align 8, !dbg !4700
  %33 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4701
  %name47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 0, !dbg !4702
  store i8* %32, i8** %name47, align 8, !dbg !4703
  %34 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4704
  %phys48 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %34, i32 0, i32 2, !dbg !4705
  %arraydecay49 = getelementptr inbounds [32 x i8], [32 x i8]* %phys48, i64 0, i64 0, !dbg !4704
  %35 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4706
  %phys50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 1, !dbg !4707
  store i8* %arraydecay49, i8** %phys50, align 8, !dbg !4708
  %36 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4709
  %id = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 3, !dbg !4710
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %id, i32 0, i32 0, !dbg !4711
  store i16 25, i16* %bustype, align 8, !dbg !4712
  %37 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4713
  %type51 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %37, i32 0, i32 0, !dbg !4714
  %38 = load i32, i32* %type51, align 8, !dbg !4714
  %conv = trunc i32 %38 to i16, !dbg !4713
  %39 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4715
  %id52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 3, !dbg !4716
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %id52, i32 0, i32 2, !dbg !4717
  store i16 %conv, i16* %product, align 4, !dbg !4718
  %40 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4719
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 21, !dbg !4720
  %41 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4721
  %dev53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 40, !dbg !4722
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev53, i32 0, i32 1, !dbg !4723
  store %struct.device* %dev, %struct.device** %parent, align 8, !dbg !4724
  %42 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4725
  %type54 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %42, i32 0, i32 0, !dbg !4726
  %43 = load i32, i32* %type54, align 8, !dbg !4726
  switch i32 %43, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb55
    i32 5, label %sw.bb56
  ], !dbg !4727

sw.bb:                                            ; preds = %if.end44
  %44 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4728
  call void @input_set_capability(%struct.input_dev* %44, i32 1, i32 116) #8, !dbg !4730
  br label %sw.epilog, !dbg !4731

sw.bb55:                                          ; preds = %if.end44
  %45 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4732
  call void @input_set_capability(%struct.input_dev* %45, i32 1, i32 142) #8, !dbg !4733
  br label %sw.epilog, !dbg !4734

sw.bb56:                                          ; preds = %if.end44
  %46 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4735
  call void @input_set_capability(%struct.input_dev* %46, i32 5, i32 0) #8, !dbg !4736
  br label %sw.epilog, !dbg !4737

sw.epilog:                                        ; preds = %if.end44, %sw.bb56, %sw.bb55, %sw.bb
  %47 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4738
  %48 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4739
  %49 = bitcast %struct.acpi_device* %48 to i8*, !dbg !4739
  call void @input_set_drvdata(%struct.input_dev* %47, i8* %49) #8, !dbg !4740
  %50 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4741
  %call57 = call i32 @input_register_device(%struct.input_dev* %50) #8, !dbg !4742
  store i32 %call57, i32* %error, align 4, !dbg !4743
  %51 = load i32, i32* %error, align 4, !dbg !4744
  %tobool58 = icmp ne i32 %51, 0, !dbg !4744
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !4746

if.then59:                                        ; preds = %sw.epilog
  br label %err_remove_fs, !dbg !4747

if.end60:                                         ; preds = %sw.epilog
  %52 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4748
  %type61 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %52, i32 0, i32 0, !dbg !4750
  %53 = load i32, i32* %type61, align 8, !dbg !4750
  %cmp62 = icmp eq i32 %53, 5, !dbg !4751
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !4752

if.then64:                                        ; preds = %if.end60
  %54 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4753
  store %struct.acpi_device* %54, %struct.acpi_device** @lid_device, align 8, !dbg !4755
  br label %if.end65, !dbg !4756

if.end65:                                         ; preds = %if.then64, %if.end60
  %55 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4757
  %dev66 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %55, i32 0, i32 21, !dbg !4758
  %call67 = call i32 @device_init_wakeup(%struct.device* %dev66, i1 zeroext true) #8, !dbg !4759
  %56 = load i8*, i8** %name, align 8, !dbg !4760
  %57 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4761
  %pnp68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 10, !dbg !4761
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp68, i32 0, i32 0, !dbg !4761
  %arraydecay69 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !4761
  %call70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %56, i8* %arraydecay69) #9, !dbg !4762
  store i32 0, i32* %retval, align 4, !dbg !4763
  br label %return, !dbg !4763

err_remove_fs:                                    ; preds = %if.then59
  call void @llvm.dbg.label(metadata !4764), !dbg !4765
  %58 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4766
  %call71 = call i32 @acpi_button_remove_fs(%struct.acpi_device* %58) #8, !dbg !4767
  br label %err_free_input, !dbg !4767

err_free_input:                                   ; preds = %err_remove_fs, %if.then43, %if.else36
  call void @llvm.dbg.label(metadata !4768), !dbg !4769
  %59 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4770
  call void @input_free_device(%struct.input_dev* %59) #8, !dbg !4771
  br label %err_free_button, !dbg !4771

err_free_button:                                  ; preds = %err_free_input, %if.then9
  call void @llvm.dbg.label(metadata !4772), !dbg !4773
  %60 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4774
  %61 = bitcast %struct.acpi_button* %60 to i8*, !dbg !4774
  call void @kfree(i8* %61) #8, !dbg !4775
  %62 = load i32, i32* %error, align 4, !dbg !4776
  store i32 %62, i32* %retval, align 4, !dbg !4777
  br label %return, !dbg !4777

return:                                           ; preds = %err_free_button, %if.end65, %if.then4, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !4778
  ret i32 %63, !dbg !4778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_remove(%struct.acpi_device* %device) #0 !dbg !4779 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %button = alloca %struct.acpi_button*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !4780, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !4782, metadata !DIExpression()), !dbg !4783
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4784
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #8, !dbg !4785
  %1 = bitcast i8* %call to %struct.acpi_button*, !dbg !4785
  store %struct.acpi_button* %1, %struct.acpi_button** %button, align 8, !dbg !4783
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4786
  %call1 = call i32 @acpi_button_remove_fs(%struct.acpi_device* %2) #8, !dbg !4787
  %3 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4788
  %input = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %3, i32 0, i32 1, !dbg !4789
  %4 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4789
  call void @input_unregister_device(%struct.input_dev* %4) #8, !dbg !4790
  %5 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4791
  %6 = bitcast %struct.acpi_button* %5 to i8*, !dbg !4791
  call void @kfree(i8* %6) #8, !dbg !4792
  ret i32 0, !dbg !4793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_button_notify(%struct.acpi_device* %device, i32 %event) #0 !dbg !4794 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %event.addr = alloca i32, align 4
  %button = alloca %struct.acpi_button*, align 8
  %input = alloca %struct.input_dev*, align 8
  %keycode = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !4797, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !4799, metadata !DIExpression()), !dbg !4800
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4801
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #8, !dbg !4802
  %1 = bitcast i8* %call to %struct.acpi_button*, !dbg !4802
  store %struct.acpi_button* %1, %struct.acpi_button** %button, align 8, !dbg !4800
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !4803, metadata !DIExpression()), !dbg !4804
  %2 = load i32, i32* %event.addr, align 4, !dbg !4805
  switch i32 %2, label %sw.default [
    i32 256, label %sw.bb
    i32 128, label %sw.bb1
  ], !dbg !4806

sw.bb:                                            ; preds = %entry
  store i32 128, i32* %event.addr, align 4, !dbg !4807
  br label %sw.bb1, !dbg !4809

sw.bb1:                                           ; preds = %entry, %sw.bb
  %3 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4810
  %input2 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %3, i32 0, i32 1, !dbg !4811
  %4 = load %struct.input_dev*, %struct.input_dev** %input2, align 8, !dbg !4811
  store %struct.input_dev* %4, %struct.input_dev** %input, align 8, !dbg !4812
  %5 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4813
  %type = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %5, i32 0, i32 0, !dbg !4815
  %6 = load i32, i32* %type, align 8, !dbg !4815
  %cmp = icmp eq i32 %6, 5, !dbg !4816
  br i1 %cmp, label %if.then, label %if.else, !dbg !4817

if.then:                                          ; preds = %sw.bb1
  %7 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4818
  %lid_state_initialized = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %7, i32 0, i32 7, !dbg !4821
  %8 = load i8, i8* %lid_state_initialized, align 1, !dbg !4821
  %tobool = trunc i8 %8 to i1, !dbg !4821
  br i1 %tobool, label %if.then3, label %if.end, !dbg !4822

if.then3:                                         ; preds = %if.then
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4823
  %call4 = call i32 @acpi_lid_update_state(%struct.acpi_device* %9, i1 zeroext true) #8, !dbg !4824
  br label %if.end, !dbg !4824

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end14, !dbg !4825

if.else:                                          ; preds = %sw.bb1
  call void @llvm.dbg.declare(metadata i32* %keycode, metadata !4826, metadata !DIExpression()), !dbg !4828
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4829
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 21, !dbg !4830
  call void @acpi_pm_wakeup_event(%struct.device* %dev) #8, !dbg !4831
  %11 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4832
  %suspended = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %11, i32 0, i32 6, !dbg !4834
  %12 = load i8, i8* %suspended, align 8, !dbg !4834
  %tobool5 = trunc i8 %12 to i1, !dbg !4834
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4835

if.then6:                                         ; preds = %if.else
  br label %sw.epilog, !dbg !4836

if.end7:                                          ; preds = %if.else
  %13 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4837
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 6, !dbg !4838
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4837
  %call8 = call zeroext i1 @test_bit(i64 142, i64* %arraydecay) #8, !dbg !4839
  %14 = zext i1 %call8 to i64, !dbg !4839
  %cond = select i1 %call8, i32 142, i32 116, !dbg !4839
  store i32 %cond, i32* %keycode, align 4, !dbg !4840
  %15 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4841
  %16 = load i32, i32* %keycode, align 4, !dbg !4842
  call void @input_report_key(%struct.input_dev* %15, i32 %16, i32 1) #8, !dbg !4843
  %17 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4844
  call void @input_sync(%struct.input_dev* %17) #8, !dbg !4845
  %18 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4846
  %19 = load i32, i32* %keycode, align 4, !dbg !4847
  call void @input_report_key(%struct.input_dev* %18, i32 %19, i32 0) #8, !dbg !4848
  %20 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4849
  call void @input_sync(%struct.input_dev* %20) #8, !dbg !4850
  %21 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4851
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 10, !dbg !4852
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 6, !dbg !4853
  %arraydecay9 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !4851
  %22 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4854
  %dev10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 21, !dbg !4855
  %call11 = call i8* @dev_name(%struct.device* %dev10) #8, !dbg !4856
  %23 = load i32, i32* %event.addr, align 4, !dbg !4857
  %conv = trunc i32 %23 to i8, !dbg !4857
  %24 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !4858
  %pushed = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %24, i32 0, i32 3, !dbg !4859
  %25 = load i64, i64* %pushed, align 8, !dbg !4860
  %inc = add i64 %25, 1, !dbg !4860
  store i64 %inc, i64* %pushed, align 8, !dbg !4860
  %conv12 = trunc i64 %inc to i32, !dbg !4860
  %call13 = call i32 @acpi_bus_generate_netlink_event(i8* %arraydecay9, i8* %call11, i8 zeroext %conv, i32 %conv12) #8, !dbg !4861
  br label %if.end14

if.end14:                                         ; preds = %if.end7, %if.end
  br label %sw.epilog, !dbg !4862

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !4863

sw.epilog:                                        ; preds = %sw.default, %if.end14, %if.then6
  ret void, !dbg !4864
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4865 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4868, metadata !DIExpression()), !dbg !4872
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4878, metadata !DIExpression()), !dbg !4879
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4880, metadata !DIExpression()), !dbg !4881
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4882, metadata !DIExpression()), !dbg !4883
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4884, metadata !DIExpression()), !dbg !4888
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4890, metadata !DIExpression()), !dbg !4894
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4896, metadata !DIExpression()), !dbg !4900
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4905, metadata !DIExpression()), !dbg !4906
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4907, metadata !DIExpression()), !dbg !4908
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4909, metadata !DIExpression()), !dbg !4910
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4911, metadata !DIExpression()), !dbg !4912
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4913, metadata !DIExpression()), !dbg !4914
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4915, metadata !DIExpression()), !dbg !4916
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4917, metadata !DIExpression()), !dbg !4918
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4919, metadata !DIExpression()), !dbg !4920
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  %0 = load i64, i64* %size.addr, align 8, !dbg !4925
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4926
  %or = or i32 %1, 256, !dbg !4927
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4928
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4929
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4930

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4931
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4932
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4933

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4934
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4935
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4936
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4937
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4914
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4938
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4939
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4940
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4941
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4942
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4943
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4944
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4944
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4944
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4944
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4944
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4945
  br label %kmalloc.exit, !dbg !4945

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4946
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4947
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4947
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4949

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4950
  br label %kmalloc_index.exit.i, !dbg !4950

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4951
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4953
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4954

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4955
  br label %kmalloc_index.exit.i, !dbg !4955

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4956
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4958
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4959

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4960
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4961
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4962

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4963
  br label %kmalloc_index.exit.i, !dbg !4963

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4964
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4966
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4967

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4968
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4969
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4970

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4971
  br label %kmalloc_index.exit.i, !dbg !4971

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4972
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4974
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4975

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4976
  br label %kmalloc_index.exit.i, !dbg !4976

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4977
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4979
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4980

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4981
  br label %kmalloc_index.exit.i, !dbg !4981

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4982
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4984
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4985

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4986
  br label %kmalloc_index.exit.i, !dbg !4986

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4987
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4989
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4990

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4991
  br label %kmalloc_index.exit.i, !dbg !4991

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4992
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4994
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4995

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4996
  br label %kmalloc_index.exit.i, !dbg !4996

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4997
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4999
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5000

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5001
  br label %kmalloc_index.exit.i, !dbg !5001

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5002
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5004
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5005

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5006
  br label %kmalloc_index.exit.i, !dbg !5006

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5007
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5009
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5010

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5011
  br label %kmalloc_index.exit.i, !dbg !5011

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5012
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5014
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5015

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5016
  br label %kmalloc_index.exit.i, !dbg !5016

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5017
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5019
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5020

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5021
  br label %kmalloc_index.exit.i, !dbg !5021

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5022
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5024
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5025

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5026
  br label %kmalloc_index.exit.i, !dbg !5026

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5027
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5029
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5030

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5031
  br label %kmalloc_index.exit.i, !dbg !5031

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5032
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5034
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5035

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5036
  br label %kmalloc_index.exit.i, !dbg !5036

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5037
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5039
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5040

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5044
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5045

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5046
  br label %kmalloc_index.exit.i, !dbg !5046

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5047
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5049
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5050

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5051
  br label %kmalloc_index.exit.i, !dbg !5051

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5052
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5054
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5055

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5056
  br label %kmalloc_index.exit.i, !dbg !5056

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5057
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5059
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5060

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5061
  br label %kmalloc_index.exit.i, !dbg !5061

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5062
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5064
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5065

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5066
  br label %kmalloc_index.exit.i, !dbg !5066

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5067
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5069
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5070

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5071
  br label %kmalloc_index.exit.i, !dbg !5071

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5072
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5074
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5075

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5076
  br label %kmalloc_index.exit.i, !dbg !5076

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5077
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5079
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5080

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5081
  br label %kmalloc_index.exit.i, !dbg !5081

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5082
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5084
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5085

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5086
  br label %kmalloc_index.exit.i, !dbg !5086

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5087
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5089
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5090

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5091
  br label %kmalloc_index.exit.i, !dbg !5091

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5092, !srcloc !5095
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 205) #10, !dbg !5096, !srcloc !5099
  unreachable, !dbg !5100

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5101
  store i32 %45, i32* %index.i, align 4, !dbg !5102
  %46 = load i32, i32* %index.i, align 4, !dbg !5103
  %tobool.i = icmp ne i32 %46, 0, !dbg !5103
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5105

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5106
  br label %kmalloc.exit, !dbg !5106

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5107
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5108
  %and.i.i = and i32 %48, 17, !dbg !5108
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5108
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5108
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5108
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5108
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5110

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5111
  br label %kmalloc_type.exit.i, !dbg !5111

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5112
  %and2.i.i = and i32 %49, 1, !dbg !5113
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5112
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5112
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5112
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5114
  br label %kmalloc_type.exit.i, !dbg !5114

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5115
  %idxprom.i = zext i32 %51 to i64, !dbg !5116
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5116
  %52 = load i32, i32* %index.i, align 4, !dbg !5117
  %idxprom6.i = zext i32 %52 to i64, !dbg !5116
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5116
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5116
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5118
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5119
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5120
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5121
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5122
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5122
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5122
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5122
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5122
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4883
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5123
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5124
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5125
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5126
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5127
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5128
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5129
  store i8* %62, i8** %retval.i, align 8, !dbg !5130
  br label %kmalloc.exit, !dbg !5130

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5131
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5132
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5133
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5133
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5133
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5133
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5133
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5134
  br label %kmalloc.exit, !dbg !5134

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5135
  ret i8* %65, !dbg !5136
}

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #3

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_lid_input_open(%struct.input_dev* %input) #0 !dbg !5137 {
entry:
  %input.addr = alloca %struct.input_dev*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %button = alloca %struct.acpi_button*, align 8
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !5140, metadata !DIExpression()), !dbg !5141
  %0 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5142
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #8, !dbg !5143
  %1 = bitcast i8* %call to %struct.acpi_device*, !dbg !5143
  store %struct.acpi_device* %1, %struct.acpi_device** %device, align 8, !dbg !5141
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !5144, metadata !DIExpression()), !dbg !5145
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5146
  %call1 = call i8* @acpi_driver_data(%struct.acpi_device* %2) #8, !dbg !5147
  %3 = bitcast i8* %call1 to %struct.acpi_button*, !dbg !5147
  store %struct.acpi_button* %3, %struct.acpi_button** %button, align 8, !dbg !5145
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5148
  %call2 = call i32 @acpi_lid_evaluate_state(%struct.acpi_device* %4) #8, !dbg !5149
  %tobool = icmp ne i32 %call2, 0, !dbg !5150
  %lnot = xor i1 %tobool, true, !dbg !5150
  %lnot3 = xor i1 %lnot, true, !dbg !5151
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5151
  %5 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5152
  %last_state = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %5, i32 0, i32 4, !dbg !5153
  store i32 %lnot.ext, i32* %last_state, align 8, !dbg !5154
  %call4 = call i64 @ktime_get() #8, !dbg !5155
  %6 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5156
  %last_time = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %6, i32 0, i32 5, !dbg !5157
  store i64 %call4, i64* %last_time, align 8, !dbg !5158
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5159
  call void @acpi_lid_initialize_state(%struct.acpi_device* %7) #8, !dbg !5160
  ret i32 0, !dbg !5161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_add_fs(%struct.acpi_device* %device) #0 !dbg !5162 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %button = alloca %struct.acpi_button*, align 8
  %entry1 = alloca %struct.proc_dir_entry*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !5165, metadata !DIExpression()), !dbg !5166
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5167
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #8, !dbg !5168
  %1 = bitcast i8* %call to %struct.acpi_button*, !dbg !5168
  store %struct.acpi_button* %1, %struct.acpi_button** %button, align 8, !dbg !5166
  call void @llvm.dbg.declare(metadata %struct.proc_dir_entry** %entry1, metadata !5169, metadata !DIExpression()), !dbg !5170
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %entry1, align 8, !dbg !5170
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5171, metadata !DIExpression()), !dbg !5172
  store i32 0, i32* %ret, align 4, !dbg !5172
  %2 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5173
  %type = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %2, i32 0, i32 0, !dbg !5175
  %3 = load i32, i32* %type, align 8, !dbg !5175
  %cmp = icmp ne i32 %3, 5, !dbg !5176
  br i1 %cmp, label %if.then, label %if.end, !dbg !5177

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5178
  br label %return, !dbg !5178

if.end:                                           ; preds = %entry
  %4 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_button_dir, align 8, !dbg !5179
  %tobool = icmp ne %struct.proc_dir_entry* %4, null, !dbg !5179
  br i1 %tobool, label %if.then3, label %lor.lhs.false, !dbg !5181

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_lid_dir, align 8, !dbg !5182
  %tobool2 = icmp ne %struct.proc_dir_entry* %5, null, !dbg !5182
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5183

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !5184
  store i32 -17, i32* %retval, align 4, !dbg !5186
  br label %return, !dbg !5186

if.end5:                                          ; preds = %lor.lhs.false
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_root_dir, align 8, !dbg !5187
  %call6 = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.proc_dir_entry* %6) #8, !dbg !5188
  store %struct.proc_dir_entry* %call6, %struct.proc_dir_entry** @acpi_button_dir, align 8, !dbg !5189
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_button_dir, align 8, !dbg !5190
  %tobool7 = icmp ne %struct.proc_dir_entry* %7, null, !dbg !5190
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5192

if.then8:                                         ; preds = %if.end5
  store i32 -19, i32* %retval, align 4, !dbg !5193
  br label %return, !dbg !5193

if.end9:                                          ; preds = %if.end5
  %8 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_button_dir, align 8, !dbg !5194
  %call10 = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), %struct.proc_dir_entry* %8) #8, !dbg !5195
  store %struct.proc_dir_entry* %call10, %struct.proc_dir_entry** @acpi_lid_dir, align 8, !dbg !5196
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_lid_dir, align 8, !dbg !5197
  %tobool11 = icmp ne %struct.proc_dir_entry* %9, null, !dbg !5197
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5199

if.then12:                                        ; preds = %if.end9
  store i32 -19, i32* %ret, align 4, !dbg !5200
  br label %remove_button_dir, !dbg !5202

if.end13:                                         ; preds = %if.end9
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5203
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 10, !dbg !5203
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !5203
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !5203
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_lid_dir, align 8, !dbg !5204
  %call14 = call %struct.proc_dir_entry* @proc_mkdir(i8* %arraydecay, %struct.proc_dir_entry* %11) #8, !dbg !5205
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5206
  %dir = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 14, !dbg !5206
  %entry15 = getelementptr inbounds %struct.acpi_device_dir, %struct.acpi_device_dir* %dir, i32 0, i32 0, !dbg !5206
  store %struct.proc_dir_entry* %call14, %struct.proc_dir_entry** %entry15, align 8, !dbg !5207
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5208
  %dir16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 14, !dbg !5208
  %entry17 = getelementptr inbounds %struct.acpi_device_dir, %struct.acpi_device_dir* %dir16, i32 0, i32 0, !dbg !5208
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %entry17, align 8, !dbg !5208
  %tobool18 = icmp ne %struct.proc_dir_entry* %14, null, !dbg !5208
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !5210

if.then19:                                        ; preds = %if.end13
  store i32 -19, i32* %ret, align 4, !dbg !5211
  br label %remove_lid_dir, !dbg !5213

if.end20:                                         ; preds = %if.end13
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5214
  %dir21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 14, !dbg !5214
  %entry22 = getelementptr inbounds %struct.acpi_device_dir, %struct.acpi_device_dir* %dir21, i32 0, i32 0, !dbg !5214
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %entry22, align 8, !dbg !5214
  %17 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5215
  %18 = bitcast %struct.acpi_device* %17 to i8*, !dbg !5215
  %call23 = call %struct.proc_dir_entry* @proc_create_single_data(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i16 zeroext 292, %struct.proc_dir_entry* %16, i32 (%struct.seq_file*, i8*)* @acpi_button_state_seq_show, i8* %18) #8, !dbg !5216
  store %struct.proc_dir_entry* %call23, %struct.proc_dir_entry** %entry1, align 8, !dbg !5217
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %entry1, align 8, !dbg !5218
  %tobool24 = icmp ne %struct.proc_dir_entry* %19, null, !dbg !5218
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5220

if.then25:                                        ; preds = %if.end20
  store i32 -19, i32* %ret, align 4, !dbg !5221
  br label %remove_dev_dir, !dbg !5223

if.end26:                                         ; preds = %if.end20
  br label %done, !dbg !5218

done:                                             ; preds = %remove_button_dir, %if.end26
  call void @llvm.dbg.label(metadata !5224), !dbg !5225
  %20 = load i32, i32* %ret, align 4, !dbg !5226
  store i32 %20, i32* %retval, align 4, !dbg !5227
  br label %return, !dbg !5227

remove_dev_dir:                                   ; preds = %if.then25
  call void @llvm.dbg.label(metadata !5228), !dbg !5229
  %21 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5230
  %pnp27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 10, !dbg !5230
  %bus_id28 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp27, i32 0, i32 0, !dbg !5230
  %arraydecay29 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id28, i64 0, i64 0, !dbg !5230
  %22 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_lid_dir, align 8, !dbg !5231
  call void @remove_proc_entry(i8* %arraydecay29, %struct.proc_dir_entry* %22) #8, !dbg !5232
  %23 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5233
  %dir30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 14, !dbg !5233
  %entry31 = getelementptr inbounds %struct.acpi_device_dir, %struct.acpi_device_dir* %dir30, i32 0, i32 0, !dbg !5233
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %entry31, align 8, !dbg !5234
  br label %remove_lid_dir, !dbg !5233

remove_lid_dir:                                   ; preds = %remove_dev_dir, %if.then19
  call void @llvm.dbg.label(metadata !5235), !dbg !5236
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_button_dir, align 8, !dbg !5237
  call void @remove_proc_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), %struct.proc_dir_entry* %24) #8, !dbg !5238
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** @acpi_lid_dir, align 8, !dbg !5239
  br label %remove_button_dir, !dbg !5240

remove_button_dir:                                ; preds = %remove_lid_dir, %if.then12
  call void @llvm.dbg.label(metadata !5241), !dbg !5242
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_root_dir, align 8, !dbg !5243
  call void @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.proc_dir_entry* %25) #8, !dbg !5244
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** @acpi_button_dir, align 8, !dbg !5245
  br label %done, !dbg !5246

return:                                           ; preds = %done, %if.then8, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5247
  ret i32 %26, !dbg !5247
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @input_set_capability(%struct.input_dev*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #0 !dbg !5248 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5255
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5256
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5257
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #8, !dbg !5258
  ret void, !dbg !5259
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #3

; Function Attrs: noredzone
declare dso_local i32 @device_init_wakeup(%struct.device*, i1 zeroext) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_remove_fs(%struct.acpi_device* %device) #0 !dbg !5260 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %button = alloca %struct.acpi_button*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5265
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #8, !dbg !5266
  %1 = bitcast i8* %call to %struct.acpi_button*, !dbg !5266
  store %struct.acpi_button* %1, %struct.acpi_button** %button, align 8, !dbg !5264
  %2 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5267
  %type = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %2, i32 0, i32 0, !dbg !5269
  %3 = load i32, i32* %type, align 8, !dbg !5269
  %cmp = icmp ne i32 %3, 5, !dbg !5270
  br i1 %cmp, label %if.then, label %if.end, !dbg !5271

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5272
  br label %return, !dbg !5272

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5273
  %dir = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 14, !dbg !5273
  %entry1 = getelementptr inbounds %struct.acpi_device_dir, %struct.acpi_device_dir* %dir, i32 0, i32 0, !dbg !5273
  %5 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %entry1, align 8, !dbg !5273
  call void @remove_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %struct.proc_dir_entry* %5) #8, !dbg !5274
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5275
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 10, !dbg !5275
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !5275
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !5275
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_lid_dir, align 8, !dbg !5276
  call void @remove_proc_entry(i8* %arraydecay, %struct.proc_dir_entry* %7) #8, !dbg !5277
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5278
  %dir2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 14, !dbg !5278
  %entry3 = getelementptr inbounds %struct.acpi_device_dir, %struct.acpi_device_dir* %dir2, i32 0, i32 0, !dbg !5278
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %entry3, align 8, !dbg !5279
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_button_dir, align 8, !dbg !5280
  call void @remove_proc_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), %struct.proc_dir_entry* %9) #8, !dbg !5281
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** @acpi_lid_dir, align 8, !dbg !5282
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @acpi_root_dir, align 8, !dbg !5283
  call void @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.proc_dir_entry* %10) #8, !dbg !5284
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** @acpi_button_dir, align 8, !dbg !5285
  store i32 0, i32* %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5287
  ret i32 %11, !dbg !5287
}

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5288 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5292, metadata !DIExpression()), !dbg !5297
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5299, metadata !DIExpression()), !dbg !5300
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5301, metadata !DIExpression()), !dbg !5302
  %0 = load i64, i64* %size.addr, align 8, !dbg !5303
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5305
  br i1 %1, label %if.then, label %if.end447, !dbg !5306

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5307
  %tobool = icmp ne i64 %2, 0, !dbg !5307
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5310

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5311
  br label %return, !dbg !5311

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5312
  %cmp = icmp ult i64 %3, 4096, !dbg !5314
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5315

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5316
  br label %return, !dbg !5316

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub = sub i64 %4, 1, !dbg !5317
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5317
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5317

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub4 = sub i64 %6, 1, !dbg !5317
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5317
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5317

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub6 = sub i64 %8, 1, !dbg !5317
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5317
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5317

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5317

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub9 = sub i64 %9, 1, !dbg !5317
  %and = and i64 %sub9, -9223372036854775808, !dbg !5317
  %tobool10 = icmp ne i64 %and, 0, !dbg !5317
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5317

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5317

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub13 = sub i64 %10, 1, !dbg !5317
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5317
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5317
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5317

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5317

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub18 = sub i64 %11, 1, !dbg !5317
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5317
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5317
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5317

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5317

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub23 = sub i64 %12, 1, !dbg !5317
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5317
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5317
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5317

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5317

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub28 = sub i64 %13, 1, !dbg !5317
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5317
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5317
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5317

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5317

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub33 = sub i64 %14, 1, !dbg !5317
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5317
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5317
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5317

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5317

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub38 = sub i64 %15, 1, !dbg !5317
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5317
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5317
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5317

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5317

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub43 = sub i64 %16, 1, !dbg !5317
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5317
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5317
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5317

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5317

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub48 = sub i64 %17, 1, !dbg !5317
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5317
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5317
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5317

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5317

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub53 = sub i64 %18, 1, !dbg !5317
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5317
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5317
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5317

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5317

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub58 = sub i64 %19, 1, !dbg !5317
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5317
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5317
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5317

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5317

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub63 = sub i64 %20, 1, !dbg !5317
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5317
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5317
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5317

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5317

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub68 = sub i64 %21, 1, !dbg !5317
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5317
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5317
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5317

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5317

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub73 = sub i64 %22, 1, !dbg !5317
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5317
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5317
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5317

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5317

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub78 = sub i64 %23, 1, !dbg !5317
  %and79 = and i64 %sub78, 562949953421312, !dbg !5317
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5317
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5317

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5317

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub83 = sub i64 %24, 1, !dbg !5317
  %and84 = and i64 %sub83, 281474976710656, !dbg !5317
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5317
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5317

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5317

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub88 = sub i64 %25, 1, !dbg !5317
  %and89 = and i64 %sub88, 140737488355328, !dbg !5317
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5317
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5317

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5317

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub93 = sub i64 %26, 1, !dbg !5317
  %and94 = and i64 %sub93, 70368744177664, !dbg !5317
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5317
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5317

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5317

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub98 = sub i64 %27, 1, !dbg !5317
  %and99 = and i64 %sub98, 35184372088832, !dbg !5317
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5317
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5317

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5317

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub103 = sub i64 %28, 1, !dbg !5317
  %and104 = and i64 %sub103, 17592186044416, !dbg !5317
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5317
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5317

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5317

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub108 = sub i64 %29, 1, !dbg !5317
  %and109 = and i64 %sub108, 8796093022208, !dbg !5317
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5317
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5317

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5317

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub113 = sub i64 %30, 1, !dbg !5317
  %and114 = and i64 %sub113, 4398046511104, !dbg !5317
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5317
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5317

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5317

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub118 = sub i64 %31, 1, !dbg !5317
  %and119 = and i64 %sub118, 2199023255552, !dbg !5317
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5317
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5317

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5317

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub123 = sub i64 %32, 1, !dbg !5317
  %and124 = and i64 %sub123, 1099511627776, !dbg !5317
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5317
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5317

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5317

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub128 = sub i64 %33, 1, !dbg !5317
  %and129 = and i64 %sub128, 549755813888, !dbg !5317
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5317
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5317

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5317

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub133 = sub i64 %34, 1, !dbg !5317
  %and134 = and i64 %sub133, 274877906944, !dbg !5317
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5317
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5317

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5317

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub138 = sub i64 %35, 1, !dbg !5317
  %and139 = and i64 %sub138, 137438953472, !dbg !5317
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5317
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5317

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5317

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub143 = sub i64 %36, 1, !dbg !5317
  %and144 = and i64 %sub143, 68719476736, !dbg !5317
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5317
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5317

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5317

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub148 = sub i64 %37, 1, !dbg !5317
  %and149 = and i64 %sub148, 34359738368, !dbg !5317
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5317
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5317

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5317

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub153 = sub i64 %38, 1, !dbg !5317
  %and154 = and i64 %sub153, 17179869184, !dbg !5317
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5317
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5317

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5317

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub158 = sub i64 %39, 1, !dbg !5317
  %and159 = and i64 %sub158, 8589934592, !dbg !5317
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5317
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5317

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5317

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub163 = sub i64 %40, 1, !dbg !5317
  %and164 = and i64 %sub163, 4294967296, !dbg !5317
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5317
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5317

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5317

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub168 = sub i64 %41, 1, !dbg !5317
  %and169 = and i64 %sub168, 2147483648, !dbg !5317
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5317
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5317

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5317

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub173 = sub i64 %42, 1, !dbg !5317
  %and174 = and i64 %sub173, 1073741824, !dbg !5317
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5317
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5317

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5317

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub178 = sub i64 %43, 1, !dbg !5317
  %and179 = and i64 %sub178, 536870912, !dbg !5317
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5317
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5317

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5317

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub183 = sub i64 %44, 1, !dbg !5317
  %and184 = and i64 %sub183, 268435456, !dbg !5317
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5317
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5317

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5317

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub188 = sub i64 %45, 1, !dbg !5317
  %and189 = and i64 %sub188, 134217728, !dbg !5317
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5317
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5317

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5317

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub193 = sub i64 %46, 1, !dbg !5317
  %and194 = and i64 %sub193, 67108864, !dbg !5317
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5317
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5317

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5317

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub198 = sub i64 %47, 1, !dbg !5317
  %and199 = and i64 %sub198, 33554432, !dbg !5317
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5317
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5317

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5317

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub203 = sub i64 %48, 1, !dbg !5317
  %and204 = and i64 %sub203, 16777216, !dbg !5317
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5317
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5317

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5317

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub208 = sub i64 %49, 1, !dbg !5317
  %and209 = and i64 %sub208, 8388608, !dbg !5317
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5317
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5317

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5317

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub213 = sub i64 %50, 1, !dbg !5317
  %and214 = and i64 %sub213, 4194304, !dbg !5317
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5317
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5317

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5317

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub218 = sub i64 %51, 1, !dbg !5317
  %and219 = and i64 %sub218, 2097152, !dbg !5317
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5317
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5317

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5317

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub223 = sub i64 %52, 1, !dbg !5317
  %and224 = and i64 %sub223, 1048576, !dbg !5317
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5317
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5317

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5317

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub228 = sub i64 %53, 1, !dbg !5317
  %and229 = and i64 %sub228, 524288, !dbg !5317
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5317
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5317

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5317

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub233 = sub i64 %54, 1, !dbg !5317
  %and234 = and i64 %sub233, 262144, !dbg !5317
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5317
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5317

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5317

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub238 = sub i64 %55, 1, !dbg !5317
  %and239 = and i64 %sub238, 131072, !dbg !5317
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5317
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5317

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5317

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub243 = sub i64 %56, 1, !dbg !5317
  %and244 = and i64 %sub243, 65536, !dbg !5317
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5317
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5317

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5317

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub248 = sub i64 %57, 1, !dbg !5317
  %and249 = and i64 %sub248, 32768, !dbg !5317
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5317
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5317

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5317

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub253 = sub i64 %58, 1, !dbg !5317
  %and254 = and i64 %sub253, 16384, !dbg !5317
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5317
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5317

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5317

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub258 = sub i64 %59, 1, !dbg !5317
  %and259 = and i64 %sub258, 8192, !dbg !5317
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5317
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5317

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5317

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub263 = sub i64 %60, 1, !dbg !5317
  %and264 = and i64 %sub263, 4096, !dbg !5317
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5317
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5317

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5317

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub268 = sub i64 %61, 1, !dbg !5317
  %and269 = and i64 %sub268, 2048, !dbg !5317
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5317
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5317

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5317

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub273 = sub i64 %62, 1, !dbg !5317
  %and274 = and i64 %sub273, 1024, !dbg !5317
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5317
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5317

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5317

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub278 = sub i64 %63, 1, !dbg !5317
  %and279 = and i64 %sub278, 512, !dbg !5317
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5317
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5317

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5317

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub283 = sub i64 %64, 1, !dbg !5317
  %and284 = and i64 %sub283, 256, !dbg !5317
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5317
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5317

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5317

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub288 = sub i64 %65, 1, !dbg !5317
  %and289 = and i64 %sub288, 128, !dbg !5317
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5317
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5317

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5317

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub293 = sub i64 %66, 1, !dbg !5317
  %and294 = and i64 %sub293, 64, !dbg !5317
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5317
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5317

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5317

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub298 = sub i64 %67, 1, !dbg !5317
  %and299 = and i64 %sub298, 32, !dbg !5317
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5317
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5317

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5317

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub303 = sub i64 %68, 1, !dbg !5317
  %and304 = and i64 %sub303, 16, !dbg !5317
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5317
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5317

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5317

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub308 = sub i64 %69, 1, !dbg !5317
  %and309 = and i64 %sub308, 8, !dbg !5317
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5317
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5317

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5317

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub313 = sub i64 %70, 1, !dbg !5317
  %and314 = and i64 %sub313, 4, !dbg !5317
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5317
  %71 = zext i1 %tobool315 to i64, !dbg !5317
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5317
  br label %cond.end, !dbg !5317

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5317
  br label %cond.end317, !dbg !5317

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5317
  br label %cond.end319, !dbg !5317

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5317
  br label %cond.end321, !dbg !5317

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5317
  br label %cond.end323, !dbg !5317

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5317
  br label %cond.end325, !dbg !5317

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5317
  br label %cond.end327, !dbg !5317

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5317
  br label %cond.end329, !dbg !5317

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5317
  br label %cond.end331, !dbg !5317

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5317
  br label %cond.end333, !dbg !5317

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5317
  br label %cond.end335, !dbg !5317

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5317
  br label %cond.end337, !dbg !5317

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5317
  br label %cond.end339, !dbg !5317

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5317
  br label %cond.end341, !dbg !5317

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5317
  br label %cond.end343, !dbg !5317

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5317
  br label %cond.end345, !dbg !5317

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5317
  br label %cond.end347, !dbg !5317

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5317
  br label %cond.end349, !dbg !5317

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5317
  br label %cond.end351, !dbg !5317

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5317
  br label %cond.end353, !dbg !5317

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5317
  br label %cond.end355, !dbg !5317

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5317
  br label %cond.end357, !dbg !5317

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5317
  br label %cond.end359, !dbg !5317

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5317
  br label %cond.end361, !dbg !5317

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5317
  br label %cond.end363, !dbg !5317

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5317
  br label %cond.end365, !dbg !5317

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5317
  br label %cond.end367, !dbg !5317

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5317
  br label %cond.end369, !dbg !5317

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5317
  br label %cond.end371, !dbg !5317

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5317
  br label %cond.end373, !dbg !5317

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5317
  br label %cond.end375, !dbg !5317

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5317
  br label %cond.end377, !dbg !5317

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5317
  br label %cond.end379, !dbg !5317

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5317
  br label %cond.end381, !dbg !5317

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5317
  br label %cond.end383, !dbg !5317

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5317
  br label %cond.end385, !dbg !5317

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5317
  br label %cond.end387, !dbg !5317

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5317
  br label %cond.end389, !dbg !5317

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5317
  br label %cond.end391, !dbg !5317

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5317
  br label %cond.end393, !dbg !5317

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5317
  br label %cond.end395, !dbg !5317

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5317
  br label %cond.end397, !dbg !5317

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5317
  br label %cond.end399, !dbg !5317

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5317
  br label %cond.end401, !dbg !5317

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5317
  br label %cond.end403, !dbg !5317

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5317
  br label %cond.end405, !dbg !5317

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5317
  br label %cond.end407, !dbg !5317

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5317
  br label %cond.end409, !dbg !5317

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5317
  br label %cond.end411, !dbg !5317

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5317
  br label %cond.end413, !dbg !5317

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5317
  br label %cond.end415, !dbg !5317

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5317
  br label %cond.end417, !dbg !5317

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5317
  br label %cond.end419, !dbg !5317

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5317
  br label %cond.end421, !dbg !5317

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5317
  br label %cond.end423, !dbg !5317

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5317
  br label %cond.end425, !dbg !5317

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5317
  br label %cond.end427, !dbg !5317

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5317
  br label %cond.end429, !dbg !5317

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5317
  br label %cond.end431, !dbg !5317

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5317
  br label %cond.end433, !dbg !5317

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5317
  br label %cond.end435, !dbg !5317

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5317
  br label %cond.end437, !dbg !5317

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5317
  br label %cond.end440, !dbg !5317

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5317

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5317
  br label %cond.end444, !dbg !5317

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5317
  %sub443 = sub i64 %72, 1, !dbg !5317
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5317
  br label %cond.end444, !dbg !5317

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5317
  %sub446 = sub i32 %cond445, 12, !dbg !5318
  %add = add i32 %sub446, 1, !dbg !5319
  store i32 %add, i32* %retval, align 4, !dbg !5320
  br label %return, !dbg !5320

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5321
  %dec = add i64 %73, -1, !dbg !5321
  store i64 %dec, i64* %size.addr, align 8, !dbg !5321
  %74 = load i64, i64* %size.addr, align 8, !dbg !5322
  %shr = lshr i64 %74, 12, !dbg !5322
  store i64 %shr, i64* %size.addr, align 8, !dbg !5322
  %75 = load i64, i64* %size.addr, align 8, !dbg !5323
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5300
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5324
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5325
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5324, !srcloc !5326
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5324
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5327
  %add.i = add i32 %79, 1, !dbg !5328
  store i32 %add.i, i32* %retval, align 4, !dbg !5329
  br label %return, !dbg !5329

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5330
  ret i32 %80, !dbg !5330
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5331 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5292, metadata !DIExpression()), !dbg !5335
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5299, metadata !DIExpression()), !dbg !5337
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5338, metadata !DIExpression()), !dbg !5339
  %0 = load i64, i64* %n.addr, align 8, !dbg !5340
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5337
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5341
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5342
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5341, !srcloc !5326
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5341
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5343
  %add.i = add i32 %4, 1, !dbg !5344
  %sub = sub i32 %add.i, 1, !dbg !5345
  ret i32 %sub, !dbg !5346
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5347 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5359
  ret i8* %0, !dbg !5360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #0 !dbg !5361 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5366
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5367
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #8, !dbg !5368
  ret i8* %call, !dbg !5369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_driver_data(%struct.acpi_device* %d) #0 !dbg !5370 {
entry:
  %d.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %d, %struct.acpi_device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %d.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  %0 = load %struct.acpi_device*, %struct.acpi_device** %d.addr, align 8, !dbg !5375
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 20, !dbg !5376
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5376
  ret i8* %1, !dbg !5377
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_lid_initialize_state(%struct.acpi_device* %device) #0 !dbg !5378 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %button = alloca %struct.acpi_button*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !5381, metadata !DIExpression()), !dbg !5382
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5383
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #8, !dbg !5384
  %1 = bitcast i8* %call to %struct.acpi_button*, !dbg !5384
  store %struct.acpi_button* %1, %struct.acpi_button** %button, align 8, !dbg !5382
  %2 = load i64, i64* @lid_init_state, align 8, !dbg !5385
  switch i64 %2, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb2
    i64 0, label %sw.bb4
  ], !dbg !5386

sw.bb:                                            ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5387
  %call1 = call i32 @acpi_lid_notify_state(%struct.acpi_device* %3, i32 1) #8, !dbg !5389
  br label %sw.epilog, !dbg !5390

sw.bb2:                                           ; preds = %entry
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5391
  %call3 = call i32 @acpi_lid_update_state(%struct.acpi_device* %4, i1 zeroext false) #8, !dbg !5392
  br label %sw.epilog, !dbg !5393

sw.bb4:                                           ; preds = %entry
  br label %sw.default, !dbg !5393

sw.default:                                       ; preds = %entry, %sw.bb4
  br label %sw.epilog, !dbg !5394

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %5 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5395
  %lid_state_initialized = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %5, i32 0, i32 7, !dbg !5396
  store i8 1, i8* %lid_state_initialized, align 1, !dbg !5397
  ret void, !dbg !5398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5399 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5404
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5405
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5405
  ret i8* %1, !dbg !5406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_lid_notify_state(%struct.acpi_device* %device, i32 %state) #0 !dbg !4140 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i32, align 4
  %button = alloca %struct.acpi_button*, align 8
  %next_report = alloca i64, align 8
  %do_update = alloca i8, align 1
  %__ret_print_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !5411, metadata !DIExpression()), !dbg !5412
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5413
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #8, !dbg !5414
  %1 = bitcast i8* %call to %struct.acpi_button*, !dbg !5414
  store %struct.acpi_button* %1, %struct.acpi_button** %button, align 8, !dbg !5412
  call void @llvm.dbg.declare(metadata i64* %next_report, metadata !5415, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.declare(metadata i8* %do_update, metadata !5417, metadata !DIExpression()), !dbg !5418
  %2 = load i64, i64* @lid_init_state, align 8, !dbg !5419
  %cmp = icmp ne i64 %2, 0, !dbg !5421
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5422

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5423
  %last_state = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %3, i32 0, i32 4, !dbg !5424
  %4 = load i32, i32* %last_state, align 8, !dbg !5424
  %5 = load i32, i32* %state.addr, align 4, !dbg !5425
  %tobool = icmp ne i32 %5, 0, !dbg !5426
  %lnot = xor i1 %tobool, true, !dbg !5426
  %lnot1 = xor i1 %lnot, true, !dbg !5427
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5427
  %cmp2 = icmp ne i32 %4, %lnot.ext, !dbg !5428
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5429

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, i8* %do_update, align 1, !dbg !5430
  br label %if.end, !dbg !5431

if.else:                                          ; preds = %lor.lhs.false
  store i8 0, i8* %do_update, align 1, !dbg !5432
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5433
  %last_time = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %6, i32 0, i32 5, !dbg !5433
  %7 = load i64, i64* %last_time, align 8, !dbg !5433
  %8 = load i64, i64* @lid_report_interval, align 8, !dbg !5433
  %call3 = call i64 @ms_to_ktime(i64 %8) #8, !dbg !5433
  %add = add i64 %7, %call3, !dbg !5433
  store i64 %add, i64* %next_report, align 8, !dbg !5434
  %9 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5435
  %last_state4 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %9, i32 0, i32 4, !dbg !5437
  %10 = load i32, i32* %last_state4, align 8, !dbg !5437
  %11 = load i32, i32* %state.addr, align 4, !dbg !5438
  %tobool5 = icmp ne i32 %11, 0, !dbg !5439
  %lnot6 = xor i1 %tobool5, true, !dbg !5439
  %lnot8 = xor i1 %lnot6, true, !dbg !5440
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5440
  %cmp10 = icmp eq i32 %10, %lnot.ext9, !dbg !5441
  br i1 %cmp10, label %land.lhs.true, label %if.end34, !dbg !5442

land.lhs.true:                                    ; preds = %if.end
  %call11 = call i64 @ktime_get() #8, !dbg !5443
  %12 = load i64, i64* %next_report, align 8, !dbg !5444
  %call12 = call zeroext i1 @ktime_after(i64 %call11, i64 %12) #8, !dbg !5445
  br i1 %call12, label %if.then13, label %if.end34, !dbg !5446

if.then13:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8* %__ret_print_once, metadata !5447, metadata !DIExpression()), !dbg !5450
  %13 = load i8, i8* @acpi_lid_notify_state.__print_once, align 1, !dbg !5450
  %tobool14 = trunc i8 %13 to i1, !dbg !5450
  %lnot15 = xor i1 %tobool14, true, !dbg !5450
  %frombool = zext i1 %lnot15 to i8, !dbg !5450
  store i8 %frombool, i8* %__ret_print_once, align 1, !dbg !5450
  %14 = load i8, i8* @acpi_lid_notify_state.__print_once, align 1, !dbg !5451
  %tobool17 = trunc i8 %14 to i1, !dbg !5451
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !5450

if.then18:                                        ; preds = %if.then13
  store i8 1, i8* @acpi_lid_notify_state.__print_once, align 1, !dbg !5453
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !5453
  br label %if.end20, !dbg !5453

if.end20:                                         ; preds = %if.then18, %if.then13
  %15 = load i8, i8* %__ret_print_once, align 1, !dbg !5450
  %tobool21 = trunc i8 %15 to i1, !dbg !5450
  %lnot22 = xor i1 %tobool21, true, !dbg !5450
  %lnot24 = xor i1 %lnot22, true, !dbg !5450
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5450
  %conv = sext i32 %lnot.ext25 to i64, !dbg !5450
  store i64 %conv, i64* %tmp, align 8, !dbg !5451
  %16 = load i64, i64* %tmp, align 8, !dbg !5450
  %17 = load i64, i64* @lid_init_state, align 8, !dbg !5455
  %cmp26 = icmp eq i64 %17, 0, !dbg !5457
  br i1 %cmp26, label %if.then28, label %if.end33, !dbg !5458

if.then28:                                        ; preds = %if.end20
  store i8 1, i8* %do_update, align 1, !dbg !5459
  %18 = load i32, i32* %state.addr, align 4, !dbg !5461
  %tobool29 = icmp ne i32 %18, 0, !dbg !5461
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !5463

if.then30:                                        ; preds = %if.then28
  %19 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5464
  %input = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %19, i32 0, i32 1, !dbg !5466
  %20 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5466
  %21 = load i32, i32* %state.addr, align 4, !dbg !5467
  call void @input_report_switch(%struct.input_dev* %20, i32 0, i32 %21) #8, !dbg !5468
  %22 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5469
  %input31 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %22, i32 0, i32 1, !dbg !5470
  %23 = load %struct.input_dev*, %struct.input_dev** %input31, align 8, !dbg !5470
  call void @input_sync(%struct.input_dev* %23) #8, !dbg !5471
  br label %if.end32, !dbg !5472

if.end32:                                         ; preds = %if.then30, %if.then28
  br label %if.end33, !dbg !5473

if.end33:                                         ; preds = %if.end32, %if.end20
  br label %if.end34, !dbg !5474

if.end34:                                         ; preds = %if.end33, %land.lhs.true, %if.end
  %24 = load i8, i8* %do_update, align 1, !dbg !5475
  %tobool35 = trunc i8 %24 to i1, !dbg !5475
  br i1 %tobool35, label %if.then36, label %if.end51, !dbg !5477

if.then36:                                        ; preds = %if.end34
  store i32 0, i32* %tmp37, align 4, !dbg !5478
  %25 = load i32, i32* %tmp37, align 4, !dbg !5482
  %26 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5483
  %input38 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %26, i32 0, i32 1, !dbg !5484
  %27 = load %struct.input_dev*, %struct.input_dev** %input38, align 8, !dbg !5484
  %28 = load i32, i32* %state.addr, align 4, !dbg !5485
  %tobool39 = icmp ne i32 %28, 0, !dbg !5486
  %lnot40 = xor i1 %tobool39, true, !dbg !5486
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !5486
  call void @input_report_switch(%struct.input_dev* %27, i32 0, i32 %lnot.ext41) #8, !dbg !5487
  %29 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5488
  %input42 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %29, i32 0, i32 1, !dbg !5489
  %30 = load %struct.input_dev*, %struct.input_dev** %input42, align 8, !dbg !5489
  call void @input_sync(%struct.input_dev* %30) #8, !dbg !5490
  %31 = load i32, i32* %state.addr, align 4, !dbg !5491
  %tobool43 = icmp ne i32 %31, 0, !dbg !5492
  %lnot44 = xor i1 %tobool43, true, !dbg !5492
  %lnot46 = xor i1 %lnot44, true, !dbg !5493
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5493
  %32 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5494
  %last_state48 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %32, i32 0, i32 4, !dbg !5495
  store i32 %lnot.ext47, i32* %last_state48, align 8, !dbg !5496
  %call49 = call i64 @ktime_get() #8, !dbg !5497
  %33 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5498
  %last_time50 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %33, i32 0, i32 5, !dbg !5499
  store i64 %call49, i64* %last_time50, align 8, !dbg !5500
  br label %if.end51, !dbg !5501

if.end51:                                         ; preds = %if.then36, %if.end34
  ret i32 0, !dbg !5502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_lid_update_state(%struct.acpi_device* %device, i1 zeroext %signal_wakeup) #0 !dbg !5503 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %signal_wakeup.addr = alloca i8, align 1
  %state = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  %frombool = zext i1 %signal_wakeup to i8
  store i8 %frombool, i8* %signal_wakeup.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %signal_wakeup.addr, metadata !5508, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.declare(metadata i32* %state, metadata !5510, metadata !DIExpression()), !dbg !5511
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5512
  %call = call i32 @acpi_lid_evaluate_state(%struct.acpi_device* %0) #8, !dbg !5513
  store i32 %call, i32* %state, align 4, !dbg !5514
  %1 = load i32, i32* %state, align 4, !dbg !5515
  %cmp = icmp slt i32 %1, 0, !dbg !5517
  br i1 %cmp, label %if.then, label %if.end, !dbg !5518

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %state, align 4, !dbg !5519
  store i32 %2, i32* %retval, align 4, !dbg !5520
  br label %return, !dbg !5520

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %state, align 4, !dbg !5521
  %tobool = icmp ne i32 %3, 0, !dbg !5521
  br i1 %tobool, label %land.lhs.true, label %if.end3, !dbg !5523

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8, i8* %signal_wakeup.addr, align 1, !dbg !5524
  %tobool1 = trunc i8 %4 to i1, !dbg !5524
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5525

if.then2:                                         ; preds = %land.lhs.true
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5526
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 21, !dbg !5527
  call void @acpi_pm_wakeup_event(%struct.device* %dev) #8, !dbg !5528
  br label %if.end3, !dbg !5528

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5529
  %7 = load i32, i32* %state, align 4, !dbg !5530
  %call4 = call i32 @acpi_lid_notify_state(%struct.acpi_device* %6, i32 %7) #8, !dbg !5531
  store i32 %call4, i32* %retval, align 4, !dbg !5532
  br label %return, !dbg !5532

return:                                           ; preds = %if.end3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5533
  ret i32 %8, !dbg !5533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ms_to_ktime(i64 %ms) #0 !dbg !5534 {
entry:
  %ms.addr = alloca i64, align 8
  store i64 %ms, i64* %ms.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ms.addr, metadata !5537, metadata !DIExpression()), !dbg !5538
  %0 = load i64, i64* %ms.addr, align 8, !dbg !5539
  %mul = mul i64 %0, 1000000, !dbg !5540
  ret i64 %mul, !dbg !5541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @ktime_after(i64 %cmp1, i64 %cmp2) #0 !dbg !5542 {
entry:
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !5550
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !5551
  %call = call i32 @ktime_compare(i64 %0, i64 %1) #8, !dbg !5552
  %cmp = icmp sgt i32 %call, 0, !dbg !5553
  ret i1 %cmp, !dbg !5554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_switch(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !5555 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5562, metadata !DIExpression()), !dbg !5563
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5564
  %1 = load i32, i32* %code.addr, align 4, !dbg !5565
  %2 = load i32, i32* %value.addr, align 4, !dbg !5566
  %tobool = icmp ne i32 %2, 0, !dbg !5567
  %lnot = xor i1 %tobool, true, !dbg !5567
  %lnot1 = xor i1 %lnot, true, !dbg !5568
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5568
  call void @input_event(%struct.input_dev* %0, i32 5, i32 %1, i32 %lnot.ext) #8, !dbg !5569
  ret void, !dbg !5570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #0 !dbg !5571 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5574
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #8, !dbg !5575
  ret void, !dbg !5576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !5577 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !5582, metadata !DIExpression()), !dbg !5583
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !5584
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !5586
  %cmp = icmp slt i64 %0, %1, !dbg !5587
  br i1 %cmp, label %if.then, label %if.end, !dbg !5588

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !5589
  br label %return, !dbg !5589

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !5590
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !5592
  %cmp3 = icmp sgt i64 %2, %3, !dbg !5593
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5594

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !5595
  br label %return, !dbg !5595

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5596
  br label %return, !dbg !5596

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5597
  ret i32 %4, !dbg !5597
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #3

; Function Attrs: noredzone
declare dso_local void @acpi_pm_wakeup_event(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, %struct.proc_dir_entry*) #3

; Function Attrs: noredzone
declare dso_local %struct.proc_dir_entry* @proc_create_single_data(i8*, i16 zeroext, %struct.proc_dir_entry*, i32 (%struct.seq_file*, i8*)*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_state_seq_show(%struct.seq_file* %seq, i8* %offset) #0 !dbg !5598 {
entry:
  %seq.addr = alloca %struct.seq_file*, align 8
  %offset.addr = alloca i8*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %state = alloca i32, align 4
  store %struct.seq_file* %seq, %struct.seq_file** %seq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %seq.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  store i8* %offset, i8** %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %offset.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !5603, metadata !DIExpression()), !dbg !5604
  %0 = load %struct.seq_file*, %struct.seq_file** %seq.addr, align 8, !dbg !5605
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %0, i32 0, i32 11, !dbg !5606
  %1 = load i8*, i8** %private, align 8, !dbg !5606
  %2 = bitcast i8* %1 to %struct.acpi_device*, !dbg !5605
  store %struct.acpi_device* %2, %struct.acpi_device** %device, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata i32* %state, metadata !5607, metadata !DIExpression()), !dbg !5608
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5609
  %call = call i32 @acpi_lid_evaluate_state(%struct.acpi_device* %3) #8, !dbg !5610
  store i32 %call, i32* %state, align 4, !dbg !5611
  %4 = load %struct.seq_file*, %struct.seq_file** %seq.addr, align 8, !dbg !5612
  %5 = load i32, i32* %state, align 4, !dbg !5613
  %cmp = icmp slt i32 %5, 0, !dbg !5614
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5613

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5613

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %state, align 4, !dbg !5615
  %tobool = icmp ne i32 %6, 0, !dbg !5615
  %7 = zext i1 %tobool to i64, !dbg !5615
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), !dbg !5615
  br label %cond.end, !dbg !5613

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), %cond.true ], [ %cond, %cond.false ], !dbg !5613
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %cond1) #8, !dbg !5616
  ret i32 0, !dbg !5617
}

; Function Attrs: noredzone
declare dso_local void @remove_proc_entry(i8*, %struct.proc_dir_entry*) #3

; Function Attrs: noredzone
declare dso_local void @seq_printf(%struct.seq_file*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5618 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5625
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5626
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5627
  store i8* %0, i8** %driver_data, align 8, !dbg !5628
  ret void, !dbg !5629
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5630 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5637, metadata !DIExpression()), !dbg !5639
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5641, metadata !DIExpression()), !dbg !5642
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5643, metadata !DIExpression()), !dbg !5644
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5645, metadata !DIExpression()), !dbg !5647
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5649, metadata !DIExpression()), !dbg !5650
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5651, metadata !DIExpression()), !dbg !5659
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5661, metadata !DIExpression()), !dbg !5662
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5663, metadata !DIExpression()), !dbg !5664
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5667
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5668
  %div = sdiv i64 %1, 64, !dbg !5668
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5669
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5667
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5670
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5671
  %conv.i = trunc i64 %4 to i32, !dbg !5671
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !5672
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5673
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5673
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !5673
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5674
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5674
  br i1 %8, label %cond.true, label %cond.false, !dbg !5674

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5674
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5674
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5675
  %and.i = and i64 %11, 63, !dbg !5676
  %shl.i = shl i64 1, %and.i, !dbg !5677
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5678
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5679
  %shr.i = ashr i64 %13, 6, !dbg !5680
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5678
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5678
  %and1.i = and i64 %shl.i, %14, !dbg !5681
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5682
  %conv = zext i1 %cmp.i to i32, !dbg !5674
  br label %cond.end, !dbg !5674

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5674
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5674
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5683
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5684
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !5685, !srcloc !5686
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5685
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5687
  %tobool.i = trunc i8 %20 to i1, !dbg !5687
  %conv2 = zext i1 %tobool.i to i32, !dbg !5674
  br label %cond.end, !dbg !5674

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5674
  %tobool = icmp ne i32 %cond, 0, !dbg !5674
  ret i1 %tobool, !dbg !5688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !5689 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5696
  %1 = load i32, i32* %code.addr, align 4, !dbg !5697
  %2 = load i32, i32* %value.addr, align 4, !dbg !5698
  %tobool = icmp ne i32 %2, 0, !dbg !5699
  %lnot = xor i1 %tobool, true, !dbg !5699
  %lnot1 = xor i1 %lnot, true, !dbg !5700
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5700
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #8, !dbg !5701
  ret void, !dbg !5702
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_generate_netlink_event(i8*, i8*, i8 zeroext, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !5703 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5708
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5710
  %1 = load i8*, i8** %init_name, align 8, !dbg !5710
  %tobool = icmp ne i8* %1, null, !dbg !5708
  br i1 %tobool, label %if.then, label %if.end, !dbg !5711

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5712
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5713
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5713
  store i8* %3, i8** %retval, align 8, !dbg !5714
  br label %return, !dbg !5714

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5715
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5716
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !5717
  store i8* %call, i8** %retval, align 8, !dbg !5718
  br label %return, !dbg !5718

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5719
  ret i8* %5, !dbg !5719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5720 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5726, metadata !DIExpression()), !dbg !5727
  ret i1 true, !dbg !5728
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5729 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5733, metadata !DIExpression()), !dbg !5734
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5737, metadata !DIExpression()), !dbg !5738
  ret void, !dbg !5739
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5740 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5745, metadata !DIExpression()), !dbg !5746
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5747
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5748
  %1 = load i8*, i8** %name, align 8, !dbg !5748
  ret i8* %1, !dbg !5749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_suspend(%struct.device* %dev) #0 !dbg !5750 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %button = alloca %struct.acpi_button*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !5753, metadata !DIExpression()), !dbg !5754
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5755, metadata !DIExpression()), !dbg !5757
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5757
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5757
  store i8* %1, i8** %__mptr, align 8, !dbg !5757
  br label %do.body, !dbg !5757

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5758

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5757
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !5757
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !5757
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !5758
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !5757
  store %struct.acpi_device* %4, %struct.acpi_device** %device, align 8, !dbg !5754
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !5760, metadata !DIExpression()), !dbg !5761
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5762
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %5) #8, !dbg !5763
  %6 = bitcast i8* %call to %struct.acpi_button*, !dbg !5763
  store %struct.acpi_button* %6, %struct.acpi_button** %button, align 8, !dbg !5761
  %7 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5764
  %suspended = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %7, i32 0, i32 6, !dbg !5765
  store i8 1, i8* %suspended, align 8, !dbg !5766
  ret i32 0, !dbg !5767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_button_resume(%struct.device* %dev) #0 !dbg !5768 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %button = alloca %struct.acpi_button*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !5771, metadata !DIExpression()), !dbg !5772
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5773, metadata !DIExpression()), !dbg !5775
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5775
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5775
  store i8* %1, i8** %__mptr, align 8, !dbg !5775
  br label %do.body, !dbg !5775

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5776

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5775
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !5775
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !5775
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !5776
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !5775
  store %struct.acpi_device* %4, %struct.acpi_device** %device, align 8, !dbg !5772
  call void @llvm.dbg.declare(metadata %struct.acpi_button** %button, metadata !5778, metadata !DIExpression()), !dbg !5779
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5780
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %5) #8, !dbg !5781
  %6 = bitcast i8* %call to %struct.acpi_button*, !dbg !5781
  store %struct.acpi_button* %6, %struct.acpi_button** %button, align 8, !dbg !5779
  %7 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5782
  %suspended = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %7, i32 0, i32 6, !dbg !5783
  store i8 0, i8* %suspended, align 8, !dbg !5784
  %8 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5785
  %type = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %8, i32 0, i32 0, !dbg !5787
  %9 = load i32, i32* %type, align 8, !dbg !5787
  %cmp = icmp eq i32 %9, 5, !dbg !5788
  br i1 %cmp, label %if.then, label %if.end, !dbg !5789

if.then:                                          ; preds = %do.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5790
  %call1 = call i32 @acpi_lid_evaluate_state(%struct.acpi_device* %10) #8, !dbg !5792
  %tobool = icmp ne i32 %call1, 0, !dbg !5793
  %lnot = xor i1 %tobool, true, !dbg !5793
  %lnot2 = xor i1 %lnot, true, !dbg !5794
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5794
  %11 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5795
  %last_state = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %11, i32 0, i32 4, !dbg !5796
  store i32 %lnot.ext, i32* %last_state, align 8, !dbg !5797
  %call3 = call i64 @ktime_get() #8, !dbg !5798
  %12 = load %struct.acpi_button*, %struct.acpi_button** %button, align 8, !dbg !5799
  %last_time = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %12, i32 0, i32 5, !dbg !5800
  store i64 %call3, i64* %last_time, align 8, !dbg !5801
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5802
  call void @acpi_lid_initialize_state(%struct.acpi_device* %13) #8, !dbg !5803
  br label %if.end, !dbg !5804

if.end:                                           ; preds = %if.then, %do.end
  ret i32 0, !dbg !5805
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
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
!llvm.module.flags = !{!4152, !4153, !4154, !4155}
!llvm.ident = !{!4156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author214", scope: !2, file: !3, line: 60, type: !4149, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !112, globals: !3998, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/button.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !100, !105}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
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
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !48, line: 26, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !54, line: 44, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !60, line: 343, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !67, line: 524, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !67, line: 502, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !81, line: 76, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!83 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!87 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!89 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!90 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 43, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "ACPI_BUTTON_LID_INIT_IGNORE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "ACPI_BUTTON_LID_INIT_OPEN", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "ACPI_BUTTON_LID_INIT_METHOD", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "ACPI_BUTTON_LID_INIT_DISABLED", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !106, line: 305, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!112 = !{!113, !114, !115, !117, !118, !120}
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !116, line: 148, baseType: !7)
!116 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !122, line: 351, size: 10880, elements: !123)
!122 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125, !128, !3724, !3725, !3726, !3727, !3728, !3729, !3738, !3755, !3829, !3858, !3882, !3903, !3910, !3919, !3951, !3965, !3987, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !121, file: !122, line: 352, baseType: !113, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !121, file: !122, line: 353, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !127, line: 424, baseType: !117)
!127 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !121, file: !122, line: 354, baseType: !129, size: 192, offset: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !130, line: 17, size: 192, elements: !131)
!130 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !134, !3723}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !129, file: !130, line: 18, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !129, file: !130, line: 19, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !130, line: 110, size: 1152, elements: !138)
!138 = !{!139, !143, !147, !155, !3665, !3669, !3673, !3678, !3682, !3683, !3687, !3691, !3695, !3706, !3707, !3708, !3709, !3719}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !137, file: !130, line: 111, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!133, !133}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !137, file: !130, line: 112, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !133}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !137, file: !130, line: 113, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !116, line: 30, baseType: !152)
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !137, file: !130, line: 114, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !153, !161}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !164)
!164 = !{!165, !3208, !3210, !3213, !3214, !3265, !3356, !3357, !3358, !3359, !3360, !3369, !3474, !3487, !3592, !3593, !3597, !3599, !3600, !3601, !3605, !3611, !3612, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3653, !3654, !3655, !3658, !3661, !3662, !3663, !3664}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !163, file: !60, line: 462, baseType: !166, size: 512)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !167, line: 64, size: 512, elements: !168)
!167 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !173, !179, !181, !241, !3071, !3198, !3203, !3204, !3205, !3206, !3207}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !167, line: 65, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !166, file: !167, line: 66, baseType: !174, size: 128, offset: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !116, line: 178, size: 128, elements: !175)
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !116, line: 179, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !174, file: !116, line: 179, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !166, file: !167, line: 67, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !166, file: !167, line: 68, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !167, line: 192, size: 704, elements: !184)
!184 = !{!185, !186, !202, !203}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !183, file: !167, line: 193, baseType: !174, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !183, file: !167, line: 194, baseType: !187, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !188, line: 83, baseType: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !188, line: 71, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !188, line: 72, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !188, line: 72, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !192, file: !188, line: 73, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !188, line: 20, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !195, file: !188, line: 21, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !199, line: 25, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 25, elements: !201)
!201 = !{}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !183, file: !167, line: 195, baseType: !166, size: 512, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !183, file: !167, line: 196, baseType: !204, size: 64, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !167, line: 156, size: 192, elements: !207)
!207 = !{!208, !213, !218}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !206, file: !167, line: 157, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!113, !182, !180}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !167, line: 158, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!170, !182, !180}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !206, file: !167, line: 159, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!113, !182, !180, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !167, line: 148, size: 20736, elements: !225)
!225 = !{!226, !231, !235, !236, !240}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !224, file: !167, line: 149, baseType: !227, size: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 192, elements: !229)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!229 = !{!230}
!230 = !DISubrange(count: 3)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !224, file: !167, line: 150, baseType: !232, size: 4096, offset: 192)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 4096, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !224, file: !167, line: 151, baseType: !113, size: 32, offset: 4288)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !224, file: !167, line: 152, baseType: !237, size: 16384, offset: 4320)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16384, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 2048)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !224, file: !167, line: 153, baseType: !113, size: 32, offset: 20704)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !166, file: !167, line: 69, baseType: !242, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !167, line: 138, size: 448, elements: !244)
!244 = !{!245, !249, !277, !279, !3033, !3061, !3065}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !243, file: !167, line: 139, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !180}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !243, file: !167, line: 140, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !253, line: 230, size: 128, elements: !254)
!253 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !270}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !252, file: !253, line: 231, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !180, !263, !228}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !116, line: 60, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !261, line: 73, baseType: !262)
!261 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !261, line: 15, baseType: !114)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !253, line: 30, size: 128, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !253, line: 31, baseType: !170, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !264, file: !253, line: 32, baseType: !268, size: 16, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !116, line: 19, baseType: !269)
!269 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !252, file: !253, line: 232, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!259, !180, !263, !170, !274}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 55, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !261, line: 72, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !261, line: 16, baseType: !119)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !243, file: !167, line: 141, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !243, file: !167, line: 142, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !253, line: 84, size: 320, elements: !284)
!284 = !{!285, !286, !290, !3030, !3031}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !253, line: 85, baseType: !170, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !283, file: !253, line: 86, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!268, !180, !263, !113}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !283, file: !253, line: 88, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!268, !180, !294, !113}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !253, line: 168, size: 448, elements: !296)
!296 = !{!297, !298, !299, !300, !3025, !3026}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !295, file: !253, line: 169, baseType: !264, size: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !295, file: !253, line: 170, baseType: !274, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !295, file: !253, line: 171, baseType: !117, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !295, file: !253, line: 172, baseType: !301, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!259, !304, !180, !294, !228, !481, !274}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !306)
!306 = !{!307, !325, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3008, !3009, !3018, !3019, !3020, !3021, !3022, !3023, !3024}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !305, file: !31, line: 920, baseType: !308, size: 128)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !31, line: 917, size: 128, elements: !309)
!309 = !{!310, !316}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !308, file: !31, line: 918, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !312, line: 58, size: 64, elements: !313)
!312 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !312, line: 59, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !308, file: !31, line: 919, baseType: !317, size: 128, align: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !116, line: 216, size: 128, align: 64, elements: !318)
!318 = !{!319, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !116, line: 217, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !317, file: !116, line: 218, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !320}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !305, file: !31, line: 921, baseType: !326, size: 128, offset: 128)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !327, line: 8, size: 128, elements: !328)
!327 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !333}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !326, file: !327, line: 9, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !332, line: 18, flags: DIFlagFwdDecl)
!332 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !326, file: !327, line: 10, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !332, line: 89, size: 1536, elements: !336)
!336 = !{!337, !338, !348, !356, !357, !380, !2958, !2960, !2972, !2973, !2974, !2975, !2976, !2982, !2983, !2984}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !335, file: !332, line: 91, baseType: !7, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !335, file: !332, line: 92, baseType: !339, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !340, line: 277, baseType: !341)
!340 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !340, line: 277, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !341, file: !340, line: 277, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !340, line: 70, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !340, line: 65, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !345, file: !340, line: 66, baseType: !7, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !335, file: !332, line: 93, baseType: !349, size: 128, offset: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !350, line: 38, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !350, line: 39, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !349, file: !350, line: 39, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !335, file: !332, line: 94, baseType: !334, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !335, file: !332, line: 95, baseType: !358, size: 128, offset: 256)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !332, line: 47, size: 128, elements: !359)
!359 = !{!360, !376}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !332, line: 48, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !332, line: 48, size: 64, elements: !362)
!362 = !{!363, !372}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !332, line: 49, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !332, line: 49, size: 64, elements: !365)
!365 = !{!366, !371}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !364, file: !332, line: 50, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !368, line: 21, baseType: !369)
!368 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !370, line: 27, baseType: !7)
!370 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !364, file: !332, line: 50, baseType: !367, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !361, file: !332, line: 52, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !368, line: 23, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !370, line: 31, baseType: !375)
!375 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !332, line: 54, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !335, file: !332, line: 96, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !383)
!383 = !{!384, !385, !386, !394, !401, !402, !548, !2670, !2671, !2672, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2934, !2942, !2943, !2944, !2954, !2955, !2956, !2957}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !382, file: !31, line: 611, baseType: !268, size: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !382, file: !31, line: 612, baseType: !269, size: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !382, file: !31, line: 613, baseType: !387, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !388, line: 23, baseType: !389)
!388 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 21, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !389, file: !388, line: 22, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !116, line: 32, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !261, line: 49, baseType: !7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !382, file: !31, line: 614, baseType: !395, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !388, line: 28, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 26, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !396, file: !388, line: 27, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !116, line: 33, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !261, line: 50, baseType: !7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !382, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !382, file: !31, line: 622, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !406)
!406 = !{!407, !411, !424, !428, !434, !438, !442, !446, !450, !454, !458, !459, !465, !469, !495, !524, !528, !534, !539, !543, !544}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !405, file: !31, line: 1865, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!334, !381, !334, !7}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !405, file: !31, line: 1866, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!170, !334, !381, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !417, line: 10, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !416, file: !417, line: 11, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !117}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !416, file: !417, line: 12, baseType: !117, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !405, file: !31, line: 1867, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!113, !381, !113}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !405, file: !31, line: 1868, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !381, !113}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !405, file: !31, line: 1870, baseType: !435, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!113, !334, !228, !113}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !405, file: !31, line: 1872, baseType: !439, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!113, !381, !334, !268, !151}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !405, file: !31, line: 1873, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!113, !334, !381, !334}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !405, file: !31, line: 1874, baseType: !447, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!113, !381, !334}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !405, file: !31, line: 1875, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!113, !381, !334, !170}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !405, file: !31, line: 1876, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!113, !381, !334, !268}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !405, file: !31, line: 1877, baseType: !447, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !405, file: !31, line: 1878, baseType: !460, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!113, !381, !334, !268, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !116, line: 16, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !116, line: 13, baseType: !367)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !405, file: !31, line: 1879, baseType: !466, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!113, !381, !334, !381, !334, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !405, file: !31, line: 1881, baseType: !470, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!113, !334, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !484, !492, !493, !494}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !474, file: !31, line: 220, baseType: !7, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !474, file: !31, line: 221, baseType: !268, size: 16, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !474, file: !31, line: 222, baseType: !387, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !474, file: !31, line: 223, baseType: !395, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !474, file: !31, line: 224, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !116, line: 46, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !261, line: 88, baseType: !483)
!483 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !474, file: !31, line: 225, baseType: !485, size: 128, offset: 192)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !486, line: 13, size: 128, elements: !487)
!486 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !485, file: !486, line: 14, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !486, line: 8, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !370, line: 30, baseType: !483)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !485, file: !486, line: 15, baseType: !114, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !474, file: !31, line: 226, baseType: !485, size: 128, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !474, file: !31, line: 227, baseType: !485, size: 128, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !474, file: !31, line: 234, baseType: !304, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !405, file: !31, line: 1882, baseType: !496, size: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!113, !499, !501, !367, !7}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !503, line: 22, size: 1152, elements: !504)
!503 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !506, !507, !508, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !502, file: !503, line: 23, baseType: !367, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !502, file: !503, line: 24, baseType: !268, size: 16, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !502, file: !503, line: 25, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !502, file: !503, line: 26, baseType: !509, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !116, line: 104, baseType: !367)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !502, file: !503, line: 27, baseType: !373, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !502, file: !503, line: 28, baseType: !373, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !502, file: !503, line: 37, baseType: !373, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !502, file: !503, line: 38, baseType: !463, size: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !502, file: !503, line: 39, baseType: !463, size: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !502, file: !503, line: 40, baseType: !387, size: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !502, file: !503, line: 41, baseType: !395, size: 32, offset: 416)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !502, file: !503, line: 42, baseType: !481, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !502, file: !503, line: 43, baseType: !485, size: 128, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !502, file: !503, line: 44, baseType: !485, size: 128, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !502, file: !503, line: 45, baseType: !485, size: 128, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !502, file: !503, line: 46, baseType: !485, size: 128, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !502, file: !503, line: 47, baseType: !373, size: 64, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !502, file: !503, line: 48, baseType: !373, size: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !405, file: !31, line: 1883, baseType: !525, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!259, !334, !228, !274}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !405, file: !31, line: 1884, baseType: !529, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!113, !381, !532, !373, !373}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !405, file: !31, line: 1886, baseType: !535, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!113, !381, !538, !113}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !405, file: !31, line: 1887, baseType: !540, size: 64, offset: 1152)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!113, !381, !334, !304, !7, !268}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !405, file: !31, line: 1890, baseType: !455, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !405, file: !31, line: 1891, baseType: !545, size: 64, offset: 1280)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!113, !381, !432, !113}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !382, file: !31, line: 623, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !607, !2277, !2359, !2442, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2458, !2462, !2463, !2466, !2467, !2470, !2471, !2472, !2513, !2540, !2541, !2542, !2543, !2544, !2545, !2548, !2550, !2557, !2558, !2560, !2561, !2562, !2621, !2622, !2637, !2638, !2639, !2640, !2641, !2644, !2645, !2646, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !550, file: !31, line: 1417, baseType: !174, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !550, file: !31, line: 1418, baseType: !463, size: 32, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !550, file: !31, line: 1419, baseType: !379, size: 8, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !550, file: !31, line: 1420, baseType: !119, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !550, file: !31, line: 1421, baseType: !481, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !550, file: !31, line: 1422, baseType: !558, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !560)
!560 = !{!561, !562, !563, !570, !574, !578, !582, !586, !587, !597, !600, !601, !602, !604, !605, !606}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !559, file: !31, line: 2229, baseType: !170, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !559, file: !31, line: 2230, baseType: !113, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !559, file: !31, line: 2238, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!113, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !569, line: 28, flags: DIFlagFwdDecl)
!569 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!570 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !559, file: !31, line: 2239, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !559, file: !31, line: 2240, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!334, !558, !113, !170, !117}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !559, file: !31, line: 2242, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !549}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !559, file: !31, line: 2243, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !585, line: 76, flags: DIFlagFwdDecl)
!585 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !31, line: 2244, baseType: !558, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !559, file: !31, line: 2245, baseType: !588, size: 64, offset: 512)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !116, line: 182, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !588, file: !116, line: 183, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !116, line: 186, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !116, line: 187, baseType: !591, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !592, file: !116, line: 187, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !559, file: !31, line: 2247, baseType: !598, offset: 576)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !599, line: 187, elements: !201)
!599 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !559, file: !31, line: 2248, baseType: !598, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !559, file: !31, line: 2249, baseType: !598, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !559, file: !31, line: 2250, baseType: !603, offset: 576)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, elements: !229)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !559, file: !31, line: 2252, baseType: !598, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !559, file: !31, line: 2253, baseType: !598, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !559, file: !31, line: 2254, baseType: !598, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !550, file: !31, line: 1423, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !611)
!611 = !{!612, !616, !620, !621, !625, !631, !635, !636, !637, !641, !645, !646, !647, !648, !654, !659, !660, !716, !717, !718, !719, !2261, !2276}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !610, file: !31, line: 1936, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!381, !549}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !610, file: !31, line: 1937, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !381}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !610, file: !31, line: 1938, baseType: !617, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !610, file: !31, line: 1940, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !381, !113}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !610, file: !31, line: 1941, baseType: !626, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!113, !381, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !610, file: !31, line: 1942, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!113, !381}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !610, file: !31, line: 1943, baseType: !617, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !610, file: !31, line: 1944, baseType: !579, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !610, file: !31, line: 1945, baseType: !638, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!113, !549, !113}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !610, file: !31, line: 1946, baseType: !642, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!113, !549}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !610, file: !31, line: 1947, baseType: !642, size: 64, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !610, file: !31, line: 1948, baseType: !642, size: 64, offset: 704)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !610, file: !31, line: 1949, baseType: !642, size: 64, offset: 768)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !610, file: !31, line: 1950, baseType: !649, size: 64, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!113, !334, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !610, file: !31, line: 1951, baseType: !655, size: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!113, !549, !658, !228}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !610, file: !31, line: 1952, baseType: !579, size: 64, offset: 960)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !610, file: !31, line: 1954, baseType: !661, size: 64, offset: 1024)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!113, !664, !334}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !666, line: 16, size: 896, elements: !667)
!666 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !689, !711, !712, !715}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !665, file: !666, line: 17, baseType: !228, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !665, file: !666, line: 18, baseType: !274, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !665, file: !666, line: 19, baseType: !274, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !665, file: !666, line: 20, baseType: !274, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !665, file: !666, line: 21, baseType: !274, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !665, file: !666, line: 22, baseType: !481, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !665, file: !666, line: 23, baseType: !481, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !665, file: !666, line: 24, baseType: !676, size: 192, offset: 448)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !677, line: 53, size: 192, elements: !678)
!677 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!678 = !{!679, !687, !688}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !676, file: !677, line: 54, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !681, line: 13, baseType: !682)
!681 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !116, line: 175, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 173, size: 64, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !683, file: !116, line: 174, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !368, line: 22, baseType: !490)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !676, file: !677, line: 55, baseType: !187, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !676, file: !677, line: 59, baseType: !174, size: 128, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !665, file: !666, line: 25, baseType: !690, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !666, line: 31, size: 256, elements: !693)
!693 = !{!694, !699, !703, !707}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !692, file: !666, line: 32, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!117, !664, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !692, file: !666, line: 33, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !664, !117}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !666, line: 34, baseType: !704, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!117, !664, !117, !698}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !692, file: !666, line: 35, baseType: !708, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!113, !664, !117}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !665, file: !666, line: 26, baseType: !113, size: 32, offset: 704)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !665, file: !666, line: 27, baseType: !713, size: 64, offset: 768)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !665, file: !666, line: 28, baseType: !117, size: 64, offset: 832)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !610, file: !31, line: 1955, baseType: !661, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !610, file: !31, line: 1956, baseType: !661, size: 64, offset: 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !610, file: !31, line: 1957, baseType: !661, size: 64, offset: 1216)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !610, file: !31, line: 1963, baseType: !720, size: 64, offset: 1280)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!113, !549, !723, !115}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !725, line: 68, size: 512, align: 128, elements: !726)
!725 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !728, !2253, !2260}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !725, line: 69, baseType: !119, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 77, baseType: !729, size: 320, offset: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 77, size: 320, elements: !730)
!730 = !{!731, !911, !916, !944, !952, !958, !2245, !2252}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 78, baseType: !732, size: 320)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 78, size: 320, elements: !733)
!733 = !{!734, !735, !909, !910}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !732, file: !725, line: 84, baseType: !174, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !732, file: !725, line: 86, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !738)
!738 = !{!739, !740, !747, !748, !753, !768, !777, !778, !779, !780, !902, !903, !906, !907, !908}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !737, file: !31, line: 452, baseType: !381, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !737, file: !31, line: 453, baseType: !741, size: 128, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !742, line: 292, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !741, file: !742, line: 293, baseType: !187)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !741, file: !742, line: 295, baseType: !115, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !741, file: !742, line: 296, baseType: !117, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !737, file: !31, line: 454, baseType: !115, size: 32, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !737, file: !31, line: 455, baseType: !749, size: 32, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !116, line: 168, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 166, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !750, file: !116, line: 167, baseType: !113, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !737, file: !31, line: 460, baseType: !754, size: 128, offset: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !755, line: 125, size: 128, elements: !756)
!755 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !767}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !754, file: !755, line: 126, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !755, line: 31, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !758, file: !755, line: 32, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !755, line: 24, size: 192, align: 64, elements: !763)
!763 = !{!764, !765, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !762, file: !755, line: 25, baseType: !119, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !762, file: !755, line: 26, baseType: !761, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !762, file: !755, line: 27, baseType: !761, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !754, file: !755, line: 127, baseType: !761, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !737, file: !31, line: 461, baseType: !769, size: 256, offset: 384)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !770, line: 35, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !773, !774, !776}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !769, file: !770, line: 36, baseType: !680, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !769, file: !770, line: 42, baseType: !680, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !769, file: !770, line: 46, baseType: !775, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !188, line: 29, baseType: !195)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !769, file: !770, line: 47, baseType: !174, size: 128, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !737, file: !31, line: 462, baseType: !119, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !737, file: !31, line: 463, baseType: !119, size: 64, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !737, file: !31, line: 464, baseType: !119, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !737, file: !31, line: 465, baseType: !781, size: 64, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !784)
!784 = !{!785, !789, !793, !797, !801, !805, !811, !817, !821, !826, !830, !834, !838, !866, !870, !876, !877, !878, !882, !887, !891, !898}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !783, file: !31, line: 368, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!113, !723, !629}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !783, file: !31, line: 369, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!113, !304, !723}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !783, file: !31, line: 372, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!113, !736, !629}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !783, file: !31, line: 375, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!113, !723}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !783, file: !31, line: 381, baseType: !802, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!113, !304, !736, !177, !7}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !783, file: !31, line: 383, baseType: !806, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !783, file: !31, line: 385, baseType: !812, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!113, !304, !736, !481, !7, !7, !815, !816}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !783, file: !31, line: 388, baseType: !818, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!113, !304, !736, !481, !7, !7, !723, !117}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !783, file: !31, line: 393, baseType: !822, size: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !736, !825}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !116, line: 125, baseType: !373)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !783, file: !31, line: 394, baseType: !827, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !723, !7, !7}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !783, file: !31, line: 395, baseType: !831, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!113, !723, !115}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !783, file: !31, line: 396, baseType: !835, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !723}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !783, file: !31, line: 397, baseType: !839, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!259, !842, !864}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !844)
!844 = !{!845, !846, !847, !851, !852, !853, !856, !857}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !843, file: !31, line: 321, baseType: !304, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !843, file: !31, line: 326, baseType: !481, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !843, file: !31, line: 327, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !842, !114, !114}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !843, file: !31, line: 328, baseType: !117, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !843, file: !31, line: 329, baseType: !113, size: 32, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !843, file: !31, line: 330, baseType: !854, size: 16, offset: 288)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !368, line: 19, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !370, line: 24, baseType: !269)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !843, file: !31, line: 331, baseType: !854, size: 16, offset: 304)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !31, line: 332, baseType: !858, size: 64, offset: 320)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !31, line: 332, size: 64, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !858, file: !31, line: 333, baseType: !7, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !858, file: !31, line: 334, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !783, file: !31, line: 402, baseType: !867, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!113, !736, !723, !723, !5}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !783, file: !31, line: 404, baseType: !871, size: 64, offset: 896)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!151, !723, !874}
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !875, line: 305, baseType: !7)
!875 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!876 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !783, file: !31, line: 405, baseType: !835, size: 64, offset: 960)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !783, file: !31, line: 406, baseType: !798, size: 64, offset: 1024)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !783, file: !31, line: 407, baseType: !879, size: 64, offset: 1088)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!113, !723, !119, !119}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !783, file: !31, line: 409, baseType: !883, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !723, !886, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !783, file: !31, line: 410, baseType: !888, size: 64, offset: 1216)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!113, !736, !723}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !783, file: !31, line: 413, baseType: !892, size: 64, offset: 1280)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!113, !895, !304, !897}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !783, file: !31, line: 415, baseType: !899, size: 64, offset: 1344)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !304}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !31, line: 466, baseType: !119, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !737, file: !31, line: 467, baseType: !904, size: 32, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !905, line: 8, baseType: !367)
!905 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!906 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !737, file: !31, line: 468, baseType: !187, offset: 992)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !737, file: !31, line: 469, baseType: !174, size: 128, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !737, file: !31, line: 470, baseType: !117, size: 64, offset: 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !732, file: !725, line: 87, baseType: !119, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !732, file: !725, line: 94, baseType: !119, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 96, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 96, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !912, file: !725, line: 101, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !116, line: 143, baseType: !373)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 103, baseType: !917, size: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 103, size: 320, elements: !918)
!918 = !{!919, !929, !932, !933}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !725, line: 104, baseType: !920, size: 128)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !725, line: 104, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !920, file: !725, line: 105, baseType: !174, size: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !725, line: 106, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !725, line: 106, size: 128, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !725, line: 107, baseType: !723, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !924, file: !725, line: 109, baseType: !113, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !924, file: !725, line: 110, baseType: !113, size: 32, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !917, file: !725, line: 117, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !725, line: 117, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !917, file: !725, line: 119, baseType: !117, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !725, line: 120, baseType: !934, size: 64, offset: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !725, line: 120, size: 64, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !934, file: !725, line: 121, baseType: !117, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !934, file: !725, line: 122, baseType: !119, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !725, line: 123, baseType: !939, size: 32)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !725, line: 123, size: 32, elements: !940)
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !939, file: !725, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !939, file: !725, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !939, file: !725, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 130, baseType: !945, size: 192)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 130, size: 192, elements: !946)
!946 = !{!947, !948, !949, !950, !951}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !945, file: !725, line: 131, baseType: !119, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !945, file: !725, line: 134, baseType: !379, size: 8, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !945, file: !725, line: 135, baseType: !379, size: 8, offset: 72)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !945, file: !725, line: 136, baseType: !749, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !945, file: !725, line: 137, baseType: !7, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 139, baseType: !953, size: 256)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 139, size: 256, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !953, file: !725, line: 140, baseType: !119, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !953, file: !725, line: 141, baseType: !749, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !953, file: !725, line: 143, baseType: !174, size: 128, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 145, baseType: !959, size: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 145, size: 256, elements: !960)
!960 = !{!961, !962, !965, !966, !2244}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !959, file: !725, line: 146, baseType: !119, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !959, file: !725, line: 147, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !964, line: 509, baseType: !723)
!964 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !959, file: !725, line: 148, baseType: !119, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !725, line: 149, baseType: !967, size: 64, offset: 192)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !725, line: 149, size: 64, elements: !968)
!968 = !{!969, !2243}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !967, file: !725, line: 150, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !725, line: 388, size: 7296, elements: !972)
!972 = !{!973, !2239}
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !725, line: 389, baseType: !974, size: 7296)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !725, line: 389, size: 7296, elements: !975)
!975 = !{!976, !1014, !1015, !1016, !1020, !1021, !1022, !1023, !1024, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1065, !1073, !1076, !1116, !1117, !2223, !2224, !2227, !2228, !2229, !2232, !2233, !2234, !2237, !2238}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !974, file: !725, line: 390, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !725, line: 305, size: 1472, elements: !979)
!979 = !{!980, !981, !982, !983, !984, !985, !986, !987, !994, !995, !1000, !1001, !1004, !1008, !1009, !1010, !1011, !1012}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !978, file: !725, line: 308, baseType: !119, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !978, file: !725, line: 309, baseType: !119, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !978, file: !725, line: 313, baseType: !977, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !978, file: !725, line: 313, baseType: !977, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !978, file: !725, line: 315, baseType: !762, size: 192, align: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !978, file: !725, line: 323, baseType: !119, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !978, file: !725, line: 327, baseType: !970, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !978, file: !725, line: 333, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !964, line: 284, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !964, line: 284, size: 64, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !989, file: !964, line: 284, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !993, line: 19, baseType: !119)
!993 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !978, file: !725, line: 334, baseType: !119, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !978, file: !725, line: 343, baseType: !996, size: 256, offset: 704)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !725, line: 340, size: 256, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !996, file: !725, line: 341, baseType: !762, size: 192, align: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !996, file: !725, line: 342, baseType: !119, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !978, file: !725, line: 351, baseType: !174, size: 128, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !978, file: !725, line: 353, baseType: !1002, size: 64, offset: 1088)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !725, line: 353, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !978, file: !725, line: 356, baseType: !1005, size: 64, offset: 1152)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !725, line: 356, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !978, file: !725, line: 359, baseType: !119, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !978, file: !725, line: 361, baseType: !304, size: 64, offset: 1280)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !978, file: !725, line: 362, baseType: !117, size: 64, offset: 1344)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !978, file: !725, line: 365, baseType: !680, size: 64, offset: 1408)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !978, file: !725, line: 373, baseType: !1013, offset: 1472)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !725, line: 296, elements: !201)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !974, file: !725, line: 391, baseType: !758, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !974, file: !725, line: 392, baseType: !373, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !974, file: !725, line: 394, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!119, !304, !119, !119, !119, !119}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !974, file: !725, line: 398, baseType: !119, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !974, file: !725, line: 399, baseType: !119, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !974, file: !725, line: 405, baseType: !119, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !974, file: !725, line: 406, baseType: !119, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !974, file: !725, line: 407, baseType: !1025, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !964, line: 286, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !964, line: 286, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1027, file: !964, line: 286, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !993, line: 18, baseType: !119)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !974, file: !725, line: 416, baseType: !749, size: 32, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !974, file: !725, line: 428, baseType: !749, size: 32, offset: 608)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !974, file: !725, line: 437, baseType: !749, size: 32, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !974, file: !725, line: 447, baseType: !749, size: 32, offset: 672)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !974, file: !725, line: 450, baseType: !680, size: 64, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !974, file: !725, line: 452, baseType: !113, size: 32, offset: 768)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !974, file: !725, line: 454, baseType: !187, offset: 800)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !974, file: !725, line: 457, baseType: !769, size: 256, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !974, file: !725, line: 459, baseType: !174, size: 128, offset: 1088)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !974, file: !725, line: 466, baseType: !119, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !974, file: !725, line: 467, baseType: !119, size: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !974, file: !725, line: 469, baseType: !119, size: 64, offset: 1344)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !974, file: !725, line: 470, baseType: !119, size: 64, offset: 1408)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !974, file: !725, line: 471, baseType: !682, size: 64, offset: 1472)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !974, file: !725, line: 472, baseType: !119, size: 64, offset: 1536)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !974, file: !725, line: 473, baseType: !119, size: 64, offset: 1600)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !974, file: !725, line: 474, baseType: !119, size: 64, offset: 1664)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !974, file: !725, line: 475, baseType: !119, size: 64, offset: 1728)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !974, file: !725, line: 477, baseType: !187, offset: 1792)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !974, file: !725, line: 478, baseType: !119, size: 64, offset: 1792)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !974, file: !725, line: 478, baseType: !119, size: 64, offset: 1856)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !974, file: !725, line: 478, baseType: !119, size: 64, offset: 1920)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !974, file: !725, line: 478, baseType: !119, size: 64, offset: 1984)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !974, file: !725, line: 479, baseType: !119, size: 64, offset: 2048)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !974, file: !725, line: 479, baseType: !119, size: 64, offset: 2112)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !974, file: !725, line: 479, baseType: !119, size: 64, offset: 2176)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !974, file: !725, line: 480, baseType: !119, size: 64, offset: 2240)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !974, file: !725, line: 480, baseType: !119, size: 64, offset: 2304)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !974, file: !725, line: 480, baseType: !119, size: 64, offset: 2368)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !974, file: !725, line: 480, baseType: !119, size: 64, offset: 2432)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !974, file: !725, line: 482, baseType: !1062, size: 2816, offset: 2496)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 2816, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: 44)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !974, file: !725, line: 488, baseType: !1066, size: 256, offset: 5312)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1067, line: 60, size: 256, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1066, file: !1067, line: 61, baseType: !1070, size: 256)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 256, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 4)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !974, file: !725, line: 490, baseType: !1074, size: 64, offset: 5568)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !725, line: 490, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !974, file: !725, line: 493, baseType: !1077, size: 896, offset: 5632)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1078, line: 53, baseType: !1079)
!1078 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1078, line: 13, size: 896, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1087, !1088, !1089, !1090, !1110, !1111, !1112}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1079, file: !1078, line: 18, baseType: !373, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1079, file: !1078, line: 28, baseType: !682, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1079, file: !1078, line: 31, baseType: !769, size: 256, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1079, file: !1078, line: 32, baseType: !1085, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1078, line: 32, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1079, file: !1078, line: 37, baseType: !269, size: 16, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1079, file: !1078, line: 40, baseType: !676, size: 192, offset: 512)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1079, file: !1078, line: 41, baseType: !117, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1079, file: !1078, line: 42, baseType: !1091, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1094, line: 13, size: 896, elements: !1095)
!1094 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1093, file: !1094, line: 14, baseType: !117, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1093, file: !1094, line: 15, baseType: !119, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1093, file: !1094, line: 17, baseType: !119, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1093, file: !1094, line: 17, baseType: !119, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1093, file: !1094, line: 19, baseType: !114, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1093, file: !1094, line: 21, baseType: !114, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1093, file: !1094, line: 22, baseType: !114, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1093, file: !1094, line: 23, baseType: !114, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1093, file: !1094, line: 24, baseType: !114, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1093, file: !1094, line: 25, baseType: !114, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1093, file: !1094, line: 26, baseType: !114, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1093, file: !1094, line: 27, baseType: !114, size: 64, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1093, file: !1094, line: 28, baseType: !114, size: 64, offset: 768)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1093, file: !1094, line: 29, baseType: !114, size: 64, offset: 832)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1079, file: !1078, line: 44, baseType: !749, size: 32, offset: 832)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1079, file: !1078, line: 50, baseType: !854, size: 16, offset: 864)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1079, file: !1078, line: 51, baseType: !1113, size: 16, offset: 880)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !368, line: 18, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !370, line: 23, baseType: !1115)
!1115 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !725, line: 495, baseType: !119, size: 64, offset: 6528)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !974, file: !725, line: 497, baseType: !1118, size: 64, offset: 6592)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !725, line: 381, size: 384, elements: !1120)
!1120 = !{!1121, !1122, !2222}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1119, file: !725, line: 382, baseType: !749, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1119, file: !725, line: 383, baseType: !1123, size: 128, offset: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !725, line: 376, size: 128, elements: !1124)
!1124 = !{!1125, !2220}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1123, file: !725, line: 377, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1128, line: 640, size: 48640, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1136, !1138, !1139, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1156, !1174, !1185, !1270, !1271, !1272, !1283, !1284, !1286, !1287, !1288, !1289, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1368, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1406, !1408, !1409, !1410, !1422, !1423, !1424, !1425, !1426, !1427, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1451, !1456, !1640, !1641, !1642, !1643, !1647, !1650, !1653, !1656, !1659, !1663, !1764, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1810, !1811, !1812, !1813, !1814, !1819, !1820, !1821, !1824, !1825, !1828, !1831, !1834, !1837, !1880, !1883, !1884, !1963, !1964, !1967, !1968, !1971, !1972, !1973, !1977, !1978, !1979, !1992, !1993, !1994, !2004, !2009, !2012, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1127, file: !1128, line: 646, baseType: !1131, size: 128)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1132, line: 56, size: 128, elements: !1133)
!1132 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !1132, line: 57, baseType: !119, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1131, file: !1132, line: 58, baseType: !367, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1127, file: !1128, line: 649, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1127, file: !1128, line: 657, baseType: !117, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1127, file: !1128, line: 658, baseType: !1140, size: 32, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1141, line: 113, baseType: !1142)
!1141 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1141, line: 111, size: 32, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1142, file: !1141, line: 112, baseType: !749, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !1128, line: 660, baseType: !7, size: 32, offset: 288)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1127, file: !1128, line: 661, baseType: !7, size: 32, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1127, file: !1128, line: 684, baseType: !113, size: 32, offset: 352)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1127, file: !1128, line: 686, baseType: !113, size: 32, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1127, file: !1128, line: 687, baseType: !113, size: 32, offset: 416)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1127, file: !1128, line: 688, baseType: !113, size: 32, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1127, file: !1128, line: 689, baseType: !7, size: 32, offset: 480)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1127, file: !1128, line: 691, baseType: !1153, size: 64, offset: 512)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1155)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1128, line: 691, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1127, file: !1128, line: 692, baseType: !1157, size: 832, offset: 576)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1128, line: 451, size: 832, elements: !1158)
!1158 = !{!1159, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1157, file: !1128, line: 453, baseType: !1160, size: 128)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1128, line: 325, size: 128, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1160, file: !1128, line: 326, baseType: !119, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1160, file: !1128, line: 327, baseType: !367, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1157, file: !1128, line: 454, baseType: !762, size: 192, align: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1157, file: !1128, line: 455, baseType: !174, size: 128, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1157, file: !1128, line: 456, baseType: !7, size: 32, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1157, file: !1128, line: 458, baseType: !373, size: 64, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1157, file: !1128, line: 459, baseType: !373, size: 64, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1157, file: !1128, line: 460, baseType: !373, size: 64, offset: 640)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1157, file: !1128, line: 461, baseType: !373, size: 64, offset: 704)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1157, file: !1128, line: 463, baseType: !373, size: 64, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1157, file: !1128, line: 465, baseType: !1173, offset: 832)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1128, line: 415, elements: !201)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1127, file: !1128, line: 693, baseType: !1175, size: 384, offset: 1408)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1128, line: 489, size: 384, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1175, file: !1128, line: 490, baseType: !174, size: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1175, file: !1128, line: 491, baseType: !119, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1175, file: !1128, line: 492, baseType: !119, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1175, file: !1128, line: 493, baseType: !7, size: 32, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1175, file: !1128, line: 494, baseType: !269, size: 16, offset: 288)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1175, file: !1128, line: 495, baseType: !269, size: 16, offset: 304)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1175, file: !1128, line: 497, baseType: !1184, size: 64, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1127, file: !1128, line: 697, baseType: !1186, size: 1792, offset: 1792)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1128, line: 507, size: 1792, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1267, !1268}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1186, file: !1128, line: 508, baseType: !762, size: 192, align: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1186, file: !1128, line: 515, baseType: !373, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1186, file: !1128, line: 516, baseType: !373, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1186, file: !1128, line: 517, baseType: !373, size: 64, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1186, file: !1128, line: 518, baseType: !373, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1186, file: !1128, line: 519, baseType: !373, size: 64, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1186, file: !1128, line: 526, baseType: !686, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1186, file: !1128, line: 527, baseType: !373, size: 64, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1128, line: 528, baseType: !7, size: 32, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1186, file: !1128, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1186, file: !1128, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1186, file: !1128, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1186, file: !1128, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1186, file: !1128, line: 563, baseType: !1202, size: 512, offset: 704)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1203)
!1203 = !{!1204, !1212, !1213, !1218, !1261, !1264, !1265, !1266}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1202, file: !14, line: 119, baseType: !1205, size: 256)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1206, line: 9, size: 256, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1205, file: !1206, line: 10, baseType: !762, size: 192, align: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1205, file: !1206, line: 11, baseType: !1210, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1211, line: 29, baseType: !686)
!1211 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1202, file: !14, line: 120, baseType: !1210, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1202, file: !14, line: 121, baseType: !1214, size: 64, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!13, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1202, file: !14, line: 122, baseType: !1219, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1221)
!1221 = !{!1222, !1242, !1243, !1246, !1251, !1252, !1256, !1260}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1220, file: !14, line: 160, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1224, file: !14, line: 215, baseType: !775)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1224, file: !14, line: 216, baseType: !7, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1224, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1224, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1224, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1224, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1224, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1224, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1224, file: !14, line: 233, baseType: !1210, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1224, file: !14, line: 234, baseType: !1217, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1224, file: !14, line: 235, baseType: !1210, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1224, file: !14, line: 236, baseType: !1217, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1224, file: !14, line: 237, baseType: !1239, size: 4096, offset: 512)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 4096, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 8)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1220, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1220, file: !14, line: 162, baseType: !1244, size: 32, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !116, line: 27, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !261, line: 96, baseType: !113)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1220, file: !14, line: 163, baseType: !1247, size: 32, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !340, line: 276, baseType: !1248)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !340, line: 276, size: 32, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1248, file: !340, line: 276, baseType: !344, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1220, file: !14, line: 164, baseType: !1217, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1220, file: !14, line: 165, baseType: !1253, size: 128, offset: 256)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1206, line: 14, size: 128, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1253, file: !1206, line: 15, baseType: !754, size: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1220, file: !14, line: 166, baseType: !1257, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1210}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1220, file: !14, line: 167, baseType: !1210, size: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1202, file: !14, line: 123, baseType: !1262, size: 8, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !368, line: 17, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !370, line: 21, baseType: !379)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1202, file: !14, line: 124, baseType: !1262, size: 8, offset: 456)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1202, file: !14, line: 125, baseType: !1262, size: 8, offset: 464)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1202, file: !14, line: 126, baseType: !1262, size: 8, offset: 472)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1186, file: !1128, line: 572, baseType: !1202, size: 512, offset: 1216)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1186, file: !1128, line: 580, baseType: !1269, size: 64, offset: 1728)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1127, file: !1128, line: 721, baseType: !7, size: 32, offset: 3584)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1127, file: !1128, line: 722, baseType: !113, size: 32, offset: 3616)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1127, file: !1128, line: 723, baseType: !1273, size: 64, offset: 3648)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1276, line: 17, baseType: !1277)
!1276 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1276, line: 17, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1277, file: !1276, line: 17, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 1)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1127, file: !1128, line: 724, baseType: !1275, size: 64, offset: 3712)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1127, file: !1128, line: 749, baseType: !1285, offset: 3776)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1128, line: 290, elements: !201)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1127, file: !1128, line: 751, baseType: !174, size: 128, offset: 3776)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1127, file: !1128, line: 757, baseType: !970, size: 64, offset: 3904)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1127, file: !1128, line: 758, baseType: !970, size: 64, offset: 3968)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1127, file: !1128, line: 761, baseType: !1290, size: 320, offset: 4032)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1067, line: 34, size: 320, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1290, file: !1067, line: 35, baseType: !373, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1290, file: !1067, line: 36, baseType: !1294, size: 256, offset: 64)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 256, elements: !1071)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1127, file: !1128, line: 766, baseType: !113, size: 32, offset: 4352)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1127, file: !1128, line: 767, baseType: !113, size: 32, offset: 4384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1127, file: !1128, line: 768, baseType: !113, size: 32, offset: 4416)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1127, file: !1128, line: 770, baseType: !113, size: 32, offset: 4448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1127, file: !1128, line: 772, baseType: !119, size: 64, offset: 4480)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1127, file: !1128, line: 775, baseType: !7, size: 32, offset: 4544)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1127, file: !1128, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1127, file: !1128, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1127, file: !1128, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1127, file: !1128, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1127, file: !1128, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1127, file: !1128, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1127, file: !1128, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1127, file: !1128, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1127, file: !1128, line: 831, baseType: !119, size: 64, offset: 4672)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1127, file: !1128, line: 833, baseType: !1311, size: 384, offset: 4736)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1312)
!1312 = !{!1313, !1318}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1311, file: !19, line: 26, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!114, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !19, line: 27, baseType: !1319, size: 320, offset: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !19, line: 27, size: 320, elements: !1320)
!1320 = !{!1321, !1331, !1358}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1319, file: !19, line: 36, baseType: !1322, size: 320)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1319, file: !19, line: 29, size: 320, elements: !1323)
!1323 = !{!1324, !1326, !1327, !1328, !1329, !1330}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1322, file: !19, line: 30, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1322, file: !19, line: 31, baseType: !367, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1322, file: !19, line: 32, baseType: !367, size: 32, offset: 96)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1322, file: !19, line: 33, baseType: !367, size: 32, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1322, file: !19, line: 34, baseType: !373, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1322, file: !19, line: 35, baseType: !1325, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1319, file: !19, line: 46, baseType: !1332, size: 192)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1319, file: !19, line: 38, size: 192, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1357}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1332, file: !19, line: 39, baseType: !1244, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1332, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !19, line: 41, baseType: !1337, size: 64, offset: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !19, line: 41, size: 64, elements: !1338)
!1338 = !{!1339, !1347}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1337, file: !19, line: 42, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1342, line: 7, size: 128, elements: !1343)
!1342 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1341, file: !1342, line: 8, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !261, line: 93, baseType: !483)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1341, file: !1342, line: 9, baseType: !483, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1337, file: !19, line: 43, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1350, line: 7, size: 64, elements: !1351)
!1350 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !{!1352, !1356}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1349, file: !1350, line: 8, baseType: !1353, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1350, line: 5, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !368, line: 20, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !370, line: 26, baseType: !113)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1349, file: !1350, line: 9, baseType: !1354, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1332, file: !19, line: 45, baseType: !373, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1319, file: !19, line: 54, baseType: !1359, size: 256)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1319, file: !19, line: 48, size: 256, elements: !1360)
!1360 = !{!1361, !1364, !1365, !1366, !1367}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1359, file: !19, line: 49, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1359, file: !19, line: 50, baseType: !113, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1359, file: !19, line: 51, baseType: !113, size: 32, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1359, file: !19, line: 52, baseType: !119, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1359, file: !19, line: 53, baseType: !119, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1127, file: !1128, line: 835, baseType: !1369, size: 32, offset: 5120)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !116, line: 22, baseType: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !261, line: 28, baseType: !113)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1127, file: !1128, line: 836, baseType: !1369, size: 32, offset: 5152)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1127, file: !1128, line: 840, baseType: !119, size: 64, offset: 5184)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1127, file: !1128, line: 849, baseType: !1126, size: 64, offset: 5248)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1127, file: !1128, line: 852, baseType: !1126, size: 64, offset: 5312)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1127, file: !1128, line: 857, baseType: !174, size: 128, offset: 5376)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1127, file: !1128, line: 858, baseType: !174, size: 128, offset: 5504)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1127, file: !1128, line: 859, baseType: !1126, size: 64, offset: 5632)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1127, file: !1128, line: 867, baseType: !174, size: 128, offset: 5696)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1127, file: !1128, line: 868, baseType: !174, size: 128, offset: 5824)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1127, file: !1128, line: 871, baseType: !1381, size: 64, offset: 5952)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1389, !1390, !1397, !1398}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1382, file: !40, line: 61, baseType: !1140, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1382, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !40, line: 63, baseType: !187, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1382, file: !40, line: 65, baseType: !1388, size: 256, offset: 64)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 256, elements: !1071)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1382, file: !40, line: 66, baseType: !588, size: 64, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1382, file: !40, line: 68, baseType: !1391, size: 128, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1392, line: 40, baseType: !1393)
!1392 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1392, line: 36, size: 128, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1393, file: !1392, line: 37, baseType: !187)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1393, file: !1392, line: 38, baseType: !174, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1382, file: !40, line: 69, baseType: !317, size: 128, align: 64, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1382, file: !40, line: 70, baseType: !1399, size: 128, offset: 640)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 128, elements: !1281)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1400, file: !40, line: 55, baseType: !113, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1400, file: !40, line: 56, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1127, file: !1128, line: 872, baseType: !1407, size: 512, offset: 6016)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 512, elements: !1071)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1127, file: !1128, line: 873, baseType: !174, size: 128, offset: 6528)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1127, file: !1128, line: 874, baseType: !174, size: 128, offset: 6656)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1127, file: !1128, line: 876, baseType: !1411, size: 64, offset: 6784)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1413, line: 26, size: 192, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1412, file: !1413, line: 27, baseType: !7, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1412, file: !1413, line: 28, baseType: !1417, size: 128, offset: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1418, line: 43, size: 128, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1417, file: !1418, line: 44, baseType: !775)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1417, file: !1418, line: 45, baseType: !174, size: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1127, file: !1128, line: 879, baseType: !658, size: 64, offset: 6848)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1127, file: !1128, line: 882, baseType: !658, size: 64, offset: 6912)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1127, file: !1128, line: 884, baseType: !373, size: 64, offset: 6976)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1127, file: !1128, line: 885, baseType: !373, size: 64, offset: 7040)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1127, file: !1128, line: 890, baseType: !373, size: 64, offset: 7104)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1127, file: !1128, line: 891, baseType: !1428, size: 128, offset: 7168)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1128, line: 242, size: 128, elements: !1429)
!1429 = !{!1430, !1431, !1432}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1428, file: !1128, line: 244, baseType: !373, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1428, file: !1128, line: 245, baseType: !373, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1428, file: !1128, line: 246, baseType: !775, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1127, file: !1128, line: 900, baseType: !119, size: 64, offset: 7296)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1127, file: !1128, line: 901, baseType: !119, size: 64, offset: 7360)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1127, file: !1128, line: 904, baseType: !373, size: 64, offset: 7424)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1127, file: !1128, line: 907, baseType: !373, size: 64, offset: 7488)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1127, file: !1128, line: 910, baseType: !119, size: 64, offset: 7552)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1127, file: !1128, line: 911, baseType: !119, size: 64, offset: 7616)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1127, file: !1128, line: 914, baseType: !1440, size: 640, offset: 7680)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1441, line: 123, size: 640, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1449, !1450}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1440, file: !1441, line: 124, baseType: !1444, size: 576)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1445, size: 576, elements: !229)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1441, line: 108, size: 192, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1445, file: !1441, line: 109, baseType: !373, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1445, file: !1441, line: 110, baseType: !1253, size: 128, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1440, file: !1441, line: 125, baseType: !7, size: 32, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1440, file: !1441, line: 126, baseType: !7, size: 32, offset: 608)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1127, file: !1128, line: 917, baseType: !1452, size: 192, offset: 8320)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1441, line: 134, size: 192, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1452, file: !1441, line: 135, baseType: !317, size: 128, align: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1452, file: !1441, line: 136, baseType: !7, size: 32, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1127, file: !1128, line: 923, baseType: !1457, size: 64, offset: 8512)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1460, line: 111, size: 1280, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1481, !1482, !1483, !1484, !1485, !1486, !1593, !1594, !1595, !1596, !1622, !1625, !1635}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1459, file: !1460, line: 112, baseType: !749, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1459, file: !1460, line: 120, baseType: !387, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1459, file: !1460, line: 121, baseType: !395, size: 32, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1459, file: !1460, line: 122, baseType: !387, size: 32, offset: 96)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1459, file: !1460, line: 123, baseType: !395, size: 32, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1459, file: !1460, line: 124, baseType: !387, size: 32, offset: 160)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1459, file: !1460, line: 125, baseType: !395, size: 32, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1459, file: !1460, line: 126, baseType: !387, size: 32, offset: 224)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1459, file: !1460, line: 127, baseType: !395, size: 32, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1459, file: !1460, line: 128, baseType: !7, size: 32, offset: 288)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1459, file: !1460, line: 129, baseType: !1473, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1474, line: 26, baseType: !1475)
!1474 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1474, line: 24, size: 64, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1475, file: !1474, line: 25, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 64, elements: !1479)
!1479 = !{!1480}
!1480 = !DISubrange(count: 2)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1459, file: !1460, line: 130, baseType: !1473, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1459, file: !1460, line: 131, baseType: !1473, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1459, file: !1460, line: 132, baseType: !1473, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1459, file: !1460, line: 133, baseType: !1473, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1459, file: !1460, line: 135, baseType: !379, size: 8, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1459, file: !1460, line: 137, baseType: !1487, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1489, line: 189, size: 1664, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1492, !1495, !1500, !1501, !1504, !1505, !1510, !1511, !1512, !1513, !1515, !1516, !1517, !1518, !1519, !1557, !1578}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1488, file: !1489, line: 190, baseType: !1140, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1488, file: !1489, line: 191, baseType: !1493, size: 32, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1489, line: 28, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !116, line: 98, baseType: !1354)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1489, line: 192, baseType: !1496, size: 192, offset: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1489, line: 192, size: 192, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1496, file: !1489, line: 193, baseType: !174, size: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1496, file: !1489, line: 194, baseType: !762, size: 192, align: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1488, file: !1489, line: 199, baseType: !769, size: 256, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1488, file: !1489, line: 200, baseType: !1502, size: 64, offset: 512)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1489, line: 200, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1488, file: !1489, line: 201, baseType: !117, size: 64, offset: 576)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1489, line: 202, baseType: !1506, size: 64, offset: 640)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1489, line: 202, size: 64, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1506, file: !1489, line: 203, baseType: !489, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1506, file: !1489, line: 204, baseType: !489, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1488, file: !1489, line: 206, baseType: !489, size: 64, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1488, file: !1489, line: 207, baseType: !387, size: 32, offset: 768)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1488, file: !1489, line: 208, baseType: !395, size: 32, offset: 800)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1488, file: !1489, line: 209, baseType: !1514, size: 32, offset: 832)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1489, line: 31, baseType: !509)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1488, file: !1489, line: 210, baseType: !269, size: 16, offset: 864)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1488, file: !1489, line: 211, baseType: !269, size: 16, offset: 880)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1488, file: !1489, line: 215, baseType: !1115, size: 16, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1488, file: !1489, line: 222, baseType: !119, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1489, line: 239, baseType: !1520, size: 320, offset: 1024)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1489, line: 239, size: 320, elements: !1521)
!1521 = !{!1522, !1549}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1520, file: !1489, line: 240, baseType: !1523, size: 320)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1489, line: 108, size: 320, elements: !1524)
!1524 = !{!1525, !1526, !1538, !1541, !1548}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1523, file: !1489, line: 110, baseType: !119, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !1489, line: 111, baseType: !1527, size: 64, offset: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !1489, line: 111, size: 64, elements: !1528)
!1528 = !{!1529, !1537}
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !1489, line: 112, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1527, file: !1489, line: 112, size: 64, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1530, file: !1489, line: 114, baseType: !854, size: 16)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1530, file: !1489, line: 115, baseType: !1534, size: 48, offset: 16)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 48, elements: !1535)
!1535 = !{!1536}
!1536 = !DISubrange(count: 6)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1527, file: !1489, line: 121, baseType: !119, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1523, file: !1489, line: 123, baseType: !1539, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1489, line: 96, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1523, file: !1489, line: 124, baseType: !1542, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1489, line: 102, size: 192, elements: !1544)
!1544 = !{!1545, !1546, !1547}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1543, file: !1489, line: 103, baseType: !317, size: 128, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1543, file: !1489, line: 104, baseType: !1140, size: 32, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1543, file: !1489, line: 105, baseType: !151, size: 8, offset: 160)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1523, file: !1489, line: 125, baseType: !170, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1489, line: 241, baseType: !1550, size: 320)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !1489, line: 241, size: 320, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1550, file: !1489, line: 242, baseType: !119, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1550, file: !1489, line: 243, baseType: !119, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1550, file: !1489, line: 244, baseType: !1539, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1550, file: !1489, line: 245, baseType: !1542, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1550, file: !1489, line: 246, baseType: !228, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1489, line: 254, baseType: !1558, size: 256, offset: 1344)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1489, line: 254, size: 256, elements: !1559)
!1559 = !{!1560, !1566}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1558, file: !1489, line: 255, baseType: !1561, size: 256)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1489, line: 128, size: 256, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1561, file: !1489, line: 129, baseType: !117, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1561, file: !1489, line: 130, baseType: !1565, size: 256)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !1071)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !1489, line: 256, baseType: !1567, size: 256)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !1489, line: 256, size: 256, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1567, file: !1489, line: 258, baseType: !174, size: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1567, file: !1489, line: 259, baseType: !1571, size: 128, offset: 128)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1572, line: 22, size: 128, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574, !1577}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1571, file: !1572, line: 23, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1572, line: 23, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1571, file: !1572, line: 24, baseType: !119, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1488, file: !1489, line: 274, baseType: !1579, size: 64, offset: 1600)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1489, line: 170, size: 192, elements: !1581)
!1581 = !{!1582, !1591, !1592}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1580, file: !1489, line: 171, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1489, line: 165, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!113, !1487, !1587, !1589, !1487}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1580, file: !1489, line: 172, baseType: !1487, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1580, file: !1489, line: 173, baseType: !1539, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1459, file: !1460, line: 138, baseType: !1487, size: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1459, file: !1460, line: 139, baseType: !1487, size: 64, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1459, file: !1460, line: 140, baseType: !1487, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1459, file: !1460, line: 145, baseType: !1597, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1599, line: 13, size: 896, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1598, file: !1599, line: 14, baseType: !1140, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1598, file: !1599, line: 15, baseType: !749, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1598, file: !1599, line: 16, baseType: !749, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1598, file: !1599, line: 21, baseType: !680, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1598, file: !1599, line: 27, baseType: !119, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1598, file: !1599, line: 28, baseType: !119, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1598, file: !1599, line: 29, baseType: !680, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1598, file: !1599, line: 32, baseType: !592, size: 128, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1598, file: !1599, line: 33, baseType: !387, size: 32, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1598, file: !1599, line: 37, baseType: !680, size: 64, offset: 576)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1598, file: !1599, line: 44, baseType: !1612, size: 256, offset: 640)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1613, line: 15, size: 256, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1612, file: !1613, line: 16, baseType: !775)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1612, file: !1613, line: 18, baseType: !113, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1612, file: !1613, line: 19, baseType: !113, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1612, file: !1613, line: 20, baseType: !113, size: 32, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1612, file: !1613, line: 21, baseType: !113, size: 32, offset: 96)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1612, file: !1613, line: 22, baseType: !119, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1612, file: !1613, line: 23, baseType: !119, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1459, file: !1460, line: 146, baseType: !1623, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !388, line: 18, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1459, file: !1460, line: 147, baseType: !1626, size: 64, offset: 1088)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1460, line: 25, size: 64, elements: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1627, file: !1460, line: 26, baseType: !749, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1627, file: !1460, line: 27, baseType: !113, size: 32, offset: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1627, file: !1460, line: 28, baseType: !1632, offset: 64)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 0)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1460, line: 149, baseType: !1636, size: 128, offset: 1152)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1459, file: !1460, line: 149, size: 128, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1636, file: !1460, line: 150, baseType: !113, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1636, file: !1460, line: 151, baseType: !317, size: 128, align: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1127, file: !1128, line: 926, baseType: !1457, size: 64, offset: 8576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1127, file: !1128, line: 929, baseType: !1457, size: 64, offset: 8640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1127, file: !1128, line: 933, baseType: !1487, size: 64, offset: 8704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1127, file: !1128, line: 943, baseType: !1644, size: 128, offset: 8768)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 128, elements: !1645)
!1645 = !{!1646}
!1646 = !DISubrange(count: 16)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1127, file: !1128, line: 945, baseType: !1648, size: 64, offset: 8896)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1128, line: 49, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1127, file: !1128, line: 956, baseType: !1651, size: 64, offset: 8960)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1128, line: 45, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1127, file: !1128, line: 959, baseType: !1654, size: 64, offset: 9024)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1128, line: 959, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1127, file: !1128, line: 962, baseType: !1657, size: 64, offset: 9088)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1128, line: 66, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1127, file: !1128, line: 966, baseType: !1660, size: 64, offset: 9152)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1662, line: 35, flags: DIFlagFwdDecl)
!1662 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1127, file: !1128, line: 969, baseType: !1664, size: 64, offset: 9216)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1666, line: 82, size: 7296, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1703, !1712, !1713, !1715, !1716, !1717, !1720, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1750, !1751, !1758, !1759, !1760, !1761, !1762, !1763}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1665, file: !1666, line: 83, baseType: !1140, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1665, file: !1666, line: 84, baseType: !749, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1665, file: !1666, line: 85, baseType: !113, size: 32, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1665, file: !1666, line: 86, baseType: !174, size: 128, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1665, file: !1666, line: 88, baseType: !1391, size: 128, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1665, file: !1666, line: 91, baseType: !1126, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1665, file: !1666, line: 94, baseType: !1675, size: 192, offset: 448)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1676, line: 30, size: 192, elements: !1677)
!1676 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1675, file: !1676, line: 31, baseType: !174, size: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1675, file: !1676, line: 32, baseType: !1680, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1681, line: 25, baseType: !1682)
!1681 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1681, line: 23, size: 64, elements: !1683)
!1683 = !{!1684}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1682, file: !1681, line: 24, baseType: !1280, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1665, file: !1666, line: 97, baseType: !588, size: 64, offset: 640)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1665, file: !1666, line: 100, baseType: !113, size: 32, offset: 704)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1665, file: !1666, line: 106, baseType: !113, size: 32, offset: 736)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1665, file: !1666, line: 107, baseType: !1126, size: 64, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1665, file: !1666, line: 110, baseType: !113, size: 32, offset: 832)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1665, file: !1666, line: 111, baseType: !7, size: 32, offset: 864)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1665, file: !1666, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1665, file: !1666, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1665, file: !1666, line: 128, baseType: !113, size: 32, offset: 928)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1665, file: !1666, line: 129, baseType: !174, size: 128, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1665, file: !1666, line: 132, baseType: !1202, size: 512, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1665, file: !1666, line: 133, baseType: !1210, size: 64, offset: 1600)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1665, file: !1666, line: 140, baseType: !1698, size: 256, offset: 1664)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 256, elements: !1479)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1666, line: 38, size: 128, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1699, file: !1666, line: 39, baseType: !373, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1699, file: !1666, line: 40, baseType: !373, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1665, file: !1666, line: 146, baseType: !1704, size: 192, offset: 1920)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1666, line: 66, size: 192, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1704, file: !1666, line: 67, baseType: !1707, size: 192)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1666, line: 47, size: 192, elements: !1708)
!1708 = !{!1709, !1710, !1711}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1707, file: !1666, line: 48, baseType: !682, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1707, file: !1666, line: 49, baseType: !682, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1707, file: !1666, line: 50, baseType: !682, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1665, file: !1666, line: 150, baseType: !1440, size: 640, offset: 2112)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1665, file: !1666, line: 153, baseType: !1714, size: 256, offset: 2752)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1381, size: 256, elements: !1071)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1665, file: !1666, line: 159, baseType: !1381, size: 64, offset: 3008)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1665, file: !1666, line: 162, baseType: !113, size: 32, offset: 3072)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1665, file: !1666, line: 164, baseType: !1718, size: 64, offset: 3136)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1666, line: 164, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1665, file: !1666, line: 175, baseType: !1721, size: 32, offset: 3200)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !340, line: 805, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 798, size: 32, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1722, file: !340, line: 803, baseType: !339, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1722, file: !340, line: 804, baseType: !187, offset: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1665, file: !1666, line: 176, baseType: !373, size: 64, offset: 3264)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1665, file: !1666, line: 176, baseType: !373, size: 64, offset: 3328)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1665, file: !1666, line: 176, baseType: !373, size: 64, offset: 3392)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1665, file: !1666, line: 176, baseType: !373, size: 64, offset: 3456)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1665, file: !1666, line: 177, baseType: !373, size: 64, offset: 3520)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1665, file: !1666, line: 178, baseType: !373, size: 64, offset: 3584)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1665, file: !1666, line: 179, baseType: !1428, size: 128, offset: 3648)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1665, file: !1666, line: 180, baseType: !119, size: 64, offset: 3776)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1665, file: !1666, line: 180, baseType: !119, size: 64, offset: 3840)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1665, file: !1666, line: 180, baseType: !119, size: 64, offset: 3904)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1665, file: !1666, line: 180, baseType: !119, size: 64, offset: 3968)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1665, file: !1666, line: 181, baseType: !119, size: 64, offset: 4032)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1665, file: !1666, line: 181, baseType: !119, size: 64, offset: 4096)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1665, file: !1666, line: 181, baseType: !119, size: 64, offset: 4160)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1665, file: !1666, line: 181, baseType: !119, size: 64, offset: 4224)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1665, file: !1666, line: 182, baseType: !119, size: 64, offset: 4288)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1665, file: !1666, line: 182, baseType: !119, size: 64, offset: 4352)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1665, file: !1666, line: 182, baseType: !119, size: 64, offset: 4416)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1665, file: !1666, line: 182, baseType: !119, size: 64, offset: 4480)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1665, file: !1666, line: 183, baseType: !119, size: 64, offset: 4544)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1665, file: !1666, line: 183, baseType: !119, size: 64, offset: 4608)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1665, file: !1666, line: 184, baseType: !1748, offset: 4672)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1749, line: 12, elements: !201)
!1749 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1665, file: !1666, line: 192, baseType: !375, size: 64, offset: 4672)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1665, file: !1666, line: 203, baseType: !1752, size: 2048, offset: 4736)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1753, size: 2048, elements: !1645)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1754, line: 43, size: 128, elements: !1755)
!1754 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1753, file: !1754, line: 44, baseType: !276, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1753, file: !1754, line: 45, baseType: !276, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1665, file: !1666, line: 220, baseType: !151, size: 8, offset: 6784)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1665, file: !1666, line: 221, baseType: !1115, size: 16, offset: 6800)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1665, file: !1666, line: 222, baseType: !1115, size: 16, offset: 6816)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1665, file: !1666, line: 224, baseType: !970, size: 64, offset: 6848)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1665, file: !1666, line: 227, baseType: !676, size: 192, offset: 6912)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1665, file: !1666, line: 233, baseType: !676, size: 192, offset: 7104)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1127, file: !1128, line: 970, baseType: !1765, size: 64, offset: 9280)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1666, line: 20, size: 16576, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1766, file: !1666, line: 21, baseType: !187)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1766, file: !1666, line: 22, baseType: !1140, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1766, file: !1666, line: 23, baseType: !1391, size: 128, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1766, file: !1666, line: 24, baseType: !1772, size: 16384, offset: 192)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1773, size: 16384, elements: !233)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1676, line: 49, size: 256, elements: !1774)
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1773, file: !1676, line: 50, baseType: !1776, size: 256)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1676, line: 35, size: 256, elements: !1777)
!1777 = !{!1778, !1785, !1786, !1792}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1776, file: !1676, line: 37, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1780, line: 19, baseType: !1781)
!1780 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1780, line: 18, baseType: !1783)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !113}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1776, file: !1676, line: 38, baseType: !119, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1776, file: !1676, line: 44, baseType: !1787, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1780, line: 22, baseType: !1788)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1780, line: 21, baseType: !1790)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1776, file: !1676, line: 46, baseType: !1680, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1127, file: !1128, line: 971, baseType: !1680, size: 64, offset: 9344)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1127, file: !1128, line: 972, baseType: !1680, size: 64, offset: 9408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1127, file: !1128, line: 974, baseType: !1680, size: 64, offset: 9472)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1127, file: !1128, line: 975, baseType: !1675, size: 192, offset: 9536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1127, file: !1128, line: 976, baseType: !119, size: 64, offset: 9728)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1127, file: !1128, line: 977, baseType: !274, size: 64, offset: 9792)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1127, file: !1128, line: 978, baseType: !7, size: 32, offset: 9856)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1127, file: !1128, line: 980, baseType: !320, size: 64, offset: 9920)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1127, file: !1128, line: 989, baseType: !1802, size: 128, offset: 9984)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1803, line: 35, size: 128, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1802, file: !1803, line: 36, baseType: !113, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1802, file: !1803, line: 37, baseType: !749, size: 32, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1802, file: !1803, line: 38, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1803, line: 23, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1127, file: !1128, line: 992, baseType: !373, size: 64, offset: 10112)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1127, file: !1128, line: 993, baseType: !373, size: 64, offset: 10176)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1127, file: !1128, line: 996, baseType: !187, offset: 10240)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1127, file: !1128, line: 999, baseType: !775, offset: 10240)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1127, file: !1128, line: 1001, baseType: !1815, size: 64, offset: 10240)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1128, line: 636, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1815, file: !1128, line: 637, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1127, file: !1128, line: 1005, baseType: !754, size: 128, offset: 10304)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1127, file: !1128, line: 1007, baseType: !1126, size: 64, offset: 10432)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1127, file: !1128, line: 1009, baseType: !1822, size: 64, offset: 10496)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1128, line: 1009, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1127, file: !1128, line: 1043, baseType: !117, size: 64, offset: 10560)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1127, file: !1128, line: 1046, baseType: !1826, size: 64, offset: 10624)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1128, line: 41, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1127, file: !1128, line: 1050, baseType: !1829, size: 64, offset: 10688)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1128, line: 42, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1127, file: !1128, line: 1054, baseType: !1832, size: 64, offset: 10752)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1128, line: 55, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1127, file: !1128, line: 1056, baseType: !1835, size: 64, offset: 10816)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1128, line: 40, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1127, file: !1128, line: 1058, baseType: !1838, size: 64, offset: 10880)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1840, line: 99, size: 704, elements: !1841)
!1840 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1867, !1868}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1839, file: !1840, line: 100, baseType: !680, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1839, file: !1840, line: 101, baseType: !749, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1839, file: !1840, line: 102, baseType: !749, size: 32, offset: 96)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !1840, line: 105, baseType: !187, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1839, file: !1840, line: 107, baseType: !269, size: 16, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1839, file: !1840, line: 109, baseType: !741, size: 128, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1839, file: !1840, line: 110, baseType: !1849, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1840, line: 73, size: 448, elements: !1851)
!1851 = !{!1852, !1855, !1856, !1861, !1866}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1850, file: !1840, line: 74, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1840, line: 74, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1850, file: !1840, line: 75, baseType: !1838, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1840, line: 83, baseType: !1857, size: 128, offset: 128)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1840, line: 83, size: 128, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1857, file: !1840, line: 84, baseType: !174, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1857, file: !1840, line: 85, baseType: !930, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1840, line: 87, baseType: !1862, size: 128, offset: 256)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1840, line: 87, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1862, file: !1840, line: 88, baseType: !592, size: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1862, file: !1840, line: 89, baseType: !317, size: 128, align: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !1840, line: 92, baseType: !7, size: 32, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1839, file: !1840, line: 111, baseType: !588, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1839, file: !1840, line: 113, baseType: !1869, size: 256, offset: 448)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1870, line: 102, size: 256, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1869, file: !1870, line: 103, baseType: !680, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1869, file: !1870, line: 104, baseType: !174, size: 128, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1869, file: !1870, line: 105, baseType: !1875, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1870, line: 21, baseType: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1127, file: !1128, line: 1061, baseType: !1881, size: 64, offset: 10944)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1128, line: 43, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1127, file: !1128, line: 1064, baseType: !119, size: 64, offset: 11008)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1127, file: !1128, line: 1065, baseType: !1885, size: 64, offset: 11072)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1676, line: 14, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1676, line: 12, size: 384, elements: !1888)
!1888 = !{!1889}
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1676, line: 13, baseType: !1890, size: 384)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !1676, line: 13, size: 384, elements: !1891)
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1890, file: !1676, line: 13, baseType: !113, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1890, file: !1676, line: 13, baseType: !113, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1890, file: !1676, line: 13, baseType: !113, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1890, file: !1676, line: 13, baseType: !1896, size: 256, offset: 128)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1897, line: 32, size: 256, elements: !1898)
!1897 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1904, !1917, !1923, !1932, !1952, !1957}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1896, file: !1897, line: 37, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 34, size: 64, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1900, file: !1897, line: 35, baseType: !1370, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1900, file: !1897, line: 36, baseType: !393, size: 32, offset: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1896, file: !1897, line: 45, baseType: !1905, size: 192)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 40, size: 192, elements: !1906)
!1906 = !{!1907, !1909, !1910, !1916}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1905, file: !1897, line: 41, baseType: !1908, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !261, line: 95, baseType: !113)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1905, file: !1897, line: 42, baseType: !113, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1905, file: !1897, line: 43, baseType: !1911, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1897, line: 11, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1897, line: 8, size: 64, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1912, file: !1897, line: 9, baseType: !113, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1912, file: !1897, line: 10, baseType: !117, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1905, file: !1897, line: 44, baseType: !113, size: 32, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1896, file: !1897, line: 52, baseType: !1918, size: 128)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 48, size: 128, elements: !1919)
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1918, file: !1897, line: 49, baseType: !1370, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1918, file: !1897, line: 50, baseType: !393, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1918, file: !1897, line: 51, baseType: !1911, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1896, file: !1897, line: 61, baseType: !1924, size: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 55, size: 256, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1931}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1924, file: !1897, line: 56, baseType: !1370, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1924, file: !1897, line: 57, baseType: !393, size: 32, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1924, file: !1897, line: 58, baseType: !113, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1924, file: !1897, line: 59, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !261, line: 94, baseType: !262)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1924, file: !1897, line: 60, baseType: !1930, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1896, file: !1897, line: 95, baseType: !1933, size: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 64, size: 256, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1933, file: !1897, line: 65, baseType: !117, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !1897, line: 77, baseType: !1937, size: 192, offset: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !1897, line: 77, size: 192, elements: !1938)
!1938 = !{!1939, !1940, !1947}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1937, file: !1897, line: 82, baseType: !1115, size: 16)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1937, file: !1897, line: 88, baseType: !1941, size: 192)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1897, line: 84, size: 192, elements: !1942)
!1942 = !{!1943, !1945, !1946}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1941, file: !1897, line: 85, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !1240)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1941, file: !1897, line: 86, baseType: !117, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1941, file: !1897, line: 87, baseType: !117, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1937, file: !1897, line: 93, baseType: !1948, size: 96)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1897, line: 90, size: 96, elements: !1949)
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1948, file: !1897, line: 91, baseType: !1944, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1948, file: !1897, line: 92, baseType: !369, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1896, file: !1897, line: 101, baseType: !1953, size: 128)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 98, size: 128, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1953, file: !1897, line: 99, baseType: !114, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1953, file: !1897, line: 100, baseType: !113, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1896, file: !1897, line: 108, baseType: !1958, size: 128)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1897, line: 104, size: 128, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1958, file: !1897, line: 105, baseType: !117, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1958, file: !1897, line: 106, baseType: !113, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1958, file: !1897, line: 107, baseType: !7, size: 32, offset: 96)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1127, file: !1128, line: 1067, baseType: !1748, offset: 11136)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1127, file: !1128, line: 1099, baseType: !1965, size: 64, offset: 11136)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1128, line: 56, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1127, file: !1128, line: 1103, baseType: !174, size: 128, offset: 11200)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1127, file: !1128, line: 1104, baseType: !1969, size: 64, offset: 11328)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1128, line: 46, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1127, file: !1128, line: 1105, baseType: !676, size: 192, offset: 11392)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1127, file: !1128, line: 1106, baseType: !7, size: 32, offset: 11584)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1127, file: !1128, line: 1109, baseType: !1974, size: 128, offset: 11648)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1975, size: 128, elements: !1479)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1128, line: 51, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1127, file: !1128, line: 1110, baseType: !676, size: 192, offset: 11776)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1127, file: !1128, line: 1111, baseType: !174, size: 128, offset: 11968)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1127, file: !1128, line: 1173, baseType: !1980, size: 64, offset: 12096)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1982, line: 62, size: 256, align: 256, elements: !1983)
!1982 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !{!1984, !1985, !1986, !1991}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1981, file: !1982, line: 75, baseType: !369, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1981, file: !1982, line: 90, baseType: !369, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1981, file: !1982, line: 124, baseType: !1987, size: 64, offset: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1981, file: !1982, line: 109, size: 64, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1987, file: !1982, line: 110, baseType: !374, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1987, file: !1982, line: 112, baseType: !374, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !1982, line: 144, baseType: !369, size: 32, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1127, file: !1128, line: 1174, baseType: !367, size: 32, offset: 12160)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1127, file: !1128, line: 1179, baseType: !119, size: 64, offset: 12224)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1127, file: !1128, line: 1182, baseType: !1995, size: 128, offset: 12288)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1067, line: 76, size: 128, elements: !1996)
!1996 = !{!1997, !2002, !2003}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1995, file: !1067, line: 85, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1999, line: 7, size: 64, elements: !2000)
!1999 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1998, file: !1999, line: 12, baseType: !1277, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1995, file: !1067, line: 88, baseType: !151, size: 8, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1995, file: !1067, line: 95, baseType: !151, size: 8, offset: 72)
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !1128, line: 1184, baseType: !2005, size: 128, offset: 12416)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !1128, line: 1184, size: 128, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2005, file: !1128, line: 1185, baseType: !1140, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2005, file: !1128, line: 1186, baseType: !317, size: 128, align: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1127, file: !1128, line: 1190, baseType: !2010, size: 64, offset: 12544)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1128, line: 53, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1127, file: !1128, line: 1192, baseType: !2013, size: 128, offset: 12608)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1067, line: 64, size: 128, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2013, file: !1067, line: 65, baseType: !723, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2013, file: !1067, line: 67, baseType: !369, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2013, file: !1067, line: 68, baseType: !369, size: 32, offset: 96)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1127, file: !1128, line: 1206, baseType: !113, size: 32, offset: 12736)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1127, file: !1128, line: 1207, baseType: !113, size: 32, offset: 12768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1127, file: !1128, line: 1209, baseType: !119, size: 64, offset: 12800)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1127, file: !1128, line: 1219, baseType: !373, size: 64, offset: 12864)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1127, file: !1128, line: 1220, baseType: !373, size: 64, offset: 12928)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1127, file: !1128, line: 1317, baseType: !113, size: 32, offset: 12992)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1127, file: !1128, line: 1319, baseType: !1126, size: 64, offset: 13056)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1127, file: !1128, line: 1322, baseType: !2026, size: 64, offset: 13120)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2028, line: 56, size: 512, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036, !2038}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2027, file: !2028, line: 57, baseType: !2026, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2027, file: !2028, line: 58, baseType: !117, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2027, file: !2028, line: 59, baseType: !119, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2027, file: !2028, line: 60, baseType: !119, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2027, file: !2028, line: 61, baseType: !815, size: 64, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2027, file: !2028, line: 62, baseType: !7, size: 32, offset: 320)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2027, file: !2028, line: 63, baseType: !2037, size: 64, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !116, line: 153, baseType: !373)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2027, file: !2028, line: 64, baseType: !159, size: 64, offset: 448)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1127, file: !1128, line: 1326, baseType: !1140, size: 32, offset: 13184)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1127, file: !1128, line: 1342, baseType: !117, size: 64, offset: 13248)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1127, file: !1128, line: 1343, baseType: !374, size: 64, offset: 13312)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1127, file: !1128, line: 1344, baseType: !373, size: 64, offset: 13376)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1127, file: !1128, line: 1345, baseType: !374, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1127, file: !1128, line: 1346, baseType: !374, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1127, file: !1128, line: 1347, baseType: !374, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1127, file: !1128, line: 1348, baseType: !317, size: 128, align: 64, offset: 13504)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1127, file: !1128, line: 1358, baseType: !2048, size: 34816, offset: 13824)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2049, line: 485, size: 34816, elements: !2050)
!2049 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !{!2051, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2080, !2081, !2082, !2083, !2084, !2085, !2088, !2089, !2090}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2048, file: !2049, line: 487, baseType: !2052, size: 192)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2053, size: 192, elements: !229)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2054, line: 16, size: 64, elements: !2055)
!2054 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2053, file: !2054, line: 17, baseType: !854, size: 16)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2053, file: !2054, line: 18, baseType: !854, size: 16, offset: 16)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2053, file: !2054, line: 19, baseType: !854, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2053, file: !2054, line: 19, baseType: !854, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2053, file: !2054, line: 19, baseType: !854, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2053, file: !2054, line: 19, baseType: !854, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2053, file: !2054, line: 19, baseType: !854, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2053, file: !2054, line: 20, baseType: !854, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2053, file: !2054, line: 20, baseType: !854, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2053, file: !2054, line: 20, baseType: !854, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2053, file: !2054, line: 20, baseType: !854, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2053, file: !2054, line: 20, baseType: !854, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2053, file: !2054, line: 20, baseType: !854, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2048, file: !2049, line: 491, baseType: !119, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2048, file: !2049, line: 495, baseType: !269, size: 16, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2048, file: !2049, line: 496, baseType: !269, size: 16, offset: 272)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2048, file: !2049, line: 497, baseType: !269, size: 16, offset: 288)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2048, file: !2049, line: 498, baseType: !269, size: 16, offset: 304)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2048, file: !2049, line: 502, baseType: !119, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2048, file: !2049, line: 503, baseType: !119, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2048, file: !2049, line: 514, baseType: !2077, size: 256, offset: 448)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2078, size: 256, elements: !1071)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2049, line: 483, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2048, file: !2049, line: 516, baseType: !119, size: 64, offset: 704)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2048, file: !2049, line: 518, baseType: !119, size: 64, offset: 768)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2048, file: !2049, line: 520, baseType: !119, size: 64, offset: 832)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2048, file: !2049, line: 521, baseType: !119, size: 64, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2048, file: !2049, line: 522, baseType: !119, size: 64, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2048, file: !2049, line: 528, baseType: !2086, size: 64, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2049, line: 10, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2048, file: !2049, line: 535, baseType: !119, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2048, file: !2049, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2048, file: !2049, line: 540, baseType: !2091, size: 33280, offset: 1536)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2092, line: 317, size: 33280, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !{!2094, !2095, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2091, file: !2092, line: 330, baseType: !7, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2091, file: !2092, line: 337, baseType: !119, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2091, file: !2092, line: 348, baseType: !2097, size: 32768, offset: 512)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2092, line: 304, size: 32768, elements: !2098)
!2098 = !{!2099, !2114, !2153, !2203, !2216}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2097, file: !2092, line: 305, baseType: !2100, size: 896)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2092, line: 12, size: 896, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2113}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2100, file: !2092, line: 13, baseType: !367, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2100, file: !2092, line: 14, baseType: !367, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2100, file: !2092, line: 15, baseType: !367, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2100, file: !2092, line: 16, baseType: !367, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2100, file: !2092, line: 17, baseType: !367, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2100, file: !2092, line: 18, baseType: !367, size: 32, offset: 160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2100, file: !2092, line: 19, baseType: !367, size: 32, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2100, file: !2092, line: 22, baseType: !2110, size: 640, offset: 224)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 640, elements: !2111)
!2111 = !{!2112}
!2112 = !DISubrange(count: 20)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2100, file: !2092, line: 25, baseType: !367, size: 32, offset: 864)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2097, file: !2092, line: 306, baseType: !2115, size: 4096, align: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2092, line: 34, size: 4096, align: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2136, !2137, !2138, !2142, !2144, !2148}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2115, file: !2092, line: 35, baseType: !854, size: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2115, file: !2092, line: 36, baseType: !854, size: 16, offset: 16)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2115, file: !2092, line: 37, baseType: !854, size: 16, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2115, file: !2092, line: 38, baseType: !854, size: 16, offset: 48)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2092, line: 39, baseType: !2122, size: 128, offset: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2092, line: 39, size: 128, elements: !2123)
!2123 = !{!2124, !2129}
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !2092, line: 40, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !2092, line: 40, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2125, file: !2092, line: 41, baseType: !373, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2125, file: !2092, line: 42, baseType: !373, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !2092, line: 44, baseType: !2130, size: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !2092, line: 44, size: 128, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2130, file: !2092, line: 45, baseType: !367, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2130, file: !2092, line: 46, baseType: !367, size: 32, offset: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2130, file: !2092, line: 47, baseType: !367, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2130, file: !2092, line: 48, baseType: !367, size: 32, offset: 96)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2115, file: !2092, line: 51, baseType: !367, size: 32, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2115, file: !2092, line: 52, baseType: !367, size: 32, offset: 224)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2115, file: !2092, line: 55, baseType: !2139, size: 1024, offset: 256)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 1024, elements: !2140)
!2140 = !{!2141}
!2141 = !DISubrange(count: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2115, file: !2092, line: 58, baseType: !2143, size: 2048, offset: 1280)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 2048, elements: !233)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2115, file: !2092, line: 60, baseType: !2145, size: 384, offset: 3328)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 384, elements: !2146)
!2146 = !{!2147}
!2147 = !DISubrange(count: 12)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2092, line: 62, baseType: !2149, size: 384, offset: 3712)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2092, line: 62, size: 384, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2149, file: !2092, line: 63, baseType: !2145, size: 384)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2149, file: !2092, line: 64, baseType: !2145, size: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2097, file: !2092, line: 307, baseType: !2154, size: 1088)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2092, line: 79, size: 1088, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2202}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2154, file: !2092, line: 80, baseType: !367, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2154, file: !2092, line: 81, baseType: !367, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2154, file: !2092, line: 82, baseType: !367, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2154, file: !2092, line: 83, baseType: !367, size: 32, offset: 96)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2154, file: !2092, line: 84, baseType: !367, size: 32, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2154, file: !2092, line: 85, baseType: !367, size: 32, offset: 160)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2154, file: !2092, line: 86, baseType: !367, size: 32, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2154, file: !2092, line: 88, baseType: !2110, size: 640, offset: 224)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2154, file: !2092, line: 89, baseType: !1262, size: 8, offset: 864)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2154, file: !2092, line: 90, baseType: !1262, size: 8, offset: 872)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2154, file: !2092, line: 91, baseType: !1262, size: 8, offset: 880)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2154, file: !2092, line: 92, baseType: !1262, size: 8, offset: 888)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2154, file: !2092, line: 93, baseType: !1262, size: 8, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2154, file: !2092, line: 94, baseType: !1262, size: 8, offset: 904)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2154, file: !2092, line: 95, baseType: !2171, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2173, line: 11, size: 128, elements: !2174)
!2173 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175, !2176}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2172, file: !2173, line: 12, baseType: !114, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2172, file: !2173, line: 13, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2179, line: 56, size: 1344, elements: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2178, file: !2179, line: 61, baseType: !119, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2178, file: !2179, line: 62, baseType: !119, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2178, file: !2179, line: 63, baseType: !119, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2178, file: !2179, line: 64, baseType: !119, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2178, file: !2179, line: 65, baseType: !119, size: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2178, file: !2179, line: 66, baseType: !119, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2178, file: !2179, line: 68, baseType: !119, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2178, file: !2179, line: 69, baseType: !119, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2178, file: !2179, line: 70, baseType: !119, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2178, file: !2179, line: 71, baseType: !119, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2178, file: !2179, line: 72, baseType: !119, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2178, file: !2179, line: 73, baseType: !119, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2178, file: !2179, line: 74, baseType: !119, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2178, file: !2179, line: 75, baseType: !119, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2178, file: !2179, line: 76, baseType: !119, size: 64, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2178, file: !2179, line: 81, baseType: !119, size: 64, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2178, file: !2179, line: 83, baseType: !119, size: 64, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2178, file: !2179, line: 84, baseType: !119, size: 64, offset: 1088)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2178, file: !2179, line: 85, baseType: !119, size: 64, offset: 1152)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2178, file: !2179, line: 86, baseType: !119, size: 64, offset: 1216)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2178, file: !2179, line: 87, baseType: !119, size: 64, offset: 1280)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2154, file: !2092, line: 96, baseType: !367, size: 32, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2097, file: !2092, line: 308, baseType: !2204, size: 4608, align: 512)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2092, line: 289, size: 4608, align: 512, elements: !2205)
!2205 = !{!2206, !2207, !2214}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2204, file: !2092, line: 290, baseType: !2115, size: 4096, align: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2204, file: !2092, line: 291, baseType: !2208, size: 512, offset: 4096)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2092, line: 268, size: 512, elements: !2209)
!2209 = !{!2210, !2211, !2212}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2208, file: !2092, line: 269, baseType: !373, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2208, file: !2092, line: 270, baseType: !373, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2208, file: !2092, line: 271, baseType: !2213, size: 384, offset: 128)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 384, elements: !1535)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2204, file: !2092, line: 292, baseType: !2215, offset: 4608)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, elements: !1633)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2097, file: !2092, line: 309, baseType: !2217, size: 32768)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 32768, elements: !2218)
!2218 = !{!2219}
!2219 = !DISubrange(count: 4096)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1123, file: !725, line: 378, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1119, file: !725, line: 384, baseType: !1412, size: 192, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !974, file: !725, line: 500, baseType: !187, offset: 6656)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !974, file: !725, line: 501, baseType: !2225, size: 64, offset: 6656)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !725, line: 387, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !974, file: !725, line: 516, baseType: !1623, size: 64, offset: 6720)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !974, file: !725, line: 519, baseType: !304, size: 64, offset: 6784)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !974, file: !725, line: 521, baseType: !2230, size: 64, offset: 6848)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !725, line: 521, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !974, file: !725, line: 545, baseType: !749, size: 32, offset: 6912)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !974, file: !725, line: 548, baseType: !151, size: 8, offset: 6944)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !974, file: !725, line: 550, baseType: !2235, offset: 6952)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2236, line: 142, elements: !201)
!2236 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !974, file: !725, line: 554, baseType: !1869, size: 256, offset: 6976)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !974, file: !725, line: 557, baseType: !367, size: 32, offset: 7232)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !971, file: !725, line: 565, baseType: !2240, offset: 7296)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !2241)
!2241 = !{!2242}
!2242 = !DISubrange(count: -1)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !967, file: !725, line: 151, baseType: !749, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !959, file: !725, line: 156, baseType: !187, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 159, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 159, size: 128, elements: !2247)
!2247 = !{!2248, !2251}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2246, file: !725, line: 161, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !725, line: 161, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2246, file: !725, line: 162, baseType: !117, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !729, file: !725, line: 176, baseType: !317, size: 128, align: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 179, baseType: !2254, size: 32, offset: 384)
!2254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 179, size: 32, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2254, file: !725, line: 184, baseType: !749, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2254, file: !725, line: 192, baseType: !7, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2254, file: !725, line: 194, baseType: !7, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2254, file: !725, line: 195, baseType: !113, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !724, file: !725, line: 199, baseType: !749, size: 32, offset: 416)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !610, file: !31, line: 1964, baseType: !2262, size: 64, offset: 1344)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!114, !549, !2265}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2267, line: 12, size: 256, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269, !2270, !2271, !2272, !2273}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2266, file: !2267, line: 13, baseType: !115, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2266, file: !2267, line: 16, baseType: !113, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2266, file: !2267, line: 23, baseType: !119, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2266, file: !2267, line: 30, baseType: !119, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2266, file: !2267, line: 33, baseType: !2274, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !725, line: 27, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !610, file: !31, line: 1966, baseType: !2262, size: 64, offset: 1408)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !550, file: !31, line: 1424, baseType: !2278, size: 64, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2281)
!2281 = !{!2282, !2328, !2332, !2336, !2337, !2338, !2339, !2340, !2345, !2350, !2354}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2280, file: !25, line: 323, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!113, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2313, !2314, !2315}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2287, file: !25, line: 295, baseType: !592, size: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2287, file: !25, line: 296, baseType: !174, size: 128, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2287, file: !25, line: 297, baseType: !174, size: 128, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2287, file: !25, line: 298, baseType: !174, size: 128, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2287, file: !25, line: 299, baseType: !676, size: 192, offset: 512)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2287, file: !25, line: 300, baseType: !187, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2287, file: !25, line: 301, baseType: !749, size: 32, offset: 704)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2287, file: !25, line: 302, baseType: !549, size: 64, offset: 768)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2287, file: !25, line: 303, baseType: !2298, size: 64, offset: 832)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2299)
!2299 = !{!2300, !2312}
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !25, line: 69, baseType: !2301, size: 32)
!2301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2298, file: !25, line: 69, size: 32, elements: !2302)
!2302 = !{!2303, !2304, !2305}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2301, file: !25, line: 70, baseType: !387, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2301, file: !25, line: 71, baseType: !395, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2301, file: !25, line: 72, baseType: !2306, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2307, line: 24, baseType: !2308)
!2307 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2307, line: 22, size: 32, elements: !2309)
!2309 = !{!2310}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2308, file: !2307, line: 23, baseType: !2311, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2307, line: 20, baseType: !393)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2298, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2287, file: !25, line: 304, baseType: !481, size: 64, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2287, file: !25, line: 305, baseType: !119, size: 64, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2287, file: !25, line: 306, baseType: !2316, size: 576, offset: 1024)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2317)
!2317 = !{!2318, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2316, file: !25, line: 206, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !483)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2316, file: !25, line: 207, baseType: !2319, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2316, file: !25, line: 208, baseType: !2319, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2316, file: !25, line: 209, baseType: !2319, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2316, file: !25, line: 210, baseType: !2319, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2316, file: !25, line: 211, baseType: !2319, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2316, file: !25, line: 212, baseType: !2319, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2316, file: !25, line: 213, baseType: !489, size: 64, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2316, file: !25, line: 214, baseType: !489, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2280, file: !25, line: 324, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!2286, !549, !113}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2280, file: !25, line: 325, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2286}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2280, file: !25, line: 326, baseType: !2283, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2280, file: !25, line: 327, baseType: !2283, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2280, file: !25, line: 328, baseType: !2283, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2280, file: !25, line: 329, baseType: !638, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2280, file: !25, line: 332, baseType: !2341, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2344, !381}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2280, file: !25, line: 333, baseType: !2346, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!113, !381, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2280, file: !25, line: 335, baseType: !2351, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!113, !381, !2344}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2280, file: !25, line: 337, baseType: !2355, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!113, !549, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !550, file: !31, line: 1425, baseType: !2360, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2363)
!2363 = !{!2364, !2368, !2369, !2373, !2374, !2375, !2390, !2413, !2417, !2418, !2441}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2362, file: !25, line: 429, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!113, !549, !113, !113, !499}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2362, file: !25, line: 430, baseType: !638, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2362, file: !25, line: 431, baseType: !2370, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!113, !549, !7}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2362, file: !25, line: 432, baseType: !2370, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2362, file: !25, line: 433, baseType: !638, size: 64, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2362, file: !25, line: 434, baseType: !2376, size: 64, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!113, !549, !113, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2380, file: !25, line: 416, baseType: !113, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2380, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2380, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2380, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2380, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2380, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2380, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2380, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2362, file: !25, line: 435, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!113, !549, !2298, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2395, file: !25, line: 344, baseType: !113, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2395, file: !25, line: 345, baseType: !373, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2395, file: !25, line: 346, baseType: !373, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2395, file: !25, line: 347, baseType: !373, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2395, file: !25, line: 348, baseType: !373, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2395, file: !25, line: 349, baseType: !373, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2395, file: !25, line: 350, baseType: !373, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2395, file: !25, line: 351, baseType: !686, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2395, file: !25, line: 353, baseType: !686, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2395, file: !25, line: 354, baseType: !113, size: 32, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2395, file: !25, line: 355, baseType: !113, size: 32, offset: 608)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2395, file: !25, line: 356, baseType: !373, size: 64, offset: 640)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2395, file: !25, line: 357, baseType: !373, size: 64, offset: 704)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2395, file: !25, line: 358, baseType: !373, size: 64, offset: 768)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2395, file: !25, line: 359, baseType: !686, size: 64, offset: 832)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2395, file: !25, line: 360, baseType: !113, size: 32, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2362, file: !25, line: 436, baseType: !2414, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!113, !549, !2358, !2394}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2362, file: !25, line: 438, baseType: !2391, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2362, file: !25, line: 439, baseType: !2419, size: 64, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!113, !549, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2423, file: !25, line: 410, baseType: !7, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2423, file: !25, line: 411, baseType: !2427, size: 1344, offset: 64)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2428, size: 1344, elements: !229)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2440}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !25, line: 396, baseType: !7, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2428, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2428, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2428, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2428, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2428, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2428, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2428, file: !25, line: 404, baseType: !375, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2428, file: !25, line: 405, baseType: !2439, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !116, line: 126, baseType: !373)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2428, file: !25, line: 406, baseType: !2439, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2362, file: !25, line: 440, baseType: !2370, size: 64, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !550, file: !31, line: 1426, baseType: !2443, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !550, file: !31, line: 1427, baseType: !119, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !550, file: !31, line: 1428, baseType: !119, size: 64, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !550, file: !31, line: 1429, baseType: !119, size: 64, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !550, file: !31, line: 1430, baseType: !334, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !550, file: !31, line: 1431, baseType: !769, size: 256, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !550, file: !31, line: 1432, baseType: !113, size: 32, offset: 1152)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !550, file: !31, line: 1433, baseType: !749, size: 32, offset: 1184)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !550, file: !31, line: 1437, baseType: !2454, size: 64, offset: 1216)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !550, file: !31, line: 1449, baseType: !2459, size: 64, offset: 1280)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !350, line: 34, size: 64, elements: !2460)
!2460 = !{!2461}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2459, file: !350, line: 35, baseType: !353, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !550, file: !31, line: 1450, baseType: !174, size: 128, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !550, file: !31, line: 1451, baseType: !2464, size: 64, offset: 1472)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !550, file: !31, line: 1452, baseType: !1835, size: 64, offset: 1536)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !550, file: !31, line: 1453, baseType: !2468, size: 64, offset: 1600)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !550, file: !31, line: 1454, baseType: !592, size: 128, offset: 1664)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !550, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !550, file: !31, line: 1456, baseType: !2473, size: 2432, offset: 1856)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2474)
!2474 = !{!2475, !2476, !2477, !2479, !2511}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2473, file: !25, line: 519, baseType: !7, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2473, file: !25, line: 520, baseType: !769, size: 256, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2473, file: !25, line: 521, baseType: !2478, size: 192, offset: 320)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 192, elements: !229)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2473, file: !25, line: 522, baseType: !2480, size: 1728, offset: 512)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2481, size: 1728, elements: !229)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2482)
!2482 = !{!2483, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2481, file: !25, line: 223, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2486)
!2486 = !{!2487, !2488, !2501, !2502}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2485, file: !25, line: 444, baseType: !113, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2485, file: !25, line: 445, baseType: !2489, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2491)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2491, file: !25, line: 311, baseType: !638, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2491, file: !25, line: 312, baseType: !638, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2491, file: !25, line: 313, baseType: !638, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2491, file: !25, line: 314, baseType: !638, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2491, file: !25, line: 315, baseType: !2283, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2491, file: !25, line: 316, baseType: !2283, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2491, file: !25, line: 317, baseType: !2283, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2491, file: !25, line: 318, baseType: !2355, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2485, file: !25, line: 446, baseType: !583, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2485, file: !25, line: 447, baseType: !2484, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2481, file: !25, line: 224, baseType: !113, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2481, file: !25, line: 226, baseType: !174, size: 128, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2481, file: !25, line: 227, baseType: !119, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2481, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2481, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2481, file: !25, line: 230, baseType: !2319, size: 64, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2481, file: !25, line: 231, baseType: !2319, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2481, file: !25, line: 232, baseType: !117, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2473, file: !25, line: 523, baseType: !2512, size: 192, offset: 2240)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2489, size: 192, elements: !229)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !550, file: !31, line: 1458, baseType: !2514, size: 2112, offset: 4288)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2515)
!2515 = !{!2516, !2517, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2514, file: !31, line: 1411, baseType: !113, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2514, file: !31, line: 1412, baseType: !1391, size: 128, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2514, file: !31, line: 1413, baseType: !2519, size: 1920, offset: 192)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 1920, elements: !229)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2521, line: 12, size: 640, elements: !2522)
!2521 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2531, !2533, !2538, !2539}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2520, file: !2521, line: 13, baseType: !2524, size: 320)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2525, line: 17, size: 320, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2524, file: !2525, line: 18, baseType: !113, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2524, file: !2525, line: 19, baseType: !113, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2524, file: !2525, line: 20, baseType: !1391, size: 128, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2524, file: !2525, line: 22, baseType: !317, size: 128, align: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2520, file: !2521, line: 14, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2520, file: !2521, line: 15, baseType: !2534, size: 64, offset: 384)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2535, line: 16, size: 64, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2534, file: !2535, line: 17, baseType: !1126, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2520, file: !2521, line: 16, baseType: !1391, size: 128, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2520, file: !2521, line: 17, baseType: !749, size: 32, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !550, file: !31, line: 1465, baseType: !117, size: 64, offset: 6400)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !550, file: !31, line: 1468, baseType: !367, size: 32, offset: 6464)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !550, file: !31, line: 1470, baseType: !489, size: 64, offset: 6528)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !550, file: !31, line: 1471, baseType: !489, size: 64, offset: 6592)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !550, file: !31, line: 1473, baseType: !369, size: 32, offset: 6656)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !550, file: !31, line: 1474, baseType: !2546, size: 64, offset: 6720)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !550, file: !31, line: 1477, baseType: !2549, size: 256, offset: 6784)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !2140)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !550, file: !31, line: 1478, baseType: !2551, size: 128, offset: 7040)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2552, line: 18, baseType: !2553)
!2552 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2552, line: 16, size: 128, elements: !2554)
!2554 = !{!2555}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2553, file: !2552, line: 17, baseType: !2556, size: 128)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 128, elements: !1645)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !550, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !550, file: !31, line: 1481, baseType: !2559, size: 32, offset: 7200)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !116, line: 150, baseType: !7)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !550, file: !31, line: 1487, baseType: !676, size: 192, offset: 7232)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !550, file: !31, line: 1493, baseType: !170, size: 64, offset: 7424)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !550, file: !31, line: 1495, baseType: !2563, size: 64, offset: 7488)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2565)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !332, line: 135, size: 1024, align: 512, elements: !2566)
!2566 = !{!2567, !2571, !2572, !2579, !2585, !2589, !2593, !2597, !2598, !2602, !2606, !2611, !2615}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2565, file: !332, line: 136, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!113, !334, !7}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2565, file: !332, line: 137, baseType: !2568, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2565, file: !332, line: 138, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!113, !2576, !2578}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2565, file: !332, line: 139, baseType: !2580, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!113, !2576, !7, !170, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2565, file: !332, line: 141, baseType: !2586, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!113, !2576}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2565, file: !332, line: 142, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!113, !334}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2565, file: !332, line: 143, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{null, !334}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2565, file: !332, line: 144, baseType: !2594, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2565, file: !332, line: 145, baseType: !2599, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !334, !381}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2565, file: !332, line: 146, baseType: !2603, size: 64, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!228, !334, !228, !113}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2565, file: !332, line: 147, baseType: !2607, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!330, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2565, file: !332, line: 148, baseType: !2612, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!113, !499, !151}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2565, file: !332, line: 149, baseType: !2616, size: 64, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!334, !334, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !550, file: !31, line: 1500, baseType: !113, size: 32, offset: 7552)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !550, file: !31, line: 1502, baseType: !2623, size: 448, offset: 7616)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2267, line: 60, size: 448, elements: !2624)
!2624 = !{!2625, !2630, !2631, !2632, !2633, !2634, !2635}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2623, file: !2267, line: 61, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!119, !2629, !2265}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2623, file: !2267, line: 63, baseType: !2626, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2623, file: !2267, line: 66, baseType: !114, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2623, file: !2267, line: 67, baseType: !113, size: 32, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !2267, line: 68, baseType: !7, size: 32, offset: 224)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2623, file: !2267, line: 71, baseType: !174, size: 128, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2623, file: !2267, line: 77, baseType: !2636, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !550, file: !31, line: 1505, baseType: !680, size: 64, offset: 8064)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !550, file: !31, line: 1508, baseType: !680, size: 64, offset: 8128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !550, file: !31, line: 1511, baseType: !113, size: 32, offset: 8192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !550, file: !31, line: 1514, baseType: !904, size: 32, offset: 8224)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !550, file: !31, line: 1517, baseType: !2642, size: 64, offset: 8256)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1870, line: 18, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !550, file: !31, line: 1518, baseType: !588, size: 64, offset: 8320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !550, file: !31, line: 1525, baseType: !1623, size: 64, offset: 8384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !550, file: !31, line: 1532, baseType: !2647, size: 64, offset: 8448)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2648, line: 52, size: 64, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2647, file: !2648, line: 53, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2648, line: 40, size: 256, elements: !2653)
!2653 = !{!2654, !2655, !2660}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2652, file: !2648, line: 42, baseType: !187)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2652, file: !2648, line: 44, baseType: !2656, size: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2648, line: 28, size: 192, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2656, file: !2648, line: 29, baseType: !174, size: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2656, file: !2648, line: 31, baseType: !114, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2652, file: !2648, line: 49, baseType: !114, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !550, file: !31, line: 1533, baseType: !2647, size: 64, offset: 8512)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !550, file: !31, line: 1534, baseType: !317, size: 128, align: 64, offset: 8576)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !550, file: !31, line: 1535, baseType: !1869, size: 256, offset: 8704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !550, file: !31, line: 1537, baseType: !676, size: 192, offset: 8960)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !550, file: !31, line: 1542, baseType: !113, size: 32, offset: 9152)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !550, file: !31, line: 1545, baseType: !187, offset: 9184)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !550, file: !31, line: 1546, baseType: !174, size: 128, offset: 9216)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !550, file: !31, line: 1548, baseType: !187, offset: 9344)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !550, file: !31, line: 1549, baseType: !174, size: 128, offset: 9344)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !382, file: !31, line: 624, baseType: !736, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !382, file: !31, line: 631, baseType: !119, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 639, baseType: !2673, size: 32, offset: 384)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 639, size: 32, elements: !2674)
!2674 = !{!2675, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2673, file: !31, line: 640, baseType: !2676, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2673, file: !31, line: 641, baseType: !7, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !382, file: !31, line: 643, baseType: !463, size: 32, offset: 416)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !382, file: !31, line: 644, baseType: !481, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !382, file: !31, line: 645, baseType: !485, size: 128, offset: 512)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !382, file: !31, line: 646, baseType: !485, size: 128, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !382, file: !31, line: 647, baseType: !485, size: 128, offset: 768)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !382, file: !31, line: 648, baseType: !187, offset: 896)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !382, file: !31, line: 649, baseType: !269, size: 16, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !382, file: !31, line: 650, baseType: !1262, size: 8, offset: 912)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !382, file: !31, line: 651, baseType: !1262, size: 8, offset: 920)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !382, file: !31, line: 652, baseType: !2439, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !382, file: !31, line: 659, baseType: !119, size: 64, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !382, file: !31, line: 660, baseType: !769, size: 256, offset: 1088)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !382, file: !31, line: 662, baseType: !119, size: 64, offset: 1344)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !382, file: !31, line: 663, baseType: !119, size: 64, offset: 1408)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !382, file: !31, line: 665, baseType: !592, size: 128, offset: 1472)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !382, file: !31, line: 666, baseType: !174, size: 128, offset: 1600)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !382, file: !31, line: 675, baseType: !174, size: 128, offset: 1728)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !382, file: !31, line: 676, baseType: !174, size: 128, offset: 1856)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !382, file: !31, line: 677, baseType: !174, size: 128, offset: 1984)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 678, baseType: !2698, size: 128, offset: 2112)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 678, size: 128, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2698, file: !31, line: 679, baseType: !588, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2698, file: !31, line: 680, baseType: !317, size: 128, align: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !382, file: !31, line: 682, baseType: !682, size: 64, offset: 2240)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !382, file: !31, line: 683, baseType: !682, size: 64, offset: 2304)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !382, file: !31, line: 684, baseType: !749, size: 32, offset: 2368)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !382, file: !31, line: 685, baseType: !749, size: 32, offset: 2400)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !382, file: !31, line: 686, baseType: !749, size: 32, offset: 2432)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !382, file: !31, line: 688, baseType: !749, size: 32, offset: 2464)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 690, baseType: !2709, size: 64, offset: 2496)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 690, size: 64, elements: !2710)
!2710 = !{!2711, !2933}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2709, file: !31, line: 691, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2714)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2715)
!2715 = !{!2716, !2717, !2721, !2725, !2729, !2730, !2731, !2735, !2748, !2749, !2757, !2761, !2762, !2766, !2767, !2771, !2776, !2777, !2781, !2785, !2893, !2897, !2898, !2902, !2903, !2907, !2911, !2916, !2920, !2924, !2928, !2932}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2714, file: !31, line: 1823, baseType: !583, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2714, file: !31, line: 1824, baseType: !2718, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!481, !304, !481, !113}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2714, file: !31, line: 1825, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!259, !304, !228, !274, !698}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2714, file: !31, line: 1826, baseType: !2726, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!259, !304, !170, !274, !698}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2714, file: !31, line: 1827, baseType: !839, size: 64, offset: 256)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2714, file: !31, line: 1828, baseType: !839, size: 64, offset: 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2714, file: !31, line: 1829, baseType: !2732, size: 64, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!113, !842, !151}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2714, file: !31, line: 1830, baseType: !2736, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!113, !304, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2741)
!2741 = !{!2742, !2747}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2740, file: !31, line: 1777, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!113, !2739, !170, !113, !481, !373, !7}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2740, file: !31, line: 1778, baseType: !481, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2714, file: !31, line: 1831, baseType: !2736, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2714, file: !31, line: 1832, baseType: !2750, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!2753, !304, !2755}
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2754, line: 52, baseType: !7)
!2754 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !569, line: 27, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2714, file: !31, line: 1833, baseType: !2758, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!114, !304, !7, !119}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2714, file: !31, line: 1834, baseType: !2758, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2714, file: !31, line: 1835, baseType: !2763, size: 64, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!113, !304, !977}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2714, file: !31, line: 1836, baseType: !119, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2714, file: !31, line: 1837, baseType: !2768, size: 64, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!113, !381, !304}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2714, file: !31, line: 1838, baseType: !2772, size: 64, offset: 960)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!113, !304, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !117)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2714, file: !31, line: 1839, baseType: !2768, size: 64, offset: 1024)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2714, file: !31, line: 1840, baseType: !2778, size: 64, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!113, !304, !481, !481, !113}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2714, file: !31, line: 1841, baseType: !2782, size: 64, offset: 1152)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!113, !113, !304, !113}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2714, file: !31, line: 1842, baseType: !2786, size: 64, offset: 1216)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!113, !304, !113, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2823, !2824, !2825, !2838, !2869}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2790, file: !31, line: 1063, baseType: !2789, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2790, file: !31, line: 1064, baseType: !174, size: 128, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2790, file: !31, line: 1065, baseType: !592, size: 128, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2790, file: !31, line: 1066, baseType: !174, size: 128, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2790, file: !31, line: 1069, baseType: !174, size: 128, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2790, file: !31, line: 1072, baseType: !2775, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2790, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2790, file: !31, line: 1074, baseType: !379, size: 8, offset: 672)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2790, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2790, file: !31, line: 1076, baseType: !113, size: 32, offset: 736)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2790, file: !31, line: 1077, baseType: !1391, size: 128, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2790, file: !31, line: 1078, baseType: !304, size: 64, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2790, file: !31, line: 1079, baseType: !481, size: 64, offset: 960)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2790, file: !31, line: 1080, baseType: !481, size: 64, offset: 1024)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2790, file: !31, line: 1082, baseType: !2807, size: 64, offset: 1088)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2809)
!2809 = !{!2810, !2818, !2819, !2820, !2821, !2822}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2808, file: !31, line: 1315, baseType: !2811)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2812, line: 20, baseType: !2813)
!2812 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2812, line: 11, elements: !2814)
!2814 = !{!2815}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2813, file: !2812, line: 12, baseType: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !199, line: 33, baseType: !2817)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 31, elements: !201)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2808, file: !31, line: 1316, baseType: !113, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2808, file: !31, line: 1317, baseType: !113, size: 32, offset: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2808, file: !31, line: 1318, baseType: !2807, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2808, file: !31, line: 1319, baseType: !304, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2808, file: !31, line: 1320, baseType: !317, size: 128, align: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2790, file: !31, line: 1084, baseType: !119, size: 64, offset: 1152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2790, file: !31, line: 1085, baseType: !119, size: 64, offset: 1216)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2790, file: !31, line: 1087, baseType: !2826, size: 64, offset: 1280)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2829)
!2829 = !{!2830, !2834}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2828, file: !31, line: 1012, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2789, !2789}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2828, file: !31, line: 1013, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2789}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2790, file: !31, line: 1088, baseType: !2839, size: 64, offset: 1344)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2842)
!2842 = !{!2843, !2847, !2851, !2852, !2856, !2860, !2864, !2868}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2841, file: !31, line: 1017, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!2775, !2775}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2841, file: !31, line: 1018, baseType: !2848, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !2775}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2841, file: !31, line: 1019, baseType: !2835, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2841, file: !31, line: 1020, baseType: !2853, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!113, !2789, !113}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2841, file: !31, line: 1021, baseType: !2857, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!151, !2789}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2841, file: !31, line: 1022, baseType: !2861, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!113, !2789, !113, !177}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2841, file: !31, line: 1023, baseType: !2865, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2789, !816}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2841, file: !31, line: 1024, baseType: !2857, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2790, file: !31, line: 1097, baseType: !2870, size: 256, offset: 1408)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2790, file: !31, line: 1089, size: 256, elements: !2871)
!2871 = !{!2872, !2881, !2887}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2870, file: !31, line: 1090, baseType: !2873, size: 256)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2874, line: 10, size: 256, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2875 = !{!2876, !2877, !2880}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2873, file: !2874, line: 11, baseType: !367, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2873, file: !2874, line: 12, baseType: !2878, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2874, line: 5, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2873, file: !2874, line: 13, baseType: !174, size: 128, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2870, file: !31, line: 1091, baseType: !2882, size: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2874, line: 17, size: 64, elements: !2883)
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2882, file: !2874, line: 18, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2874, line: 16, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2870, file: !31, line: 1096, baseType: !2888, size: 192)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2870, file: !31, line: 1092, size: 192, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2888, file: !31, line: 1093, baseType: !174, size: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2888, file: !31, line: 1094, baseType: !113, size: 32, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2888, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2714, file: !31, line: 1843, baseType: !2894, size: 64, offset: 1280)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!259, !304, !723, !113, !274, !698, !113}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2714, file: !31, line: 1844, baseType: !1017, size: 64, offset: 1344)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2714, file: !31, line: 1845, baseType: !2899, size: 64, offset: 1408)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!113, !113}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2714, file: !31, line: 1846, baseType: !2786, size: 64, offset: 1472)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2714, file: !31, line: 1847, baseType: !2904, size: 64, offset: 1536)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!259, !2010, !304, !698, !274, !7}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2714, file: !31, line: 1848, baseType: !2908, size: 64, offset: 1600)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!259, !304, !698, !2010, !274, !7}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2714, file: !31, line: 1849, baseType: !2912, size: 64, offset: 1664)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!113, !304, !114, !2915, !816}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2714, file: !31, line: 1850, baseType: !2917, size: 64, offset: 1728)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!114, !304, !113, !481, !481}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2714, file: !31, line: 1852, baseType: !2921, size: 64, offset: 1792)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{null, !664, !304}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2714, file: !31, line: 1856, baseType: !2925, size: 64, offset: 1856)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!259, !304, !481, !304, !481, !274, !7}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2714, file: !31, line: 1858, baseType: !2929, size: 64, offset: 1920)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!481, !304, !481, !304, !481, !481, !7}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2714, file: !31, line: 1861, baseType: !2778, size: 64, offset: 1984)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2709, file: !31, line: 692, baseType: !617, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !382, file: !31, line: 694, baseType: !2935, size: 64, offset: 2560)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2937)
!2937 = !{!2938, !2939, !2940, !2941}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2936, file: !31, line: 1101, baseType: !187)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2936, file: !31, line: 1102, baseType: !174, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2936, file: !31, line: 1103, baseType: !174, size: 128, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2936, file: !31, line: 1104, baseType: !174, size: 128, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !382, file: !31, line: 695, baseType: !737, size: 1216, align: 64, offset: 2624)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !382, file: !31, line: 696, baseType: !174, size: 128, offset: 3840)
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 697, baseType: !2945, size: 64, offset: 3968)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 697, size: 64, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2952, !2953}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2945, file: !31, line: 698, baseType: !2010, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2945, file: !31, line: 699, baseType: !2464, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2945, file: !31, line: 700, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2945, file: !31, line: 701, baseType: !228, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2945, file: !31, line: 702, baseType: !7, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !382, file: !31, line: 705, baseType: !369, size: 32, offset: 4032)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !382, file: !31, line: 708, baseType: !369, size: 32, offset: 4064)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !382, file: !31, line: 709, baseType: !2546, size: 64, offset: 4096)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !382, file: !31, line: 720, baseType: !117, size: 64, offset: 4160)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !335, file: !332, line: 98, baseType: !2959, size: 256, offset: 448)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !2140)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !335, file: !332, line: 101, baseType: !2961, size: 32, offset: 704)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2962, line: 25, size: 32, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2963 = !{!2964}
!2964 = !DIDerivedType(tag: DW_TAG_member, scope: !2961, file: !2962, line: 26, baseType: !2965, size: 32)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2961, file: !2962, line: 26, size: 32, elements: !2966)
!2966 = !{!2967}
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2965, file: !2962, line: 30, baseType: !2968, size: 32)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2962, line: 30, size: 32, elements: !2969)
!2969 = !{!2970, !2971}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2968, file: !2962, line: 31, baseType: !187)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2968, file: !2962, line: 32, baseType: !113, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !335, file: !332, line: 102, baseType: !2563, size: 64, offset: 768)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !335, file: !332, line: 103, baseType: !549, size: 64, offset: 832)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !335, file: !332, line: 104, baseType: !119, size: 64, offset: 896)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !335, file: !332, line: 105, baseType: !117, size: 64, offset: 960)
!2976 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !332, line: 107, baseType: !2977, size: 128, offset: 1024)
!2977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !332, line: 107, size: 128, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2977, file: !332, line: 108, baseType: !174, size: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2977, file: !332, line: 109, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !335, file: !332, line: 111, baseType: !174, size: 128, offset: 1152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !335, file: !332, line: 112, baseType: !174, size: 128, offset: 1280)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !335, file: !332, line: 120, baseType: !2985, size: 128, offset: 1408)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !332, line: 116, size: 128, elements: !2986)
!2986 = !{!2987, !2988, !2989}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2985, file: !332, line: 117, baseType: !592, size: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2985, file: !332, line: 118, baseType: !349, size: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2985, file: !332, line: 119, baseType: !317, size: 128, align: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !305, file: !31, line: 922, baseType: !381, size: 64, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !305, file: !31, line: 923, baseType: !2712, size: 64, offset: 320)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !305, file: !31, line: 929, baseType: !187, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !305, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !305, file: !31, line: 931, baseType: !680, size: 64, offset: 448)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !305, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !305, file: !31, line: 933, baseType: !2559, size: 32, offset: 544)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !305, file: !31, line: 934, baseType: !676, size: 192, offset: 576)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !305, file: !31, line: 935, baseType: !481, size: 64, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !305, file: !31, line: 936, baseType: !3000, size: 192, offset: 832)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3000, file: !31, line: 886, baseType: !2811)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3000, file: !31, line: 887, baseType: !1381, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3000, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3000, file: !31, line: 889, baseType: !387, size: 32, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3000, file: !31, line: 889, baseType: !387, size: 32, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3000, file: !31, line: 890, baseType: !113, size: 32, offset: 160)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !305, file: !31, line: 937, baseType: !1457, size: 64, offset: 1024)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !305, file: !31, line: 938, baseType: !3010, size: 256, offset: 1088)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3010, file: !31, line: 897, baseType: !119, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3010, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3010, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3010, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3010, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3010, file: !31, line: 904, baseType: !481, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !305, file: !31, line: 940, baseType: !373, size: 64, offset: 1344)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !305, file: !31, line: 945, baseType: !117, size: 64, offset: 1408)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !305, file: !31, line: 949, baseType: !174, size: 128, offset: 1472)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !305, file: !31, line: 950, baseType: !174, size: 128, offset: 1600)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !305, file: !31, line: 952, baseType: !736, size: 64, offset: 1728)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !305, file: !31, line: 953, baseType: !904, size: 32, offset: 1792)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !305, file: !31, line: 954, baseType: !904, size: 32, offset: 1824)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !295, file: !253, line: 174, baseType: !301, size: 64, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !295, file: !253, line: 176, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!113, !304, !180, !294, !977}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !283, file: !253, line: 90, baseType: !278, size: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !283, file: !253, line: 91, baseType: !3032, size: 64, offset: 256)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !243, file: !167, line: 143, baseType: !3034, size: 64, offset: 256)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!3037, !180}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3039)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3040)
!3040 = !{!3041, !3042, !3046, !3050, !3056, !3060}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3039, file: !48, line: 40, baseType: !47, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3039, file: !48, line: 41, baseType: !3043, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!151}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3039, file: !48, line: 42, baseType: !3047, size: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!117}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3039, file: !48, line: 43, baseType: !3051, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!159, !3054}
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3039, file: !48, line: 44, baseType: !3057, size: 64, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!159}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3039, file: !48, line: 45, baseType: !420, size: 64, offset: 320)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !243, file: !167, line: 144, baseType: !3062, size: 64, offset: 320)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!159, !180}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !243, file: !167, line: 145, baseType: !3066, size: 64, offset: 384)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{null, !180, !3069, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !166, file: !167, line: 70, baseType: !3072, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !569, line: 123, size: 1024, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3191, !3192, !3193, !3194, !3195}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3073, file: !569, line: 124, baseType: !749, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3073, file: !569, line: 125, baseType: !749, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3073, file: !569, line: 135, baseType: !3072, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3073, file: !569, line: 136, baseType: !170, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3073, file: !569, line: 138, baseType: !762, size: 192, align: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3073, file: !569, line: 140, baseType: !159, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3073, file: !569, line: 141, baseType: !7, size: 32, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3073, file: !569, line: 142, baseType: !3083, size: 256, offset: 512)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3073, file: !569, line: 142, size: 256, elements: !3084)
!3084 = !{!3085, !3131, !3135}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3083, file: !569, line: 143, baseType: !3086, size: 192)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !569, line: 91, size: 192, elements: !3087)
!3087 = !{!3088, !3089, !3090}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3086, file: !569, line: 92, baseType: !119, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3086, file: !569, line: 94, baseType: !758, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3086, file: !569, line: 100, baseType: !3091, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !569, line: 180, size: 704, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3103, !3104, !3105, !3129, !3130}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3092, file: !569, line: 182, baseType: !3072, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3092, file: !569, line: 183, baseType: !7, size: 32, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3092, file: !569, line: 186, baseType: !3097, size: 192, offset: 128)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3098, line: 19, size: 192, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3097, file: !3098, line: 20, baseType: !741, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3097, file: !3098, line: 21, baseType: !7, size: 32, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3097, file: !3098, line: 22, baseType: !7, size: 32, offset: 160)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3092, file: !569, line: 187, baseType: !367, size: 32, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3092, file: !569, line: 188, baseType: !367, size: 32, offset: 352)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3092, file: !569, line: 189, baseType: !3106, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !569, line: 168, size: 320, elements: !3108)
!3108 = !{!3109, !3113, !3117, !3121, !3125}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3107, file: !569, line: 169, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!113, !664, !3091}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3107, file: !569, line: 171, baseType: !3114, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!113, !3072, !170, !268}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3107, file: !569, line: 173, baseType: !3118, size: 64, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!113, !3072}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3107, file: !569, line: 174, baseType: !3122, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!113, !3072, !3072, !170}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3107, file: !569, line: 176, baseType: !3126, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!113, !664, !3072, !3091}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3092, file: !569, line: 192, baseType: !174, size: 128, offset: 448)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3092, file: !569, line: 194, baseType: !1391, size: 128, offset: 576)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3083, file: !569, line: 144, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !569, line: 103, size: 64, elements: !3133)
!3133 = !{!3134}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3132, file: !569, line: 104, baseType: !3072, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3083, file: !569, line: 145, baseType: !3136, size: 256)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !569, line: 107, size: 256, elements: !3137)
!3137 = !{!3138, !3186, !3189, !3190}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3136, file: !569, line: 108, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3141)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !569, line: 217, size: 768, elements: !3142)
!3142 = !{!3143, !3163, !3167, !3168, !3169, !3170, !3171, !3175, !3176, !3177, !3178, !3182}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3141, file: !569, line: 222, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!113, !3147}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !569, line: 197, size: 1088, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3148, file: !569, line: 199, baseType: !3072, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3148, file: !569, line: 200, baseType: !304, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3148, file: !569, line: 201, baseType: !664, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3148, file: !569, line: 202, baseType: !117, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3148, file: !569, line: 205, baseType: !676, size: 192, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3148, file: !569, line: 206, baseType: !676, size: 192, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3148, file: !569, line: 207, baseType: !113, size: 32, offset: 640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3148, file: !569, line: 208, baseType: !174, size: 128, offset: 704)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3148, file: !569, line: 209, baseType: !228, size: 64, offset: 832)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3148, file: !569, line: 211, baseType: !274, size: 64, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3148, file: !569, line: 212, baseType: !151, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3148, file: !569, line: 213, baseType: !151, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3148, file: !569, line: 214, baseType: !1005, size: 64, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3141, file: !569, line: 223, baseType: !3164, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !3147}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3141, file: !569, line: 236, baseType: !708, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3141, file: !569, line: 238, baseType: !695, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3141, file: !569, line: 239, baseType: !704, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3141, file: !569, line: 240, baseType: !700, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3141, file: !569, line: 242, baseType: !3172, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!259, !3147, !228, !274, !481}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3141, file: !569, line: 252, baseType: !274, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3141, file: !569, line: 259, baseType: !151, size: 8, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3141, file: !569, line: 260, baseType: !3172, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3141, file: !569, line: 263, baseType: !3179, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!2753, !3147, !2755}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3141, file: !569, line: 266, baseType: !3183, size: 64, offset: 704)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!113, !3147, !977}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3136, file: !569, line: 109, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !569, line: 31, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3136, file: !569, line: 110, baseType: !481, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3136, file: !569, line: 111, baseType: !3072, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3073, file: !569, line: 148, baseType: !117, size: 64, offset: 768)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3073, file: !569, line: 154, baseType: !373, size: 64, offset: 832)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3073, file: !569, line: 156, baseType: !269, size: 16, offset: 896)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3073, file: !569, line: 157, baseType: !268, size: 16, offset: 912)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3073, file: !569, line: 158, baseType: !3196, size: 64, offset: 960)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !569, line: 32, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !166, file: !167, line: 71, baseType: !3199, size: 32, offset: 448)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3200, line: 19, size: 32, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3201 = !{!3202}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3199, file: !3200, line: 20, baseType: !1140, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !166, file: !167, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !166, file: !167, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !166, file: !167, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !166, file: !167, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !166, file: !167, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !60, line: 463, baseType: !3209, size: 64, offset: 512)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !163, file: !60, line: 465, baseType: !3211, size: 64, offset: 576)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !163, file: !60, line: 467, baseType: !170, size: 64, offset: 640)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !60, line: 468, baseType: !3215, size: 64, offset: 704)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3218)
!3218 = !{!3219, !3220, !3221, !3225, !3230, !3234}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3217, file: !60, line: 88, baseType: !170, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3217, file: !60, line: 89, baseType: !280, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3217, file: !60, line: 90, baseType: !3222, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!113, !3209, !223}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3217, file: !60, line: 91, baseType: !3226, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!228, !3209, !3229, !3069, !3070}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3217, file: !60, line: 93, baseType: !3231, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{null, !3209}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3217, file: !60, line: 95, baseType: !3235, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3237)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3238)
!3238 = !{!3239, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3237, file: !67, line: 279, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!113, !3209}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3237, file: !67, line: 280, baseType: !3231, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3237, file: !67, line: 281, baseType: !3240, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3237, file: !67, line: 282, baseType: !3240, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3237, file: !67, line: 283, baseType: !3240, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3237, file: !67, line: 284, baseType: !3240, size: 64, offset: 320)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3237, file: !67, line: 285, baseType: !3240, size: 64, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3237, file: !67, line: 286, baseType: !3240, size: 64, offset: 448)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3237, file: !67, line: 287, baseType: !3240, size: 64, offset: 512)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3237, file: !67, line: 288, baseType: !3240, size: 64, offset: 576)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3237, file: !67, line: 289, baseType: !3240, size: 64, offset: 640)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3237, file: !67, line: 290, baseType: !3240, size: 64, offset: 704)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3237, file: !67, line: 291, baseType: !3240, size: 64, offset: 768)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3237, file: !67, line: 292, baseType: !3240, size: 64, offset: 832)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3237, file: !67, line: 293, baseType: !3240, size: 64, offset: 896)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3237, file: !67, line: 294, baseType: !3240, size: 64, offset: 960)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3237, file: !67, line: 295, baseType: !3240, size: 64, offset: 1024)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3237, file: !67, line: 296, baseType: !3240, size: 64, offset: 1088)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3237, file: !67, line: 297, baseType: !3240, size: 64, offset: 1152)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3237, file: !67, line: 298, baseType: !3240, size: 64, offset: 1216)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3237, file: !67, line: 299, baseType: !3240, size: 64, offset: 1280)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3237, file: !67, line: 300, baseType: !3240, size: 64, offset: 1344)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3237, file: !67, line: 301, baseType: !3240, size: 64, offset: 1408)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !163, file: !60, line: 470, baseType: !3266, size: 64, offset: 768)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3268, line: 82, size: 1408, elements: !3269)
!3268 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3351, !3354, !3355}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3267, file: !3268, line: 83, baseType: !170, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3267, file: !3268, line: 84, baseType: !170, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3267, file: !3268, line: 85, baseType: !3209, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3267, file: !3268, line: 86, baseType: !280, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3267, file: !3268, line: 87, baseType: !280, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3267, file: !3268, line: 88, baseType: !280, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3267, file: !3268, line: 90, baseType: !3277, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!113, !3209, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289, !3302, !3315, !3316, !3317, !3318, !3319, !3327, !3328, !3329, !3330, !3331, !3332}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3281, file: !54, line: 96, baseType: !170, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3281, file: !54, line: 97, baseType: !3266, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3281, file: !54, line: 99, baseType: !583, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3281, file: !54, line: 100, baseType: !170, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3281, file: !54, line: 102, baseType: !151, size: 8, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3281, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3281, file: !54, line: 105, baseType: !3290, size: 64, offset: 320)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3292)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3293, line: 262, size: 1600, elements: !3294)
!3293 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3294 = !{!3295, !3296, !3297, !3301}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3292, file: !3293, line: 263, baseType: !2549, size: 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3292, file: !3293, line: 264, baseType: !2549, size: 256, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3292, file: !3293, line: 265, baseType: !3298, size: 1024, offset: 512)
!3298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1024, elements: !3299)
!3299 = !{!3300}
!3300 = !DISubrange(count: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3292, file: !3293, line: 266, baseType: !159, size: 64, offset: 1536)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3281, file: !54, line: 106, baseType: !3303, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3305)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3293, line: 210, size: 256, elements: !3306)
!3306 = !{!3307, !3311, !3313, !3314}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3305, file: !3293, line: 211, baseType: !3308, size: 72)
!3308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 72, elements: !3309)
!3309 = !{!3310}
!3310 = !DISubrange(count: 9)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3305, file: !3293, line: 212, baseType: !3312, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3293, line: 14, baseType: !119)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3305, file: !3293, line: 213, baseType: !369, size: 32, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3305, file: !3293, line: 214, baseType: !369, size: 32, offset: 224)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3281, file: !54, line: 108, baseType: !3240, size: 64, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3281, file: !54, line: 109, baseType: !3231, size: 64, offset: 512)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3281, file: !54, line: 110, baseType: !3240, size: 64, offset: 576)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3281, file: !54, line: 111, baseType: !3231, size: 64, offset: 640)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3281, file: !54, line: 112, baseType: !3320, size: 64, offset: 704)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!113, !3209, !3323}
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3324)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3325)
!3325 = !{!3326}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3324, file: !67, line: 51, baseType: !113, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3281, file: !54, line: 113, baseType: !3240, size: 64, offset: 768)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3281, file: !54, line: 114, baseType: !280, size: 64, offset: 832)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3281, file: !54, line: 115, baseType: !280, size: 64, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3281, file: !54, line: 117, baseType: !3235, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3281, file: !54, line: 118, baseType: !3231, size: 64, offset: 1024)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3281, file: !54, line: 120, baseType: !3333, size: 64, offset: 1088)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3267, file: !3268, line: 91, baseType: !3222, size: 64, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3267, file: !3268, line: 92, baseType: !3240, size: 64, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3267, file: !3268, line: 93, baseType: !3231, size: 64, offset: 576)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3267, file: !3268, line: 94, baseType: !3240, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3267, file: !3268, line: 95, baseType: !3231, size: 64, offset: 704)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3267, file: !3268, line: 97, baseType: !3240, size: 64, offset: 768)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3267, file: !3268, line: 98, baseType: !3240, size: 64, offset: 832)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3267, file: !3268, line: 100, baseType: !3320, size: 64, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3267, file: !3268, line: 101, baseType: !3240, size: 64, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3267, file: !3268, line: 103, baseType: !3240, size: 64, offset: 1024)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3267, file: !3268, line: 105, baseType: !3240, size: 64, offset: 1088)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3267, file: !3268, line: 107, baseType: !3235, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3267, file: !3268, line: 109, baseType: !3348, size: 64, offset: 1216)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3350)
!3350 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3268, line: 109, flags: DIFlagFwdDecl)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3267, file: !3268, line: 111, baseType: !3352, size: 64, offset: 1280)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3268, line: 111, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3267, file: !3268, line: 112, baseType: !598, offset: 1344)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3267, file: !3268, line: 114, baseType: !151, size: 8, offset: 1344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !163, file: !60, line: 471, baseType: !3280, size: 64, offset: 832)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !163, file: !60, line: 473, baseType: !117, size: 64, offset: 896)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !163, file: !60, line: 475, baseType: !117, size: 64, offset: 960)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !163, file: !60, line: 480, baseType: !676, size: 192, offset: 1024)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !163, file: !60, line: 484, baseType: !3361, size: 576, offset: 1216)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3361, file: !60, line: 362, baseType: !174, size: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3361, file: !60, line: 363, baseType: !174, size: 128, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3361, file: !60, line: 364, baseType: !174, size: 128, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3361, file: !60, line: 365, baseType: !174, size: 128, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3361, file: !60, line: 366, baseType: !151, size: 8, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3361, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !163, file: !60, line: 485, baseType: !3370, size: 2304, offset: 1792)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3467, !3471}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3370, file: !67, line: 566, baseType: !3323, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3370, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3370, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3370, file: !67, line: 569, baseType: !151, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3370, file: !67, line: 570, baseType: !151, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3370, file: !67, line: 571, baseType: !151, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3370, file: !67, line: 572, baseType: !151, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3370, file: !67, line: 573, baseType: !151, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3370, file: !67, line: 574, baseType: !151, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3370, file: !67, line: 575, baseType: !151, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3370, file: !67, line: 576, baseType: !151, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3370, file: !67, line: 577, baseType: !367, size: 32, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3370, file: !67, line: 578, baseType: !187, offset: 96)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3370, file: !67, line: 580, baseType: !174, size: 128, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3370, file: !67, line: 581, baseType: !1412, size: 192, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3370, file: !67, line: 582, baseType: !3388, size: 64, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3390, line: 43, size: 1472, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3399, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3389, file: !3390, line: 44, baseType: !170, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3389, file: !3390, line: 45, baseType: !113, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3389, file: !3390, line: 46, baseType: !174, size: 128, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3389, file: !3390, line: 47, baseType: !187, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3389, file: !3390, line: 48, baseType: !3397, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3389, file: !3390, line: 49, baseType: !3400, size: 320, offset: 320)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3401, line: 11, size: 320, elements: !3402)
!3401 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3402 = !{!3403, !3404, !3405, !3410}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3400, file: !3401, line: 16, baseType: !592, size: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3400, file: !3401, line: 17, baseType: !119, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3400, file: !3401, line: 18, baseType: !3406, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3400, file: !3401, line: 19, baseType: !367, size: 32, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3389, file: !3390, line: 50, baseType: !119, size: 64, offset: 640)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3389, file: !3390, line: 51, baseType: !1210, size: 64, offset: 704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3389, file: !3390, line: 52, baseType: !1210, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3389, file: !3390, line: 53, baseType: !1210, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3389, file: !3390, line: 54, baseType: !1210, size: 64, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3389, file: !3390, line: 55, baseType: !1210, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3389, file: !3390, line: 56, baseType: !119, size: 64, offset: 1024)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3389, file: !3390, line: 57, baseType: !119, size: 64, offset: 1088)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3389, file: !3390, line: 58, baseType: !119, size: 64, offset: 1152)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3389, file: !3390, line: 59, baseType: !119, size: 64, offset: 1216)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3389, file: !3390, line: 60, baseType: !119, size: 64, offset: 1280)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3389, file: !3390, line: 61, baseType: !3209, size: 64, offset: 1344)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3389, file: !3390, line: 62, baseType: !151, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3389, file: !3390, line: 63, baseType: !151, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3370, file: !67, line: 583, baseType: !151, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3370, file: !67, line: 584, baseType: !151, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3370, file: !67, line: 585, baseType: !151, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3370, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3370, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3370, file: !67, line: 592, baseType: !1202, size: 512, offset: 576)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3370, file: !67, line: 593, baseType: !373, size: 64, offset: 1088)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3370, file: !67, line: 594, baseType: !1869, size: 256, offset: 1152)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3370, file: !67, line: 595, baseType: !1391, size: 128, offset: 1408)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3370, file: !67, line: 596, baseType: !3397, size: 64, offset: 1536)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3370, file: !67, line: 597, baseType: !749, size: 32, offset: 1600)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3370, file: !67, line: 598, baseType: !749, size: 32, offset: 1632)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3370, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3370, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3370, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3370, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3370, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3370, file: !67, line: 604, baseType: !151, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3370, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3370, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3370, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3370, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3370, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3370, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3370, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3370, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3370, file: !67, line: 613, baseType: !113, size: 32, offset: 1792)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3370, file: !67, line: 614, baseType: !113, size: 32, offset: 1824)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3370, file: !67, line: 615, baseType: !373, size: 64, offset: 1856)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3370, file: !67, line: 616, baseType: !373, size: 64, offset: 1920)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3370, file: !67, line: 617, baseType: !373, size: 64, offset: 1984)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3370, file: !67, line: 618, baseType: !373, size: 64, offset: 2048)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3370, file: !67, line: 620, baseType: !3458, size: 64, offset: 2112)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3459, file: !67, line: 537, baseType: !187)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3459, file: !67, line: 538, baseType: !7, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3459, file: !67, line: 540, baseType: !174, size: 128, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3459, file: !67, line: 543, baseType: !3465, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3370, file: !67, line: 621, baseType: !3468, size: 64, offset: 2176)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3209, !1354}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3370, file: !67, line: 622, baseType: !3472, size: 64, offset: 2240)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !163, file: !60, line: 486, baseType: !3475, size: 64, offset: 4096)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3484, !3485, !3486}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3476, file: !67, line: 643, baseType: !3237, size: 1472)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3476, file: !67, line: 644, baseType: !3240, size: 64, offset: 1472)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3476, file: !67, line: 645, baseType: !3481, size: 64, offset: 1536)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !3209, !151}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3476, file: !67, line: 646, baseType: !3240, size: 64, offset: 1600)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3476, file: !67, line: 647, baseType: !3231, size: 64, offset: 1664)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3476, file: !67, line: 648, baseType: !3231, size: 64, offset: 1728)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !163, file: !60, line: 493, baseType: !3488, size: 64, offset: 4160)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3576, !3577, !3578, !3579, !3580, !3581, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3489, file: !81, line: 163, baseType: !174, size: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !81, line: 164, baseType: !170, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3489, file: !81, line: 165, baseType: !3494, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3497)
!3497 = !{!3498, !3527, !3538, !3543, !3547, !3553, !3557, !3561, !3568, !3572}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3496, file: !81, line: 106, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!113, !3488, !3502, !80}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3504, line: 51, size: 1344, elements: !3505)
!3504 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3505 = !{!3506, !3507, !3509, !3510, !3511, !3520, !3521, !3522, !3523, !3524, !3525, !3526}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3503, file: !3504, line: 52, baseType: !170, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3503, file: !3504, line: 53, baseType: !3508, size: 32, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3504, line: 28, baseType: !367)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3503, file: !3504, line: 54, baseType: !170, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3503, file: !3504, line: 55, baseType: !129, size: 192, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3503, file: !3504, line: 57, baseType: !3512, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3504, line: 31, size: 704, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3519}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3513, file: !3504, line: 32, baseType: !228, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3513, file: !3504, line: 33, baseType: !113, size: 32, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3513, file: !3504, line: 34, baseType: !117, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3513, file: !3504, line: 35, baseType: !3512, size: 64, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3513, file: !3504, line: 43, baseType: !295, size: 448, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3503, file: !3504, line: 58, baseType: !3512, size: 64, offset: 448)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3503, file: !3504, line: 59, baseType: !3502, size: 64, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3503, file: !3504, line: 60, baseType: !3502, size: 64, offset: 576)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3503, file: !3504, line: 61, baseType: !3502, size: 64, offset: 640)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3503, file: !3504, line: 63, baseType: !166, size: 512, offset: 704)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3503, file: !3504, line: 65, baseType: !119, size: 64, offset: 1216)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3503, file: !3504, line: 66, baseType: !117, size: 64, offset: 1280)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3496, file: !81, line: 108, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!113, !3488, !3531, !80}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3533)
!3533 = !{!3534, !3535, !3536}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3532, file: !81, line: 64, baseType: !133, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3532, file: !81, line: 65, baseType: !113, size: 32, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3532, file: !81, line: 66, baseType: !3537, size: 512, offset: 96)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 512, elements: !1645)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3496, file: !81, line: 110, baseType: !3539, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!113, !3488, !7, !3542}
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !116, line: 164, baseType: !119)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3496, file: !81, line: 111, baseType: !3544, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !3488, !7}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3496, file: !81, line: 112, baseType: !3548, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!113, !3488, !3502, !3551, !7, !118, !2532}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3496, file: !81, line: 117, baseType: !3554, size: 64, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!113, !3488, !7, !7, !117}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3496, file: !81, line: 119, baseType: !3558, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !3488, !7, !7}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3496, file: !81, line: 121, baseType: !3562, size: 64, offset: 448)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!113, !3488, !3565, !151}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3567, line: 11, flags: DIFlagFwdDecl)
!3567 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3496, file: !81, line: 122, baseType: !3569, size: 64, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !3488, !3565}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3496, file: !81, line: 123, baseType: !3573, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!113, !3488, !3531, !118, !2532}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3489, file: !81, line: 166, baseType: !117, size: 64, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3489, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3489, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3489, file: !81, line: 171, baseType: !133, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3489, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3489, file: !81, line: 173, baseType: !3582, size: 64, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3489, file: !81, line: 175, baseType: !3488, size: 64, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3489, file: !81, line: 182, baseType: !3542, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3489, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3489, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3489, file: !81, line: 185, baseType: !741, size: 128, offset: 768)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3489, file: !81, line: 186, baseType: !676, size: 192, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3489, file: !81, line: 187, baseType: !3591, offset: 1088)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2241)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !163, file: !60, line: 499, baseType: !174, size: 128, offset: 4224)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !163, file: !60, line: 502, baseType: !3594, size: 64, offset: 4352)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3596)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !163, file: !60, line: 504, baseType: !3598, size: 64, offset: 4416)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !163, file: !60, line: 505, baseType: !373, size: 64, offset: 4480)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !163, file: !60, line: 510, baseType: !373, size: 64, offset: 4544)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !163, file: !60, line: 511, baseType: !3602, size: 64, offset: 4608)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3604)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !163, file: !60, line: 513, baseType: !3606, size: 64, offset: 4672)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3608)
!3608 = !{!3609, !3610}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3607, file: !60, line: 293, baseType: !7, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3607, file: !60, line: 294, baseType: !119, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !163, file: !60, line: 515, baseType: !174, size: 128, offset: 4736)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !163, file: !60, line: 526, baseType: !3613, offset: 4864)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3614, line: 5, elements: !201)
!3614 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !163, file: !60, line: 528, baseType: !3502, size: 64, offset: 4864)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !163, file: !60, line: 529, baseType: !133, size: 64, offset: 4928)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !163, file: !60, line: 534, baseType: !463, size: 32, offset: 4992)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !163, file: !60, line: 535, baseType: !367, size: 32, offset: 5024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !163, file: !60, line: 537, baseType: !187, offset: 5056)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !163, file: !60, line: 538, baseType: !174, size: 128, offset: 5056)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !163, file: !60, line: 540, baseType: !3622, size: 64, offset: 5184)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3624, line: 54, size: 960, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3636, !3640, !3641, !3642, !3643, !3647, !3651, !3652}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3623, file: !3624, line: 55, baseType: !170, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3623, file: !3624, line: 56, baseType: !583, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3623, file: !3624, line: 58, baseType: !280, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3623, file: !3624, line: 59, baseType: !280, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3623, file: !3624, line: 60, baseType: !180, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3623, file: !3624, line: 62, baseType: !3222, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3623, file: !3624, line: 63, baseType: !3633, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!228, !3209, !3229}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3623, file: !3624, line: 65, baseType: !3637, size: 64, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !3622}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3623, file: !3624, line: 66, baseType: !3231, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3623, file: !3624, line: 68, baseType: !3240, size: 64, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3623, file: !3624, line: 70, baseType: !3037, size: 64, offset: 640)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3623, file: !3624, line: 71, baseType: !3644, size: 64, offset: 704)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!159, !3209}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3623, file: !3624, line: 73, baseType: !3648, size: 64, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3209, !3069, !3070}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3623, file: !3624, line: 75, baseType: !3235, size: 64, offset: 832)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3623, file: !3624, line: 77, baseType: !3352, size: 64, offset: 896)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !163, file: !60, line: 541, baseType: !280, size: 64, offset: 5248)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !163, file: !60, line: 543, baseType: !3231, size: 64, offset: 5312)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !163, file: !60, line: 544, baseType: !3656, size: 64, offset: 5376)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !163, file: !60, line: 545, baseType: !3659, size: 64, offset: 5440)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !163, file: !60, line: 547, baseType: !151, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !163, file: !60, line: 548, baseType: !151, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !163, file: !60, line: 549, baseType: !151, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !163, file: !60, line: 550, baseType: !151, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !137, file: !130, line: 116, baseType: !3666, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!151, !153, !170}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !137, file: !130, line: 118, baseType: !3670, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!113, !153, !170, !7, !117, !274}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !137, file: !130, line: 123, baseType: !3674, size: 64, offset: 384)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!113, !153, !170, !3677, !274}
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !137, file: !130, line: 126, baseType: !3679, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!170, !153}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !137, file: !130, line: 127, baseType: !3679, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !137, file: !130, line: 128, baseType: !3684, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!133, !153}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !137, file: !130, line: 130, baseType: !3688, size: 64, offset: 640)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!133, !153, !133}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !137, file: !130, line: 133, baseType: !3692, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!133, !153, !170}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !137, file: !130, line: 135, baseType: !3696, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!113, !153, !170, !170, !7, !7, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !130, line: 43, size: 640, elements: !3701)
!3701 = !{!3702, !3703, !3704}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3700, file: !130, line: 44, baseType: !133, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3700, file: !130, line: 45, baseType: !7, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3700, file: !130, line: 46, baseType: !3705, size: 512, offset: 128)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 512, elements: !1240)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !137, file: !130, line: 140, baseType: !3688, size: 64, offset: 832)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !137, file: !130, line: 143, baseType: !3684, size: 64, offset: 896)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !137, file: !130, line: 145, baseType: !140, size: 64, offset: 960)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !137, file: !130, line: 146, baseType: !3710, size: 64, offset: 1024)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!113, !153, !3713}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !130, line: 29, size: 128, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3714, file: !130, line: 30, baseType: !7, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3714, file: !130, line: 31, baseType: !7, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3714, file: !130, line: 32, baseType: !153, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !137, file: !130, line: 148, baseType: !3720, size: 64, offset: 1088)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!113, !153, !3209}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !129, file: !130, line: 20, baseType: !3209, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !121, file: !122, line: 355, baseType: !120, size: 64, offset: 320)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !121, file: !122, line: 356, baseType: !174, size: 128, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !121, file: !122, line: 357, baseType: !174, size: 128, offset: 512)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !121, file: !122, line: 358, baseType: !174, size: 128, offset: 640)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !121, file: !122, line: 359, baseType: !174, size: 128, offset: 768)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !121, file: !122, line: 360, baseType: !3730, size: 32, offset: 896)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !122, line: 179, size: 32, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3730, file: !122, line: 180, baseType: !367, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3730, file: !122, line: 181, baseType: !367, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3730, file: !122, line: 182, baseType: !367, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3730, file: !122, line: 183, baseType: !367, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3730, file: !122, line: 184, baseType: !367, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3730, file: !122, line: 185, baseType: !367, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !122, line: 361, baseType: !3739, size: 32, offset: 928)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !122, line: 190, size: 32, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3739, file: !122, line: 191, baseType: !367, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3739, file: !122, line: 192, baseType: !367, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3739, file: !122, line: 193, baseType: !367, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3739, file: !122, line: 194, baseType: !367, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3739, file: !122, line: 195, baseType: !367, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3739, file: !122, line: 196, baseType: !367, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3739, file: !122, line: 197, baseType: !367, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3739, file: !122, line: 198, baseType: !367, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3739, file: !122, line: 199, baseType: !367, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3739, file: !122, line: 200, baseType: !367, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3739, file: !122, line: 201, baseType: !367, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3739, file: !122, line: 202, baseType: !367, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3739, file: !122, line: 203, baseType: !367, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3739, file: !122, line: 204, baseType: !367, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !121, file: !122, line: 362, baseType: !3756, size: 960, offset: 960)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !122, line: 234, size: 960, elements: !3757)
!3757 = !{!3758, !3760, !3767, !3769, !3770, !3771, !3776, !3779}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3756, file: !122, line: 235, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !122, line: 217, baseType: !1944)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3756, file: !122, line: 236, baseType: !3761, size: 32, offset: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !122, line: 227, size: 32, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3766}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3761, file: !122, line: 228, baseType: !367, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3761, file: !122, line: 229, baseType: !367, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3761, file: !122, line: 230, baseType: !367, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3761, file: !122, line: 231, baseType: !367, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3756, file: !122, line: 237, baseType: !3768, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !122, line: 218, baseType: !373)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3756, file: !122, line: 238, baseType: !228, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3756, file: !122, line: 239, baseType: !174, size: 128, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3756, file: !122, line: 240, baseType: !3772, size: 320, offset: 384)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !122, line: 219, baseType: !3773)
!3773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 320, elements: !3774)
!3774 = !{!3775}
!3775 = !DISubrange(count: 40)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3756, file: !122, line: 241, baseType: !3777, size: 160, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !122, line: 220, baseType: !3778)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 160, elements: !2111)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3756, file: !122, line: 242, baseType: !3780, size: 64, offset: 896)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !127, line: 899, size: 192, elements: !3782)
!3782 = !{!3783, !3785, !3790, !3796, !3803, !3809, !3815, !3823}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3781, file: !127, line: 900, baseType: !3784, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !127, line: 635, baseType: !367)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3781, file: !127, line: 904, baseType: !3786, size: 128)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3781, file: !127, line: 901, size: 128, elements: !3787)
!3787 = !{!3788, !3789}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3786, file: !127, line: 902, baseType: !3784, size: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3786, file: !127, line: 903, baseType: !373, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3781, file: !127, line: 910, baseType: !3791, size: 128)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3781, file: !127, line: 906, size: 128, elements: !3792)
!3792 = !{!3793, !3794, !3795}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3791, file: !127, line: 907, baseType: !3784, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3791, file: !127, line: 908, baseType: !367, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3791, file: !127, line: 909, baseType: !228, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3781, file: !127, line: 916, baseType: !3797, size: 128)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3781, file: !127, line: 912, size: 128, elements: !3798)
!3798 = !{!3799, !3800, !3801}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3797, file: !127, line: 913, baseType: !3784, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3797, file: !127, line: 914, baseType: !367, size: 32, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3797, file: !127, line: 915, baseType: !3802, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3781, file: !127, line: 922, baseType: !3804, size: 128)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3781, file: !127, line: 918, size: 128, elements: !3805)
!3805 = !{!3806, !3807, !3808}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3804, file: !127, line: 919, baseType: !3784, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3804, file: !127, line: 920, baseType: !367, size: 32, offset: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3804, file: !127, line: 921, baseType: !3780, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3781, file: !127, line: 928, baseType: !3810, size: 128)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3781, file: !127, line: 924, size: 128, elements: !3811)
!3811 = !{!3812, !3813, !3814}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3810, file: !127, line: 925, baseType: !3784, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3810, file: !127, line: 926, baseType: !3784, size: 32, offset: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3810, file: !127, line: 927, baseType: !126, size: 64, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3781, file: !127, line: 935, baseType: !3816, size: 192)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3781, file: !127, line: 930, size: 192, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3822}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3816, file: !127, line: 931, baseType: !3784, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3816, file: !127, line: 932, baseType: !367, size: 32, offset: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3816, file: !127, line: 933, baseType: !3821, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !127, line: 128, baseType: !373)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3816, file: !127, line: 934, baseType: !367, size: 32, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3781, file: !127, line: 941, baseType: !3824, size: 96)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3781, file: !127, line: 937, size: 96, elements: !3825)
!3825 = !{!3826, !3827, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3824, file: !127, line: 938, baseType: !3784, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3824, file: !127, line: 939, baseType: !367, size: 32, offset: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3824, file: !127, line: 940, baseType: !367, size: 32, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !121, file: !122, line: 363, baseType: !3830, size: 1344, offset: 1920)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !122, line: 275, size: 1344, elements: !3831)
!3831 = !{!3832, !3833, !3843}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3830, file: !122, line: 276, baseType: !113, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3830, file: !122, line: 277, baseType: !3834, size: 32, offset: 32)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !122, line: 254, size: 32, elements: !3835)
!3835 = !{!3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !3834, file: !122, line: 255, baseType: !367, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !3834, file: !122, line: 256, baseType: !367, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !3834, file: !122, line: 257, baseType: !367, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !3834, file: !122, line: 258, baseType: !367, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !3834, file: !122, line: 259, baseType: !367, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !3834, file: !122, line: 260, baseType: !367, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3834, file: !122, line: 261, baseType: !367, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3830, file: !122, line: 278, baseType: !3844, size: 1280, offset: 64)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3845, size: 1280, elements: !3856)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !122, line: 264, size: 256, elements: !3846)
!3846 = !{!3847, !3853, !3854, !3855}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3845, file: !122, line: 269, baseType: !3848, size: 8)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3845, file: !122, line: 265, size: 8, elements: !3849)
!3849 = !{!3850, !3851, !3852}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3848, file: !122, line: 266, baseType: !1262, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !3848, file: !122, line: 267, baseType: !1262, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3848, file: !122, line: 268, baseType: !1262, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3845, file: !122, line: 270, baseType: !113, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3845, file: !122, line: 271, baseType: !113, size: 32, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3845, file: !122, line: 272, baseType: !174, size: 128, offset: 128)
!3856 = !{!3857}
!3857 = !DISubrange(count: 5)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !121, file: !122, line: 364, baseType: !3859, size: 640, offset: 3264)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !122, line: 315, size: 640, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3870, !3879, !3880, !3881}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !3859, file: !122, line: 316, baseType: !126, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !3859, file: !122, line: 317, baseType: !373, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !3859, file: !122, line: 318, baseType: !373, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3859, file: !122, line: 319, baseType: !174, size: 128, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3859, file: !122, line: 320, baseType: !3866, size: 8, offset: 320)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !122, line: 305, size: 8, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3866, file: !122, line: 306, baseType: !1262, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !3866, file: !122, line: 307, baseType: !1262, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3859, file: !122, line: 321, baseType: !3871, size: 128, offset: 384)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !122, line: 310, size: 128, elements: !3872)
!3872 = !{!3873, !3878}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3871, file: !122, line: 311, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3871, file: !122, line: 312, baseType: !3209, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3859, file: !122, line: 322, baseType: !3388, size: 64, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !3859, file: !122, line: 323, baseType: !113, size: 32, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !3859, file: !122, line: 324, baseType: !113, size: 32, offset: 608)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !121, file: !122, line: 365, baseType: !3883, size: 192, offset: 3904)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !122, line: 297, size: 192, elements: !3884)
!3884 = !{!3885, !3886, !3890, !3891}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3883, file: !122, line: 298, baseType: !113, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3883, file: !122, line: 299, baseType: !3887, size: 8, offset: 32)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !122, line: 283, size: 8, elements: !3888)
!3888 = !{!3889}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3887, file: !122, line: 284, baseType: !1262, size: 8, flags: DIFlagBitField, extraData: i64 0)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !3883, file: !122, line: 300, baseType: !113, size: 32, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3883, file: !122, line: 301, baseType: !3892, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !122, line: 287, size: 64, elements: !3894)
!3894 = !{!3895, !3900, !3901, !3902}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3893, file: !122, line: 291, baseType: !3896, size: 8)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3893, file: !122, line: 288, size: 8, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3896, file: !122, line: 289, baseType: !1262, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3896, file: !122, line: 290, baseType: !1262, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3893, file: !122, line: 292, baseType: !1262, size: 8, offset: 8)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !3893, file: !122, line: 293, baseType: !1262, size: 8, offset: 16)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3893, file: !122, line: 294, baseType: !113, size: 32, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !121, file: !122, line: 366, baseType: !3904, size: 64, offset: 4096)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !122, line: 209, size: 64, elements: !3905)
!3905 = !{!3906}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3904, file: !122, line: 210, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3909, line: 12, flags: DIFlagFwdDecl)
!3909 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/lizy2001/genbc/linux")
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !121, file: !122, line: 367, baseType: !3911, size: 384, offset: 4160)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !122, line: 341, size: 384, elements: !3912)
!3912 = !{!3913, !3916, !3917, !3918}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3911, file: !122, line: 342, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3911, file: !122, line: 343, baseType: !174, size: 128, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !3911, file: !122, line: 344, baseType: !3914, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !3911, file: !122, line: 345, baseType: !174, size: 128, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !121, file: !122, line: 368, baseType: !3920, size: 64, offset: 4544)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !122, line: 122, size: 1216, elements: !3922)
!3922 = !{!3923, !3924, !3925, !3930, !3934, !3938, !3939, !3940}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3921, file: !122, line: 123, baseType: !3303, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !3921, file: !122, line: 124, baseType: !174, size: 128, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3921, file: !122, line: 125, baseType: !3926, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!151, !170, !3929}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3921, file: !122, line: 126, baseType: !3931, size: 64, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!113, !120, !3303}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3921, file: !122, line: 127, baseType: !3935, size: 64, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !120}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3921, file: !122, line: 128, baseType: !3231, size: 64, offset: 384)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !3921, file: !122, line: 129, baseType: !3231, size: 64, offset: 448)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3921, file: !122, line: 130, baseType: !3941, size: 704, offset: 512)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !122, line: 108, size: 704, elements: !3942)
!3942 = !{!3943, !3944, !3948, !3949, !3950}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3941, file: !122, line: 109, baseType: !166, size: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !3941, file: !122, line: 110, baseType: !3945, size: 64, offset: 512)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!113, !120}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !3941, file: !122, line: 111, baseType: !3935, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3941, file: !122, line: 112, baseType: !151, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !3941, file: !122, line: 113, baseType: !151, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !121, file: !122, line: 369, baseType: !3952, size: 64, offset: 4608)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !122, line: 138, size: 256, elements: !3954)
!3954 = !{!3955, !3956, !3960, !3964}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3953, file: !122, line: 139, baseType: !120, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !3953, file: !122, line: 140, baseType: !3957, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!113, !120, !367}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3953, file: !122, line: 141, baseType: !3961, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !120, !367}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3953, file: !122, line: 142, baseType: !3935, size: 64, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !121, file: !122, line: 370, baseType: !3966, size: 64, offset: 4672)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !122, line: 162, size: 2816, elements: !3968)
!3968 = !{!3969, !3973, !3974, !3975, !3976, !3985, !3986}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3967, file: !122, line: 163, baseType: !3970, size: 640)
!3970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 640, elements: !3971)
!3971 = !{!3972}
!3972 = !DISubrange(count: 80)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3967, file: !122, line: 164, baseType: !3970, size: 640, offset: 640)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3967, file: !122, line: 165, baseType: !3303, size: 64, offset: 1280)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3967, file: !122, line: 166, baseType: !7, size: 32, offset: 1344)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3967, file: !122, line: 167, baseType: !3977, size: 192, offset: 1408)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !122, line: 154, size: 192, elements: !3978)
!3978 = !{!3979, !3981, !3983}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3977, file: !122, line: 155, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !122, line: 150, baseType: !3945)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3977, file: !122, line: 156, baseType: !3982, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !122, line: 151, baseType: !3945)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !3977, file: !122, line: 157, baseType: !3984, size: 64, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !122, line: 152, baseType: !3961)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !3967, file: !122, line: 168, baseType: !3281, size: 1152, offset: 1600)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3967, file: !122, line: 169, baseType: !583, size: 64, offset: 2752)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !121, file: !122, line: 371, baseType: !3988, size: 64, offset: 4736)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3990)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !122, line: 348, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !121, file: !122, line: 372, baseType: !117, size: 64, offset: 4800)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !121, file: !122, line: 373, baseType: !163, size: 5568, offset: 4864)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !121, file: !122, line: 374, baseType: !7, size: 32, offset: 10432)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !121, file: !122, line: 375, baseType: !7, size: 32, offset: 10464)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !121, file: !122, line: 376, baseType: !174, size: 128, offset: 10496)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !121, file: !122, line: 377, baseType: !676, size: 192, offset: 10624)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !121, file: !122, line: 378, baseType: !3935, size: 64, offset: 10816)
!3998 = !{!0, !3999, !4004, !4007, !4012, !4064, !4069, !4074, !4076, !4081, !4083, !4088, !4090, !4095, !4097, !4102, !4104, !4108, !4110, !4133, !4135, !4138, !4143, !4145, !4147}
!3999 = !DIGlobalVariableExpression(var: !4000, expr: !DIExpression())
!4000 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description215", scope: !2, file: !3, line: 61, type: !4001, isLocal: true, isDefinition: true, align: 8)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 304, elements: !4002)
!4002 = !{!4003}
!4003 = !DISubrange(count: 38)
!4004 = !DIGlobalVariableExpression(var: !4005, expr: !DIExpression())
!4005 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file216", scope: !2, file: !3, line: 62, type: !4006, isLocal: true, isDefinition: true, align: 8)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !2140)
!4007 = !DIGlobalVariableExpression(var: !4008, expr: !DIExpression())
!4008 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license217", scope: !2, file: !3, line: 62, type: !4009, isLocal: true, isDefinition: true, align: 8)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 152, elements: !4010)
!4010 = !{!4011}
!4011 = !DISubrange(count: 19)
!4012 = !DIGlobalVariableExpression(var: !4013, expr: !DIExpression())
!4013 = distinct !DIGlobalVariable(name: "__param_lid_report_interval", scope: !2, file: !3, line: 161, type: !4014, isLocal: true, isDefinition: true, align: 64)
!4014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4015)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4016, line: 69, size: 320, elements: !4017)
!4016 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4017 = !{!4018, !4019, !4020, !4036, !4038, !4042, !4043}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4015, file: !4016, line: 70, baseType: !170, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4015, file: !4016, line: 71, baseType: !583, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4015, file: !4016, line: 72, baseType: !4021, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4016, line: 47, size: 256, elements: !4024)
!4024 = !{!4025, !4026, !4031, !4035}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4023, file: !4016, line: 49, baseType: !7, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4023, file: !4016, line: 51, baseType: !4027, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!113, !170, !4030}
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4023, file: !4016, line: 53, baseType: !4032, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!113, !228, !4030}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4023, file: !4016, line: 55, baseType: !420, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4015, file: !4016, line: 73, baseType: !4037, size: 16, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4015, file: !4016, line: 74, baseType: !4039, size: 8, offset: 208)
!4039 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !368, line: 16, baseType: !4040)
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !370, line: 20, baseType: !4041)
!4041 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4015, file: !4016, line: 75, baseType: !1262, size: 8, offset: 216)
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4015, file: !4016, line: 76, baseType: !4044, size: 64, offset: 256)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4015, file: !4016, line: 76, size: 64, elements: !4045)
!4045 = !{!4046, !4047, !4054}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4044, file: !4016, line: 77, baseType: !117, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4044, file: !4016, line: 78, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4016, line: 86, size: 128, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4050, file: !4016, line: 87, baseType: !7, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4050, file: !4016, line: 88, baseType: !228, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4044, file: !4016, line: 79, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4057)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4016, line: 92, size: 256, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062, !4063}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4057, file: !4016, line: 94, baseType: !7, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4057, file: !4016, line: 95, baseType: !7, size: 32, offset: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4057, file: !4016, line: 96, baseType: !2532, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4057, file: !4016, line: 97, baseType: !4021, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4057, file: !4016, line: 98, baseType: !117, size: 64, offset: 192)
!4064 = !DIGlobalVariableExpression(var: !4065, expr: !DIExpression())
!4065 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_lid_report_intervaltype218", scope: !2, file: !3, line: 161, type: !4066, isLocal: true, isDefinition: true, align: 8)
!4066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 336, elements: !4067)
!4067 = !{!4068}
!4068 = !DISubrange(count: 42)
!4069 = !DIGlobalVariableExpression(var: !4070, expr: !DIExpression())
!4070 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_lid_report_interval219", scope: !2, file: !3, line: 162, type: !4071, isLocal: true, isDefinition: true, align: 8)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 552, elements: !4072)
!4072 = !{!4073}
!4073 = !DISubrange(count: 69)
!4074 = !DIGlobalVariableExpression(var: !4075, expr: !DIExpression())
!4075 = distinct !DIGlobalVariable(name: "__param_lid_init_state", scope: !2, file: !3, line: 621, type: !4014, isLocal: true, isDefinition: true, align: 64)
!4076 = !DIGlobalVariableExpression(var: !4077, expr: !DIExpression())
!4077 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_lid_init_state222", scope: !2, file: !3, line: 624, type: !4078, isLocal: true, isDefinition: true, align: 8)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 544, elements: !4079)
!4079 = !{!4080}
!4080 = !DISubrange(count: 68)
!4081 = !DIGlobalVariableExpression(var: !4082, expr: !DIExpression())
!4082 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_button_driver_init223", scope: !2, file: !3, line: 657, type: !117, isLocal: true, isDefinition: true)
!4083 = !DIGlobalVariableExpression(var: !4084, expr: !DIExpression())
!4084 = distinct !DIGlobalVariable(name: "__exitcall_acpi_button_driver_exit", scope: !2, file: !3, line: 657, type: !4085, isLocal: true, isDefinition: true)
!4085 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4086, line: 117, baseType: !4087)
!4086 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!4088 = !DIGlobalVariableExpression(var: !4089, expr: !DIExpression())
!4089 = distinct !DIGlobalVariable(name: "lid_device", scope: !2, file: !3, line: 157, type: !120, isLocal: true, isDefinition: true)
!4090 = !DIGlobalVariableExpression(var: !4091, expr: !DIExpression())
!4091 = distinct !DIGlobalVariable(name: "__param_str_lid_report_interval", scope: !2, file: !3, line: 161, type: !4092, isLocal: true, isDefinition: true)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 216, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 27)
!4095 = !DIGlobalVariableExpression(var: !4096, expr: !DIExpression())
!4096 = distinct !DIGlobalVariable(name: "lid_report_interval", scope: !2, file: !3, line: 160, type: !119, isLocal: true, isDefinition: true)
!4097 = !DIGlobalVariableExpression(var: !4098, expr: !DIExpression())
!4098 = distinct !DIGlobalVariable(name: "__param_str_lid_init_state", scope: !2, file: !3, line: 621, type: !4099, isLocal: true, isDefinition: true)
!4099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 176, elements: !4100)
!4100 = !{!4101}
!4101 = !DISubrange(count: 22)
!4102 = !DIGlobalVariableExpression(var: !4103, expr: !DIExpression())
!4103 = distinct !DIGlobalVariable(name: "__param_ops_lid_init_state", scope: !2, file: !3, line: 621, type: !4022, isLocal: true, isDefinition: true)
!4104 = !DIGlobalVariableExpression(var: !4105, expr: !DIExpression())
!4105 = distinct !DIGlobalVariable(name: "lid_init_state_str", scope: !2, file: !3, line: 50, type: !4106, isLocal: true, isDefinition: true)
!4106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4107, size: 256, elements: !1071)
!4107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!4108 = !DIGlobalVariableExpression(var: !4109, expr: !DIExpression())
!4109 = distinct !DIGlobalVariable(name: "lid_init_state", scope: !2, file: !3, line: 158, type: !114, isLocal: true, isDefinition: true)
!4110 = !DIGlobalVariableExpression(var: !4111, expr: !DIExpression())
!4111 = distinct !DIGlobalVariable(name: "dmi_lid_quirks", scope: !2, file: !3, line: 75, type: !4112, isLocal: true, isDefinition: true)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4113, size: 13760, elements: !3856)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4114)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !3293, line: 566, size: 2752, elements: !4115)
!4115 = !{!4116, !4121, !4122, !4132}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4114, file: !3293, line: 567, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!113, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !4114, file: !3293, line: 568, baseType: !170, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !4114, file: !3293, line: 569, baseType: !4123, size: 2560, offset: 128)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4124, size: 2560, elements: !1071)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !3293, line: 560, size: 640, elements: !4125)
!4125 = !{!4126, !4127, !4128}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4124, file: !3293, line: 561, baseType: !379, size: 7, flags: DIFlagBitField, extraData: i64 0)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !4124, file: !3293, line: 562, baseType: !379, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !4124, file: !3293, line: 563, baseType: !4129, size: 632, offset: 8)
!4129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 632, elements: !4130)
!4130 = !{!4131}
!4131 = !DISubrange(count: 79)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4114, file: !3293, line: 570, baseType: !117, size: 64, offset: 2688)
!4133 = !DIGlobalVariableExpression(var: !4134, expr: !DIExpression())
!4134 = distinct !DIGlobalVariable(name: "acpi_button_driver", scope: !2, file: !3, line: 134, type: !3967, isLocal: true, isDefinition: true)
!4135 = !DIGlobalVariableExpression(var: !4136, expr: !DIExpression())
!4136 = distinct !DIGlobalVariable(name: "button_device_ids", scope: !2, file: !3, line: 64, type: !4137, isLocal: true, isDefinition: true)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3304, size: 1536, elements: !1535)
!4138 = !DIGlobalVariableExpression(var: !4139, expr: !DIExpression())
!4139 = distinct !DIGlobalVariable(name: "__print_once", scope: !4140, file: !3, line: 207, type: !151, isLocal: true, isDefinition: true)
!4140 = distinct !DISubprogram(name: "acpi_lid_notify_state", scope: !3, file: !3, line: 183, type: !4141, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!113, !120, !113}
!4143 = !DIGlobalVariableExpression(var: !4144, expr: !DIExpression())
!4144 = distinct !DIGlobalVariable(name: "acpi_button_dir", scope: !2, file: !3, line: 168, type: !3907, isLocal: true, isDefinition: true)
!4145 = !DIGlobalVariableExpression(var: !4146, expr: !DIExpression())
!4146 = distinct !DIGlobalVariable(name: "acpi_lid_dir", scope: !2, file: !3, line: 169, type: !3907, isLocal: true, isDefinition: true)
!4147 = !DIGlobalVariableExpression(var: !4148, expr: !DIExpression())
!4148 = distinct !DIGlobalVariable(name: "acpi_button_pm", scope: !2, file: !3, line: 132, type: !3236, isLocal: true, isDefinition: true)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 248, elements: !4150)
!4150 = !{!4151}
!4151 = !DISubrange(count: 31)
!4152 = !{i32 7, !"Dwarf Version", i32 4}
!4153 = !{i32 2, !"Debug Info Version", i32 3}
!4154 = !{i32 1, !"wchar_size", i32 2}
!4155 = !{i32 1, !"Code Model", i32 2}
!4156 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4157 = distinct !DISubprogram(name: "acpi_lid_open", scope: !3, file: !3, line: 359, type: !4158, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!113}
!4160 = !DILocation(line: 361, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 361, column: 6)
!4162 = !DILocation(line: 361, column: 6, scope: !4157)
!4163 = !DILocation(line: 362, column: 3, scope: !4161)
!4164 = !DILocation(line: 364, column: 33, scope: !4157)
!4165 = !DILocation(line: 364, column: 9, scope: !4157)
!4166 = !DILocation(line: 364, column: 2, scope: !4157)
!4167 = !DILocation(line: 365, column: 1, scope: !4157)
!4168 = distinct !DISubprogram(name: "acpi_lid_evaluate_state", scope: !3, file: !3, line: 171, type: !3946, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4169 = !DILocalVariable(name: "device", arg: 1, scope: !4168, file: !3, line: 171, type: !120)
!4170 = !DILocation(line: 171, column: 56, scope: !4168)
!4171 = !DILocalVariable(name: "lid_state", scope: !4168, file: !3, line: 173, type: !375)
!4172 = !DILocation(line: 173, column: 21, scope: !4168)
!4173 = !DILocalVariable(name: "status", scope: !4168, file: !3, line: 174, type: !4174)
!4174 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !127, line: 421, baseType: !367)
!4175 = !DILocation(line: 174, column: 14, scope: !4168)
!4176 = !DILocation(line: 176, column: 33, scope: !4168)
!4177 = !DILocation(line: 176, column: 41, scope: !4168)
!4178 = !DILocation(line: 176, column: 11, scope: !4168)
!4179 = !DILocation(line: 176, column: 9, scope: !4168)
!4180 = !DILocation(line: 177, column: 6, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 177, column: 6)
!4182 = !DILocation(line: 177, column: 6, scope: !4168)
!4183 = !DILocation(line: 178, column: 3, scope: !4181)
!4184 = !DILocation(line: 180, column: 9, scope: !4168)
!4185 = !DILocation(line: 180, column: 2, scope: !4168)
!4186 = !DILocation(line: 181, column: 1, scope: !4168)
!4187 = distinct !DISubprogram(name: "acpi_button_driver_init", scope: !3, file: !3, line: 657, type: !4158, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4188 = !DILocation(line: 657, column: 1, scope: !4187)
!4189 = distinct !DISubprogram(name: "acpi_button_driver_exit", scope: !3, file: !3, line: 657, type: !1790, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4190 = !DILocation(line: 657, column: 1, scope: !4189)
!4191 = distinct !DISubprogram(name: "acpi_button_unregister_driver", scope: !3, file: !3, line: 651, type: !4192, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !3966}
!4194 = !DILocalVariable(name: "driver", arg: 1, scope: !4191, file: !3, line: 651, type: !3966)
!4195 = !DILocation(line: 651, column: 63, scope: !4191)
!4196 = !DILocation(line: 653, column: 7, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 653, column: 6)
!4198 = !DILocation(line: 653, column: 6, scope: !4191)
!4199 = !DILocation(line: 654, column: 30, scope: !4197)
!4200 = !DILocation(line: 654, column: 3, scope: !4197)
!4201 = !DILocation(line: 655, column: 1, scope: !4191)
!4202 = distinct !DISubprogram(name: "param_set_lid_init_state", scope: !3, file: !3, line: 592, type: !4028, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4203 = !DILocalVariable(name: "val", arg: 1, scope: !4202, file: !3, line: 592, type: !170)
!4204 = !DILocation(line: 592, column: 49, scope: !4202)
!4205 = !DILocalVariable(name: "kp", arg: 2, scope: !4202, file: !3, line: 593, type: !4030)
!4206 = !DILocation(line: 593, column: 36, scope: !4202)
!4207 = !DILocalVariable(name: "i", scope: !4202, file: !3, line: 595, type: !113)
!4208 = !DILocation(line: 595, column: 6, scope: !4202)
!4209 = !DILocation(line: 597, column: 6, scope: !4202)
!4210 = !DILocation(line: 597, column: 4, scope: !4202)
!4211 = !DILocation(line: 598, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 598, column: 6)
!4213 = !DILocation(line: 598, column: 8, scope: !4212)
!4214 = !DILocation(line: 598, column: 6, scope: !4202)
!4215 = !DILocation(line: 599, column: 10, scope: !4212)
!4216 = !DILocation(line: 599, column: 3, scope: !4212)
!4217 = !DILocation(line: 601, column: 19, scope: !4202)
!4218 = !DILocation(line: 601, column: 17, scope: !4202)
!4219 = !DILocation(line: 602, column: 2, scope: !4202)
!4220 = !DILocation(line: 603, column: 2, scope: !4202)
!4221 = !DILocation(line: 604, column: 1, scope: !4202)
!4222 = distinct !DISubprogram(name: "param_get_lid_init_state", scope: !3, file: !3, line: 606, type: !4033, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4223 = !DILocalVariable(name: "buf", arg: 1, scope: !4222, file: !3, line: 606, type: !228)
!4224 = !DILocation(line: 606, column: 43, scope: !4222)
!4225 = !DILocalVariable(name: "kp", arg: 2, scope: !4222, file: !3, line: 606, type: !4030)
!4226 = !DILocation(line: 606, column: 75, scope: !4222)
!4227 = !DILocalVariable(name: "i", scope: !4222, file: !3, line: 608, type: !113)
!4228 = !DILocation(line: 608, column: 6, scope: !4222)
!4229 = !DILocalVariable(name: "c", scope: !4222, file: !3, line: 608, type: !113)
!4230 = !DILocation(line: 608, column: 9, scope: !4222)
!4231 = !DILocation(line: 610, column: 9, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 610, column: 2)
!4233 = !DILocation(line: 610, column: 7, scope: !4232)
!4234 = !DILocation(line: 610, column: 14, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 610, column: 2)
!4236 = !DILocation(line: 610, column: 16, scope: !4235)
!4237 = !DILocation(line: 610, column: 2, scope: !4232)
!4238 = !DILocation(line: 611, column: 7, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 611, column: 7)
!4240 = !DILocation(line: 611, column: 12, scope: !4239)
!4241 = !DILocation(line: 611, column: 9, scope: !4239)
!4242 = !DILocation(line: 611, column: 7, scope: !4235)
!4243 = !DILocation(line: 612, column: 17, scope: !4239)
!4244 = !DILocation(line: 612, column: 23, scope: !4239)
!4245 = !DILocation(line: 612, column: 21, scope: !4239)
!4246 = !DILocation(line: 612, column: 54, scope: !4239)
!4247 = !DILocation(line: 612, column: 35, scope: !4239)
!4248 = !DILocation(line: 612, column: 9, scope: !4239)
!4249 = !DILocation(line: 612, column: 6, scope: !4239)
!4250 = !DILocation(line: 612, column: 4, scope: !4239)
!4251 = !DILocation(line: 614, column: 17, scope: !4239)
!4252 = !DILocation(line: 614, column: 23, scope: !4239)
!4253 = !DILocation(line: 614, column: 21, scope: !4239)
!4254 = !DILocation(line: 614, column: 52, scope: !4239)
!4255 = !DILocation(line: 614, column: 33, scope: !4239)
!4256 = !DILocation(line: 614, column: 9, scope: !4239)
!4257 = !DILocation(line: 614, column: 6, scope: !4239)
!4258 = !DILocation(line: 610, column: 51, scope: !4235)
!4259 = !DILocation(line: 610, column: 2, scope: !4235)
!4260 = distinct !{!4260, !4237, !4261}
!4261 = !DILocation(line: 614, column: 54, scope: !4232)
!4262 = !DILocation(line: 616, column: 2, scope: !4222)
!4263 = !DILocation(line: 616, column: 6, scope: !4222)
!4264 = !DILocation(line: 616, column: 8, scope: !4222)
!4265 = !DILocation(line: 616, column: 13, scope: !4222)
!4266 = !DILocation(line: 618, column: 9, scope: !4222)
!4267 = !DILocation(line: 618, column: 2, scope: !4222)
!4268 = distinct !DISubprogram(name: "acpi_button_register_driver", scope: !3, file: !3, line: 626, type: !4269, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!113, !3966}
!4271 = !DILocalVariable(name: "driver", arg: 1, scope: !4268, file: !3, line: 626, type: !3966)
!4272 = !DILocation(line: 626, column: 60, scope: !4268)
!4273 = !DILocalVariable(name: "dmi_id", scope: !4268, file: !3, line: 628, type: !4120)
!4274 = !DILocation(line: 628, column: 30, scope: !4268)
!4275 = !DILocation(line: 630, column: 6, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 630, column: 6)
!4277 = !DILocation(line: 630, column: 21, scope: !4276)
!4278 = !DILocation(line: 630, column: 6, scope: !4268)
!4279 = !DILocation(line: 631, column: 12, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 630, column: 28)
!4281 = !DILocation(line: 631, column: 10, scope: !4280)
!4282 = !DILocation(line: 632, column: 7, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 632, column: 7)
!4284 = !DILocation(line: 632, column: 7, scope: !4280)
!4285 = !DILocation(line: 633, column: 27, scope: !4283)
!4286 = !DILocation(line: 633, column: 35, scope: !4283)
!4287 = !DILocation(line: 633, column: 21, scope: !4283)
!4288 = !DILocation(line: 633, column: 19, scope: !4283)
!4289 = !DILocation(line: 633, column: 4, scope: !4283)
!4290 = !DILocation(line: 635, column: 19, scope: !4283)
!4291 = !DILocation(line: 636, column: 2, scope: !4280)
!4292 = !DILocation(line: 645, column: 6, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 645, column: 6)
!4294 = !DILocation(line: 645, column: 6, scope: !4268)
!4295 = !DILocation(line: 646, column: 3, scope: !4293)
!4296 = !DILocation(line: 648, column: 34, scope: !4268)
!4297 = !DILocation(line: 648, column: 9, scope: !4268)
!4298 = !DILocation(line: 648, column: 2, scope: !4268)
!4299 = !DILocation(line: 649, column: 1, scope: !4268)
!4300 = distinct !DISubprogram(name: "acpi_button_add", scope: !3, file: !3, line: 480, type: !3946, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4301 = !DILocalVariable(name: "device", arg: 1, scope: !4300, file: !3, line: 480, type: !120)
!4302 = !DILocation(line: 480, column: 48, scope: !4300)
!4303 = !DILocalVariable(name: "button", scope: !4300, file: !3, line: 482, type: !4304)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_button", file: !3, line: 146, size: 640, elements: !4306)
!4306 = !{!4307, !4308, !4584, !4585, !4586, !4587, !4588, !4589}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4305, file: !3, line: 147, baseType: !7, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !4305, file: !3, line: 148, baseType: !4309, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4311, line: 131, size: 10432, elements: !4312)
!4311 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4312 = !{!4313, !4314, !4315, !4316, !4324, !4325, !4326, !4328, !4329, !4330, !4331, !4332, !4333, !4335, !4336, !4337, !4338, !4339, !4340, !4354, !4359, !4454, !4457, !4458, !4459, !4461, !4464, !4474, !4475, !4476, !4477, !4478, !4482, !4486, !4490, !4494, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4581, !4582}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4310, file: !4311, line: 132, baseType: !170, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4310, file: !4311, line: 133, baseType: !170, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4310, file: !4311, line: 134, baseType: !170, size: 64, offset: 128)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4310, file: !4311, line: 135, baseType: !4317, size: 64, offset: 192)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4318, line: 59, size: 64, elements: !4319)
!4318 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4319 = !{!4320, !4321, !4322, !4323}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4317, file: !4318, line: 60, baseType: !855, size: 16)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4317, file: !4318, line: 61, baseType: !855, size: 16, offset: 16)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4317, file: !4318, line: 62, baseType: !855, size: 16, offset: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4317, file: !4318, line: 63, baseType: !855, size: 16, offset: 48)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4310, file: !4311, line: 137, baseType: !1280, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4310, file: !4311, line: 139, baseType: !1280, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4310, file: !4311, line: 140, baseType: !4327, size: 768, offset: 384)
!4327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 768, elements: !2146)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4310, file: !4311, line: 141, baseType: !1280, size: 64, offset: 1152)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4310, file: !4311, line: 142, baseType: !1280, size: 64, offset: 1216)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4310, file: !4311, line: 143, baseType: !1280, size: 64, offset: 1280)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4310, file: !4311, line: 144, baseType: !1280, size: 64, offset: 1344)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4310, file: !4311, line: 145, baseType: !1280, size: 64, offset: 1408)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4310, file: !4311, line: 146, baseType: !4334, size: 128, offset: 1472)
!4334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 128, elements: !1479)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4310, file: !4311, line: 147, baseType: !1280, size: 64, offset: 1600)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4310, file: !4311, line: 149, baseType: !7, size: 32, offset: 1664)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4310, file: !4311, line: 151, baseType: !7, size: 32, offset: 1696)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4310, file: !4311, line: 152, baseType: !7, size: 32, offset: 1728)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4310, file: !4311, line: 153, baseType: !117, size: 64, offset: 1792)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4310, file: !4311, line: 155, baseType: !4341, size: 64, offset: 1856)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!113, !4309, !4344, !2532}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4346)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4318, line: 114, size: 320, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4351, !4352}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4346, file: !4318, line: 116, baseType: !1263, size: 8)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4346, file: !4318, line: 117, baseType: !1263, size: 8, offset: 8)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4346, file: !4318, line: 118, baseType: !855, size: 16, offset: 16)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4346, file: !4318, line: 119, baseType: !369, size: 32, offset: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4346, file: !4318, line: 120, baseType: !4353, size: 256, offset: 64)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 256, elements: !2140)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4310, file: !4311, line: 158, baseType: !4355, size: 64, offset: 1920)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!113, !4309, !4358}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4310, file: !4311, line: 161, baseType: !4360, size: 64, offset: 1984)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4311, line: 534, size: 896, elements: !4362)
!4362 = !{!4363, !4430, !4434, !4438, !4442, !4443, !4447, !4448, !4449, !4450, !4451, !4452}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4361, file: !4311, line: 535, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!113, !4309, !4367, !4367}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4318, line: 450, size: 384, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4373, !4378, !4383}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4368, file: !4318, line: 451, baseType: !855, size: 16)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4368, file: !4318, line: 452, baseType: !1114, size: 16, offset: 16)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4368, file: !4318, line: 453, baseType: !855, size: 16, offset: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4368, file: !4318, line: 454, baseType: !4374, size: 32, offset: 48)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4318, line: 316, size: 32, elements: !4375)
!4375 = !{!4376, !4377}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4374, file: !4318, line: 317, baseType: !855, size: 16)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4374, file: !4318, line: 318, baseType: !855, size: 16, offset: 16)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4368, file: !4318, line: 455, baseType: !4379, size: 32, offset: 80)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4318, line: 306, size: 32, elements: !4380)
!4380 = !{!4381, !4382}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4379, file: !4318, line: 307, baseType: !855, size: 16)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4379, file: !4318, line: 308, baseType: !855, size: 16, offset: 16)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4368, file: !4318, line: 463, baseType: !4384, size: 256, offset: 128)
!4384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4368, file: !4318, line: 457, size: 256, elements: !4385)
!4385 = !{!4386, !4397, !4403, !4415, !4425}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4384, file: !4318, line: 458, baseType: !4387, size: 80)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4318, line: 345, size: 80, elements: !4388)
!4388 = !{!4389, !4390}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4387, file: !4318, line: 346, baseType: !1114, size: 16)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4387, file: !4318, line: 347, baseType: !4391, size: 64, offset: 16)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4318, line: 333, size: 64, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4391, file: !4318, line: 334, baseType: !855, size: 16)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4391, file: !4318, line: 335, baseType: !855, size: 16, offset: 16)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4391, file: !4318, line: 336, baseType: !855, size: 16, offset: 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4391, file: !4318, line: 337, baseType: !855, size: 16, offset: 48)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4384, file: !4318, line: 459, baseType: !4398, size: 96)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4318, line: 356, size: 96, elements: !4399)
!4399 = !{!4400, !4401, !4402}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4398, file: !4318, line: 357, baseType: !1114, size: 16)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4398, file: !4318, line: 358, baseType: !1114, size: 16, offset: 16)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4398, file: !4318, line: 359, baseType: !4391, size: 64, offset: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4384, file: !4318, line: 460, baseType: !4404, size: 256)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4318, line: 401, size: 256, elements: !4405)
!4405 = !{!4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4404, file: !4318, line: 402, baseType: !855, size: 16)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4404, file: !4318, line: 403, baseType: !855, size: 16, offset: 16)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4404, file: !4318, line: 404, baseType: !1114, size: 16, offset: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4404, file: !4318, line: 405, baseType: !1114, size: 16, offset: 48)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4404, file: !4318, line: 406, baseType: !855, size: 16, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4404, file: !4318, line: 408, baseType: !4391, size: 64, offset: 80)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4404, file: !4318, line: 410, baseType: !369, size: 32, offset: 160)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4404, file: !4318, line: 411, baseType: !4414, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4384, file: !4318, line: 461, baseType: !4416, size: 192)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4417, size: 192, elements: !1479)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4318, line: 372, size: 96, elements: !4418)
!4418 = !{!4419, !4420, !4421, !4422, !4423, !4424}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4417, file: !4318, line: 373, baseType: !855, size: 16)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4417, file: !4318, line: 374, baseType: !855, size: 16, offset: 16)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4417, file: !4318, line: 376, baseType: !1114, size: 16, offset: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4417, file: !4318, line: 377, baseType: !1114, size: 16, offset: 48)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4417, file: !4318, line: 379, baseType: !855, size: 16, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4417, file: !4318, line: 380, baseType: !1114, size: 16, offset: 80)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4384, file: !4318, line: 462, baseType: !4426, size: 32)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4318, line: 422, size: 32, elements: !4427)
!4427 = !{!4428, !4429}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4426, file: !4318, line: 423, baseType: !855, size: 16)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4426, file: !4318, line: 424, baseType: !855, size: 16, offset: 16)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4361, file: !4311, line: 537, baseType: !4431, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!113, !4309, !113}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4361, file: !4311, line: 539, baseType: !4435, size: 64, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!113, !4309, !113, !113}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4361, file: !4311, line: 540, baseType: !4439, size: 64, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4309, !854}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4361, file: !4311, line: 541, baseType: !4439, size: 64, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4361, file: !4311, line: 543, baseType: !4444, size: 64, offset: 320)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !4360}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4361, file: !4311, line: 545, baseType: !117, size: 64, offset: 384)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4361, file: !4311, line: 547, baseType: !4334, size: 128, offset: 448)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4361, file: !4311, line: 549, baseType: !676, size: 192, offset: 576)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4361, file: !4311, line: 551, baseType: !113, size: 32, offset: 768)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4361, file: !4311, line: 552, baseType: !4367, size: 64, offset: 832)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4361, file: !4311, line: 553, baseType: !4453, offset: 896)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, elements: !2241)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4310, file: !4311, line: 163, baseType: !4455, size: 64, offset: 2048)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4311, line: 24, flags: DIFlagFwdDecl)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4310, file: !4311, line: 165, baseType: !7, size: 32, offset: 2112)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4310, file: !4311, line: 166, baseType: !3400, size: 320, offset: 2176)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4310, file: !4311, line: 168, baseType: !4460, size: 64, offset: 2496)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !1479)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4310, file: !4311, line: 170, baseType: !4462, size: 64, offset: 2560)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4311, line: 170, flags: DIFlagFwdDecl)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4310, file: !4311, line: 172, baseType: !4465, size: 64, offset: 2624)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4318, line: 90, size: 192, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4466, file: !4318, line: 91, baseType: !1355, size: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4466, file: !4318, line: 92, baseType: !1355, size: 32, offset: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4466, file: !4318, line: 93, baseType: !1355, size: 32, offset: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4466, file: !4318, line: 94, baseType: !1355, size: 32, offset: 96)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4466, file: !4318, line: 95, baseType: !1355, size: 32, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4466, file: !4318, line: 96, baseType: !1355, size: 32, offset: 160)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4310, file: !4311, line: 174, baseType: !4327, size: 768, offset: 2688)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4310, file: !4311, line: 175, baseType: !1280, size: 64, offset: 3456)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4310, file: !4311, line: 176, baseType: !1280, size: 64, offset: 3520)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4310, file: !4311, line: 177, baseType: !1280, size: 64, offset: 3584)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4310, file: !4311, line: 179, baseType: !4479, size: 64, offset: 3648)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!113, !4309}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4310, file: !4311, line: 180, baseType: !4483, size: 64, offset: 3712)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !4309}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4310, file: !4311, line: 181, baseType: !4487, size: 64, offset: 3776)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!113, !4309, !304}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4310, file: !4311, line: 182, baseType: !4491, size: 64, offset: 3840)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!113, !4309, !7, !7, !113}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4310, file: !4311, line: 184, baseType: !4495, size: 64, offset: 3904)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4311, line: 337, size: 576, elements: !4497)
!4497 = !{!4498, !4499, !4500, !4501, !4502, !4568, !4569}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4496, file: !4311, line: 339, baseType: !117, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4496, file: !4311, line: 341, baseType: !113, size: 32, offset: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4496, file: !4311, line: 342, baseType: !170, size: 64, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4496, file: !4311, line: 344, baseType: !4309, size: 64, offset: 192)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4496, file: !4311, line: 345, baseType: !4503, size: 64, offset: 256)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4311, line: 302, size: 960, elements: !4505)
!4505 = !{!4506, !4507, !4511, !4522, !4526, !4530, !4557, !4561, !4562, !4563, !4564, !4565, !4566, !4567}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4504, file: !4311, line: 304, baseType: !117, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4504, file: !4311, line: 306, baseType: !4508, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{null, !4495, !7, !7, !113}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4504, file: !4311, line: 307, baseType: !4512, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !4495, !4515, !7}
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4517)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4311, line: 32, size: 64, elements: !4518)
!4518 = !{!4519, !4520, !4521}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4517, file: !4311, line: 33, baseType: !855, size: 16)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4517, file: !4311, line: 34, baseType: !855, size: 16, offset: 16)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4517, file: !4311, line: 35, baseType: !1355, size: 32, offset: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4504, file: !4311, line: 309, baseType: !4523, size: 64, offset: 192)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!151, !4495, !7, !7, !113}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4504, file: !4311, line: 310, baseType: !4527, size: 64, offset: 256)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!151, !4503, !4309}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4504, file: !4311, line: 311, baseType: !4531, size: 64, offset: 320)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!113, !4503, !4309, !4534}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4536)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3293, line: 342, size: 1600, elements: !4537)
!4537 = !{!4538, !4539, !4540, !4541, !4542, !4543, !4545, !4547, !4548, !4549, !4550, !4551, !4552, !4554, !4555, !4556}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4536, file: !3293, line: 344, baseType: !3312, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4536, file: !3293, line: 346, baseType: !855, size: 16, offset: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4536, file: !3293, line: 347, baseType: !855, size: 16, offset: 80)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4536, file: !3293, line: 348, baseType: !855, size: 16, offset: 96)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4536, file: !3293, line: 349, baseType: !855, size: 16, offset: 112)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4536, file: !3293, line: 351, baseType: !4544, size: 64, offset: 128)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3312, size: 64, elements: !1281)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4536, file: !3293, line: 352, baseType: !4546, size: 768, offset: 192)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3312, size: 768, elements: !2146)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4536, file: !3293, line: 353, baseType: !4544, size: 64, offset: 960)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4536, file: !3293, line: 354, baseType: !4544, size: 64, offset: 1024)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4536, file: !3293, line: 355, baseType: !4544, size: 64, offset: 1088)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4536, file: !3293, line: 356, baseType: !4544, size: 64, offset: 1152)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4536, file: !3293, line: 357, baseType: !4544, size: 64, offset: 1216)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4536, file: !3293, line: 358, baseType: !4553, size: 128, offset: 1280)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3312, size: 128, elements: !1479)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4536, file: !3293, line: 359, baseType: !4544, size: 64, offset: 1408)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4536, file: !3293, line: 360, baseType: !4544, size: 64, offset: 1472)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4536, file: !3293, line: 362, baseType: !3312, size: 64, offset: 1536)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4504, file: !4311, line: 312, baseType: !4558, size: 64, offset: 384)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{null, !4495}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4504, file: !4311, line: 313, baseType: !4558, size: 64, offset: 448)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4504, file: !4311, line: 315, baseType: !151, size: 8, offset: 512)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4504, file: !4311, line: 316, baseType: !113, size: 32, offset: 544)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4504, file: !4311, line: 317, baseType: !170, size: 64, offset: 576)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4504, file: !4311, line: 319, baseType: !4534, size: 64, offset: 640)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4504, file: !4311, line: 321, baseType: !174, size: 128, offset: 704)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4504, file: !4311, line: 322, baseType: !174, size: 128, offset: 832)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4496, file: !4311, line: 347, baseType: !174, size: 128, offset: 320)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4496, file: !4311, line: 348, baseType: !174, size: 128, offset: 448)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4310, file: !4311, line: 186, baseType: !187, offset: 3968)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4310, file: !4311, line: 187, baseType: !676, size: 192, offset: 3968)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4310, file: !4311, line: 189, baseType: !7, size: 32, offset: 4160)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4310, file: !4311, line: 190, baseType: !151, size: 8, offset: 4192)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4310, file: !4311, line: 192, baseType: !163, size: 5568, offset: 4224)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4310, file: !4311, line: 194, baseType: !174, size: 128, offset: 9792)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4310, file: !4311, line: 195, baseType: !174, size: 128, offset: 9920)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4310, file: !4311, line: 197, baseType: !7, size: 32, offset: 10048)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4310, file: !4311, line: 198, baseType: !7, size: 32, offset: 10080)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4310, file: !4311, line: 199, baseType: !4580, size: 64, offset: 10112)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4310, file: !4311, line: 201, baseType: !151, size: 8, offset: 10176)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4310, file: !4311, line: 203, baseType: !4583, size: 192, offset: 10240)
!4583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1210, size: 192, elements: !229)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4305, file: !3, line: 149, baseType: !2549, size: 256, offset: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "pushed", scope: !4305, file: !3, line: 150, baseType: !119, size: 64, offset: 384)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "last_state", scope: !4305, file: !3, line: 151, baseType: !113, size: 32, offset: 448)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4305, file: !3, line: 152, baseType: !1210, size: 64, offset: 512)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !4305, file: !3, line: 153, baseType: !151, size: 8, offset: 576)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "lid_state_initialized", scope: !4305, file: !3, line: 154, baseType: !151, size: 8, offset: 584)
!4590 = !DILocation(line: 482, column: 22, scope: !4300)
!4591 = !DILocalVariable(name: "input", scope: !4300, file: !3, line: 483, type: !4309)
!4592 = !DILocation(line: 483, column: 20, scope: !4300)
!4593 = !DILocalVariable(name: "hid", scope: !4300, file: !3, line: 484, type: !170)
!4594 = !DILocation(line: 484, column: 14, scope: !4300)
!4595 = !DILocation(line: 484, column: 36, scope: !4300)
!4596 = !DILocation(line: 484, column: 20, scope: !4300)
!4597 = !DILocalVariable(name: "name", scope: !4300, file: !3, line: 485, type: !228)
!4598 = !DILocation(line: 485, column: 8, scope: !4300)
!4599 = !DILocalVariable(name: "class", scope: !4300, file: !3, line: 485, type: !228)
!4600 = !DILocation(line: 485, column: 15, scope: !4300)
!4601 = !DILocalVariable(name: "error", scope: !4300, file: !3, line: 486, type: !113)
!4602 = !DILocation(line: 486, column: 6, scope: !4300)
!4603 = !DILocation(line: 488, column: 14, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 488, column: 6)
!4605 = !DILocation(line: 488, column: 7, scope: !4604)
!4606 = !DILocation(line: 488, column: 40, scope: !4604)
!4607 = !DILocation(line: 489, column: 7, scope: !4604)
!4608 = !DILocation(line: 489, column: 22, scope: !4604)
!4609 = !DILocation(line: 488, column: 6, scope: !4300)
!4610 = !DILocation(line: 490, column: 3, scope: !4604)
!4611 = !DILocation(line: 492, column: 11, scope: !4300)
!4612 = !DILocation(line: 492, column: 9, scope: !4300)
!4613 = !DILocation(line: 493, column: 7, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 493, column: 6)
!4615 = !DILocation(line: 493, column: 6, scope: !4300)
!4616 = !DILocation(line: 494, column: 3, scope: !4614)
!4617 = !DILocation(line: 496, column: 24, scope: !4300)
!4618 = !DILocation(line: 496, column: 2, scope: !4300)
!4619 = !DILocation(line: 496, column: 10, scope: !4300)
!4620 = !DILocation(line: 496, column: 22, scope: !4300)
!4621 = !DILocation(line: 498, column: 26, scope: !4300)
!4622 = !DILocation(line: 498, column: 24, scope: !4300)
!4623 = !DILocation(line: 498, column: 2, scope: !4300)
!4624 = !DILocation(line: 498, column: 10, scope: !4300)
!4625 = !DILocation(line: 498, column: 16, scope: !4300)
!4626 = !DILocation(line: 499, column: 7, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 499, column: 6)
!4628 = !DILocation(line: 499, column: 6, scope: !4300)
!4629 = !DILocation(line: 500, column: 9, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 499, column: 14)
!4631 = !DILocation(line: 501, column: 3, scope: !4630)
!4632 = !DILocation(line: 504, column: 9, scope: !4300)
!4633 = !DILocation(line: 504, column: 7, scope: !4300)
!4634 = !DILocation(line: 505, column: 10, scope: !4300)
!4635 = !DILocation(line: 505, column: 8, scope: !4300)
!4636 = !DILocation(line: 507, column: 14, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 507, column: 6)
!4638 = !DILocation(line: 507, column: 7, scope: !4637)
!4639 = !DILocation(line: 507, column: 42, scope: !4637)
!4640 = !DILocation(line: 508, column: 14, scope: !4637)
!4641 = !DILocation(line: 508, column: 7, scope: !4637)
!4642 = !DILocation(line: 507, column: 6, scope: !4300)
!4643 = !DILocation(line: 509, column: 3, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 508, column: 44)
!4645 = !DILocation(line: 509, column: 11, scope: !4644)
!4646 = !DILocation(line: 509, column: 16, scope: !4644)
!4647 = !DILocation(line: 510, column: 10, scope: !4644)
!4648 = !DILocation(line: 510, column: 3, scope: !4644)
!4649 = !DILocation(line: 511, column: 11, scope: !4644)
!4650 = !DILocation(line: 511, column: 3, scope: !4644)
!4651 = !DILocation(line: 513, column: 2, scope: !4644)
!4652 = !DILocation(line: 513, column: 21, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 513, column: 13)
!4654 = !DILocation(line: 513, column: 14, scope: !4653)
!4655 = !DILocation(line: 513, column: 49, scope: !4653)
!4656 = !DILocation(line: 514, column: 14, scope: !4653)
!4657 = !DILocation(line: 514, column: 7, scope: !4653)
!4658 = !DILocation(line: 513, column: 13, scope: !4637)
!4659 = !DILocation(line: 515, column: 3, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 514, column: 44)
!4661 = !DILocation(line: 515, column: 11, scope: !4660)
!4662 = !DILocation(line: 515, column: 16, scope: !4660)
!4663 = !DILocation(line: 516, column: 10, scope: !4660)
!4664 = !DILocation(line: 516, column: 3, scope: !4660)
!4665 = !DILocation(line: 517, column: 11, scope: !4660)
!4666 = !DILocation(line: 517, column: 3, scope: !4660)
!4667 = !DILocation(line: 519, column: 2, scope: !4660)
!4668 = !DILocation(line: 519, column: 21, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 519, column: 13)
!4670 = !DILocation(line: 519, column: 14, scope: !4669)
!4671 = !DILocation(line: 519, column: 13, scope: !4653)
!4672 = !DILocation(line: 520, column: 3, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 519, column: 48)
!4674 = !DILocation(line: 520, column: 11, scope: !4673)
!4675 = !DILocation(line: 520, column: 16, scope: !4673)
!4676 = !DILocation(line: 521, column: 10, scope: !4673)
!4677 = !DILocation(line: 521, column: 3, scope: !4673)
!4678 = !DILocation(line: 522, column: 11, scope: !4673)
!4679 = !DILocation(line: 522, column: 3, scope: !4673)
!4680 = !DILocation(line: 524, column: 3, scope: !4673)
!4681 = !DILocation(line: 524, column: 10, scope: !4673)
!4682 = !DILocation(line: 524, column: 15, scope: !4673)
!4683 = !DILocation(line: 525, column: 2, scope: !4673)
!4684 = !DILocation(line: 526, column: 52, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 525, column: 9)
!4686 = !DILocation(line: 526, column: 3, scope: !4685)
!4687 = !DILocation(line: 527, column: 9, scope: !4685)
!4688 = !DILocation(line: 528, column: 3, scope: !4685)
!4689 = !DILocation(line: 531, column: 29, scope: !4300)
!4690 = !DILocation(line: 531, column: 10, scope: !4300)
!4691 = !DILocation(line: 531, column: 8, scope: !4300)
!4692 = !DILocation(line: 532, column: 6, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 532, column: 6)
!4694 = !DILocation(line: 532, column: 6, scope: !4300)
!4695 = !DILocation(line: 533, column: 3, scope: !4693)
!4696 = !DILocation(line: 535, column: 11, scope: !4300)
!4697 = !DILocation(line: 535, column: 19, scope: !4300)
!4698 = !DILocation(line: 535, column: 67, scope: !4300)
!4699 = !DILocation(line: 535, column: 2, scope: !4300)
!4700 = !DILocation(line: 537, column: 16, scope: !4300)
!4701 = !DILocation(line: 537, column: 2, scope: !4300)
!4702 = !DILocation(line: 537, column: 9, scope: !4300)
!4703 = !DILocation(line: 537, column: 14, scope: !4300)
!4704 = !DILocation(line: 538, column: 16, scope: !4300)
!4705 = !DILocation(line: 538, column: 24, scope: !4300)
!4706 = !DILocation(line: 538, column: 2, scope: !4300)
!4707 = !DILocation(line: 538, column: 9, scope: !4300)
!4708 = !DILocation(line: 538, column: 14, scope: !4300)
!4709 = !DILocation(line: 539, column: 2, scope: !4300)
!4710 = !DILocation(line: 539, column: 9, scope: !4300)
!4711 = !DILocation(line: 539, column: 12, scope: !4300)
!4712 = !DILocation(line: 539, column: 20, scope: !4300)
!4713 = !DILocation(line: 540, column: 22, scope: !4300)
!4714 = !DILocation(line: 540, column: 30, scope: !4300)
!4715 = !DILocation(line: 540, column: 2, scope: !4300)
!4716 = !DILocation(line: 540, column: 9, scope: !4300)
!4717 = !DILocation(line: 540, column: 12, scope: !4300)
!4718 = !DILocation(line: 540, column: 20, scope: !4300)
!4719 = !DILocation(line: 541, column: 23, scope: !4300)
!4720 = !DILocation(line: 541, column: 31, scope: !4300)
!4721 = !DILocation(line: 541, column: 2, scope: !4300)
!4722 = !DILocation(line: 541, column: 9, scope: !4300)
!4723 = !DILocation(line: 541, column: 13, scope: !4300)
!4724 = !DILocation(line: 541, column: 20, scope: !4300)
!4725 = !DILocation(line: 543, column: 10, scope: !4300)
!4726 = !DILocation(line: 543, column: 18, scope: !4300)
!4727 = !DILocation(line: 543, column: 2, scope: !4300)
!4728 = !DILocation(line: 545, column: 24, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 543, column: 24)
!4730 = !DILocation(line: 545, column: 3, scope: !4729)
!4731 = !DILocation(line: 546, column: 3, scope: !4729)
!4732 = !DILocation(line: 549, column: 24, scope: !4729)
!4733 = !DILocation(line: 549, column: 3, scope: !4729)
!4734 = !DILocation(line: 550, column: 3, scope: !4729)
!4735 = !DILocation(line: 553, column: 24, scope: !4729)
!4736 = !DILocation(line: 553, column: 3, scope: !4729)
!4737 = !DILocation(line: 554, column: 3, scope: !4729)
!4738 = !DILocation(line: 557, column: 20, scope: !4300)
!4739 = !DILocation(line: 557, column: 27, scope: !4300)
!4740 = !DILocation(line: 557, column: 2, scope: !4300)
!4741 = !DILocation(line: 558, column: 32, scope: !4300)
!4742 = !DILocation(line: 558, column: 10, scope: !4300)
!4743 = !DILocation(line: 558, column: 8, scope: !4300)
!4744 = !DILocation(line: 559, column: 6, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 559, column: 6)
!4746 = !DILocation(line: 559, column: 6, scope: !4300)
!4747 = !DILocation(line: 560, column: 3, scope: !4745)
!4748 = !DILocation(line: 561, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 561, column: 6)
!4750 = !DILocation(line: 561, column: 14, scope: !4749)
!4751 = !DILocation(line: 561, column: 19, scope: !4749)
!4752 = !DILocation(line: 561, column: 6, scope: !4300)
!4753 = !DILocation(line: 566, column: 16, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 561, column: 44)
!4755 = !DILocation(line: 566, column: 14, scope: !4754)
!4756 = !DILocation(line: 567, column: 2, scope: !4754)
!4757 = !DILocation(line: 569, column: 22, scope: !4300)
!4758 = !DILocation(line: 569, column: 30, scope: !4300)
!4759 = !DILocation(line: 569, column: 2, scope: !4300)
!4760 = !DILocation(line: 570, column: 39, scope: !4300)
!4761 = !DILocation(line: 570, column: 45, scope: !4300)
!4762 = !DILocation(line: 570, column: 2, scope: !4300)
!4763 = !DILocation(line: 571, column: 2, scope: !4300)
!4764 = !DILabel(scope: !4300, name: "err_remove_fs", file: !3, line: 573)
!4765 = !DILocation(line: 573, column: 2, scope: !4300)
!4766 = !DILocation(line: 574, column: 24, scope: !4300)
!4767 = !DILocation(line: 574, column: 2, scope: !4300)
!4768 = !DILabel(scope: !4300, name: "err_free_input", file: !3, line: 575)
!4769 = !DILocation(line: 575, column: 2, scope: !4300)
!4770 = !DILocation(line: 576, column: 20, scope: !4300)
!4771 = !DILocation(line: 576, column: 2, scope: !4300)
!4772 = !DILabel(scope: !4300, name: "err_free_button", file: !3, line: 577)
!4773 = !DILocation(line: 577, column: 2, scope: !4300)
!4774 = !DILocation(line: 578, column: 8, scope: !4300)
!4775 = !DILocation(line: 578, column: 2, scope: !4300)
!4776 = !DILocation(line: 579, column: 9, scope: !4300)
!4777 = !DILocation(line: 579, column: 2, scope: !4300)
!4778 = !DILocation(line: 580, column: 1, scope: !4300)
!4779 = distinct !DISubprogram(name: "acpi_button_remove", scope: !3, file: !3, line: 582, type: !3946, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4780 = !DILocalVariable(name: "device", arg: 1, scope: !4779, file: !3, line: 582, type: !120)
!4781 = !DILocation(line: 582, column: 51, scope: !4779)
!4782 = !DILocalVariable(name: "button", scope: !4779, file: !3, line: 584, type: !4304)
!4783 = !DILocation(line: 584, column: 22, scope: !4779)
!4784 = !DILocation(line: 584, column: 48, scope: !4779)
!4785 = !DILocation(line: 584, column: 31, scope: !4779)
!4786 = !DILocation(line: 586, column: 24, scope: !4779)
!4787 = !DILocation(line: 586, column: 2, scope: !4779)
!4788 = !DILocation(line: 587, column: 26, scope: !4779)
!4789 = !DILocation(line: 587, column: 34, scope: !4779)
!4790 = !DILocation(line: 587, column: 2, scope: !4779)
!4791 = !DILocation(line: 588, column: 8, scope: !4779)
!4792 = !DILocation(line: 588, column: 2, scope: !4779)
!4793 = !DILocation(line: 589, column: 2, scope: !4779)
!4794 = distinct !DISubprogram(name: "acpi_button_notify", scope: !3, file: !3, line: 402, type: !3962, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4795 = !DILocalVariable(name: "device", arg: 1, scope: !4794, file: !3, line: 402, type: !120)
!4796 = !DILocation(line: 402, column: 52, scope: !4794)
!4797 = !DILocalVariable(name: "event", arg: 2, scope: !4794, file: !3, line: 402, type: !367)
!4798 = !DILocation(line: 402, column: 64, scope: !4794)
!4799 = !DILocalVariable(name: "button", scope: !4794, file: !3, line: 404, type: !4304)
!4800 = !DILocation(line: 404, column: 22, scope: !4794)
!4801 = !DILocation(line: 404, column: 48, scope: !4794)
!4802 = !DILocation(line: 404, column: 31, scope: !4794)
!4803 = !DILocalVariable(name: "input", scope: !4794, file: !3, line: 405, type: !4309)
!4804 = !DILocation(line: 405, column: 20, scope: !4794)
!4805 = !DILocation(line: 407, column: 10, scope: !4794)
!4806 = !DILocation(line: 407, column: 2, scope: !4794)
!4807 = !DILocation(line: 409, column: 9, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 407, column: 17)
!4809 = !DILocation(line: 409, column: 3, scope: !4808)
!4810 = !DILocation(line: 412, column: 11, scope: !4808)
!4811 = !DILocation(line: 412, column: 19, scope: !4808)
!4812 = !DILocation(line: 412, column: 9, scope: !4808)
!4813 = !DILocation(line: 413, column: 7, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 413, column: 7)
!4815 = !DILocation(line: 413, column: 15, scope: !4814)
!4816 = !DILocation(line: 413, column: 20, scope: !4814)
!4817 = !DILocation(line: 413, column: 7, scope: !4808)
!4818 = !DILocation(line: 414, column: 8, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 414, column: 8)
!4820 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 413, column: 45)
!4821 = !DILocation(line: 414, column: 16, scope: !4819)
!4822 = !DILocation(line: 414, column: 8, scope: !4820)
!4823 = !DILocation(line: 415, column: 27, scope: !4819)
!4824 = !DILocation(line: 415, column: 5, scope: !4819)
!4825 = !DILocation(line: 416, column: 3, scope: !4820)
!4826 = !DILocalVariable(name: "keycode", scope: !4827, file: !3, line: 417, type: !113)
!4827 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 416, column: 10)
!4828 = !DILocation(line: 417, column: 8, scope: !4827)
!4829 = !DILocation(line: 419, column: 26, scope: !4827)
!4830 = !DILocation(line: 419, column: 34, scope: !4827)
!4831 = !DILocation(line: 419, column: 4, scope: !4827)
!4832 = !DILocation(line: 420, column: 8, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 420, column: 8)
!4834 = !DILocation(line: 420, column: 16, scope: !4833)
!4835 = !DILocation(line: 420, column: 8, scope: !4827)
!4836 = !DILocation(line: 421, column: 5, scope: !4833)
!4837 = !DILocation(line: 423, column: 34, scope: !4827)
!4838 = !DILocation(line: 423, column: 41, scope: !4827)
!4839 = !DILocation(line: 423, column: 14, scope: !4827)
!4840 = !DILocation(line: 423, column: 12, scope: !4827)
!4841 = !DILocation(line: 425, column: 21, scope: !4827)
!4842 = !DILocation(line: 425, column: 28, scope: !4827)
!4843 = !DILocation(line: 425, column: 4, scope: !4827)
!4844 = !DILocation(line: 426, column: 15, scope: !4827)
!4845 = !DILocation(line: 426, column: 4, scope: !4827)
!4846 = !DILocation(line: 427, column: 21, scope: !4827)
!4847 = !DILocation(line: 427, column: 28, scope: !4827)
!4848 = !DILocation(line: 427, column: 4, scope: !4827)
!4849 = !DILocation(line: 428, column: 15, scope: !4827)
!4850 = !DILocation(line: 428, column: 4, scope: !4827)
!4851 = !DILocation(line: 431, column: 6, scope: !4827)
!4852 = !DILocation(line: 431, column: 14, scope: !4827)
!4853 = !DILocation(line: 431, column: 18, scope: !4827)
!4854 = !DILocation(line: 432, column: 16, scope: !4827)
!4855 = !DILocation(line: 432, column: 24, scope: !4827)
!4856 = !DILocation(line: 432, column: 6, scope: !4827)
!4857 = !DILocation(line: 433, column: 6, scope: !4827)
!4858 = !DILocation(line: 433, column: 15, scope: !4827)
!4859 = !DILocation(line: 433, column: 23, scope: !4827)
!4860 = !DILocation(line: 433, column: 13, scope: !4827)
!4861 = !DILocation(line: 430, column: 4, scope: !4827)
!4862 = !DILocation(line: 435, column: 3, scope: !4808)
!4863 = !DILocation(line: 439, column: 3, scope: !4808)
!4864 = !DILocation(line: 441, column: 1, scope: !4794)
!4865 = distinct !DISubprogram(name: "kzalloc", scope: !106, file: !106, line: 662, type: !4866, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!117, !274, !115}
!4868 = !DILocalVariable(name: "s", arg: 1, scope: !4869, file: !106, line: 445, type: !930)
!4869 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !106, file: !106, line: 445, type: !4870, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!117, !930, !115, !274}
!4872 = !DILocation(line: 445, column: 72, scope: !4869, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 552, column: 10, scope: !4874, inlinedAt: !4877)
!4874 = distinct !DILexicalBlock(scope: !4875, file: !106, line: 540, column: 34)
!4875 = distinct !DILexicalBlock(scope: !4876, file: !106, line: 540, column: 6)
!4876 = distinct !DISubprogram(name: "kmalloc", scope: !106, file: !106, line: 538, type: !4866, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4877 = distinct !DILocation(line: 664, column: 9, scope: !4865)
!4878 = !DILocalVariable(name: "flags", arg: 2, scope: !4869, file: !106, line: 446, type: !115)
!4879 = !DILocation(line: 446, column: 9, scope: !4869, inlinedAt: !4873)
!4880 = !DILocalVariable(name: "size", arg: 3, scope: !4869, file: !106, line: 446, type: !274)
!4881 = !DILocation(line: 446, column: 23, scope: !4869, inlinedAt: !4873)
!4882 = !DILocalVariable(name: "ret", scope: !4869, file: !106, line: 448, type: !117)
!4883 = !DILocation(line: 448, column: 8, scope: !4869, inlinedAt: !4873)
!4884 = !DILocalVariable(name: "flags", arg: 1, scope: !4885, file: !106, line: 318, type: !115)
!4885 = distinct !DISubprogram(name: "kmalloc_type", scope: !106, file: !106, line: 318, type: !4886, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!105, !115}
!4888 = !DILocation(line: 318, column: 67, scope: !4885, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 553, column: 20, scope: !4874, inlinedAt: !4877)
!4890 = !DILocalVariable(name: "size", arg: 1, scope: !4891, file: !106, line: 346, type: !274)
!4891 = distinct !DISubprogram(name: "kmalloc_index", scope: !106, file: !106, line: 346, type: !4892, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!7, !274}
!4894 = !DILocation(line: 346, column: 58, scope: !4891, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 547, column: 11, scope: !4874, inlinedAt: !4877)
!4896 = !DILocalVariable(name: "size", arg: 1, scope: !4897, file: !106, line: 472, type: !274)
!4897 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !106, file: !106, line: 472, type: !4898, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!117, !274, !115, !7}
!4900 = !DILocation(line: 472, column: 28, scope: !4897, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 481, column: 9, scope: !4902, inlinedAt: !4903)
!4902 = distinct !DISubprogram(name: "kmalloc_large", scope: !106, file: !106, line: 478, type: !4866, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4903 = distinct !DILocation(line: 545, column: 11, scope: !4904, inlinedAt: !4877)
!4904 = distinct !DILexicalBlock(scope: !4874, file: !106, line: 544, column: 7)
!4905 = !DILocalVariable(name: "flags", arg: 2, scope: !4897, file: !106, line: 472, type: !115)
!4906 = !DILocation(line: 472, column: 40, scope: !4897, inlinedAt: !4901)
!4907 = !DILocalVariable(name: "order", arg: 3, scope: !4897, file: !106, line: 472, type: !7)
!4908 = !DILocation(line: 472, column: 60, scope: !4897, inlinedAt: !4901)
!4909 = !DILocalVariable(name: "size", arg: 1, scope: !4902, file: !106, line: 478, type: !274)
!4910 = !DILocation(line: 478, column: 51, scope: !4902, inlinedAt: !4903)
!4911 = !DILocalVariable(name: "flags", arg: 2, scope: !4902, file: !106, line: 478, type: !115)
!4912 = !DILocation(line: 478, column: 63, scope: !4902, inlinedAt: !4903)
!4913 = !DILocalVariable(name: "order", scope: !4902, file: !106, line: 480, type: !7)
!4914 = !DILocation(line: 480, column: 15, scope: !4902, inlinedAt: !4903)
!4915 = !DILocalVariable(name: "size", arg: 1, scope: !4876, file: !106, line: 538, type: !274)
!4916 = !DILocation(line: 538, column: 45, scope: !4876, inlinedAt: !4877)
!4917 = !DILocalVariable(name: "flags", arg: 2, scope: !4876, file: !106, line: 538, type: !115)
!4918 = !DILocation(line: 538, column: 57, scope: !4876, inlinedAt: !4877)
!4919 = !DILocalVariable(name: "index", scope: !4874, file: !106, line: 542, type: !7)
!4920 = !DILocation(line: 542, column: 16, scope: !4874, inlinedAt: !4877)
!4921 = !DILocalVariable(name: "size", arg: 1, scope: !4865, file: !106, line: 662, type: !274)
!4922 = !DILocation(line: 662, column: 36, scope: !4865)
!4923 = !DILocalVariable(name: "flags", arg: 2, scope: !4865, file: !106, line: 662, type: !115)
!4924 = !DILocation(line: 662, column: 48, scope: !4865)
!4925 = !DILocation(line: 664, column: 17, scope: !4865)
!4926 = !DILocation(line: 664, column: 23, scope: !4865)
!4927 = !DILocation(line: 664, column: 29, scope: !4865)
!4928 = !DILocation(line: 540, column: 27, scope: !4875, inlinedAt: !4877)
!4929 = !DILocation(line: 540, column: 6, scope: !4875, inlinedAt: !4877)
!4930 = !DILocation(line: 540, column: 6, scope: !4876, inlinedAt: !4877)
!4931 = !DILocation(line: 544, column: 7, scope: !4904, inlinedAt: !4877)
!4932 = !DILocation(line: 544, column: 12, scope: !4904, inlinedAt: !4877)
!4933 = !DILocation(line: 544, column: 7, scope: !4874, inlinedAt: !4877)
!4934 = !DILocation(line: 545, column: 25, scope: !4904, inlinedAt: !4877)
!4935 = !DILocation(line: 545, column: 31, scope: !4904, inlinedAt: !4877)
!4936 = !DILocation(line: 480, column: 33, scope: !4902, inlinedAt: !4903)
!4937 = !DILocation(line: 480, column: 23, scope: !4902, inlinedAt: !4903)
!4938 = !DILocation(line: 481, column: 29, scope: !4902, inlinedAt: !4903)
!4939 = !DILocation(line: 481, column: 35, scope: !4902, inlinedAt: !4903)
!4940 = !DILocation(line: 481, column: 42, scope: !4902, inlinedAt: !4903)
!4941 = !DILocation(line: 474, column: 23, scope: !4897, inlinedAt: !4901)
!4942 = !DILocation(line: 474, column: 29, scope: !4897, inlinedAt: !4901)
!4943 = !DILocation(line: 474, column: 36, scope: !4897, inlinedAt: !4901)
!4944 = !DILocation(line: 474, column: 9, scope: !4897, inlinedAt: !4901)
!4945 = !DILocation(line: 545, column: 4, scope: !4904, inlinedAt: !4877)
!4946 = !DILocation(line: 547, column: 25, scope: !4874, inlinedAt: !4877)
!4947 = !DILocation(line: 348, column: 7, scope: !4948, inlinedAt: !4895)
!4948 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 348, column: 6)
!4949 = !DILocation(line: 348, column: 6, scope: !4891, inlinedAt: !4895)
!4950 = !DILocation(line: 349, column: 3, scope: !4948, inlinedAt: !4895)
!4951 = !DILocation(line: 351, column: 6, scope: !4952, inlinedAt: !4895)
!4952 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 351, column: 6)
!4953 = !DILocation(line: 351, column: 11, scope: !4952, inlinedAt: !4895)
!4954 = !DILocation(line: 351, column: 6, scope: !4891, inlinedAt: !4895)
!4955 = !DILocation(line: 352, column: 3, scope: !4952, inlinedAt: !4895)
!4956 = !DILocation(line: 354, column: 32, scope: !4957, inlinedAt: !4895)
!4957 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 354, column: 6)
!4958 = !DILocation(line: 354, column: 37, scope: !4957, inlinedAt: !4895)
!4959 = !DILocation(line: 354, column: 42, scope: !4957, inlinedAt: !4895)
!4960 = !DILocation(line: 354, column: 45, scope: !4957, inlinedAt: !4895)
!4961 = !DILocation(line: 354, column: 50, scope: !4957, inlinedAt: !4895)
!4962 = !DILocation(line: 354, column: 6, scope: !4891, inlinedAt: !4895)
!4963 = !DILocation(line: 355, column: 3, scope: !4957, inlinedAt: !4895)
!4964 = !DILocation(line: 356, column: 32, scope: !4965, inlinedAt: !4895)
!4965 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 356, column: 6)
!4966 = !DILocation(line: 356, column: 37, scope: !4965, inlinedAt: !4895)
!4967 = !DILocation(line: 356, column: 43, scope: !4965, inlinedAt: !4895)
!4968 = !DILocation(line: 356, column: 46, scope: !4965, inlinedAt: !4895)
!4969 = !DILocation(line: 356, column: 51, scope: !4965, inlinedAt: !4895)
!4970 = !DILocation(line: 356, column: 6, scope: !4891, inlinedAt: !4895)
!4971 = !DILocation(line: 357, column: 3, scope: !4965, inlinedAt: !4895)
!4972 = !DILocation(line: 358, column: 6, scope: !4973, inlinedAt: !4895)
!4973 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 358, column: 6)
!4974 = !DILocation(line: 358, column: 11, scope: !4973, inlinedAt: !4895)
!4975 = !DILocation(line: 358, column: 6, scope: !4891, inlinedAt: !4895)
!4976 = !DILocation(line: 358, column: 26, scope: !4973, inlinedAt: !4895)
!4977 = !DILocation(line: 359, column: 6, scope: !4978, inlinedAt: !4895)
!4978 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 359, column: 6)
!4979 = !DILocation(line: 359, column: 11, scope: !4978, inlinedAt: !4895)
!4980 = !DILocation(line: 359, column: 6, scope: !4891, inlinedAt: !4895)
!4981 = !DILocation(line: 359, column: 26, scope: !4978, inlinedAt: !4895)
!4982 = !DILocation(line: 360, column: 6, scope: !4983, inlinedAt: !4895)
!4983 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 360, column: 6)
!4984 = !DILocation(line: 360, column: 11, scope: !4983, inlinedAt: !4895)
!4985 = !DILocation(line: 360, column: 6, scope: !4891, inlinedAt: !4895)
!4986 = !DILocation(line: 360, column: 26, scope: !4983, inlinedAt: !4895)
!4987 = !DILocation(line: 361, column: 6, scope: !4988, inlinedAt: !4895)
!4988 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 361, column: 6)
!4989 = !DILocation(line: 361, column: 11, scope: !4988, inlinedAt: !4895)
!4990 = !DILocation(line: 361, column: 6, scope: !4891, inlinedAt: !4895)
!4991 = !DILocation(line: 361, column: 26, scope: !4988, inlinedAt: !4895)
!4992 = !DILocation(line: 362, column: 6, scope: !4993, inlinedAt: !4895)
!4993 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 362, column: 6)
!4994 = !DILocation(line: 362, column: 11, scope: !4993, inlinedAt: !4895)
!4995 = !DILocation(line: 362, column: 6, scope: !4891, inlinedAt: !4895)
!4996 = !DILocation(line: 362, column: 26, scope: !4993, inlinedAt: !4895)
!4997 = !DILocation(line: 363, column: 6, scope: !4998, inlinedAt: !4895)
!4998 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 363, column: 6)
!4999 = !DILocation(line: 363, column: 11, scope: !4998, inlinedAt: !4895)
!5000 = !DILocation(line: 363, column: 6, scope: !4891, inlinedAt: !4895)
!5001 = !DILocation(line: 363, column: 26, scope: !4998, inlinedAt: !4895)
!5002 = !DILocation(line: 364, column: 6, scope: !5003, inlinedAt: !4895)
!5003 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 364, column: 6)
!5004 = !DILocation(line: 364, column: 11, scope: !5003, inlinedAt: !4895)
!5005 = !DILocation(line: 364, column: 6, scope: !4891, inlinedAt: !4895)
!5006 = !DILocation(line: 364, column: 26, scope: !5003, inlinedAt: !4895)
!5007 = !DILocation(line: 365, column: 6, scope: !5008, inlinedAt: !4895)
!5008 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 365, column: 6)
!5009 = !DILocation(line: 365, column: 11, scope: !5008, inlinedAt: !4895)
!5010 = !DILocation(line: 365, column: 6, scope: !4891, inlinedAt: !4895)
!5011 = !DILocation(line: 365, column: 26, scope: !5008, inlinedAt: !4895)
!5012 = !DILocation(line: 366, column: 6, scope: !5013, inlinedAt: !4895)
!5013 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 366, column: 6)
!5014 = !DILocation(line: 366, column: 11, scope: !5013, inlinedAt: !4895)
!5015 = !DILocation(line: 366, column: 6, scope: !4891, inlinedAt: !4895)
!5016 = !DILocation(line: 366, column: 26, scope: !5013, inlinedAt: !4895)
!5017 = !DILocation(line: 367, column: 6, scope: !5018, inlinedAt: !4895)
!5018 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 367, column: 6)
!5019 = !DILocation(line: 367, column: 11, scope: !5018, inlinedAt: !4895)
!5020 = !DILocation(line: 367, column: 6, scope: !4891, inlinedAt: !4895)
!5021 = !DILocation(line: 367, column: 26, scope: !5018, inlinedAt: !4895)
!5022 = !DILocation(line: 368, column: 6, scope: !5023, inlinedAt: !4895)
!5023 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 368, column: 6)
!5024 = !DILocation(line: 368, column: 11, scope: !5023, inlinedAt: !4895)
!5025 = !DILocation(line: 368, column: 6, scope: !4891, inlinedAt: !4895)
!5026 = !DILocation(line: 368, column: 26, scope: !5023, inlinedAt: !4895)
!5027 = !DILocation(line: 369, column: 6, scope: !5028, inlinedAt: !4895)
!5028 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 369, column: 6)
!5029 = !DILocation(line: 369, column: 11, scope: !5028, inlinedAt: !4895)
!5030 = !DILocation(line: 369, column: 6, scope: !4891, inlinedAt: !4895)
!5031 = !DILocation(line: 369, column: 26, scope: !5028, inlinedAt: !4895)
!5032 = !DILocation(line: 370, column: 6, scope: !5033, inlinedAt: !4895)
!5033 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 370, column: 6)
!5034 = !DILocation(line: 370, column: 11, scope: !5033, inlinedAt: !4895)
!5035 = !DILocation(line: 370, column: 6, scope: !4891, inlinedAt: !4895)
!5036 = !DILocation(line: 370, column: 26, scope: !5033, inlinedAt: !4895)
!5037 = !DILocation(line: 371, column: 6, scope: !5038, inlinedAt: !4895)
!5038 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 371, column: 6)
!5039 = !DILocation(line: 371, column: 11, scope: !5038, inlinedAt: !4895)
!5040 = !DILocation(line: 371, column: 6, scope: !4891, inlinedAt: !4895)
!5041 = !DILocation(line: 371, column: 26, scope: !5038, inlinedAt: !4895)
!5042 = !DILocation(line: 372, column: 6, scope: !5043, inlinedAt: !4895)
!5043 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 372, column: 6)
!5044 = !DILocation(line: 372, column: 11, scope: !5043, inlinedAt: !4895)
!5045 = !DILocation(line: 372, column: 6, scope: !4891, inlinedAt: !4895)
!5046 = !DILocation(line: 372, column: 26, scope: !5043, inlinedAt: !4895)
!5047 = !DILocation(line: 373, column: 6, scope: !5048, inlinedAt: !4895)
!5048 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 373, column: 6)
!5049 = !DILocation(line: 373, column: 11, scope: !5048, inlinedAt: !4895)
!5050 = !DILocation(line: 373, column: 6, scope: !4891, inlinedAt: !4895)
!5051 = !DILocation(line: 373, column: 26, scope: !5048, inlinedAt: !4895)
!5052 = !DILocation(line: 374, column: 6, scope: !5053, inlinedAt: !4895)
!5053 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 374, column: 6)
!5054 = !DILocation(line: 374, column: 11, scope: !5053, inlinedAt: !4895)
!5055 = !DILocation(line: 374, column: 6, scope: !4891, inlinedAt: !4895)
!5056 = !DILocation(line: 374, column: 26, scope: !5053, inlinedAt: !4895)
!5057 = !DILocation(line: 375, column: 6, scope: !5058, inlinedAt: !4895)
!5058 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 375, column: 6)
!5059 = !DILocation(line: 375, column: 11, scope: !5058, inlinedAt: !4895)
!5060 = !DILocation(line: 375, column: 6, scope: !4891, inlinedAt: !4895)
!5061 = !DILocation(line: 375, column: 27, scope: !5058, inlinedAt: !4895)
!5062 = !DILocation(line: 376, column: 6, scope: !5063, inlinedAt: !4895)
!5063 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 376, column: 6)
!5064 = !DILocation(line: 376, column: 11, scope: !5063, inlinedAt: !4895)
!5065 = !DILocation(line: 376, column: 6, scope: !4891, inlinedAt: !4895)
!5066 = !DILocation(line: 376, column: 32, scope: !5063, inlinedAt: !4895)
!5067 = !DILocation(line: 377, column: 6, scope: !5068, inlinedAt: !4895)
!5068 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 377, column: 6)
!5069 = !DILocation(line: 377, column: 11, scope: !5068, inlinedAt: !4895)
!5070 = !DILocation(line: 377, column: 6, scope: !4891, inlinedAt: !4895)
!5071 = !DILocation(line: 377, column: 32, scope: !5068, inlinedAt: !4895)
!5072 = !DILocation(line: 378, column: 6, scope: !5073, inlinedAt: !4895)
!5073 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 378, column: 6)
!5074 = !DILocation(line: 378, column: 11, scope: !5073, inlinedAt: !4895)
!5075 = !DILocation(line: 378, column: 6, scope: !4891, inlinedAt: !4895)
!5076 = !DILocation(line: 378, column: 32, scope: !5073, inlinedAt: !4895)
!5077 = !DILocation(line: 379, column: 6, scope: !5078, inlinedAt: !4895)
!5078 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 379, column: 6)
!5079 = !DILocation(line: 379, column: 11, scope: !5078, inlinedAt: !4895)
!5080 = !DILocation(line: 379, column: 6, scope: !4891, inlinedAt: !4895)
!5081 = !DILocation(line: 379, column: 33, scope: !5078, inlinedAt: !4895)
!5082 = !DILocation(line: 380, column: 6, scope: !5083, inlinedAt: !4895)
!5083 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 380, column: 6)
!5084 = !DILocation(line: 380, column: 11, scope: !5083, inlinedAt: !4895)
!5085 = !DILocation(line: 380, column: 6, scope: !4891, inlinedAt: !4895)
!5086 = !DILocation(line: 380, column: 33, scope: !5083, inlinedAt: !4895)
!5087 = !DILocation(line: 381, column: 6, scope: !5088, inlinedAt: !4895)
!5088 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 381, column: 6)
!5089 = !DILocation(line: 381, column: 11, scope: !5088, inlinedAt: !4895)
!5090 = !DILocation(line: 381, column: 6, scope: !4891, inlinedAt: !4895)
!5091 = !DILocation(line: 381, column: 33, scope: !5088, inlinedAt: !4895)
!5092 = !DILocation(line: 382, column: 2, scope: !5093, inlinedAt: !4895)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !106, line: 382, column: 2)
!5094 = distinct !DILexicalBlock(scope: !4891, file: !106, line: 382, column: 2)
!5095 = !{i32 -2142779790, i32 -2142779761, i32 -2142779715, i32 -2142779657, i32 -2142779603, i32 -2142779549, i32 -2142779494, i32 -2142779463}
!5096 = !DILocation(line: 382, column: 2, scope: !5097, inlinedAt: !4895)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !106, line: 382, column: 2)
!5098 = distinct !DILexicalBlock(scope: !5094, file: !106, line: 382, column: 2)
!5099 = !{i32 -2142779020, i32 -2142779013, i32 -2142778959, i32 -2142778928, i32 -2142778898}
!5100 = !DILocation(line: 382, column: 2, scope: !5098, inlinedAt: !4895)
!5101 = !DILocation(line: 386, column: 1, scope: !4891, inlinedAt: !4895)
!5102 = !DILocation(line: 547, column: 9, scope: !4874, inlinedAt: !4877)
!5103 = !DILocation(line: 549, column: 8, scope: !5104, inlinedAt: !4877)
!5104 = distinct !DILexicalBlock(scope: !4874, file: !106, line: 549, column: 7)
!5105 = !DILocation(line: 549, column: 7, scope: !4874, inlinedAt: !4877)
!5106 = !DILocation(line: 550, column: 4, scope: !5104, inlinedAt: !4877)
!5107 = !DILocation(line: 553, column: 33, scope: !4874, inlinedAt: !4877)
!5108 = !DILocation(line: 325, column: 6, scope: !5109, inlinedAt: !4889)
!5109 = distinct !DILexicalBlock(scope: !4885, file: !106, line: 325, column: 6)
!5110 = !DILocation(line: 325, column: 6, scope: !4885, inlinedAt: !4889)
!5111 = !DILocation(line: 326, column: 3, scope: !5109, inlinedAt: !4889)
!5112 = !DILocation(line: 332, column: 9, scope: !4885, inlinedAt: !4889)
!5113 = !DILocation(line: 332, column: 15, scope: !4885, inlinedAt: !4889)
!5114 = !DILocation(line: 332, column: 2, scope: !4885, inlinedAt: !4889)
!5115 = !DILocation(line: 336, column: 1, scope: !4885, inlinedAt: !4889)
!5116 = !DILocation(line: 553, column: 5, scope: !4874, inlinedAt: !4877)
!5117 = !DILocation(line: 553, column: 41, scope: !4874, inlinedAt: !4877)
!5118 = !DILocation(line: 554, column: 5, scope: !4874, inlinedAt: !4877)
!5119 = !DILocation(line: 554, column: 12, scope: !4874, inlinedAt: !4877)
!5120 = !DILocation(line: 448, column: 31, scope: !4869, inlinedAt: !4873)
!5121 = !DILocation(line: 448, column: 34, scope: !4869, inlinedAt: !4873)
!5122 = !DILocation(line: 448, column: 14, scope: !4869, inlinedAt: !4873)
!5123 = !DILocation(line: 450, column: 22, scope: !4869, inlinedAt: !4873)
!5124 = !DILocation(line: 450, column: 25, scope: !4869, inlinedAt: !4873)
!5125 = !DILocation(line: 450, column: 30, scope: !4869, inlinedAt: !4873)
!5126 = !DILocation(line: 450, column: 36, scope: !4869, inlinedAt: !4873)
!5127 = !DILocation(line: 450, column: 8, scope: !4869, inlinedAt: !4873)
!5128 = !DILocation(line: 450, column: 6, scope: !4869, inlinedAt: !4873)
!5129 = !DILocation(line: 451, column: 9, scope: !4869, inlinedAt: !4873)
!5130 = !DILocation(line: 552, column: 3, scope: !4874, inlinedAt: !4877)
!5131 = !DILocation(line: 557, column: 19, scope: !4876, inlinedAt: !4877)
!5132 = !DILocation(line: 557, column: 25, scope: !4876, inlinedAt: !4877)
!5133 = !DILocation(line: 557, column: 9, scope: !4876, inlinedAt: !4877)
!5134 = !DILocation(line: 557, column: 2, scope: !4876, inlinedAt: !4877)
!5135 = !DILocation(line: 558, column: 1, scope: !4876, inlinedAt: !4877)
!5136 = !DILocation(line: 664, column: 2, scope: !4865)
!5137 = distinct !DISubprogram(name: "acpi_lid_input_open", scope: !3, file: !3, line: 468, type: !4480, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5138 = !DILocalVariable(name: "input", arg: 1, scope: !5137, file: !3, line: 468, type: !4309)
!5139 = !DILocation(line: 468, column: 50, scope: !5137)
!5140 = !DILocalVariable(name: "device", scope: !5137, file: !3, line: 470, type: !120)
!5141 = !DILocation(line: 470, column: 22, scope: !5137)
!5142 = !DILocation(line: 470, column: 49, scope: !5137)
!5143 = !DILocation(line: 470, column: 31, scope: !5137)
!5144 = !DILocalVariable(name: "button", scope: !5137, file: !3, line: 471, type: !4304)
!5145 = !DILocation(line: 471, column: 22, scope: !5137)
!5146 = !DILocation(line: 471, column: 48, scope: !5137)
!5147 = !DILocation(line: 471, column: 31, scope: !5137)
!5148 = !DILocation(line: 473, column: 49, scope: !5137)
!5149 = !DILocation(line: 473, column: 25, scope: !5137)
!5150 = !DILocation(line: 473, column: 24, scope: !5137)
!5151 = !DILocation(line: 473, column: 23, scope: !5137)
!5152 = !DILocation(line: 473, column: 2, scope: !5137)
!5153 = !DILocation(line: 473, column: 10, scope: !5137)
!5154 = !DILocation(line: 473, column: 21, scope: !5137)
!5155 = !DILocation(line: 474, column: 22, scope: !5137)
!5156 = !DILocation(line: 474, column: 2, scope: !5137)
!5157 = !DILocation(line: 474, column: 10, scope: !5137)
!5158 = !DILocation(line: 474, column: 20, scope: !5137)
!5159 = !DILocation(line: 475, column: 28, scope: !5137)
!5160 = !DILocation(line: 475, column: 2, scope: !5137)
!5161 = !DILocation(line: 477, column: 2, scope: !5137)
!5162 = distinct !DISubprogram(name: "acpi_button_add_fs", scope: !3, file: !3, line: 277, type: !3946, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5163 = !DILocalVariable(name: "device", arg: 1, scope: !5162, file: !3, line: 277, type: !120)
!5164 = !DILocation(line: 277, column: 51, scope: !5162)
!5165 = !DILocalVariable(name: "button", scope: !5162, file: !3, line: 279, type: !4304)
!5166 = !DILocation(line: 279, column: 22, scope: !5162)
!5167 = !DILocation(line: 279, column: 48, scope: !5162)
!5168 = !DILocation(line: 279, column: 31, scope: !5162)
!5169 = !DILocalVariable(name: "entry", scope: !5162, file: !3, line: 280, type: !3907)
!5170 = !DILocation(line: 280, column: 25, scope: !5162)
!5171 = !DILocalVariable(name: "ret", scope: !5162, file: !3, line: 281, type: !113)
!5172 = !DILocation(line: 281, column: 6, scope: !5162)
!5173 = !DILocation(line: 284, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 284, column: 6)
!5175 = !DILocation(line: 284, column: 14, scope: !5174)
!5176 = !DILocation(line: 284, column: 19, scope: !5174)
!5177 = !DILocation(line: 284, column: 6, scope: !5162)
!5178 = !DILocation(line: 285, column: 3, scope: !5174)
!5179 = !DILocation(line: 287, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 287, column: 6)
!5181 = !DILocation(line: 287, column: 22, scope: !5180)
!5182 = !DILocation(line: 287, column: 25, scope: !5180)
!5183 = !DILocation(line: 287, column: 6, scope: !5162)
!5184 = !DILocation(line: 288, column: 3, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 287, column: 39)
!5186 = !DILocation(line: 289, column: 3, scope: !5185)
!5187 = !DILocation(line: 293, column: 50, scope: !5162)
!5188 = !DILocation(line: 293, column: 20, scope: !5162)
!5189 = !DILocation(line: 293, column: 18, scope: !5162)
!5190 = !DILocation(line: 294, column: 7, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 294, column: 6)
!5192 = !DILocation(line: 294, column: 6, scope: !5162)
!5193 = !DILocation(line: 295, column: 3, scope: !5191)
!5194 = !DILocation(line: 298, column: 54, scope: !5162)
!5195 = !DILocation(line: 298, column: 17, scope: !5162)
!5196 = !DILocation(line: 298, column: 15, scope: !5162)
!5197 = !DILocation(line: 299, column: 7, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 299, column: 6)
!5199 = !DILocation(line: 299, column: 6, scope: !5162)
!5200 = !DILocation(line: 300, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 299, column: 21)
!5202 = !DILocation(line: 301, column: 3, scope: !5201)
!5203 = !DILocation(line: 305, column: 39, scope: !5162)
!5204 = !DILocation(line: 305, column: 64, scope: !5162)
!5205 = !DILocation(line: 305, column: 28, scope: !5162)
!5206 = !DILocation(line: 305, column: 2, scope: !5162)
!5207 = !DILocation(line: 305, column: 26, scope: !5162)
!5208 = !DILocation(line: 306, column: 7, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 306, column: 6)
!5210 = !DILocation(line: 306, column: 6, scope: !5162)
!5211 = !DILocation(line: 307, column: 7, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 306, column: 32)
!5213 = !DILocation(line: 308, column: 3, scope: !5212)
!5214 = !DILocation(line: 313, column: 4, scope: !5162)
!5215 = !DILocation(line: 314, column: 4, scope: !5162)
!5216 = !DILocation(line: 312, column: 10, scope: !5162)
!5217 = !DILocation(line: 312, column: 8, scope: !5162)
!5218 = !DILocation(line: 315, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 315, column: 6)
!5220 = !DILocation(line: 315, column: 6, scope: !5162)
!5221 = !DILocation(line: 316, column: 7, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 315, column: 14)
!5223 = !DILocation(line: 317, column: 3, scope: !5222)
!5224 = !DILabel(scope: !5162, name: "done", file: !3, line: 320)
!5225 = !DILocation(line: 320, column: 1, scope: !5162)
!5226 = !DILocation(line: 321, column: 9, scope: !5162)
!5227 = !DILocation(line: 321, column: 2, scope: !5162)
!5228 = !DILabel(scope: !5162, name: "remove_dev_dir", file: !3, line: 323)
!5229 = !DILocation(line: 323, column: 1, scope: !5162)
!5230 = !DILocation(line: 324, column: 20, scope: !5162)
!5231 = !DILocation(line: 325, column: 6, scope: !5162)
!5232 = !DILocation(line: 324, column: 2, scope: !5162)
!5233 = !DILocation(line: 326, column: 2, scope: !5162)
!5234 = !DILocation(line: 326, column: 26, scope: !5162)
!5235 = !DILabel(scope: !5162, name: "remove_lid_dir", file: !3, line: 327)
!5236 = !DILocation(line: 327, column: 1, scope: !5162)
!5237 = !DILocation(line: 328, column: 46, scope: !5162)
!5238 = !DILocation(line: 328, column: 2, scope: !5162)
!5239 = !DILocation(line: 329, column: 15, scope: !5162)
!5240 = !DILocation(line: 329, column: 2, scope: !5162)
!5241 = !DILabel(scope: !5162, name: "remove_button_dir", file: !3, line: 330)
!5242 = !DILocation(line: 330, column: 1, scope: !5162)
!5243 = !DILocation(line: 331, column: 39, scope: !5162)
!5244 = !DILocation(line: 331, column: 2, scope: !5162)
!5245 = !DILocation(line: 332, column: 18, scope: !5162)
!5246 = !DILocation(line: 333, column: 2, scope: !5162)
!5247 = !DILocation(line: 334, column: 1, scope: !5162)
!5248 = distinct !DISubprogram(name: "input_set_drvdata", scope: !4311, file: !4311, line: 371, type: !5249, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{null, !4309, !117}
!5251 = !DILocalVariable(name: "dev", arg: 1, scope: !5248, file: !4311, line: 371, type: !4309)
!5252 = !DILocation(line: 371, column: 56, scope: !5248)
!5253 = !DILocalVariable(name: "data", arg: 2, scope: !5248, file: !4311, line: 371, type: !117)
!5254 = !DILocation(line: 371, column: 67, scope: !5248)
!5255 = !DILocation(line: 373, column: 19, scope: !5248)
!5256 = !DILocation(line: 373, column: 24, scope: !5248)
!5257 = !DILocation(line: 373, column: 29, scope: !5248)
!5258 = !DILocation(line: 373, column: 2, scope: !5248)
!5259 = !DILocation(line: 374, column: 1, scope: !5248)
!5260 = distinct !DISubprogram(name: "acpi_button_remove_fs", scope: !3, file: !3, line: 336, type: !3946, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5261 = !DILocalVariable(name: "device", arg: 1, scope: !5260, file: !3, line: 336, type: !120)
!5262 = !DILocation(line: 336, column: 54, scope: !5260)
!5263 = !DILocalVariable(name: "button", scope: !5260, file: !3, line: 338, type: !4304)
!5264 = !DILocation(line: 338, column: 22, scope: !5260)
!5265 = !DILocation(line: 338, column: 48, scope: !5260)
!5266 = !DILocation(line: 338, column: 31, scope: !5260)
!5267 = !DILocation(line: 340, column: 6, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 340, column: 6)
!5269 = !DILocation(line: 340, column: 14, scope: !5268)
!5270 = !DILocation(line: 340, column: 19, scope: !5268)
!5271 = !DILocation(line: 340, column: 6, scope: !5260)
!5272 = !DILocation(line: 341, column: 3, scope: !5268)
!5273 = !DILocation(line: 344, column: 6, scope: !5260)
!5274 = !DILocation(line: 343, column: 2, scope: !5260)
!5275 = !DILocation(line: 345, column: 20, scope: !5260)
!5276 = !DILocation(line: 346, column: 6, scope: !5260)
!5277 = !DILocation(line: 345, column: 2, scope: !5260)
!5278 = !DILocation(line: 347, column: 2, scope: !5260)
!5279 = !DILocation(line: 347, column: 26, scope: !5260)
!5280 = !DILocation(line: 348, column: 46, scope: !5260)
!5281 = !DILocation(line: 348, column: 2, scope: !5260)
!5282 = !DILocation(line: 349, column: 15, scope: !5260)
!5283 = !DILocation(line: 350, column: 39, scope: !5260)
!5284 = !DILocation(line: 350, column: 2, scope: !5260)
!5285 = !DILocation(line: 351, column: 18, scope: !5260)
!5286 = !DILocation(line: 353, column: 2, scope: !5260)
!5287 = !DILocation(line: 354, column: 1, scope: !5260)
!5288 = distinct !DISubprogram(name: "get_order", scope: !5289, file: !5289, line: 29, type: !5290, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5289 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!113, !119}
!5292 = !DILocalVariable(name: "x", arg: 1, scope: !5293, file: !5294, line: 366, type: !374)
!5293 = distinct !DISubprogram(name: "fls64", scope: !5294, file: !5294, line: 366, type: !5295, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5294 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!113, !374}
!5297 = !DILocation(line: 366, column: 40, scope: !5293, inlinedAt: !5298)
!5298 = distinct !DILocation(line: 46, column: 9, scope: !5288)
!5299 = !DILocalVariable(name: "bitpos", scope: !5293, file: !5294, line: 368, type: !113)
!5300 = !DILocation(line: 368, column: 6, scope: !5293, inlinedAt: !5298)
!5301 = !DILocalVariable(name: "size", arg: 1, scope: !5288, file: !5289, line: 29, type: !119)
!5302 = !DILocation(line: 29, column: 63, scope: !5288)
!5303 = !DILocation(line: 31, column: 27, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5288, file: !5289, line: 31, column: 6)
!5305 = !DILocation(line: 31, column: 6, scope: !5304)
!5306 = !DILocation(line: 31, column: 6, scope: !5288)
!5307 = !DILocation(line: 32, column: 8, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5309, file: !5289, line: 32, column: 7)
!5309 = distinct !DILexicalBlock(scope: !5304, file: !5289, line: 31, column: 34)
!5310 = !DILocation(line: 32, column: 7, scope: !5309)
!5311 = !DILocation(line: 33, column: 4, scope: !5308)
!5312 = !DILocation(line: 35, column: 7, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5309, file: !5289, line: 35, column: 7)
!5314 = !DILocation(line: 35, column: 12, scope: !5313)
!5315 = !DILocation(line: 35, column: 7, scope: !5309)
!5316 = !DILocation(line: 36, column: 4, scope: !5313)
!5317 = !DILocation(line: 38, column: 10, scope: !5309)
!5318 = !DILocation(line: 38, column: 28, scope: !5309)
!5319 = !DILocation(line: 38, column: 41, scope: !5309)
!5320 = !DILocation(line: 38, column: 3, scope: !5309)
!5321 = !DILocation(line: 41, column: 6, scope: !5288)
!5322 = !DILocation(line: 42, column: 7, scope: !5288)
!5323 = !DILocation(line: 46, column: 15, scope: !5288)
!5324 = !DILocation(line: 374, column: 2, scope: !5293, inlinedAt: !5298)
!5325 = !DILocation(line: 376, column: 14, scope: !5293, inlinedAt: !5298)
!5326 = !{i32 256871}
!5327 = !DILocation(line: 377, column: 9, scope: !5293, inlinedAt: !5298)
!5328 = !DILocation(line: 377, column: 16, scope: !5293, inlinedAt: !5298)
!5329 = !DILocation(line: 46, column: 2, scope: !5288)
!5330 = !DILocation(line: 48, column: 1, scope: !5288)
!5331 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5332, file: !5332, line: 30, type: !5333, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5332 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!113, !373}
!5335 = !DILocation(line: 366, column: 40, scope: !5293, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 32, column: 9, scope: !5331)
!5337 = !DILocation(line: 368, column: 6, scope: !5293, inlinedAt: !5336)
!5338 = !DILocalVariable(name: "n", arg: 1, scope: !5331, file: !5332, line: 30, type: !373)
!5339 = !DILocation(line: 30, column: 21, scope: !5331)
!5340 = !DILocation(line: 32, column: 15, scope: !5331)
!5341 = !DILocation(line: 374, column: 2, scope: !5293, inlinedAt: !5336)
!5342 = !DILocation(line: 376, column: 14, scope: !5293, inlinedAt: !5336)
!5343 = !DILocation(line: 377, column: 9, scope: !5293, inlinedAt: !5336)
!5344 = !DILocation(line: 377, column: 16, scope: !5293, inlinedAt: !5336)
!5345 = !DILocation(line: 32, column: 18, scope: !5331)
!5346 = !DILocation(line: 32, column: 2, scope: !5331)
!5347 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5348, file: !5348, line: 137, type: !5349, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5348 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!117, !930, !159, !274, !115}
!5351 = !DILocalVariable(name: "s", arg: 1, scope: !5347, file: !5348, line: 137, type: !930)
!5352 = !DILocation(line: 137, column: 54, scope: !5347)
!5353 = !DILocalVariable(name: "object", arg: 2, scope: !5347, file: !5348, line: 137, type: !159)
!5354 = !DILocation(line: 137, column: 69, scope: !5347)
!5355 = !DILocalVariable(name: "size", arg: 3, scope: !5347, file: !5348, line: 138, type: !274)
!5356 = !DILocation(line: 138, column: 12, scope: !5347)
!5357 = !DILocalVariable(name: "flags", arg: 4, scope: !5347, file: !5348, line: 138, type: !115)
!5358 = !DILocation(line: 138, column: 24, scope: !5347)
!5359 = !DILocation(line: 140, column: 17, scope: !5347)
!5360 = !DILocation(line: 140, column: 2, scope: !5347)
!5361 = distinct !DISubprogram(name: "input_get_drvdata", scope: !4311, file: !4311, line: 366, type: !5362, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!117, !4309}
!5364 = !DILocalVariable(name: "dev", arg: 1, scope: !5361, file: !4311, line: 366, type: !4309)
!5365 = !DILocation(line: 366, column: 57, scope: !5361)
!5366 = !DILocation(line: 368, column: 26, scope: !5361)
!5367 = !DILocation(line: 368, column: 31, scope: !5361)
!5368 = !DILocation(line: 368, column: 9, scope: !5361)
!5369 = !DILocation(line: 368, column: 2, scope: !5361)
!5370 = distinct !DISubprogram(name: "acpi_driver_data", scope: !122, file: !122, line: 443, type: !5371, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!117, !120}
!5373 = !DILocalVariable(name: "d", arg: 1, scope: !5370, file: !122, line: 443, type: !120)
!5374 = !DILocation(line: 443, column: 58, scope: !5370)
!5375 = !DILocation(line: 445, column: 9, scope: !5370)
!5376 = !DILocation(line: 445, column: 12, scope: !5370)
!5377 = !DILocation(line: 445, column: 2, scope: !5370)
!5378 = distinct !DISubprogram(name: "acpi_lid_initialize_state", scope: !3, file: !3, line: 383, type: !3936, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5379 = !DILocalVariable(name: "device", arg: 1, scope: !5378, file: !3, line: 383, type: !120)
!5380 = !DILocation(line: 383, column: 59, scope: !5378)
!5381 = !DILocalVariable(name: "button", scope: !5378, file: !3, line: 385, type: !4304)
!5382 = !DILocation(line: 385, column: 22, scope: !5378)
!5383 = !DILocation(line: 385, column: 48, scope: !5378)
!5384 = !DILocation(line: 385, column: 31, scope: !5378)
!5385 = !DILocation(line: 387, column: 10, scope: !5378)
!5386 = !DILocation(line: 387, column: 2, scope: !5378)
!5387 = !DILocation(line: 389, column: 31, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 387, column: 26)
!5389 = !DILocation(line: 389, column: 9, scope: !5388)
!5390 = !DILocation(line: 390, column: 3, scope: !5388)
!5391 = !DILocation(line: 392, column: 31, scope: !5388)
!5392 = !DILocation(line: 392, column: 9, scope: !5388)
!5393 = !DILocation(line: 393, column: 3, scope: !5388)
!5394 = !DILocation(line: 396, column: 3, scope: !5388)
!5395 = !DILocation(line: 399, column: 2, scope: !5378)
!5396 = !DILocation(line: 399, column: 10, scope: !5378)
!5397 = !DILocation(line: 399, column: 32, scope: !5378)
!5398 = !DILocation(line: 400, column: 1, scope: !5378)
!5399 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !5400, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!117, !161}
!5402 = !DILocalVariable(name: "dev", arg: 1, scope: !5399, file: !60, line: 655, type: !161)
!5403 = !DILocation(line: 655, column: 58, scope: !5399)
!5404 = !DILocation(line: 657, column: 9, scope: !5399)
!5405 = !DILocation(line: 657, column: 14, scope: !5399)
!5406 = !DILocation(line: 657, column: 2, scope: !5399)
!5407 = !DILocalVariable(name: "device", arg: 1, scope: !4140, file: !3, line: 183, type: !120)
!5408 = !DILocation(line: 183, column: 54, scope: !4140)
!5409 = !DILocalVariable(name: "state", arg: 2, scope: !4140, file: !3, line: 183, type: !113)
!5410 = !DILocation(line: 183, column: 66, scope: !4140)
!5411 = !DILocalVariable(name: "button", scope: !4140, file: !3, line: 185, type: !4304)
!5412 = !DILocation(line: 185, column: 22, scope: !4140)
!5413 = !DILocation(line: 185, column: 48, scope: !4140)
!5414 = !DILocation(line: 185, column: 31, scope: !4140)
!5415 = !DILocalVariable(name: "next_report", scope: !4140, file: !3, line: 186, type: !1210)
!5416 = !DILocation(line: 186, column: 10, scope: !4140)
!5417 = !DILocalVariable(name: "do_update", scope: !4140, file: !3, line: 187, type: !151)
!5418 = !DILocation(line: 187, column: 7, scope: !4140)
!5419 = !DILocation(line: 196, column: 6, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 196, column: 6)
!5421 = !DILocation(line: 196, column: 21, scope: !5420)
!5422 = !DILocation(line: 196, column: 52, scope: !5420)
!5423 = !DILocation(line: 197, column: 6, scope: !5420)
!5424 = !DILocation(line: 197, column: 14, scope: !5420)
!5425 = !DILocation(line: 197, column: 30, scope: !5420)
!5426 = !DILocation(line: 197, column: 29, scope: !5420)
!5427 = !DILocation(line: 197, column: 28, scope: !5420)
!5428 = !DILocation(line: 197, column: 25, scope: !5420)
!5429 = !DILocation(line: 196, column: 6, scope: !4140)
!5430 = !DILocation(line: 198, column: 13, scope: !5420)
!5431 = !DILocation(line: 198, column: 3, scope: !5420)
!5432 = !DILocation(line: 200, column: 13, scope: !5420)
!5433 = !DILocation(line: 202, column: 16, scope: !4140)
!5434 = !DILocation(line: 202, column: 14, scope: !4140)
!5435 = !DILocation(line: 204, column: 6, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 204, column: 6)
!5437 = !DILocation(line: 204, column: 14, scope: !5436)
!5438 = !DILocation(line: 204, column: 30, scope: !5436)
!5439 = !DILocation(line: 204, column: 29, scope: !5436)
!5440 = !DILocation(line: 204, column: 28, scope: !5436)
!5441 = !DILocation(line: 204, column: 25, scope: !5436)
!5442 = !DILocation(line: 204, column: 36, scope: !5436)
!5443 = !DILocation(line: 205, column: 18, scope: !5436)
!5444 = !DILocation(line: 205, column: 31, scope: !5436)
!5445 = !DILocation(line: 205, column: 6, scope: !5436)
!5446 = !DILocation(line: 204, column: 6, scope: !4140)
!5447 = !DILocalVariable(name: "__ret_print_once", scope: !5448, file: !3, line: 207, type: !151)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 207, column: 3)
!5449 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 205, column: 45)
!5450 = !DILocation(line: 207, column: 3, scope: !5448)
!5451 = !DILocation(line: 207, column: 3, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 207, column: 3)
!5453 = !DILocation(line: 207, column: 3, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 207, column: 3)
!5455 = !DILocation(line: 235, column: 7, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 235, column: 7)
!5457 = !DILocation(line: 235, column: 22, scope: !5456)
!5458 = !DILocation(line: 235, column: 7, scope: !5449)
!5459 = !DILocation(line: 236, column: 14, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 235, column: 54)
!5461 = !DILocation(line: 245, column: 9, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 245, column: 8)
!5463 = !DILocation(line: 245, column: 8, scope: !5460)
!5464 = !DILocation(line: 246, column: 25, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 245, column: 16)
!5466 = !DILocation(line: 246, column: 33, scope: !5465)
!5467 = !DILocation(line: 247, column: 19, scope: !5465)
!5468 = !DILocation(line: 246, column: 5, scope: !5465)
!5469 = !DILocation(line: 248, column: 16, scope: !5465)
!5470 = !DILocation(line: 248, column: 24, scope: !5465)
!5471 = !DILocation(line: 248, column: 5, scope: !5465)
!5472 = !DILocation(line: 249, column: 4, scope: !5465)
!5473 = !DILocation(line: 250, column: 3, scope: !5460)
!5474 = !DILocation(line: 251, column: 2, scope: !5449)
!5475 = !DILocation(line: 253, column: 6, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 253, column: 6)
!5477 = !DILocation(line: 253, column: 6, scope: !4140)
!5478 = !DILocation(line: 254, column: 3, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 254, column: 3)
!5480 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 254, column: 3)
!5481 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 253, column: 17)
!5482 = !DILocation(line: 254, column: 3, scope: !5480)
!5483 = !DILocation(line: 256, column: 23, scope: !5481)
!5484 = !DILocation(line: 256, column: 31, scope: !5481)
!5485 = !DILocation(line: 256, column: 47, scope: !5481)
!5486 = !DILocation(line: 256, column: 46, scope: !5481)
!5487 = !DILocation(line: 256, column: 3, scope: !5481)
!5488 = !DILocation(line: 257, column: 14, scope: !5481)
!5489 = !DILocation(line: 257, column: 22, scope: !5481)
!5490 = !DILocation(line: 257, column: 3, scope: !5481)
!5491 = !DILocation(line: 258, column: 26, scope: !5481)
!5492 = !DILocation(line: 258, column: 25, scope: !5481)
!5493 = !DILocation(line: 258, column: 24, scope: !5481)
!5494 = !DILocation(line: 258, column: 3, scope: !5481)
!5495 = !DILocation(line: 258, column: 11, scope: !5481)
!5496 = !DILocation(line: 258, column: 22, scope: !5481)
!5497 = !DILocation(line: 259, column: 23, scope: !5481)
!5498 = !DILocation(line: 259, column: 3, scope: !5481)
!5499 = !DILocation(line: 259, column: 11, scope: !5481)
!5500 = !DILocation(line: 259, column: 21, scope: !5481)
!5501 = !DILocation(line: 260, column: 2, scope: !5481)
!5502 = !DILocation(line: 262, column: 2, scope: !4140)
!5503 = distinct !DISubprogram(name: "acpi_lid_update_state", scope: !3, file: !3, line: 368, type: !5504, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{!113, !120, !151}
!5506 = !DILocalVariable(name: "device", arg: 1, scope: !5503, file: !3, line: 368, type: !120)
!5507 = !DILocation(line: 368, column: 54, scope: !5503)
!5508 = !DILocalVariable(name: "signal_wakeup", arg: 2, scope: !5503, file: !3, line: 369, type: !151)
!5509 = !DILocation(line: 369, column: 11, scope: !5503)
!5510 = !DILocalVariable(name: "state", scope: !5503, file: !3, line: 371, type: !113)
!5511 = !DILocation(line: 371, column: 6, scope: !5503)
!5512 = !DILocation(line: 373, column: 34, scope: !5503)
!5513 = !DILocation(line: 373, column: 10, scope: !5503)
!5514 = !DILocation(line: 373, column: 8, scope: !5503)
!5515 = !DILocation(line: 374, column: 6, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 374, column: 6)
!5517 = !DILocation(line: 374, column: 12, scope: !5516)
!5518 = !DILocation(line: 374, column: 6, scope: !5503)
!5519 = !DILocation(line: 375, column: 10, scope: !5516)
!5520 = !DILocation(line: 375, column: 3, scope: !5516)
!5521 = !DILocation(line: 377, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 377, column: 6)
!5523 = !DILocation(line: 377, column: 12, scope: !5522)
!5524 = !DILocation(line: 377, column: 15, scope: !5522)
!5525 = !DILocation(line: 377, column: 6, scope: !5503)
!5526 = !DILocation(line: 378, column: 25, scope: !5522)
!5527 = !DILocation(line: 378, column: 33, scope: !5522)
!5528 = !DILocation(line: 378, column: 3, scope: !5522)
!5529 = !DILocation(line: 380, column: 31, scope: !5503)
!5530 = !DILocation(line: 380, column: 39, scope: !5503)
!5531 = !DILocation(line: 380, column: 9, scope: !5503)
!5532 = !DILocation(line: 380, column: 2, scope: !5503)
!5533 = !DILocation(line: 381, column: 1, scope: !5503)
!5534 = distinct !DISubprogram(name: "ms_to_ktime", scope: !1211, file: !1211, line: 227, type: !5535, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5535 = !DISubroutineType(types: !5536)
!5536 = !{!1210, !373}
!5537 = !DILocalVariable(name: "ms", arg: 1, scope: !5534, file: !1211, line: 227, type: !373)
!5538 = !DILocation(line: 227, column: 39, scope: !5534)
!5539 = !DILocation(line: 229, column: 9, scope: !5534)
!5540 = !DILocation(line: 229, column: 12, scope: !5534)
!5541 = !DILocation(line: 229, column: 2, scope: !5534)
!5542 = distinct !DISubprogram(name: "ktime_after", scope: !1211, file: !1211, line: 111, type: !5543, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5543 = !DISubroutineType(types: !5544)
!5544 = !{!151, !5545, !5545}
!5545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!5546 = !DILocalVariable(name: "cmp1", arg: 1, scope: !5542, file: !1211, line: 111, type: !5545)
!5547 = !DILocation(line: 111, column: 46, scope: !5542)
!5548 = !DILocalVariable(name: "cmp2", arg: 2, scope: !5542, file: !1211, line: 111, type: !5545)
!5549 = !DILocation(line: 111, column: 66, scope: !5542)
!5550 = !DILocation(line: 113, column: 23, scope: !5542)
!5551 = !DILocation(line: 113, column: 29, scope: !5542)
!5552 = !DILocation(line: 113, column: 9, scope: !5542)
!5553 = !DILocation(line: 113, column: 35, scope: !5542)
!5554 = !DILocation(line: 113, column: 2, scope: !5542)
!5555 = distinct !DISubprogram(name: "input_report_switch", scope: !4311, file: !4311, line: 435, type: !5556, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5556 = !DISubroutineType(types: !5557)
!5557 = !{null, !4309, !7, !113}
!5558 = !DILocalVariable(name: "dev", arg: 1, scope: !5555, file: !4311, line: 435, type: !4309)
!5559 = !DILocation(line: 435, column: 58, scope: !5555)
!5560 = !DILocalVariable(name: "code", arg: 2, scope: !5555, file: !4311, line: 435, type: !7)
!5561 = !DILocation(line: 435, column: 76, scope: !5555)
!5562 = !DILocalVariable(name: "value", arg: 3, scope: !5555, file: !4311, line: 435, type: !113)
!5563 = !DILocation(line: 435, column: 86, scope: !5555)
!5564 = !DILocation(line: 437, column: 14, scope: !5555)
!5565 = !DILocation(line: 437, column: 26, scope: !5555)
!5566 = !DILocation(line: 437, column: 34, scope: !5555)
!5567 = !DILocation(line: 437, column: 33, scope: !5555)
!5568 = !DILocation(line: 437, column: 32, scope: !5555)
!5569 = !DILocation(line: 437, column: 2, scope: !5555)
!5570 = !DILocation(line: 438, column: 1, scope: !5555)
!5571 = distinct !DISubprogram(name: "input_sync", scope: !4311, file: !4311, line: 440, type: !4484, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5572 = !DILocalVariable(name: "dev", arg: 1, scope: !5571, file: !4311, line: 440, type: !4309)
!5573 = !DILocation(line: 440, column: 49, scope: !5571)
!5574 = !DILocation(line: 442, column: 14, scope: !5571)
!5575 = !DILocation(line: 442, column: 2, scope: !5571)
!5576 = !DILocation(line: 443, column: 1, scope: !5571)
!5577 = distinct !DISubprogram(name: "ktime_compare", scope: !1211, file: !1211, line: 95, type: !5578, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!113, !5545, !5545}
!5580 = !DILocalVariable(name: "cmp1", arg: 1, scope: !5577, file: !1211, line: 95, type: !5545)
!5581 = !DILocation(line: 95, column: 47, scope: !5577)
!5582 = !DILocalVariable(name: "cmp2", arg: 2, scope: !5577, file: !1211, line: 95, type: !5545)
!5583 = !DILocation(line: 95, column: 67, scope: !5577)
!5584 = !DILocation(line: 97, column: 6, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5577, file: !1211, line: 97, column: 6)
!5586 = !DILocation(line: 97, column: 13, scope: !5585)
!5587 = !DILocation(line: 97, column: 11, scope: !5585)
!5588 = !DILocation(line: 97, column: 6, scope: !5577)
!5589 = !DILocation(line: 98, column: 3, scope: !5585)
!5590 = !DILocation(line: 99, column: 6, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5577, file: !1211, line: 99, column: 6)
!5592 = !DILocation(line: 99, column: 13, scope: !5591)
!5593 = !DILocation(line: 99, column: 11, scope: !5591)
!5594 = !DILocation(line: 99, column: 6, scope: !5577)
!5595 = !DILocation(line: 100, column: 3, scope: !5591)
!5596 = !DILocation(line: 101, column: 2, scope: !5577)
!5597 = !DILocation(line: 102, column: 1, scope: !5577)
!5598 = distinct !DISubprogram(name: "acpi_button_state_seq_show", scope: !3, file: !3, line: 265, type: !709, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5599 = !DILocalVariable(name: "seq", arg: 1, scope: !5598, file: !3, line: 265, type: !664)
!5600 = !DILocation(line: 265, column: 71, scope: !5598)
!5601 = !DILocalVariable(name: "offset", arg: 2, scope: !5598, file: !3, line: 266, type: !117)
!5602 = !DILocation(line: 266, column: 18, scope: !5598)
!5603 = !DILocalVariable(name: "device", scope: !5598, file: !3, line: 268, type: !120)
!5604 = !DILocation(line: 268, column: 22, scope: !5598)
!5605 = !DILocation(line: 268, column: 31, scope: !5598)
!5606 = !DILocation(line: 268, column: 36, scope: !5598)
!5607 = !DILocalVariable(name: "state", scope: !5598, file: !3, line: 269, type: !113)
!5608 = !DILocation(line: 269, column: 6, scope: !5598)
!5609 = !DILocation(line: 271, column: 34, scope: !5598)
!5610 = !DILocation(line: 271, column: 10, scope: !5598)
!5611 = !DILocation(line: 271, column: 8, scope: !5598)
!5612 = !DILocation(line: 272, column: 13, scope: !5598)
!5613 = !DILocation(line: 273, column: 6, scope: !5598)
!5614 = !DILocation(line: 273, column: 12, scope: !5598)
!5615 = !DILocation(line: 273, column: 35, scope: !5598)
!5616 = !DILocation(line: 272, column: 2, scope: !5598)
!5617 = !DILocation(line: 274, column: 2, scope: !5598)
!5618 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !5619, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{null, !3209, !117}
!5621 = !DILocalVariable(name: "dev", arg: 1, scope: !5618, file: !60, line: 660, type: !3209)
!5622 = !DILocation(line: 660, column: 51, scope: !5618)
!5623 = !DILocalVariable(name: "data", arg: 2, scope: !5618, file: !60, line: 660, type: !117)
!5624 = !DILocation(line: 660, column: 62, scope: !5618)
!5625 = !DILocation(line: 662, column: 21, scope: !5618)
!5626 = !DILocation(line: 662, column: 2, scope: !5618)
!5627 = !DILocation(line: 662, column: 7, scope: !5618)
!5628 = !DILocation(line: 662, column: 19, scope: !5618)
!5629 = !DILocation(line: 663, column: 1, scope: !5618)
!5630 = distinct !DISubprogram(name: "test_bit", scope: !5631, file: !5631, line: 132, type: !5632, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5631 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!151, !114, !5634}
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5636)
!5636 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !119)
!5637 = !DILocalVariable(name: "nr", arg: 1, scope: !5638, file: !5294, line: 210, type: !114)
!5638 = distinct !DISubprogram(name: "variable_test_bit", scope: !5294, file: !5294, line: 210, type: !5632, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5639 = !DILocation(line: 210, column: 52, scope: !5638, inlinedAt: !5640)
!5640 = distinct !DILocation(line: 135, column: 9, scope: !5630)
!5641 = !DILocalVariable(name: "addr", arg: 2, scope: !5638, file: !5294, line: 210, type: !5634)
!5642 = !DILocation(line: 210, column: 86, scope: !5638, inlinedAt: !5640)
!5643 = !DILocalVariable(name: "oldbit", scope: !5638, file: !5294, line: 212, type: !151)
!5644 = !DILocation(line: 212, column: 7, scope: !5638, inlinedAt: !5640)
!5645 = !DILocalVariable(name: "nr", arg: 1, scope: !5646, file: !5294, line: 204, type: !114)
!5646 = distinct !DISubprogram(name: "constant_test_bit", scope: !5294, file: !5294, line: 204, type: !5632, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5647 = !DILocation(line: 204, column: 52, scope: !5646, inlinedAt: !5648)
!5648 = distinct !DILocation(line: 135, column: 9, scope: !5630)
!5649 = !DILocalVariable(name: "addr", arg: 2, scope: !5646, file: !5294, line: 204, type: !5634)
!5650 = !DILocation(line: 204, column: 86, scope: !5646, inlinedAt: !5648)
!5651 = !DILocalVariable(name: "v", arg: 1, scope: !5652, file: !5653, line: 69, type: !5656)
!5652 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5653, file: !5653, line: 69, type: !5654, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5653 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5654 = !DISubroutineType(types: !5655)
!5655 = !{null, !5656, !274}
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5658)
!5658 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5659 = !DILocation(line: 69, column: 73, scope: !5652, inlinedAt: !5660)
!5660 = distinct !DILocation(line: 134, column: 2, scope: !5630)
!5661 = !DILocalVariable(name: "size", arg: 2, scope: !5652, file: !5653, line: 69, type: !274)
!5662 = !DILocation(line: 69, column: 83, scope: !5652, inlinedAt: !5660)
!5663 = !DILocalVariable(name: "nr", arg: 1, scope: !5630, file: !5631, line: 132, type: !114)
!5664 = !DILocation(line: 132, column: 34, scope: !5630)
!5665 = !DILocalVariable(name: "addr", arg: 2, scope: !5630, file: !5631, line: 132, type: !5634)
!5666 = !DILocation(line: 132, column: 68, scope: !5630)
!5667 = !DILocation(line: 134, column: 25, scope: !5630)
!5668 = !DILocation(line: 134, column: 32, scope: !5630)
!5669 = !DILocation(line: 134, column: 30, scope: !5630)
!5670 = !DILocation(line: 71, column: 19, scope: !5652, inlinedAt: !5660)
!5671 = !DILocation(line: 71, column: 22, scope: !5652, inlinedAt: !5660)
!5672 = !DILocation(line: 71, column: 2, scope: !5652, inlinedAt: !5660)
!5673 = !DILocation(line: 72, column: 2, scope: !5652, inlinedAt: !5660)
!5674 = !DILocation(line: 135, column: 9, scope: !5630)
!5675 = !DILocation(line: 206, column: 19, scope: !5646, inlinedAt: !5648)
!5676 = !DILocation(line: 206, column: 22, scope: !5646, inlinedAt: !5648)
!5677 = !DILocation(line: 206, column: 15, scope: !5646, inlinedAt: !5648)
!5678 = !DILocation(line: 207, column: 4, scope: !5646, inlinedAt: !5648)
!5679 = !DILocation(line: 207, column: 9, scope: !5646, inlinedAt: !5648)
!5680 = !DILocation(line: 207, column: 12, scope: !5646, inlinedAt: !5648)
!5681 = !DILocation(line: 206, column: 44, scope: !5646, inlinedAt: !5648)
!5682 = !DILocation(line: 207, column: 37, scope: !5646, inlinedAt: !5648)
!5683 = !DILocation(line: 217, column: 33, scope: !5638, inlinedAt: !5640)
!5684 = !DILocation(line: 217, column: 46, scope: !5638, inlinedAt: !5640)
!5685 = !DILocation(line: 214, column: 2, scope: !5638, inlinedAt: !5640)
!5686 = !{i32 -2147186102, i32 -2147186042}
!5687 = !DILocation(line: 219, column: 9, scope: !5638, inlinedAt: !5640)
!5688 = !DILocation(line: 135, column: 2, scope: !5630)
!5689 = distinct !DISubprogram(name: "input_report_key", scope: !4311, file: !4311, line: 415, type: !5556, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5690 = !DILocalVariable(name: "dev", arg: 1, scope: !5689, file: !4311, line: 415, type: !4309)
!5691 = !DILocation(line: 415, column: 55, scope: !5689)
!5692 = !DILocalVariable(name: "code", arg: 2, scope: !5689, file: !4311, line: 415, type: !7)
!5693 = !DILocation(line: 415, column: 73, scope: !5689)
!5694 = !DILocalVariable(name: "value", arg: 3, scope: !5689, file: !4311, line: 415, type: !113)
!5695 = !DILocation(line: 415, column: 83, scope: !5689)
!5696 = !DILocation(line: 417, column: 14, scope: !5689)
!5697 = !DILocation(line: 417, column: 27, scope: !5689)
!5698 = !DILocation(line: 417, column: 35, scope: !5689)
!5699 = !DILocation(line: 417, column: 34, scope: !5689)
!5700 = !DILocation(line: 417, column: 33, scope: !5689)
!5701 = !DILocation(line: 417, column: 2, scope: !5689)
!5702 = !DILocation(line: 418, column: 1, scope: !5689)
!5703 = distinct !DISubprogram(name: "dev_name", scope: !60, file: !60, line: 609, type: !5704, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!170, !161}
!5706 = !DILocalVariable(name: "dev", arg: 1, scope: !5703, file: !60, line: 609, type: !161)
!5707 = !DILocation(line: 609, column: 57, scope: !5703)
!5708 = !DILocation(line: 612, column: 6, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5703, file: !60, line: 612, column: 6)
!5710 = !DILocation(line: 612, column: 11, scope: !5709)
!5711 = !DILocation(line: 612, column: 6, scope: !5703)
!5712 = !DILocation(line: 613, column: 10, scope: !5709)
!5713 = !DILocation(line: 613, column: 15, scope: !5709)
!5714 = !DILocation(line: 613, column: 3, scope: !5709)
!5715 = !DILocation(line: 615, column: 23, scope: !5703)
!5716 = !DILocation(line: 615, column: 28, scope: !5703)
!5717 = !DILocation(line: 615, column: 9, scope: !5703)
!5718 = !DILocation(line: 615, column: 2, scope: !5703)
!5719 = !DILocation(line: 616, column: 1, scope: !5703)
!5720 = distinct !DISubprogram(name: "kasan_check_read", scope: !5721, file: !5721, line: 34, type: !5722, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5721 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5722 = !DISubroutineType(types: !5723)
!5723 = !{!151, !5656, !7}
!5724 = !DILocalVariable(name: "p", arg: 1, scope: !5720, file: !5721, line: 34, type: !5656)
!5725 = !DILocation(line: 34, column: 58, scope: !5720)
!5726 = !DILocalVariable(name: "size", arg: 2, scope: !5720, file: !5721, line: 34, type: !7)
!5727 = !DILocation(line: 34, column: 74, scope: !5720)
!5728 = !DILocation(line: 36, column: 2, scope: !5720)
!5729 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5730, file: !5730, line: 178, type: !5731, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5730 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5731 = !DISubroutineType(types: !5732)
!5732 = !{null, !5656, !274, !113}
!5733 = !DILocalVariable(name: "ptr", arg: 1, scope: !5729, file: !5730, line: 178, type: !5656)
!5734 = !DILocation(line: 178, column: 60, scope: !5729)
!5735 = !DILocalVariable(name: "size", arg: 2, scope: !5729, file: !5730, line: 178, type: !274)
!5736 = !DILocation(line: 178, column: 72, scope: !5729)
!5737 = !DILocalVariable(name: "type", arg: 3, scope: !5729, file: !5730, line: 179, type: !113)
!5738 = !DILocation(line: 179, column: 15, scope: !5729)
!5739 = !DILocation(line: 179, column: 23, scope: !5729)
!5740 = distinct !DISubprogram(name: "kobject_name", scope: !167, file: !167, line: 88, type: !5741, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{!170, !5743}
!5743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5744, size: 64)
!5744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!5745 = !DILocalVariable(name: "kobj", arg: 1, scope: !5740, file: !167, line: 88, type: !5743)
!5746 = !DILocation(line: 88, column: 62, scope: !5740)
!5747 = !DILocation(line: 90, column: 9, scope: !5740)
!5748 = !DILocation(line: 90, column: 15, scope: !5740)
!5749 = !DILocation(line: 90, column: 2, scope: !5740)
!5750 = distinct !DISubprogram(name: "acpi_button_suspend", scope: !3, file: !3, line: 444, type: !3241, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5751 = !DILocalVariable(name: "dev", arg: 1, scope: !5750, file: !3, line: 444, type: !3209)
!5752 = !DILocation(line: 444, column: 47, scope: !5750)
!5753 = !DILocalVariable(name: "device", scope: !5750, file: !3, line: 446, type: !120)
!5754 = !DILocation(line: 446, column: 22, scope: !5750)
!5755 = !DILocalVariable(name: "__mptr", scope: !5756, file: !3, line: 446, type: !117)
!5756 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 446, column: 31)
!5757 = !DILocation(line: 446, column: 31, scope: !5756)
!5758 = !DILocation(line: 446, column: 31, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5756, file: !3, line: 446, column: 31)
!5760 = !DILocalVariable(name: "button", scope: !5750, file: !3, line: 447, type: !4304)
!5761 = !DILocation(line: 447, column: 22, scope: !5750)
!5762 = !DILocation(line: 447, column: 48, scope: !5750)
!5763 = !DILocation(line: 447, column: 31, scope: !5750)
!5764 = !DILocation(line: 449, column: 2, scope: !5750)
!5765 = !DILocation(line: 449, column: 10, scope: !5750)
!5766 = !DILocation(line: 449, column: 20, scope: !5750)
!5767 = !DILocation(line: 450, column: 2, scope: !5750)
!5768 = distinct !DISubprogram(name: "acpi_button_resume", scope: !3, file: !3, line: 453, type: !3241, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!5769 = !DILocalVariable(name: "dev", arg: 1, scope: !5768, file: !3, line: 453, type: !3209)
!5770 = !DILocation(line: 453, column: 46, scope: !5768)
!5771 = !DILocalVariable(name: "device", scope: !5768, file: !3, line: 455, type: !120)
!5772 = !DILocation(line: 455, column: 22, scope: !5768)
!5773 = !DILocalVariable(name: "__mptr", scope: !5774, file: !3, line: 455, type: !117)
!5774 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 455, column: 31)
!5775 = !DILocation(line: 455, column: 31, scope: !5774)
!5776 = !DILocation(line: 455, column: 31, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 455, column: 31)
!5778 = !DILocalVariable(name: "button", scope: !5768, file: !3, line: 456, type: !4304)
!5779 = !DILocation(line: 456, column: 22, scope: !5768)
!5780 = !DILocation(line: 456, column: 48, scope: !5768)
!5781 = !DILocation(line: 456, column: 31, scope: !5768)
!5782 = !DILocation(line: 458, column: 2, scope: !5768)
!5783 = !DILocation(line: 458, column: 10, scope: !5768)
!5784 = !DILocation(line: 458, column: 20, scope: !5768)
!5785 = !DILocation(line: 459, column: 6, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 459, column: 6)
!5787 = !DILocation(line: 459, column: 14, scope: !5786)
!5788 = !DILocation(line: 459, column: 19, scope: !5786)
!5789 = !DILocation(line: 459, column: 6, scope: !5768)
!5790 = !DILocation(line: 460, column: 50, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 459, column: 44)
!5792 = !DILocation(line: 460, column: 26, scope: !5791)
!5793 = !DILocation(line: 460, column: 25, scope: !5791)
!5794 = !DILocation(line: 460, column: 24, scope: !5791)
!5795 = !DILocation(line: 460, column: 3, scope: !5791)
!5796 = !DILocation(line: 460, column: 11, scope: !5791)
!5797 = !DILocation(line: 460, column: 22, scope: !5791)
!5798 = !DILocation(line: 461, column: 23, scope: !5791)
!5799 = !DILocation(line: 461, column: 3, scope: !5791)
!5800 = !DILocation(line: 461, column: 11, scope: !5791)
!5801 = !DILocation(line: 461, column: 21, scope: !5791)
!5802 = !DILocation(line: 462, column: 29, scope: !5791)
!5803 = !DILocation(line: 462, column: 3, scope: !5791)
!5804 = !DILocation(line: 463, column: 2, scope: !5791)
!5805 = !DILocation(line: 464, column: 2, scope: !5768)
