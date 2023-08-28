; ModuleID = '../bcout/drivers/watchdog/watchdog_core.llvm.bc'
source_filename = "drivers/watchdog/watchdog_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4s.init\22, \22a\22\09"
module asm "__initcall_watchdog_init4s:\09\09\09"
module asm ".long\09watchdog_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.watchdog_device = type { i32, %struct.device*, %struct.attribute_group**, %struct.watchdog_info*, %struct.watchdog_ops*, %struct.watchdog_governor*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, i8*, %struct.watchdog_core_data*, i64, %struct.list_head }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.38, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.38 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.18, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type opaque
%struct.key = type opaque
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
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
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.17, i32, [12 x i8] }
%union.anon.17 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.18 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.19, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.32 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.33, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.36 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i64, i64 }
%union.anon.36 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { %struct.module*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*, i64, i8*)*, i64 (%struct.watchdog_device*, i32, i64)* }
%struct.watchdog_governor = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.watchdog_core_data = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque

@__param_str_stop_on_reboot = internal constant [24 x i8] c"watchdog.stop_on_reboot\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@stop_on_reboot = internal global i32 -1, align 4, !dbg !2220
@__param_stop_on_reboot = internal constant %struct.kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__param_str_stop_on_reboot, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @stop_on_reboot to i8*) } }, section "__param", align 8, !dbg !2121
@__UNIQUE_ID_stop_on_reboottype159 = internal constant [37 x i8] c"watchdog.parmtype=stop_on_reboot:int\00", section ".modinfo", align 1, !dbg !2174
@__UNIQUE_ID_stop_on_reboot160 = internal constant [80 x i8] c"watchdog.parm=stop_on_reboot:Stop watchdogs on reboot (0=keep watching, 1=stop)\00", section ".modinfo", align 1, !dbg !2179
@.str = private unnamed_addr constant [59 x i8] c"\013watchdog: %s: driver supplied timeout (%u) out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"timeout-sec\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\013watchdog: %s: DT supplied timeout (%u) out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\014watchdog: %s: falling back to default timeout (%u)\0A\00", align 1
@wtd_deferred_reg_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @wtd_deferred_reg_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @wtd_deferred_reg_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !2222
@wtd_deferred_reg_done = internal global i8 0, align 1, !dbg !2218
@.str.4 = private unnamed_addr constant [63 x i8] c"\013watchdog: %s: failed to register watchdog device (err = %d)\0A\00", align 1
@watchdog_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !2226
@__UNIQUE_ID___addressable_watchdog_init165 = internal global i8* bitcast (i32 ()* @watchdog_init to i8*), section ".discard.addressable", align 8, !dbg !2184
@__exitcall_watchdog_exit = internal global void ()* @watchdog_exit, section ".exitcall.exit", align 8, !dbg !2186
@__UNIQUE_ID_author166 = internal constant [52 x i8] c"watchdog.author=Alan Cox <alan@lxorguk.ukuu.org.uk>\00", section ".modinfo", align 1, !dbg !2193
@__UNIQUE_ID_author167 = internal constant [49 x i8] c"watchdog.author=Wim Van Sebroeck <wim@iguana.be>\00", section ".modinfo", align 1, !dbg !2198
@__UNIQUE_ID_description168 = internal constant [48 x i8] c"watchdog.description=WatchDog Timer Driver Core\00", section ".modinfo", align 1, !dbg !2203
@__UNIQUE_ID_file169 = internal constant [40 x i8] c"watchdog.file=drivers/watchdog/watchdog\00", section ".modinfo", align 1, !dbg !2208
@__UNIQUE_ID_license170 = internal constant [21 x i8] c"watchdog.license=GPL\00", section ".modinfo", align 1, !dbg !2213
@.str.5 = private unnamed_addr constant [65 x i8] c"\016watchdog: Invalid min and max timeout values, resetting to 0!\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\013watchdog: watchdog%d: Cannot register reboot notifier (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"\014watchdog: watchdog%d: Cannot register restart handler (%d)\0A\00", align 1
@wtd_deferred_reg_list = internal global %struct.list_head { %struct.list_head* @wtd_deferred_reg_list, %struct.list_head* @wtd_deferred_reg_list }, align 8, !dbg !2224
@llvm.used = appending global [11 x i8*] [i8* bitcast (%struct.kernel_param* @__param_stop_on_reboot to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_stop_on_reboottype159, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @__UNIQUE_ID_stop_on_reboot160, i32 0, i32 0), i8* bitcast (void ()* @watchdog_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_watchdog_init165 to i8*), i8* bitcast (void ()** @__exitcall_watchdog_exit to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author166, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author167, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_description168, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file169, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license170, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @watchdog_init_timeout(%struct.watchdog_device* %wdd, i32 %timeout_parm, %struct.device* %dev) #0 !dbg !2239 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %timeout_parm.addr = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %dev_str = alloca i8*, align 8
  %t = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2242, metadata !DIExpression()), !dbg !2243
  store i32 %timeout_parm, i32* %timeout_parm.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout_parm.addr, metadata !2244, metadata !DIExpression()), !dbg !2245
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2246, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.declare(metadata i8** %dev_str, metadata !2248, metadata !DIExpression()), !dbg !2249
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2250
  %parent = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 1, !dbg !2251
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2251
  %tobool = icmp ne %struct.device* %1, null, !dbg !2250
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2250

cond.true:                                        ; preds = %entry
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2252
  %parent1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %2, i32 0, i32 1, !dbg !2253
  %3 = load %struct.device*, %struct.device** %parent1, align 8, !dbg !2253
  %call = call i8* @dev_name(%struct.device* %3) #6, !dbg !2254
  br label %cond.end, !dbg !2250

cond.false:                                       ; preds = %entry
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2255
  %info = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 3, !dbg !2256
  %5 = load %struct.watchdog_info*, %struct.watchdog_info** %info, align 8, !dbg !2256
  %identity = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %5, i32 0, i32 2, !dbg !2257
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %identity, i64 0, i64 0, !dbg !2255
  br label %cond.end, !dbg !2250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %arraydecay, %cond.false ], !dbg !2250
  store i8* %cond, i8** %dev_str, align 8, !dbg !2249
  call void @llvm.dbg.declare(metadata i32* %t, metadata !2258, metadata !DIExpression()), !dbg !2259
  store i32 0, i32* %t, align 4, !dbg !2259
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2260, metadata !DIExpression()), !dbg !2261
  store i32 0, i32* %ret, align 4, !dbg !2261
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2262
  call void @watchdog_check_min_max_timeout(%struct.watchdog_device* %6) #6, !dbg !2263
  %7 = load i32, i32* %timeout_parm.addr, align 4, !dbg !2264
  %tobool2 = icmp ne i32 %7, 0, !dbg !2264
  br i1 %tobool2, label %if.then, label %if.end6, !dbg !2266

if.then:                                          ; preds = %cond.end
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2267
  %9 = load i32, i32* %timeout_parm.addr, align 4, !dbg !2270
  %call3 = call zeroext i1 @watchdog_timeout_invalid(%struct.watchdog_device* %8, i32 %9) #6, !dbg !2271
  br i1 %call3, label %if.end, label %if.then4, !dbg !2272

if.then4:                                         ; preds = %if.then
  %10 = load i32, i32* %timeout_parm.addr, align 4, !dbg !2273
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2275
  %timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 7, !dbg !2276
  store i32 %10, i32* %timeout, align 4, !dbg !2277
  store i32 0, i32* %retval, align 4, !dbg !2278
  br label %return, !dbg !2278

if.end:                                           ; preds = %if.then
  %12 = load i8*, i8** %dev_str, align 8, !dbg !2279
  %13 = load i32, i32* %timeout_parm.addr, align 4, !dbg !2279
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13) #7, !dbg !2279
  store i32 -22, i32* %ret, align 4, !dbg !2280
  br label %if.end6, !dbg !2281

if.end6:                                          ; preds = %if.end, %cond.end
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2282
  %tobool7 = icmp ne %struct.device* %14, null, !dbg !2282
  br i1 %tobool7, label %land.lhs.true, label %if.end20, !dbg !2284

land.lhs.true:                                    ; preds = %if.end6
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2285
  %of_node = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 23, !dbg !2286
  %16 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2286
  %tobool8 = icmp ne %struct.device_node* %16, null, !dbg !2285
  br i1 %tobool8, label %land.lhs.true9, label %if.end20, !dbg !2287

land.lhs.true9:                                   ; preds = %land.lhs.true
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2288
  %of_node10 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 23, !dbg !2289
  %18 = load %struct.device_node*, %struct.device_node** %of_node10, align 8, !dbg !2289
  %call11 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %t) #6, !dbg !2290
  %cmp = icmp eq i32 %call11, 0, !dbg !2291
  br i1 %cmp, label %if.then12, label %if.end20, !dbg !2292

if.then12:                                        ; preds = %land.lhs.true9
  %19 = load i32, i32* %t, align 4, !dbg !2293
  %tobool13 = icmp ne i32 %19, 0, !dbg !2293
  br i1 %tobool13, label %land.lhs.true14, label %if.end18, !dbg !2296

land.lhs.true14:                                  ; preds = %if.then12
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2297
  %21 = load i32, i32* %t, align 4, !dbg !2298
  %call15 = call zeroext i1 @watchdog_timeout_invalid(%struct.watchdog_device* %20, i32 %21) #6, !dbg !2299
  br i1 %call15, label %if.end18, label %if.then16, !dbg !2300

if.then16:                                        ; preds = %land.lhs.true14
  %22 = load i32, i32* %t, align 4, !dbg !2301
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2303
  %timeout17 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %23, i32 0, i32 7, !dbg !2304
  store i32 %22, i32* %timeout17, align 4, !dbg !2305
  store i32 0, i32* %retval, align 4, !dbg !2306
  br label %return, !dbg !2306

if.end18:                                         ; preds = %land.lhs.true14, %if.then12
  %24 = load i8*, i8** %dev_str, align 8, !dbg !2307
  %25 = load i32, i32* %t, align 4, !dbg !2307
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %25) #7, !dbg !2307
  store i32 -22, i32* %ret, align 4, !dbg !2308
  br label %if.end20, !dbg !2309

if.end20:                                         ; preds = %if.end18, %land.lhs.true9, %land.lhs.true, %if.end6
  %26 = load i32, i32* %ret, align 4, !dbg !2310
  %cmp21 = icmp slt i32 %26, 0, !dbg !2312
  br i1 %cmp21, label %land.lhs.true22, label %if.end28, !dbg !2313

land.lhs.true22:                                  ; preds = %if.end20
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2314
  %timeout23 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %27, i32 0, i32 7, !dbg !2315
  %28 = load i32, i32* %timeout23, align 4, !dbg !2315
  %tobool24 = icmp ne i32 %28, 0, !dbg !2314
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !2316

if.then25:                                        ; preds = %land.lhs.true22
  %29 = load i8*, i8** %dev_str, align 8, !dbg !2317
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2317
  %timeout26 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %30, i32 0, i32 7, !dbg !2317
  %31 = load i32, i32* %timeout26, align 4, !dbg !2317
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %29, i32 %31) #7, !dbg !2317
  br label %if.end28, !dbg !2317

if.end28:                                         ; preds = %if.then25, %land.lhs.true22, %if.end20
  %32 = load i32, i32* %ret, align 4, !dbg !2318
  store i32 %32, i32* %retval, align 4, !dbg !2319
  br label %return, !dbg !2319

return:                                           ; preds = %if.end28, %if.then16, %if.then4
  %33 = load i32, i32* %retval, align 4, !dbg !2320
  ret i32 %33, !dbg !2320
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !2321 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2324, metadata !DIExpression()), !dbg !2325
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2326
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2328
  %1 = load i8*, i8** %init_name, align 8, !dbg !2328
  %tobool = icmp ne i8* %1, null, !dbg !2326
  br i1 %tobool, label %if.then, label %if.end, !dbg !2329

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2330
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2331
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2331
  store i8* %3, i8** %retval, align 8, !dbg !2332
  br label %return, !dbg !2332

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2333
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2334
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #6, !dbg !2335
  store i8* %call, i8** %retval, align 8, !dbg !2336
  br label %return, !dbg !2336

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2337
  ret i8* %5, !dbg !2337
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_check_min_max_timeout(%struct.watchdog_device* %wdd) #0 !dbg !2338 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2341, metadata !DIExpression()), !dbg !2342
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2343
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 12, !dbg !2345
  %1 = load i32, i32* %max_hw_heartbeat_ms, align 8, !dbg !2345
  %tobool = icmp ne i32 %1, 0, !dbg !2343
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2346

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2347
  %min_timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %2, i32 0, i32 9, !dbg !2348
  %3 = load i32, i32* %min_timeout, align 4, !dbg !2348
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2349
  %max_timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 10, !dbg !2350
  %5 = load i32, i32* %max_timeout, align 8, !dbg !2350
  %cmp = icmp ugt i32 %3, %5, !dbg !2351
  br i1 %cmp, label %if.then, label %if.end, !dbg !2352

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !2353
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2355
  %min_timeout1 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %6, i32 0, i32 9, !dbg !2356
  store i32 0, i32* %min_timeout1, align 4, !dbg !2357
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2358
  %max_timeout2 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 10, !dbg !2359
  store i32 0, i32* %max_timeout2, align 8, !dbg !2360
  br label %if.end, !dbg !2361

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !2362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_timeout_invalid(%struct.watchdog_device* %wdd, i32 %t) #0 !dbg !2363 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %t.addr = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2366, metadata !DIExpression()), !dbg !2367
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !2368, metadata !DIExpression()), !dbg !2369
  %0 = load i32, i32* %t.addr, align 4, !dbg !2370
  %cmp = icmp ugt i32 %0, 4294967, !dbg !2371
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !2372

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4, !dbg !2373
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2374
  %min_timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %2, i32 0, i32 9, !dbg !2375
  %3 = load i32, i32* %min_timeout, align 4, !dbg !2375
  %cmp1 = icmp ult i32 %1, %3, !dbg !2376
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !2377

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2378
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 12, !dbg !2379
  %5 = load i32, i32* %max_hw_heartbeat_ms, align 8, !dbg !2379
  %tobool = icmp ne i32 %5, 0, !dbg !2378
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !2380

land.lhs.true:                                    ; preds = %lor.rhs
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2381
  %max_timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %6, i32 0, i32 10, !dbg !2382
  %7 = load i32, i32* %max_timeout, align 8, !dbg !2382
  %tobool2 = icmp ne i32 %7, 0, !dbg !2381
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !2383

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %t.addr, align 4, !dbg !2384
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2385
  %max_timeout3 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 10, !dbg !2386
  %10 = load i32, i32* %max_timeout3, align 8, !dbg !2386
  %cmp4 = icmp ugt i32 %8, %10, !dbg !2387
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp4, %land.rhs ], !dbg !2388
  br label %lor.end, !dbg !2377

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %11, %land.end ]
  ret i1 %12, !dbg !2389
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !2390 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2397, metadata !DIExpression()), !dbg !2398
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !2399, metadata !DIExpression()), !dbg !2400
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2401
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2402
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !2403
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #6, !dbg !2404
  ret i32 %call, !dbg !2405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @watchdog_set_restart_priority(%struct.watchdog_device* %wdd, i32 %priority) #0 !dbg !2406 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %priority.addr = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2409, metadata !DIExpression()), !dbg !2410
  store i32 %priority, i32* %priority.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %priority.addr, metadata !2411, metadata !DIExpression()), !dbg !2412
  %0 = load i32, i32* %priority.addr, align 4, !dbg !2413
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2414
  %restart_nb = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 14, !dbg !2415
  %priority1 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %restart_nb, i32 0, i32 2, !dbg !2416
  store i32 %0, i32* %priority1, align 8, !dbg !2417
  ret void, !dbg !2418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @watchdog_register_device(%struct.watchdog_device* %wdd) #0 !dbg !2419 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %dev_str = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2420, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.declare(metadata i8** %dev_str, metadata !2422, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2424, metadata !DIExpression()), !dbg !2425
  store i32 0, i32* %ret, align 4, !dbg !2425
  call void @mutex_lock(%struct.mutex* @wtd_deferred_reg_mutex) #6, !dbg !2426
  %0 = load i8, i8* @wtd_deferred_reg_done, align 1, !dbg !2427
  %tobool = trunc i8 %0 to i1, !dbg !2427
  br i1 %tobool, label %if.then, label %if.else, !dbg !2429

if.then:                                          ; preds = %entry
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2430
  %call = call i32 @__watchdog_register_device(%struct.watchdog_device* %1) #6, !dbg !2431
  store i32 %call, i32* %ret, align 4, !dbg !2432
  br label %if.end, !dbg !2433

if.else:                                          ; preds = %entry
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2434
  call void @watchdog_deferred_registration_add(%struct.watchdog_device* %2) #6, !dbg !2435
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @mutex_unlock(%struct.mutex* @wtd_deferred_reg_mutex) #6, !dbg !2436
  %3 = load i32, i32* %ret, align 4, !dbg !2437
  %tobool1 = icmp ne i32 %3, 0, !dbg !2437
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2439

if.then2:                                         ; preds = %if.end
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2440
  %parent = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 1, !dbg !2442
  %5 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2442
  %tobool3 = icmp ne %struct.device* %5, null, !dbg !2440
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !2440

cond.true:                                        ; preds = %if.then2
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2443
  %parent4 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %6, i32 0, i32 1, !dbg !2444
  %7 = load %struct.device*, %struct.device** %parent4, align 8, !dbg !2444
  %call5 = call i8* @dev_name(%struct.device* %7) #6, !dbg !2445
  br label %cond.end, !dbg !2440

cond.false:                                       ; preds = %if.then2
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2446
  %info = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 3, !dbg !2447
  %9 = load %struct.watchdog_info*, %struct.watchdog_info** %info, align 8, !dbg !2447
  %identity = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %9, i32 0, i32 2, !dbg !2448
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %identity, i64 0, i64 0, !dbg !2446
  br label %cond.end, !dbg !2440

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %arraydecay, %cond.false ], !dbg !2440
  store i8* %cond, i8** %dev_str, align 8, !dbg !2449
  %10 = load i8*, i8** %dev_str, align 8, !dbg !2450
  %11 = load i32, i32* %ret, align 4, !dbg !2450
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %10, i32 %11) #7, !dbg !2450
  br label %if.end7, !dbg !2451

if.end7:                                          ; preds = %cond.end, %if.end
  %12 = load i32, i32* %ret, align 4, !dbg !2452
  ret i32 %12, !dbg !2453
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__watchdog_register_device(%struct.watchdog_device* %wdd) #0 !dbg !2454 {
entry:
  %retval = alloca i32, align 4
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %ret = alloca i32, align 4
  %id = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2457, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.declare(metadata i32* %id, metadata !2459, metadata !DIExpression()), !dbg !2460
  store i32 -1, i32* %id, align 4, !dbg !2460
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2461
  %cmp = icmp eq %struct.watchdog_device* %0, null, !dbg !2463
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2464

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2465
  %info = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 3, !dbg !2466
  %2 = load %struct.watchdog_info*, %struct.watchdog_info** %info, align 8, !dbg !2466
  %cmp1 = icmp eq %struct.watchdog_info* %2, null, !dbg !2467
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !2468

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2469
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %3, i32 0, i32 4, !dbg !2470
  %4 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !2470
  %cmp3 = icmp eq %struct.watchdog_ops* %4, null, !dbg !2471
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2472

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2473
  br label %return, !dbg !2473

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2474
  %ops4 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 4, !dbg !2476
  %6 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops4, align 8, !dbg !2476
  %start = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %6, i32 0, i32 1, !dbg !2477
  %7 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %start, align 8, !dbg !2477
  %tobool = icmp ne i32 (%struct.watchdog_device*)* %7, null, !dbg !2474
  br i1 %tobool, label %lor.lhs.false5, label %if.then9, !dbg !2478

lor.lhs.false5:                                   ; preds = %if.end
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2479
  %ops6 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 4, !dbg !2480
  %9 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops6, align 8, !dbg !2480
  %stop = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %9, i32 0, i32 2, !dbg !2481
  %10 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %stop, align 8, !dbg !2481
  %tobool7 = icmp ne i32 (%struct.watchdog_device*)* %10, null, !dbg !2479
  br i1 %tobool7, label %if.end10, label %land.lhs.true, !dbg !2482

land.lhs.true:                                    ; preds = %lor.lhs.false5
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2483
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 12, !dbg !2484
  %12 = load i32, i32* %max_hw_heartbeat_ms, align 8, !dbg !2484
  %tobool8 = icmp ne i32 %12, 0, !dbg !2483
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2485

if.then9:                                         ; preds = %land.lhs.true, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !2486
  br label %return, !dbg !2486

if.end10:                                         ; preds = %land.lhs.true, %lor.lhs.false5
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2487
  call void @watchdog_check_min_max_timeout(%struct.watchdog_device* %13) #6, !dbg !2488
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2489
  %parent = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 1, !dbg !2491
  %15 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2491
  %tobool11 = icmp ne %struct.device* %15, null, !dbg !2489
  br i1 %tobool11, label %if.then12, label %if.end18, !dbg !2492

if.then12:                                        ; preds = %if.end10
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2493
  %parent13 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %16, i32 0, i32 1, !dbg !2495
  %17 = load %struct.device*, %struct.device** %parent13, align 8, !dbg !2495
  %of_node = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 23, !dbg !2496
  %18 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2496
  %call = call i32 @of_alias_get_id(%struct.device_node* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2497
  store i32 %call, i32* %ret, align 4, !dbg !2498
  %19 = load i32, i32* %ret, align 4, !dbg !2499
  %cmp14 = icmp sge i32 %19, 0, !dbg !2501
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2502

if.then15:                                        ; preds = %if.then12
  %20 = load i32, i32* %ret, align 4, !dbg !2503
  %21 = load i32, i32* %ret, align 4, !dbg !2503
  %add = add i32 %21, 1, !dbg !2503
  %sub = sub i32 %add, 1, !dbg !2503
  %call16 = call i32 @ida_alloc_range(%struct.ida* @watchdog_ida, i32 %20, i32 %sub, i32 3264) #6, !dbg !2503
  store i32 %call16, i32* %id, align 4, !dbg !2504
  br label %if.end17, !dbg !2505

if.end17:                                         ; preds = %if.then15, %if.then12
  br label %if.end18, !dbg !2506

if.end18:                                         ; preds = %if.end17, %if.end10
  %22 = load i32, i32* %id, align 4, !dbg !2507
  %cmp19 = icmp slt i32 %22, 0, !dbg !2509
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2510

if.then20:                                        ; preds = %if.end18
  %call21 = call i32 @ida_alloc_range(%struct.ida* @watchdog_ida, i32 0, i32 31, i32 3264) #6, !dbg !2511
  store i32 %call21, i32* %id, align 4, !dbg !2512
  br label %if.end22, !dbg !2513

if.end22:                                         ; preds = %if.then20, %if.end18
  %23 = load i32, i32* %id, align 4, !dbg !2514
  %cmp23 = icmp slt i32 %23, 0, !dbg !2516
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !2517

if.then24:                                        ; preds = %if.end22
  %24 = load i32, i32* %id, align 4, !dbg !2518
  store i32 %24, i32* %retval, align 4, !dbg !2519
  br label %return, !dbg !2519

if.end25:                                         ; preds = %if.end22
  %25 = load i32, i32* %id, align 4, !dbg !2520
  %26 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2521
  %id26 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %26, i32 0, i32 0, !dbg !2522
  store i32 %25, i32* %id26, align 8, !dbg !2523
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2524
  %call27 = call i32 @watchdog_dev_register(%struct.watchdog_device* %27) #6, !dbg !2525
  store i32 %call27, i32* %ret, align 4, !dbg !2526
  %28 = load i32, i32* %ret, align 4, !dbg !2527
  %tobool28 = icmp ne i32 %28, 0, !dbg !2527
  br i1 %tobool28, label %if.then29, label %if.end44, !dbg !2529

if.then29:                                        ; preds = %if.end25
  %29 = load i32, i32* %id, align 4, !dbg !2530
  call void @ida_free(%struct.ida* @watchdog_ida, i32 %29) #6, !dbg !2530
  %30 = load i32, i32* %id, align 4, !dbg !2532
  %cmp30 = icmp eq i32 %30, 0, !dbg !2534
  br i1 %cmp30, label %land.lhs.true31, label %if.then33, !dbg !2535

land.lhs.true31:                                  ; preds = %if.then29
  %31 = load i32, i32* %ret, align 4, !dbg !2536
  %cmp32 = icmp eq i32 %31, -16, !dbg !2537
  br i1 %cmp32, label %if.end34, label %if.then33, !dbg !2538

if.then33:                                        ; preds = %land.lhs.true31, %if.then29
  %32 = load i32, i32* %ret, align 4, !dbg !2539
  store i32 %32, i32* %retval, align 4, !dbg !2540
  br label %return, !dbg !2540

if.end34:                                         ; preds = %land.lhs.true31
  %call35 = call i32 @ida_alloc_range(%struct.ida* @watchdog_ida, i32 1, i32 31, i32 3264) #6, !dbg !2541
  store i32 %call35, i32* %id, align 4, !dbg !2542
  %33 = load i32, i32* %id, align 4, !dbg !2543
  %cmp36 = icmp slt i32 %33, 0, !dbg !2545
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2546

if.then37:                                        ; preds = %if.end34
  %34 = load i32, i32* %id, align 4, !dbg !2547
  store i32 %34, i32* %retval, align 4, !dbg !2548
  br label %return, !dbg !2548

if.end38:                                         ; preds = %if.end34
  %35 = load i32, i32* %id, align 4, !dbg !2549
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2550
  %id39 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %36, i32 0, i32 0, !dbg !2551
  store i32 %35, i32* %id39, align 8, !dbg !2552
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2553
  %call40 = call i32 @watchdog_dev_register(%struct.watchdog_device* %37) #6, !dbg !2554
  store i32 %call40, i32* %ret, align 4, !dbg !2555
  %38 = load i32, i32* %ret, align 4, !dbg !2556
  %tobool41 = icmp ne i32 %38, 0, !dbg !2556
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2558

if.then42:                                        ; preds = %if.end38
  %39 = load i32, i32* %id, align 4, !dbg !2559
  call void @ida_free(%struct.ida* @watchdog_ida, i32 %39) #6, !dbg !2559
  %40 = load i32, i32* %ret, align 4, !dbg !2561
  store i32 %40, i32* %retval, align 4, !dbg !2562
  br label %return, !dbg !2562

if.end43:                                         ; preds = %if.end38
  br label %if.end44, !dbg !2563

if.end44:                                         ; preds = %if.end43, %if.end25
  %41 = load i32, i32* @stop_on_reboot, align 4, !dbg !2564
  %cmp45 = icmp ne i32 %41, -1, !dbg !2566
  br i1 %cmp45, label %if.then46, label %if.end51, !dbg !2567

if.then46:                                        ; preds = %if.end44
  %42 = load i32, i32* @stop_on_reboot, align 4, !dbg !2568
  %tobool47 = icmp ne i32 %42, 0, !dbg !2568
  br i1 %tobool47, label %if.then48, label %if.else, !dbg !2571

if.then48:                                        ; preds = %if.then46
  %43 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2572
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %43, i32 0, i32 17, !dbg !2573
  call void @set_bit(i64 2, i64* %status) #6, !dbg !2574
  br label %if.end50, !dbg !2574

if.else:                                          ; preds = %if.then46
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2575
  %status49 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %44, i32 0, i32 17, !dbg !2576
  call void @clear_bit(i64 2, i64* %status49) #6, !dbg !2577
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then48
  br label %if.end51, !dbg !2578

if.end51:                                         ; preds = %if.end50, %if.end44
  %45 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2579
  %status52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %45, i32 0, i32 17, !dbg !2581
  %call53 = call zeroext i1 @test_bit(i64 2, i64* %status52) #6, !dbg !2582
  br i1 %call53, label %if.then54, label %if.end62, !dbg !2583

if.then54:                                        ; preds = %if.end51
  %46 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2584
  %reboot_nb = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %46, i32 0, i32 13, !dbg !2586
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %reboot_nb, i32 0, i32 0, !dbg !2587
  store i32 (%struct.notifier_block*, i64, i8*)* @watchdog_reboot_notifier, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8, !dbg !2588
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2589
  %reboot_nb55 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %47, i32 0, i32 13, !dbg !2590
  %call56 = call i32 @register_reboot_notifier(%struct.notifier_block* %reboot_nb55) #6, !dbg !2591
  store i32 %call56, i32* %ret, align 4, !dbg !2592
  %48 = load i32, i32* %ret, align 4, !dbg !2593
  %tobool57 = icmp ne i32 %48, 0, !dbg !2593
  br i1 %tobool57, label %if.then58, label %if.end61, !dbg !2595

if.then58:                                        ; preds = %if.then54
  %49 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2596
  %id59 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %49, i32 0, i32 0, !dbg !2596
  %50 = load i32, i32* %id59, align 8, !dbg !2596
  %51 = load i32, i32* %ret, align 4, !dbg !2596
  %call60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %50, i32 %51) #7, !dbg !2596
  %52 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2598
  call void @watchdog_dev_unregister(%struct.watchdog_device* %52) #6, !dbg !2599
  %53 = load i32, i32* %id, align 4, !dbg !2600
  call void @ida_free(%struct.ida* @watchdog_ida, i32 %53) #6, !dbg !2600
  %54 = load i32, i32* %ret, align 4, !dbg !2601
  store i32 %54, i32* %retval, align 4, !dbg !2602
  br label %return, !dbg !2602

if.end61:                                         ; preds = %if.then54
  br label %if.end62, !dbg !2603

if.end62:                                         ; preds = %if.end61, %if.end51
  %55 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2604
  %ops63 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %55, i32 0, i32 4, !dbg !2606
  %56 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops63, align 8, !dbg !2606
  %restart = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %56, i32 0, i32 8, !dbg !2607
  %57 = load i32 (%struct.watchdog_device*, i64, i8*)*, i32 (%struct.watchdog_device*, i64, i8*)** %restart, align 8, !dbg !2607
  %tobool64 = icmp ne i32 (%struct.watchdog_device*, i64, i8*)* %57, null, !dbg !2604
  br i1 %tobool64, label %if.then65, label %if.end74, !dbg !2608

if.then65:                                        ; preds = %if.end62
  %58 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2609
  %restart_nb = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %58, i32 0, i32 14, !dbg !2611
  %notifier_call66 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %restart_nb, i32 0, i32 0, !dbg !2612
  store i32 (%struct.notifier_block*, i64, i8*)* @watchdog_restart_notifier, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call66, align 8, !dbg !2613
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2614
  %restart_nb67 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %59, i32 0, i32 14, !dbg !2615
  %call68 = call i32 @register_restart_handler(%struct.notifier_block* %restart_nb67) #6, !dbg !2616
  store i32 %call68, i32* %ret, align 4, !dbg !2617
  %60 = load i32, i32* %ret, align 4, !dbg !2618
  %tobool69 = icmp ne i32 %60, 0, !dbg !2618
  br i1 %tobool69, label %if.then70, label %if.end73, !dbg !2620

if.then70:                                        ; preds = %if.then65
  %61 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2621
  %id71 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %61, i32 0, i32 0, !dbg !2621
  %62 = load i32, i32* %id71, align 8, !dbg !2621
  %63 = load i32, i32* %ret, align 4, !dbg !2621
  %call72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %62, i32 %63) #7, !dbg !2621
  br label %if.end73, !dbg !2621

if.end73:                                         ; preds = %if.then70, %if.then65
  br label %if.end74, !dbg !2622

if.end74:                                         ; preds = %if.end73, %if.end62
  store i32 0, i32* %retval, align 4, !dbg !2623
  br label %return, !dbg !2623

return:                                           ; preds = %if.end74, %if.then58, %if.then42, %if.then37, %if.then33, %if.then24, %if.then9, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !2624
  ret i32 %64, !dbg !2624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_deferred_registration_add(%struct.watchdog_device* %wdd) #0 !dbg !2625 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2626, metadata !DIExpression()), !dbg !2627
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2628
  %deferred = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 18, !dbg !2629
  call void @list_add_tail(%struct.list_head* %deferred, %struct.list_head* @wtd_deferred_reg_list) #6, !dbg !2630
  ret void, !dbg !2631
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @watchdog_unregister_device(%struct.watchdog_device* %wdd) #0 !dbg !2632 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @mutex_lock(%struct.mutex* @wtd_deferred_reg_mutex) #6, !dbg !2635
  %0 = load i8, i8* @wtd_deferred_reg_done, align 1, !dbg !2636
  %tobool = trunc i8 %0 to i1, !dbg !2636
  br i1 %tobool, label %if.then, label %if.else, !dbg !2638

if.then:                                          ; preds = %entry
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2639
  call void @__watchdog_unregister_device(%struct.watchdog_device* %1) #6, !dbg !2640
  br label %if.end, !dbg !2640

if.else:                                          ; preds = %entry
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2641
  call void @watchdog_deferred_registration_del(%struct.watchdog_device* %2) #6, !dbg !2642
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @mutex_unlock(%struct.mutex* @wtd_deferred_reg_mutex) #6, !dbg !2643
  ret void, !dbg !2644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__watchdog_unregister_device(%struct.watchdog_device* %wdd) #0 !dbg !2645 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2646, metadata !DIExpression()), !dbg !2647
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2648
  %cmp = icmp eq %struct.watchdog_device* %0, null, !dbg !2650
  br i1 %cmp, label %if.then, label %if.end, !dbg !2651

if.then:                                          ; preds = %entry
  br label %return, !dbg !2652

if.end:                                           ; preds = %entry
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2653
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 4, !dbg !2655
  %2 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !2655
  %restart = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %2, i32 0, i32 8, !dbg !2656
  %3 = load i32 (%struct.watchdog_device*, i64, i8*)*, i32 (%struct.watchdog_device*, i64, i8*)** %restart, align 8, !dbg !2656
  %tobool = icmp ne i32 (%struct.watchdog_device*, i64, i8*)* %3, null, !dbg !2653
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2657

if.then1:                                         ; preds = %if.end
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2658
  %restart_nb = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 14, !dbg !2659
  %call = call i32 @unregister_restart_handler(%struct.notifier_block* %restart_nb) #6, !dbg !2660
  br label %if.end2, !dbg !2660

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2661
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 17, !dbg !2663
  %call3 = call zeroext i1 @test_bit(i64 2, i64* %status) #6, !dbg !2664
  br i1 %call3, label %if.then4, label %if.end6, !dbg !2665

if.then4:                                         ; preds = %if.end2
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2666
  %reboot_nb = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %6, i32 0, i32 13, !dbg !2667
  %call5 = call i32 @unregister_reboot_notifier(%struct.notifier_block* %reboot_nb) #6, !dbg !2668
  br label %if.end6, !dbg !2668

if.end6:                                          ; preds = %if.then4, %if.end2
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2669
  call void @watchdog_dev_unregister(%struct.watchdog_device* %7) #6, !dbg !2670
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2671
  %id = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 0, !dbg !2671
  %9 = load i32, i32* %id, align 8, !dbg !2671
  call void @ida_free(%struct.ida* @watchdog_ida, i32 %9) #6, !dbg !2671
  br label %return, !dbg !2672

return:                                           ; preds = %if.end6, %if.then
  ret void, !dbg !2672
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_deferred_registration_del(%struct.watchdog_device* %wdd) #0 !dbg !2673 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %p = alloca %struct.list_head*, align 8
  %n = alloca %struct.list_head*, align 8
  %wdd_tmp = alloca %struct.watchdog_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.declare(metadata %struct.list_head** %p, metadata !2676, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.declare(metadata %struct.list_head** %n, metadata !2678, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd_tmp, metadata !2680, metadata !DIExpression()), !dbg !2681
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @wtd_deferred_reg_list, i32 0, i32 0), align 8, !dbg !2682
  store %struct.list_head* %0, %struct.list_head** %p, align 8, !dbg !2682
  %1 = load %struct.list_head*, %struct.list_head** %p, align 8, !dbg !2682
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2682
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2682
  store %struct.list_head* %2, %struct.list_head** %n, align 8, !dbg !2682
  br label %for.cond, !dbg !2682

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.list_head*, %struct.list_head** %p, align 8, !dbg !2684
  %cmp = icmp ne %struct.list_head* %3, @wtd_deferred_reg_list, !dbg !2684
  br i1 %cmp, label %for.body, label %for.end, !dbg !2682

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2686, metadata !DIExpression()), !dbg !2689
  %4 = load %struct.list_head*, %struct.list_head** %p, align 8, !dbg !2689
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !2689
  store i8* %5, i8** %__mptr, align 8, !dbg !2689
  br label %do.body, !dbg !2689

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !2690

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2689
  %add.ptr = getelementptr i8, i8* %6, i64 -152, !dbg !2689
  %7 = bitcast i8* %add.ptr to %struct.watchdog_device*, !dbg !2689
  store %struct.watchdog_device* %7, %struct.watchdog_device** %tmp, align 8, !dbg !2690
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %tmp, align 8, !dbg !2689
  store %struct.watchdog_device* %8, %struct.watchdog_device** %wdd_tmp, align 8, !dbg !2692
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd_tmp, align 8, !dbg !2693
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2695
  %cmp1 = icmp eq %struct.watchdog_device* %9, %10, !dbg !2696
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2697

if.then:                                          ; preds = %do.end
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd_tmp, align 8, !dbg !2698
  %deferred = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 18, !dbg !2700
  call void @list_del(%struct.list_head* %deferred) #6, !dbg !2701
  br label %for.end, !dbg !2702

if.end:                                           ; preds = %do.end
  br label %for.inc, !dbg !2703

for.inc:                                          ; preds = %if.end
  %12 = load %struct.list_head*, %struct.list_head** %n, align 8, !dbg !2684
  store %struct.list_head* %12, %struct.list_head** %p, align 8, !dbg !2684
  %13 = load %struct.list_head*, %struct.list_head** %p, align 8, !dbg !2684
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i32 0, i32 0, !dbg !2684
  %14 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !2684
  store %struct.list_head* %14, %struct.list_head** %n, align 8, !dbg !2684
  br label %for.cond, !dbg !2684, !llvm.loop !2704

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !2706
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_watchdog_register_device(%struct.device* %dev, %struct.watchdog_device* %wdd) #0 !dbg !2707 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %rcwdd = alloca %struct.watchdog_device**, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata %struct.watchdog_device*** %rcwdd, metadata !2714, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2716, metadata !DIExpression()), !dbg !2717
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_watchdog_unregister_device, i64 8, i32 3264) #6, !dbg !2718
  %0 = bitcast i8* %call to %struct.watchdog_device**, !dbg !2718
  store %struct.watchdog_device** %0, %struct.watchdog_device*** %rcwdd, align 8, !dbg !2719
  %1 = load %struct.watchdog_device**, %struct.watchdog_device*** %rcwdd, align 8, !dbg !2720
  %tobool = icmp ne %struct.watchdog_device** %1, null, !dbg !2720
  br i1 %tobool, label %if.end, label %if.then, !dbg !2722

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2723
  br label %return, !dbg !2723

if.end:                                           ; preds = %entry
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2724
  %call1 = call i32 @watchdog_register_device(%struct.watchdog_device* %2) #6, !dbg !2725
  store i32 %call1, i32* %ret, align 4, !dbg !2726
  %3 = load i32, i32* %ret, align 4, !dbg !2727
  %tobool2 = icmp ne i32 %3, 0, !dbg !2727
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2729

if.then3:                                         ; preds = %if.end
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2730
  %5 = load %struct.watchdog_device**, %struct.watchdog_device*** %rcwdd, align 8, !dbg !2732
  store %struct.watchdog_device* %4, %struct.watchdog_device** %5, align 8, !dbg !2733
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2734
  %7 = load %struct.watchdog_device**, %struct.watchdog_device*** %rcwdd, align 8, !dbg !2735
  %8 = bitcast %struct.watchdog_device** %7 to i8*, !dbg !2735
  call void @devres_add(%struct.device* %6, i8* %8) #6, !dbg !2736
  br label %if.end4, !dbg !2737

if.else:                                          ; preds = %if.end
  %9 = load %struct.watchdog_device**, %struct.watchdog_device*** %rcwdd, align 8, !dbg !2738
  %10 = bitcast %struct.watchdog_device** %9 to i8*, !dbg !2738
  call void @devres_free(i8* %10) #6, !dbg !2740
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %11 = load i32, i32* %ret, align 4, !dbg !2741
  store i32 %11, i32* %retval, align 4, !dbg !2742
  br label %return, !dbg !2742

return:                                           ; preds = %if.end4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2743
  ret i32 %12, !dbg !2743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !2744 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2757
  %1 = load i64, i64* %size.addr, align 8, !dbg !2758
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2759
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #6, !dbg !2760
  ret i8* %call, !dbg !2761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_watchdog_unregister_device(%struct.device* %dev, i8* %res) #0 !dbg !2762 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2763, metadata !DIExpression()), !dbg !2764
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2765, metadata !DIExpression()), !dbg !2766
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2767
  %1 = bitcast i8* %0 to %struct.watchdog_device**, !dbg !2768
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %1, align 8, !dbg !2769
  call void @watchdog_unregister_device(%struct.watchdog_device* %2) #6, !dbg !2770
  ret void, !dbg !2771
}

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #3

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_exit() #4 section ".exit.text" !dbg !2772 {
entry:
  call void @watchdog_dev_exit() #7, !dbg !2773
  call void @ida_destroy(%struct.ida* @watchdog_ida) #6, !dbg !2774
  ret void, !dbg !2775
}

; Function Attrs: cold noredzone
declare dso_local void @watchdog_dev_exit() #2 section ".exit.text"

; Function Attrs: noredzone
declare dso_local void @ida_destroy(%struct.ida*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_init() #4 section ".init.text" !dbg !2776 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2779, metadata !DIExpression()), !dbg !2780
  %call = call i32 @watchdog_dev_init() #7, !dbg !2781
  store i32 %call, i32* %err, align 4, !dbg !2782
  %0 = load i32, i32* %err, align 4, !dbg !2783
  %cmp = icmp slt i32 %0, 0, !dbg !2785
  br i1 %cmp, label %if.then, label %if.end, !dbg !2786

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err, align 4, !dbg !2787
  store i32 %1, i32* %retval, align 4, !dbg !2788
  br label %return, !dbg !2788

if.end:                                           ; preds = %entry
  %call1 = call i32 @watchdog_deferred_registration() #7, !dbg !2789
  store i32 0, i32* %retval, align 4, !dbg !2790
  br label %return, !dbg !2790

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !2791
  ret i32 %2, !dbg !2791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !2792 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2797, metadata !DIExpression()), !dbg !2798
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2799
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !2800
  %1 = load i8*, i8** %name, align 8, !dbg !2800
  ret i8* %1, !dbg !2801
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !2802 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2805, metadata !DIExpression()), !dbg !2806
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !2809, metadata !DIExpression()), !dbg !2810
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !2811, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2813, metadata !DIExpression()), !dbg !2814
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2815
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2816
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !2817
  %3 = load i64, i64* %sz.addr, align 8, !dbg !2818
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #6, !dbg !2819
  store i32 %call, i32* %ret, align 4, !dbg !2814
  %4 = load i32, i32* %ret, align 4, !dbg !2820
  %cmp = icmp sge i32 %4, 0, !dbg !2822
  br i1 %cmp, label %if.then, label %if.else, !dbg !2823

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2824
  br label %return, !dbg !2824

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !2825
  store i32 %5, i32* %retval, align 4, !dbg !2826
  br label %return, !dbg !2826

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2827
  ret i32 %6, !dbg !2827
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @watchdog_dev_register(%struct.watchdog_device*) #3

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !2828 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2834, metadata !DIExpression()), !dbg !2837
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2839, metadata !DIExpression()), !dbg !2840
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2841, metadata !DIExpression()), !dbg !2849
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2851, metadata !DIExpression()), !dbg !2852
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2853, metadata !DIExpression()), !dbg !2854
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2855, metadata !DIExpression()), !dbg !2856
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2857
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2858
  %div = sdiv i64 %1, 64, !dbg !2858
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2859
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2857
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2860
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2861
  %conv.i = trunc i64 %4 to i32, !dbg !2861
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !2862
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2863
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2863
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !2863
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2864
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2865
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !2866
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !2868
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2869

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !2870
  %12 = bitcast i64* %11 to i8*, !dbg !2870
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2870
  %shr.i = ashr i64 %13, 3, !dbg !2870
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !2870
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !2872
  %and.i = and i64 %14, 7, !dbg !2872
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !2872
  %shl.i = shl i32 1, %sh_prom.i, !dbg !2872
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #9, !dbg !2873, !srcloc !2874
  br label %arch_set_bit.exit, !dbg !2875

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !2876
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !2878
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !2879, !srcloc !2880
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !2881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !2882 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2883, metadata !DIExpression()), !dbg !2885
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2887, metadata !DIExpression()), !dbg !2888
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2841, metadata !DIExpression()), !dbg !2889
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2851, metadata !DIExpression()), !dbg !2891
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2892, metadata !DIExpression()), !dbg !2893
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2896
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2897
  %div = sdiv i64 %1, 64, !dbg !2897
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2898
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2896
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2899
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2900
  %conv.i = trunc i64 %4 to i32, !dbg !2900
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !2901
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2902
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2902
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !2902
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2903
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2904
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !2905
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !2907
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2908

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !2909
  %12 = bitcast i64* %11 to i8*, !dbg !2909
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2909
  %shr.i = ashr i64 %13, 3, !dbg !2909
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !2909
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !2911
  %and.i = and i64 %14, 7, !dbg !2911
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !2911
  %shl.i = shl i32 1, %sh_prom.i, !dbg !2911
  %neg.i = xor i32 %shl.i, -1, !dbg !2912
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #9, !dbg !2913, !srcloc !2914
  br label %arch_clear_bit.exit, !dbg !2915

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !2916
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !2918
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !2919, !srcloc !2920
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !2921
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !2922 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !2928, metadata !DIExpression()), !dbg !2930
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !2932, metadata !DIExpression()), !dbg !2933
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !2934, metadata !DIExpression()), !dbg !2935
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2936, metadata !DIExpression()), !dbg !2938
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2940, metadata !DIExpression()), !dbg !2941
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2942, metadata !DIExpression()), !dbg !2944
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2946, metadata !DIExpression()), !dbg !2947
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2948, metadata !DIExpression()), !dbg !2949
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2950, metadata !DIExpression()), !dbg !2951
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2952
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2953
  %div = sdiv i64 %1, 64, !dbg !2953
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2954
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2952
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2955
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2956
  %conv.i = trunc i64 %4 to i32, !dbg !2956
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #8, !dbg !2957
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2958
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2958
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #8, !dbg !2958
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2959
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2959
  br i1 %8, label %cond.true, label %cond.false, !dbg !2959

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !2959
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !2959
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !2960
  %and.i = and i64 %11, 63, !dbg !2961
  %shl.i = shl i64 1, %and.i, !dbg !2962
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !2963
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2964
  %shr.i = ashr i64 %13, 6, !dbg !2965
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !2963
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !2963
  %and1.i = and i64 %shl.i, %14, !dbg !2966
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !2967
  %conv = zext i1 %cmp.i to i32, !dbg !2959
  br label %cond.end, !dbg !2959

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !2959
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !2959
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !2968
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !2969
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !2970, !srcloc !2971
  store i8 %19, i8* %oldbit.i, align 1, !dbg !2970
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !2972
  %tobool.i = trunc i8 %20 to i1, !dbg !2972
  %conv2 = zext i1 %tobool.i to i32, !dbg !2959
  br label %cond.end, !dbg !2959

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2959
  %tobool = icmp ne i32 %cond, 0, !dbg !2959
  ret i1 %tobool, !dbg !2973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_reboot_notifier(%struct.notifier_block* %nb, i64 %code, i8* %data) #0 !dbg !2974 {
entry:
  %retval = alloca i32, align 4
  %nb.addr = alloca %struct.notifier_block*, align 8
  %code.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %wdd = alloca %struct.watchdog_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watchdog_device*, align 8
  %ret = alloca i32, align 4
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !2975, metadata !DIExpression()), !dbg !2976
  store i64 %code, i64* %code.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %code.addr, metadata !2977, metadata !DIExpression()), !dbg !2978
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2983, metadata !DIExpression()), !dbg !2985
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !2985
  %1 = bitcast %struct.notifier_block* %0 to i8*, !dbg !2985
  store i8* %1, i8** %__mptr, align 8, !dbg !2985
  br label %do.body, !dbg !2985

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2986

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2985
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !2985
  %3 = bitcast i8* %add.ptr to %struct.watchdog_device*, !dbg !2985
  store %struct.watchdog_device* %3, %struct.watchdog_device** %tmp, align 8, !dbg !2986
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %tmp, align 8, !dbg !2985
  store %struct.watchdog_device* %4, %struct.watchdog_device** %wdd, align 8, !dbg !2988
  %5 = load i64, i64* %code.addr, align 8, !dbg !2989
  %cmp = icmp eq i64 %5, 1, !dbg !2991
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2992

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i64, i64* %code.addr, align 8, !dbg !2993
  %cmp1 = icmp eq i64 %6, 2, !dbg !2994
  br i1 %cmp1, label %if.then, label %if.end6, !dbg !2995

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !2996
  %call = call zeroext i1 @watchdog_active(%struct.watchdog_device* %7) #6, !dbg !2999
  br i1 %call, label %if.then2, label %if.end5, !dbg !3000

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3001, metadata !DIExpression()), !dbg !3003
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !3004
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 4, !dbg !3005
  %9 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !3005
  %stop = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %9, i32 0, i32 2, !dbg !3006
  %10 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %stop, align 8, !dbg !3006
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !3007
  %call3 = call i32 %10(%struct.watchdog_device* %11) #6, !dbg !3004
  store i32 %call3, i32* %ret, align 4, !dbg !3008
  %12 = load i32, i32* %ret, align 4, !dbg !3009
  %tobool = icmp ne i32 %12, 0, !dbg !3009
  br i1 %tobool, label %if.then4, label %if.end, !dbg !3011

if.then4:                                         ; preds = %if.then2
  store i32 32770, i32* %retval, align 4, !dbg !3012
  br label %return, !dbg !3012

if.end:                                           ; preds = %if.then2
  br label %if.end5, !dbg !3013

if.end5:                                          ; preds = %if.end, %if.then
  br label %if.end6, !dbg !3014

if.end6:                                          ; preds = %if.end5, %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !3015
  br label %return, !dbg !3015

return:                                           ; preds = %if.end6, %if.then4
  %13 = load i32, i32* %retval, align 4, !dbg !3016
  ret i32 %13, !dbg !3016
}

; Function Attrs: noredzone
declare dso_local i32 @register_reboot_notifier(%struct.notifier_block*) #3

; Function Attrs: noredzone
declare dso_local void @watchdog_dev_unregister(%struct.watchdog_device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_restart_notifier(%struct.notifier_block* %nb, i64 %action, i8* %data) #0 !dbg !3017 {
entry:
  %retval = alloca i32, align 4
  %nb.addr = alloca %struct.notifier_block*, align 8
  %action.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %wdd = alloca %struct.watchdog_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watchdog_device*, align 8
  %ret = alloca i32, align 4
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  store i64 %action, i64* %action.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %action.addr, metadata !3020, metadata !DIExpression()), !dbg !3021
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3026, metadata !DIExpression()), !dbg !3028
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !3028
  %1 = bitcast %struct.notifier_block* %0 to i8*, !dbg !3028
  store i8* %1, i8** %__mptr, align 8, !dbg !3028
  br label %do.body, !dbg !3028

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3029

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3028
  %add.ptr = getelementptr i8, i8* %2, i64 -104, !dbg !3028
  %3 = bitcast i8* %add.ptr to %struct.watchdog_device*, !dbg !3028
  store %struct.watchdog_device* %3, %struct.watchdog_device** %tmp, align 8, !dbg !3029
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %tmp, align 8, !dbg !3028
  store %struct.watchdog_device* %4, %struct.watchdog_device** %wdd, align 8, !dbg !3025
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3031, metadata !DIExpression()), !dbg !3032
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !3033
  %ops = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 4, !dbg !3034
  %6 = load %struct.watchdog_ops*, %struct.watchdog_ops** %ops, align 8, !dbg !3034
  %restart = getelementptr inbounds %struct.watchdog_ops, %struct.watchdog_ops* %6, i32 0, i32 8, !dbg !3035
  %7 = load i32 (%struct.watchdog_device*, i64, i8*)*, i32 (%struct.watchdog_device*, i64, i8*)** %restart, align 8, !dbg !3035
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !3036
  %9 = load i64, i64* %action.addr, align 8, !dbg !3037
  %10 = load i8*, i8** %data.addr, align 8, !dbg !3038
  %call = call i32 %7(%struct.watchdog_device* %8, i64 %9, i8* %10) #6, !dbg !3033
  store i32 %call, i32* %ret, align 4, !dbg !3039
  %11 = load i32, i32* %ret, align 4, !dbg !3040
  %tobool = icmp ne i32 %11, 0, !dbg !3040
  br i1 %tobool, label %if.then, label %if.end, !dbg !3042

if.then:                                          ; preds = %do.end
  store i32 32770, i32* %retval, align 4, !dbg !3043
  br label %return, !dbg !3043

if.end:                                           ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !3044
  br label %return, !dbg !3044

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !3045
  ret i32 %12, !dbg !3045
}

; Function Attrs: noredzone
declare dso_local i32 @register_restart_handler(%struct.notifier_block*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3046 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3050, metadata !DIExpression()), !dbg !3051
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3052, metadata !DIExpression()), !dbg !3053
  ret i1 true, !dbg !3054
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3055 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3061, metadata !DIExpression()), !dbg !3062
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3063, metadata !DIExpression()), !dbg !3064
  ret void, !dbg !3065
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3066 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3067, metadata !DIExpression()), !dbg !3068
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  ret i1 true, !dbg !3071
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @watchdog_active(%struct.watchdog_device* %wdd) #0 !dbg !3072 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !3075, metadata !DIExpression()), !dbg !3076
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !3077
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 17, !dbg !3078
  %call = call zeroext i1 @test_bit(i64 0, i64* %status) #6, !dbg !3079
  ret i1 %call, !dbg !3080
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3081 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3085, metadata !DIExpression()), !dbg !3086
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3087, metadata !DIExpression()), !dbg !3088
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3089
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3090
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3091
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3091
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3092
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #6, !dbg !3093
  ret void, !dbg !3094
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3095 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3098, metadata !DIExpression()), !dbg !3099
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3100, metadata !DIExpression()), !dbg !3101
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3102, metadata !DIExpression()), !dbg !3103
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3104
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3106
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3107
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #6, !dbg !3108
  br i1 %call, label %if.end, label %if.then, !dbg !3109

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3110

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3111
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3112
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3113
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3114
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3115
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3116
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3117
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3118
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3119
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3120
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3121
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3122
  br label %do.body, !dbg !3123

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3124

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3126

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3124

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3128
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3128
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3128
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3128
  br label %do.end7, !dbg !3128

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3124

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3130
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3131 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3136, metadata !DIExpression()), !dbg !3137
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3138, metadata !DIExpression()), !dbg !3139
  ret i1 true, !dbg !3140
}

; Function Attrs: noredzone
declare dso_local i32 @unregister_restart_handler(%struct.notifier_block*) #3

; Function Attrs: noredzone
declare dso_local i32 @unregister_reboot_notifier(%struct.notifier_block*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !3141 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3144, metadata !DIExpression()), !dbg !3145
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3146
  call void @__list_del_entry(%struct.list_head* %0) #6, !dbg !3147
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3148
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3149
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3150
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3151
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3152
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3153
  ret void, !dbg !3154
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3155 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3156, metadata !DIExpression()), !dbg !3157
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3158
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #6, !dbg !3160
  br i1 %call, label %if.end, label %if.then, !dbg !3161

if.then:                                          ; preds = %entry
  br label %return, !dbg !3162

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3163
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3164
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3164
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3165
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3166
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3166
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #6, !dbg !3167
  br label %return, !dbg !3168

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3169 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3172, metadata !DIExpression()), !dbg !3173
  ret i1 true, !dbg !3174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3175 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3176, metadata !DIExpression()), !dbg !3177
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3178, metadata !DIExpression()), !dbg !3179
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3180
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3181
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3182
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3183
  br label %do.body, !dbg !3184

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3185

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3187

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3185

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3189
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3189
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3189
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3189
  br label %do.end5, !dbg !3189

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3185

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3191
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #3

; Function Attrs: cold noredzone
declare dso_local i32 @watchdog_dev_init() #2 section ".init.text"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @watchdog_deferred_registration() #4 section ".init.text" !dbg !3192 {
entry:
  %wdd = alloca %struct.watchdog_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watchdog_device*, align 8
  call void @mutex_lock(%struct.mutex* @wtd_deferred_reg_mutex) #6, !dbg !3193
  store i8 1, i8* @wtd_deferred_reg_done, align 1, !dbg !3194
  br label %while.cond, !dbg !3195

while.cond:                                       ; preds = %do.end, %entry
  %call = call i32 @list_empty(%struct.list_head* @wtd_deferred_reg_list) #6, !dbg !3196
  %tobool = icmp ne i32 %call, 0, !dbg !3197
  %lnot = xor i1 %tobool, true, !dbg !3197
  br i1 %lnot, label %while.body, label %while.end, !dbg !3195

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3201, metadata !DIExpression()), !dbg !3203
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @wtd_deferred_reg_list, i32 0, i32 0), align 8, !dbg !3203
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !3203
  store i8* %1, i8** %__mptr, align 8, !dbg !3203
  br label %do.body, !dbg !3203

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !3204

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3203
  %add.ptr = getelementptr i8, i8* %2, i64 -152, !dbg !3203
  %3 = bitcast i8* %add.ptr to %struct.watchdog_device*, !dbg !3203
  store %struct.watchdog_device* %3, %struct.watchdog_device** %tmp, align 8, !dbg !3204
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %tmp, align 8, !dbg !3203
  store %struct.watchdog_device* %4, %struct.watchdog_device** %wdd, align 8, !dbg !3206
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !3207
  %deferred = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 18, !dbg !3208
  call void @list_del(%struct.list_head* %deferred) #6, !dbg !3209
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !3210
  %call1 = call i32 @__watchdog_register_device(%struct.watchdog_device* %6) #6, !dbg !3211
  br label %while.cond, !dbg !3195, !llvm.loop !3212

while.end:                                        ; preds = %while.cond
  call void @mutex_unlock(%struct.mutex* @wtd_deferred_reg_mutex) #6, !dbg !3214
  ret i32 0, !dbg !3215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !3216 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  br label %do.body, !dbg !3223

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3225

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3223
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3223
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3223
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !3225
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !3223
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3227
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !3228
  %conv = zext i1 %cmp to i32, !dbg !3228
  ret i32 %conv, !dbg !3229
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2234, !2235, !2236, !2237}
!llvm.ident = !{!2238}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_stop_on_reboot", scope: !2, file: !3, line: 43, type: !2231, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !2120, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/watchdog/watchdog_core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !18, line: 26, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !24, line: 44, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !30, line: 343, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !33, !34, !35}
!32 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !37, line: 524, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43}
!39 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !37, line: 502, baseType: !7, size: 32, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!55 = !{!56, !59, !61, !62, !64, !67, !69, !2115, !2117, !2118}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !60, line: 148, baseType: !7)
!60 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_device", file: !71, line: 94, size: 1344, elements: !72)
!71 = !DIFile(filename: "./include/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !75, !2044, !2045, !2055, !2085, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2108, !2109, !2110, !2113, !2114}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !70, file: !71, line: 95, baseType: !74, size: 32)
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !71, line: 96, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !78)
!78 = !{!79, !1568, !1569, !1572, !1573, !1624, !1721, !1722, !1723, !1724, !1725, !1734, !1839, !1852, !1855, !1856, !1860, !1862, !1863, !1864, !1868, !1874, !1875, !1878, !1993, !1994, !1997, !1998, !1999, !2000, !2032, !2033, !2034, !2037, !2040, !2041, !2042, !2043}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !77, file: !30, line: 462, baseType: !80, size: 512)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !81, line: 64, size: 512, elements: !82)
!81 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !90, !92, !152, !1405, !1558, !1563, !1564, !1565, !1566, !1567}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !81, line: 65, baseType: !56, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !80, file: !81, line: 66, baseType: !85, size: 128, offset: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !60, line: 178, size: 128, elements: !86)
!86 = !{!87, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !60, line: 179, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !85, file: !60, line: 179, baseType: !88, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !81, line: 67, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !80, file: !81, line: 68, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !81, line: 192, size: 704, elements: !95)
!95 = !{!96, !97, !113, !114}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !94, file: !81, line: 193, baseType: !85, size: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !94, file: !81, line: 194, baseType: !98, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !99, line: 83, baseType: !100)
!99 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !99, line: 71, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 72, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 72, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !103, file: !99, line: 73, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !99, line: 20, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !106, file: !99, line: 21, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !110, line: 25, baseType: !111)
!110 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 25, elements: !112)
!112 = !{}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !94, file: !81, line: 195, baseType: !80, size: 512, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !94, file: !81, line: 196, baseType: !115, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !81, line: 156, size: 192, elements: !118)
!118 = !{!119, !124, !129}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !117, file: !81, line: 157, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!74, !93, !91}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !81, line: 158, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!56, !93, !91}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !117, file: !81, line: 159, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!74, !93, !91, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !81, line: 148, size: 20736, elements: !136)
!136 = !{!137, !142, !146, !147, !151}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !135, file: !81, line: 149, baseType: !138, size: 192)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 192, elements: !140)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!140 = !{!141}
!141 = !DISubrange(count: 3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !135, file: !81, line: 150, baseType: !143, size: 4096, offset: 192)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 4096, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !135, file: !81, line: 151, baseType: !74, size: 32, offset: 4288)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !135, file: !81, line: 152, baseType: !148, size: 16384, offset: 4320)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 16384, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 2048)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !135, file: !81, line: 153, baseType: !74, size: 32, offset: 20704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !80, file: !81, line: 69, baseType: !153, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !81, line: 138, size: 448, elements: !155)
!155 = !{!156, !160, !188, !190, !1351, !1384, !1388}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !154, file: !81, line: 139, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !91}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !154, file: !81, line: 140, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !164, line: 230, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !181}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !163, file: !164, line: 231, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !91, !174, !139}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !60, line: 60, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !172, line: 73, baseType: !173)
!172 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !172, line: 15, baseType: !66)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !164, line: 30, size: 128, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !164, line: 31, baseType: !56, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !175, file: !164, line: 32, baseType: !179, size: 16, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !60, line: 19, baseType: !180)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !163, file: !164, line: 232, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!170, !91, !174, !56, !185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 55, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !172, line: 72, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !172, line: 16, baseType: !68)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !154, file: !81, line: 141, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !154, file: !81, line: 142, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !164, line: 84, size: 320, elements: !195)
!195 = !{!196, !197, !201, !1348, !1349}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !164, line: 85, baseType: !56, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !194, file: !164, line: 86, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!179, !91, !174, !74}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !194, file: !164, line: 88, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!179, !91, !205, !74}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !164, line: 168, size: 448, elements: !207)
!207 = !{!208, !209, !210, !211, !221, !222}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !206, file: !164, line: 169, baseType: !175, size: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !164, line: 170, baseType: !185, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !206, file: !164, line: 171, baseType: !61, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !206, file: !164, line: 172, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!170, !215, !91, !205, !139, !218, !185}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !217, line: 526, flags: DIFlagFwdDecl)
!217 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !60, line: 46, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !172, line: 88, baseType: !220)
!220 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !206, file: !164, line: 174, baseType: !212, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !206, file: !164, line: 176, baseType: !223, size: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!74, !215, !91, !205, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !228, line: 305, size: 1472, elements: !229)
!228 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!229 = !{!230, !231, !232, !233, !234, !242, !243, !1322, !1328, !1329, !1334, !1335, !1338, !1342, !1343, !1344, !1345, !1346}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !227, file: !228, line: 308, baseType: !68, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !227, file: !228, line: 309, baseType: !68, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !227, file: !228, line: 313, baseType: !226, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !227, file: !228, line: 313, baseType: !226, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !227, file: !228, line: 315, baseType: !235, size: 192, align: 64, offset: 256)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !236, line: 24, size: 192, align: 64, elements: !237)
!236 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !239, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !235, file: !236, line: 25, baseType: !68, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !235, file: !236, line: 26, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !235, file: !236, line: 27, baseType: !240, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !227, file: !228, line: 323, baseType: !68, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !227, file: !228, line: 327, baseType: !244, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !228, line: 388, size: 7296, elements: !246)
!246 = !{!247, !1318}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !228, line: 389, baseType: !248, size: 7296)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !228, line: 389, size: 7296, elements: !249)
!249 = !{!250, !251, !255, !261, !265, !266, !267, !268, !269, !277, !282, !283, !284, !285, !294, !295, !296, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !331, !339, !342, !390, !391, !1288, !1289, !1292, !1296, !1297, !1300, !1301, !1302, !1305, !1317}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !248, file: !228, line: 390, baseType: !226, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !248, file: !228, line: 391, baseType: !252, size: 64, offset: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !236, line: 31, size: 64, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !252, file: !236, line: 32, baseType: !240, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !248, file: !228, line: 392, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !257, line: 23, baseType: !258)
!257 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !259, line: 31, baseType: !260)
!259 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!260 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !248, file: !228, line: 394, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!68, !215, !68, !68, !68, !68}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !248, file: !228, line: 398, baseType: !68, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !248, file: !228, line: 399, baseType: !68, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !248, file: !228, line: 405, baseType: !68, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !248, file: !228, line: 406, baseType: !68, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !248, file: !228, line: 407, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !217, line: 286, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 286, size: 64, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !272, file: !217, line: 286, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !276, line: 18, baseType: !68)
!276 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!277 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !248, file: !228, line: 416, baseType: !278, size: 32, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !60, line: 168, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 166, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !279, file: !60, line: 167, baseType: !74, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !248, file: !228, line: 428, baseType: !278, size: 32, offset: 608)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !248, file: !228, line: 437, baseType: !278, size: 32, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !248, file: !228, line: 447, baseType: !278, size: 32, offset: 672)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !248, file: !228, line: 450, baseType: !286, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !287, line: 13, baseType: !288)
!287 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !60, line: 175, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 173, size: 64, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !289, file: !60, line: 174, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !257, line: 22, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !259, line: 30, baseType: !220)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !248, file: !228, line: 452, baseType: !74, size: 32, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !248, file: !228, line: 454, baseType: !98, offset: 800)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !248, file: !228, line: 457, baseType: !297, size: 256, offset: 832)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !298, line: 35, size: 256, elements: !299)
!298 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301, !302, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !297, file: !298, line: 36, baseType: !286, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !297, file: !298, line: 42, baseType: !286, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !297, file: !298, line: 46, baseType: !303, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !99, line: 29, baseType: !106)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !297, file: !298, line: 47, baseType: !85, size: 128, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !248, file: !228, line: 459, baseType: !85, size: 128, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !248, file: !228, line: 466, baseType: !68, size: 64, offset: 1216)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !248, file: !228, line: 467, baseType: !68, size: 64, offset: 1280)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !248, file: !228, line: 469, baseType: !68, size: 64, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !248, file: !228, line: 470, baseType: !68, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !248, file: !228, line: 471, baseType: !288, size: 64, offset: 1472)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !248, file: !228, line: 472, baseType: !68, size: 64, offset: 1536)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !248, file: !228, line: 473, baseType: !68, size: 64, offset: 1600)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !248, file: !228, line: 474, baseType: !68, size: 64, offset: 1664)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !248, file: !228, line: 475, baseType: !68, size: 64, offset: 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !248, file: !228, line: 477, baseType: !98, offset: 1792)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !248, file: !228, line: 478, baseType: !68, size: 64, offset: 1792)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !248, file: !228, line: 478, baseType: !68, size: 64, offset: 1856)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !248, file: !228, line: 478, baseType: !68, size: 64, offset: 1920)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !248, file: !228, line: 478, baseType: !68, size: 64, offset: 1984)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !248, file: !228, line: 479, baseType: !68, size: 64, offset: 2048)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !248, file: !228, line: 479, baseType: !68, size: 64, offset: 2112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !248, file: !228, line: 479, baseType: !68, size: 64, offset: 2176)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !248, file: !228, line: 480, baseType: !68, size: 64, offset: 2240)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !248, file: !228, line: 480, baseType: !68, size: 64, offset: 2304)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !248, file: !228, line: 480, baseType: !68, size: 64, offset: 2368)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !248, file: !228, line: 480, baseType: !68, size: 64, offset: 2432)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !248, file: !228, line: 482, baseType: !328, size: 2816, offset: 2496)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2816, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 44)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !248, file: !228, line: 488, baseType: !332, size: 256, offset: 5312)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !333, line: 60, size: 256, elements: !334)
!333 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !332, file: !333, line: 61, baseType: !336, size: 256)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 4)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !248, file: !228, line: 490, baseType: !340, size: 64, offset: 5568)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !228, line: 490, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !248, file: !228, line: 493, baseType: !343, size: 896, offset: 5632)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !344, line: 53, baseType: !345)
!344 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 896, elements: !346)
!346 = !{!347, !348, !349, !350, !353, !354, !361, !362, !382, !383, !386}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !345, file: !344, line: 18, baseType: !256, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !345, file: !344, line: 28, baseType: !288, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !345, file: !344, line: 31, baseType: !297, size: 256, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !345, file: !344, line: 32, baseType: !351, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !344, line: 32, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !345, file: !344, line: 37, baseType: !180, size: 16, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !345, file: !344, line: 40, baseType: !355, size: 192, offset: 512)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !356, line: 53, size: 192, elements: !357)
!356 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!357 = !{!358, !359, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !355, file: !356, line: 54, baseType: !286, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !355, file: !356, line: 55, baseType: !98, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !355, file: !356, line: 59, baseType: !85, size: 128, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !345, file: !344, line: 41, baseType: !61, size: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !345, file: !344, line: 42, baseType: !363, size: 64, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !366, line: 13, size: 896, elements: !367)
!366 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !365, file: !366, line: 14, baseType: !61, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !365, file: !366, line: 15, baseType: !68, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !365, file: !366, line: 17, baseType: !68, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !365, file: !366, line: 17, baseType: !68, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !365, file: !366, line: 19, baseType: !66, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !365, file: !366, line: 21, baseType: !66, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !365, file: !366, line: 22, baseType: !66, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !365, file: !366, line: 23, baseType: !66, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !365, file: !366, line: 24, baseType: !66, size: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !365, file: !366, line: 25, baseType: !66, size: 64, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !365, file: !366, line: 26, baseType: !66, size: 64, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !365, file: !366, line: 27, baseType: !66, size: 64, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !365, file: !366, line: 28, baseType: !66, size: 64, offset: 768)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !365, file: !366, line: 29, baseType: !66, size: 64, offset: 832)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !345, file: !344, line: 44, baseType: !278, size: 32, offset: 832)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !345, file: !344, line: 50, baseType: !384, size: 16, offset: 864)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !257, line: 19, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !259, line: 24, baseType: !180)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !345, file: !344, line: 51, baseType: !387, size: 16, offset: 880)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !257, line: 18, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !259, line: 23, baseType: !389)
!389 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !228, line: 495, baseType: !68, size: 64, offset: 6528)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !248, file: !228, line: 497, baseType: !392, size: 64, offset: 6592)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !228, line: 381, size: 384, elements: !394)
!394 = !{!395, !396, !1287}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !393, file: !228, line: 382, baseType: !278, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !393, file: !228, line: 383, baseType: !397, size: 128, offset: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !228, line: 376, size: 128, elements: !398)
!398 = !{!399, !1285}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !397, file: !228, line: 377, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !402, line: 640, size: 48640, elements: !403)
!402 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !412, !413, !414, !420, !421, !422, !423, !424, !425, !426, !427, !431, !449, !460, !555, !556, !557, !568, !569, !571, !572, !573, !574, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !653, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !709, !711, !712, !713, !725, !727, !728, !729, !730, !731, !737, !738, !739, !740, !741, !742, !743, !755, !760, !765, !766, !767, !770, !774, !777, !780, !783, !786, !790, !793, !796, !802, !803, !804, !810, !811, !812, !813, !814, !823, !824, !825, !826, !827, !832, !833, !834, !837, !838, !841, !844, !847, !850, !853, !856, !857, !937, !940, !943, !944, !947, !948, !949, !955, !956, !957, !970, !971, !972, !984, !989, !992, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !401, file: !402, line: 646, baseType: !405, size: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !406, line: 56, size: 128, elements: !407)
!406 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !406, line: 57, baseType: !68, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !405, file: !406, line: 58, baseType: !410, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !257, line: 21, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !259, line: 27, baseType: !7)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !401, file: !402, line: 649, baseType: !65, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !401, file: !402, line: 657, baseType: !61, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !401, file: !402, line: 658, baseType: !415, size: 32, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !416, line: 113, baseType: !417)
!416 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !416, line: 111, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !417, file: !416, line: 112, baseType: !278, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !402, line: 660, baseType: !7, size: 32, offset: 288)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !401, file: !402, line: 661, baseType: !7, size: 32, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !401, file: !402, line: 684, baseType: !74, size: 32, offset: 352)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !401, file: !402, line: 686, baseType: !74, size: 32, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !401, file: !402, line: 687, baseType: !74, size: 32, offset: 416)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !401, file: !402, line: 688, baseType: !74, size: 32, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !401, file: !402, line: 689, baseType: !7, size: 32, offset: 480)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !401, file: !402, line: 691, baseType: !428, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !402, line: 691, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !401, file: !402, line: 692, baseType: !432, size: 832, offset: 576)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !402, line: 451, size: 832, elements: !433)
!433 = !{!434, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !432, file: !402, line: 453, baseType: !435, size: 128)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !402, line: 325, size: 128, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !435, file: !402, line: 326, baseType: !68, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !435, file: !402, line: 327, baseType: !410, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !432, file: !402, line: 454, baseType: !235, size: 192, align: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !432, file: !402, line: 455, baseType: !85, size: 128, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !432, file: !402, line: 456, baseType: !7, size: 32, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !432, file: !402, line: 458, baseType: !256, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !432, file: !402, line: 459, baseType: !256, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !432, file: !402, line: 460, baseType: !256, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !432, file: !402, line: 461, baseType: !256, size: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !432, file: !402, line: 463, baseType: !256, size: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !432, file: !402, line: 465, baseType: !448, offset: 832)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !402, line: 415, elements: !112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !401, file: !402, line: 693, baseType: !450, size: 384, offset: 1408)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !402, line: 489, size: 384, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !450, file: !402, line: 490, baseType: !85, size: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !450, file: !402, line: 491, baseType: !68, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !450, file: !402, line: 492, baseType: !68, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !450, file: !402, line: 493, baseType: !7, size: 32, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !450, file: !402, line: 494, baseType: !180, size: 16, offset: 288)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !450, file: !402, line: 495, baseType: !180, size: 16, offset: 304)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !450, file: !402, line: 497, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !401, file: !402, line: 697, baseType: !461, size: 1792, offset: 1792)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !402, line: 507, size: 1792, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !552, !553}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !461, file: !402, line: 508, baseType: !235, size: 192, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !461, file: !402, line: 515, baseType: !256, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !461, file: !402, line: 516, baseType: !256, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !461, file: !402, line: 517, baseType: !256, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !461, file: !402, line: 518, baseType: !256, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !461, file: !402, line: 519, baseType: !256, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !461, file: !402, line: 526, baseType: !292, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !461, file: !402, line: 527, baseType: !256, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !402, line: 528, baseType: !7, size: 32, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !461, file: !402, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !461, file: !402, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !461, file: !402, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !461, file: !402, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !461, file: !402, line: 563, baseType: !477, size: 512, offset: 704)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !478)
!478 = !{!479, !487, !488, !493, !545, !549, !550, !551}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !6, line: 119, baseType: !480, size: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !481, line: 9, size: 256, elements: !482)
!481 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !481, line: 10, baseType: !235, size: 192, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !480, file: !481, line: 11, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !486, line: 29, baseType: !292)
!486 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !477, file: !6, line: 120, baseType: !485, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !477, file: !6, line: 121, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!5, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !477, file: !6, line: 122, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !496)
!496 = !{!497, !517, !518, !521, !531, !532, !540, !544}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !495, file: !6, line: 160, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !499, file: !6, line: 215, baseType: !303)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !499, file: !6, line: 216, baseType: !7, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !499, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !499, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !499, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !499, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !499, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !499, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !499, file: !6, line: 233, baseType: !485, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !499, file: !6, line: 234, baseType: !492, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !499, file: !6, line: 235, baseType: !485, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !499, file: !6, line: 236, baseType: !492, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !499, file: !6, line: 237, baseType: !514, size: 4096, offset: 512)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 4096, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !495, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !495, file: !6, line: 162, baseType: !519, size: 32, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !60, line: 27, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !172, line: 96, baseType: !74)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !495, file: !6, line: 163, baseType: !522, size: 32, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !523, line: 276, baseType: !524)
!523 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !523, line: 276, size: 32, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !524, file: !523, line: 276, baseType: !527, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !523, line: 70, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !523, line: 65, size: 32, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !528, file: !523, line: 66, baseType: !7, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !495, file: !6, line: 164, baseType: !492, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !495, file: !6, line: 165, baseType: !533, size: 128, offset: 256)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !481, line: 14, size: 128, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !533, file: !481, line: 15, baseType: !536, size: 128)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !236, line: 125, size: 128, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !536, file: !236, line: 126, baseType: !252, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !536, file: !236, line: 127, baseType: !240, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !495, file: !6, line: 166, baseType: !541, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!485}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !495, file: !6, line: 167, baseType: !485, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !477, file: !6, line: 123, baseType: !546, size: 8, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !257, line: 17, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !259, line: 21, baseType: !548)
!548 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !477, file: !6, line: 124, baseType: !546, size: 8, offset: 456)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !477, file: !6, line: 125, baseType: !546, size: 8, offset: 464)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !477, file: !6, line: 126, baseType: !546, size: 8, offset: 472)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !461, file: !402, line: 572, baseType: !477, size: 512, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !461, file: !402, line: 580, baseType: !554, size: 64, offset: 1728)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !401, file: !402, line: 721, baseType: !7, size: 32, offset: 3584)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !401, file: !402, line: 722, baseType: !74, size: 32, offset: 3616)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !401, file: !402, line: 723, baseType: !558, size: 64, offset: 3648)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !561, line: 17, baseType: !562)
!561 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !561, line: 17, size: 64, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !562, file: !561, line: 17, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 1)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !401, file: !402, line: 724, baseType: !560, size: 64, offset: 3712)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !401, file: !402, line: 749, baseType: !570, offset: 3776)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !402, line: 290, elements: !112)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !401, file: !402, line: 751, baseType: !85, size: 128, offset: 3776)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !401, file: !402, line: 757, baseType: !244, size: 64, offset: 3904)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !401, file: !402, line: 758, baseType: !244, size: 64, offset: 3968)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !401, file: !402, line: 761, baseType: !575, size: 320, offset: 4032)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !333, line: 34, size: 320, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !575, file: !333, line: 35, baseType: !256, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !575, file: !333, line: 36, baseType: !579, size: 256, offset: 64)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !337)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !401, file: !402, line: 766, baseType: !74, size: 32, offset: 4352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !401, file: !402, line: 767, baseType: !74, size: 32, offset: 4384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !401, file: !402, line: 768, baseType: !74, size: 32, offset: 4416)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !401, file: !402, line: 770, baseType: !74, size: 32, offset: 4448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !401, file: !402, line: 772, baseType: !68, size: 64, offset: 4480)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !401, file: !402, line: 775, baseType: !7, size: 32, offset: 4544)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !401, file: !402, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !401, file: !402, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !401, file: !402, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !401, file: !402, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !401, file: !402, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !401, file: !402, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !401, file: !402, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !401, file: !402, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !401, file: !402, line: 831, baseType: !68, size: 64, offset: 4672)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !401, file: !402, line: 833, baseType: !596, size: 384, offset: 4736)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !597)
!597 = !{!598, !603}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !596, file: !12, line: 26, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!66, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !596, file: !12, line: 27, baseType: !604, size: 320, offset: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !596, file: !12, line: 27, size: 320, elements: !605)
!605 = !{!606, !616, !643}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !604, file: !12, line: 36, baseType: !607, size: 320)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !12, line: 29, size: 320, elements: !608)
!608 = !{!609, !611, !612, !613, !614, !615}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !607, file: !12, line: 30, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !607, file: !12, line: 31, baseType: !410, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !12, line: 32, baseType: !410, size: 32, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !607, file: !12, line: 33, baseType: !410, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !607, file: !12, line: 34, baseType: !256, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !607, file: !12, line: 35, baseType: !610, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !604, file: !12, line: 46, baseType: !617, size: 192)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !12, line: 38, size: 192, elements: !618)
!618 = !{!619, !620, !621, !642}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !617, file: !12, line: 39, baseType: !519, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !12, line: 41, baseType: !622, size: 64, offset: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !12, line: 41, size: 64, elements: !623)
!623 = !{!624, !632}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !622, file: !12, line: 42, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !627, line: 7, size: 128, elements: !628)
!627 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!628 = !{!629, !631}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !626, file: !627, line: 8, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !172, line: 93, baseType: !220)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !626, file: !627, line: 9, baseType: !220, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !622, file: !12, line: 43, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !635, line: 7, size: 64, elements: !636)
!635 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!636 = !{!637, !641}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !634, file: !635, line: 8, baseType: !638, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !635, line: 5, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !257, line: 20, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !259, line: 26, baseType: !74)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !634, file: !635, line: 9, baseType: !639, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !617, file: !12, line: 45, baseType: !256, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !604, file: !12, line: 54, baseType: !644, size: 256)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !12, line: 48, size: 256, elements: !645)
!645 = !{!646, !649, !650, !651, !652}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !644, file: !12, line: 49, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !644, file: !12, line: 50, baseType: !74, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !644, file: !12, line: 51, baseType: !74, size: 32, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !644, file: !12, line: 52, baseType: !68, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !644, file: !12, line: 53, baseType: !68, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !401, file: !402, line: 835, baseType: !654, size: 32, offset: 5120)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !60, line: 22, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !172, line: 28, baseType: !74)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !401, file: !402, line: 836, baseType: !654, size: 32, offset: 5152)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !401, file: !402, line: 840, baseType: !68, size: 64, offset: 5184)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !401, file: !402, line: 849, baseType: !400, size: 64, offset: 5248)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !401, file: !402, line: 852, baseType: !400, size: 64, offset: 5312)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !401, file: !402, line: 857, baseType: !85, size: 128, offset: 5376)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !401, file: !402, line: 858, baseType: !85, size: 128, offset: 5504)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !401, file: !402, line: 859, baseType: !400, size: 64, offset: 5632)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !401, file: !402, line: 867, baseType: !85, size: 128, offset: 5696)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !401, file: !402, line: 868, baseType: !85, size: 128, offset: 5824)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !401, file: !402, line: 871, baseType: !666, size: 64, offset: 5952)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !668, line: 59, size: 768, elements: !669)
!668 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!669 = !{!670, !671, !672, !673, !684, !685, !692, !701}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !667, file: !668, line: 61, baseType: !415, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !667, file: !668, line: 62, baseType: !7, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !667, file: !668, line: 63, baseType: !98, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !667, file: !668, line: 65, baseType: !674, size: 256, offset: 64)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !337)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !60, line: 182, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !675, file: !60, line: 183, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !60, line: 186, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !60, line: 187, baseType: !678, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !679, file: !60, line: 187, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !667, file: !668, line: 66, baseType: !675, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !667, file: !668, line: 68, baseType: !686, size: 128, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !687, line: 40, baseType: !688)
!687 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !687, line: 36, size: 128, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !688, file: !687, line: 37, baseType: !98)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !688, file: !687, line: 38, baseType: !85, size: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !667, file: !668, line: 69, baseType: !693, size: 128, align: 64, offset: 512)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !60, line: 216, size: 128, align: 64, elements: !694)
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !60, line: 217, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !693, file: !60, line: 218, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !696}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !667, file: !668, line: 70, baseType: !702, size: 128, offset: 640)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 128, elements: !566)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !668, line: 54, size: 128, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !703, file: !668, line: 55, baseType: !74, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !703, file: !668, line: 56, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !668, line: 56, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !401, file: !402, line: 872, baseType: !710, size: 512, offset: 6016)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 512, elements: !337)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !401, file: !402, line: 873, baseType: !85, size: 128, offset: 6528)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !401, file: !402, line: 874, baseType: !85, size: 128, offset: 6656)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !401, file: !402, line: 876, baseType: !714, size: 64, offset: 6784)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !716, line: 26, size: 192, elements: !717)
!716 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !715, file: !716, line: 27, baseType: !7, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !715, file: !716, line: 28, baseType: !720, size: 128, offset: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !721, line: 43, size: 128, elements: !722)
!721 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !720, file: !721, line: 44, baseType: !303)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !720, file: !721, line: 45, baseType: !85, size: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !401, file: !402, line: 879, baseType: !726, size: 64, offset: 6848)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !401, file: !402, line: 882, baseType: !726, size: 64, offset: 6912)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !401, file: !402, line: 884, baseType: !256, size: 64, offset: 6976)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !401, file: !402, line: 885, baseType: !256, size: 64, offset: 7040)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !401, file: !402, line: 890, baseType: !256, size: 64, offset: 7104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !401, file: !402, line: 891, baseType: !732, size: 128, offset: 7168)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !402, line: 242, size: 128, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !732, file: !402, line: 244, baseType: !256, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !732, file: !402, line: 245, baseType: !256, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !732, file: !402, line: 246, baseType: !303, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !401, file: !402, line: 900, baseType: !68, size: 64, offset: 7296)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !401, file: !402, line: 901, baseType: !68, size: 64, offset: 7360)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !401, file: !402, line: 904, baseType: !256, size: 64, offset: 7424)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !401, file: !402, line: 907, baseType: !256, size: 64, offset: 7488)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !401, file: !402, line: 910, baseType: !68, size: 64, offset: 7552)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !401, file: !402, line: 911, baseType: !68, size: 64, offset: 7616)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !401, file: !402, line: 914, baseType: !744, size: 640, offset: 7680)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !745, line: 123, size: 640, elements: !746)
!745 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!746 = !{!747, !753, !754}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !744, file: !745, line: 124, baseType: !748, size: 576)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 576, elements: !140)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !745, line: 108, size: 192, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !749, file: !745, line: 109, baseType: !256, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !749, file: !745, line: 110, baseType: !533, size: 128, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !744, file: !745, line: 125, baseType: !7, size: 32, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !744, file: !745, line: 126, baseType: !7, size: 32, offset: 608)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !401, file: !402, line: 917, baseType: !756, size: 192, offset: 8320)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !745, line: 134, size: 192, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !756, file: !745, line: 135, baseType: !693, size: 128, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !756, file: !745, line: 136, baseType: !7, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !401, file: !402, line: 923, baseType: !761, size: 64, offset: 8512)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !764, line: 11, flags: DIFlagFwdDecl)
!764 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!765 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !401, file: !402, line: 926, baseType: !761, size: 64, offset: 8576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !401, file: !402, line: 929, baseType: !761, size: 64, offset: 8640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !401, file: !402, line: 933, baseType: !768, size: 64, offset: 8704)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !402, line: 933, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !401, file: !402, line: 943, baseType: !771, size: 128, offset: 8768)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 16)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !401, file: !402, line: 945, baseType: !775, size: 64, offset: 8896)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !402, line: 49, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !401, file: !402, line: 956, baseType: !778, size: 64, offset: 8960)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !402, line: 45, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !401, file: !402, line: 959, baseType: !781, size: 64, offset: 9024)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !402, line: 959, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !401, file: !402, line: 962, baseType: !784, size: 64, offset: 9088)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !402, line: 66, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !401, file: !402, line: 966, baseType: !787, size: 64, offset: 9152)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !789, line: 35, flags: DIFlagFwdDecl)
!789 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!790 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !401, file: !402, line: 969, baseType: !791, size: 64, offset: 9216)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !745, line: 223, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !401, file: !402, line: 970, baseType: !794, size: 64, offset: 9280)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !402, line: 62, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !401, file: !402, line: 971, baseType: !797, size: 64, offset: 9344)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !798, line: 25, baseType: !799)
!798 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !798, line: 23, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !799, file: !798, line: 24, baseType: !565, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !401, file: !402, line: 972, baseType: !797, size: 64, offset: 9408)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !401, file: !402, line: 974, baseType: !797, size: 64, offset: 9472)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !401, file: !402, line: 975, baseType: !805, size: 192, offset: 9536)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !806, line: 30, size: 192, elements: !807)
!806 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !805, file: !806, line: 31, baseType: !85, size: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !805, file: !806, line: 32, baseType: !797, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !401, file: !402, line: 976, baseType: !68, size: 64, offset: 9728)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !401, file: !402, line: 977, baseType: !185, size: 64, offset: 9792)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !401, file: !402, line: 978, baseType: !7, size: 32, offset: 9856)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !401, file: !402, line: 980, baseType: !696, size: 64, offset: 9920)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !401, file: !402, line: 989, baseType: !815, size: 128, offset: 9984)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !816, line: 35, size: 128, elements: !817)
!816 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !815, file: !816, line: 36, baseType: !74, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !815, file: !816, line: 37, baseType: !278, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !815, file: !816, line: 38, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !816, line: 23, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !401, file: !402, line: 992, baseType: !256, size: 64, offset: 10112)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !401, file: !402, line: 993, baseType: !256, size: 64, offset: 10176)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !401, file: !402, line: 996, baseType: !98, offset: 10240)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !401, file: !402, line: 999, baseType: !303, offset: 10240)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !401, file: !402, line: 1001, baseType: !828, size: 64, offset: 10240)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !402, line: 636, size: 64, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !402, line: 637, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !401, file: !402, line: 1005, baseType: !536, size: 128, offset: 10304)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !401, file: !402, line: 1007, baseType: !400, size: 64, offset: 10432)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !401, file: !402, line: 1009, baseType: !835, size: 64, offset: 10496)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !402, line: 1009, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !401, file: !402, line: 1043, baseType: !61, size: 64, offset: 10560)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !401, file: !402, line: 1046, baseType: !839, size: 64, offset: 10624)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !402, line: 41, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !401, file: !402, line: 1050, baseType: !842, size: 64, offset: 10688)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !402, line: 42, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !401, file: !402, line: 1054, baseType: !845, size: 64, offset: 10752)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !402, line: 55, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !401, file: !402, line: 1056, baseType: !848, size: 64, offset: 10816)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !402, line: 40, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !401, file: !402, line: 1058, baseType: !851, size: 64, offset: 10880)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !402, line: 47, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !401, file: !402, line: 1061, baseType: !854, size: 64, offset: 10944)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !402, line: 43, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !401, file: !402, line: 1064, baseType: !68, size: 64, offset: 11008)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !401, file: !402, line: 1065, baseType: !858, size: 64, offset: 11072)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !806, line: 14, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !806, line: 12, size: 384, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !806, line: 13, baseType: !863, size: 384)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !806, line: 13, size: 384, elements: !864)
!864 = !{!865, !866, !867, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !863, file: !806, line: 13, baseType: !74, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !863, file: !806, line: 13, baseType: !74, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !863, file: !806, line: 13, baseType: !74, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !863, file: !806, line: 13, baseType: !869, size: 256, offset: 128)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !870, line: 32, size: 256, elements: !871)
!870 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!871 = !{!872, !878, !891, !897, !906, !926, !931}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !869, file: !870, line: 37, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 34, size: 64, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !873, file: !870, line: 35, baseType: !655, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !873, file: !870, line: 36, baseType: !877, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !172, line: 49, baseType: !7)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !869, file: !870, line: 45, baseType: !879, size: 192)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 40, size: 192, elements: !880)
!880 = !{!881, !883, !884, !890}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !879, file: !870, line: 41, baseType: !882, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !172, line: 95, baseType: !74)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !879, file: !870, line: 42, baseType: !74, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !879, file: !870, line: 43, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !870, line: 11, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !870, line: 8, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !886, file: !870, line: 9, baseType: !74, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !886, file: !870, line: 10, baseType: !61, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !879, file: !870, line: 44, baseType: !74, size: 32, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !869, file: !870, line: 52, baseType: !892, size: 128)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 48, size: 128, elements: !893)
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !892, file: !870, line: 49, baseType: !655, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !892, file: !870, line: 50, baseType: !877, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !892, file: !870, line: 51, baseType: !885, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !869, file: !870, line: 61, baseType: !898, size: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 55, size: 256, elements: !899)
!899 = !{!900, !901, !902, !903, !905}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !898, file: !870, line: 56, baseType: !655, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !898, file: !870, line: 57, baseType: !877, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !898, file: !870, line: 58, baseType: !74, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !898, file: !870, line: 59, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !172, line: 94, baseType: !173)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !898, file: !870, line: 60, baseType: !904, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !869, file: !870, line: 95, baseType: !907, size: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 64, size: 256, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !907, file: !870, line: 65, baseType: !61, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !870, line: 77, baseType: !911, size: 192, offset: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !870, line: 77, size: 192, elements: !912)
!912 = !{!913, !914, !921}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !911, file: !870, line: 82, baseType: !389, size: 16)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !911, file: !870, line: 88, baseType: !915, size: 192)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !870, line: 84, size: 192, elements: !916)
!916 = !{!917, !919, !920}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !915, file: !870, line: 85, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !515)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !915, file: !870, line: 86, baseType: !61, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !915, file: !870, line: 87, baseType: !61, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !911, file: !870, line: 93, baseType: !922, size: 96)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !870, line: 90, size: 96, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !922, file: !870, line: 91, baseType: !918, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !922, file: !870, line: 92, baseType: !411, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !869, file: !870, line: 101, baseType: !927, size: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 98, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !927, file: !870, line: 99, baseType: !66, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !927, file: !870, line: 100, baseType: !74, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !869, file: !870, line: 108, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 104, size: 128, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !932, file: !870, line: 105, baseType: !61, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !932, file: !870, line: 106, baseType: !74, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !932, file: !870, line: 107, baseType: !7, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !401, file: !402, line: 1067, baseType: !938, offset: 11136)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !939, line: 12, elements: !112)
!939 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!940 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !401, file: !402, line: 1099, baseType: !941, size: 64, offset: 11136)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !402, line: 56, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !401, file: !402, line: 1103, baseType: !85, size: 128, offset: 11200)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !401, file: !402, line: 1104, baseType: !945, size: 64, offset: 11328)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !402, line: 46, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !401, file: !402, line: 1105, baseType: !355, size: 192, offset: 11392)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !401, file: !402, line: 1106, baseType: !7, size: 32, offset: 11584)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !401, file: !402, line: 1109, baseType: !950, size: 128, offset: 11648)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 128, elements: !953)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !402, line: 51, flags: DIFlagFwdDecl)
!953 = !{!954}
!954 = !DISubrange(count: 2)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !401, file: !402, line: 1110, baseType: !355, size: 192, offset: 11776)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !401, file: !402, line: 1111, baseType: !85, size: 128, offset: 11968)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !401, file: !402, line: 1173, baseType: !958, size: 64, offset: 12096)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !960, line: 62, size: 256, align: 256, elements: !961)
!960 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!961 = !{!962, !963, !964, !969}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !959, file: !960, line: 75, baseType: !411, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !959, file: !960, line: 90, baseType: !411, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !959, file: !960, line: 124, baseType: !965, size: 64, offset: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !960, line: 109, size: 64, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !965, file: !960, line: 110, baseType: !258, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !965, file: !960, line: 112, baseType: !258, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !960, line: 144, baseType: !411, size: 32, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !401, file: !402, line: 1174, baseType: !410, size: 32, offset: 12160)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !401, file: !402, line: 1179, baseType: !68, size: 64, offset: 12224)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !401, file: !402, line: 1182, baseType: !973, size: 128, offset: 12288)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !333, line: 76, size: 128, elements: !974)
!974 = !{!975, !980, !983}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !973, file: !333, line: 85, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !977, line: 7, size: 64, elements: !978)
!977 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !976, file: !977, line: 12, baseType: !562, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !973, file: !333, line: 88, baseType: !981, size: 8, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !60, line: 30, baseType: !982)
!982 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !973, file: !333, line: 95, baseType: !981, size: 8, offset: 72)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !402, line: 1184, baseType: !985, size: 128, offset: 12416)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !402, line: 1184, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !985, file: !402, line: 1185, baseType: !415, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !985, file: !402, line: 1186, baseType: !693, size: 128, align: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !401, file: !402, line: 1190, baseType: !990, size: 64, offset: 12544)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !402, line: 53, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !401, file: !402, line: 1192, baseType: !993, size: 128, offset: 12608)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !333, line: 64, size: 128, elements: !994)
!994 = !{!995, !1088, !1089}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !993, file: !333, line: 65, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !228, line: 68, size: 512, align: 128, elements: !998)
!998 = !{!999, !1000, !1080, !1087}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !997, file: !228, line: 69, baseType: !68, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !228, line: 77, baseType: !1001, size: 320, offset: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !228, line: 77, size: 320, elements: !1002)
!1002 = !{!1003, !1012, !1017, !1045, !1053, !1059, !1072, !1079}
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !228, line: 78, baseType: !1004, size: 320)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !228, line: 78, size: 320, elements: !1005)
!1005 = !{!1006, !1007, !1010, !1011}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1004, file: !228, line: 84, baseType: !85, size: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1004, file: !228, line: 86, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !228, line: 26, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1004, file: !228, line: 87, baseType: !68, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1004, file: !228, line: 94, baseType: !68, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !228, line: 96, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !228, line: 96, size: 64, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1013, file: !228, line: 101, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !60, line: 143, baseType: !256)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !228, line: 103, baseType: !1018, size: 320)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !228, line: 103, size: 320, elements: !1019)
!1019 = !{!1020, !1030, !1033, !1034}
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !228, line: 104, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !228, line: 104, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1021, file: !228, line: 105, baseType: !85, size: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !228, line: 106, baseType: !1025, size: 128)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1021, file: !228, line: 106, size: 128, elements: !1026)
!1026 = !{!1027, !1028, !1029}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1025, file: !228, line: 107, baseType: !996, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1025, file: !228, line: 109, baseType: !74, size: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1025, file: !228, line: 110, baseType: !74, size: 32, offset: 96)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1018, file: !228, line: 117, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !228, line: 117, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1018, file: !228, line: 119, baseType: !61, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !228, line: 120, baseType: !1035, size: 64, offset: 256)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !228, line: 120, size: 64, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1035, file: !228, line: 121, baseType: !61, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1035, file: !228, line: 122, baseType: !68, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !228, line: 123, baseType: !1040, size: 32)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !228, line: 123, size: 32, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1040, file: !228, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1040, file: !228, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1040, file: !228, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !228, line: 130, baseType: !1046, size: 192)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !228, line: 130, size: 192, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1046, file: !228, line: 131, baseType: !68, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1046, file: !228, line: 134, baseType: !548, size: 8, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1046, file: !228, line: 135, baseType: !548, size: 8, offset: 72)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1046, file: !228, line: 136, baseType: !278, size: 32, offset: 96)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1046, file: !228, line: 137, baseType: !7, size: 32, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !228, line: 139, baseType: !1054, size: 256)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !228, line: 139, size: 256, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1054, file: !228, line: 140, baseType: !68, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1054, file: !228, line: 141, baseType: !278, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1054, file: !228, line: 143, baseType: !85, size: 128, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !228, line: 145, baseType: !1060, size: 256)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !228, line: 145, size: 256, elements: !1061)
!1061 = !{!1062, !1063, !1065, !1066, !1071}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1060, file: !228, line: 146, baseType: !68, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1060, file: !228, line: 147, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !217, line: 509, baseType: !996)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1060, file: !228, line: 148, baseType: !68, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !228, line: 149, baseType: !1067, size: 64, offset: 192)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !228, line: 149, size: 64, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1067, file: !228, line: 150, baseType: !244, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1067, file: !228, line: 151, baseType: !278, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1060, file: !228, line: 156, baseType: !98, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !228, line: 159, baseType: !1073, size: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !228, line: 159, size: 128, elements: !1074)
!1074 = !{!1075, !1078}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1073, file: !228, line: 161, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !228, line: 161, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1073, file: !228, line: 162, baseType: !61, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1001, file: !228, line: 176, baseType: !693, size: 128, align: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !228, line: 179, baseType: !1081, size: 32, offset: 384)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !228, line: 179, size: 32, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1081, file: !228, line: 184, baseType: !278, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1081, file: !228, line: 192, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1081, file: !228, line: 194, baseType: !7, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1081, file: !228, line: 195, baseType: !74, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !997, file: !228, line: 199, baseType: !278, size: 32, offset: 416)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !993, file: !333, line: 67, baseType: !411, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !993, file: !333, line: 68, baseType: !411, size: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !401, file: !402, line: 1206, baseType: !74, size: 32, offset: 12736)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !401, file: !402, line: 1207, baseType: !74, size: 32, offset: 12768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !401, file: !402, line: 1209, baseType: !68, size: 64, offset: 12800)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !401, file: !402, line: 1219, baseType: !256, size: 64, offset: 12864)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !401, file: !402, line: 1220, baseType: !256, size: 64, offset: 12928)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !401, file: !402, line: 1317, baseType: !74, size: 32, offset: 12992)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !401, file: !402, line: 1319, baseType: !400, size: 64, offset: 13056)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !401, file: !402, line: 1322, baseType: !1098, size: 64, offset: 13120)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !402, line: 1322, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !401, file: !402, line: 1326, baseType: !415, size: 32, offset: 13184)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !401, file: !402, line: 1342, baseType: !61, size: 64, offset: 13248)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !401, file: !402, line: 1343, baseType: !258, size: 64, offset: 13312)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !401, file: !402, line: 1344, baseType: !256, size: 64, offset: 13376)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !401, file: !402, line: 1345, baseType: !258, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !401, file: !402, line: 1346, baseType: !258, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !401, file: !402, line: 1347, baseType: !258, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !401, file: !402, line: 1348, baseType: !693, size: 128, align: 64, offset: 13504)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !401, file: !402, line: 1358, baseType: !1109, size: 34816, offset: 13824)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1110, line: 485, size: 34816, elements: !1111)
!1110 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1111 = !{!1112, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1141, !1142, !1143, !1144, !1145, !1146, !1149, !1150, !1151}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1109, file: !1110, line: 487, baseType: !1113, size: 192)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 192, elements: !140)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1115, line: 16, size: 64, elements: !1116)
!1115 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1114, file: !1115, line: 17, baseType: !384, size: 16)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1114, file: !1115, line: 18, baseType: !384, size: 16, offset: 16)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1114, file: !1115, line: 19, baseType: !384, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1114, file: !1115, line: 19, baseType: !384, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1114, file: !1115, line: 19, baseType: !384, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1114, file: !1115, line: 19, baseType: !384, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1114, file: !1115, line: 19, baseType: !384, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1114, file: !1115, line: 20, baseType: !384, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1114, file: !1115, line: 20, baseType: !384, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1114, file: !1115, line: 20, baseType: !384, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1114, file: !1115, line: 20, baseType: !384, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1114, file: !1115, line: 20, baseType: !384, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1114, file: !1115, line: 20, baseType: !384, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1109, file: !1110, line: 491, baseType: !68, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1109, file: !1110, line: 495, baseType: !180, size: 16, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1109, file: !1110, line: 496, baseType: !180, size: 16, offset: 272)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1109, file: !1110, line: 497, baseType: !180, size: 16, offset: 288)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1109, file: !1110, line: 498, baseType: !180, size: 16, offset: 304)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1109, file: !1110, line: 502, baseType: !68, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1109, file: !1110, line: 503, baseType: !68, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1109, file: !1110, line: 514, baseType: !1138, size: 256, offset: 448)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 256, elements: !337)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1110, line: 483, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1109, file: !1110, line: 516, baseType: !68, size: 64, offset: 704)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1109, file: !1110, line: 518, baseType: !68, size: 64, offset: 768)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1109, file: !1110, line: 520, baseType: !68, size: 64, offset: 832)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1109, file: !1110, line: 521, baseType: !68, size: 64, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1109, file: !1110, line: 522, baseType: !68, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1109, file: !1110, line: 528, baseType: !1147, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1110, line: 10, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1109, file: !1110, line: 535, baseType: !68, size: 64, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1109, file: !1110, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1109, file: !1110, line: 540, baseType: !1152, size: 33280, offset: 1536)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1153, line: 317, size: 33280, elements: !1154)
!1153 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1152, file: !1153, line: 330, baseType: !7, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1152, file: !1153, line: 337, baseType: !68, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1152, file: !1153, line: 348, baseType: !1158, size: 32768, offset: 512)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1153, line: 304, size: 32768, elements: !1159)
!1159 = !{!1160, !1175, !1214, !1264, !1281}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1158, file: !1153, line: 305, baseType: !1161, size: 896)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1153, line: 12, size: 896, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1174}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1161, file: !1153, line: 13, baseType: !410, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1161, file: !1153, line: 14, baseType: !410, size: 32, offset: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1161, file: !1153, line: 15, baseType: !410, size: 32, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1161, file: !1153, line: 16, baseType: !410, size: 32, offset: 96)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1161, file: !1153, line: 17, baseType: !410, size: 32, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1161, file: !1153, line: 18, baseType: !410, size: 32, offset: 160)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1161, file: !1153, line: 19, baseType: !410, size: 32, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1161, file: !1153, line: 22, baseType: !1171, size: 640, offset: 224)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 640, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 20)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1161, file: !1153, line: 25, baseType: !410, size: 32, offset: 864)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1158, file: !1153, line: 306, baseType: !1176, size: 4096, align: 128)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1153, line: 34, size: 4096, align: 128, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1197, !1198, !1199, !1203, !1205, !1209}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1176, file: !1153, line: 35, baseType: !384, size: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1176, file: !1153, line: 36, baseType: !384, size: 16, offset: 16)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1176, file: !1153, line: 37, baseType: !384, size: 16, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1176, file: !1153, line: 38, baseType: !384, size: 16, offset: 48)
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1153, line: 39, baseType: !1183, size: 128, offset: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !1153, line: 39, size: 128, elements: !1184)
!1184 = !{!1185, !1190}
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1153, line: 40, baseType: !1186, size: 128)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1183, file: !1153, line: 40, size: 128, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1186, file: !1153, line: 41, baseType: !256, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1186, file: !1153, line: 42, baseType: !256, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1153, line: 44, baseType: !1191, size: 128)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1183, file: !1153, line: 44, size: 128, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1191, file: !1153, line: 45, baseType: !410, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1191, file: !1153, line: 46, baseType: !410, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1191, file: !1153, line: 47, baseType: !410, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1191, file: !1153, line: 48, baseType: !410, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1176, file: !1153, line: 51, baseType: !410, size: 32, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1176, file: !1153, line: 52, baseType: !410, size: 32, offset: 224)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1176, file: !1153, line: 55, baseType: !1200, size: 1024, offset: 256)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 1024, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1176, file: !1153, line: 58, baseType: !1204, size: 2048, offset: 1280)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 2048, elements: !144)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1176, file: !1153, line: 60, baseType: !1206, size: 384, offset: 3328)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 384, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 12)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1153, line: 62, baseType: !1210, size: 384, offset: 3712)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !1153, line: 62, size: 384, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1210, file: !1153, line: 63, baseType: !1206, size: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1210, file: !1153, line: 64, baseType: !1206, size: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1158, file: !1153, line: 307, baseType: !1215, size: 1088)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1153, line: 79, size: 1088, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1263}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1215, file: !1153, line: 80, baseType: !410, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1215, file: !1153, line: 81, baseType: !410, size: 32, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1215, file: !1153, line: 82, baseType: !410, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1215, file: !1153, line: 83, baseType: !410, size: 32, offset: 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1215, file: !1153, line: 84, baseType: !410, size: 32, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1215, file: !1153, line: 85, baseType: !410, size: 32, offset: 160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1215, file: !1153, line: 86, baseType: !410, size: 32, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1215, file: !1153, line: 88, baseType: !1171, size: 640, offset: 224)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1215, file: !1153, line: 89, baseType: !546, size: 8, offset: 864)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1215, file: !1153, line: 90, baseType: !546, size: 8, offset: 872)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1215, file: !1153, line: 91, baseType: !546, size: 8, offset: 880)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1215, file: !1153, line: 92, baseType: !546, size: 8, offset: 888)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1215, file: !1153, line: 93, baseType: !546, size: 8, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1215, file: !1153, line: 94, baseType: !546, size: 8, offset: 904)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1215, file: !1153, line: 95, baseType: !1232, size: 64, offset: 960)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1234, line: 11, size: 128, elements: !1235)
!1234 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1233, file: !1234, line: 12, baseType: !66, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1233, file: !1234, line: 13, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1240, line: 56, size: 1344, elements: !1241)
!1240 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1239, file: !1240, line: 61, baseType: !68, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1239, file: !1240, line: 62, baseType: !68, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1239, file: !1240, line: 63, baseType: !68, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1239, file: !1240, line: 64, baseType: !68, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1239, file: !1240, line: 65, baseType: !68, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1239, file: !1240, line: 66, baseType: !68, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1239, file: !1240, line: 68, baseType: !68, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1239, file: !1240, line: 69, baseType: !68, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1239, file: !1240, line: 70, baseType: !68, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1239, file: !1240, line: 71, baseType: !68, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1239, file: !1240, line: 72, baseType: !68, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1239, file: !1240, line: 73, baseType: !68, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1239, file: !1240, line: 74, baseType: !68, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1239, file: !1240, line: 75, baseType: !68, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1239, file: !1240, line: 76, baseType: !68, size: 64, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1239, file: !1240, line: 81, baseType: !68, size: 64, offset: 960)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1239, file: !1240, line: 83, baseType: !68, size: 64, offset: 1024)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1239, file: !1240, line: 84, baseType: !68, size: 64, offset: 1088)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !1240, line: 85, baseType: !68, size: 64, offset: 1152)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1239, file: !1240, line: 86, baseType: !68, size: 64, offset: 1216)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1239, file: !1240, line: 87, baseType: !68, size: 64, offset: 1280)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1215, file: !1153, line: 96, baseType: !410, size: 32, offset: 1024)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1158, file: !1153, line: 308, baseType: !1265, size: 4608, align: 512)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1153, line: 289, size: 4608, align: 512, elements: !1266)
!1266 = !{!1267, !1268, !1277}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1265, file: !1153, line: 290, baseType: !1176, size: 4096, align: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1265, file: !1153, line: 291, baseType: !1269, size: 512, offset: 4096)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1153, line: 268, size: 512, elements: !1270)
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1269, file: !1153, line: 269, baseType: !256, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1269, file: !1153, line: 270, baseType: !256, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1269, file: !1153, line: 271, baseType: !1274, size: 384, offset: 128)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 384, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 6)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1265, file: !1153, line: 292, baseType: !1278, offset: 4608)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 0)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1158, file: !1153, line: 309, baseType: !1282, size: 32768)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 32768, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 4096)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !228, line: 378, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !393, file: !228, line: 384, baseType: !715, size: 192, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !248, file: !228, line: 500, baseType: !98, offset: 6656)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !248, file: !228, line: 501, baseType: !1290, size: 64, offset: 6656)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !228, line: 387, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !248, file: !228, line: 516, baseType: !1293, size: 64, offset: 6720)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1295, line: 18, flags: DIFlagFwdDecl)
!1295 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !248, file: !228, line: 519, baseType: !215, size: 64, offset: 6784)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !248, file: !228, line: 521, baseType: !1298, size: 64, offset: 6848)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !228, line: 521, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !248, file: !228, line: 545, baseType: !278, size: 32, offset: 6912)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !248, file: !228, line: 548, baseType: !981, size: 8, offset: 6944)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !248, file: !228, line: 550, baseType: !1303, offset: 6952)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1304, line: 142, elements: !112)
!1304 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !248, file: !228, line: 554, baseType: !1306, size: 256, offset: 6976)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1307, line: 102, size: 256, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1306, file: !1307, line: 103, baseType: !286, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1306, file: !1307, line: 104, baseType: !85, size: 128, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1306, file: !1307, line: 105, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1307, line: 21, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !248, file: !228, line: 557, baseType: !410, size: 32, offset: 7232)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !245, file: !228, line: 565, baseType: !1319, offset: 7296)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: -1)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !227, file: !228, line: 333, baseType: !1323, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !217, line: 284, baseType: !1324)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !217, line: 284, size: 64, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1324, file: !217, line: 284, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !276, line: 19, baseType: !68)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !227, file: !228, line: 334, baseType: !68, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !227, file: !228, line: 343, baseType: !1330, size: 256, offset: 704)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !228, line: 340, size: 256, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1330, file: !228, line: 341, baseType: !235, size: 192, align: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1330, file: !228, line: 342, baseType: !68, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !227, file: !228, line: 351, baseType: !85, size: 128, offset: 960)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !227, file: !228, line: 353, baseType: !1336, size: 64, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !228, line: 353, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !227, file: !228, line: 356, baseType: !1339, size: 64, offset: 1152)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !228, line: 356, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !227, file: !228, line: 359, baseType: !68, size: 64, offset: 1216)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !227, file: !228, line: 361, baseType: !215, size: 64, offset: 1280)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !227, file: !228, line: 362, baseType: !61, size: 64, offset: 1344)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !227, file: !228, line: 365, baseType: !286, size: 64, offset: 1408)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !227, file: !228, line: 373, baseType: !1347, offset: 1472)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !228, line: 296, elements: !112)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !194, file: !164, line: 90, baseType: !189, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !194, file: !164, line: 91, baseType: !1350, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !154, file: !81, line: 143, baseType: !1352, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!1355, !91}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1358)
!1358 = !{!1359, !1360, !1364, !1368, !1376, !1380}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1357, file: !18, line: 40, baseType: !17, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1357, file: !18, line: 41, baseType: !1361, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!981}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1357, file: !18, line: 42, baseType: !1365, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!61}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1357, file: !18, line: 43, baseType: !1369, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1372, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1357, file: !18, line: 44, baseType: !1377, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1372}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1357, file: !18, line: 45, baseType: !1381, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !61}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !154, file: !81, line: 144, baseType: !1385, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1372, !91}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !154, file: !81, line: 145, baseType: !1389, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !91, !1392, !1398}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1295, line: 23, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 21, size: 32, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1394, file: !1295, line: 22, baseType: !1397, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !60, line: 32, baseType: !877)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1295, line: 28, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 26, size: 32, elements: !1401)
!1401 = !{!1402}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1400, file: !1295, line: 27, baseType: !1403, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !60, line: 33, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !172, line: 50, baseType: !7)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !80, file: !81, line: 70, baseType: !1406, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1408, line: 123, size: 1024, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1551, !1552, !1553, !1554, !1555}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1407, file: !1408, line: 124, baseType: !278, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1407, file: !1408, line: 125, baseType: !278, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1407, file: !1408, line: 135, baseType: !1406, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1407, file: !1408, line: 136, baseType: !56, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1407, file: !1408, line: 138, baseType: !235, size: 192, align: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1407, file: !1408, line: 140, baseType: !1372, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1407, file: !1408, line: 141, baseType: !7, size: 32, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1407, file: !1408, line: 142, baseType: !1418, size: 256, offset: 512)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1407, file: !1408, line: 142, size: 256, elements: !1419)
!1419 = !{!1420, !1474, !1478}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1418, file: !1408, line: 143, baseType: !1421, size: 192)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1408, line: 91, size: 192, elements: !1422)
!1422 = !{!1423, !1424, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1421, file: !1408, line: 92, baseType: !68, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1421, file: !1408, line: 94, baseType: !252, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1421, file: !1408, line: 100, baseType: !1426, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1408, line: 180, size: 704, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1444, !1445, !1446, !1472, !1473}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1427, file: !1408, line: 182, baseType: !1406, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !1408, line: 183, baseType: !7, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1427, file: !1408, line: 186, baseType: !1432, size: 192, offset: 128)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1433, line: 19, size: 192, elements: !1434)
!1433 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !{!1435, !1442, !1443}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1432, file: !1433, line: 20, baseType: !1436, size: 128)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1437, line: 292, size: 128, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1436, file: !1437, line: 293, baseType: !98)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1436, file: !1437, line: 295, baseType: !59, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1436, file: !1437, line: 296, baseType: !61, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1432, file: !1433, line: 21, baseType: !7, size: 32, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1432, file: !1433, line: 22, baseType: !7, size: 32, offset: 160)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1427, file: !1408, line: 187, baseType: !410, size: 32, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1427, file: !1408, line: 188, baseType: !410, size: 32, offset: 352)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1427, file: !1408, line: 189, baseType: !1447, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1408, line: 168, size: 320, elements: !1449)
!1449 = !{!1450, !1456, !1460, !1464, !1468}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1448, file: !1408, line: 169, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!74, !1454, !1426}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !217, line: 539, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1448, file: !1408, line: 171, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!74, !1406, !56, !179}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1448, file: !1408, line: 173, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!74, !1406}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1448, file: !1408, line: 174, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!74, !1406, !1406, !56}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1448, file: !1408, line: 176, baseType: !1469, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!74, !1454, !1406, !1426}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1427, file: !1408, line: 192, baseType: !85, size: 128, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1427, file: !1408, line: 194, baseType: !686, size: 128, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1418, file: !1408, line: 144, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1408, line: 103, size: 64, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1475, file: !1408, line: 104, baseType: !1406, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1418, file: !1408, line: 145, baseType: !1479, size: 256)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1408, line: 107, size: 256, elements: !1480)
!1480 = !{!1481, !1546, !1549, !1550}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1479, file: !1408, line: 108, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1408, line: 217, size: 768, elements: !1485)
!1485 = !{!1486, !1506, !1510, !1514, !1519, !1523, !1527, !1531, !1532, !1533, !1534, !1542}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1484, file: !1408, line: 222, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!74, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1408, line: 197, size: 1088, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1491, file: !1408, line: 199, baseType: !1406, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1491, file: !1408, line: 200, baseType: !215, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1491, file: !1408, line: 201, baseType: !1454, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1491, file: !1408, line: 202, baseType: !61, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1491, file: !1408, line: 205, baseType: !355, size: 192, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1491, file: !1408, line: 206, baseType: !355, size: 192, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1491, file: !1408, line: 207, baseType: !74, size: 32, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1491, file: !1408, line: 208, baseType: !85, size: 128, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1491, file: !1408, line: 209, baseType: !139, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1491, file: !1408, line: 211, baseType: !185, size: 64, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1491, file: !1408, line: 212, baseType: !981, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1491, file: !1408, line: 213, baseType: !981, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1491, file: !1408, line: 214, baseType: !1339, size: 64, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1484, file: !1408, line: 223, baseType: !1507, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1490}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1484, file: !1408, line: 236, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!74, !1454, !61}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1484, file: !1408, line: 238, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!61, !1454, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1484, file: !1408, line: 239, baseType: !1520, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!61, !1454, !61, !1518}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1484, file: !1408, line: 240, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1454, !61}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1484, file: !1408, line: 242, baseType: !1528, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!170, !1490, !139, !185, !218}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1484, file: !1408, line: 252, baseType: !185, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1484, file: !1408, line: 259, baseType: !981, size: 8, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1484, file: !1408, line: 260, baseType: !1528, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1484, file: !1408, line: 263, baseType: !1535, size: 64, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1538, !1490, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1539, line: 52, baseType: !7)
!1539 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1408, line: 27, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1484, file: !1408, line: 266, baseType: !1543, size: 64, offset: 704)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!74, !1490, !226}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1479, file: !1408, line: 109, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1408, line: 31, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1479, file: !1408, line: 110, baseType: !218, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1479, file: !1408, line: 111, baseType: !1406, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1407, file: !1408, line: 148, baseType: !61, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1407, file: !1408, line: 154, baseType: !256, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !1408, line: 156, baseType: !180, size: 16, offset: 896)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1407, file: !1408, line: 157, baseType: !179, size: 16, offset: 912)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1407, file: !1408, line: 158, baseType: !1556, size: 64, offset: 960)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1408, line: 32, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !80, file: !81, line: 71, baseType: !1559, size: 32, offset: 448)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1560, line: 19, size: 32, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1559, file: !1560, line: 20, baseType: !415, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !80, file: !81, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !80, file: !81, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !80, file: !81, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !80, file: !81, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !80, file: !81, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !77, file: !30, line: 463, baseType: !76, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !77, file: !30, line: 465, baseType: !1570, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !77, file: !30, line: 467, baseType: !56, size: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !30, line: 468, baseType: !1574, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1584, !1589, !1593}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1576, file: !30, line: 88, baseType: !56, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1576, file: !30, line: 89, baseType: !191, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1576, file: !30, line: 90, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!74, !76, !134}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1576, file: !30, line: 91, baseType: !1585, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!139, !76, !1588, !1392, !1398}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1576, file: !30, line: 93, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !76}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1576, file: !30, line: 95, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1597)
!1597 = !{!1598, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1596, file: !37, line: 279, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!74, !76}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1596, file: !37, line: 280, baseType: !1590, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1596, file: !37, line: 281, baseType: !1599, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1596, file: !37, line: 282, baseType: !1599, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1596, file: !37, line: 283, baseType: !1599, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1596, file: !37, line: 284, baseType: !1599, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1596, file: !37, line: 285, baseType: !1599, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1596, file: !37, line: 286, baseType: !1599, size: 64, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1596, file: !37, line: 287, baseType: !1599, size: 64, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1596, file: !37, line: 288, baseType: !1599, size: 64, offset: 576)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1596, file: !37, line: 289, baseType: !1599, size: 64, offset: 640)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1596, file: !37, line: 290, baseType: !1599, size: 64, offset: 704)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1596, file: !37, line: 291, baseType: !1599, size: 64, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1596, file: !37, line: 292, baseType: !1599, size: 64, offset: 832)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1596, file: !37, line: 293, baseType: !1599, size: 64, offset: 896)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1596, file: !37, line: 294, baseType: !1599, size: 64, offset: 960)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1596, file: !37, line: 295, baseType: !1599, size: 64, offset: 1024)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1596, file: !37, line: 296, baseType: !1599, size: 64, offset: 1088)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1596, file: !37, line: 297, baseType: !1599, size: 64, offset: 1152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1596, file: !37, line: 298, baseType: !1599, size: 64, offset: 1216)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1596, file: !37, line: 299, baseType: !1599, size: 64, offset: 1280)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1596, file: !37, line: 300, baseType: !1599, size: 64, offset: 1344)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1596, file: !37, line: 301, baseType: !1599, size: 64, offset: 1408)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !77, file: !30, line: 470, baseType: !1625, size: 64, offset: 768)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1627, line: 82, size: 1408, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1714, !1717, !1720}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1626, file: !1627, line: 83, baseType: !56, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1626, file: !1627, line: 84, baseType: !56, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1626, file: !1627, line: 85, baseType: !76, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1626, file: !1627, line: 86, baseType: !191, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1626, file: !1627, line: 87, baseType: !191, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1626, file: !1627, line: 88, baseType: !191, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1626, file: !1627, line: 90, baseType: !1636, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!74, !76, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1648, !1649, !1650, !1651, !1665, !1678, !1679, !1680, !1681, !1682, !1690, !1691, !1692, !1693, !1694, !1695}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1640, file: !24, line: 96, baseType: !56, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1640, file: !24, line: 97, baseType: !1625, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1640, file: !24, line: 99, baseType: !1645, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1647, line: 76, flags: DIFlagFwdDecl)
!1647 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1640, file: !24, line: 100, baseType: !56, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1640, file: !24, line: 102, baseType: !981, size: 8, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1640, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1640, file: !24, line: 105, baseType: !1652, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1655, line: 262, size: 1600, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657, !1659, !1660, !1664}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1654, file: !1655, line: 263, baseType: !1658, size: 256)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !1201)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1654, file: !1655, line: 264, baseType: !1658, size: 256, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1654, file: !1655, line: 265, baseType: !1661, size: 1024, offset: 512)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1024, elements: !1662)
!1662 = !{!1663}
!1663 = !DISubrange(count: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1654, file: !1655, line: 266, baseType: !1372, size: 64, offset: 1536)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1640, file: !24, line: 106, baseType: !1666, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1655, line: 210, size: 256, elements: !1669)
!1669 = !{!1670, !1674, !1676, !1677}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1668, file: !1655, line: 211, baseType: !1671, size: 72)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 72, elements: !1672)
!1672 = !{!1673}
!1673 = !DISubrange(count: 9)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1668, file: !1655, line: 212, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1655, line: 14, baseType: !68)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1668, file: !1655, line: 213, baseType: !411, size: 32, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1668, file: !1655, line: 214, baseType: !411, size: 32, offset: 224)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1640, file: !24, line: 108, baseType: !1599, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1640, file: !24, line: 109, baseType: !1590, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1640, file: !24, line: 110, baseType: !1599, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1640, file: !24, line: 111, baseType: !1590, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1640, file: !24, line: 112, baseType: !1683, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!74, !76, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1688)
!1688 = !{!1689}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1687, file: !37, line: 51, baseType: !74, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1640, file: !24, line: 113, baseType: !1599, size: 64, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1640, file: !24, line: 114, baseType: !191, size: 64, offset: 832)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1640, file: !24, line: 115, baseType: !191, size: 64, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1640, file: !24, line: 117, baseType: !1594, size: 64, offset: 960)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1640, file: !24, line: 118, baseType: !1590, size: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1640, file: !24, line: 120, baseType: !1696, size: 64, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1626, file: !1627, line: 91, baseType: !1581, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1626, file: !1627, line: 92, baseType: !1599, size: 64, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1626, file: !1627, line: 93, baseType: !1590, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1626, file: !1627, line: 94, baseType: !1599, size: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1626, file: !1627, line: 95, baseType: !1590, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1626, file: !1627, line: 97, baseType: !1599, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1626, file: !1627, line: 98, baseType: !1599, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1626, file: !1627, line: 100, baseType: !1683, size: 64, offset: 896)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1626, file: !1627, line: 101, baseType: !1599, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1626, file: !1627, line: 103, baseType: !1599, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1626, file: !1627, line: 105, baseType: !1599, size: 64, offset: 1088)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1626, file: !1627, line: 107, baseType: !1594, size: 64, offset: 1152)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1626, file: !1627, line: 109, baseType: !1711, size: 64, offset: 1216)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1627, line: 109, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1626, file: !1627, line: 111, baseType: !1715, size: 64, offset: 1280)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1627, line: 111, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1626, file: !1627, line: 112, baseType: !1718, offset: 1344)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1719, line: 187, elements: !112)
!1719 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1626, file: !1627, line: 114, baseType: !981, size: 8, offset: 1344)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !77, file: !30, line: 471, baseType: !1639, size: 64, offset: 832)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !77, file: !30, line: 473, baseType: !61, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !77, file: !30, line: 475, baseType: !61, size: 64, offset: 960)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !77, file: !30, line: 480, baseType: !355, size: 192, offset: 1024)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !77, file: !30, line: 484, baseType: !1726, size: 576, offset: 1216)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1726, file: !30, line: 362, baseType: !85, size: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1726, file: !30, line: 363, baseType: !85, size: 128, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1726, file: !30, line: 364, baseType: !85, size: 128, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1726, file: !30, line: 365, baseType: !85, size: 128, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1726, file: !30, line: 366, baseType: !981, size: 8, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1726, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !77, file: !30, line: 485, baseType: !1735, size: 2304, offset: 1792)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1832, !1836}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1735, file: !37, line: 566, baseType: !1686, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1735, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1735, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1735, file: !37, line: 569, baseType: !981, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1735, file: !37, line: 570, baseType: !981, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1735, file: !37, line: 571, baseType: !981, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1735, file: !37, line: 572, baseType: !981, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1735, file: !37, line: 573, baseType: !981, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1735, file: !37, line: 574, baseType: !981, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1735, file: !37, line: 575, baseType: !981, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1735, file: !37, line: 576, baseType: !981, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1735, file: !37, line: 577, baseType: !410, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1735, file: !37, line: 578, baseType: !98, offset: 96)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1735, file: !37, line: 580, baseType: !85, size: 128, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1735, file: !37, line: 581, baseType: !715, size: 192, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1735, file: !37, line: 582, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1755, line: 43, size: 1472, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1764, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1754, file: !1755, line: 44, baseType: !56, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1754, file: !1755, line: 45, baseType: !74, size: 32, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1754, file: !1755, line: 46, baseType: !85, size: 128, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1754, file: !1755, line: 47, baseType: !98, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1754, file: !1755, line: 48, baseType: !1762, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1754, file: !1755, line: 49, baseType: !1765, size: 320, offset: 320)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1766, line: 11, size: 320, elements: !1767)
!1766 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !{!1768, !1769, !1770, !1775}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1765, file: !1766, line: 16, baseType: !679, size: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1765, file: !1766, line: 17, baseType: !68, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1765, file: !1766, line: 18, baseType: !1771, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1765, file: !1766, line: 19, baseType: !410, size: 32, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1754, file: !1755, line: 50, baseType: !68, size: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1754, file: !1755, line: 51, baseType: !485, size: 64, offset: 704)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1754, file: !1755, line: 52, baseType: !485, size: 64, offset: 768)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1754, file: !1755, line: 53, baseType: !485, size: 64, offset: 832)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1754, file: !1755, line: 54, baseType: !485, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1754, file: !1755, line: 55, baseType: !485, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1754, file: !1755, line: 56, baseType: !68, size: 64, offset: 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1754, file: !1755, line: 57, baseType: !68, size: 64, offset: 1088)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1754, file: !1755, line: 58, baseType: !68, size: 64, offset: 1152)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1754, file: !1755, line: 59, baseType: !68, size: 64, offset: 1216)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1754, file: !1755, line: 60, baseType: !68, size: 64, offset: 1280)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1754, file: !1755, line: 61, baseType: !76, size: 64, offset: 1344)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1754, file: !1755, line: 62, baseType: !981, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1754, file: !1755, line: 63, baseType: !981, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1735, file: !37, line: 583, baseType: !981, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1735, file: !37, line: 584, baseType: !981, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1735, file: !37, line: 585, baseType: !981, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1735, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1735, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1735, file: !37, line: 592, baseType: !477, size: 512, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1735, file: !37, line: 593, baseType: !256, size: 64, offset: 1088)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1735, file: !37, line: 594, baseType: !1306, size: 256, offset: 1152)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1735, file: !37, line: 595, baseType: !686, size: 128, offset: 1408)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1735, file: !37, line: 596, baseType: !1762, size: 64, offset: 1536)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1735, file: !37, line: 597, baseType: !278, size: 32, offset: 1600)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1735, file: !37, line: 598, baseType: !278, size: 32, offset: 1632)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1735, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1735, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1735, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1735, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1735, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1735, file: !37, line: 604, baseType: !981, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1735, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1735, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1735, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1735, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1735, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1735, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1735, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1735, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1735, file: !37, line: 613, baseType: !74, size: 32, offset: 1792)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1735, file: !37, line: 614, baseType: !74, size: 32, offset: 1824)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1735, file: !37, line: 615, baseType: !256, size: 64, offset: 1856)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1735, file: !37, line: 616, baseType: !256, size: 64, offset: 1920)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1735, file: !37, line: 617, baseType: !256, size: 64, offset: 1984)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1735, file: !37, line: 618, baseType: !256, size: 64, offset: 2048)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1735, file: !37, line: 620, baseType: !1823, size: 64, offset: 2112)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1824, file: !37, line: 537, baseType: !98)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1824, file: !37, line: 538, baseType: !7, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1824, file: !37, line: 540, baseType: !85, size: 128, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1824, file: !37, line: 543, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1735, file: !37, line: 621, baseType: !1833, size: 64, offset: 2176)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !76, !639}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1735, file: !37, line: 622, baseType: !1837, size: 64, offset: 2240)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !77, file: !30, line: 486, baseType: !1840, size: 64, offset: 4096)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1849, !1850, !1851}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1841, file: !37, line: 643, baseType: !1596, size: 1472)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1841, file: !37, line: 644, baseType: !1599, size: 64, offset: 1472)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1841, file: !37, line: 645, baseType: !1846, size: 64, offset: 1536)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !76, !981}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1841, file: !37, line: 646, baseType: !1599, size: 64, offset: 1600)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1841, file: !37, line: 647, baseType: !1590, size: 64, offset: 1664)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1841, file: !37, line: 648, baseType: !1590, size: 64, offset: 1728)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !77, file: !30, line: 493, baseType: !1853, size: 64, offset: 4160)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !77, file: !30, line: 499, baseType: !85, size: 128, offset: 4224)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !77, file: !30, line: 502, baseType: !1857, size: 64, offset: 4352)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !77, file: !30, line: 504, baseType: !1861, size: 64, offset: 4416)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !77, file: !30, line: 505, baseType: !256, size: 64, offset: 4480)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !77, file: !30, line: 510, baseType: !256, size: 64, offset: 4544)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !77, file: !30, line: 511, baseType: !1865, size: 64, offset: 4608)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1867)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !77, file: !30, line: 513, baseType: !1869, size: 64, offset: 4672)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1870, file: !30, line: 293, baseType: !7, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1870, file: !30, line: 294, baseType: !68, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !77, file: !30, line: 515, baseType: !85, size: 128, offset: 4736)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !77, file: !30, line: 526, baseType: !1876, offset: 4864)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1877, line: 5, elements: !112)
!1877 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !77, file: !30, line: 528, baseType: !1879, size: 64, offset: 4864)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1881, line: 51, size: 1344, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884, !1886, !1887, !1977, !1986, !1987, !1988, !1989, !1990, !1991, !1992}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1880, file: !1881, line: 52, baseType: !56, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1880, file: !1881, line: 53, baseType: !1885, size: 32, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1881, line: 28, baseType: !410)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1880, file: !1881, line: 54, baseType: !56, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1880, file: !1881, line: 55, baseType: !1888, size: 192, offset: 192)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1889, line: 17, size: 192, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !{!1891, !1893, !1976}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1888, file: !1889, line: 18, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1888, file: !1889, line: 19, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1889, line: 110, size: 1152, elements: !1897)
!1897 = !{!1898, !1902, !1906, !1912, !1918, !1922, !1926, !1931, !1935, !1936, !1940, !1944, !1948, !1959, !1960, !1961, !1962, !1972}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1896, file: !1889, line: 111, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!1892, !1892}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1896, file: !1889, line: 112, baseType: !1903, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !1892}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1896, file: !1889, line: 113, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!981, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1896, file: !1889, line: 114, baseType: !1913, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1372, !1910, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1896, file: !1889, line: 116, baseType: !1919, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!981, !1910, !56}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1896, file: !1889, line: 118, baseType: !1923, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!74, !1910, !56, !7, !61, !185}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1896, file: !1889, line: 123, baseType: !1927, size: 64, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!74, !1910, !56, !1930, !185}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1896, file: !1889, line: 126, baseType: !1932, size: 64, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!56, !1910}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1896, file: !1889, line: 127, baseType: !1932, size: 64, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1896, file: !1889, line: 128, baseType: !1937, size: 64, offset: 576)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1892, !1910}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1896, file: !1889, line: 130, baseType: !1941, size: 64, offset: 640)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1892, !1910, !1892}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1896, file: !1889, line: 133, baseType: !1945, size: 64, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1892, !1910, !56}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1896, file: !1889, line: 135, baseType: !1949, size: 64, offset: 768)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!74, !1910, !56, !56, !7, !7, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1889, line: 43, size: 640, elements: !1954)
!1954 = !{!1955, !1956, !1957}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1953, file: !1889, line: 44, baseType: !1892, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1953, file: !1889, line: 45, baseType: !7, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1953, file: !1889, line: 46, baseType: !1958, size: 512, offset: 128)
!1958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 512, elements: !515)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1896, file: !1889, line: 140, baseType: !1941, size: 64, offset: 832)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1896, file: !1889, line: 143, baseType: !1937, size: 64, offset: 896)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1896, file: !1889, line: 145, baseType: !1899, size: 64, offset: 960)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1896, file: !1889, line: 146, baseType: !1963, size: 64, offset: 1024)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!74, !1910, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1889, line: 29, size: 128, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1967, file: !1889, line: 30, baseType: !7, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1967, file: !1889, line: 31, baseType: !7, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1967, file: !1889, line: 32, baseType: !1910, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1896, file: !1889, line: 148, baseType: !1973, size: 64, offset: 1088)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!74, !1910, !76}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1888, file: !1889, line: 20, baseType: !76, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1880, file: !1881, line: 57, baseType: !1978, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1881, line: 31, size: 704, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1985}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1979, file: !1881, line: 32, baseType: !139, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1979, file: !1881, line: 33, baseType: !74, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1979, file: !1881, line: 34, baseType: !61, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1979, file: !1881, line: 35, baseType: !1978, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1979, file: !1881, line: 43, baseType: !206, size: 448, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1880, file: !1881, line: 58, baseType: !1978, size: 64, offset: 448)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1880, file: !1881, line: 59, baseType: !1879, size: 64, offset: 512)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1880, file: !1881, line: 60, baseType: !1879, size: 64, offset: 576)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1880, file: !1881, line: 61, baseType: !1879, size: 64, offset: 640)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1880, file: !1881, line: 63, baseType: !80, size: 512, offset: 704)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1880, file: !1881, line: 65, baseType: !68, size: 64, offset: 1216)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1880, file: !1881, line: 66, baseType: !61, size: 64, offset: 1280)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !77, file: !30, line: 529, baseType: !1892, size: 64, offset: 4928)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !77, file: !30, line: 534, baseType: !1995, size: 32, offset: 4992)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !60, line: 16, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !60, line: 13, baseType: !410)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !77, file: !30, line: 535, baseType: !410, size: 32, offset: 5024)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !77, file: !30, line: 537, baseType: !98, offset: 5056)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !77, file: !30, line: 538, baseType: !85, size: 128, offset: 5056)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !77, file: !30, line: 540, baseType: !2001, size: 64, offset: 5184)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2003, line: 54, size: 960, elements: !2004)
!2003 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2015, !2019, !2020, !2021, !2022, !2026, !2030, !2031}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2002, file: !2003, line: 55, baseType: !56, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2002, file: !2003, line: 56, baseType: !1645, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2002, file: !2003, line: 58, baseType: !191, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2002, file: !2003, line: 59, baseType: !191, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2002, file: !2003, line: 60, baseType: !91, size: 64, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2002, file: !2003, line: 62, baseType: !1581, size: 64, offset: 320)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2002, file: !2003, line: 63, baseType: !2012, size: 64, offset: 384)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!139, !76, !1588}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2002, file: !2003, line: 65, baseType: !2016, size: 64, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !2001}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2002, file: !2003, line: 66, baseType: !1590, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2002, file: !2003, line: 68, baseType: !1599, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2002, file: !2003, line: 70, baseType: !1355, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2002, file: !2003, line: 71, baseType: !2023, size: 64, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!1372, !76}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2002, file: !2003, line: 73, baseType: !2027, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !76, !1392, !1398}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2002, file: !2003, line: 75, baseType: !1594, size: 64, offset: 832)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2002, file: !2003, line: 77, baseType: !1715, size: 64, offset: 896)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !77, file: !30, line: 541, baseType: !191, size: 64, offset: 5248)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !77, file: !30, line: 543, baseType: !1590, size: 64, offset: 5312)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !77, file: !30, line: 544, baseType: !2035, size: 64, offset: 5376)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !77, file: !30, line: 545, baseType: !2038, size: 64, offset: 5440)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !77, file: !30, line: 547, baseType: !981, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !77, file: !30, line: 548, baseType: !981, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !77, file: !30, line: 549, baseType: !981, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !77, file: !30, line: 550, baseType: !981, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !70, file: !71, line: 97, baseType: !191, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !70, file: !71, line: 98, baseType: !2046, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_info", file: !2049, line: 18, size: 320, elements: !2050)
!2049 = !DIFile(filename: "./include/uapi/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !{!2051, !2052, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2048, file: !2049, line: 19, baseType: !411, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_version", scope: !2048, file: !2049, line: 20, baseType: !411, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "identity", scope: !2048, file: !2049, line: 21, baseType: !2054, size: 256, offset: 64)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 256, elements: !1201)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !70, file: !71, line: 99, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_ops", file: !71, line: 43, size: 640, elements: !2059)
!2059 = !{!2060, !2061, !2065, !2066, !2067, !2071, !2075, !2076, !2077, !2081}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2058, file: !71, line: 44, baseType: !1645, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2058, file: !71, line: 46, baseType: !2062, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!74, !69}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2058, file: !71, line: 48, baseType: !2062, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !2058, file: !71, line: 49, baseType: !2062, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2058, file: !71, line: 50, baseType: !2068, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!7, !69}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "set_timeout", scope: !2058, file: !71, line: 51, baseType: !2072, size: 64, offset: 320)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!74, !69, !7}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "set_pretimeout", scope: !2058, file: !71, line: 52, baseType: !2072, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeleft", scope: !2058, file: !71, line: 53, baseType: !2068, size: 64, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "restart", scope: !2058, file: !71, line: 54, baseType: !2078, size: 64, offset: 512)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!74, !69, !68, !61}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2058, file: !71, line: 55, baseType: !2082, size: 64, offset: 576)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!66, !69, !7, !68}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !70, file: !71, line: 100, baseType: !2086, size: 64, offset: 320)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_governor", file: !71, line: 23, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "bootstatus", scope: !70, file: !71, line: 101, baseType: !7, size: 32, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !70, file: !71, line: 102, baseType: !7, size: 32, offset: 416)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pretimeout", scope: !70, file: !71, line: 103, baseType: !7, size: 32, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !70, file: !71, line: 104, baseType: !7, size: 32, offset: 480)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !70, file: !71, line: 105, baseType: !7, size: 32, offset: 512)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "min_hw_heartbeat_ms", scope: !70, file: !71, line: 106, baseType: !7, size: 32, offset: 544)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_heartbeat_ms", scope: !70, file: !71, line: 107, baseType: !7, size: 32, offset: 576)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_nb", scope: !70, file: !71, line: 108, baseType: !2097, size: 192, offset: 640)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2098, line: 54, size: 192, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100, !2106, !2107}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2097, file: !2098, line: 55, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2098, line: 51, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!74, !2105, !68, !61}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2097, file: !2098, line: 56, baseType: !2105, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2097, file: !2098, line: 57, baseType: !74, size: 32, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "restart_nb", scope: !70, file: !71, line: 109, baseType: !2097, size: 192, offset: 832)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !70, file: !71, line: 110, baseType: !61, size: 64, offset: 1024)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "wd_data", scope: !70, file: !71, line: 111, baseType: !2111, size: 64, offset: 1088)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_core_data", file: !71, line: 22, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !70, file: !71, line: 112, baseType: !68, size: 64, offset: 1152)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "deferred", scope: !70, file: !71, line: 119, baseType: !85, size: 128, offset: 1216)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !88)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2116)
!2120 = !{!2121, !2174, !2179, !2184, !2186, !2193, !2198, !2203, !2208, !2213, !2218, !0, !2220, !2222, !2224, !2226}
!2121 = !DIGlobalVariableExpression(var: !2122, expr: !DIExpression())
!2122 = distinct !DIGlobalVariable(name: "__param_stop_on_reboot", scope: !2, file: !3, line: 43, type: !2123, isLocal: true, isDefinition: true, align: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2125, line: 69, size: 320, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2128, !2129, !2145, !2147, !2151, !2152}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2124, file: !2125, line: 70, baseType: !56, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2124, file: !2125, line: 71, baseType: !1645, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2124, file: !2125, line: 72, baseType: !2130, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2132)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2125, line: 47, size: 256, elements: !2133)
!2133 = !{!2134, !2135, !2140, !2144}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2132, file: !2125, line: 49, baseType: !7, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2132, file: !2125, line: 51, baseType: !2136, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!74, !56, !2139}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2132, file: !2125, line: 53, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!74, !139, !2139}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2132, file: !2125, line: 55, baseType: !1381, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2124, file: !2125, line: 73, baseType: !2146, size: 16, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2124, file: !2125, line: 74, baseType: !2148, size: 8, offset: 208)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !257, line: 16, baseType: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !259, line: 20, baseType: !2150)
!2150 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2124, file: !2125, line: 75, baseType: !546, size: 8, offset: 216)
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !2125, line: 76, baseType: !2153, size: 64, offset: 256)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !2125, line: 76, size: 64, elements: !2154)
!2154 = !{!2155, !2156, !2163}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2153, file: !2125, line: 77, baseType: !61, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2153, file: !2125, line: 78, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2159)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2125, line: 86, size: 128, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2159, file: !2125, line: 87, baseType: !7, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2159, file: !2125, line: 88, baseType: !139, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2153, file: !2125, line: 79, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2166)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2125, line: 92, size: 256, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2172, !2173}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2166, file: !2125, line: 94, baseType: !7, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2166, file: !2125, line: 95, baseType: !7, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2166, file: !2125, line: 96, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2166, file: !2125, line: 97, baseType: !2130, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2166, file: !2125, line: 98, baseType: !61, size: 64, offset: 192)
!2174 = !DIGlobalVariableExpression(var: !2175, expr: !DIExpression())
!2175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_stop_on_reboottype159", scope: !2, file: !3, line: 43, type: !2176, isLocal: true, isDefinition: true, align: 8)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 296, elements: !2177)
!2177 = !{!2178}
!2178 = !DISubrange(count: 37)
!2179 = !DIGlobalVariableExpression(var: !2180, expr: !DIExpression())
!2180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_stop_on_reboot160", scope: !2, file: !3, line: 44, type: !2181, isLocal: true, isDefinition: true, align: 8)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 640, elements: !2182)
!2182 = !{!2183}
!2183 = !DISubrange(count: 80)
!2184 = !DIGlobalVariableExpression(var: !2185, expr: !DIExpression())
!2185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_watchdog_init165", scope: !2, file: !3, line: 434, type: !61, isLocal: true, isDefinition: true)
!2186 = !DIGlobalVariableExpression(var: !2187, expr: !DIExpression())
!2187 = distinct !DIGlobalVariable(name: "__exitcall_watchdog_exit", scope: !2, file: !3, line: 435, type: !2188, isLocal: true, isDefinition: true)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2189, line: 117, baseType: !2190)
!2189 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null}
!2193 = !DIGlobalVariableExpression(var: !2194, expr: !DIExpression())
!2194 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author166", scope: !2, file: !3, line: 437, type: !2195, isLocal: true, isDefinition: true, align: 8)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 416, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 52)
!2198 = !DIGlobalVariableExpression(var: !2199, expr: !DIExpression())
!2199 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author167", scope: !2, file: !3, line: 438, type: !2200, isLocal: true, isDefinition: true, align: 8)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 392, elements: !2201)
!2201 = !{!2202}
!2202 = !DISubrange(count: 49)
!2203 = !DIGlobalVariableExpression(var: !2204, expr: !DIExpression())
!2204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description168", scope: !2, file: !3, line: 439, type: !2205, isLocal: true, isDefinition: true, align: 8)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 384, elements: !2206)
!2206 = !{!2207}
!2207 = !DISubrange(count: 48)
!2208 = !DIGlobalVariableExpression(var: !2209, expr: !DIExpression())
!2209 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file169", scope: !2, file: !3, line: 440, type: !2210, isLocal: true, isDefinition: true, align: 8)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 320, elements: !2211)
!2211 = !{!2212}
!2212 = !DISubrange(count: 40)
!2213 = !DIGlobalVariableExpression(var: !2214, expr: !DIExpression())
!2214 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license170", scope: !2, file: !3, line: 440, type: !2215, isLocal: true, isDefinition: true, align: 8)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 168, elements: !2216)
!2216 = !{!2217}
!2217 = !DISubrange(count: 21)
!2218 = !DIGlobalVariableExpression(var: !2219, expr: !DIExpression())
!2219 = distinct !DIGlobalVariable(name: "wtd_deferred_reg_done", scope: !2, file: !3, line: 61, type: !981, isLocal: true, isDefinition: true)
!2220 = !DIGlobalVariableExpression(var: !2221, expr: !DIExpression())
!2221 = distinct !DIGlobalVariable(name: "stop_on_reboot", scope: !2, file: !3, line: 42, type: !74, isLocal: true, isDefinition: true)
!2222 = !DIGlobalVariableExpression(var: !2223, expr: !DIExpression())
!2223 = distinct !DIGlobalVariable(name: "wtd_deferred_reg_mutex", scope: !2, file: !3, line: 59, type: !355, isLocal: true, isDefinition: true)
!2224 = !DIGlobalVariableExpression(var: !2225, expr: !DIExpression())
!2225 = distinct !DIGlobalVariable(name: "wtd_deferred_reg_list", scope: !2, file: !3, line: 60, type: !85, isLocal: true, isDefinition: true)
!2226 = !DIGlobalVariableExpression(var: !2227, expr: !DIExpression())
!2227 = distinct !DIGlobalVariable(name: "watchdog_ida", scope: !2, file: !3, line: 40, type: !2228, isLocal: true, isDefinition: true)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1433, line: 244, size: 128, elements: !2229)
!2229 = !{!2230}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2228, file: !1433, line: 245, baseType: !1436, size: 128)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 192, elements: !2232)
!2232 = !{!2233}
!2233 = !DISubrange(count: 24)
!2234 = !{i32 7, !"Dwarf Version", i32 4}
!2235 = !{i32 2, !"Debug Info Version", i32 3}
!2236 = !{i32 1, !"wchar_size", i32 2}
!2237 = !{i32 1, !"Code Model", i32 2}
!2238 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2239 = distinct !DISubprogram(name: "watchdog_init_timeout", scope: !3, file: !3, line: 114, type: !2240, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!74, !69, !7, !76}
!2242 = !DILocalVariable(name: "wdd", arg: 1, scope: !2239, file: !3, line: 114, type: !69)
!2243 = !DILocation(line: 114, column: 51, scope: !2239)
!2244 = !DILocalVariable(name: "timeout_parm", arg: 2, scope: !2239, file: !3, line: 115, type: !7)
!2245 = !DILocation(line: 115, column: 18, scope: !2239)
!2246 = !DILocalVariable(name: "dev", arg: 3, scope: !2239, file: !3, line: 115, type: !76)
!2247 = !DILocation(line: 115, column: 47, scope: !2239)
!2248 = !DILocalVariable(name: "dev_str", scope: !2239, file: !3, line: 117, type: !56)
!2249 = !DILocation(line: 117, column: 14, scope: !2239)
!2250 = !DILocation(line: 117, column: 24, scope: !2239)
!2251 = !DILocation(line: 117, column: 29, scope: !2239)
!2252 = !DILocation(line: 117, column: 47, scope: !2239)
!2253 = !DILocation(line: 117, column: 52, scope: !2239)
!2254 = !DILocation(line: 117, column: 38, scope: !2239)
!2255 = !DILocation(line: 118, column: 24, scope: !2239)
!2256 = !DILocation(line: 118, column: 29, scope: !2239)
!2257 = !DILocation(line: 118, column: 35, scope: !2239)
!2258 = !DILocalVariable(name: "t", scope: !2239, file: !3, line: 119, type: !7)
!2259 = !DILocation(line: 119, column: 15, scope: !2239)
!2260 = !DILocalVariable(name: "ret", scope: !2239, file: !3, line: 120, type: !74)
!2261 = !DILocation(line: 120, column: 6, scope: !2239)
!2262 = !DILocation(line: 122, column: 33, scope: !2239)
!2263 = !DILocation(line: 122, column: 2, scope: !2239)
!2264 = !DILocation(line: 125, column: 6, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 125, column: 6)
!2266 = !DILocation(line: 125, column: 6, scope: !2239)
!2267 = !DILocation(line: 126, column: 33, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 126, column: 7)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 125, column: 20)
!2270 = !DILocation(line: 126, column: 38, scope: !2268)
!2271 = !DILocation(line: 126, column: 8, scope: !2268)
!2272 = !DILocation(line: 126, column: 7, scope: !2269)
!2273 = !DILocation(line: 127, column: 19, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 126, column: 53)
!2275 = !DILocation(line: 127, column: 4, scope: !2274)
!2276 = !DILocation(line: 127, column: 9, scope: !2274)
!2277 = !DILocation(line: 127, column: 17, scope: !2274)
!2278 = !DILocation(line: 128, column: 4, scope: !2274)
!2279 = !DILocation(line: 130, column: 3, scope: !2269)
!2280 = !DILocation(line: 132, column: 7, scope: !2269)
!2281 = !DILocation(line: 133, column: 2, scope: !2269)
!2282 = !DILocation(line: 136, column: 6, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 136, column: 6)
!2284 = !DILocation(line: 136, column: 10, scope: !2283)
!2285 = !DILocation(line: 136, column: 13, scope: !2283)
!2286 = !DILocation(line: 136, column: 18, scope: !2283)
!2287 = !DILocation(line: 136, column: 26, scope: !2283)
!2288 = !DILocation(line: 137, column: 27, scope: !2283)
!2289 = !DILocation(line: 137, column: 32, scope: !2283)
!2290 = !DILocation(line: 137, column: 6, scope: !2283)
!2291 = !DILocation(line: 137, column: 60, scope: !2283)
!2292 = !DILocation(line: 136, column: 6, scope: !2239)
!2293 = !DILocation(line: 138, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 138, column: 7)
!2295 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 137, column: 66)
!2296 = !DILocation(line: 138, column: 9, scope: !2294)
!2297 = !DILocation(line: 138, column: 38, scope: !2294)
!2298 = !DILocation(line: 138, column: 43, scope: !2294)
!2299 = !DILocation(line: 138, column: 13, scope: !2294)
!2300 = !DILocation(line: 138, column: 7, scope: !2295)
!2301 = !DILocation(line: 139, column: 19, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 138, column: 47)
!2303 = !DILocation(line: 139, column: 4, scope: !2302)
!2304 = !DILocation(line: 139, column: 9, scope: !2302)
!2305 = !DILocation(line: 139, column: 17, scope: !2302)
!2306 = !DILocation(line: 140, column: 4, scope: !2302)
!2307 = !DILocation(line: 142, column: 3, scope: !2295)
!2308 = !DILocation(line: 143, column: 7, scope: !2295)
!2309 = !DILocation(line: 144, column: 2, scope: !2295)
!2310 = !DILocation(line: 146, column: 6, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 146, column: 6)
!2312 = !DILocation(line: 146, column: 10, scope: !2311)
!2313 = !DILocation(line: 146, column: 14, scope: !2311)
!2314 = !DILocation(line: 146, column: 17, scope: !2311)
!2315 = !DILocation(line: 146, column: 22, scope: !2311)
!2316 = !DILocation(line: 146, column: 6, scope: !2239)
!2317 = !DILocation(line: 147, column: 3, scope: !2311)
!2318 = !DILocation(line: 150, column: 9, scope: !2239)
!2319 = !DILocation(line: 150, column: 2, scope: !2239)
!2320 = !DILocation(line: 151, column: 1, scope: !2239)
!2321 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !2322, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!56, !1916}
!2324 = !DILocalVariable(name: "dev", arg: 1, scope: !2321, file: !30, line: 609, type: !1916)
!2325 = !DILocation(line: 609, column: 57, scope: !2321)
!2326 = !DILocation(line: 612, column: 6, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2321, file: !30, line: 612, column: 6)
!2328 = !DILocation(line: 612, column: 11, scope: !2327)
!2329 = !DILocation(line: 612, column: 6, scope: !2321)
!2330 = !DILocation(line: 613, column: 10, scope: !2327)
!2331 = !DILocation(line: 613, column: 15, scope: !2327)
!2332 = !DILocation(line: 613, column: 3, scope: !2327)
!2333 = !DILocation(line: 615, column: 23, scope: !2321)
!2334 = !DILocation(line: 615, column: 28, scope: !2321)
!2335 = !DILocation(line: 615, column: 9, scope: !2321)
!2336 = !DILocation(line: 615, column: 2, scope: !2321)
!2337 = !DILocation(line: 616, column: 1, scope: !2321)
!2338 = distinct !DISubprogram(name: "watchdog_check_min_max_timeout", scope: !3, file: !3, line: 84, type: !2339, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !69}
!2341 = !DILocalVariable(name: "wdd", arg: 1, scope: !2338, file: !3, line: 84, type: !69)
!2342 = !DILocation(line: 84, column: 68, scope: !2338)
!2343 = !DILocation(line: 90, column: 7, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 90, column: 6)
!2345 = !DILocation(line: 90, column: 12, scope: !2344)
!2346 = !DILocation(line: 90, column: 32, scope: !2344)
!2347 = !DILocation(line: 90, column: 35, scope: !2344)
!2348 = !DILocation(line: 90, column: 40, scope: !2344)
!2349 = !DILocation(line: 90, column: 54, scope: !2344)
!2350 = !DILocation(line: 90, column: 59, scope: !2344)
!2351 = !DILocation(line: 90, column: 52, scope: !2344)
!2352 = !DILocation(line: 90, column: 6, scope: !2338)
!2353 = !DILocation(line: 91, column: 3, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 90, column: 72)
!2355 = !DILocation(line: 92, column: 3, scope: !2354)
!2356 = !DILocation(line: 92, column: 8, scope: !2354)
!2357 = !DILocation(line: 92, column: 20, scope: !2354)
!2358 = !DILocation(line: 93, column: 3, scope: !2354)
!2359 = !DILocation(line: 93, column: 8, scope: !2354)
!2360 = !DILocation(line: 93, column: 20, scope: !2354)
!2361 = !DILocation(line: 94, column: 2, scope: !2354)
!2362 = !DILocation(line: 95, column: 1, scope: !2338)
!2363 = distinct !DISubprogram(name: "watchdog_timeout_invalid", scope: !71, file: !71, line: 160, type: !2364, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!981, !69, !7}
!2366 = !DILocalVariable(name: "wdd", arg: 1, scope: !2363, file: !71, line: 160, type: !69)
!2367 = !DILocation(line: 160, column: 69, scope: !2363)
!2368 = !DILocalVariable(name: "t", arg: 2, scope: !2363, file: !71, line: 160, type: !7)
!2369 = !DILocation(line: 160, column: 87, scope: !2363)
!2370 = !DILocation(line: 173, column: 9, scope: !2363)
!2371 = !DILocation(line: 173, column: 11, scope: !2363)
!2372 = !DILocation(line: 173, column: 29, scope: !2363)
!2373 = !DILocation(line: 173, column: 32, scope: !2363)
!2374 = !DILocation(line: 173, column: 36, scope: !2363)
!2375 = !DILocation(line: 173, column: 41, scope: !2363)
!2376 = !DILocation(line: 173, column: 34, scope: !2363)
!2377 = !DILocation(line: 173, column: 53, scope: !2363)
!2378 = !DILocation(line: 174, column: 5, scope: !2363)
!2379 = !DILocation(line: 174, column: 10, scope: !2363)
!2380 = !DILocation(line: 174, column: 30, scope: !2363)
!2381 = !DILocation(line: 174, column: 33, scope: !2363)
!2382 = !DILocation(line: 174, column: 38, scope: !2363)
!2383 = !DILocation(line: 174, column: 50, scope: !2363)
!2384 = !DILocation(line: 175, column: 4, scope: !2363)
!2385 = !DILocation(line: 175, column: 8, scope: !2363)
!2386 = !DILocation(line: 175, column: 13, scope: !2363)
!2387 = !DILocation(line: 175, column: 6, scope: !2363)
!2388 = !DILocation(line: 0, scope: !2363)
!2389 = !DILocation(line: 173, column: 2, scope: !2363)
!2390 = distinct !DISubprogram(name: "of_property_read_u32", scope: !1881, file: !1881, line: 1214, type: !2391, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!74, !2393, !56, !610}
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!2395 = !DILocalVariable(name: "np", arg: 1, scope: !2390, file: !1881, line: 1214, type: !2393)
!2396 = !DILocation(line: 1214, column: 66, scope: !2390)
!2397 = !DILocalVariable(name: "propname", arg: 2, scope: !2390, file: !1881, line: 1215, type: !56)
!2398 = !DILocation(line: 1215, column: 24, scope: !2390)
!2399 = !DILocalVariable(name: "out_value", arg: 3, scope: !2390, file: !1881, line: 1216, type: !610)
!2400 = !DILocation(line: 1216, column: 17, scope: !2390)
!2401 = !DILocation(line: 1218, column: 36, scope: !2390)
!2402 = !DILocation(line: 1218, column: 40, scope: !2390)
!2403 = !DILocation(line: 1218, column: 50, scope: !2390)
!2404 = !DILocation(line: 1218, column: 9, scope: !2390)
!2405 = !DILocation(line: 1218, column: 2, scope: !2390)
!2406 = distinct !DISubprogram(name: "watchdog_set_restart_priority", scope: !3, file: !3, line: 202, type: !2407, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !69, !74}
!2409 = !DILocalVariable(name: "wdd", arg: 1, scope: !2406, file: !3, line: 202, type: !69)
!2410 = !DILocation(line: 202, column: 60, scope: !2406)
!2411 = !DILocalVariable(name: "priority", arg: 2, scope: !2406, file: !3, line: 202, type: !74)
!2412 = !DILocation(line: 202, column: 69, scope: !2406)
!2413 = !DILocation(line: 204, column: 29, scope: !2406)
!2414 = !DILocation(line: 204, column: 2, scope: !2406)
!2415 = !DILocation(line: 204, column: 7, scope: !2406)
!2416 = !DILocation(line: 204, column: 18, scope: !2406)
!2417 = !DILocation(line: 204, column: 27, scope: !2406)
!2418 = !DILocation(line: 205, column: 1, scope: !2406)
!2419 = distinct !DISubprogram(name: "watchdog_register_device", scope: !3, file: !3, line: 305, type: !2063, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2420 = !DILocalVariable(name: "wdd", arg: 1, scope: !2419, file: !3, line: 305, type: !69)
!2421 = !DILocation(line: 305, column: 54, scope: !2419)
!2422 = !DILocalVariable(name: "dev_str", scope: !2419, file: !3, line: 307, type: !56)
!2423 = !DILocation(line: 307, column: 14, scope: !2419)
!2424 = !DILocalVariable(name: "ret", scope: !2419, file: !3, line: 308, type: !74)
!2425 = !DILocation(line: 308, column: 6, scope: !2419)
!2426 = !DILocation(line: 310, column: 2, scope: !2419)
!2427 = !DILocation(line: 311, column: 6, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 311, column: 6)
!2429 = !DILocation(line: 311, column: 6, scope: !2419)
!2430 = !DILocation(line: 312, column: 36, scope: !2428)
!2431 = !DILocation(line: 312, column: 9, scope: !2428)
!2432 = !DILocation(line: 312, column: 7, scope: !2428)
!2433 = !DILocation(line: 312, column: 3, scope: !2428)
!2434 = !DILocation(line: 314, column: 38, scope: !2428)
!2435 = !DILocation(line: 314, column: 3, scope: !2428)
!2436 = !DILocation(line: 315, column: 2, scope: !2419)
!2437 = !DILocation(line: 317, column: 6, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 317, column: 6)
!2439 = !DILocation(line: 317, column: 6, scope: !2419)
!2440 = !DILocation(line: 318, column: 13, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 317, column: 11)
!2442 = !DILocation(line: 318, column: 18, scope: !2441)
!2443 = !DILocation(line: 318, column: 36, scope: !2441)
!2444 = !DILocation(line: 318, column: 41, scope: !2441)
!2445 = !DILocation(line: 318, column: 27, scope: !2441)
!2446 = !DILocation(line: 319, column: 20, scope: !2441)
!2447 = !DILocation(line: 319, column: 25, scope: !2441)
!2448 = !DILocation(line: 319, column: 31, scope: !2441)
!2449 = !DILocation(line: 318, column: 11, scope: !2441)
!2450 = !DILocation(line: 320, column: 3, scope: !2441)
!2451 = !DILocation(line: 322, column: 2, scope: !2441)
!2452 = !DILocation(line: 324, column: 9, scope: !2419)
!2453 = !DILocation(line: 324, column: 2, scope: !2419)
!2454 = distinct !DISubprogram(name: "__watchdog_register_device", scope: !3, file: !3, line: 208, type: !2063, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2455 = !DILocalVariable(name: "wdd", arg: 1, scope: !2454, file: !3, line: 208, type: !69)
!2456 = !DILocation(line: 208, column: 63, scope: !2454)
!2457 = !DILocalVariable(name: "ret", scope: !2454, file: !3, line: 210, type: !74)
!2458 = !DILocation(line: 210, column: 6, scope: !2454)
!2459 = !DILocalVariable(name: "id", scope: !2454, file: !3, line: 210, type: !74)
!2460 = !DILocation(line: 210, column: 11, scope: !2454)
!2461 = !DILocation(line: 212, column: 6, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 212, column: 6)
!2463 = !DILocation(line: 212, column: 10, scope: !2462)
!2464 = !DILocation(line: 212, column: 18, scope: !2462)
!2465 = !DILocation(line: 212, column: 21, scope: !2462)
!2466 = !DILocation(line: 212, column: 26, scope: !2462)
!2467 = !DILocation(line: 212, column: 31, scope: !2462)
!2468 = !DILocation(line: 212, column: 39, scope: !2462)
!2469 = !DILocation(line: 212, column: 42, scope: !2462)
!2470 = !DILocation(line: 212, column: 47, scope: !2462)
!2471 = !DILocation(line: 212, column: 51, scope: !2462)
!2472 = !DILocation(line: 212, column: 6, scope: !2454)
!2473 = !DILocation(line: 213, column: 3, scope: !2462)
!2474 = !DILocation(line: 216, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 216, column: 6)
!2476 = !DILocation(line: 216, column: 12, scope: !2475)
!2477 = !DILocation(line: 216, column: 17, scope: !2475)
!2478 = !DILocation(line: 216, column: 23, scope: !2475)
!2479 = !DILocation(line: 216, column: 28, scope: !2475)
!2480 = !DILocation(line: 216, column: 33, scope: !2475)
!2481 = !DILocation(line: 216, column: 38, scope: !2475)
!2482 = !DILocation(line: 216, column: 43, scope: !2475)
!2483 = !DILocation(line: 216, column: 47, scope: !2475)
!2484 = !DILocation(line: 216, column: 52, scope: !2475)
!2485 = !DILocation(line: 216, column: 6, scope: !2454)
!2486 = !DILocation(line: 217, column: 3, scope: !2475)
!2487 = !DILocation(line: 219, column: 33, scope: !2454)
!2488 = !DILocation(line: 219, column: 2, scope: !2454)
!2489 = !DILocation(line: 228, column: 6, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 228, column: 6)
!2491 = !DILocation(line: 228, column: 11, scope: !2490)
!2492 = !DILocation(line: 228, column: 6, scope: !2454)
!2493 = !DILocation(line: 229, column: 25, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 228, column: 19)
!2495 = !DILocation(line: 229, column: 30, scope: !2494)
!2496 = !DILocation(line: 229, column: 38, scope: !2494)
!2497 = !DILocation(line: 229, column: 9, scope: !2494)
!2498 = !DILocation(line: 229, column: 7, scope: !2494)
!2499 = !DILocation(line: 230, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 230, column: 7)
!2501 = !DILocation(line: 230, column: 11, scope: !2500)
!2502 = !DILocation(line: 230, column: 7, scope: !2494)
!2503 = !DILocation(line: 231, column: 9, scope: !2500)
!2504 = !DILocation(line: 231, column: 7, scope: !2500)
!2505 = !DILocation(line: 231, column: 4, scope: !2500)
!2506 = !DILocation(line: 233, column: 2, scope: !2494)
!2507 = !DILocation(line: 235, column: 6, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 235, column: 6)
!2509 = !DILocation(line: 235, column: 9, scope: !2508)
!2510 = !DILocation(line: 235, column: 6, scope: !2454)
!2511 = !DILocation(line: 236, column: 8, scope: !2508)
!2512 = !DILocation(line: 236, column: 6, scope: !2508)
!2513 = !DILocation(line: 236, column: 3, scope: !2508)
!2514 = !DILocation(line: 238, column: 6, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 238, column: 6)
!2516 = !DILocation(line: 238, column: 9, scope: !2515)
!2517 = !DILocation(line: 238, column: 6, scope: !2454)
!2518 = !DILocation(line: 239, column: 10, scope: !2515)
!2519 = !DILocation(line: 239, column: 3, scope: !2515)
!2520 = !DILocation(line: 240, column: 12, scope: !2454)
!2521 = !DILocation(line: 240, column: 2, scope: !2454)
!2522 = !DILocation(line: 240, column: 7, scope: !2454)
!2523 = !DILocation(line: 240, column: 10, scope: !2454)
!2524 = !DILocation(line: 242, column: 30, scope: !2454)
!2525 = !DILocation(line: 242, column: 8, scope: !2454)
!2526 = !DILocation(line: 242, column: 6, scope: !2454)
!2527 = !DILocation(line: 243, column: 6, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 243, column: 6)
!2529 = !DILocation(line: 243, column: 6, scope: !2454)
!2530 = !DILocation(line: 244, column: 3, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 243, column: 11)
!2532 = !DILocation(line: 245, column: 9, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 245, column: 7)
!2534 = !DILocation(line: 245, column: 12, scope: !2533)
!2535 = !DILocation(line: 245, column: 17, scope: !2533)
!2536 = !DILocation(line: 245, column: 20, scope: !2533)
!2537 = !DILocation(line: 245, column: 24, scope: !2533)
!2538 = !DILocation(line: 245, column: 7, scope: !2531)
!2539 = !DILocation(line: 246, column: 11, scope: !2533)
!2540 = !DILocation(line: 246, column: 4, scope: !2533)
!2541 = !DILocation(line: 249, column: 8, scope: !2531)
!2542 = !DILocation(line: 249, column: 6, scope: !2531)
!2543 = !DILocation(line: 250, column: 7, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 250, column: 7)
!2545 = !DILocation(line: 250, column: 10, scope: !2544)
!2546 = !DILocation(line: 250, column: 7, scope: !2531)
!2547 = !DILocation(line: 251, column: 11, scope: !2544)
!2548 = !DILocation(line: 251, column: 4, scope: !2544)
!2549 = !DILocation(line: 252, column: 13, scope: !2531)
!2550 = !DILocation(line: 252, column: 3, scope: !2531)
!2551 = !DILocation(line: 252, column: 8, scope: !2531)
!2552 = !DILocation(line: 252, column: 11, scope: !2531)
!2553 = !DILocation(line: 254, column: 31, scope: !2531)
!2554 = !DILocation(line: 254, column: 9, scope: !2531)
!2555 = !DILocation(line: 254, column: 7, scope: !2531)
!2556 = !DILocation(line: 255, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 255, column: 7)
!2558 = !DILocation(line: 255, column: 7, scope: !2531)
!2559 = !DILocation(line: 256, column: 4, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 255, column: 12)
!2561 = !DILocation(line: 257, column: 11, scope: !2560)
!2562 = !DILocation(line: 257, column: 4, scope: !2560)
!2563 = !DILocation(line: 259, column: 2, scope: !2531)
!2564 = !DILocation(line: 262, column: 6, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 262, column: 6)
!2566 = !DILocation(line: 262, column: 21, scope: !2565)
!2567 = !DILocation(line: 262, column: 6, scope: !2454)
!2568 = !DILocation(line: 263, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 263, column: 7)
!2570 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 262, column: 28)
!2571 = !DILocation(line: 263, column: 7, scope: !2570)
!2572 = !DILocation(line: 264, column: 34, scope: !2569)
!2573 = !DILocation(line: 264, column: 39, scope: !2569)
!2574 = !DILocation(line: 264, column: 4, scope: !2569)
!2575 = !DILocation(line: 266, column: 36, scope: !2569)
!2576 = !DILocation(line: 266, column: 41, scope: !2569)
!2577 = !DILocation(line: 266, column: 4, scope: !2569)
!2578 = !DILocation(line: 267, column: 2, scope: !2570)
!2579 = !DILocation(line: 269, column: 37, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 269, column: 6)
!2581 = !DILocation(line: 269, column: 42, scope: !2580)
!2582 = !DILocation(line: 269, column: 6, scope: !2580)
!2583 = !DILocation(line: 269, column: 6, scope: !2454)
!2584 = !DILocation(line: 270, column: 3, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 269, column: 51)
!2586 = !DILocation(line: 270, column: 8, scope: !2585)
!2587 = !DILocation(line: 270, column: 18, scope: !2585)
!2588 = !DILocation(line: 270, column: 32, scope: !2585)
!2589 = !DILocation(line: 272, column: 35, scope: !2585)
!2590 = !DILocation(line: 272, column: 40, scope: !2585)
!2591 = !DILocation(line: 272, column: 9, scope: !2585)
!2592 = !DILocation(line: 272, column: 7, scope: !2585)
!2593 = !DILocation(line: 273, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 273, column: 7)
!2595 = !DILocation(line: 273, column: 7, scope: !2585)
!2596 = !DILocation(line: 274, column: 4, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 273, column: 12)
!2598 = !DILocation(line: 276, column: 28, scope: !2597)
!2599 = !DILocation(line: 276, column: 4, scope: !2597)
!2600 = !DILocation(line: 277, column: 4, scope: !2597)
!2601 = !DILocation(line: 278, column: 11, scope: !2597)
!2602 = !DILocation(line: 278, column: 4, scope: !2597)
!2603 = !DILocation(line: 280, column: 2, scope: !2585)
!2604 = !DILocation(line: 282, column: 6, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 282, column: 6)
!2606 = !DILocation(line: 282, column: 11, scope: !2605)
!2607 = !DILocation(line: 282, column: 16, scope: !2605)
!2608 = !DILocation(line: 282, column: 6, scope: !2454)
!2609 = !DILocation(line: 283, column: 3, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 282, column: 25)
!2611 = !DILocation(line: 283, column: 8, scope: !2610)
!2612 = !DILocation(line: 283, column: 19, scope: !2610)
!2613 = !DILocation(line: 283, column: 33, scope: !2610)
!2614 = !DILocation(line: 285, column: 35, scope: !2610)
!2615 = !DILocation(line: 285, column: 40, scope: !2610)
!2616 = !DILocation(line: 285, column: 9, scope: !2610)
!2617 = !DILocation(line: 285, column: 7, scope: !2610)
!2618 = !DILocation(line: 286, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 286, column: 7)
!2620 = !DILocation(line: 286, column: 7, scope: !2610)
!2621 = !DILocation(line: 287, column: 4, scope: !2619)
!2622 = !DILocation(line: 289, column: 2, scope: !2610)
!2623 = !DILocation(line: 291, column: 2, scope: !2454)
!2624 = !DILocation(line: 292, column: 1, scope: !2454)
!2625 = distinct !DISubprogram(name: "watchdog_deferred_registration_add", scope: !3, file: !3, line: 63, type: !2339, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2626 = !DILocalVariable(name: "wdd", arg: 1, scope: !2625, file: !3, line: 63, type: !69)
!2627 = !DILocation(line: 63, column: 72, scope: !2625)
!2628 = !DILocation(line: 65, column: 17, scope: !2625)
!2629 = !DILocation(line: 65, column: 22, scope: !2625)
!2630 = !DILocation(line: 65, column: 2, scope: !2625)
!2631 = !DILocation(line: 67, column: 1, scope: !2625)
!2632 = distinct !DISubprogram(name: "watchdog_unregister_device", scope: !3, file: !3, line: 351, type: !2339, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2633 = !DILocalVariable(name: "wdd", arg: 1, scope: !2632, file: !3, line: 351, type: !69)
!2634 = !DILocation(line: 351, column: 57, scope: !2632)
!2635 = !DILocation(line: 353, column: 2, scope: !2632)
!2636 = !DILocation(line: 354, column: 6, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 354, column: 6)
!2638 = !DILocation(line: 354, column: 6, scope: !2632)
!2639 = !DILocation(line: 355, column: 32, scope: !2637)
!2640 = !DILocation(line: 355, column: 3, scope: !2637)
!2641 = !DILocation(line: 357, column: 38, scope: !2637)
!2642 = !DILocation(line: 357, column: 3, scope: !2637)
!2643 = !DILocation(line: 358, column: 2, scope: !2632)
!2644 = !DILocation(line: 359, column: 1, scope: !2632)
!2645 = distinct !DISubprogram(name: "__watchdog_unregister_device", scope: !3, file: !3, line: 328, type: !2339, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2646 = !DILocalVariable(name: "wdd", arg: 1, scope: !2645, file: !3, line: 328, type: !69)
!2647 = !DILocation(line: 328, column: 66, scope: !2645)
!2648 = !DILocation(line: 330, column: 6, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 330, column: 6)
!2650 = !DILocation(line: 330, column: 10, scope: !2649)
!2651 = !DILocation(line: 330, column: 6, scope: !2645)
!2652 = !DILocation(line: 331, column: 3, scope: !2649)
!2653 = !DILocation(line: 333, column: 6, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 333, column: 6)
!2655 = !DILocation(line: 333, column: 11, scope: !2654)
!2656 = !DILocation(line: 333, column: 16, scope: !2654)
!2657 = !DILocation(line: 333, column: 6, scope: !2645)
!2658 = !DILocation(line: 334, column: 31, scope: !2654)
!2659 = !DILocation(line: 334, column: 36, scope: !2654)
!2660 = !DILocation(line: 334, column: 3, scope: !2654)
!2661 = !DILocation(line: 336, column: 37, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 336, column: 6)
!2663 = !DILocation(line: 336, column: 42, scope: !2662)
!2664 = !DILocation(line: 336, column: 6, scope: !2662)
!2665 = !DILocation(line: 336, column: 6, scope: !2645)
!2666 = !DILocation(line: 337, column: 31, scope: !2662)
!2667 = !DILocation(line: 337, column: 36, scope: !2662)
!2668 = !DILocation(line: 337, column: 3, scope: !2662)
!2669 = !DILocation(line: 339, column: 26, scope: !2645)
!2670 = !DILocation(line: 339, column: 2, scope: !2645)
!2671 = !DILocation(line: 340, column: 2, scope: !2645)
!2672 = !DILocation(line: 341, column: 1, scope: !2645)
!2673 = distinct !DISubprogram(name: "watchdog_deferred_registration_del", scope: !3, file: !3, line: 69, type: !2339, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2674 = !DILocalVariable(name: "wdd", arg: 1, scope: !2673, file: !3, line: 69, type: !69)
!2675 = !DILocation(line: 69, column: 72, scope: !2673)
!2676 = !DILocalVariable(name: "p", scope: !2673, file: !3, line: 71, type: !88)
!2677 = !DILocation(line: 71, column: 20, scope: !2673)
!2678 = !DILocalVariable(name: "n", scope: !2673, file: !3, line: 71, type: !88)
!2679 = !DILocation(line: 71, column: 24, scope: !2673)
!2680 = !DILocalVariable(name: "wdd_tmp", scope: !2673, file: !3, line: 72, type: !69)
!2681 = !DILocation(line: 72, column: 26, scope: !2673)
!2682 = !DILocation(line: 74, column: 2, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 74, column: 2)
!2684 = !DILocation(line: 74, column: 2, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 74, column: 2)
!2686 = !DILocalVariable(name: "__mptr", scope: !2687, file: !3, line: 75, type: !61)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 75, column: 13)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 74, column: 51)
!2689 = !DILocation(line: 75, column: 13, scope: !2687)
!2690 = !DILocation(line: 75, column: 13, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 75, column: 13)
!2692 = !DILocation(line: 75, column: 11, scope: !2688)
!2693 = !DILocation(line: 77, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 77, column: 7)
!2695 = !DILocation(line: 77, column: 18, scope: !2694)
!2696 = !DILocation(line: 77, column: 15, scope: !2694)
!2697 = !DILocation(line: 77, column: 7, scope: !2688)
!2698 = !DILocation(line: 78, column: 14, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 77, column: 23)
!2700 = !DILocation(line: 78, column: 23, scope: !2699)
!2701 = !DILocation(line: 78, column: 4, scope: !2699)
!2702 = !DILocation(line: 79, column: 4, scope: !2699)
!2703 = !DILocation(line: 81, column: 2, scope: !2688)
!2704 = distinct !{!2704, !2682, !2705}
!2705 = !DILocation(line: 81, column: 2, scope: !2683)
!2706 = !DILocation(line: 82, column: 1, scope: !2673)
!2707 = distinct !DISubprogram(name: "devm_watchdog_register_device", scope: !3, file: !3, line: 377, type: !2708, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!74, !76, !69}
!2710 = !DILocalVariable(name: "dev", arg: 1, scope: !2707, file: !3, line: 377, type: !76)
!2711 = !DILocation(line: 377, column: 50, scope: !2707)
!2712 = !DILocalVariable(name: "wdd", arg: 2, scope: !2707, file: !3, line: 378, type: !69)
!2713 = !DILocation(line: 378, column: 29, scope: !2707)
!2714 = !DILocalVariable(name: "rcwdd", scope: !2707, file: !3, line: 380, type: !2117)
!2715 = !DILocation(line: 380, column: 27, scope: !2707)
!2716 = !DILocalVariable(name: "ret", scope: !2707, file: !3, line: 381, type: !74)
!2717 = !DILocation(line: 381, column: 6, scope: !2707)
!2718 = !DILocation(line: 383, column: 10, scope: !2707)
!2719 = !DILocation(line: 383, column: 8, scope: !2707)
!2720 = !DILocation(line: 385, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 385, column: 6)
!2722 = !DILocation(line: 385, column: 6, scope: !2707)
!2723 = !DILocation(line: 386, column: 3, scope: !2721)
!2724 = !DILocation(line: 388, column: 33, scope: !2707)
!2725 = !DILocation(line: 388, column: 8, scope: !2707)
!2726 = !DILocation(line: 388, column: 6, scope: !2707)
!2727 = !DILocation(line: 389, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 389, column: 6)
!2729 = !DILocation(line: 389, column: 6, scope: !2707)
!2730 = !DILocation(line: 390, column: 12, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 389, column: 12)
!2732 = !DILocation(line: 390, column: 4, scope: !2731)
!2733 = !DILocation(line: 390, column: 10, scope: !2731)
!2734 = !DILocation(line: 391, column: 14, scope: !2731)
!2735 = !DILocation(line: 391, column: 19, scope: !2731)
!2736 = !DILocation(line: 391, column: 3, scope: !2731)
!2737 = !DILocation(line: 392, column: 2, scope: !2731)
!2738 = !DILocation(line: 393, column: 15, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 392, column: 9)
!2740 = !DILocation(line: 393, column: 3, scope: !2739)
!2741 = !DILocation(line: 396, column: 9, scope: !2707)
!2742 = !DILocation(line: 396, column: 2, scope: !2707)
!2743 = !DILocation(line: 397, column: 1, scope: !2707)
!2744 = distinct !DISubprogram(name: "devres_alloc", scope: !30, file: !30, line: 178, type: !2745, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!61, !2747, !185, !59}
!2747 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !30, line: 165, baseType: !2748)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !76, !61}
!2751 = !DILocalVariable(name: "release", arg: 1, scope: !2744, file: !30, line: 178, type: !2747)
!2752 = !DILocation(line: 178, column: 47, scope: !2744)
!2753 = !DILocalVariable(name: "size", arg: 2, scope: !2744, file: !30, line: 178, type: !185)
!2754 = !DILocation(line: 178, column: 63, scope: !2744)
!2755 = !DILocalVariable(name: "gfp", arg: 3, scope: !2744, file: !30, line: 178, type: !59)
!2756 = !DILocation(line: 178, column: 75, scope: !2744)
!2757 = !DILocation(line: 180, column: 27, scope: !2744)
!2758 = !DILocation(line: 180, column: 36, scope: !2744)
!2759 = !DILocation(line: 180, column: 42, scope: !2744)
!2760 = !DILocation(line: 180, column: 9, scope: !2744)
!2761 = !DILocation(line: 180, column: 2, scope: !2744)
!2762 = distinct !DISubprogram(name: "devm_watchdog_unregister_device", scope: !3, file: !3, line: 363, type: !2749, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2763 = !DILocalVariable(name: "dev", arg: 1, scope: !2762, file: !3, line: 363, type: !76)
!2764 = !DILocation(line: 363, column: 60, scope: !2762)
!2765 = !DILocalVariable(name: "res", arg: 2, scope: !2762, file: !3, line: 363, type: !61)
!2766 = !DILocation(line: 363, column: 71, scope: !2762)
!2767 = !DILocation(line: 365, column: 57, scope: !2762)
!2768 = !DILocation(line: 365, column: 30, scope: !2762)
!2769 = !DILocation(line: 365, column: 29, scope: !2762)
!2770 = !DILocation(line: 365, column: 2, scope: !2762)
!2771 = !DILocation(line: 366, column: 1, scope: !2762)
!2772 = distinct !DISubprogram(name: "watchdog_exit", scope: !3, file: !3, line: 428, type: !2191, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2773 = !DILocation(line: 430, column: 2, scope: !2772)
!2774 = !DILocation(line: 431, column: 2, scope: !2772)
!2775 = !DILocation(line: 432, column: 1, scope: !2772)
!2776 = distinct !DISubprogram(name: "watchdog_init", scope: !3, file: !3, line: 416, type: !2777, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!74}
!2779 = !DILocalVariable(name: "err", scope: !2776, file: !3, line: 418, type: !74)
!2780 = !DILocation(line: 418, column: 6, scope: !2776)
!2781 = !DILocation(line: 420, column: 8, scope: !2776)
!2782 = !DILocation(line: 420, column: 6, scope: !2776)
!2783 = !DILocation(line: 421, column: 6, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 421, column: 6)
!2785 = !DILocation(line: 421, column: 10, scope: !2784)
!2786 = !DILocation(line: 421, column: 6, scope: !2776)
!2787 = !DILocation(line: 422, column: 10, scope: !2784)
!2788 = !DILocation(line: 422, column: 3, scope: !2784)
!2789 = !DILocation(line: 424, column: 2, scope: !2776)
!2790 = !DILocation(line: 425, column: 2, scope: !2776)
!2791 = !DILocation(line: 426, column: 1, scope: !2776)
!2792 = distinct !DISubprogram(name: "kobject_name", scope: !81, file: !81, line: 88, type: !2793, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!56, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!2797 = !DILocalVariable(name: "kobj", arg: 1, scope: !2792, file: !81, line: 88, type: !2795)
!2798 = !DILocation(line: 88, column: 62, scope: !2792)
!2799 = !DILocation(line: 90, column: 9, scope: !2792)
!2800 = !DILocation(line: 90, column: 15, scope: !2792)
!2801 = !DILocation(line: 90, column: 2, scope: !2792)
!2802 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !1881, file: !1881, line: 494, type: !2803, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!74, !2393, !56, !610, !185}
!2805 = !DILocalVariable(name: "np", arg: 1, scope: !2802, file: !1881, line: 494, type: !2393)
!2806 = !DILocation(line: 494, column: 72, scope: !2802)
!2807 = !DILocalVariable(name: "propname", arg: 2, scope: !2802, file: !1881, line: 495, type: !56)
!2808 = !DILocation(line: 495, column: 23, scope: !2802)
!2809 = !DILocalVariable(name: "out_values", arg: 3, scope: !2802, file: !1881, line: 496, type: !610)
!2810 = !DILocation(line: 496, column: 16, scope: !2802)
!2811 = !DILocalVariable(name: "sz", arg: 4, scope: !2802, file: !1881, line: 496, type: !185)
!2812 = !DILocation(line: 496, column: 35, scope: !2802)
!2813 = !DILocalVariable(name: "ret", scope: !2802, file: !1881, line: 498, type: !74)
!2814 = !DILocation(line: 498, column: 6, scope: !2802)
!2815 = !DILocation(line: 498, column: 48, scope: !2802)
!2816 = !DILocation(line: 498, column: 52, scope: !2802)
!2817 = !DILocation(line: 498, column: 62, scope: !2802)
!2818 = !DILocation(line: 499, column: 13, scope: !2802)
!2819 = !DILocation(line: 498, column: 12, scope: !2802)
!2820 = !DILocation(line: 500, column: 6, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2802, file: !1881, line: 500, column: 6)
!2822 = !DILocation(line: 500, column: 10, scope: !2821)
!2823 = !DILocation(line: 500, column: 6, scope: !2802)
!2824 = !DILocation(line: 501, column: 3, scope: !2821)
!2825 = !DILocation(line: 503, column: 10, scope: !2821)
!2826 = !DILocation(line: 503, column: 3, scope: !2821)
!2827 = !DILocation(line: 504, column: 1, scope: !2802)
!2828 = distinct !DISubprogram(name: "set_bit", scope: !2829, file: !2829, line: 26, type: !2830, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2829 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !66, !2832}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!2834 = !DILocalVariable(name: "nr", arg: 1, scope: !2835, file: !2836, line: 52, type: !66)
!2835 = distinct !DISubprogram(name: "arch_set_bit", scope: !2836, file: !2836, line: 52, type: !2830, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2836 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2837 = !DILocation(line: 52, column: 19, scope: !2835, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 29, column: 2, scope: !2828)
!2839 = !DILocalVariable(name: "addr", arg: 2, scope: !2835, file: !2836, line: 52, type: !2832)
!2840 = !DILocation(line: 52, column: 47, scope: !2835, inlinedAt: !2838)
!2841 = !DILocalVariable(name: "v", arg: 1, scope: !2842, file: !2843, line: 84, type: !2846)
!2842 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2843, file: !2843, line: 84, type: !2844, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2843 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2846, !185}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2848)
!2848 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2849 = !DILocation(line: 84, column: 74, scope: !2842, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 28, column: 2, scope: !2828)
!2851 = !DILocalVariable(name: "size", arg: 2, scope: !2842, file: !2843, line: 84, type: !185)
!2852 = !DILocation(line: 84, column: 84, scope: !2842, inlinedAt: !2850)
!2853 = !DILocalVariable(name: "nr", arg: 1, scope: !2828, file: !2829, line: 26, type: !66)
!2854 = !DILocation(line: 26, column: 33, scope: !2828)
!2855 = !DILocalVariable(name: "addr", arg: 2, scope: !2828, file: !2829, line: 26, type: !2832)
!2856 = !DILocation(line: 26, column: 61, scope: !2828)
!2857 = !DILocation(line: 28, column: 26, scope: !2828)
!2858 = !DILocation(line: 28, column: 33, scope: !2828)
!2859 = !DILocation(line: 28, column: 31, scope: !2828)
!2860 = !DILocation(line: 86, column: 20, scope: !2842, inlinedAt: !2850)
!2861 = !DILocation(line: 86, column: 23, scope: !2842, inlinedAt: !2850)
!2862 = !DILocation(line: 86, column: 2, scope: !2842, inlinedAt: !2850)
!2863 = !DILocation(line: 87, column: 2, scope: !2842, inlinedAt: !2850)
!2864 = !DILocation(line: 29, column: 15, scope: !2828)
!2865 = !DILocation(line: 29, column: 19, scope: !2828)
!2866 = !DILocation(line: 54, column: 27, scope: !2867, inlinedAt: !2838)
!2867 = distinct !DILexicalBlock(scope: !2835, file: !2836, line: 54, column: 6)
!2868 = !DILocation(line: 54, column: 6, scope: !2867, inlinedAt: !2838)
!2869 = !DILocation(line: 54, column: 6, scope: !2835, inlinedAt: !2838)
!2870 = !DILocation(line: 56, column: 6, scope: !2871, inlinedAt: !2838)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !2836, line: 54, column: 32)
!2872 = !DILocation(line: 57, column: 12, scope: !2871, inlinedAt: !2838)
!2873 = !DILocation(line: 55, column: 3, scope: !2871, inlinedAt: !2838)
!2874 = !{i32 -2147143308}
!2875 = !DILocation(line: 59, column: 2, scope: !2871, inlinedAt: !2838)
!2876 = !DILocation(line: 61, column: 8, scope: !2877, inlinedAt: !2838)
!2877 = distinct !DILexicalBlock(scope: !2867, file: !2836, line: 59, column: 9)
!2878 = !DILocation(line: 61, column: 32, scope: !2877, inlinedAt: !2838)
!2879 = !DILocation(line: 60, column: 3, scope: !2877, inlinedAt: !2838)
!2880 = !{i32 -2147143176}
!2881 = !DILocation(line: 30, column: 1, scope: !2828)
!2882 = distinct !DISubprogram(name: "clear_bit", scope: !2829, file: !2829, line: 39, type: !2830, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2883 = !DILocalVariable(name: "nr", arg: 1, scope: !2884, file: !2836, line: 72, type: !66)
!2884 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2836, file: !2836, line: 72, type: !2830, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2885 = !DILocation(line: 72, column: 21, scope: !2884, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 42, column: 2, scope: !2882)
!2887 = !DILocalVariable(name: "addr", arg: 2, scope: !2884, file: !2836, line: 72, type: !2832)
!2888 = !DILocation(line: 72, column: 49, scope: !2884, inlinedAt: !2886)
!2889 = !DILocation(line: 84, column: 74, scope: !2842, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 41, column: 2, scope: !2882)
!2891 = !DILocation(line: 84, column: 84, scope: !2842, inlinedAt: !2890)
!2892 = !DILocalVariable(name: "nr", arg: 1, scope: !2882, file: !2829, line: 39, type: !66)
!2893 = !DILocation(line: 39, column: 35, scope: !2882)
!2894 = !DILocalVariable(name: "addr", arg: 2, scope: !2882, file: !2829, line: 39, type: !2832)
!2895 = !DILocation(line: 39, column: 63, scope: !2882)
!2896 = !DILocation(line: 41, column: 26, scope: !2882)
!2897 = !DILocation(line: 41, column: 33, scope: !2882)
!2898 = !DILocation(line: 41, column: 31, scope: !2882)
!2899 = !DILocation(line: 86, column: 20, scope: !2842, inlinedAt: !2890)
!2900 = !DILocation(line: 86, column: 23, scope: !2842, inlinedAt: !2890)
!2901 = !DILocation(line: 86, column: 2, scope: !2842, inlinedAt: !2890)
!2902 = !DILocation(line: 87, column: 2, scope: !2842, inlinedAt: !2890)
!2903 = !DILocation(line: 42, column: 17, scope: !2882)
!2904 = !DILocation(line: 42, column: 21, scope: !2882)
!2905 = !DILocation(line: 74, column: 27, scope: !2906, inlinedAt: !2886)
!2906 = distinct !DILexicalBlock(scope: !2884, file: !2836, line: 74, column: 6)
!2907 = !DILocation(line: 74, column: 6, scope: !2906, inlinedAt: !2886)
!2908 = !DILocation(line: 74, column: 6, scope: !2884, inlinedAt: !2886)
!2909 = !DILocation(line: 76, column: 6, scope: !2910, inlinedAt: !2886)
!2910 = distinct !DILexicalBlock(scope: !2906, file: !2836, line: 74, column: 32)
!2911 = !DILocation(line: 77, column: 13, scope: !2910, inlinedAt: !2886)
!2912 = !DILocation(line: 77, column: 12, scope: !2910, inlinedAt: !2886)
!2913 = !DILocation(line: 75, column: 3, scope: !2910, inlinedAt: !2886)
!2914 = !{i32 -2147142354}
!2915 = !DILocation(line: 78, column: 2, scope: !2910, inlinedAt: !2886)
!2916 = !DILocation(line: 80, column: 8, scope: !2917, inlinedAt: !2886)
!2917 = distinct !DILexicalBlock(scope: !2906, file: !2836, line: 78, column: 9)
!2918 = !DILocation(line: 80, column: 32, scope: !2917, inlinedAt: !2886)
!2919 = !DILocation(line: 79, column: 3, scope: !2917, inlinedAt: !2886)
!2920 = !{i32 -2147142222}
!2921 = !DILocation(line: 43, column: 1, scope: !2882)
!2922 = distinct !DISubprogram(name: "test_bit", scope: !2923, file: !2923, line: 132, type: !2924, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2923 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!981, !66, !2926}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2928 = !DILocalVariable(name: "nr", arg: 1, scope: !2929, file: !2836, line: 210, type: !66)
!2929 = distinct !DISubprogram(name: "variable_test_bit", scope: !2836, file: !2836, line: 210, type: !2924, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2930 = !DILocation(line: 210, column: 52, scope: !2929, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 135, column: 9, scope: !2922)
!2932 = !DILocalVariable(name: "addr", arg: 2, scope: !2929, file: !2836, line: 210, type: !2926)
!2933 = !DILocation(line: 210, column: 86, scope: !2929, inlinedAt: !2931)
!2934 = !DILocalVariable(name: "oldbit", scope: !2929, file: !2836, line: 212, type: !981)
!2935 = !DILocation(line: 212, column: 7, scope: !2929, inlinedAt: !2931)
!2936 = !DILocalVariable(name: "nr", arg: 1, scope: !2937, file: !2836, line: 204, type: !66)
!2937 = distinct !DISubprogram(name: "constant_test_bit", scope: !2836, file: !2836, line: 204, type: !2924, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2938 = !DILocation(line: 204, column: 52, scope: !2937, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 135, column: 9, scope: !2922)
!2940 = !DILocalVariable(name: "addr", arg: 2, scope: !2937, file: !2836, line: 204, type: !2926)
!2941 = !DILocation(line: 204, column: 86, scope: !2937, inlinedAt: !2939)
!2942 = !DILocalVariable(name: "v", arg: 1, scope: !2943, file: !2843, line: 69, type: !2846)
!2943 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2843, file: !2843, line: 69, type: !2844, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2944 = !DILocation(line: 69, column: 73, scope: !2943, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 134, column: 2, scope: !2922)
!2946 = !DILocalVariable(name: "size", arg: 2, scope: !2943, file: !2843, line: 69, type: !185)
!2947 = !DILocation(line: 69, column: 83, scope: !2943, inlinedAt: !2945)
!2948 = !DILocalVariable(name: "nr", arg: 1, scope: !2922, file: !2923, line: 132, type: !66)
!2949 = !DILocation(line: 132, column: 34, scope: !2922)
!2950 = !DILocalVariable(name: "addr", arg: 2, scope: !2922, file: !2923, line: 132, type: !2926)
!2951 = !DILocation(line: 132, column: 68, scope: !2922)
!2952 = !DILocation(line: 134, column: 25, scope: !2922)
!2953 = !DILocation(line: 134, column: 32, scope: !2922)
!2954 = !DILocation(line: 134, column: 30, scope: !2922)
!2955 = !DILocation(line: 71, column: 19, scope: !2943, inlinedAt: !2945)
!2956 = !DILocation(line: 71, column: 22, scope: !2943, inlinedAt: !2945)
!2957 = !DILocation(line: 71, column: 2, scope: !2943, inlinedAt: !2945)
!2958 = !DILocation(line: 72, column: 2, scope: !2943, inlinedAt: !2945)
!2959 = !DILocation(line: 135, column: 9, scope: !2922)
!2960 = !DILocation(line: 206, column: 19, scope: !2937, inlinedAt: !2939)
!2961 = !DILocation(line: 206, column: 22, scope: !2937, inlinedAt: !2939)
!2962 = !DILocation(line: 206, column: 15, scope: !2937, inlinedAt: !2939)
!2963 = !DILocation(line: 207, column: 4, scope: !2937, inlinedAt: !2939)
!2964 = !DILocation(line: 207, column: 9, scope: !2937, inlinedAt: !2939)
!2965 = !DILocation(line: 207, column: 12, scope: !2937, inlinedAt: !2939)
!2966 = !DILocation(line: 206, column: 44, scope: !2937, inlinedAt: !2939)
!2967 = !DILocation(line: 207, column: 37, scope: !2937, inlinedAt: !2939)
!2968 = !DILocation(line: 217, column: 33, scope: !2929, inlinedAt: !2931)
!2969 = !DILocation(line: 217, column: 46, scope: !2929, inlinedAt: !2931)
!2970 = !DILocation(line: 214, column: 2, scope: !2929, inlinedAt: !2931)
!2971 = !{i32 -2147134060, i32 -2147134000}
!2972 = !DILocation(line: 219, column: 9, scope: !2929, inlinedAt: !2931)
!2973 = !DILocation(line: 135, column: 2, scope: !2922)
!2974 = distinct !DISubprogram(name: "watchdog_reboot_notifier", scope: !3, file: !3, line: 154, type: !2103, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!2975 = !DILocalVariable(name: "nb", arg: 1, scope: !2974, file: !3, line: 154, type: !2105)
!2976 = !DILocation(line: 154, column: 60, scope: !2974)
!2977 = !DILocalVariable(name: "code", arg: 2, scope: !2974, file: !3, line: 155, type: !68)
!2978 = !DILocation(line: 155, column: 23, scope: !2974)
!2979 = !DILocalVariable(name: "data", arg: 3, scope: !2974, file: !3, line: 155, type: !61)
!2980 = !DILocation(line: 155, column: 35, scope: !2974)
!2981 = !DILocalVariable(name: "wdd", scope: !2974, file: !3, line: 157, type: !69)
!2982 = !DILocation(line: 157, column: 26, scope: !2974)
!2983 = !DILocalVariable(name: "__mptr", scope: !2984, file: !3, line: 159, type: !61)
!2984 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 159, column: 8)
!2985 = !DILocation(line: 159, column: 8, scope: !2984)
!2986 = !DILocation(line: 159, column: 8, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 159, column: 8)
!2988 = !DILocation(line: 159, column: 6, scope: !2974)
!2989 = !DILocation(line: 160, column: 6, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 160, column: 6)
!2991 = !DILocation(line: 160, column: 11, scope: !2990)
!2992 = !DILocation(line: 160, column: 23, scope: !2990)
!2993 = !DILocation(line: 160, column: 26, scope: !2990)
!2994 = !DILocation(line: 160, column: 31, scope: !2990)
!2995 = !DILocation(line: 160, column: 6, scope: !2974)
!2996 = !DILocation(line: 161, column: 23, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 161, column: 7)
!2998 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 160, column: 44)
!2999 = !DILocation(line: 161, column: 7, scope: !2997)
!3000 = !DILocation(line: 161, column: 7, scope: !2998)
!3001 = !DILocalVariable(name: "ret", scope: !3002, file: !3, line: 162, type: !74)
!3002 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 161, column: 29)
!3003 = !DILocation(line: 162, column: 8, scope: !3002)
!3004 = !DILocation(line: 164, column: 10, scope: !3002)
!3005 = !DILocation(line: 164, column: 15, scope: !3002)
!3006 = !DILocation(line: 164, column: 20, scope: !3002)
!3007 = !DILocation(line: 164, column: 25, scope: !3002)
!3008 = !DILocation(line: 164, column: 8, scope: !3002)
!3009 = !DILocation(line: 165, column: 8, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 165, column: 8)
!3011 = !DILocation(line: 165, column: 8, scope: !3002)
!3012 = !DILocation(line: 166, column: 5, scope: !3010)
!3013 = !DILocation(line: 167, column: 3, scope: !3002)
!3014 = !DILocation(line: 168, column: 2, scope: !2998)
!3015 = !DILocation(line: 170, column: 2, scope: !2974)
!3016 = !DILocation(line: 171, column: 1, scope: !2974)
!3017 = distinct !DISubprogram(name: "watchdog_restart_notifier", scope: !3, file: !3, line: 173, type: !2103, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3018 = !DILocalVariable(name: "nb", arg: 1, scope: !3017, file: !3, line: 173, type: !2105)
!3019 = !DILocation(line: 173, column: 61, scope: !3017)
!3020 = !DILocalVariable(name: "action", arg: 2, scope: !3017, file: !3, line: 174, type: !68)
!3021 = !DILocation(line: 174, column: 24, scope: !3017)
!3022 = !DILocalVariable(name: "data", arg: 3, scope: !3017, file: !3, line: 174, type: !61)
!3023 = !DILocation(line: 174, column: 38, scope: !3017)
!3024 = !DILocalVariable(name: "wdd", scope: !3017, file: !3, line: 176, type: !69)
!3025 = !DILocation(line: 176, column: 26, scope: !3017)
!3026 = !DILocalVariable(name: "__mptr", scope: !3027, file: !3, line: 176, type: !61)
!3027 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 176, column: 32)
!3028 = !DILocation(line: 176, column: 32, scope: !3027)
!3029 = !DILocation(line: 176, column: 32, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 176, column: 32)
!3031 = !DILocalVariable(name: "ret", scope: !3017, file: !3, line: 179, type: !74)
!3032 = !DILocation(line: 179, column: 6, scope: !3017)
!3033 = !DILocation(line: 181, column: 8, scope: !3017)
!3034 = !DILocation(line: 181, column: 13, scope: !3017)
!3035 = !DILocation(line: 181, column: 18, scope: !3017)
!3036 = !DILocation(line: 181, column: 26, scope: !3017)
!3037 = !DILocation(line: 181, column: 31, scope: !3017)
!3038 = !DILocation(line: 181, column: 39, scope: !3017)
!3039 = !DILocation(line: 181, column: 6, scope: !3017)
!3040 = !DILocation(line: 182, column: 6, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 182, column: 6)
!3042 = !DILocation(line: 182, column: 6, scope: !3017)
!3043 = !DILocation(line: 183, column: 3, scope: !3041)
!3044 = !DILocation(line: 185, column: 2, scope: !3017)
!3045 = !DILocation(line: 186, column: 1, scope: !3017)
!3046 = distinct !DISubprogram(name: "kasan_check_write", scope: !3047, file: !3047, line: 38, type: !3048, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3047 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!981, !2846, !7}
!3050 = !DILocalVariable(name: "p", arg: 1, scope: !3046, file: !3047, line: 38, type: !2846)
!3051 = !DILocation(line: 38, column: 59, scope: !3046)
!3052 = !DILocalVariable(name: "size", arg: 2, scope: !3046, file: !3047, line: 38, type: !7)
!3053 = !DILocation(line: 38, column: 75, scope: !3046)
!3054 = !DILocation(line: 40, column: 2, scope: !3046)
!3055 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3056, file: !3056, line: 178, type: !3057, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3056 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !2846, !185, !74}
!3059 = !DILocalVariable(name: "ptr", arg: 1, scope: !3055, file: !3056, line: 178, type: !2846)
!3060 = !DILocation(line: 178, column: 60, scope: !3055)
!3061 = !DILocalVariable(name: "size", arg: 2, scope: !3055, file: !3056, line: 178, type: !185)
!3062 = !DILocation(line: 178, column: 72, scope: !3055)
!3063 = !DILocalVariable(name: "type", arg: 3, scope: !3055, file: !3056, line: 179, type: !74)
!3064 = !DILocation(line: 179, column: 15, scope: !3055)
!3065 = !DILocation(line: 179, column: 23, scope: !3055)
!3066 = distinct !DISubprogram(name: "kasan_check_read", scope: !3047, file: !3047, line: 34, type: !3048, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3067 = !DILocalVariable(name: "p", arg: 1, scope: !3066, file: !3047, line: 34, type: !2846)
!3068 = !DILocation(line: 34, column: 58, scope: !3066)
!3069 = !DILocalVariable(name: "size", arg: 2, scope: !3066, file: !3047, line: 34, type: !7)
!3070 = !DILocation(line: 34, column: 74, scope: !3066)
!3071 = !DILocation(line: 36, column: 2, scope: !3066)
!3072 = distinct !DISubprogram(name: "watchdog_active", scope: !71, file: !71, line: 126, type: !3073, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!981, !69}
!3075 = !DILocalVariable(name: "wdd", arg: 1, scope: !3072, file: !71, line: 126, type: !69)
!3076 = !DILocation(line: 126, column: 60, scope: !3072)
!3077 = !DILocation(line: 128, column: 32, scope: !3072)
!3078 = !DILocation(line: 128, column: 37, scope: !3072)
!3079 = !DILocation(line: 128, column: 9, scope: !3072)
!3080 = !DILocation(line: 128, column: 2, scope: !3072)
!3081 = distinct !DISubprogram(name: "list_add_tail", scope: !3082, file: !3082, line: 98, type: !3083, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3082 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !88, !88}
!3085 = !DILocalVariable(name: "new", arg: 1, scope: !3081, file: !3082, line: 98, type: !88)
!3086 = !DILocation(line: 98, column: 52, scope: !3081)
!3087 = !DILocalVariable(name: "head", arg: 2, scope: !3081, file: !3082, line: 98, type: !88)
!3088 = !DILocation(line: 98, column: 75, scope: !3081)
!3089 = !DILocation(line: 100, column: 13, scope: !3081)
!3090 = !DILocation(line: 100, column: 18, scope: !3081)
!3091 = !DILocation(line: 100, column: 24, scope: !3081)
!3092 = !DILocation(line: 100, column: 30, scope: !3081)
!3093 = !DILocation(line: 100, column: 2, scope: !3081)
!3094 = !DILocation(line: 101, column: 1, scope: !3081)
!3095 = distinct !DISubprogram(name: "__list_add", scope: !3082, file: !3082, line: 63, type: !3096, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !88, !88, !88}
!3098 = !DILocalVariable(name: "new", arg: 1, scope: !3095, file: !3082, line: 63, type: !88)
!3099 = !DILocation(line: 63, column: 49, scope: !3095)
!3100 = !DILocalVariable(name: "prev", arg: 2, scope: !3095, file: !3082, line: 64, type: !88)
!3101 = !DILocation(line: 64, column: 28, scope: !3095)
!3102 = !DILocalVariable(name: "next", arg: 3, scope: !3095, file: !3082, line: 65, type: !88)
!3103 = !DILocation(line: 65, column: 28, scope: !3095)
!3104 = !DILocation(line: 67, column: 24, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3095, file: !3082, line: 67, column: 6)
!3106 = !DILocation(line: 67, column: 29, scope: !3105)
!3107 = !DILocation(line: 67, column: 35, scope: !3105)
!3108 = !DILocation(line: 67, column: 7, scope: !3105)
!3109 = !DILocation(line: 67, column: 6, scope: !3095)
!3110 = !DILocation(line: 68, column: 3, scope: !3105)
!3111 = !DILocation(line: 70, column: 15, scope: !3095)
!3112 = !DILocation(line: 70, column: 2, scope: !3095)
!3113 = !DILocation(line: 70, column: 8, scope: !3095)
!3114 = !DILocation(line: 70, column: 13, scope: !3095)
!3115 = !DILocation(line: 71, column: 14, scope: !3095)
!3116 = !DILocation(line: 71, column: 2, scope: !3095)
!3117 = !DILocation(line: 71, column: 7, scope: !3095)
!3118 = !DILocation(line: 71, column: 12, scope: !3095)
!3119 = !DILocation(line: 72, column: 14, scope: !3095)
!3120 = !DILocation(line: 72, column: 2, scope: !3095)
!3121 = !DILocation(line: 72, column: 7, scope: !3095)
!3122 = !DILocation(line: 72, column: 12, scope: !3095)
!3123 = !DILocation(line: 73, column: 2, scope: !3095)
!3124 = !DILocation(line: 73, column: 2, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3095, file: !3082, line: 73, column: 2)
!3126 = !DILocation(line: 73, column: 2, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3125, file: !3082, line: 73, column: 2)
!3128 = !DILocation(line: 73, column: 2, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !3082, line: 73, column: 2)
!3130 = !DILocation(line: 74, column: 1, scope: !3095)
!3131 = distinct !DISubprogram(name: "__list_add_valid", scope: !3082, file: !3082, line: 45, type: !3132, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!981, !88, !88, !88}
!3134 = !DILocalVariable(name: "new", arg: 1, scope: !3131, file: !3082, line: 45, type: !88)
!3135 = !DILocation(line: 45, column: 55, scope: !3131)
!3136 = !DILocalVariable(name: "prev", arg: 2, scope: !3131, file: !3082, line: 46, type: !88)
!3137 = !DILocation(line: 46, column: 23, scope: !3131)
!3138 = !DILocalVariable(name: "next", arg: 3, scope: !3131, file: !3082, line: 47, type: !88)
!3139 = !DILocation(line: 47, column: 23, scope: !3131)
!3140 = !DILocation(line: 49, column: 2, scope: !3131)
!3141 = distinct !DISubprogram(name: "list_del", scope: !3082, file: !3082, line: 144, type: !3142, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !88}
!3144 = !DILocalVariable(name: "entry", arg: 1, scope: !3141, file: !3082, line: 144, type: !88)
!3145 = !DILocation(line: 144, column: 47, scope: !3141)
!3146 = !DILocation(line: 146, column: 19, scope: !3141)
!3147 = !DILocation(line: 146, column: 2, scope: !3141)
!3148 = !DILocation(line: 147, column: 2, scope: !3141)
!3149 = !DILocation(line: 147, column: 9, scope: !3141)
!3150 = !DILocation(line: 147, column: 14, scope: !3141)
!3151 = !DILocation(line: 148, column: 2, scope: !3141)
!3152 = !DILocation(line: 148, column: 9, scope: !3141)
!3153 = !DILocation(line: 148, column: 14, scope: !3141)
!3154 = !DILocation(line: 149, column: 1, scope: !3141)
!3155 = distinct !DISubprogram(name: "__list_del_entry", scope: !3082, file: !3082, line: 130, type: !3142, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3156 = !DILocalVariable(name: "entry", arg: 1, scope: !3155, file: !3082, line: 130, type: !88)
!3157 = !DILocation(line: 130, column: 55, scope: !3155)
!3158 = !DILocation(line: 132, column: 30, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !3082, line: 132, column: 6)
!3160 = !DILocation(line: 132, column: 7, scope: !3159)
!3161 = !DILocation(line: 132, column: 6, scope: !3155)
!3162 = !DILocation(line: 133, column: 3, scope: !3159)
!3163 = !DILocation(line: 135, column: 13, scope: !3155)
!3164 = !DILocation(line: 135, column: 20, scope: !3155)
!3165 = !DILocation(line: 135, column: 26, scope: !3155)
!3166 = !DILocation(line: 135, column: 33, scope: !3155)
!3167 = !DILocation(line: 135, column: 2, scope: !3155)
!3168 = !DILocation(line: 136, column: 1, scope: !3155)
!3169 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3082, file: !3082, line: 51, type: !3170, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!981, !88}
!3172 = !DILocalVariable(name: "entry", arg: 1, scope: !3169, file: !3082, line: 51, type: !88)
!3173 = !DILocation(line: 51, column: 61, scope: !3169)
!3174 = !DILocation(line: 53, column: 2, scope: !3169)
!3175 = distinct !DISubprogram(name: "__list_del", scope: !3082, file: !3082, line: 110, type: !3083, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3176 = !DILocalVariable(name: "prev", arg: 1, scope: !3175, file: !3082, line: 110, type: !88)
!3177 = !DILocation(line: 110, column: 50, scope: !3175)
!3178 = !DILocalVariable(name: "next", arg: 2, scope: !3175, file: !3082, line: 110, type: !88)
!3179 = !DILocation(line: 110, column: 75, scope: !3175)
!3180 = !DILocation(line: 112, column: 15, scope: !3175)
!3181 = !DILocation(line: 112, column: 2, scope: !3175)
!3182 = !DILocation(line: 112, column: 8, scope: !3175)
!3183 = !DILocation(line: 112, column: 13, scope: !3175)
!3184 = !DILocation(line: 113, column: 2, scope: !3175)
!3185 = !DILocation(line: 113, column: 2, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3175, file: !3082, line: 113, column: 2)
!3187 = !DILocation(line: 113, column: 2, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3186, file: !3082, line: 113, column: 2)
!3189 = !DILocation(line: 113, column: 2, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !3082, line: 113, column: 2)
!3191 = !DILocation(line: 114, column: 1, scope: !3175)
!3192 = distinct !DISubprogram(name: "watchdog_deferred_registration", scope: !3, file: !3, line: 400, type: !2777, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3193 = !DILocation(line: 402, column: 2, scope: !3192)
!3194 = !DILocation(line: 403, column: 24, scope: !3192)
!3195 = !DILocation(line: 404, column: 2, scope: !3192)
!3196 = !DILocation(line: 404, column: 10, scope: !3192)
!3197 = !DILocation(line: 404, column: 9, scope: !3192)
!3198 = !DILocalVariable(name: "wdd", scope: !3199, file: !3, line: 405, type: !69)
!3199 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 404, column: 46)
!3200 = !DILocation(line: 405, column: 27, scope: !3199)
!3201 = !DILocalVariable(name: "__mptr", scope: !3202, file: !3, line: 407, type: !61)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 407, column: 9)
!3203 = !DILocation(line: 407, column: 9, scope: !3202)
!3204 = !DILocation(line: 407, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 407, column: 9)
!3206 = !DILocation(line: 407, column: 7, scope: !3199)
!3207 = !DILocation(line: 409, column: 13, scope: !3199)
!3208 = !DILocation(line: 409, column: 18, scope: !3199)
!3209 = !DILocation(line: 409, column: 3, scope: !3199)
!3210 = !DILocation(line: 410, column: 30, scope: !3199)
!3211 = !DILocation(line: 410, column: 3, scope: !3199)
!3212 = distinct !{!3212, !3195, !3213}
!3213 = !DILocation(line: 411, column: 2, scope: !3192)
!3214 = !DILocation(line: 412, column: 2, scope: !3192)
!3215 = !DILocation(line: 413, column: 2, scope: !3192)
!3216 = distinct !DISubprogram(name: "list_empty", scope: !3082, file: !3082, line: 280, type: !3217, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!74, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3221 = !DILocalVariable(name: "head", arg: 1, scope: !3216, file: !3082, line: 280, type: !3219)
!3222 = !DILocation(line: 280, column: 54, scope: !3216)
!3223 = !DILocation(line: 282, column: 9, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3216, file: !3082, line: 282, column: 9)
!3225 = !DILocation(line: 282, column: 9, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3224, file: !3082, line: 282, column: 9)
!3227 = !DILocation(line: 282, column: 34, scope: !3216)
!3228 = !DILocation(line: 282, column: 31, scope: !3216)
!3229 = !DILocation(line: 282, column: 2, scope: !3216)
