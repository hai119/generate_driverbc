; ModuleID = '../bcout/drivers/ptp/ptp_dte.llvm.bc'
source_filename = "drivers/ptp/ptp_dte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ptp_dte_driver_init6:\09\09\09"
module asm ".long\09ptp_dte_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.17, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.16, i32, [12 x i8] }
%union.anon.16 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.17 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.18, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.31 = type { %struct.atomic_t }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.32, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.35 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i64, i64 }
%union.anon.35 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.ptp_clock_info = type { %struct.module*, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.ptp_pin_desc*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, i32, i32, i32)*, i64 (%struct.ptp_clock_info*)* }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.timespec64 = type { i64, i64 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.ptp_clock_request = type { i32, %union.anon.38 }
%union.anon.38 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.39, %struct.ptp_clock_time, i32, i32, %union.anon.40 }
%union.anon.39 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.40 = type { %struct.ptp_clock_time }
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
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.ptp_dte = type { i8*, %struct.ptp_clock*, %struct.ptp_clock_info, %struct.device*, i32, i32, %struct.spinlock, [4 x i32] }
%struct.ptp_clock = type opaque

@__UNIQUE_ID___addressable_ptp_dte_driver_init163 = internal global i8* bitcast (i32 ()* @ptp_dte_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ptp_dte_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @ptp_dte_probe, i32 (%struct.platform_device*)* @ptp_dte_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @ptp_dte_of_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @ptp_dte_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2198
@__exitcall_ptp_dte_driver_exit = internal global void ()* @ptp_dte_driver_exit, section ".exitcall.exit", align 8, !dbg !2171
@__UNIQUE_ID_author164 = internal constant [24 x i8] c"ptp_dte.author=Broadcom\00", section ".modinfo", align 1, !dbg !2178
@__UNIQUE_ID_description165 = internal constant [50 x i8] c"ptp_dte.description=Broadcom DTE PTP Clock driver\00", section ".modinfo", align 1, !dbg !2183
@__UNIQUE_ID_file166 = internal constant [33 x i8] c"ptp_dte.file=drivers/ptp/ptp_dte\00", section ".modinfo", align 1, !dbg !2188
@__UNIQUE_ID_license167 = internal constant [23 x i8] c"ptp_dte.license=GPL v2\00", section ".modinfo", align 1, !dbg !2193
@.str = private unnamed_addr constant [8 x i8] c"ptp-dte\00", align 1
@ptp_dte_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ptp-dte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2261
@ptp_dte_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @ptp_dte_suspend, i32 (%struct.device*)* @ptp_dte_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2264
@ptp_dte_caps = internal constant %struct.ptp_clock_info { %struct.module* null, [16 x i8] c"DTE PTP timer\00\00\00", i32 50000000, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.ptp_pin_desc* null, i32 (%struct.ptp_clock_info*, i64)* null, i32 (%struct.ptp_clock_info*, i32)* @ptp_dte_adjfreq, i32 (%struct.ptp_clock_info*, i32)* null, i32 (%struct.ptp_clock_info*, i64)* @ptp_dte_adjtime, i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @ptp_dte_gettime, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)* null, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)* null, i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @ptp_dte_settime, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* @ptp_dte_enable, i32 (%struct.ptp_clock_info*, i32, i32, i32)* null, i64 (%struct.ptp_clock_info*)* null }, align 8, !dbg !2258
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Failed to register ptp clock\0A\00", align 1
@__func__.ptp_dte_probe = private unnamed_addr constant [14 x i8] c"ptp_dte_probe\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ptp clk probe done\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ppb adj too big\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ptp_dte_driver_init163 to i8*), i8* bitcast (void ()* @ptp_dte_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ptp_dte_driver_exit to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_author164, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_description165, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_file166, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license167, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_driver_init() #0 section ".init.text" !dbg !2272 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @ptp_dte_driver, %struct.module* null) #8, !dbg !2275
  ret i32 %call, !dbg !2275
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ptp_dte_driver_exit() #0 section ".exit.text" !dbg !2276 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @ptp_dte_driver) #8, !dbg !2277
  ret void, !dbg !2277
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_probe(%struct.platform_device* %pdev) #2 !dbg !2278 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2279, metadata !DIExpression()), !dbg !2286
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %ptp_dte = alloca %struct.ptp_dte*, align 8
  %dev = alloca %struct.device*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2289, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2293, metadata !DIExpression()), !dbg !2294
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2295
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2296
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2294
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2297
  %call = call i8* @devm_kzalloc(%struct.device* %1, i64 192, i32 3264) #8, !dbg !2298
  %2 = bitcast i8* %call to %struct.ptp_dte*, !dbg !2298
  store %struct.ptp_dte* %2, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2299
  %3 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2300
  %tobool = icmp ne %struct.ptp_dte* %3, null, !dbg !2300
  br i1 %tobool, label %if.end, label %if.then, !dbg !2302

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2303
  br label %return, !dbg !2303

if.end:                                           ; preds = %entry
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2304
  %call2 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %4, i32 0) #8, !dbg !2305
  %5 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2306
  %regs = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %5, i32 0, i32 0, !dbg !2307
  store i8* %call2, i8** %regs, align 8, !dbg !2308
  %6 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2309
  %regs3 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %6, i32 0, i32 0, !dbg !2311
  %7 = load i8*, i8** %regs3, align 8, !dbg !2311
  %call4 = call zeroext i1 @IS_ERR(i8* %7) #8, !dbg !2312
  br i1 %call4, label %if.then5, label %if.end8, !dbg !2313

if.then5:                                         ; preds = %if.end
  %8 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2314
  %regs6 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %8, i32 0, i32 0, !dbg !2315
  %9 = load i8*, i8** %regs6, align 8, !dbg !2315
  %call7 = call i64 @PTR_ERR(i8* %9) #8, !dbg !2316
  %conv = trunc i64 %call7 to i32, !dbg !2316
  store i32 %conv, i32* %retval, align 4, !dbg !2317
  br label %return, !dbg !2317

if.end8:                                          ; preds = %if.end
  br label %do.body, !dbg !2318

do.body:                                          ; preds = %if.end8
  %10 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2319
  %lock = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %10, i32 0, i32 6, !dbg !2319
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2320
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !2321
  %rlock.i = bitcast %union.anon* %12 to %struct.raw_spinlock*, !dbg !2321
  %13 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2319
  %lock10 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %13, i32 0, i32 6, !dbg !2319
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !2319
  %rlock = bitcast %union.anon* %14 to %struct.raw_spinlock*, !dbg !2319
  %15 = bitcast %struct.spinlock* %lock10 to i8*, !dbg !2319
  %16 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !2319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 1 %16, i64 0, i1 false), !dbg !2319
  br label %do.end, !dbg !2319

do.end:                                           ; preds = %do.body
  %17 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2322
  %18 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2323
  %dev11 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %18, i32 0, i32 3, !dbg !2324
  store %struct.device* %17, %struct.device** %dev11, align 8, !dbg !2325
  %19 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2326
  %caps = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %19, i32 0, i32 2, !dbg !2327
  %20 = bitcast %struct.ptp_clock_info* %caps to i8*, !dbg !2328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.ptp_clock_info* @ptp_dte_caps to i8*), i64 144, i1 false), !dbg !2328
  %21 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2329
  %caps12 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %21, i32 0, i32 2, !dbg !2330
  %22 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2331
  %dev13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 3, !dbg !2332
  %call14 = call %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info* %caps12, %struct.device* %dev13) #8, !dbg !2333
  %23 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2334
  %ptp_clk = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %23, i32 0, i32 1, !dbg !2335
  store %struct.ptp_clock* %call14, %struct.ptp_clock** %ptp_clk, align 8, !dbg !2336
  %24 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2337
  %ptp_clk15 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %24, i32 0, i32 1, !dbg !2339
  %25 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp_clk15, align 8, !dbg !2339
  %26 = bitcast %struct.ptp_clock* %25 to i8*, !dbg !2337
  %call16 = call zeroext i1 @IS_ERR(i8* %26) #8, !dbg !2340
  br i1 %call16, label %if.then17, label %if.end21, !dbg !2341

if.then17:                                        ; preds = %do.end
  %27 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2342
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ptp_dte_probe, i64 0, i64 0)) #9, !dbg !2342
  %28 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2344
  %ptp_clk18 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %28, i32 0, i32 1, !dbg !2345
  %29 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp_clk18, align 8, !dbg !2345
  %30 = bitcast %struct.ptp_clock* %29 to i8*, !dbg !2344
  %call19 = call i64 @PTR_ERR(i8* %30) #8, !dbg !2346
  %conv20 = trunc i64 %call19 to i32, !dbg !2346
  store i32 %conv20, i32* %retval, align 4, !dbg !2347
  br label %return, !dbg !2347

if.end21:                                         ; preds = %do.end
  %31 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2348
  %32 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2349
  %33 = bitcast %struct.ptp_dte* %32 to i8*, !dbg !2349
  call void @platform_set_drvdata(%struct.platform_device* %31, i8* %33) #8, !dbg !2350
  %34 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2351
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2351
  store i32 0, i32* %retval, align 4, !dbg !2352
  br label %return, !dbg !2352

return:                                           ; preds = %if.end21, %if.then17, %if.then5, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !2353
  ret i32 %35, !dbg !2353
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_remove(%struct.platform_device* %pdev) #2 !dbg !2354 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %ptp_dte = alloca %struct.ptp_dte*, align 8
  %i = alloca i8, align 1
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte, metadata !2357, metadata !DIExpression()), !dbg !2358
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2359
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #8, !dbg !2360
  %1 = bitcast i8* %call to %struct.ptp_dte*, !dbg !2360
  store %struct.ptp_dte* %1, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2358
  call void @llvm.dbg.declare(metadata i8* %i, metadata !2361, metadata !DIExpression()), !dbg !2362
  %2 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2363
  %ptp_clk = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %2, i32 0, i32 1, !dbg !2364
  %3 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp_clk, align 8, !dbg !2364
  %call1 = call i32 @ptp_clock_unregister(%struct.ptp_clock* %3) #8, !dbg !2365
  store i8 0, i8* %i, align 1, !dbg !2366
  br label %for.cond, !dbg !2368

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8, i8* %i, align 1, !dbg !2369
  %conv = zext i8 %4 to i32, !dbg !2369
  %cmp = icmp slt i32 %conv, 4, !dbg !2371
  br i1 %cmp, label %for.body, label %for.end, !dbg !2372

for.body:                                         ; preds = %for.cond
  %5 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2373
  %regs = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %5, i32 0, i32 0, !dbg !2374
  %6 = load i8*, i8** %regs, align 8, !dbg !2374
  %7 = load i8, i8* %i, align 1, !dbg !2375
  %conv3 = zext i8 %7 to i64, !dbg !2375
  %mul = mul i64 %conv3, 4, !dbg !2376
  %add.ptr = getelementptr i8, i8* %6, i64 %mul, !dbg !2377
  call void @writel(i32 0, i8* %add.ptr) #8, !dbg !2378
  br label %for.inc, !dbg !2378

for.inc:                                          ; preds = %for.body
  %8 = load i8, i8* %i, align 1, !dbg !2379
  %inc = add i8 %8, 1, !dbg !2379
  store i8 %inc, i8* %i, align 1, !dbg !2379
  br label %for.cond, !dbg !2380, !llvm.loop !2381

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !2383
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2384 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2387, metadata !DIExpression()), !dbg !2388
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2389, metadata !DIExpression()), !dbg !2390
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2391, metadata !DIExpression()), !dbg !2392
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2393
  %1 = load i64, i64* %size.addr, align 8, !dbg !2394
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2395
  %or = or i32 %2, 256, !dbg !2396
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !2397
  ret i8* %call, !dbg !2398
}

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2399 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2405
  %1 = ptrtoint i8* %0 to i64, !dbg !2405
  %2 = inttoptr i64 %1 to i8*, !dbg !2405
  %3 = ptrtoint i8* %2 to i64, !dbg !2405
  %cmp = icmp uge i64 %3, -4095, !dbg !2405
  %lnot = xor i1 %cmp, true, !dbg !2405
  %lnot1 = xor i1 %lnot, true, !dbg !2405
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2405
  %conv = sext i32 %lnot.ext to i64, !dbg !2405
  %tobool = icmp ne i64 %conv, 0, !dbg !2405
  ret i1 %tobool, !dbg !2406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2407 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2410, metadata !DIExpression()), !dbg !2411
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2412
  %1 = ptrtoint i8* %0 to i64, !dbg !2413
  ret i64 %1, !dbg !2414
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info*, %struct.device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2415 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2418, metadata !DIExpression()), !dbg !2419
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2420, metadata !DIExpression()), !dbg !2421
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2422
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2423
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2424
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !2425
  ret void, !dbg !2426
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_adjfreq(%struct.ptp_clock_info* %ptp, i32 %ppb) #2 !dbg !2427 {
entry:
  %lock.addr.i57 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i57, metadata !2428, metadata !DIExpression()), !dbg !2432
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2434, metadata !DIExpression()), !dbg !2435
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2279, metadata !DIExpression()), !dbg !2436
  %retval = alloca i32, align 4
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ppb.addr = alloca i32, align 4
  %nco_incr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ptp_dte = alloca %struct.ptp_dte*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_dte*, align 8
  %__x = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__x5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %__x15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  %__dummy39 = alloca i64, align 8
  %__dummy240 = alloca i64, align 8
  %tmp43 = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i32 %ppb, i32* %ppb.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ppb.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.declare(metadata i32* %nco_incr, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2449, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte, metadata !2451, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2453, metadata !DIExpression()), !dbg !2455
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !2455
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !2455
  store i8* %1, i8** %__mptr, align 8, !dbg !2455
  br label %do.body, !dbg !2455

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2456

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2455
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2455
  %3 = bitcast i8* %add.ptr to %struct.ptp_dte*, !dbg !2455
  store %struct.ptp_dte* %3, %struct.ptp_dte** %tmp, align 8, !dbg !2456
  %4 = load %struct.ptp_dte*, %struct.ptp_dte** %tmp, align 8, !dbg !2455
  store %struct.ptp_dte* %4, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2452
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !2458, metadata !DIExpression()), !dbg !2461
  %5 = load i32, i32* %ppb.addr, align 4, !dbg !2461
  store i32 %5, i32* %__x, align 4, !dbg !2461
  %6 = load i32, i32* %__x, align 4, !dbg !2461
  %cmp = icmp slt i32 %6, 0, !dbg !2461
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2461

cond.true:                                        ; preds = %do.end
  %7 = load i32, i32* %__x, align 4, !dbg !2461
  %sub = sub i32 0, %7, !dbg !2461
  br label %cond.end, !dbg !2461

cond.false:                                       ; preds = %do.end
  %8 = load i32, i32* %__x, align 4, !dbg !2461
  br label %cond.end, !dbg !2461

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %8, %cond.false ], !dbg !2461
  store i32 %cond, i32* %tmp1, align 4, !dbg !2461
  %9 = load i32, i32* %tmp1, align 4, !dbg !2461
  %10 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2462
  %caps = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %10, i32 0, i32 2, !dbg !2463
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %caps, i32 0, i32 2, !dbg !2464
  %11 = load i32, i32* %max_adj, align 8, !dbg !2464
  %cmp2 = icmp sgt i32 %9, %11, !dbg !2465
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2466

if.then:                                          ; preds = %cond.end
  %12 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2467
  %dev = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %12, i32 0, i32 3, !dbg !2467
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2467
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !2467
  store i32 -22, i32* %retval, align 4, !dbg !2469
  br label %return, !dbg !2469

if.end:                                           ; preds = %cond.end
  %14 = load i32, i32* %ppb.addr, align 4, !dbg !2470
  %cmp3 = icmp slt i32 %14, 0, !dbg !2472
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2473

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__x5, metadata !2474, metadata !DIExpression()), !dbg !2476
  %15 = load i32, i32* %ppb.addr, align 4, !dbg !2476
  store i32 %15, i32* %__x5, align 4, !dbg !2476
  %16 = load i32, i32* %__x5, align 4, !dbg !2476
  %cmp7 = icmp slt i32 %16, 0, !dbg !2476
  br i1 %cmp7, label %cond.true8, label %cond.false10, !dbg !2476

cond.true8:                                       ; preds = %if.then4
  %17 = load i32, i32* %__x5, align 4, !dbg !2476
  %sub9 = sub i32 0, %17, !dbg !2476
  br label %cond.end11, !dbg !2476

cond.false10:                                     ; preds = %if.then4
  %18 = load i32, i32* %__x5, align 4, !dbg !2476
  br label %cond.end11, !dbg !2476

cond.end11:                                       ; preds = %cond.false10, %cond.true8
  %cond12 = phi i32 [ %sub9, %cond.true8 ], [ %18, %cond.false10 ], !dbg !2476
  store i32 %cond12, i32* %tmp6, align 4, !dbg !2476
  %19 = load i32, i32* %tmp6, align 4, !dbg !2476
  %conv = sext i32 %19 to i64, !dbg !2477
  %mul = mul i64 %conv, 268435456, !dbg !2477
  %add = add i64 %mul, 62500000, !dbg !2477
  %call = call i64 @div64_u64(i64 %add, i64 125000000) #8, !dbg !2477
  %conv13 = trunc i64 %call to i32, !dbg !2477
  %sub14 = sub i32 -2147483648, %conv13, !dbg !2478
  store i32 %sub14, i32* %nco_incr, align 4, !dbg !2479
  br label %if.end30, !dbg !2480

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__x15, metadata !2481, metadata !DIExpression()), !dbg !2483
  %20 = load i32, i32* %ppb.addr, align 4, !dbg !2483
  store i32 %20, i32* %__x15, align 4, !dbg !2483
  %21 = load i32, i32* %__x15, align 4, !dbg !2483
  %cmp17 = icmp slt i32 %21, 0, !dbg !2483
  br i1 %cmp17, label %cond.true19, label %cond.false21, !dbg !2483

cond.true19:                                      ; preds = %if.else
  %22 = load i32, i32* %__x15, align 4, !dbg !2483
  %sub20 = sub i32 0, %22, !dbg !2483
  br label %cond.end22, !dbg !2483

cond.false21:                                     ; preds = %if.else
  %23 = load i32, i32* %__x15, align 4, !dbg !2483
  br label %cond.end22, !dbg !2483

cond.end22:                                       ; preds = %cond.false21, %cond.true19
  %cond23 = phi i32 [ %sub20, %cond.true19 ], [ %23, %cond.false21 ], !dbg !2483
  store i32 %cond23, i32* %tmp16, align 4, !dbg !2483
  %24 = load i32, i32* %tmp16, align 4, !dbg !2483
  %conv24 = sext i32 %24 to i64, !dbg !2484
  %mul25 = mul i64 %conv24, 268435456, !dbg !2484
  %add26 = add i64 %mul25, 62500000, !dbg !2484
  %call27 = call i64 @div64_u64(i64 %add26, i64 125000000) #8, !dbg !2484
  %conv28 = trunc i64 %call27 to i32, !dbg !2484
  %add29 = add i32 -2147483648, %conv28, !dbg !2485
  store i32 %add29, i32* %nco_incr, align 4, !dbg !2486
  br label %if.end30

if.end30:                                         ; preds = %cond.end22, %cond.end11
  br label %do.body31, !dbg !2487

do.body31:                                        ; preds = %if.end30
  br label %do.body32, !dbg !2488

do.body32:                                        ; preds = %do.body31
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2489, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2492, metadata !DIExpression()), !dbg !2491
  %cmp33 = icmp eq i64* %__dummy, %__dummy2, !dbg !2491
  %conv34 = zext i1 %cmp33 to i32, !dbg !2491
  store i32 1, i32* %tmp35, align 4, !dbg !2491
  %25 = load i32, i32* %tmp35, align 4, !dbg !2491
  br label %do.body36, !dbg !2493

do.body36:                                        ; preds = %do.body32
  br label %do.body37, !dbg !2494

do.body37:                                        ; preds = %do.body36
  br label %do.body38, !dbg !2495

do.body38:                                        ; preds = %do.body37
  call void @llvm.dbg.declare(metadata i64* %__dummy39, metadata !2497, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.declare(metadata i64* %__dummy240, metadata !2501, metadata !DIExpression()), !dbg !2500
  %cmp41 = icmp eq i64* %__dummy39, %__dummy240, !dbg !2500
  %conv42 = zext i1 %cmp41 to i32, !dbg !2500
  store i32 1, i32* %tmp43, align 4, !dbg !2500
  %26 = load i32, i32* %tmp43, align 4, !dbg !2500
  %call44 = call i64 @arch_local_irq_save() #8, !dbg !2502
  store i64 %call44, i64* %flags, align 8, !dbg !2502
  br label %do.end45, !dbg !2502

do.end45:                                         ; preds = %do.body38
  br label %do.end46, !dbg !2495

do.end46:                                         ; preds = %do.end45
  br label %do.body47, !dbg !2494

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2503, !srcloc !2504
  br label %do.body48, !dbg !2503

do.body48:                                        ; preds = %do.body47
  %27 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2505
  %lock = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %27, i32 0, i32 6, !dbg !2505
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2506
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !2507
  %rlock.i = bitcast %union.anon* %29 to %struct.raw_spinlock*, !dbg !2507
  br label %do.end50, !dbg !2505

do.end50:                                         ; preds = %do.body48
  br label %do.end51, !dbg !2503

do.end51:                                         ; preds = %do.end50
  br label %do.end52, !dbg !2494

do.end52:                                         ; preds = %do.end51
  br label %do.end53, !dbg !2493

do.end53:                                         ; preds = %do.end52
  br label %do.end54, !dbg !2488

do.end54:                                         ; preds = %do.end53
  %30 = load i32, i32* %nco_incr, align 4, !dbg !2508
  %31 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2509
  %regs = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %31, i32 0, i32 0, !dbg !2510
  %32 = load i8*, i8** %regs, align 8, !dbg !2510
  %add.ptr55 = getelementptr i8, i8* %32, i64 12, !dbg !2511
  call void @writel(i32 %30, i8* %add.ptr55) #8, !dbg !2512
  %33 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2513
  %lock56 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %33, i32 0, i32 6, !dbg !2514
  %34 = load i64, i64* %flags, align 8, !dbg !2515
  store %struct.spinlock* %lock56, %struct.spinlock** %lock.addr.i57, align 8
  store i64 %34, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !262, metadata !2516, metadata !DIExpression()) #7, !dbg !2519
  call void @llvm.dbg.declare(metadata !262, metadata !2520, metadata !DIExpression()) #7, !dbg !2519
  store i32 1, i32* %tmp.i, align 4, !dbg !2519
  %35 = load i32, i32* %tmp.i, align 4, !dbg !2519
  call void @llvm.dbg.declare(metadata !262, metadata !2521, metadata !DIExpression()) #7, !dbg !2526
  call void @llvm.dbg.declare(metadata !262, metadata !2527, metadata !DIExpression()) #7, !dbg !2526
  store i32 1, i32* %tmp8.i, align 4, !dbg !2526
  %36 = load i32, i32* %tmp8.i, align 4, !dbg !2526
  %37 = load i64, i64* %flags.addr.i, align 8, !dbg !2528
  call void @arch_local_irq_restore(i64 %37) #10, !dbg !2528
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2529, !srcloc !2531
  %38 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i57, align 8, !dbg !2532
  %39 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %38, i32 0, i32 0, !dbg !2532
  %rlock.i58 = bitcast %union.anon* %39 to %struct.raw_spinlock*, !dbg !2532
  store i32 0, i32* %retval, align 4, !dbg !2534
  br label %return, !dbg !2534

return:                                           ; preds = %do.end54, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !2535
  ret i32 %40, !dbg !2535
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_adjtime(%struct.ptp_clock_info* %ptp, i64 %delta) #2 !dbg !2536 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !2428, metadata !DIExpression()), !dbg !2537
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2434, metadata !DIExpression()), !dbg !2539
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2279, metadata !DIExpression()), !dbg !2540
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %delta.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %ptp_dte = alloca %struct.ptp_dte*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_dte*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  store i64 %delta, i64* %delta.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.addr, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2555, metadata !DIExpression()), !dbg !2557
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !2557
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !2557
  store i8* %1, i8** %__mptr, align 8, !dbg !2557
  br label %do.body, !dbg !2557

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2558

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2557
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2557
  %3 = bitcast i8* %add.ptr to %struct.ptp_dte*, !dbg !2557
  store %struct.ptp_dte* %3, %struct.ptp_dte** %tmp, align 8, !dbg !2558
  %4 = load %struct.ptp_dte*, %struct.ptp_dte** %tmp, align 8, !dbg !2557
  store %struct.ptp_dte* %4, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2554
  br label %do.body1, !dbg !2560

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2561

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2562, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2565, metadata !DIExpression()), !dbg !2564
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2564
  %conv = zext i1 %cmp to i32, !dbg !2564
  store i32 1, i32* %tmp3, align 4, !dbg !2564
  %5 = load i32, i32* %tmp3, align 4, !dbg !2564
  br label %do.body4, !dbg !2566

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !2567

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !2568

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !2574, metadata !DIExpression()), !dbg !2573
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !2573
  %conv10 = zext i1 %cmp9 to i32, !dbg !2573
  store i32 1, i32* %tmp11, align 4, !dbg !2573
  %6 = load i32, i32* %tmp11, align 4, !dbg !2573
  %call = call i64 @arch_local_irq_save() #8, !dbg !2575
  store i64 %call, i64* %flags, align 8, !dbg !2575
  br label %do.end12, !dbg !2575

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !2568

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !2567

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2576, !srcloc !2577
  br label %do.body15, !dbg !2576

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2578
  %lock = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %7, i32 0, i32 6, !dbg !2578
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2579
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2580
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2580
  br label %do.end17, !dbg !2578

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !2576

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2567

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2566

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2561

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2581
  %11 = load i64, i64* %delta.addr, align 8, !dbg !2582
  call void @dte_write_nco_delta(%struct.ptp_dte* %10, i64 %11) #8, !dbg !2583
  %12 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2584
  %lock22 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %12, i32 0, i32 6, !dbg !2585
  %13 = load i64, i64* %flags, align 8, !dbg !2586
  store %struct.spinlock* %lock22, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %13, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !262, metadata !2516, metadata !DIExpression()) #7, !dbg !2587
  call void @llvm.dbg.declare(metadata !262, metadata !2520, metadata !DIExpression()) #7, !dbg !2587
  store i32 1, i32* %tmp.i, align 4, !dbg !2587
  %14 = load i32, i32* %tmp.i, align 4, !dbg !2587
  call void @llvm.dbg.declare(metadata !262, metadata !2521, metadata !DIExpression()) #7, !dbg !2588
  call void @llvm.dbg.declare(metadata !262, metadata !2527, metadata !DIExpression()) #7, !dbg !2588
  store i32 1, i32* %tmp8.i, align 4, !dbg !2588
  %15 = load i32, i32* %tmp8.i, align 4, !dbg !2588
  %16 = load i64, i64* %flags.addr.i, align 8, !dbg !2589
  call void @arch_local_irq_restore(i64 %16) #10, !dbg !2589
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2590, !srcloc !2531
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !2591
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !2591
  %rlock.i24 = bitcast %union.anon* %18 to %struct.raw_spinlock*, !dbg !2591
  ret i32 0, !dbg !2592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_gettime(%struct.ptp_clock_info* %ptp, %struct.timespec64* %ts) #2 !dbg !2593 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !2428, metadata !DIExpression()), !dbg !2594
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2434, metadata !DIExpression()), !dbg !2596
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2279, metadata !DIExpression()), !dbg !2597
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec64*, align 8
  %flags = alloca i64, align 8
  %ptp_dte = alloca %struct.ptp_dte*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_dte*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %tmp22 = alloca %struct.timespec64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2604, metadata !DIExpression()), !dbg !2605
  store %struct.timespec64* %ts, %struct.timespec64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %ts.addr, metadata !2606, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2612, metadata !DIExpression()), !dbg !2614
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !2614
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !2614
  store i8* %1, i8** %__mptr, align 8, !dbg !2614
  br label %do.body, !dbg !2614

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2615

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2614
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2614
  %3 = bitcast i8* %add.ptr to %struct.ptp_dte*, !dbg !2614
  store %struct.ptp_dte* %3, %struct.ptp_dte** %tmp, align 8, !dbg !2615
  %4 = load %struct.ptp_dte*, %struct.ptp_dte** %tmp, align 8, !dbg !2614
  store %struct.ptp_dte* %4, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2611
  br label %do.body1, !dbg !2617

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2618

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2619, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2622, metadata !DIExpression()), !dbg !2621
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2621
  %conv = zext i1 %cmp to i32, !dbg !2621
  store i32 1, i32* %tmp3, align 4, !dbg !2621
  %5 = load i32, i32* %tmp3, align 4, !dbg !2621
  br label %do.body4, !dbg !2623

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !2624

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !2625

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !2631, metadata !DIExpression()), !dbg !2630
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !2630
  %conv10 = zext i1 %cmp9 to i32, !dbg !2630
  store i32 1, i32* %tmp11, align 4, !dbg !2630
  %6 = load i32, i32* %tmp11, align 4, !dbg !2630
  %call = call i64 @arch_local_irq_save() #8, !dbg !2632
  store i64 %call, i64* %flags, align 8, !dbg !2632
  br label %do.end12, !dbg !2632

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !2625

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !2624

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2633, !srcloc !2634
  br label %do.body15, !dbg !2633

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2635
  %lock = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %7, i32 0, i32 6, !dbg !2635
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2636
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2637
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2637
  br label %do.end17, !dbg !2635

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !2633

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2624

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2623

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2618

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !2638
  %11 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2639
  %call23 = call i64 @dte_read_nco_with_ovf(%struct.ptp_dte* %11) #8, !dbg !2640
  %call24 = call { i64, i64 } @ns_to_timespec64(i64 %call23) #8, !dbg !2641
  %12 = bitcast %struct.timespec64* %tmp22 to { i64, i64 }*, !dbg !2641
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0, !dbg !2641
  %14 = extractvalue { i64, i64 } %call24, 0, !dbg !2641
  store i64 %14, i64* %13, align 8, !dbg !2641
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1, !dbg !2641
  %16 = extractvalue { i64, i64 } %call24, 1, !dbg !2641
  store i64 %16, i64* %15, align 8, !dbg !2641
  %17 = bitcast %struct.timespec64* %10 to i8*, !dbg !2641
  %18 = bitcast %struct.timespec64* %tmp22 to i8*, !dbg !2641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false), !dbg !2641
  %19 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2642
  %lock25 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %19, i32 0, i32 6, !dbg !2643
  %20 = load i64, i64* %flags, align 8, !dbg !2644
  store %struct.spinlock* %lock25, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %20, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !262, metadata !2516, metadata !DIExpression()) #7, !dbg !2645
  call void @llvm.dbg.declare(metadata !262, metadata !2520, metadata !DIExpression()) #7, !dbg !2645
  store i32 1, i32* %tmp.i, align 4, !dbg !2645
  %21 = load i32, i32* %tmp.i, align 4, !dbg !2645
  call void @llvm.dbg.declare(metadata !262, metadata !2521, metadata !DIExpression()) #7, !dbg !2646
  call void @llvm.dbg.declare(metadata !262, metadata !2527, metadata !DIExpression()) #7, !dbg !2646
  store i32 1, i32* %tmp8.i, align 4, !dbg !2646
  %22 = load i32, i32* %tmp8.i, align 4, !dbg !2646
  %23 = load i64, i64* %flags.addr.i, align 8, !dbg !2647
  call void @arch_local_irq_restore(i64 %23) #10, !dbg !2647
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2648, !srcloc !2531
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !2649
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !2649
  %rlock.i27 = bitcast %union.anon* %25 to %struct.raw_spinlock*, !dbg !2649
  ret i32 0, !dbg !2650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_settime(%struct.ptp_clock_info* %ptp, %struct.timespec64* %ts) #2 !dbg !2651 {
entry:
  %lock.addr.i28 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i28, metadata !2428, metadata !DIExpression()), !dbg !2652
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2434, metadata !DIExpression()), !dbg !2654
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2279, metadata !DIExpression()), !dbg !2655
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec64*, align 8
  %flags = alloca i64, align 8
  %ptp_dte = alloca %struct.ptp_dte*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_dte*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2662, metadata !DIExpression()), !dbg !2663
  store %struct.timespec64* %ts, %struct.timespec64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %ts.addr, metadata !2664, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2666, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2670, metadata !DIExpression()), !dbg !2672
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !2672
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !2672
  store i8* %1, i8** %__mptr, align 8, !dbg !2672
  br label %do.body, !dbg !2672

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2673

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2672
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2672
  %3 = bitcast i8* %add.ptr to %struct.ptp_dte*, !dbg !2672
  store %struct.ptp_dte* %3, %struct.ptp_dte** %tmp, align 8, !dbg !2673
  %4 = load %struct.ptp_dte*, %struct.ptp_dte** %tmp, align 8, !dbg !2672
  store %struct.ptp_dte* %4, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2669
  br label %do.body1, !dbg !2675

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2676

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2680, metadata !DIExpression()), !dbg !2679
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2679
  %conv = zext i1 %cmp to i32, !dbg !2679
  store i32 1, i32* %tmp3, align 4, !dbg !2679
  %5 = load i32, i32* %tmp3, align 4, !dbg !2679
  br label %do.body4, !dbg !2681

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !2682

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !2683

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !2685, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !2689, metadata !DIExpression()), !dbg !2688
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !2688
  %conv10 = zext i1 %cmp9 to i32, !dbg !2688
  store i32 1, i32* %tmp11, align 4, !dbg !2688
  %6 = load i32, i32* %tmp11, align 4, !dbg !2688
  %call = call i64 @arch_local_irq_save() #8, !dbg !2690
  store i64 %call, i64* %flags, align 8, !dbg !2690
  br label %do.end12, !dbg !2690

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !2683

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !2682

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2691, !srcloc !2692
  br label %do.body15, !dbg !2691

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2693
  %lock = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %7, i32 0, i32 6, !dbg !2693
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2694
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2695
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2695
  br label %do.end17, !dbg !2693

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !2691

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2682

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2681

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2676

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2696
  %regs = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %10, i32 0, i32 0, !dbg !2697
  %11 = load i8*, i8** %regs, align 8, !dbg !2697
  %add.ptr22 = getelementptr i8, i8* %11, i64 12, !dbg !2698
  call void @writel(i32 0, i8* %add.ptr22) #8, !dbg !2699
  %12 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2700
  %regs23 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %12, i32 0, i32 0, !dbg !2701
  %13 = load i8*, i8** %regs23, align 8, !dbg !2701
  %14 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !2702
  %call24 = call i64 @timespec64_to_ns(%struct.timespec64* %14) #8, !dbg !2703
  call void @dte_write_nco(i8* %13, i64 %call24) #8, !dbg !2704
  %15 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2705
  %ts_ovf_last = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %15, i32 0, i32 4, !dbg !2706
  store i32 0, i32* %ts_ovf_last, align 8, !dbg !2707
  %16 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2708
  %ts_wrap_cnt = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %16, i32 0, i32 5, !dbg !2709
  store i32 0, i32* %ts_wrap_cnt, align 4, !dbg !2710
  %17 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2711
  %regs25 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %17, i32 0, i32 0, !dbg !2712
  %18 = load i8*, i8** %regs25, align 8, !dbg !2712
  %add.ptr26 = getelementptr i8, i8* %18, i64 12, !dbg !2713
  call void @writel(i32 -2147483648, i8* %add.ptr26) #8, !dbg !2714
  %19 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !2715
  %lock27 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %19, i32 0, i32 6, !dbg !2716
  %20 = load i64, i64* %flags, align 8, !dbg !2717
  store %struct.spinlock* %lock27, %struct.spinlock** %lock.addr.i28, align 8
  store i64 %20, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !262, metadata !2516, metadata !DIExpression()) #7, !dbg !2718
  call void @llvm.dbg.declare(metadata !262, metadata !2520, metadata !DIExpression()) #7, !dbg !2718
  store i32 1, i32* %tmp.i, align 4, !dbg !2718
  %21 = load i32, i32* %tmp.i, align 4, !dbg !2718
  call void @llvm.dbg.declare(metadata !262, metadata !2521, metadata !DIExpression()) #7, !dbg !2719
  call void @llvm.dbg.declare(metadata !262, metadata !2527, metadata !DIExpression()) #7, !dbg !2719
  store i32 1, i32* %tmp8.i, align 4, !dbg !2719
  %22 = load i32, i32* %tmp8.i, align 4, !dbg !2719
  %23 = load i64, i64* %flags.addr.i, align 8, !dbg !2720
  call void @arch_local_irq_restore(i64 %23) #10, !dbg !2720
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2721, !srcloc !2531
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i28, align 8, !dbg !2722
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !2722
  %rlock.i29 = bitcast %union.anon* %25 to %struct.raw_spinlock*, !dbg !2722
  ret i32 0, !dbg !2723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_enable(%struct.ptp_clock_info* %ptp, %struct.ptp_clock_request* %rq, i32 %on) #2 !dbg !2724 {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %rq.addr = alloca %struct.ptp_clock_request*, align 8
  %on.addr = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  store %struct.ptp_clock_request* %rq, %struct.ptp_clock_request** %rq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_request** %rq.addr, metadata !2727, metadata !DIExpression()), !dbg !2728
  store i32 %on, i32* %on.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %on.addr, metadata !2729, metadata !DIExpression()), !dbg !2730
  ret i32 -95, !dbg !2731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div64_u64(i64 %dividend, i64 %divisor) #2 !dbg !2732 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !2736, metadata !DIExpression()), !dbg !2737
  store i64 %divisor, i64* %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %divisor.addr, metadata !2738, metadata !DIExpression()), !dbg !2739
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !2740
  %1 = load i64, i64* %divisor.addr, align 8, !dbg !2741
  %div = udiv i64 %0, %1, !dbg !2742
  ret i64 %div, !dbg !2743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !2744 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2748, metadata !DIExpression()), !dbg !2749
  %call = call i64 @arch_local_save_flags() #8, !dbg !2750
  store i64 %call, i64* %f, align 8, !dbg !2751
  call void @arch_local_irq_disable() #8, !dbg !2752
  %0 = load i64, i64* %f, align 8, !dbg !2753
  ret i64 %0, !dbg !2754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !2755 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2761, metadata !DIExpression()), !dbg !2762
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2763, metadata !DIExpression()), !dbg !2762
  %0 = load i32, i32* %val.addr, align 4, !dbg !2762
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2762
  %2 = bitcast i8* %1 to i32*, !dbg !2762
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !2762, !srcloc !2764
  ret void, !dbg !2762
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !2765 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2766, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2769, metadata !DIExpression()), !dbg !2768
  %0 = load i64, i64* %__edi, align 8, !dbg !2768
  store i64 %0, i64* %__edi, align 8, !dbg !2768
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2770, metadata !DIExpression()), !dbg !2768
  %1 = load i64, i64* %__esi, align 8, !dbg !2768
  store i64 %1, i64* %__esi, align 8, !dbg !2768
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2771, metadata !DIExpression()), !dbg !2768
  %2 = load i64, i64* %__edx, align 8, !dbg !2768
  store i64 %2, i64* %__edx, align 8, !dbg !2768
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2772, metadata !DIExpression()), !dbg !2768
  %3 = load i64, i64* %__ecx, align 8, !dbg !2768
  store i64 %3, i64* %__ecx, align 8, !dbg !2768
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2773, metadata !DIExpression()), !dbg !2768
  %4 = load i64, i64* %__eax, align 8, !dbg !2768
  store i64 %4, i64* %__eax, align 8, !dbg !2768
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2768
  %6 = call i64 @llvm.read_register.i64(metadata !2266), !dbg !2774
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !2774, !srcloc !2777
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2774
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2774
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2774
  call void @llvm.write_register.i64(metadata !2266, i64 %asmresult1), !dbg !2774
  %8 = load i64, i64* %__eax, align 8, !dbg !2774
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2778, metadata !DIExpression()), !dbg !2780
  store i64 -1, i64* %__mask, align 8, !dbg !2780
  %9 = load i64, i64* %__mask, align 8, !dbg !2780
  store i64 %9, i64* %tmp, align 8, !dbg !2780
  %10 = load i64, i64* %tmp, align 8, !dbg !2780
  %and = and i64 %8, %10, !dbg !2774
  store i64 %and, i64* %__ret, align 8, !dbg !2774
  %11 = load i64, i64* %__ret, align 8, !dbg !2768
  store i64 %11, i64* %tmp2, align 8, !dbg !2781
  %12 = load i64, i64* %tmp2, align 8, !dbg !2768
  ret i64 %12, !dbg !2782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !2783 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2784, metadata !DIExpression()), !dbg !2786
  %0 = load i64, i64* %__edi, align 8, !dbg !2786
  store i64 %0, i64* %__edi, align 8, !dbg !2786
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2787, metadata !DIExpression()), !dbg !2786
  %1 = load i64, i64* %__esi, align 8, !dbg !2786
  store i64 %1, i64* %__esi, align 8, !dbg !2786
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2788, metadata !DIExpression()), !dbg !2786
  %2 = load i64, i64* %__edx, align 8, !dbg !2786
  store i64 %2, i64* %__edx, align 8, !dbg !2786
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2789, metadata !DIExpression()), !dbg !2786
  %3 = load i64, i64* %__ecx, align 8, !dbg !2786
  store i64 %3, i64* %__ecx, align 8, !dbg !2786
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2790, metadata !DIExpression()), !dbg !2786
  %4 = load i64, i64* %__eax, align 8, !dbg !2786
  store i64 %4, i64* %__eax, align 8, !dbg !2786
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !2786
  %6 = call i64 @llvm.read_register.i64(metadata !2266), !dbg !2786
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !2786, !srcloc !2791
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2786
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2786
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2786
  call void @llvm.write_register.i64(metadata !2266, i64 %asmresult1), !dbg !2786
  ret void, !dbg !2792
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !2793 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !2796, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2798, metadata !DIExpression()), !dbg !2800
  %0 = load i64, i64* %__edi, align 8, !dbg !2800
  store i64 %0, i64* %__edi, align 8, !dbg !2800
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2801, metadata !DIExpression()), !dbg !2800
  %1 = load i64, i64* %__esi, align 8, !dbg !2800
  store i64 %1, i64* %__esi, align 8, !dbg !2800
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2802, metadata !DIExpression()), !dbg !2800
  %2 = load i64, i64* %__edx, align 8, !dbg !2800
  store i64 %2, i64* %__edx, align 8, !dbg !2800
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2803, metadata !DIExpression()), !dbg !2800
  %3 = load i64, i64* %__ecx, align 8, !dbg !2800
  store i64 %3, i64* %__ecx, align 8, !dbg !2800
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2804, metadata !DIExpression()), !dbg !2800
  %4 = load i64, i64* %__eax, align 8, !dbg !2800
  store i64 %4, i64* %__eax, align 8, !dbg !2800
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !2800
  %6 = call i64 @llvm.read_register.i64(metadata !2266), !dbg !2800
  %7 = load i64, i64* %f.addr, align 8, !dbg !2800
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !2800, !srcloc !2805
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !2800
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !2800
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2800
  call void @llvm.write_register.i64(metadata !2266, i64 %asmresult1), !dbg !2800
  ret void, !dbg !2806
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dte_write_nco_delta(%struct.ptp_dte* %ptp_dte, i64 %delta) #2 !dbg !2807 {
entry:
  %ptp_dte.addr = alloca %struct.ptp_dte*, align 8
  %delta.addr = alloca i64, align 8
  %ns = alloca i64, align 8
  %__x = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.ptp_dte* %ptp_dte, %struct.ptp_dte** %ptp_dte.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte.addr, metadata !2810, metadata !DIExpression()), !dbg !2811
  store i64 %delta, i64* %delta.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.addr, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !2814, metadata !DIExpression()), !dbg !2815
  %0 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2816
  %regs = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %0, i32 0, i32 0, !dbg !2817
  %1 = load i8*, i8** %regs, align 8, !dbg !2817
  %call = call i64 @dte_read_nco(i8* %1) #8, !dbg !2818
  store i64 %call, i64* %ns, align 8, !dbg !2819
  %2 = load i64, i64* %delta.addr, align 8, !dbg !2820
  %cmp = icmp slt i64 %2, 0, !dbg !2822
  br i1 %cmp, label %land.lhs.true, label %if.else6, !dbg !2823

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !2824, metadata !DIExpression()), !dbg !2826
  %3 = load i64, i64* %delta.addr, align 8, !dbg !2826
  store i64 %3, i64* %__x, align 8, !dbg !2826
  %4 = load i64, i64* %__x, align 8, !dbg !2826
  %cmp1 = icmp slt i64 %4, 0, !dbg !2826
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2826

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* %__x, align 8, !dbg !2826
  %sub = sub i64 0, %5, !dbg !2826
  br label %cond.end, !dbg !2826

cond.false:                                       ; preds = %land.lhs.true
  %6 = load i64, i64* %__x, align 8, !dbg !2826
  br label %cond.end, !dbg !2826

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %6, %cond.false ], !dbg !2826
  store i64 %cond, i64* %tmp, align 8, !dbg !2826
  %7 = load i64, i64* %tmp, align 8, !dbg !2826
  %8 = load i64, i64* %ns, align 8, !dbg !2827
  %cmp2 = icmp sgt i64 %7, %8, !dbg !2828
  br i1 %cmp2, label %if.then, label %if.else6, !dbg !2829

if.then:                                          ; preds = %cond.end
  %9 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2830
  %ts_wrap_cnt = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %9, i32 0, i32 5, !dbg !2833
  %10 = load i32, i32* %ts_wrap_cnt, align 4, !dbg !2833
  %tobool = icmp ne i32 %10, 0, !dbg !2830
  br i1 %tobool, label %if.then3, label %if.else, !dbg !2834

if.then3:                                         ; preds = %if.then
  %11 = load i64, i64* %delta.addr, align 8, !dbg !2835
  %add = add i64 17592186044415, %11, !dbg !2837
  %12 = load i64, i64* %ns, align 8, !dbg !2838
  %add4 = add i64 %12, %add, !dbg !2838
  store i64 %add4, i64* %ns, align 8, !dbg !2838
  %13 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2839
  %ts_wrap_cnt5 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %13, i32 0, i32 5, !dbg !2840
  %14 = load i32, i32* %ts_wrap_cnt5, align 4, !dbg !2841
  %dec = add i32 %14, -1, !dbg !2841
  store i32 %dec, i32* %ts_wrap_cnt5, align 4, !dbg !2841
  br label %if.end, !dbg !2842

if.else:                                          ; preds = %if.then
  store i64 0, i64* %ns, align 8, !dbg !2843
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end13, !dbg !2845

if.else6:                                         ; preds = %cond.end, %entry
  %15 = load i64, i64* %delta.addr, align 8, !dbg !2846
  %16 = load i64, i64* %ns, align 8, !dbg !2848
  %add7 = add i64 %16, %15, !dbg !2848
  store i64 %add7, i64* %ns, align 8, !dbg !2848
  %17 = load i64, i64* %ns, align 8, !dbg !2849
  %cmp8 = icmp sgt i64 %17, 17592186044415, !dbg !2851
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !2852

if.then9:                                         ; preds = %if.else6
  %18 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2853
  %ts_wrap_cnt10 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %18, i32 0, i32 5, !dbg !2855
  %19 = load i32, i32* %ts_wrap_cnt10, align 4, !dbg !2856
  %inc = add i32 %19, 1, !dbg !2856
  store i32 %inc, i32* %ts_wrap_cnt10, align 4, !dbg !2856
  %20 = load i64, i64* %ns, align 8, !dbg !2857
  %sub11 = sub i64 %20, 17592186044415, !dbg !2857
  store i64 %sub11, i64* %ns, align 8, !dbg !2857
  br label %if.end12, !dbg !2858

if.end12:                                         ; preds = %if.then9, %if.else6
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %21 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2859
  %regs14 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %21, i32 0, i32 0, !dbg !2860
  %22 = load i8*, i8** %regs14, align 8, !dbg !2860
  %23 = load i64, i64* %ns, align 8, !dbg !2861
  call void @dte_write_nco(i8* %22, i64 %23) #8, !dbg !2862
  %24 = load i64, i64* %ns, align 8, !dbg !2863
  %shr = ashr i64 %24, 32, !dbg !2864
  %and = and i64 %shr, 4095, !dbg !2865
  %conv = trunc i64 %and to i32, !dbg !2866
  %25 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2867
  %ts_ovf_last = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %25, i32 0, i32 4, !dbg !2868
  store i32 %conv, i32* %ts_ovf_last, align 8, !dbg !2869
  ret void, !dbg !2870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @dte_read_nco(i8* %regs) #2 !dbg !2871 {
entry:
  %regs.addr = alloca i8*, align 8
  %sum2 = alloca i32, align 4
  %sum3 = alloca i32, align 4
  %ns = alloca i64, align 8
  store i8* %regs, i8** %regs.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regs.addr, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.declare(metadata i32* %sum2, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata i32* %sum3, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !2880, metadata !DIExpression()), !dbg !2881
  %0 = load i8*, i8** %regs.addr, align 8, !dbg !2882
  %add.ptr = getelementptr i8, i8* %0, i64 8, !dbg !2883
  %call = call i32 @readl(i8* %add.ptr) #8, !dbg !2884
  %and = and i32 %call, 255, !dbg !2885
  store i32 %and, i32* %sum3, align 4, !dbg !2886
  %1 = load i8*, i8** %regs.addr, align 8, !dbg !2887
  %add.ptr1 = getelementptr i8, i8* %1, i64 4, !dbg !2888
  %call2 = call i32 @readl(i8* %add.ptr1) #8, !dbg !2889
  store i32 %call2, i32* %sum2, align 4, !dbg !2890
  %2 = load i32, i32* %sum3, align 4, !dbg !2891
  %conv = zext i32 %2 to i64, !dbg !2892
  %shl = shl i64 %conv, 36, !dbg !2893
  %3 = load i32, i32* %sum2, align 4, !dbg !2894
  %conv3 = zext i32 %3 to i64, !dbg !2895
  %shl4 = shl i64 %conv3, 4, !dbg !2896
  %or = or i64 %shl, %shl4, !dbg !2897
  store i64 %or, i64* %ns, align 8, !dbg !2898
  %4 = load i64, i64* %ns, align 8, !dbg !2899
  ret i64 %4, !dbg !2900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dte_write_nco(i8* %regs, i64 %ns) #2 !dbg !2901 {
entry:
  %regs.addr = alloca i8*, align 8
  %ns.addr = alloca i64, align 8
  %sum2 = alloca i32, align 4
  %sum3 = alloca i32, align 4
  store i8* %regs, i8** %regs.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regs.addr, metadata !2904, metadata !DIExpression()), !dbg !2905
  store i64 %ns, i64* %ns.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ns.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.declare(metadata i32* %sum2, metadata !2908, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.declare(metadata i32* %sum3, metadata !2910, metadata !DIExpression()), !dbg !2911
  %0 = load i64, i64* %ns.addr, align 8, !dbg !2912
  %shr = ashr i64 %0, 4, !dbg !2913
  %and = and i64 %shr, 4294967295, !dbg !2914
  %conv = trunc i64 %and to i32, !dbg !2915
  store i32 %conv, i32* %sum2, align 4, !dbg !2916
  %1 = load i32, i32* %sum2, align 4, !dbg !2917
  %cmp = icmp ne i32 %1, -1, !dbg !2919
  br i1 %cmp, label %if.then, label %if.end, !dbg !2920

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %sum2, align 4, !dbg !2921
  %inc = add i32 %2, 1, !dbg !2921
  store i32 %inc, i32* %sum2, align 4, !dbg !2921
  br label %if.end, !dbg !2922

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %ns.addr, align 8, !dbg !2923
  %shr2 = ashr i64 %3, 36, !dbg !2924
  %and3 = and i64 %shr2, 255, !dbg !2925
  %shl = shl i64 %and3, 8, !dbg !2926
  %conv4 = trunc i64 %shl to i32, !dbg !2927
  store i32 %conv4, i32* %sum3, align 4, !dbg !2928
  %4 = load i8*, i8** %regs.addr, align 8, !dbg !2929
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !2930
  call void @writel(i32 0, i8* %add.ptr) #8, !dbg !2931
  %5 = load i32, i32* %sum2, align 4, !dbg !2932
  %6 = load i8*, i8** %regs.addr, align 8, !dbg !2933
  %add.ptr5 = getelementptr i8, i8* %6, i64 4, !dbg !2934
  call void @writel(i32 %5, i8* %add.ptr5) #8, !dbg !2935
  %7 = load i32, i32* %sum3, align 4, !dbg !2936
  %8 = load i8*, i8** %regs.addr, align 8, !dbg !2937
  %add.ptr6 = getelementptr i8, i8* %8, i64 8, !dbg !2938
  call void @writel(i32 %7, i8* %add.ptr6) #8, !dbg !2939
  ret void, !dbg !2940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !2941 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2948, metadata !DIExpression()), !dbg !2947
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2947
  %1 = bitcast i8* %0 to i32*, !dbg !2947
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !2947, !srcloc !2949
  store i32 %2, i32* %ret, align 4, !dbg !2947
  %3 = load i32, i32* %ret, align 4, !dbg !2947
  ret i32 %3, !dbg !2947
}

; Function Attrs: noredzone
declare dso_local { i64, i64 } @ns_to_timespec64(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @dte_read_nco_with_ovf(%struct.ptp_dte* %ptp_dte) #2 !dbg !2950 {
entry:
  %ptp_dte.addr = alloca %struct.ptp_dte*, align 8
  %ts_ovf = alloca i32, align 4
  %ns = alloca i64, align 8
  store %struct.ptp_dte* %ptp_dte, %struct.ptp_dte** %ptp_dte.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.declare(metadata i32* %ts_ovf, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !2957, metadata !DIExpression()), !dbg !2958
  store i64 0, i64* %ns, align 8, !dbg !2958
  %0 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2959
  %regs = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %0, i32 0, i32 0, !dbg !2960
  %1 = load i8*, i8** %regs, align 8, !dbg !2960
  %call = call i64 @dte_read_nco(i8* %1) #8, !dbg !2961
  store i64 %call, i64* %ns, align 8, !dbg !2962
  %2 = load i64, i64* %ns, align 8, !dbg !2963
  %shr = ashr i64 %2, 32, !dbg !2964
  %and = and i64 %shr, 4095, !dbg !2965
  %conv = trunc i64 %and to i32, !dbg !2966
  store i32 %conv, i32* %ts_ovf, align 4, !dbg !2967
  %3 = load i32, i32* %ts_ovf, align 4, !dbg !2968
  %4 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2970
  %ts_ovf_last = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %4, i32 0, i32 4, !dbg !2971
  %5 = load i32, i32* %ts_ovf_last, align 8, !dbg !2971
  %cmp = icmp ult i32 %3, %5, !dbg !2972
  br i1 %cmp, label %if.then, label %if.end, !dbg !2973

if.then:                                          ; preds = %entry
  %6 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2974
  %ts_wrap_cnt = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %6, i32 0, i32 5, !dbg !2975
  %7 = load i32, i32* %ts_wrap_cnt, align 4, !dbg !2976
  %inc = add i32 %7, 1, !dbg !2976
  store i32 %inc, i32* %ts_wrap_cnt, align 4, !dbg !2976
  br label %if.end, !dbg !2974

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %ts_ovf, align 4, !dbg !2977
  %9 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2978
  %ts_ovf_last2 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %9, i32 0, i32 4, !dbg !2979
  store i32 %8, i32* %ts_ovf_last2, align 8, !dbg !2980
  %10 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte.addr, align 8, !dbg !2981
  %ts_wrap_cnt3 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %10, i32 0, i32 5, !dbg !2982
  %11 = load i32, i32* %ts_wrap_cnt3, align 4, !dbg !2982
  %conv4 = zext i32 %11 to i64, !dbg !2981
  %mul = mul i64 17592186044416, %conv4, !dbg !2983
  %12 = load i64, i64* %ns, align 8, !dbg !2984
  %add = add i64 %12, %mul, !dbg !2984
  store i64 %add, i64* %ns, align 8, !dbg !2984
  %13 = load i64, i64* %ns, align 8, !dbg !2985
  ret i64 %13, !dbg !2986
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @timespec64_to_ns(%struct.timespec64* %ts) #2 !dbg !2987 {
entry:
  %retval = alloca i64, align 8
  %ts.addr = alloca %struct.timespec64*, align 8
  store %struct.timespec64* %ts, %struct.timespec64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %ts.addr, metadata !2990, metadata !DIExpression()), !dbg !2991
  %0 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !2992
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %0, i32 0, i32 0, !dbg !2994
  %1 = load i64, i64* %tv_sec, align 8, !dbg !2994
  %cmp = icmp uge i64 %1, 9223372036, !dbg !2995
  br i1 %cmp, label %if.then, label %if.end, !dbg !2996

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8, !dbg !2997
  br label %return, !dbg !2997

if.end:                                           ; preds = %entry
  %2 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !2998
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %2, i32 0, i32 0, !dbg !2999
  %3 = load i64, i64* %tv_sec1, align 8, !dbg !2999
  %mul = mul i64 %3, 1000000000, !dbg !3000
  %4 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !3001
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1, !dbg !3002
  %5 = load i64, i64* %tv_nsec, align 8, !dbg !3002
  %add = add i64 %mul, %5, !dbg !3003
  store i64 %add, i64* %retval, align 8, !dbg !3004
  br label %return, !dbg !3004

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !3005
  ret i64 %6, !dbg !3005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3006 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3009, metadata !DIExpression()), !dbg !3010
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3013
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3014
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3015
  store i8* %0, i8** %driver_data, align 8, !dbg !3016
  ret void, !dbg !3017
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3018 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3023, metadata !DIExpression()), !dbg !3024
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3025
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3026
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !3027
  ret i8* %call, !dbg !3028
}

; Function Attrs: noredzone
declare dso_local i32 @ptp_clock_unregister(%struct.ptp_clock*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3029 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3032, metadata !DIExpression()), !dbg !3033
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3034
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3035
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3035
  ret i8* %1, !dbg !3036
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_suspend(%struct.device* %dev) #2 !dbg !3037 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ptp_dte = alloca %struct.ptp_dte*, align 8
  %i = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3038, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte, metadata !3040, metadata !DIExpression()), !dbg !3041
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3042
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !3043
  %1 = bitcast i8* %call to %struct.ptp_dte*, !dbg !3043
  store %struct.ptp_dte* %1, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3041
  call void @llvm.dbg.declare(metadata i8* %i, metadata !3044, metadata !DIExpression()), !dbg !3045
  store i8 0, i8* %i, align 1, !dbg !3046
  br label %for.cond, !dbg !3048

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %i, align 1, !dbg !3049
  %conv = zext i8 %2 to i32, !dbg !3049
  %cmp = icmp slt i32 %conv, 4, !dbg !3051
  br i1 %cmp, label %for.body, label %for.end, !dbg !3052

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3053
  %regs = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %3, i32 0, i32 0, !dbg !3055
  %4 = load i8*, i8** %regs, align 8, !dbg !3055
  %5 = load i8, i8* %i, align 1, !dbg !3056
  %conv2 = zext i8 %5 to i64, !dbg !3056
  %mul = mul i64 %conv2, 4, !dbg !3057
  %add.ptr = getelementptr i8, i8* %4, i64 %mul, !dbg !3058
  %call3 = call i32 @readl(i8* %add.ptr) #8, !dbg !3059
  %6 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3060
  %reg_val = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %6, i32 0, i32 7, !dbg !3061
  %7 = load i8, i8* %i, align 1, !dbg !3062
  %idxprom = zext i8 %7 to i64, !dbg !3060
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %reg_val, i64 0, i64 %idxprom, !dbg !3060
  store i32 %call3, i32* %arrayidx, align 4, !dbg !3063
  br label %for.inc, !dbg !3064

for.inc:                                          ; preds = %for.body
  %8 = load i8, i8* %i, align 1, !dbg !3065
  %inc = add i8 %8, 1, !dbg !3065
  store i8 %inc, i8* %i, align 1, !dbg !3065
  br label %for.cond, !dbg !3066, !llvm.loop !3067

for.end:                                          ; preds = %for.cond
  %9 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3069
  %regs4 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %9, i32 0, i32 0, !dbg !3070
  %10 = load i8*, i8** %regs4, align 8, !dbg !3070
  %add.ptr5 = getelementptr i8, i8* %10, i64 12, !dbg !3071
  call void @writel(i32 0, i8* %add.ptr5) #8, !dbg !3072
  ret i32 0, !dbg !3073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_dte_resume(%struct.device* %dev) #2 !dbg !3074 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ptp_dte = alloca %struct.ptp_dte*, align 8
  %i = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.declare(metadata %struct.ptp_dte** %ptp_dte, metadata !3077, metadata !DIExpression()), !dbg !3078
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3079
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !3080
  %1 = bitcast i8* %call to %struct.ptp_dte*, !dbg !3080
  store %struct.ptp_dte* %1, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3078
  call void @llvm.dbg.declare(metadata i8* %i, metadata !3081, metadata !DIExpression()), !dbg !3082
  store i8 0, i8* %i, align 1, !dbg !3083
  br label %for.cond, !dbg !3085

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %i, align 1, !dbg !3086
  %conv = zext i8 %2 to i32, !dbg !3086
  %cmp = icmp slt i32 %conv, 4, !dbg !3088
  br i1 %cmp, label %for.body, label %for.end, !dbg !3089

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* %i, align 1, !dbg !3090
  %conv2 = zext i8 %3 to i64, !dbg !3090
  %mul = mul i64 %conv2, 4, !dbg !3093
  %cmp3 = icmp ne i64 %mul, 8, !dbg !3094
  br i1 %cmp3, label %if.then, label %if.else, !dbg !3095

if.then:                                          ; preds = %for.body
  %4 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3096
  %reg_val = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %4, i32 0, i32 7, !dbg !3097
  %5 = load i8, i8* %i, align 1, !dbg !3098
  %idxprom = zext i8 %5 to i64, !dbg !3096
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %reg_val, i64 0, i64 %idxprom, !dbg !3096
  %6 = load i32, i32* %arrayidx, align 4, !dbg !3096
  %7 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3099
  %regs = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %7, i32 0, i32 0, !dbg !3100
  %8 = load i8*, i8** %regs, align 8, !dbg !3100
  %9 = load i8, i8* %i, align 1, !dbg !3101
  %conv5 = zext i8 %9 to i64, !dbg !3101
  %mul6 = mul i64 %conv5, 4, !dbg !3102
  %add.ptr = getelementptr i8, i8* %8, i64 %mul6, !dbg !3103
  call void @writel(i32 %6, i8* %add.ptr) #8, !dbg !3104
  br label %if.end, !dbg !3104

if.else:                                          ; preds = %for.body
  %10 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3105
  %reg_val7 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %10, i32 0, i32 7, !dbg !3106
  %11 = load i8, i8* %i, align 1, !dbg !3107
  %idxprom8 = zext i8 %11 to i64, !dbg !3105
  %arrayidx9 = getelementptr [4 x i32], [4 x i32]* %reg_val7, i64 0, i64 %idxprom8, !dbg !3105
  %12 = load i32, i32* %arrayidx9, align 4, !dbg !3105
  %and = and i32 %12, 255, !dbg !3108
  %shl = shl i32 %and, 8, !dbg !3109
  %13 = load %struct.ptp_dte*, %struct.ptp_dte** %ptp_dte, align 8, !dbg !3110
  %regs10 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %13, i32 0, i32 0, !dbg !3111
  %14 = load i8*, i8** %regs10, align 8, !dbg !3111
  %15 = load i8, i8* %i, align 1, !dbg !3112
  %conv11 = zext i8 %15 to i64, !dbg !3112
  %mul12 = mul i64 %conv11, 4, !dbg !3113
  %add.ptr13 = getelementptr i8, i8* %14, i64 %mul12, !dbg !3114
  call void @writel(i32 %shl, i8* %add.ptr13) #8, !dbg !3115
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !3116

for.inc:                                          ; preds = %if.end
  %16 = load i8, i8* %i, align 1, !dbg !3117
  %inc = add i8 %16, 1, !dbg !3117
  store i8 %inc, i8* %i, align 1, !dbg !3117
  br label %for.cond, !dbg !3118, !llvm.loop !3119

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !3121
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2266}
!llvm.module.flags = !{!2267, !2268, !2269, !2270}
!llvm.ident = !{!2271}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ptp_dte_driver_init163", scope: !2, file: !3, line: 343, type: !113, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !106, globals: !2170, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ptp/ptp_dte.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !100}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !52, file: !51, line: 17, baseType: !7, size: 32, elements: !96)
!51 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_request", file: !51, line: 16, size: 512, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !51, line: 21, baseType: !50, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, scope: !52, file: !51, line: 22, baseType: !56, size: 448, offset: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !51, line: 22, size: 448, elements: !57)
!57 = !{!58, !68}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "extts", scope: !56, file: !51, line: 23, baseType: !59, size: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_request", file: !60, line: 101, size: 128, elements: !61)
!60 = !DIFile(filename: "./include/uapi/linux/ptp_clock.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !59, file: !60, line: 102, baseType: !7, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !60, line: 103, baseType: !7, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !59, file: !60, line: 104, baseType: !65, size: 64, offset: 64)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 2)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "perout", scope: !56, file: !51, line: 24, baseType: !69, size: 448)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_perout_request", file: !60, line: 107, size: 448, elements: !70)
!70 = !{!71, !85, !86, !87, !88}
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !60, line: 108, baseType: !72, size: 128)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !60, line: 108, size: 128, elements: !73)
!73 = !{!74, !84}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !72, file: !60, line: 113, baseType: !75, size: 128)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_time", file: !60, line: 81, size: 128, elements: !76)
!76 = !{!77, !81, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !75, file: !60, line: 82, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !79, line: 30, baseType: !80)
!79 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !75, file: !60, line: 83, baseType: !82, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !79, line: 27, baseType: !7)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !75, file: !60, line: 84, baseType: !82, size: 32, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !72, file: !60, line: 120, baseType: !75, size: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !69, file: !60, line: 122, baseType: !75, size: 128, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !69, file: !60, line: 123, baseType: !7, size: 32, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !60, line: 124, baseType: !7, size: 32, offset: 288)
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !60, line: 125, baseType: !89, size: 128, offset: 320)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !60, line: 125, size: 128, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !89, file: !60, line: 131, baseType: !75, size: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !89, file: !60, line: 133, baseType: !93, size: 128)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 4)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "PTP_CLK_REQ_EXTTS", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "PTP_CLK_REQ_PEROUT", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "PTP_CLK_REQ_PPS", value: 2, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ptp_pin_function", file: !60, line: 167, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "PTP_PF_NONE", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "PTP_PF_EXTTS", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "PTP_PF_PEROUT", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "PTP_PF_PHYSYNC", value: 3, isUnsigned: true)
!106 = !{!107, !110, !112, !113, !114, !115, !551, !403, !2168, !170, !405}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !109, line: 76, flags: DIFlagFwdDecl)
!109 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !111, line: 148, baseType: !7)
!111 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!114 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_dte", file: !3, line: 51, size: 1536, elements: !117)
!117 = !{!118, !119, !122, !223, !2163, !2164, !2165, !2166}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !116, file: !3, line: 52, baseType: !113, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_clk", scope: !116, file: !3, line: 53, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock", file: !51, line: 149, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !116, file: !3, line: 54, baseType: !123, size: 1152, offset: 128)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_info", file: !51, line: 122, size: 1152, elements: !124)
!124 = !{!125, !126, !131, !136, !137, !138, !139, !140, !141, !156, !161, !165, !166, !171, !182, !191, !204, !210, !215, !219}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !123, file: !51, line: 123, baseType: !107, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !51, line: 124, baseType: !127, size: 128, offset: 64)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !129)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !{!130}
!130 = !DISubrange(count: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !123, file: !51, line: 125, baseType: !132, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !133, line: 20, baseType: !134)
!133 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !79, line: 26, baseType: !135)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !123, file: !51, line: 126, baseType: !135, size: 32, offset: 224)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !123, file: !51, line: 127, baseType: !135, size: 32, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !123, file: !51, line: 128, baseType: !135, size: 32, offset: 288)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !123, file: !51, line: 129, baseType: !135, size: 32, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !123, file: !51, line: 130, baseType: !135, size: 32, offset: 352)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !123, file: !51, line: 131, baseType: !142, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_pin_desc", file: !60, line: 174, size: 768, elements: !144)
!144 = !{!145, !149, !150, !151, !152}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !60, line: 180, baseType: !146, size: 512)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !143, file: !60, line: 184, baseType: !7, size: 32, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !143, file: !60, line: 188, baseType: !7, size: 32, offset: 544)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !143, file: !60, line: 194, baseType: !7, size: 32, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !143, file: !60, line: 198, baseType: !153, size: 160, offset: 608)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 5)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "adjfine", scope: !123, file: !51, line: 132, baseType: !157, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!135, !160, !114}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "adjfreq", scope: !123, file: !51, line: 133, baseType: !162, size: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!135, !160, !132}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "adjphase", scope: !123, file: !51, line: 134, baseType: !162, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "adjtime", scope: !123, file: !51, line: 135, baseType: !167, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!135, !160, !170}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !133, line: 22, baseType: !78)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "gettime64", scope: !123, file: !51, line: 136, baseType: !172, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!135, !160, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !177, line: 13, size: 128, elements: !178)
!177 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !176, file: !177, line: 14, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !177, line: 8, baseType: !78)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !176, file: !177, line: 15, baseType: !114, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gettimex64", scope: !123, file: !51, line: 137, baseType: !183, size: 64, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!135, !160, !175, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !51, line: 33, size: 256, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !187, file: !51, line: 34, baseType: !176, size: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !187, file: !51, line: 35, baseType: !176, size: 128, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosststamp", scope: !123, file: !51, line: 139, baseType: !192, size: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!135, !160, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_device_crosststamp", file: !197, line: 261, size: 192, elements: !198)
!197 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !202, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !196, file: !197, line: 262, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !201, line: 29, baseType: !170)
!201 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !196, file: !197, line: 263, baseType: !200, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !196, file: !197, line: 264, baseType: !200, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !123, file: !51, line: 141, baseType: !205, size: 64, offset: 896)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!135, !160, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !123, file: !51, line: 142, baseType: !211, size: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!135, !160, !214, !135}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !123, file: !51, line: 144, baseType: !216, size: 64, offset: 1024)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!135, !160, !7, !100, !7}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "do_aux_work", scope: !123, file: !51, line: 146, baseType: !220, size: 64, offset: 1088)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!114, !160}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !116, file: !3, line: 55, baseType: !224, size: 64, offset: 1280)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !226)
!226 = !{!227, !1712, !1713, !1716, !1717, !1768, !1862, !1863, !1864, !1865, !1866, !1875, !1980, !1993, !1996, !1997, !2001, !2003, !2004, !2005, !2009, !2015, !2016, !2019, !2023, !2113, !2116, !2117, !2118, !2119, !2151, !2152, !2153, !2156, !2159, !2160, !2161, !2162}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !225, file: !30, line: 462, baseType: !228, size: 512)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !229, line: 64, size: 512, elements: !230)
!229 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !234, !240, !242, !300, !1549, !1702, !1707, !1708, !1709, !1710, !1711}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !229, line: 65, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !228, file: !229, line: 66, baseType: !235, size: 128, offset: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !111, line: 178, size: 128, elements: !236)
!236 = !{!237, !239}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !111, line: 179, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !235, file: !111, line: 179, baseType: !238, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !229, line: 67, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !228, file: !229, line: 68, baseType: !243, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !229, line: 192, size: 704, elements: !245)
!245 = !{!246, !247, !263, !264}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !244, file: !229, line: 193, baseType: !235, size: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !244, file: !229, line: 194, baseType: !248, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !249, line: 83, baseType: !250)
!249 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !249, line: 71, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !249, line: 72, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !249, line: 72, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !253, file: !249, line: 73, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !249, line: 20, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !256, file: !249, line: 21, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !260, line: 25, baseType: !261)
!260 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 25, elements: !262)
!262 = !{}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !244, file: !229, line: 195, baseType: !228, size: 512, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !244, file: !229, line: 196, baseType: !265, size: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !229, line: 156, size: 192, elements: !268)
!268 = !{!269, !274, !279}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !267, file: !229, line: 157, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!135, !243, !241}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !229, line: 158, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!232, !243, !241}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !267, file: !229, line: 159, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!135, !243, !241, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !229, line: 148, size: 20736, elements: !286)
!286 = !{!287, !292, !294, !295, !299}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !285, file: !229, line: 149, baseType: !288, size: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 192, elements: !290)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!290 = !{!291}
!291 = !DISubrange(count: 3)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !285, file: !229, line: 150, baseType: !293, size: 4096, offset: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 4096, elements: !147)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !285, file: !229, line: 151, baseType: !135, size: 32, offset: 4288)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !285, file: !229, line: 152, baseType: !296, size: 16384, offset: 4320)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 16384, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 2048)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !285, file: !229, line: 153, baseType: !135, size: 32, offset: 20704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !228, file: !229, line: 69, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !229, line: 138, size: 448, elements: !303)
!303 = !{!304, !308, !336, !338, !1497, !1528, !1532}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !302, file: !229, line: 139, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !241}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !302, file: !229, line: 140, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !312, line: 230, size: 128, elements: !313)
!312 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314, !329}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !311, file: !312, line: 231, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!318, !241, !322, !289}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !111, line: 60, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !320, line: 73, baseType: !321)
!320 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !320, line: 15, baseType: !114)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !312, line: 30, size: 128, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !312, line: 31, baseType: !232, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !323, file: !312, line: 32, baseType: !327, size: 16, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !111, line: 19, baseType: !328)
!328 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !311, file: !312, line: 232, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!318, !241, !322, !232, !333}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 55, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !320, line: 72, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !320, line: 16, baseType: !112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !302, file: !229, line: 141, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !302, file: !229, line: 142, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !312, line: 84, size: 320, elements: !343)
!343 = !{!344, !345, !349, !1494, !1495}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !312, line: 85, baseType: !232, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !342, file: !312, line: 86, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!327, !241, !322, !135}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !342, file: !312, line: 88, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!327, !241, !353, !135}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !312, line: 168, size: 448, elements: !355)
!355 = !{!356, !357, !358, !359, !368, !369}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !354, file: !312, line: 169, baseType: !323, size: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !354, file: !312, line: 170, baseType: !333, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !354, file: !312, line: 171, baseType: !113, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !354, file: !312, line: 172, baseType: !360, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!318, !363, !241, !353, !289, !366, !333}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !365, line: 526, flags: DIFlagFwdDecl)
!365 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !111, line: 46, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !320, line: 88, baseType: !80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !354, file: !312, line: 174, baseType: !360, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !354, file: !312, line: 176, baseType: !370, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!135, !363, !241, !353, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !375, line: 305, size: 1472, elements: !376)
!375 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!376 = !{!377, !378, !379, !380, !381, !389, !390, !1468, !1474, !1475, !1480, !1481, !1484, !1488, !1489, !1490, !1491, !1492}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !374, file: !375, line: 308, baseType: !112, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !374, file: !375, line: 309, baseType: !112, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !374, file: !375, line: 313, baseType: !373, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !374, file: !375, line: 313, baseType: !373, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !374, file: !375, line: 315, baseType: !382, size: 192, align: 64, offset: 256)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !383, line: 24, size: 192, align: 64, elements: !384)
!383 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!384 = !{!385, !386, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !382, file: !383, line: 25, baseType: !112, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !382, file: !383, line: 26, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !382, file: !383, line: 27, baseType: !387, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !374, file: !375, line: 323, baseType: !112, size: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !374, file: !375, line: 327, baseType: !391, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !375, line: 388, size: 7296, elements: !393)
!393 = !{!394, !1464}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !375, line: 389, baseType: !395, size: 7296)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !375, line: 389, size: 7296, elements: !396)
!396 = !{!397, !398, !402, !406, !410, !411, !412, !413, !414, !422, !427, !428, !429, !430, !437, !438, !439, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !474, !480, !483, !531, !532, !1434, !1435, !1438, !1442, !1443, !1446, !1447, !1448, !1451, !1463}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !395, file: !375, line: 390, baseType: !373, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !395, file: !375, line: 391, baseType: !399, size: 64, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !383, line: 31, size: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !399, file: !383, line: 32, baseType: !387, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !395, file: !375, line: 392, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !133, line: 23, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !79, line: 31, baseType: !405)
!405 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !395, file: !375, line: 394, baseType: !407, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!112, !363, !112, !112, !112, !112}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !395, file: !375, line: 398, baseType: !112, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !395, file: !375, line: 399, baseType: !112, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !395, file: !375, line: 405, baseType: !112, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !395, file: !375, line: 406, baseType: !112, size: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !395, file: !375, line: 407, baseType: !415, size: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !365, line: 286, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 286, size: 64, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !417, file: !365, line: 286, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !421, line: 18, baseType: !112)
!421 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!422 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !395, file: !375, line: 416, baseType: !423, size: 32, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !111, line: 168, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 166, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !424, file: !111, line: 167, baseType: !135, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !395, file: !375, line: 428, baseType: !423, size: 32, offset: 608)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !395, file: !375, line: 437, baseType: !423, size: 32, offset: 640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !395, file: !375, line: 447, baseType: !423, size: 32, offset: 672)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !395, file: !375, line: 450, baseType: !431, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !432, line: 13, baseType: !433)
!432 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !111, line: 175, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 173, size: 64, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !434, file: !111, line: 174, baseType: !170, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !395, file: !375, line: 452, baseType: !135, size: 32, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !395, file: !375, line: 454, baseType: !248, offset: 800)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !395, file: !375, line: 457, baseType: !440, size: 256, offset: 832)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !441, line: 35, size: 256, elements: !442)
!441 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !444, !445, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !440, file: !441, line: 36, baseType: !431, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !440, file: !441, line: 42, baseType: !431, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !440, file: !441, line: 46, baseType: !446, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !249, line: 29, baseType: !256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !440, file: !441, line: 47, baseType: !235, size: 128, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !395, file: !375, line: 459, baseType: !235, size: 128, offset: 1088)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !395, file: !375, line: 466, baseType: !112, size: 64, offset: 1216)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !395, file: !375, line: 467, baseType: !112, size: 64, offset: 1280)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !395, file: !375, line: 469, baseType: !112, size: 64, offset: 1344)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !395, file: !375, line: 470, baseType: !112, size: 64, offset: 1408)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !395, file: !375, line: 471, baseType: !433, size: 64, offset: 1472)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !395, file: !375, line: 472, baseType: !112, size: 64, offset: 1536)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !395, file: !375, line: 473, baseType: !112, size: 64, offset: 1600)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !395, file: !375, line: 474, baseType: !112, size: 64, offset: 1664)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !395, file: !375, line: 475, baseType: !112, size: 64, offset: 1728)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !395, file: !375, line: 477, baseType: !248, offset: 1792)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !395, file: !375, line: 478, baseType: !112, size: 64, offset: 1792)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !395, file: !375, line: 478, baseType: !112, size: 64, offset: 1856)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !395, file: !375, line: 478, baseType: !112, size: 64, offset: 1920)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !395, file: !375, line: 478, baseType: !112, size: 64, offset: 1984)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !395, file: !375, line: 479, baseType: !112, size: 64, offset: 2048)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !395, file: !375, line: 479, baseType: !112, size: 64, offset: 2112)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !395, file: !375, line: 479, baseType: !112, size: 64, offset: 2176)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !395, file: !375, line: 480, baseType: !112, size: 64, offset: 2240)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !395, file: !375, line: 480, baseType: !112, size: 64, offset: 2304)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !395, file: !375, line: 480, baseType: !112, size: 64, offset: 2368)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !395, file: !375, line: 480, baseType: !112, size: 64, offset: 2432)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !395, file: !375, line: 482, baseType: !471, size: 2816, offset: 2496)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 2816, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 44)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !395, file: !375, line: 488, baseType: !475, size: 256, offset: 5312)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !476, line: 60, size: 256, elements: !477)
!476 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !475, file: !476, line: 61, baseType: !479, size: 256)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 256, elements: !94)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !395, file: !375, line: 490, baseType: !481, size: 64, offset: 5568)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !375, line: 490, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !395, file: !375, line: 493, baseType: !484, size: 896, offset: 5632)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !485, line: 53, baseType: !486)
!485 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 13, size: 896, elements: !487)
!487 = !{!488, !489, !490, !491, !494, !495, !502, !503, !523, !524, !527}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !486, file: !485, line: 18, baseType: !403, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !486, file: !485, line: 28, baseType: !433, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !486, file: !485, line: 31, baseType: !440, size: 256, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !486, file: !485, line: 32, baseType: !492, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !485, line: 32, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !486, file: !485, line: 37, baseType: !328, size: 16, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !486, file: !485, line: 40, baseType: !496, size: 192, offset: 512)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !497, line: 53, size: 192, elements: !498)
!497 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !500, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !496, file: !497, line: 54, baseType: !431, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !496, file: !497, line: 55, baseType: !248, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !496, file: !497, line: 59, baseType: !235, size: 128, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !486, file: !485, line: 41, baseType: !113, size: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !486, file: !485, line: 42, baseType: !504, size: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !507, line: 13, size: 896, elements: !508)
!507 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !506, file: !507, line: 14, baseType: !113, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !506, file: !507, line: 15, baseType: !112, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !506, file: !507, line: 17, baseType: !112, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !506, file: !507, line: 17, baseType: !112, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !506, file: !507, line: 19, baseType: !114, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !506, file: !507, line: 21, baseType: !114, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !506, file: !507, line: 22, baseType: !114, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !506, file: !507, line: 23, baseType: !114, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !506, file: !507, line: 24, baseType: !114, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !506, file: !507, line: 25, baseType: !114, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !506, file: !507, line: 26, baseType: !114, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !506, file: !507, line: 27, baseType: !114, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !506, file: !507, line: 28, baseType: !114, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !506, file: !507, line: 29, baseType: !114, size: 64, offset: 832)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !486, file: !485, line: 44, baseType: !423, size: 32, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !486, file: !485, line: 50, baseType: !525, size: 16, offset: 864)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !133, line: 19, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !79, line: 24, baseType: !328)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !486, file: !485, line: 51, baseType: !528, size: 16, offset: 880)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !133, line: 18, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !79, line: 23, baseType: !530)
!530 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !375, line: 495, baseType: !112, size: 64, offset: 6528)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !395, file: !375, line: 497, baseType: !533, size: 64, offset: 6592)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !375, line: 381, size: 384, elements: !535)
!535 = !{!536, !537, !1433}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !534, file: !375, line: 382, baseType: !423, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !534, file: !375, line: 383, baseType: !538, size: 128, offset: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !375, line: 376, size: 128, elements: !539)
!539 = !{!540, !1431}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !538, file: !375, line: 377, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !543, line: 640, size: 48640, elements: !544)
!543 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!544 = !{!545, !552, !554, !555, !561, !562, !563, !564, !565, !566, !567, !568, !572, !590, !601, !694, !695, !696, !707, !708, !710, !711, !712, !713, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !790, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !846, !848, !849, !850, !862, !864, !865, !866, !867, !868, !874, !875, !876, !877, !878, !879, !880, !892, !897, !902, !903, !904, !907, !908, !911, !914, !917, !920, !924, !927, !930, !936, !937, !938, !944, !945, !946, !947, !948, !957, !958, !959, !960, !961, !966, !967, !968, !971, !972, !975, !978, !981, !984, !987, !990, !991, !1071, !1074, !1077, !1078, !1081, !1082, !1083, !1087, !1088, !1089, !1102, !1103, !1104, !1116, !1121, !1124, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !542, file: !543, line: 646, baseType: !546, size: 128)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !547, line: 56, size: 128, elements: !548)
!547 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !547, line: 57, baseType: !112, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !546, file: !547, line: 58, baseType: !551, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !133, line: 21, baseType: !82)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !542, file: !543, line: 649, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !542, file: !543, line: 657, baseType: !113, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !542, file: !543, line: 658, baseType: !556, size: 32, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !557, line: 113, baseType: !558)
!557 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !557, line: 111, size: 32, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !558, file: !557, line: 112, baseType: !423, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !543, line: 660, baseType: !7, size: 32, offset: 288)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !542, file: !543, line: 661, baseType: !7, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !542, file: !543, line: 684, baseType: !135, size: 32, offset: 352)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !542, file: !543, line: 686, baseType: !135, size: 32, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !542, file: !543, line: 687, baseType: !135, size: 32, offset: 416)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !542, file: !543, line: 688, baseType: !135, size: 32, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !542, file: !543, line: 689, baseType: !7, size: 32, offset: 480)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !542, file: !543, line: 691, baseType: !569, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !543, line: 691, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !542, file: !543, line: 692, baseType: !573, size: 832, offset: 576)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !543, line: 451, size: 832, elements: !574)
!574 = !{!575, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !573, file: !543, line: 453, baseType: !576, size: 128)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !543, line: 325, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !576, file: !543, line: 326, baseType: !112, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !576, file: !543, line: 327, baseType: !551, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !573, file: !543, line: 454, baseType: !382, size: 192, align: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !573, file: !543, line: 455, baseType: !235, size: 128, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !573, file: !543, line: 456, baseType: !7, size: 32, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !573, file: !543, line: 458, baseType: !403, size: 64, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !573, file: !543, line: 459, baseType: !403, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !573, file: !543, line: 460, baseType: !403, size: 64, offset: 640)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !573, file: !543, line: 461, baseType: !403, size: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !573, file: !543, line: 463, baseType: !403, size: 64, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !573, file: !543, line: 465, baseType: !589, offset: 832)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !543, line: 415, elements: !262)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !542, file: !543, line: 693, baseType: !591, size: 384, offset: 1408)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !543, line: 489, size: 384, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !591, file: !543, line: 490, baseType: !235, size: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !591, file: !543, line: 491, baseType: !112, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !591, file: !543, line: 492, baseType: !112, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !591, file: !543, line: 493, baseType: !7, size: 32, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !591, file: !543, line: 494, baseType: !328, size: 16, offset: 288)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !591, file: !543, line: 495, baseType: !328, size: 16, offset: 304)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !591, file: !543, line: 497, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !542, file: !543, line: 697, baseType: !602, size: 1792, offset: 1792)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !543, line: 507, size: 1792, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !691, !692}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !602, file: !543, line: 508, baseType: !382, size: 192, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !602, file: !543, line: 515, baseType: !403, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !602, file: !543, line: 516, baseType: !403, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !602, file: !543, line: 517, baseType: !403, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !602, file: !543, line: 518, baseType: !403, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !602, file: !543, line: 519, baseType: !403, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !602, file: !543, line: 526, baseType: !170, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !602, file: !543, line: 527, baseType: !403, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !543, line: 528, baseType: !7, size: 32, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !602, file: !543, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !602, file: !543, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !602, file: !543, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !602, file: !543, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !602, file: !543, line: 563, baseType: !618, size: 512, offset: 704)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !619)
!619 = !{!620, !626, !627, !632, !684, !688, !689, !690}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !6, line: 119, baseType: !621, size: 256)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !622, line: 9, size: 256, elements: !623)
!622 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !622, line: 10, baseType: !382, size: 192, align: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !621, file: !622, line: 11, baseType: !200, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !618, file: !6, line: 120, baseType: !200, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !618, file: !6, line: 121, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!5, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !618, file: !6, line: 122, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !635)
!635 = !{!636, !656, !657, !660, !670, !671, !679, !683}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !634, file: !6, line: 160, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !638, file: !6, line: 215, baseType: !446)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !638, file: !6, line: 216, baseType: !7, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !638, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !638, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !638, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !638, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !638, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !638, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !638, file: !6, line: 233, baseType: !200, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !638, file: !6, line: 234, baseType: !631, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !638, file: !6, line: 235, baseType: !200, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !638, file: !6, line: 236, baseType: !631, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !638, file: !6, line: 237, baseType: !653, size: 4096, offset: 512)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 4096, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 8)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !634, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !634, file: !6, line: 162, baseType: !658, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !111, line: 27, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !320, line: 96, baseType: !135)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !634, file: !6, line: 163, baseType: !661, size: 32, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !662, line: 276, baseType: !663)
!662 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !662, line: 276, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !663, file: !662, line: 276, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !662, line: 70, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !662, line: 65, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !667, file: !662, line: 66, baseType: !7, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !634, file: !6, line: 164, baseType: !631, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !634, file: !6, line: 165, baseType: !672, size: 128, offset: 256)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !622, line: 14, size: 128, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !672, file: !622, line: 15, baseType: !675, size: 128)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !383, line: 125, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !675, file: !383, line: 126, baseType: !399, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !675, file: !383, line: 127, baseType: !387, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !634, file: !6, line: 166, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!200}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !634, file: !6, line: 167, baseType: !200, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !618, file: !6, line: 123, baseType: !685, size: 8, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !133, line: 17, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !79, line: 21, baseType: !687)
!687 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !618, file: !6, line: 124, baseType: !685, size: 8, offset: 456)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !618, file: !6, line: 125, baseType: !685, size: 8, offset: 464)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !618, file: !6, line: 126, baseType: !685, size: 8, offset: 472)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !602, file: !543, line: 572, baseType: !618, size: 512, offset: 1216)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !602, file: !543, line: 580, baseType: !693, size: 64, offset: 1728)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !542, file: !543, line: 721, baseType: !7, size: 32, offset: 3584)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !542, file: !543, line: 722, baseType: !135, size: 32, offset: 3616)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !542, file: !543, line: 723, baseType: !697, size: 64, offset: 3648)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !700, line: 17, baseType: !701)
!700 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !700, line: 17, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !701, file: !700, line: 17, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 1)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !542, file: !543, line: 724, baseType: !699, size: 64, offset: 3712)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !542, file: !543, line: 749, baseType: !709, offset: 3776)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !543, line: 290, elements: !262)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !542, file: !543, line: 751, baseType: !235, size: 128, offset: 3776)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !542, file: !543, line: 757, baseType: !391, size: 64, offset: 3904)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !542, file: !543, line: 758, baseType: !391, size: 64, offset: 3968)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !542, file: !543, line: 761, baseType: !714, size: 320, offset: 4032)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !476, line: 34, size: 320, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !714, file: !476, line: 35, baseType: !403, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !714, file: !476, line: 36, baseType: !718, size: 256, offset: 64)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 256, elements: !94)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !542, file: !543, line: 766, baseType: !135, size: 32, offset: 4352)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !542, file: !543, line: 767, baseType: !135, size: 32, offset: 4384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !542, file: !543, line: 768, baseType: !135, size: 32, offset: 4416)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !542, file: !543, line: 770, baseType: !135, size: 32, offset: 4448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !542, file: !543, line: 772, baseType: !112, size: 64, offset: 4480)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !542, file: !543, line: 775, baseType: !7, size: 32, offset: 4544)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !542, file: !543, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !542, file: !543, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !542, file: !543, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !542, file: !543, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !542, file: !543, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !542, file: !543, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !542, file: !543, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !542, file: !543, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !542, file: !543, line: 831, baseType: !112, size: 64, offset: 4672)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !542, file: !543, line: 833, baseType: !735, size: 384, offset: 4736)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !736)
!736 = !{!737, !742}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !735, file: !12, line: 26, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!114, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !12, line: 27, baseType: !743, size: 320, offset: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !12, line: 27, size: 320, elements: !744)
!744 = !{!745, !755, !780}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !743, file: !12, line: 36, baseType: !746, size: 320)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !12, line: 29, size: 320, elements: !747)
!747 = !{!748, !750, !751, !752, !753, !754}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !746, file: !12, line: 30, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !746, file: !12, line: 31, baseType: !551, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !12, line: 32, baseType: !551, size: 32, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !746, file: !12, line: 33, baseType: !551, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !746, file: !12, line: 34, baseType: !403, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !746, file: !12, line: 35, baseType: !749, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !743, file: !12, line: 46, baseType: !756, size: 192)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !12, line: 38, size: 192, elements: !757)
!757 = !{!758, !759, !760, !779}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !756, file: !12, line: 39, baseType: !658, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !12, line: 41, baseType: !761, size: 64, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !12, line: 41, size: 64, elements: !762)
!762 = !{!763, !771}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !761, file: !12, line: 42, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !766, line: 7, size: 128, elements: !767)
!766 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!767 = !{!768, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !765, file: !766, line: 8, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !320, line: 93, baseType: !80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !765, file: !766, line: 9, baseType: !80, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !761, file: !12, line: 43, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !774, line: 7, size: 64, elements: !775)
!774 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!775 = !{!776, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !773, file: !774, line: 8, baseType: !777, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !774, line: 5, baseType: !132)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !773, file: !774, line: 9, baseType: !132, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !756, file: !12, line: 45, baseType: !403, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !743, file: !12, line: 54, baseType: !781, size: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !12, line: 48, size: 256, elements: !782)
!782 = !{!783, !786, !787, !788, !789}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !781, file: !12, line: 49, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !781, file: !12, line: 50, baseType: !135, size: 32, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !781, file: !12, line: 51, baseType: !135, size: 32, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !781, file: !12, line: 52, baseType: !112, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !781, file: !12, line: 53, baseType: !112, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !542, file: !543, line: 835, baseType: !791, size: 32, offset: 5120)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !111, line: 22, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !320, line: 28, baseType: !135)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !542, file: !543, line: 836, baseType: !791, size: 32, offset: 5152)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !542, file: !543, line: 840, baseType: !112, size: 64, offset: 5184)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !542, file: !543, line: 849, baseType: !541, size: 64, offset: 5248)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !542, file: !543, line: 852, baseType: !541, size: 64, offset: 5312)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !542, file: !543, line: 857, baseType: !235, size: 128, offset: 5376)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !542, file: !543, line: 858, baseType: !235, size: 128, offset: 5504)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !542, file: !543, line: 859, baseType: !541, size: 64, offset: 5632)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !542, file: !543, line: 867, baseType: !235, size: 128, offset: 5696)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !542, file: !543, line: 868, baseType: !235, size: 128, offset: 5824)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !542, file: !543, line: 871, baseType: !803, size: 64, offset: 5952)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !805, line: 59, size: 768, elements: !806)
!805 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !808, !809, !810, !821, !822, !829, !838}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !804, file: !805, line: 61, baseType: !556, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !804, file: !805, line: 62, baseType: !7, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !804, file: !805, line: 63, baseType: !248, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !804, file: !805, line: 65, baseType: !811, size: 256, offset: 64)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 256, elements: !94)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !111, line: 182, size: 64, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !812, file: !111, line: 183, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !111, line: 186, size: 128, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !816, file: !111, line: 187, baseType: !815, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !816, file: !111, line: 187, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !804, file: !805, line: 66, baseType: !812, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !804, file: !805, line: 68, baseType: !823, size: 128, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !824, line: 40, baseType: !825)
!824 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !824, line: 36, size: 128, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !825, file: !824, line: 37, baseType: !248)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !825, file: !824, line: 38, baseType: !235, size: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !804, file: !805, line: 69, baseType: !830, size: 128, align: 64, offset: 512)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !111, line: 216, size: 128, align: 64, elements: !831)
!831 = !{!832, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !830, file: !111, line: 217, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !830, file: !111, line: 218, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !833}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !804, file: !805, line: 70, baseType: !839, size: 128, offset: 640)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 128, elements: !705)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !805, line: 54, size: 128, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !840, file: !805, line: 55, baseType: !135, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !840, file: !805, line: 56, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !805, line: 56, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !542, file: !543, line: 872, baseType: !847, size: 512, offset: 6016)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 512, elements: !94)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !542, file: !543, line: 873, baseType: !235, size: 128, offset: 6528)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !542, file: !543, line: 874, baseType: !235, size: 128, offset: 6656)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !542, file: !543, line: 876, baseType: !851, size: 64, offset: 6784)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !853, line: 26, size: 192, elements: !854)
!853 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !852, file: !853, line: 27, baseType: !7, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !852, file: !853, line: 28, baseType: !857, size: 128, offset: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !858, line: 43, size: 128, elements: !859)
!858 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !857, file: !858, line: 44, baseType: !446)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !857, file: !858, line: 45, baseType: !235, size: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !542, file: !543, line: 879, baseType: !863, size: 64, offset: 6848)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !542, file: !543, line: 882, baseType: !863, size: 64, offset: 6912)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !542, file: !543, line: 884, baseType: !403, size: 64, offset: 6976)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !542, file: !543, line: 885, baseType: !403, size: 64, offset: 7040)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !542, file: !543, line: 890, baseType: !403, size: 64, offset: 7104)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !542, file: !543, line: 891, baseType: !869, size: 128, offset: 7168)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !543, line: 242, size: 128, elements: !870)
!870 = !{!871, !872, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !869, file: !543, line: 244, baseType: !403, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !869, file: !543, line: 245, baseType: !403, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !869, file: !543, line: 246, baseType: !446, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !542, file: !543, line: 900, baseType: !112, size: 64, offset: 7296)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !542, file: !543, line: 901, baseType: !112, size: 64, offset: 7360)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !542, file: !543, line: 904, baseType: !403, size: 64, offset: 7424)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !542, file: !543, line: 907, baseType: !403, size: 64, offset: 7488)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !542, file: !543, line: 910, baseType: !112, size: 64, offset: 7552)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !542, file: !543, line: 911, baseType: !112, size: 64, offset: 7616)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !542, file: !543, line: 914, baseType: !881, size: 640, offset: 7680)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !882, line: 123, size: 640, elements: !883)
!882 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!883 = !{!884, !890, !891}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !881, file: !882, line: 124, baseType: !885, size: 576)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 576, elements: !290)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !882, line: 108, size: 192, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !886, file: !882, line: 109, baseType: !403, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !886, file: !882, line: 110, baseType: !672, size: 128, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !881, file: !882, line: 125, baseType: !7, size: 32, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !881, file: !882, line: 126, baseType: !7, size: 32, offset: 608)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !542, file: !543, line: 917, baseType: !893, size: 192, offset: 8320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !882, line: 134, size: 192, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !893, file: !882, line: 135, baseType: !830, size: 128, align: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !893, file: !882, line: 136, baseType: !7, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !542, file: !543, line: 923, baseType: !898, size: 64, offset: 8512)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !901, line: 11, flags: DIFlagFwdDecl)
!901 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!902 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !542, file: !543, line: 926, baseType: !898, size: 64, offset: 8576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !542, file: !543, line: 929, baseType: !898, size: 64, offset: 8640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !542, file: !543, line: 933, baseType: !905, size: 64, offset: 8704)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !543, line: 933, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !542, file: !543, line: 943, baseType: !127, size: 128, offset: 8768)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !542, file: !543, line: 945, baseType: !909, size: 64, offset: 8896)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !543, line: 49, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !542, file: !543, line: 956, baseType: !912, size: 64, offset: 8960)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !543, line: 45, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !542, file: !543, line: 959, baseType: !915, size: 64, offset: 9024)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !543, line: 959, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !542, file: !543, line: 962, baseType: !918, size: 64, offset: 9088)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !543, line: 66, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !542, file: !543, line: 966, baseType: !921, size: 64, offset: 9152)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !923, line: 35, flags: DIFlagFwdDecl)
!923 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!924 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !542, file: !543, line: 969, baseType: !925, size: 64, offset: 9216)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !882, line: 223, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !542, file: !543, line: 970, baseType: !928, size: 64, offset: 9280)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !543, line: 62, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !542, file: !543, line: 971, baseType: !931, size: 64, offset: 9344)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !932, line: 25, baseType: !933)
!932 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !932, line: 23, size: 64, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !933, file: !932, line: 24, baseType: !704, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !542, file: !543, line: 972, baseType: !931, size: 64, offset: 9408)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !542, file: !543, line: 974, baseType: !931, size: 64, offset: 9472)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !542, file: !543, line: 975, baseType: !939, size: 192, offset: 9536)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !940, line: 30, size: 192, elements: !941)
!940 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !939, file: !940, line: 31, baseType: !235, size: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !939, file: !940, line: 32, baseType: !931, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !542, file: !543, line: 976, baseType: !112, size: 64, offset: 9728)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !542, file: !543, line: 977, baseType: !333, size: 64, offset: 9792)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !542, file: !543, line: 978, baseType: !7, size: 32, offset: 9856)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !542, file: !543, line: 980, baseType: !833, size: 64, offset: 9920)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !542, file: !543, line: 989, baseType: !949, size: 128, offset: 9984)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !950, line: 35, size: 128, elements: !951)
!950 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !949, file: !950, line: 36, baseType: !135, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !949, file: !950, line: 37, baseType: !423, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !949, file: !950, line: 38, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !950, line: 23, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !542, file: !543, line: 992, baseType: !403, size: 64, offset: 10112)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !542, file: !543, line: 993, baseType: !403, size: 64, offset: 10176)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !542, file: !543, line: 996, baseType: !248, offset: 10240)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !542, file: !543, line: 999, baseType: !446, offset: 10240)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !542, file: !543, line: 1001, baseType: !962, size: 64, offset: 10240)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !543, line: 636, size: 64, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !962, file: !543, line: 637, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !542, file: !543, line: 1005, baseType: !675, size: 128, offset: 10304)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !542, file: !543, line: 1007, baseType: !541, size: 64, offset: 10432)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !542, file: !543, line: 1009, baseType: !969, size: 64, offset: 10496)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !543, line: 1009, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !542, file: !543, line: 1043, baseType: !113, size: 64, offset: 10560)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !542, file: !543, line: 1046, baseType: !973, size: 64, offset: 10624)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !543, line: 41, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !542, file: !543, line: 1050, baseType: !976, size: 64, offset: 10688)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !543, line: 42, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !542, file: !543, line: 1054, baseType: !979, size: 64, offset: 10752)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !543, line: 55, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !542, file: !543, line: 1056, baseType: !982, size: 64, offset: 10816)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !543, line: 40, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !542, file: !543, line: 1058, baseType: !985, size: 64, offset: 10880)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !543, line: 47, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !542, file: !543, line: 1061, baseType: !988, size: 64, offset: 10944)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !543, line: 43, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !542, file: !543, line: 1064, baseType: !112, size: 64, offset: 11008)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !542, file: !543, line: 1065, baseType: !992, size: 64, offset: 11072)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !940, line: 14, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !940, line: 12, size: 384, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !940, line: 13, baseType: !997, size: 384)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !940, line: 13, size: 384, elements: !998)
!998 = !{!999, !1000, !1001, !1002}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !997, file: !940, line: 13, baseType: !135, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !997, file: !940, line: 13, baseType: !135, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !997, file: !940, line: 13, baseType: !135, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !997, file: !940, line: 13, baseType: !1003, size: 256, offset: 128)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1004, line: 32, size: 256, elements: !1005)
!1004 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1005 = !{!1006, !1012, !1025, !1031, !1040, !1060, !1065}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1003, file: !1004, line: 37, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !1004, line: 34, size: 64, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1007, file: !1004, line: 35, baseType: !792, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1007, file: !1004, line: 36, baseType: !1011, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !320, line: 49, baseType: !7)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1003, file: !1004, line: 45, baseType: !1013, size: 192)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !1004, line: 40, size: 192, elements: !1014)
!1014 = !{!1015, !1017, !1018, !1024}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1013, file: !1004, line: 41, baseType: !1016, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !320, line: 95, baseType: !135)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1013, file: !1004, line: 42, baseType: !135, size: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1013, file: !1004, line: 43, baseType: !1019, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1004, line: 11, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1004, line: 8, size: 64, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1020, file: !1004, line: 9, baseType: !135, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1020, file: !1004, line: 10, baseType: !113, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1013, file: !1004, line: 44, baseType: !135, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1003, file: !1004, line: 52, baseType: !1026, size: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !1004, line: 48, size: 128, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1026, file: !1004, line: 49, baseType: !792, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1026, file: !1004, line: 50, baseType: !1011, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1026, file: !1004, line: 51, baseType: !1019, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1003, file: !1004, line: 61, baseType: !1032, size: 256)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !1004, line: 55, size: 256, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1039}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1032, file: !1004, line: 56, baseType: !792, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1032, file: !1004, line: 57, baseType: !1011, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1032, file: !1004, line: 58, baseType: !135, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1032, file: !1004, line: 59, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !320, line: 94, baseType: !321)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1032, file: !1004, line: 60, baseType: !1038, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1003, file: !1004, line: 95, baseType: !1041, size: 256)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !1004, line: 64, size: 256, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1041, file: !1004, line: 65, baseType: !113, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !1004, line: 77, baseType: !1045, size: 192, offset: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1041, file: !1004, line: 77, size: 192, elements: !1046)
!1046 = !{!1047, !1048, !1055}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1045, file: !1004, line: 82, baseType: !530, size: 16)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1045, file: !1004, line: 88, baseType: !1049, size: 192)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1045, file: !1004, line: 84, size: 192, elements: !1050)
!1050 = !{!1051, !1053, !1054}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1049, file: !1004, line: 85, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !654)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1049, file: !1004, line: 86, baseType: !113, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1049, file: !1004, line: 87, baseType: !113, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1045, file: !1004, line: 93, baseType: !1056, size: 96)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1045, file: !1004, line: 90, size: 96, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1056, file: !1004, line: 91, baseType: !1052, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1056, file: !1004, line: 92, baseType: !82, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1003, file: !1004, line: 101, baseType: !1061, size: 128)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !1004, line: 98, size: 128, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1061, file: !1004, line: 99, baseType: !114, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1061, file: !1004, line: 100, baseType: !135, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1003, file: !1004, line: 108, baseType: !1066, size: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !1004, line: 104, size: 128, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1066, file: !1004, line: 105, baseType: !113, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1066, file: !1004, line: 106, baseType: !135, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1066, file: !1004, line: 107, baseType: !7, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !542, file: !543, line: 1067, baseType: !1072, offset: 11136)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1073, line: 12, elements: !262)
!1073 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !542, file: !543, line: 1099, baseType: !1075, size: 64, offset: 11136)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !543, line: 56, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !542, file: !543, line: 1103, baseType: !235, size: 128, offset: 11200)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !542, file: !543, line: 1104, baseType: !1079, size: 64, offset: 11328)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !543, line: 46, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !542, file: !543, line: 1105, baseType: !496, size: 192, offset: 11392)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !542, file: !543, line: 1106, baseType: !7, size: 32, offset: 11584)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !542, file: !543, line: 1109, baseType: !1084, size: 128, offset: 11648)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1085, size: 128, elements: !66)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !543, line: 51, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !542, file: !543, line: 1110, baseType: !496, size: 192, offset: 11776)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !542, file: !543, line: 1111, baseType: !235, size: 128, offset: 11968)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !542, file: !543, line: 1173, baseType: !1090, size: 64, offset: 12096)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1092, line: 62, size: 256, align: 256, elements: !1093)
!1092 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095, !1096, !1101}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1091, file: !1092, line: 75, baseType: !82, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1091, file: !1092, line: 90, baseType: !82, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1091, file: !1092, line: 124, baseType: !1097, size: 64, offset: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !1092, line: 109, size: 64, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1097, file: !1092, line: 110, baseType: !404, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1097, file: !1092, line: 112, baseType: !404, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1091, file: !1092, line: 144, baseType: !82, size: 32, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !542, file: !543, line: 1174, baseType: !551, size: 32, offset: 12160)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !542, file: !543, line: 1179, baseType: !112, size: 64, offset: 12224)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !542, file: !543, line: 1182, baseType: !1105, size: 128, offset: 12288)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !476, line: 76, size: 128, elements: !1106)
!1106 = !{!1107, !1112, !1115}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1105, file: !476, line: 85, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1109, line: 7, size: 64, elements: !1110)
!1109 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1108, file: !1109, line: 12, baseType: !701, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1105, file: !476, line: 88, baseType: !1113, size: 8, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !111, line: 30, baseType: !1114)
!1114 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1105, file: !476, line: 95, baseType: !1113, size: 8, offset: 72)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !543, line: 1184, baseType: !1117, size: 128, offset: 12416)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !543, line: 1184, size: 128, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1117, file: !543, line: 1185, baseType: !556, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1117, file: !543, line: 1186, baseType: !830, size: 128, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !542, file: !543, line: 1190, baseType: !1122, size: 64, offset: 12544)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !543, line: 53, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !542, file: !543, line: 1192, baseType: !1125, size: 128, offset: 12608)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !476, line: 64, size: 128, elements: !1126)
!1126 = !{!1127, !1220, !1221}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1125, file: !476, line: 65, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !375, line: 68, size: 512, align: 128, elements: !1130)
!1130 = !{!1131, !1132, !1212, !1219}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !375, line: 69, baseType: !112, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !375, line: 77, baseType: !1133, size: 320, offset: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !375, line: 77, size: 320, elements: !1134)
!1134 = !{!1135, !1144, !1149, !1177, !1185, !1191, !1204, !1211}
!1135 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !375, line: 78, baseType: !1136, size: 320)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !375, line: 78, size: 320, elements: !1137)
!1137 = !{!1138, !1139, !1142, !1143}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1136, file: !375, line: 84, baseType: !235, size: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1136, file: !375, line: 86, baseType: !1140, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !375, line: 26, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1136, file: !375, line: 87, baseType: !112, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1136, file: !375, line: 94, baseType: !112, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !375, line: 96, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !375, line: 96, size: 64, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1145, file: !375, line: 101, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !111, line: 143, baseType: !403)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !375, line: 103, baseType: !1150, size: 320)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !375, line: 103, size: 320, elements: !1151)
!1151 = !{!1152, !1162, !1165, !1166}
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !375, line: 104, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !375, line: 104, size: 128, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1153, file: !375, line: 105, baseType: !235, size: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !375, line: 106, baseType: !1157, size: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1153, file: !375, line: 106, size: 128, elements: !1158)
!1158 = !{!1159, !1160, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1157, file: !375, line: 107, baseType: !1128, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1157, file: !375, line: 109, baseType: !135, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1157, file: !375, line: 110, baseType: !135, size: 32, offset: 96)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1150, file: !375, line: 117, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !375, line: 117, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1150, file: !375, line: 119, baseType: !113, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !375, line: 120, baseType: !1167, size: 64, offset: 256)
!1167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !375, line: 120, size: 64, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1167, file: !375, line: 121, baseType: !113, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1167, file: !375, line: 122, baseType: !112, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !375, line: 123, baseType: !1172, size: 32)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !375, line: 123, size: 32, elements: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1172, file: !375, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1172, file: !375, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1172, file: !375, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !375, line: 130, baseType: !1178, size: 192)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !375, line: 130, size: 192, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1178, file: !375, line: 131, baseType: !112, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1178, file: !375, line: 134, baseType: !687, size: 8, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1178, file: !375, line: 135, baseType: !687, size: 8, offset: 72)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1178, file: !375, line: 136, baseType: !423, size: 32, offset: 96)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1178, file: !375, line: 137, baseType: !7, size: 32, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !375, line: 139, baseType: !1186, size: 256)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !375, line: 139, size: 256, elements: !1187)
!1187 = !{!1188, !1189, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1186, file: !375, line: 140, baseType: !112, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1186, file: !375, line: 141, baseType: !423, size: 32, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1186, file: !375, line: 143, baseType: !235, size: 128, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !375, line: 145, baseType: !1192, size: 256)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !375, line: 145, size: 256, elements: !1193)
!1193 = !{!1194, !1195, !1197, !1198, !1203}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1192, file: !375, line: 146, baseType: !112, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1192, file: !375, line: 147, baseType: !1196, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !365, line: 509, baseType: !1128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1192, file: !375, line: 148, baseType: !112, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !375, line: 149, baseType: !1199, size: 64, offset: 192)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !375, line: 149, size: 64, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1199, file: !375, line: 150, baseType: !391, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1199, file: !375, line: 151, baseType: !423, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1192, file: !375, line: 156, baseType: !248, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !375, line: 159, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !375, line: 159, size: 128, elements: !1206)
!1206 = !{!1207, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1205, file: !375, line: 161, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !375, line: 161, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1205, file: !375, line: 162, baseType: !113, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1133, file: !375, line: 176, baseType: !830, size: 128, align: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !375, line: 179, baseType: !1213, size: 32, offset: 384)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !375, line: 179, size: 32, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1213, file: !375, line: 184, baseType: !423, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1213, file: !375, line: 192, baseType: !7, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1213, file: !375, line: 194, baseType: !7, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1213, file: !375, line: 195, baseType: !135, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1129, file: !375, line: 199, baseType: !423, size: 32, offset: 416)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1125, file: !476, line: 67, baseType: !82, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1125, file: !476, line: 68, baseType: !82, size: 32, offset: 96)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !542, file: !543, line: 1206, baseType: !135, size: 32, offset: 12736)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !542, file: !543, line: 1207, baseType: !135, size: 32, offset: 12768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !542, file: !543, line: 1209, baseType: !112, size: 64, offset: 12800)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !542, file: !543, line: 1219, baseType: !403, size: 64, offset: 12864)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !542, file: !543, line: 1220, baseType: !403, size: 64, offset: 12928)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !542, file: !543, line: 1317, baseType: !135, size: 32, offset: 12992)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !542, file: !543, line: 1319, baseType: !541, size: 64, offset: 13056)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !542, file: !543, line: 1322, baseType: !1230, size: 64, offset: 13120)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1232, line: 56, size: 512, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1240, !1241, !1243}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1231, file: !1232, line: 57, baseType: !1230, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1231, file: !1232, line: 58, baseType: !113, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1231, file: !1232, line: 59, baseType: !112, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1231, file: !1232, line: 60, baseType: !112, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1231, file: !1232, line: 61, baseType: !1239, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1231, file: !1232, line: 62, baseType: !7, size: 32, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1231, file: !1232, line: 63, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !111, line: 153, baseType: !403)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1231, file: !1232, line: 64, baseType: !1244, size: 64, offset: 448)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !542, file: !543, line: 1326, baseType: !556, size: 32, offset: 13184)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !542, file: !543, line: 1342, baseType: !113, size: 64, offset: 13248)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !542, file: !543, line: 1343, baseType: !404, size: 64, offset: 13312)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !542, file: !543, line: 1344, baseType: !403, size: 64, offset: 13376)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !542, file: !543, line: 1345, baseType: !404, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !542, file: !543, line: 1346, baseType: !404, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !542, file: !543, line: 1347, baseType: !404, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !542, file: !543, line: 1348, baseType: !830, size: 128, align: 64, offset: 13504)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !542, file: !543, line: 1358, baseType: !1255, size: 34816, offset: 13824)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1256, line: 485, size: 34816, elements: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1287, !1288, !1289, !1290, !1291, !1292, !1295, !1296, !1297}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1255, file: !1256, line: 487, baseType: !1259, size: 192)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 192, elements: !290)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1261, line: 16, size: 64, elements: !1262)
!1261 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1260, file: !1261, line: 17, baseType: !525, size: 16)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1260, file: !1261, line: 18, baseType: !525, size: 16, offset: 16)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1260, file: !1261, line: 19, baseType: !525, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1260, file: !1261, line: 19, baseType: !525, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1260, file: !1261, line: 19, baseType: !525, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1260, file: !1261, line: 19, baseType: !525, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1260, file: !1261, line: 19, baseType: !525, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1260, file: !1261, line: 20, baseType: !525, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1260, file: !1261, line: 20, baseType: !525, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1260, file: !1261, line: 20, baseType: !525, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1260, file: !1261, line: 20, baseType: !525, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1260, file: !1261, line: 20, baseType: !525, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1260, file: !1261, line: 20, baseType: !525, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1255, file: !1256, line: 491, baseType: !112, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1255, file: !1256, line: 495, baseType: !328, size: 16, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1255, file: !1256, line: 496, baseType: !328, size: 16, offset: 272)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1255, file: !1256, line: 497, baseType: !328, size: 16, offset: 288)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1255, file: !1256, line: 498, baseType: !328, size: 16, offset: 304)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1255, file: !1256, line: 502, baseType: !112, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1255, file: !1256, line: 503, baseType: !112, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1255, file: !1256, line: 514, baseType: !1284, size: 256, offset: 448)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1285, size: 256, elements: !94)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1256, line: 483, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1255, file: !1256, line: 516, baseType: !112, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1255, file: !1256, line: 518, baseType: !112, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1255, file: !1256, line: 520, baseType: !112, size: 64, offset: 832)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1255, file: !1256, line: 521, baseType: !112, size: 64, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1255, file: !1256, line: 522, baseType: !112, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1255, file: !1256, line: 528, baseType: !1293, size: 64, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1256, line: 10, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1255, file: !1256, line: 535, baseType: !112, size: 64, offset: 1088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1255, file: !1256, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1255, file: !1256, line: 540, baseType: !1298, size: 33280, offset: 1536)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1299, line: 317, size: 33280, elements: !1300)
!1299 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1300 = !{!1301, !1302, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1298, file: !1299, line: 330, baseType: !7, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1298, file: !1299, line: 337, baseType: !112, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1298, file: !1299, line: 348, baseType: !1304, size: 32768, offset: 512)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1299, line: 304, size: 32768, elements: !1305)
!1305 = !{!1306, !1321, !1360, !1410, !1427}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1304, file: !1299, line: 305, baseType: !1307, size: 896)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1299, line: 12, size: 896, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1320}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1307, file: !1299, line: 13, baseType: !551, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1307, file: !1299, line: 14, baseType: !551, size: 32, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1307, file: !1299, line: 15, baseType: !551, size: 32, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1307, file: !1299, line: 16, baseType: !551, size: 32, offset: 96)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1307, file: !1299, line: 17, baseType: !551, size: 32, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1307, file: !1299, line: 18, baseType: !551, size: 32, offset: 160)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1307, file: !1299, line: 19, baseType: !551, size: 32, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1307, file: !1299, line: 22, baseType: !1317, size: 640, offset: 224)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 640, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 20)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1307, file: !1299, line: 25, baseType: !551, size: 32, offset: 864)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1304, file: !1299, line: 306, baseType: !1322, size: 4096, align: 128)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1299, line: 34, size: 4096, align: 128, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1343, !1344, !1345, !1349, !1351, !1355}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1322, file: !1299, line: 35, baseType: !525, size: 16)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1322, file: !1299, line: 36, baseType: !525, size: 16, offset: 16)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1322, file: !1299, line: 37, baseType: !525, size: 16, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1322, file: !1299, line: 38, baseType: !525, size: 16, offset: 48)
!1328 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !1299, line: 39, baseType: !1329, size: 128, offset: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !1299, line: 39, size: 128, elements: !1330)
!1330 = !{!1331, !1336}
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !1299, line: 40, baseType: !1332, size: 128)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1329, file: !1299, line: 40, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1332, file: !1299, line: 41, baseType: !403, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1332, file: !1299, line: 42, baseType: !403, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !1299, line: 44, baseType: !1337, size: 128)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1329, file: !1299, line: 44, size: 128, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1337, file: !1299, line: 45, baseType: !551, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1337, file: !1299, line: 46, baseType: !551, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1337, file: !1299, line: 47, baseType: !551, size: 32, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1337, file: !1299, line: 48, baseType: !551, size: 32, offset: 96)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1322, file: !1299, line: 51, baseType: !551, size: 32, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1322, file: !1299, line: 52, baseType: !551, size: 32, offset: 224)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1322, file: !1299, line: 55, baseType: !1346, size: 1024, offset: 256)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 1024, elements: !1347)
!1347 = !{!1348}
!1348 = !DISubrange(count: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1322, file: !1299, line: 58, baseType: !1350, size: 2048, offset: 1280)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 2048, elements: !147)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1322, file: !1299, line: 60, baseType: !1352, size: 384, offset: 3328)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 384, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: 12)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !1299, line: 62, baseType: !1356, size: 384, offset: 3712)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !1299, line: 62, size: 384, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1356, file: !1299, line: 63, baseType: !1352, size: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1356, file: !1299, line: 64, baseType: !1352, size: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1304, file: !1299, line: 307, baseType: !1361, size: 1088)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1299, line: 79, size: 1088, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1409}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1361, file: !1299, line: 80, baseType: !551, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1361, file: !1299, line: 81, baseType: !551, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1361, file: !1299, line: 82, baseType: !551, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1361, file: !1299, line: 83, baseType: !551, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1361, file: !1299, line: 84, baseType: !551, size: 32, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1361, file: !1299, line: 85, baseType: !551, size: 32, offset: 160)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1361, file: !1299, line: 86, baseType: !551, size: 32, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1361, file: !1299, line: 88, baseType: !1317, size: 640, offset: 224)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1361, file: !1299, line: 89, baseType: !685, size: 8, offset: 864)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1361, file: !1299, line: 90, baseType: !685, size: 8, offset: 872)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1361, file: !1299, line: 91, baseType: !685, size: 8, offset: 880)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1361, file: !1299, line: 92, baseType: !685, size: 8, offset: 888)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1361, file: !1299, line: 93, baseType: !685, size: 8, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1361, file: !1299, line: 94, baseType: !685, size: 8, offset: 904)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1361, file: !1299, line: 95, baseType: !1378, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1380, line: 11, size: 128, elements: !1381)
!1380 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1379, file: !1380, line: 12, baseType: !114, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1379, file: !1380, line: 13, baseType: !1384, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1386, line: 56, size: 1344, elements: !1387)
!1386 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1385, file: !1386, line: 61, baseType: !112, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1385, file: !1386, line: 62, baseType: !112, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1385, file: !1386, line: 63, baseType: !112, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1385, file: !1386, line: 64, baseType: !112, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1385, file: !1386, line: 65, baseType: !112, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1385, file: !1386, line: 66, baseType: !112, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1385, file: !1386, line: 68, baseType: !112, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1385, file: !1386, line: 69, baseType: !112, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1385, file: !1386, line: 70, baseType: !112, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1385, file: !1386, line: 71, baseType: !112, size: 64, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1385, file: !1386, line: 72, baseType: !112, size: 64, offset: 640)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1385, file: !1386, line: 73, baseType: !112, size: 64, offset: 704)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1385, file: !1386, line: 74, baseType: !112, size: 64, offset: 768)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1385, file: !1386, line: 75, baseType: !112, size: 64, offset: 832)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1385, file: !1386, line: 76, baseType: !112, size: 64, offset: 896)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1385, file: !1386, line: 81, baseType: !112, size: 64, offset: 960)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1385, file: !1386, line: 83, baseType: !112, size: 64, offset: 1024)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1385, file: !1386, line: 84, baseType: !112, size: 64, offset: 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1385, file: !1386, line: 85, baseType: !112, size: 64, offset: 1152)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1385, file: !1386, line: 86, baseType: !112, size: 64, offset: 1216)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1385, file: !1386, line: 87, baseType: !112, size: 64, offset: 1280)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1361, file: !1299, line: 96, baseType: !551, size: 32, offset: 1024)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1304, file: !1299, line: 308, baseType: !1411, size: 4608, align: 512)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1299, line: 289, size: 4608, align: 512, elements: !1412)
!1412 = !{!1413, !1414, !1423}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1411, file: !1299, line: 290, baseType: !1322, size: 4096, align: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1411, file: !1299, line: 291, baseType: !1415, size: 512, offset: 4096)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1299, line: 268, size: 512, elements: !1416)
!1416 = !{!1417, !1418, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1415, file: !1299, line: 269, baseType: !403, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1415, file: !1299, line: 270, baseType: !403, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1415, file: !1299, line: 271, baseType: !1420, size: 384, offset: 128)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 384, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 6)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1411, file: !1299, line: 292, baseType: !1424, offset: 4608)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: 0)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1304, file: !1299, line: 309, baseType: !1428, size: 32768)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 32768, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 4096)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !375, line: 378, baseType: !1432, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !534, file: !375, line: 384, baseType: !852, size: 192, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !395, file: !375, line: 500, baseType: !248, offset: 6656)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !395, file: !375, line: 501, baseType: !1436, size: 64, offset: 6656)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !375, line: 387, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !395, file: !375, line: 516, baseType: !1439, size: 64, offset: 6720)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1441, line: 18, flags: DIFlagFwdDecl)
!1441 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !395, file: !375, line: 519, baseType: !363, size: 64, offset: 6784)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !395, file: !375, line: 521, baseType: !1444, size: 64, offset: 6848)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !375, line: 521, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !395, file: !375, line: 545, baseType: !423, size: 32, offset: 6912)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !395, file: !375, line: 548, baseType: !1113, size: 8, offset: 6944)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !395, file: !375, line: 550, baseType: !1449, offset: 6952)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1450, line: 142, elements: !262)
!1450 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !395, file: !375, line: 554, baseType: !1452, size: 256, offset: 6976)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1453, line: 102, size: 256, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1452, file: !1453, line: 103, baseType: !431, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1452, file: !1453, line: 104, baseType: !235, size: 128, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1452, file: !1453, line: 105, baseType: !1458, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1453, line: 21, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !395, file: !375, line: 557, baseType: !551, size: 32, offset: 7232)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !392, file: !375, line: 565, baseType: !1465, offset: 7296)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !1466)
!1466 = !{!1467}
!1467 = !DISubrange(count: -1)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !374, file: !375, line: 333, baseType: !1469, size: 64, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !365, line: 284, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !365, line: 284, size: 64, elements: !1471)
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1470, file: !365, line: 284, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !421, line: 19, baseType: !112)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !374, file: !375, line: 334, baseType: !112, size: 64, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !374, file: !375, line: 343, baseType: !1476, size: 256, offset: 704)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !375, line: 340, size: 256, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1476, file: !375, line: 341, baseType: !382, size: 192, align: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1476, file: !375, line: 342, baseType: !112, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !374, file: !375, line: 351, baseType: !235, size: 128, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !374, file: !375, line: 353, baseType: !1482, size: 64, offset: 1088)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !375, line: 353, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !374, file: !375, line: 356, baseType: !1485, size: 64, offset: 1152)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !375, line: 356, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !374, file: !375, line: 359, baseType: !112, size: 64, offset: 1216)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !374, file: !375, line: 361, baseType: !363, size: 64, offset: 1280)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !374, file: !375, line: 362, baseType: !113, size: 64, offset: 1344)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !374, file: !375, line: 365, baseType: !431, size: 64, offset: 1408)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !374, file: !375, line: 373, baseType: !1493, offset: 1472)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !375, line: 296, elements: !262)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !342, file: !312, line: 90, baseType: !337, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !342, file: !312, line: 91, baseType: !1496, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !302, file: !229, line: 143, baseType: !1498, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!1501, !241}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1504)
!1504 = !{!1505, !1506, !1510, !1514, !1520, !1524}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1503, file: !18, line: 40, baseType: !17, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1503, file: !18, line: 41, baseType: !1507, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1113}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1503, file: !18, line: 42, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!113}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1503, file: !18, line: 43, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1244, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1503, file: !18, line: 44, baseType: !1521, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1244}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1503, file: !18, line: 45, baseType: !1525, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !113}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !302, file: !229, line: 144, baseType: !1529, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1244, !241}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !302, file: !229, line: 145, baseType: !1533, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !241, !1536, !1542}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1441, line: 23, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1441, line: 21, size: 32, elements: !1539)
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1538, file: !1441, line: 22, baseType: !1541, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !111, line: 32, baseType: !1011)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1441, line: 28, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1441, line: 26, size: 32, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1544, file: !1441, line: 27, baseType: !1547, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !111, line: 33, baseType: !1548)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !320, line: 50, baseType: !7)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !228, file: !229, line: 70, baseType: !1550, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1552, line: 123, size: 1024, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1695, !1696, !1697, !1698, !1699}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1551, file: !1552, line: 124, baseType: !423, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1551, file: !1552, line: 125, baseType: !423, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1551, file: !1552, line: 135, baseType: !1550, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1551, file: !1552, line: 136, baseType: !232, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1551, file: !1552, line: 138, baseType: !382, size: 192, align: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1551, file: !1552, line: 140, baseType: !1244, size: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1551, file: !1552, line: 141, baseType: !7, size: 32, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !1552, line: 142, baseType: !1562, size: 256, offset: 512)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !1552, line: 142, size: 256, elements: !1563)
!1563 = !{!1564, !1618, !1622}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1562, file: !1552, line: 143, baseType: !1565, size: 192)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1552, line: 91, size: 192, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1565, file: !1552, line: 92, baseType: !112, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1565, file: !1552, line: 94, baseType: !399, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1565, file: !1552, line: 100, baseType: !1570, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1552, line: 180, size: 704, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1588, !1589, !1590, !1616, !1617}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1571, file: !1552, line: 182, baseType: !1550, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1571, file: !1552, line: 183, baseType: !7, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1571, file: !1552, line: 186, baseType: !1576, size: 192, offset: 128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1577, line: 19, size: 192, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1586, !1587}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1576, file: !1577, line: 20, baseType: !1580, size: 128)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1581, line: 292, size: 128, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1580, file: !1581, line: 293, baseType: !248)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1580, file: !1581, line: 295, baseType: !110, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1580, file: !1581, line: 296, baseType: !113, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1576, file: !1577, line: 21, baseType: !7, size: 32, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1576, file: !1577, line: 22, baseType: !7, size: 32, offset: 160)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1571, file: !1552, line: 187, baseType: !551, size: 32, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1571, file: !1552, line: 188, baseType: !551, size: 32, offset: 352)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1571, file: !1552, line: 189, baseType: !1591, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1552, line: 168, size: 320, elements: !1593)
!1593 = !{!1594, !1600, !1604, !1608, !1612}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1592, file: !1552, line: 169, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!135, !1598, !1570}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !365, line: 539, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1592, file: !1552, line: 171, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!135, !1550, !232, !327}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1592, file: !1552, line: 173, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!135, !1550}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1592, file: !1552, line: 174, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!135, !1550, !1550, !232}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1592, file: !1552, line: 176, baseType: !1613, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!135, !1598, !1550, !1570}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1571, file: !1552, line: 192, baseType: !235, size: 128, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1571, file: !1552, line: 194, baseType: !823, size: 128, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1562, file: !1552, line: 144, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1552, line: 103, size: 64, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1619, file: !1552, line: 104, baseType: !1550, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1562, file: !1552, line: 145, baseType: !1623, size: 256)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1552, line: 107, size: 256, elements: !1624)
!1624 = !{!1625, !1690, !1693, !1694}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1623, file: !1552, line: 108, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1552, line: 217, size: 768, elements: !1629)
!1629 = !{!1630, !1650, !1654, !1658, !1663, !1667, !1671, !1675, !1676, !1677, !1678, !1686}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1628, file: !1552, line: 222, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!135, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1552, line: 197, size: 1088, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1635, file: !1552, line: 199, baseType: !1550, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1635, file: !1552, line: 200, baseType: !363, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1635, file: !1552, line: 201, baseType: !1598, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1635, file: !1552, line: 202, baseType: !113, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1635, file: !1552, line: 205, baseType: !496, size: 192, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1635, file: !1552, line: 206, baseType: !496, size: 192, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1635, file: !1552, line: 207, baseType: !135, size: 32, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1635, file: !1552, line: 208, baseType: !235, size: 128, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1635, file: !1552, line: 209, baseType: !289, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1635, file: !1552, line: 211, baseType: !333, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1635, file: !1552, line: 212, baseType: !1113, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1635, file: !1552, line: 213, baseType: !1113, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1635, file: !1552, line: 214, baseType: !1485, size: 64, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1628, file: !1552, line: 223, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !1634}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1628, file: !1552, line: 236, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!135, !1598, !113}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1628, file: !1552, line: 238, baseType: !1659, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!113, !1598, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1628, file: !1552, line: 239, baseType: !1664, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!113, !1598, !113, !1662}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1628, file: !1552, line: 240, baseType: !1668, size: 64, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1598, !113}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1628, file: !1552, line: 242, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!318, !1634, !289, !333, !366}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1628, file: !1552, line: 252, baseType: !333, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1628, file: !1552, line: 259, baseType: !1113, size: 8, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1628, file: !1552, line: 260, baseType: !1672, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1628, file: !1552, line: 263, baseType: !1679, size: 64, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1682, !1634, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1683, line: 52, baseType: !7)
!1683 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1552, line: 27, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1628, file: !1552, line: 266, baseType: !1687, size: 64, offset: 704)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!135, !1634, !373}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1623, file: !1552, line: 109, baseType: !1691, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1552, line: 31, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1623, file: !1552, line: 110, baseType: !366, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1623, file: !1552, line: 111, baseType: !1550, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1551, file: !1552, line: 148, baseType: !113, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1551, file: !1552, line: 154, baseType: !403, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1551, file: !1552, line: 156, baseType: !328, size: 16, offset: 896)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1551, file: !1552, line: 157, baseType: !327, size: 16, offset: 912)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1551, file: !1552, line: 158, baseType: !1700, size: 64, offset: 960)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1552, line: 32, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !228, file: !229, line: 71, baseType: !1703, size: 32, offset: 448)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1704, line: 19, size: 32, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1703, file: !1704, line: 20, baseType: !556, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !228, file: !229, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !228, file: !229, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !228, file: !229, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !228, file: !229, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !228, file: !229, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !30, line: 463, baseType: !224, size: 64, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !225, file: !30, line: 465, baseType: !1714, size: 64, offset: 576)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !225, file: !30, line: 467, baseType: !232, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !30, line: 468, baseType: !1718, size: 64, offset: 704)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1728, !1733, !1737}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1720, file: !30, line: 88, baseType: !232, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1720, file: !30, line: 89, baseType: !339, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1720, file: !30, line: 90, baseType: !1725, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!135, !224, !284}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1720, file: !30, line: 91, baseType: !1729, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!289, !224, !1732, !1536, !1542}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1720, file: !30, line: 93, baseType: !1734, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !224}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1720, file: !30, line: 95, baseType: !1738, size: 64, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1741)
!1741 = !{!1742, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1740, file: !37, line: 279, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!135, !224}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1740, file: !37, line: 280, baseType: !1734, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1740, file: !37, line: 281, baseType: !1743, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1740, file: !37, line: 282, baseType: !1743, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1740, file: !37, line: 283, baseType: !1743, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1740, file: !37, line: 284, baseType: !1743, size: 64, offset: 320)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1740, file: !37, line: 285, baseType: !1743, size: 64, offset: 384)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1740, file: !37, line: 286, baseType: !1743, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1740, file: !37, line: 287, baseType: !1743, size: 64, offset: 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1740, file: !37, line: 288, baseType: !1743, size: 64, offset: 576)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1740, file: !37, line: 289, baseType: !1743, size: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1740, file: !37, line: 290, baseType: !1743, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1740, file: !37, line: 291, baseType: !1743, size: 64, offset: 768)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1740, file: !37, line: 292, baseType: !1743, size: 64, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1740, file: !37, line: 293, baseType: !1743, size: 64, offset: 896)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1740, file: !37, line: 294, baseType: !1743, size: 64, offset: 960)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1740, file: !37, line: 295, baseType: !1743, size: 64, offset: 1024)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1740, file: !37, line: 296, baseType: !1743, size: 64, offset: 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1740, file: !37, line: 297, baseType: !1743, size: 64, offset: 1152)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1740, file: !37, line: 298, baseType: !1743, size: 64, offset: 1216)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1740, file: !37, line: 299, baseType: !1743, size: 64, offset: 1280)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1740, file: !37, line: 300, baseType: !1743, size: 64, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1740, file: !37, line: 301, baseType: !1743, size: 64, offset: 1408)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !225, file: !30, line: 470, baseType: !1769, size: 64, offset: 768)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1771, line: 82, size: 1408, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1855, !1858, !1861}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1770, file: !1771, line: 83, baseType: !232, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1770, file: !1771, line: 84, baseType: !232, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1770, file: !1771, line: 85, baseType: !224, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1770, file: !1771, line: 86, baseType: !339, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1770, file: !1771, line: 87, baseType: !339, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1770, file: !1771, line: 88, baseType: !339, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1770, file: !1771, line: 90, baseType: !1780, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!135, !224, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1806, !1819, !1820, !1821, !1822, !1823, !1831, !1832, !1833, !1834, !1835, !1836}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1784, file: !24, line: 96, baseType: !232, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1784, file: !24, line: 97, baseType: !1769, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1784, file: !24, line: 99, baseType: !107, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1784, file: !24, line: 100, baseType: !232, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1784, file: !24, line: 102, baseType: !1113, size: 8, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1784, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1784, file: !24, line: 105, baseType: !1793, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1796, line: 262, size: 1600, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1800, !1801, !1805}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1795, file: !1796, line: 263, baseType: !1799, size: 256)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !1347)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1795, file: !1796, line: 264, baseType: !1799, size: 256, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1795, file: !1796, line: 265, baseType: !1802, size: 1024, offset: 512)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !1803)
!1803 = !{!1804}
!1804 = !DISubrange(count: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1795, file: !1796, line: 266, baseType: !1244, size: 64, offset: 1536)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1784, file: !24, line: 106, baseType: !1807, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1796, line: 210, size: 256, elements: !1810)
!1810 = !{!1811, !1815, !1817, !1818}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1809, file: !1796, line: 211, baseType: !1812, size: 72)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 72, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 9)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1809, file: !1796, line: 212, baseType: !1816, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1796, line: 14, baseType: !112)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1809, file: !1796, line: 213, baseType: !82, size: 32, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1809, file: !1796, line: 214, baseType: !82, size: 32, offset: 224)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1784, file: !24, line: 108, baseType: !1743, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1784, file: !24, line: 109, baseType: !1734, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1784, file: !24, line: 110, baseType: !1743, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1784, file: !24, line: 111, baseType: !1734, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1784, file: !24, line: 112, baseType: !1824, size: 64, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!135, !224, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1829)
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1828, file: !37, line: 51, baseType: !135, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1784, file: !24, line: 113, baseType: !1743, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1784, file: !24, line: 114, baseType: !339, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1784, file: !24, line: 115, baseType: !339, size: 64, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1784, file: !24, line: 117, baseType: !1738, size: 64, offset: 960)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1784, file: !24, line: 118, baseType: !1734, size: 64, offset: 1024)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1784, file: !24, line: 120, baseType: !1837, size: 64, offset: 1088)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1770, file: !1771, line: 91, baseType: !1725, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1770, file: !1771, line: 92, baseType: !1743, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1770, file: !1771, line: 93, baseType: !1734, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1770, file: !1771, line: 94, baseType: !1743, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1770, file: !1771, line: 95, baseType: !1734, size: 64, offset: 704)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1770, file: !1771, line: 97, baseType: !1743, size: 64, offset: 768)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1770, file: !1771, line: 98, baseType: !1743, size: 64, offset: 832)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1770, file: !1771, line: 100, baseType: !1824, size: 64, offset: 896)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1770, file: !1771, line: 101, baseType: !1743, size: 64, offset: 960)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1770, file: !1771, line: 103, baseType: !1743, size: 64, offset: 1024)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1770, file: !1771, line: 105, baseType: !1743, size: 64, offset: 1088)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1770, file: !1771, line: 107, baseType: !1738, size: 64, offset: 1152)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1770, file: !1771, line: 109, baseType: !1852, size: 64, offset: 1216)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1854)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1771, line: 109, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1770, file: !1771, line: 111, baseType: !1856, size: 64, offset: 1280)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1771, line: 111, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1770, file: !1771, line: 112, baseType: !1859, offset: 1344)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1860, line: 187, elements: !262)
!1860 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1770, file: !1771, line: 114, baseType: !1113, size: 8, offset: 1344)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !225, file: !30, line: 471, baseType: !1783, size: 64, offset: 832)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !225, file: !30, line: 473, baseType: !113, size: 64, offset: 896)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !225, file: !30, line: 475, baseType: !113, size: 64, offset: 960)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !225, file: !30, line: 480, baseType: !496, size: 192, offset: 1024)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !225, file: !30, line: 484, baseType: !1867, size: 576, offset: 1216)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1867, file: !30, line: 362, baseType: !235, size: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1867, file: !30, line: 363, baseType: !235, size: 128, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1867, file: !30, line: 364, baseType: !235, size: 128, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1867, file: !30, line: 365, baseType: !235, size: 128, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1867, file: !30, line: 366, baseType: !1113, size: 8, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1867, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !225, file: !30, line: 485, baseType: !1876, size: 2304, offset: 1792)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1973, !1977}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1876, file: !37, line: 566, baseType: !1827, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1876, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1876, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1876, file: !37, line: 569, baseType: !1113, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1876, file: !37, line: 570, baseType: !1113, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1876, file: !37, line: 571, baseType: !1113, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1876, file: !37, line: 572, baseType: !1113, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1876, file: !37, line: 573, baseType: !1113, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1876, file: !37, line: 574, baseType: !1113, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1876, file: !37, line: 575, baseType: !1113, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1876, file: !37, line: 576, baseType: !1113, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1876, file: !37, line: 577, baseType: !551, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !37, line: 578, baseType: !248, offset: 96)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1876, file: !37, line: 580, baseType: !235, size: 128, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1876, file: !37, line: 581, baseType: !852, size: 192, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1876, file: !37, line: 582, baseType: !1894, size: 64, offset: 448)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1896, line: 43, size: 1472, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1905, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1895, file: !1896, line: 44, baseType: !232, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1895, file: !1896, line: 45, baseType: !135, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1895, file: !1896, line: 46, baseType: !235, size: 128, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1895, file: !1896, line: 47, baseType: !248, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1895, file: !1896, line: 48, baseType: !1903, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1895, file: !1896, line: 49, baseType: !1906, size: 320, offset: 320)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1907, line: 11, size: 320, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !{!1909, !1910, !1911, !1916}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1906, file: !1907, line: 16, baseType: !816, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1906, file: !1907, line: 17, baseType: !112, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1906, file: !1907, line: 18, baseType: !1912, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1915}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1906, file: !1907, line: 19, baseType: !551, size: 32, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1895, file: !1896, line: 50, baseType: !112, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1895, file: !1896, line: 51, baseType: !200, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1895, file: !1896, line: 52, baseType: !200, size: 64, offset: 768)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1895, file: !1896, line: 53, baseType: !200, size: 64, offset: 832)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1895, file: !1896, line: 54, baseType: !200, size: 64, offset: 896)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1895, file: !1896, line: 55, baseType: !200, size: 64, offset: 960)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1895, file: !1896, line: 56, baseType: !112, size: 64, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1895, file: !1896, line: 57, baseType: !112, size: 64, offset: 1088)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1895, file: !1896, line: 58, baseType: !112, size: 64, offset: 1152)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1895, file: !1896, line: 59, baseType: !112, size: 64, offset: 1216)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1895, file: !1896, line: 60, baseType: !112, size: 64, offset: 1280)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1895, file: !1896, line: 61, baseType: !224, size: 64, offset: 1344)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1895, file: !1896, line: 62, baseType: !1113, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1895, file: !1896, line: 63, baseType: !1113, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1876, file: !37, line: 583, baseType: !1113, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1876, file: !37, line: 584, baseType: !1113, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1876, file: !37, line: 585, baseType: !1113, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1876, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1876, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1876, file: !37, line: 592, baseType: !618, size: 512, offset: 576)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1876, file: !37, line: 593, baseType: !403, size: 64, offset: 1088)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1876, file: !37, line: 594, baseType: !1452, size: 256, offset: 1152)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1876, file: !37, line: 595, baseType: !823, size: 128, offset: 1408)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1876, file: !37, line: 596, baseType: !1903, size: 64, offset: 1536)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1876, file: !37, line: 597, baseType: !423, size: 32, offset: 1600)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1876, file: !37, line: 598, baseType: !423, size: 32, offset: 1632)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1876, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1876, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1876, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1876, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1876, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1876, file: !37, line: 604, baseType: !1113, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1876, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1876, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1876, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1876, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1876, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1876, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1876, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1876, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1876, file: !37, line: 613, baseType: !135, size: 32, offset: 1792)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1876, file: !37, line: 614, baseType: !135, size: 32, offset: 1824)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1876, file: !37, line: 615, baseType: !403, size: 64, offset: 1856)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1876, file: !37, line: 616, baseType: !403, size: 64, offset: 1920)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1876, file: !37, line: 617, baseType: !403, size: 64, offset: 1984)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1876, file: !37, line: 618, baseType: !403, size: 64, offset: 2048)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1876, file: !37, line: 620, baseType: !1964, size: 64, offset: 2112)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1965, file: !37, line: 537, baseType: !248)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1965, file: !37, line: 538, baseType: !7, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1965, file: !37, line: 540, baseType: !235, size: 128, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1965, file: !37, line: 543, baseType: !1971, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1876, file: !37, line: 621, baseType: !1974, size: 64, offset: 2176)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !224, !132}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1876, file: !37, line: 622, baseType: !1978, size: 64, offset: 2240)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !225, file: !30, line: 486, baseType: !1981, size: 64, offset: 4096)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1990, !1991, !1992}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1982, file: !37, line: 643, baseType: !1740, size: 1472)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1982, file: !37, line: 644, baseType: !1743, size: 64, offset: 1472)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1982, file: !37, line: 645, baseType: !1987, size: 64, offset: 1536)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !224, !1113}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1982, file: !37, line: 646, baseType: !1743, size: 64, offset: 1600)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1982, file: !37, line: 647, baseType: !1734, size: 64, offset: 1664)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1982, file: !37, line: 648, baseType: !1734, size: 64, offset: 1728)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !225, file: !30, line: 493, baseType: !1994, size: 64, offset: 4160)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !225, file: !30, line: 499, baseType: !235, size: 128, offset: 4224)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !225, file: !30, line: 502, baseType: !1998, size: 64, offset: 4352)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2000)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !225, file: !30, line: 504, baseType: !2002, size: 64, offset: 4416)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !225, file: !30, line: 505, baseType: !403, size: 64, offset: 4480)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !225, file: !30, line: 510, baseType: !403, size: 64, offset: 4544)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !225, file: !30, line: 511, baseType: !2006, size: 64, offset: 4608)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !225, file: !30, line: 513, baseType: !2010, size: 64, offset: 4672)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2011, file: !30, line: 293, baseType: !7, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2011, file: !30, line: 294, baseType: !112, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !225, file: !30, line: 515, baseType: !235, size: 128, offset: 4736)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !225, file: !30, line: 526, baseType: !2017, offset: 4864)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2018, line: 5, elements: !262)
!2018 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !225, file: !30, line: 528, baseType: !2020, size: 64, offset: 4864)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2022, line: 14, flags: DIFlagFwdDecl)
!2022 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !225, file: !30, line: 529, baseType: !2024, size: 64, offset: 4928)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2026, line: 17, size: 192, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !{!2028, !2029, !2112}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2025, file: !2026, line: 18, baseType: !2024, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2025, file: !2026, line: 19, baseType: !2030, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2026, line: 110, size: 1152, elements: !2033)
!2033 = !{!2034, !2038, !2042, !2048, !2054, !2058, !2062, !2067, !2071, !2072, !2076, !2080, !2084, !2095, !2096, !2097, !2098, !2108}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2032, file: !2026, line: 111, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!2024, !2024}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2032, file: !2026, line: 112, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{null, !2024}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2032, file: !2026, line: 113, baseType: !2043, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!1113, !2046}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2032, file: !2026, line: 114, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!1244, !2046, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2032, file: !2026, line: 116, baseType: !2055, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1113, !2046, !232}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2032, file: !2026, line: 118, baseType: !2059, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!135, !2046, !232, !7, !113, !333}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2032, file: !2026, line: 123, baseType: !2063, size: 64, offset: 384)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!135, !2046, !232, !2066, !333}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2032, file: !2026, line: 126, baseType: !2068, size: 64, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!232, !2046}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2032, file: !2026, line: 127, baseType: !2068, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2032, file: !2026, line: 128, baseType: !2073, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!2024, !2046}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2032, file: !2026, line: 130, baseType: !2077, size: 64, offset: 640)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!2024, !2046, !2024}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2032, file: !2026, line: 133, baseType: !2081, size: 64, offset: 704)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!2024, !2046, !232}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2032, file: !2026, line: 135, baseType: !2085, size: 64, offset: 768)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!135, !2046, !232, !232, !7, !7, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2026, line: 43, size: 640, elements: !2090)
!2090 = !{!2091, !2092, !2093}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2089, file: !2026, line: 44, baseType: !2024, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2089, file: !2026, line: 45, baseType: !7, size: 32, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2089, file: !2026, line: 46, baseType: !2094, size: 512, offset: 128)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 512, elements: !654)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2032, file: !2026, line: 140, baseType: !2077, size: 64, offset: 832)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2032, file: !2026, line: 143, baseType: !2073, size: 64, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2032, file: !2026, line: 145, baseType: !2035, size: 64, offset: 960)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2032, file: !2026, line: 146, baseType: !2099, size: 64, offset: 1024)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!135, !2046, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2026, line: 29, size: 128, elements: !2104)
!2104 = !{!2105, !2106, !2107}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2103, file: !2026, line: 30, baseType: !7, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2103, file: !2026, line: 31, baseType: !7, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2103, file: !2026, line: 32, baseType: !2046, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2032, file: !2026, line: 148, baseType: !2109, size: 64, offset: 1088)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!135, !2046, !224}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2025, file: !2026, line: 20, baseType: !224, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !225, file: !30, line: 534, baseType: !2114, size: 32, offset: 4992)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !111, line: 16, baseType: !2115)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !111, line: 13, baseType: !551)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !225, file: !30, line: 535, baseType: !551, size: 32, offset: 5024)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !225, file: !30, line: 537, baseType: !248, offset: 5056)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !225, file: !30, line: 538, baseType: !235, size: 128, offset: 5056)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !225, file: !30, line: 540, baseType: !2120, size: 64, offset: 5184)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2122, line: 54, size: 960, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2129, !2130, !2134, !2138, !2139, !2140, !2141, !2145, !2149, !2150}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2121, file: !2122, line: 55, baseType: !232, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2121, file: !2122, line: 56, baseType: !107, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2121, file: !2122, line: 58, baseType: !339, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2121, file: !2122, line: 59, baseType: !339, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2121, file: !2122, line: 60, baseType: !241, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2121, file: !2122, line: 62, baseType: !1725, size: 64, offset: 320)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2121, file: !2122, line: 63, baseType: !2131, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!289, !224, !1732}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2121, file: !2122, line: 65, baseType: !2135, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2120}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2121, file: !2122, line: 66, baseType: !1734, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2121, file: !2122, line: 68, baseType: !1743, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2121, file: !2122, line: 70, baseType: !1501, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2121, file: !2122, line: 71, baseType: !2142, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!1244, !224}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2121, file: !2122, line: 73, baseType: !2146, size: 64, offset: 768)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !224, !1536, !1542}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2121, file: !2122, line: 75, baseType: !1738, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2121, file: !2122, line: 77, baseType: !1856, size: 64, offset: 896)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !225, file: !30, line: 541, baseType: !339, size: 64, offset: 5248)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !30, line: 543, baseType: !1734, size: 64, offset: 5312)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !225, file: !30, line: 544, baseType: !2154, size: 64, offset: 5376)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !225, file: !30, line: 545, baseType: !2157, size: 64, offset: 5440)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !225, file: !30, line: 547, baseType: !1113, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !225, file: !30, line: 548, baseType: !1113, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !225, file: !30, line: 549, baseType: !1113, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !225, file: !30, line: 550, baseType: !1113, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ts_ovf_last", scope: !116, file: !3, line: 56, baseType: !551, size: 32, offset: 1344)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ts_wrap_cnt", scope: !116, file: !3, line: 57, baseType: !551, size: 32, offset: 1376)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !116, file: !3, line: 58, baseType: !248, offset: 1408)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "reg_val", scope: !116, file: !3, line: 59, baseType: !2167, size: 128, offset: 1408)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 128, elements: !94)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2170 = !{!0, !2171, !2178, !2183, !2188, !2193, !2198, !2258, !2261, !2264}
!2171 = !DIGlobalVariableExpression(var: !2172, expr: !DIExpression())
!2172 = distinct !DIGlobalVariable(name: "__exitcall_ptp_dte_driver_exit", scope: !2, file: !3, line: 343, type: !2173, isLocal: true, isDefinition: true)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2174, line: 117, baseType: !2175)
!2174 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null}
!2178 = !DIGlobalVariableExpression(var: !2179, expr: !DIExpression())
!2179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author164", scope: !2, file: !3, line: 345, type: !2180, isLocal: true, isDefinition: true, align: 8)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 192, elements: !2181)
!2181 = !{!2182}
!2182 = !DISubrange(count: 24)
!2183 = !DIGlobalVariableExpression(var: !2184, expr: !DIExpression())
!2184 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description165", scope: !2, file: !3, line: 346, type: !2185, isLocal: true, isDefinition: true, align: 8)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 400, elements: !2186)
!2186 = !{!2187}
!2187 = !DISubrange(count: 50)
!2188 = !DIGlobalVariableExpression(var: !2189, expr: !DIExpression())
!2189 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file166", scope: !2, file: !3, line: 347, type: !2190, isLocal: true, isDefinition: true, align: 8)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 264, elements: !2191)
!2191 = !{!2192}
!2192 = !DISubrange(count: 33)
!2193 = !DIGlobalVariableExpression(var: !2194, expr: !DIExpression())
!2194 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license167", scope: !2, file: !3, line: 347, type: !2195, isLocal: true, isDefinition: true, align: 8)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 184, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 23)
!2198 = !DIGlobalVariableExpression(var: !2199, expr: !DIExpression())
!2199 = distinct !DIGlobalVariable(name: "ptp_dte_driver", scope: !2, file: !3, line: 334, type: !2200, isLocal: true, isDefinition: true)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2201, line: 200, size: 1600, elements: !2202)
!2201 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2202 = !{!2203, !2245, !2246, !2250, !2254, !2255, !2256, !2257}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2200, file: !2201, line: 201, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!135, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2201, line: 22, size: 6208, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2231, !2239, !2240, !2243}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2208, file: !2201, line: 23, baseType: !232, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2208, file: !2201, line: 24, baseType: !135, size: 32, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2208, file: !2201, line: 25, baseType: !1113, size: 8, offset: 96)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2208, file: !2201, line: 26, baseType: !225, size: 5568, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2208, file: !2201, line: 27, baseType: !403, size: 64, offset: 5696)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2208, file: !2201, line: 28, baseType: !2011, size: 128, offset: 5760)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2208, file: !2201, line: 29, baseType: !551, size: 32, offset: 5888)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2208, file: !2201, line: 30, baseType: !2218, size: 64, offset: 5952)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2220, line: 20, size: 512, elements: !2221)
!2220 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !{!2222, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2219, file: !2220, line: 21, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !111, line: 158, baseType: !1242)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2219, file: !2220, line: 22, baseType: !2223, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2219, file: !2220, line: 23, baseType: !232, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2219, file: !2220, line: 24, baseType: !112, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2219, file: !2220, line: 25, baseType: !112, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2219, file: !2220, line: 26, baseType: !2218, size: 64, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2219, file: !2220, line: 26, baseType: !2218, size: 64, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2219, file: !2220, line: 26, baseType: !2218, size: 64, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2208, file: !2201, line: 32, baseType: !2232, size: 64, offset: 6016)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1796, line: 586, size: 256, elements: !2235)
!2235 = !{!2236, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2234, file: !1796, line: 587, baseType: !2237, size: 160)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 160, elements: !1318)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2234, file: !1796, line: 588, baseType: !1816, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2208, file: !2201, line: 33, baseType: !289, size: 64, offset: 6080)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2208, file: !2201, line: 36, baseType: !2241, size: 64, offset: 6144)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2201, line: 18, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2208, file: !2201, line: 39, baseType: !2244, offset: 6208)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2018, line: 8, elements: !262)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2200, file: !2201, line: 202, baseType: !2204, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2200, file: !2201, line: 203, baseType: !2247, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !2207}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2200, file: !2201, line: 204, baseType: !2251, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!135, !2207, !1827}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2200, file: !2201, line: 205, baseType: !2204, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2200, file: !2201, line: 206, baseType: !1784, size: 1152, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2200, file: !2201, line: 207, baseType: !2232, size: 64, offset: 1472)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2200, file: !2201, line: 208, baseType: !1113, size: 8, offset: 1536)
!2258 = !DIGlobalVariableExpression(var: !2259, expr: !DIExpression())
!2259 = distinct !DIGlobalVariable(name: "ptp_dte_caps", scope: !2, file: !3, line: 225, type: !2260, isLocal: true, isDefinition: true)
!2260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!2261 = !DIGlobalVariableExpression(var: !2262, expr: !DIExpression())
!2262 = distinct !DIGlobalVariable(name: "ptp_dte_of_match", scope: !2, file: !3, line: 328, type: !2263, isLocal: true, isDefinition: true)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1794, size: 3200, elements: !66)
!2264 = !DIGlobalVariableExpression(var: !2265, expr: !DIExpression())
!2265 = distinct !DIGlobalVariable(name: "ptp_dte_pm_ops", scope: !2, file: !3, line: 318, type: !1739, isLocal: true, isDefinition: true)
!2266 = !{!"rsp"}
!2267 = !{i32 7, !"Dwarf Version", i32 4}
!2268 = !{i32 2, !"Debug Info Version", i32 3}
!2269 = !{i32 1, !"wchar_size", i32 2}
!2270 = !{i32 1, !"Code Model", i32 2}
!2271 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2272 = distinct !DISubprogram(name: "ptp_dte_driver_init", scope: !3, file: !3, line: 343, type: !2273, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!135}
!2275 = !DILocation(line: 343, column: 1, scope: !2272)
!2276 = distinct !DISubprogram(name: "ptp_dte_driver_exit", scope: !3, file: !3, line: 343, type: !2176, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2277 = !DILocation(line: 343, column: 1, scope: !2276)
!2278 = distinct !DISubprogram(name: "ptp_dte_probe", scope: !3, file: !3, line: 239, type: !2205, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2279 = !DILocalVariable(name: "lock", arg: 1, scope: !2280, file: !2281, line: 327, type: !2285)
!2280 = distinct !DISubprogram(name: "spinlock_check", scope: !2281, file: !2281, line: 327, type: !2282, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2281 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2284, !2285}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!2286 = !DILocation(line: 327, column: 67, scope: !2280, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 252, column: 2, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 252, column: 2)
!2289 = !DILocalVariable(name: "pdev", arg: 1, scope: !2278, file: !3, line: 239, type: !2207)
!2290 = !DILocation(line: 239, column: 50, scope: !2278)
!2291 = !DILocalVariable(name: "ptp_dte", scope: !2278, file: !3, line: 241, type: !115)
!2292 = !DILocation(line: 241, column: 18, scope: !2278)
!2293 = !DILocalVariable(name: "dev", scope: !2278, file: !3, line: 242, type: !224)
!2294 = !DILocation(line: 242, column: 17, scope: !2278)
!2295 = !DILocation(line: 242, column: 24, scope: !2278)
!2296 = !DILocation(line: 242, column: 30, scope: !2278)
!2297 = !DILocation(line: 244, column: 25, scope: !2278)
!2298 = !DILocation(line: 244, column: 12, scope: !2278)
!2299 = !DILocation(line: 244, column: 10, scope: !2278)
!2300 = !DILocation(line: 245, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 245, column: 6)
!2302 = !DILocation(line: 245, column: 6, scope: !2278)
!2303 = !DILocation(line: 246, column: 3, scope: !2301)
!2304 = !DILocation(line: 248, column: 49, scope: !2278)
!2305 = !DILocation(line: 248, column: 18, scope: !2278)
!2306 = !DILocation(line: 248, column: 2, scope: !2278)
!2307 = !DILocation(line: 248, column: 11, scope: !2278)
!2308 = !DILocation(line: 248, column: 16, scope: !2278)
!2309 = !DILocation(line: 249, column: 13, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 249, column: 6)
!2311 = !DILocation(line: 249, column: 22, scope: !2310)
!2312 = !DILocation(line: 249, column: 6, scope: !2310)
!2313 = !DILocation(line: 249, column: 6, scope: !2278)
!2314 = !DILocation(line: 250, column: 18, scope: !2310)
!2315 = !DILocation(line: 250, column: 27, scope: !2310)
!2316 = !DILocation(line: 250, column: 10, scope: !2310)
!2317 = !DILocation(line: 250, column: 3, scope: !2310)
!2318 = !DILocation(line: 252, column: 2, scope: !2278)
!2319 = !DILocation(line: 252, column: 2, scope: !2288)
!2320 = !DILocation(line: 329, column: 10, scope: !2280, inlinedAt: !2287)
!2321 = !DILocation(line: 329, column: 16, scope: !2280, inlinedAt: !2287)
!2322 = !DILocation(line: 254, column: 17, scope: !2278)
!2323 = !DILocation(line: 254, column: 2, scope: !2278)
!2324 = !DILocation(line: 254, column: 11, scope: !2278)
!2325 = !DILocation(line: 254, column: 15, scope: !2278)
!2326 = !DILocation(line: 255, column: 2, scope: !2278)
!2327 = !DILocation(line: 255, column: 11, scope: !2278)
!2328 = !DILocation(line: 255, column: 18, scope: !2278)
!2329 = !DILocation(line: 256, column: 41, scope: !2278)
!2330 = !DILocation(line: 256, column: 50, scope: !2278)
!2331 = !DILocation(line: 256, column: 57, scope: !2278)
!2332 = !DILocation(line: 256, column: 63, scope: !2278)
!2333 = !DILocation(line: 256, column: 21, scope: !2278)
!2334 = !DILocation(line: 256, column: 2, scope: !2278)
!2335 = !DILocation(line: 256, column: 11, scope: !2278)
!2336 = !DILocation(line: 256, column: 19, scope: !2278)
!2337 = !DILocation(line: 257, column: 13, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 257, column: 6)
!2339 = !DILocation(line: 257, column: 22, scope: !2338)
!2340 = !DILocation(line: 257, column: 6, scope: !2338)
!2341 = !DILocation(line: 257, column: 6, scope: !2278)
!2342 = !DILocation(line: 258, column: 3, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 257, column: 32)
!2344 = !DILocation(line: 260, column: 18, scope: !2343)
!2345 = !DILocation(line: 260, column: 27, scope: !2343)
!2346 = !DILocation(line: 260, column: 10, scope: !2343)
!2347 = !DILocation(line: 260, column: 3, scope: !2343)
!2348 = !DILocation(line: 263, column: 23, scope: !2278)
!2349 = !DILocation(line: 263, column: 29, scope: !2278)
!2350 = !DILocation(line: 263, column: 2, scope: !2278)
!2351 = !DILocation(line: 265, column: 2, scope: !2278)
!2352 = !DILocation(line: 267, column: 2, scope: !2278)
!2353 = !DILocation(line: 268, column: 1, scope: !2278)
!2354 = distinct !DISubprogram(name: "ptp_dte_remove", scope: !3, file: !3, line: 270, type: !2205, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2355 = !DILocalVariable(name: "pdev", arg: 1, scope: !2354, file: !3, line: 270, type: !2207)
!2356 = !DILocation(line: 270, column: 51, scope: !2354)
!2357 = !DILocalVariable(name: "ptp_dte", scope: !2354, file: !3, line: 272, type: !115)
!2358 = !DILocation(line: 272, column: 18, scope: !2354)
!2359 = !DILocation(line: 272, column: 49, scope: !2354)
!2360 = !DILocation(line: 272, column: 28, scope: !2354)
!2361 = !DILocalVariable(name: "i", scope: !2354, file: !3, line: 273, type: !685)
!2362 = !DILocation(line: 273, column: 5, scope: !2354)
!2363 = !DILocation(line: 275, column: 23, scope: !2354)
!2364 = !DILocation(line: 275, column: 32, scope: !2354)
!2365 = !DILocation(line: 275, column: 2, scope: !2354)
!2366 = !DILocation(line: 277, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 277, column: 2)
!2368 = !DILocation(line: 277, column: 7, scope: !2367)
!2369 = !DILocation(line: 277, column: 14, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 277, column: 2)
!2371 = !DILocation(line: 277, column: 16, scope: !2370)
!2372 = !DILocation(line: 277, column: 2, scope: !2367)
!2373 = !DILocation(line: 278, column: 13, scope: !2370)
!2374 = !DILocation(line: 278, column: 22, scope: !2370)
!2375 = !DILocation(line: 278, column: 30, scope: !2370)
!2376 = !DILocation(line: 278, column: 32, scope: !2370)
!2377 = !DILocation(line: 278, column: 27, scope: !2370)
!2378 = !DILocation(line: 278, column: 3, scope: !2370)
!2379 = !DILocation(line: 277, column: 44, scope: !2370)
!2380 = !DILocation(line: 277, column: 2, scope: !2370)
!2381 = distinct !{!2381, !2372, !2382}
!2382 = !DILocation(line: 278, column: 46, scope: !2367)
!2383 = !DILocation(line: 280, column: 2, scope: !2354)
!2384 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2385, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!113, !224, !333, !110}
!2387 = !DILocalVariable(name: "dev", arg: 1, scope: !2384, file: !30, line: 215, type: !224)
!2388 = !DILocation(line: 215, column: 49, scope: !2384)
!2389 = !DILocalVariable(name: "size", arg: 2, scope: !2384, file: !30, line: 215, type: !333)
!2390 = !DILocation(line: 215, column: 61, scope: !2384)
!2391 = !DILocalVariable(name: "gfp", arg: 3, scope: !2384, file: !30, line: 215, type: !110)
!2392 = !DILocation(line: 215, column: 73, scope: !2384)
!2393 = !DILocation(line: 217, column: 22, scope: !2384)
!2394 = !DILocation(line: 217, column: 27, scope: !2384)
!2395 = !DILocation(line: 217, column: 33, scope: !2384)
!2396 = !DILocation(line: 217, column: 37, scope: !2384)
!2397 = !DILocation(line: 217, column: 9, scope: !2384)
!2398 = !DILocation(line: 217, column: 2, scope: !2384)
!2399 = distinct !DISubprogram(name: "IS_ERR", scope: !2400, file: !2400, line: 34, type: !2401, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2400 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!1113, !1244}
!2403 = !DILocalVariable(name: "ptr", arg: 1, scope: !2399, file: !2400, line: 34, type: !1244)
!2404 = !DILocation(line: 34, column: 60, scope: !2399)
!2405 = !DILocation(line: 36, column: 9, scope: !2399)
!2406 = !DILocation(line: 36, column: 2, scope: !2399)
!2407 = distinct !DISubprogram(name: "PTR_ERR", scope: !2400, file: !2400, line: 29, type: !2408, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!114, !1244}
!2410 = !DILocalVariable(name: "ptr", arg: 1, scope: !2407, file: !2400, line: 29, type: !1244)
!2411 = !DILocation(line: 29, column: 61, scope: !2407)
!2412 = !DILocation(line: 31, column: 16, scope: !2407)
!2413 = !DILocation(line: 31, column: 9, scope: !2407)
!2414 = !DILocation(line: 31, column: 2, scope: !2407)
!2415 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2201, file: !2201, line: 236, type: !2416, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2207, !113}
!2418 = !DILocalVariable(name: "pdev", arg: 1, scope: !2415, file: !2201, line: 236, type: !2207)
!2419 = !DILocation(line: 236, column: 65, scope: !2415)
!2420 = !DILocalVariable(name: "data", arg: 2, scope: !2415, file: !2201, line: 237, type: !113)
!2421 = !DILocation(line: 237, column: 12, scope: !2415)
!2422 = !DILocation(line: 239, column: 19, scope: !2415)
!2423 = !DILocation(line: 239, column: 25, scope: !2415)
!2424 = !DILocation(line: 239, column: 30, scope: !2415)
!2425 = !DILocation(line: 239, column: 2, scope: !2415)
!2426 = !DILocation(line: 240, column: 1, scope: !2415)
!2427 = distinct !DISubprogram(name: "ptp_dte_adjfreq", scope: !3, file: !3, line: 147, type: !163, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2428 = !DILocalVariable(name: "lock", arg: 1, scope: !2429, file: !2281, line: 407, type: !2285)
!2429 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2281, file: !2281, line: 407, type: !2430, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !2285, !112}
!2432 = !DILocation(line: 407, column: 64, scope: !2429, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 165, column: 2, scope: !2427)
!2434 = !DILocalVariable(name: "flags", arg: 2, scope: !2429, file: !2281, line: 407, type: !112)
!2435 = !DILocation(line: 407, column: 84, scope: !2429, inlinedAt: !2433)
!2436 = !DILocation(line: 327, column: 67, scope: !2280, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 163, column: 2, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 163, column: 2)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 163, column: 2)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 163, column: 2)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 163, column: 2)
!2442 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 163, column: 2)
!2443 = !DILocalVariable(name: "ptp", arg: 1, scope: !2427, file: !3, line: 147, type: !160)
!2444 = !DILocation(line: 147, column: 51, scope: !2427)
!2445 = !DILocalVariable(name: "ppb", arg: 2, scope: !2427, file: !3, line: 147, type: !132)
!2446 = !DILocation(line: 147, column: 60, scope: !2427)
!2447 = !DILocalVariable(name: "nco_incr", scope: !2427, file: !3, line: 149, type: !551)
!2448 = !DILocation(line: 149, column: 6, scope: !2427)
!2449 = !DILocalVariable(name: "flags", scope: !2427, file: !3, line: 150, type: !112)
!2450 = !DILocation(line: 150, column: 16, scope: !2427)
!2451 = !DILocalVariable(name: "ptp_dte", scope: !2427, file: !3, line: 151, type: !115)
!2452 = !DILocation(line: 151, column: 18, scope: !2427)
!2453 = !DILocalVariable(name: "__mptr", scope: !2454, file: !3, line: 151, type: !113)
!2454 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 151, column: 28)
!2455 = !DILocation(line: 151, column: 28, scope: !2454)
!2456 = !DILocation(line: 151, column: 28, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 151, column: 28)
!2458 = !DILocalVariable(name: "__x", scope: !2459, file: !3, line: 153, type: !135)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 153, column: 6)
!2460 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 153, column: 6)
!2461 = !DILocation(line: 153, column: 6, scope: !2459)
!2462 = !DILocation(line: 153, column: 17, scope: !2460)
!2463 = !DILocation(line: 153, column: 26, scope: !2460)
!2464 = !DILocation(line: 153, column: 31, scope: !2460)
!2465 = !DILocation(line: 153, column: 15, scope: !2460)
!2466 = !DILocation(line: 153, column: 6, scope: !2427)
!2467 = !DILocation(line: 154, column: 3, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 153, column: 40)
!2469 = !DILocation(line: 155, column: 3, scope: !2468)
!2470 = !DILocation(line: 158, column: 6, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 158, column: 6)
!2472 = !DILocation(line: 158, column: 10, scope: !2471)
!2473 = !DILocation(line: 158, column: 6, scope: !2427)
!2474 = !DILocalVariable(name: "__x", scope: !2475, file: !3, line: 159, type: !135)
!2475 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 159, column: 36)
!2476 = !DILocation(line: 159, column: 36, scope: !2475)
!2477 = !DILocation(line: 159, column: 36, scope: !2471)
!2478 = !DILocation(line: 159, column: 34, scope: !2471)
!2479 = !DILocation(line: 159, column: 12, scope: !2471)
!2480 = !DILocation(line: 159, column: 3, scope: !2471)
!2481 = !DILocalVariable(name: "__x", scope: !2482, file: !3, line: 161, type: !135)
!2482 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 161, column: 36)
!2483 = !DILocation(line: 161, column: 36, scope: !2482)
!2484 = !DILocation(line: 161, column: 36, scope: !2471)
!2485 = !DILocation(line: 161, column: 34, scope: !2471)
!2486 = !DILocation(line: 161, column: 12, scope: !2471)
!2487 = !DILocation(line: 163, column: 2, scope: !2427)
!2488 = !DILocation(line: 163, column: 2, scope: !2442)
!2489 = !DILocalVariable(name: "__dummy", scope: !2490, file: !3, line: 163, type: !112)
!2490 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 163, column: 2)
!2491 = !DILocation(line: 163, column: 2, scope: !2490)
!2492 = !DILocalVariable(name: "__dummy2", scope: !2490, file: !3, line: 163, type: !112)
!2493 = !DILocation(line: 163, column: 2, scope: !2441)
!2494 = !DILocation(line: 163, column: 2, scope: !2440)
!2495 = !DILocation(line: 163, column: 2, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 163, column: 2)
!2497 = !DILocalVariable(name: "__dummy", scope: !2498, file: !3, line: 163, type: !112)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 163, column: 2)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 163, column: 2)
!2500 = !DILocation(line: 163, column: 2, scope: !2498)
!2501 = !DILocalVariable(name: "__dummy2", scope: !2498, file: !3, line: 163, type: !112)
!2502 = !DILocation(line: 163, column: 2, scope: !2499)
!2503 = !DILocation(line: 163, column: 2, scope: !2439)
!2504 = !{i32 -2143462876}
!2505 = !DILocation(line: 163, column: 2, scope: !2438)
!2506 = !DILocation(line: 329, column: 10, scope: !2280, inlinedAt: !2437)
!2507 = !DILocation(line: 329, column: 16, scope: !2280, inlinedAt: !2437)
!2508 = !DILocation(line: 164, column: 9, scope: !2427)
!2509 = !DILocation(line: 164, column: 19, scope: !2427)
!2510 = !DILocation(line: 164, column: 28, scope: !2427)
!2511 = !DILocation(line: 164, column: 33, scope: !2427)
!2512 = !DILocation(line: 164, column: 2, scope: !2427)
!2513 = !DILocation(line: 165, column: 26, scope: !2427)
!2514 = !DILocation(line: 165, column: 35, scope: !2427)
!2515 = !DILocation(line: 165, column: 41, scope: !2427)
!2516 = !DILocalVariable(name: "__dummy", scope: !2517, file: !2281, line: 409, type: !112)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !2281, line: 409, column: 2)
!2518 = distinct !DILexicalBlock(scope: !2429, file: !2281, line: 409, column: 2)
!2519 = !DILocation(line: 409, column: 2, scope: !2517, inlinedAt: !2433)
!2520 = !DILocalVariable(name: "__dummy2", scope: !2517, file: !2281, line: 409, type: !112)
!2521 = !DILocalVariable(name: "__dummy", scope: !2522, file: !2281, line: 409, type: !112)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !2281, line: 409, column: 2)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !2281, line: 409, column: 2)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !2281, line: 409, column: 2)
!2525 = distinct !DILexicalBlock(scope: !2518, file: !2281, line: 409, column: 2)
!2526 = !DILocation(line: 409, column: 2, scope: !2522, inlinedAt: !2433)
!2527 = !DILocalVariable(name: "__dummy2", scope: !2522, file: !2281, line: 409, type: !112)
!2528 = !DILocation(line: 409, column: 2, scope: !2523, inlinedAt: !2433)
!2529 = !DILocation(line: 409, column: 2, scope: !2530, inlinedAt: !2433)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !2281, line: 409, column: 2)
!2531 = !{i32 -2145534233}
!2532 = !DILocation(line: 409, column: 2, scope: !2533, inlinedAt: !2433)
!2533 = distinct !DILexicalBlock(scope: !2530, file: !2281, line: 409, column: 2)
!2534 = !DILocation(line: 167, column: 2, scope: !2427)
!2535 = !DILocation(line: 168, column: 1, scope: !2427)
!2536 = distinct !DISubprogram(name: "ptp_dte_adjtime", scope: !3, file: !3, line: 170, type: !168, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2537 = !DILocation(line: 407, column: 64, scope: !2429, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 177, column: 2, scope: !2536)
!2539 = !DILocation(line: 407, column: 84, scope: !2429, inlinedAt: !2538)
!2540 = !DILocation(line: 327, column: 67, scope: !2280, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 175, column: 2, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 175, column: 2)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 175, column: 2)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 175, column: 2)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 175, column: 2)
!2546 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 175, column: 2)
!2547 = !DILocalVariable(name: "ptp", arg: 1, scope: !2536, file: !3, line: 170, type: !160)
!2548 = !DILocation(line: 170, column: 51, scope: !2536)
!2549 = !DILocalVariable(name: "delta", arg: 2, scope: !2536, file: !3, line: 170, type: !170)
!2550 = !DILocation(line: 170, column: 60, scope: !2536)
!2551 = !DILocalVariable(name: "flags", scope: !2536, file: !3, line: 172, type: !112)
!2552 = !DILocation(line: 172, column: 16, scope: !2536)
!2553 = !DILocalVariable(name: "ptp_dte", scope: !2536, file: !3, line: 173, type: !115)
!2554 = !DILocation(line: 173, column: 18, scope: !2536)
!2555 = !DILocalVariable(name: "__mptr", scope: !2556, file: !3, line: 173, type: !113)
!2556 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 173, column: 28)
!2557 = !DILocation(line: 173, column: 28, scope: !2556)
!2558 = !DILocation(line: 173, column: 28, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 173, column: 28)
!2560 = !DILocation(line: 175, column: 2, scope: !2536)
!2561 = !DILocation(line: 175, column: 2, scope: !2546)
!2562 = !DILocalVariable(name: "__dummy", scope: !2563, file: !3, line: 175, type: !112)
!2563 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 175, column: 2)
!2564 = !DILocation(line: 175, column: 2, scope: !2563)
!2565 = !DILocalVariable(name: "__dummy2", scope: !2563, file: !3, line: 175, type: !112)
!2566 = !DILocation(line: 175, column: 2, scope: !2545)
!2567 = !DILocation(line: 175, column: 2, scope: !2544)
!2568 = !DILocation(line: 175, column: 2, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 175, column: 2)
!2570 = !DILocalVariable(name: "__dummy", scope: !2571, file: !3, line: 175, type: !112)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 175, column: 2)
!2572 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 175, column: 2)
!2573 = !DILocation(line: 175, column: 2, scope: !2571)
!2574 = !DILocalVariable(name: "__dummy2", scope: !2571, file: !3, line: 175, type: !112)
!2575 = !DILocation(line: 175, column: 2, scope: !2572)
!2576 = !DILocation(line: 175, column: 2, scope: !2543)
!2577 = !{i32 -2143460413}
!2578 = !DILocation(line: 175, column: 2, scope: !2542)
!2579 = !DILocation(line: 329, column: 10, scope: !2280, inlinedAt: !2541)
!2580 = !DILocation(line: 329, column: 16, scope: !2280, inlinedAt: !2541)
!2581 = !DILocation(line: 176, column: 22, scope: !2536)
!2582 = !DILocation(line: 176, column: 31, scope: !2536)
!2583 = !DILocation(line: 176, column: 2, scope: !2536)
!2584 = !DILocation(line: 177, column: 26, scope: !2536)
!2585 = !DILocation(line: 177, column: 35, scope: !2536)
!2586 = !DILocation(line: 177, column: 41, scope: !2536)
!2587 = !DILocation(line: 409, column: 2, scope: !2517, inlinedAt: !2538)
!2588 = !DILocation(line: 409, column: 2, scope: !2522, inlinedAt: !2538)
!2589 = !DILocation(line: 409, column: 2, scope: !2523, inlinedAt: !2538)
!2590 = !DILocation(line: 409, column: 2, scope: !2530, inlinedAt: !2538)
!2591 = !DILocation(line: 409, column: 2, scope: !2533, inlinedAt: !2538)
!2592 = !DILocation(line: 179, column: 2, scope: !2536)
!2593 = distinct !DISubprogram(name: "ptp_dte_gettime", scope: !3, file: !3, line: 182, type: !173, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2594 = !DILocation(line: 407, column: 64, scope: !2429, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 189, column: 2, scope: !2593)
!2596 = !DILocation(line: 407, column: 84, scope: !2429, inlinedAt: !2595)
!2597 = !DILocation(line: 327, column: 67, scope: !2280, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 187, column: 2, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 187, column: 2)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 187, column: 2)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 187, column: 2)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 187, column: 2)
!2603 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 187, column: 2)
!2604 = !DILocalVariable(name: "ptp", arg: 1, scope: !2593, file: !3, line: 182, type: !160)
!2605 = !DILocation(line: 182, column: 51, scope: !2593)
!2606 = !DILocalVariable(name: "ts", arg: 2, scope: !2593, file: !3, line: 182, type: !175)
!2607 = !DILocation(line: 182, column: 75, scope: !2593)
!2608 = !DILocalVariable(name: "flags", scope: !2593, file: !3, line: 184, type: !112)
!2609 = !DILocation(line: 184, column: 16, scope: !2593)
!2610 = !DILocalVariable(name: "ptp_dte", scope: !2593, file: !3, line: 185, type: !115)
!2611 = !DILocation(line: 185, column: 18, scope: !2593)
!2612 = !DILocalVariable(name: "__mptr", scope: !2613, file: !3, line: 185, type: !113)
!2613 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 185, column: 28)
!2614 = !DILocation(line: 185, column: 28, scope: !2613)
!2615 = !DILocation(line: 185, column: 28, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 185, column: 28)
!2617 = !DILocation(line: 187, column: 2, scope: !2593)
!2618 = !DILocation(line: 187, column: 2, scope: !2603)
!2619 = !DILocalVariable(name: "__dummy", scope: !2620, file: !3, line: 187, type: !112)
!2620 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 187, column: 2)
!2621 = !DILocation(line: 187, column: 2, scope: !2620)
!2622 = !DILocalVariable(name: "__dummy2", scope: !2620, file: !3, line: 187, type: !112)
!2623 = !DILocation(line: 187, column: 2, scope: !2602)
!2624 = !DILocation(line: 187, column: 2, scope: !2601)
!2625 = !DILocation(line: 187, column: 2, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 187, column: 2)
!2627 = !DILocalVariable(name: "__dummy", scope: !2628, file: !3, line: 187, type: !112)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 187, column: 2)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 187, column: 2)
!2630 = !DILocation(line: 187, column: 2, scope: !2628)
!2631 = !DILocalVariable(name: "__dummy2", scope: !2628, file: !3, line: 187, type: !112)
!2632 = !DILocation(line: 187, column: 2, scope: !2629)
!2633 = !DILocation(line: 187, column: 2, scope: !2600)
!2634 = !{i32 -2143457962}
!2635 = !DILocation(line: 187, column: 2, scope: !2599)
!2636 = !DILocation(line: 329, column: 10, scope: !2280, inlinedAt: !2598)
!2637 = !DILocation(line: 329, column: 16, scope: !2280, inlinedAt: !2598)
!2638 = !DILocation(line: 188, column: 3, scope: !2593)
!2639 = !DILocation(line: 188, column: 47, scope: !2593)
!2640 = !DILocation(line: 188, column: 25, scope: !2593)
!2641 = !DILocation(line: 188, column: 8, scope: !2593)
!2642 = !DILocation(line: 189, column: 26, scope: !2593)
!2643 = !DILocation(line: 189, column: 35, scope: !2593)
!2644 = !DILocation(line: 189, column: 41, scope: !2593)
!2645 = !DILocation(line: 409, column: 2, scope: !2517, inlinedAt: !2595)
!2646 = !DILocation(line: 409, column: 2, scope: !2522, inlinedAt: !2595)
!2647 = !DILocation(line: 409, column: 2, scope: !2523, inlinedAt: !2595)
!2648 = !DILocation(line: 409, column: 2, scope: !2530, inlinedAt: !2595)
!2649 = !DILocation(line: 409, column: 2, scope: !2533, inlinedAt: !2595)
!2650 = !DILocation(line: 191, column: 2, scope: !2593)
!2651 = distinct !DISubprogram(name: "ptp_dte_settime", scope: !3, file: !3, line: 194, type: !206, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2652 = !DILocation(line: 407, column: 64, scope: !2429, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 214, column: 2, scope: !2651)
!2654 = !DILocation(line: 407, column: 84, scope: !2429, inlinedAt: !2653)
!2655 = !DILocation(line: 327, column: 67, scope: !2280, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 200, column: 2, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 200, column: 2)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 200, column: 2)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 200, column: 2)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 200, column: 2)
!2661 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 200, column: 2)
!2662 = !DILocalVariable(name: "ptp", arg: 1, scope: !2651, file: !3, line: 194, type: !160)
!2663 = !DILocation(line: 194, column: 51, scope: !2651)
!2664 = !DILocalVariable(name: "ts", arg: 2, scope: !2651, file: !3, line: 195, type: !208)
!2665 = !DILocation(line: 195, column: 34, scope: !2651)
!2666 = !DILocalVariable(name: "flags", scope: !2651, file: !3, line: 197, type: !112)
!2667 = !DILocation(line: 197, column: 16, scope: !2651)
!2668 = !DILocalVariable(name: "ptp_dte", scope: !2651, file: !3, line: 198, type: !115)
!2669 = !DILocation(line: 198, column: 18, scope: !2651)
!2670 = !DILocalVariable(name: "__mptr", scope: !2671, file: !3, line: 198, type: !113)
!2671 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 198, column: 28)
!2672 = !DILocation(line: 198, column: 28, scope: !2671)
!2673 = !DILocation(line: 198, column: 28, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 198, column: 28)
!2675 = !DILocation(line: 200, column: 2, scope: !2651)
!2676 = !DILocation(line: 200, column: 2, scope: !2661)
!2677 = !DILocalVariable(name: "__dummy", scope: !2678, file: !3, line: 200, type: !112)
!2678 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 200, column: 2)
!2679 = !DILocation(line: 200, column: 2, scope: !2678)
!2680 = !DILocalVariable(name: "__dummy2", scope: !2678, file: !3, line: 200, type: !112)
!2681 = !DILocation(line: 200, column: 2, scope: !2660)
!2682 = !DILocation(line: 200, column: 2, scope: !2659)
!2683 = !DILocation(line: 200, column: 2, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 200, column: 2)
!2685 = !DILocalVariable(name: "__dummy", scope: !2686, file: !3, line: 200, type: !112)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 200, column: 2)
!2687 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 200, column: 2)
!2688 = !DILocation(line: 200, column: 2, scope: !2686)
!2689 = !DILocalVariable(name: "__dummy2", scope: !2686, file: !3, line: 200, type: !112)
!2690 = !DILocation(line: 200, column: 2, scope: !2687)
!2691 = !DILocation(line: 200, column: 2, scope: !2658)
!2692 = !{i32 -2143455511}
!2693 = !DILocation(line: 200, column: 2, scope: !2657)
!2694 = !DILocation(line: 329, column: 10, scope: !2280, inlinedAt: !2656)
!2695 = !DILocation(line: 329, column: 16, scope: !2280, inlinedAt: !2656)
!2696 = !DILocation(line: 203, column: 12, scope: !2651)
!2697 = !DILocation(line: 203, column: 21, scope: !2651)
!2698 = !DILocation(line: 203, column: 26, scope: !2651)
!2699 = !DILocation(line: 203, column: 2, scope: !2651)
!2700 = !DILocation(line: 205, column: 16, scope: !2651)
!2701 = !DILocation(line: 205, column: 25, scope: !2651)
!2702 = !DILocation(line: 205, column: 48, scope: !2651)
!2703 = !DILocation(line: 205, column: 31, scope: !2651)
!2704 = !DILocation(line: 205, column: 2, scope: !2651)
!2705 = !DILocation(line: 208, column: 2, scope: !2651)
!2706 = !DILocation(line: 208, column: 11, scope: !2651)
!2707 = !DILocation(line: 208, column: 23, scope: !2651)
!2708 = !DILocation(line: 209, column: 2, scope: !2651)
!2709 = !DILocation(line: 209, column: 11, scope: !2651)
!2710 = !DILocation(line: 209, column: 23, scope: !2651)
!2711 = !DILocation(line: 212, column: 30, scope: !2651)
!2712 = !DILocation(line: 212, column: 39, scope: !2651)
!2713 = !DILocation(line: 212, column: 44, scope: !2651)
!2714 = !DILocation(line: 212, column: 2, scope: !2651)
!2715 = !DILocation(line: 214, column: 26, scope: !2651)
!2716 = !DILocation(line: 214, column: 35, scope: !2651)
!2717 = !DILocation(line: 214, column: 41, scope: !2651)
!2718 = !DILocation(line: 409, column: 2, scope: !2517, inlinedAt: !2653)
!2719 = !DILocation(line: 409, column: 2, scope: !2522, inlinedAt: !2653)
!2720 = !DILocation(line: 409, column: 2, scope: !2523, inlinedAt: !2653)
!2721 = !DILocation(line: 409, column: 2, scope: !2530, inlinedAt: !2653)
!2722 = !DILocation(line: 409, column: 2, scope: !2533, inlinedAt: !2653)
!2723 = !DILocation(line: 216, column: 2, scope: !2651)
!2724 = distinct !DISubprogram(name: "ptp_dte_enable", scope: !3, file: !3, line: 219, type: !212, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2725 = !DILocalVariable(name: "ptp", arg: 1, scope: !2724, file: !3, line: 219, type: !160)
!2726 = !DILocation(line: 219, column: 50, scope: !2724)
!2727 = !DILocalVariable(name: "rq", arg: 2, scope: !2724, file: !3, line: 220, type: !214)
!2728 = !DILocation(line: 220, column: 34, scope: !2724)
!2729 = !DILocalVariable(name: "on", arg: 3, scope: !2724, file: !3, line: 220, type: !135)
!2730 = !DILocation(line: 220, column: 42, scope: !2724)
!2731 = !DILocation(line: 222, column: 2, scope: !2724)
!2732 = distinct !DISubprogram(name: "div64_u64", scope: !2733, file: !2733, line: 66, type: !2734, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2733 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!403, !403, !403}
!2736 = !DILocalVariable(name: "dividend", arg: 1, scope: !2732, file: !2733, line: 66, type: !403)
!2737 = !DILocation(line: 66, column: 33, scope: !2732)
!2738 = !DILocalVariable(name: "divisor", arg: 2, scope: !2732, file: !2733, line: 66, type: !403)
!2739 = !DILocation(line: 66, column: 47, scope: !2732)
!2740 = !DILocation(line: 68, column: 9, scope: !2732)
!2741 = !DILocation(line: 68, column: 20, scope: !2732)
!2742 = !DILocation(line: 68, column: 18, scope: !2732)
!2743 = !DILocation(line: 68, column: 2, scope: !2732)
!2744 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2745, file: !2745, line: 666, type: !2746, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2745 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!112}
!2748 = !DILocalVariable(name: "f", scope: !2744, file: !2745, line: 668, type: !112)
!2749 = !DILocation(line: 668, column: 16, scope: !2744)
!2750 = !DILocation(line: 670, column: 6, scope: !2744)
!2751 = !DILocation(line: 670, column: 4, scope: !2744)
!2752 = !DILocation(line: 671, column: 2, scope: !2744)
!2753 = !DILocation(line: 672, column: 9, scope: !2744)
!2754 = !DILocation(line: 672, column: 2, scope: !2744)
!2755 = distinct !DISubprogram(name: "writel", scope: !2756, file: !2756, line: 67, type: !2757, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2756 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !7, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2761 = !DILocalVariable(name: "val", arg: 1, scope: !2755, file: !2756, line: 67, type: !7)
!2762 = !DILocation(line: 67, column: 1, scope: !2755)
!2763 = !DILocalVariable(name: "addr", arg: 2, scope: !2755, file: !2756, line: 67, type: !2759)
!2764 = !{i32 -2146518266}
!2765 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2745, file: !2745, line: 646, type: !2746, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2766 = !DILocalVariable(name: "__ret", scope: !2767, file: !2745, line: 648, type: !112)
!2767 = distinct !DILexicalBlock(scope: !2765, file: !2745, line: 648, column: 9)
!2768 = !DILocation(line: 648, column: 9, scope: !2767)
!2769 = !DILocalVariable(name: "__edi", scope: !2767, file: !2745, line: 648, type: !112)
!2770 = !DILocalVariable(name: "__esi", scope: !2767, file: !2745, line: 648, type: !112)
!2771 = !DILocalVariable(name: "__edx", scope: !2767, file: !2745, line: 648, type: !112)
!2772 = !DILocalVariable(name: "__ecx", scope: !2767, file: !2745, line: 648, type: !112)
!2773 = !DILocalVariable(name: "__eax", scope: !2767, file: !2745, line: 648, type: !112)
!2774 = !DILocation(line: 648, column: 9, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !2745, line: 648, column: 9)
!2776 = distinct !DILexicalBlock(scope: !2767, file: !2745, line: 648, column: 9)
!2777 = !{i32 -2146035394, i32 -2146033079, i32 -2146032845, i32 -2146032794, i32 -2146032766, i32 -2146032741, i32 -2146033057, i32 -2146033044, i32 -2146032606, i32 -2146032487, i32 -2146032952, i32 -2146032925, i32 -2146032897, i32 -2146032867}
!2778 = !DILocalVariable(name: "__mask", scope: !2779, file: !2745, line: 648, type: !112)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !2745, line: 648, column: 9)
!2780 = !DILocation(line: 648, column: 9, scope: !2779)
!2781 = !DILocation(line: 648, column: 9, scope: !2776)
!2782 = !DILocation(line: 648, column: 2, scope: !2765)
!2783 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2745, file: !2745, line: 656, type: !2176, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2784 = !DILocalVariable(name: "__edi", scope: !2785, file: !2745, line: 658, type: !112)
!2785 = distinct !DILexicalBlock(scope: !2783, file: !2745, line: 658, column: 2)
!2786 = !DILocation(line: 658, column: 2, scope: !2785)
!2787 = !DILocalVariable(name: "__esi", scope: !2785, file: !2745, line: 658, type: !112)
!2788 = !DILocalVariable(name: "__edx", scope: !2785, file: !2745, line: 658, type: !112)
!2789 = !DILocalVariable(name: "__ecx", scope: !2785, file: !2745, line: 658, type: !112)
!2790 = !DILocalVariable(name: "__eax", scope: !2785, file: !2745, line: 658, type: !112)
!2791 = !{i32 -2146028300, i32 -2146027568, i32 -2146027334, i32 -2146027283, i32 -2146027255, i32 -2146027230, i32 -2146027546, i32 -2146027533, i32 -2146027095, i32 -2146026976, i32 -2146027441, i32 -2146027414, i32 -2146027386, i32 -2146027356}
!2792 = !DILocation(line: 659, column: 1, scope: !2783)
!2793 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2745, file: !2745, line: 651, type: !2794, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !112}
!2796 = !DILocalVariable(name: "f", arg: 1, scope: !2793, file: !2745, line: 651, type: !112)
!2797 = !DILocation(line: 651, column: 65, scope: !2793)
!2798 = !DILocalVariable(name: "__edi", scope: !2799, file: !2745, line: 653, type: !112)
!2799 = distinct !DILexicalBlock(scope: !2793, file: !2745, line: 653, column: 2)
!2800 = !DILocation(line: 653, column: 2, scope: !2799)
!2801 = !DILocalVariable(name: "__esi", scope: !2799, file: !2745, line: 653, type: !112)
!2802 = !DILocalVariable(name: "__edx", scope: !2799, file: !2745, line: 653, type: !112)
!2803 = !DILocalVariable(name: "__ecx", scope: !2799, file: !2745, line: 653, type: !112)
!2804 = !DILocalVariable(name: "__eax", scope: !2799, file: !2745, line: 653, type: !112)
!2805 = !{i32 -2146030927, i32 -2146030177, i32 -2146029943, i32 -2146029892, i32 -2146029864, i32 -2146029839, i32 -2146030155, i32 -2146030142, i32 -2146029704, i32 -2146029585, i32 -2146030050, i32 -2146030023, i32 -2146029995, i32 -2146029965}
!2806 = !DILocation(line: 654, column: 1, scope: !2793)
!2807 = distinct !DISubprogram(name: "dte_write_nco_delta", scope: !3, file: !3, line: 97, type: !2808, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !115, !170}
!2810 = !DILocalVariable(name: "ptp_dte", arg: 1, scope: !2807, file: !3, line: 97, type: !115)
!2811 = !DILocation(line: 97, column: 49, scope: !2807)
!2812 = !DILocalVariable(name: "delta", arg: 2, scope: !2807, file: !3, line: 97, type: !170)
!2813 = !DILocation(line: 97, column: 62, scope: !2807)
!2814 = !DILocalVariable(name: "ns", scope: !2807, file: !3, line: 99, type: !170)
!2815 = !DILocation(line: 99, column: 6, scope: !2807)
!2816 = !DILocation(line: 101, column: 20, scope: !2807)
!2817 = !DILocation(line: 101, column: 29, scope: !2807)
!2818 = !DILocation(line: 101, column: 7, scope: !2807)
!2819 = !DILocation(line: 101, column: 5, scope: !2807)
!2820 = !DILocation(line: 104, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 104, column: 6)
!2822 = !DILocation(line: 104, column: 13, scope: !2821)
!2823 = !DILocation(line: 104, column: 18, scope: !2821)
!2824 = !DILocalVariable(name: "__x", scope: !2825, file: !3, line: 104, type: !80)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 104, column: 22)
!2826 = !DILocation(line: 104, column: 22, scope: !2825)
!2827 = !DILocation(line: 104, column: 35, scope: !2821)
!2828 = !DILocation(line: 104, column: 33, scope: !2821)
!2829 = !DILocation(line: 104, column: 6, scope: !2807)
!2830 = !DILocation(line: 105, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 105, column: 7)
!2832 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 104, column: 40)
!2833 = !DILocation(line: 105, column: 16, scope: !2831)
!2834 = !DILocation(line: 105, column: 7, scope: !2832)
!2835 = !DILocation(line: 106, column: 27, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 105, column: 29)
!2837 = !DILocation(line: 106, column: 25, scope: !2836)
!2838 = !DILocation(line: 106, column: 7, scope: !2836)
!2839 = !DILocation(line: 107, column: 4, scope: !2836)
!2840 = !DILocation(line: 107, column: 13, scope: !2836)
!2841 = !DILocation(line: 107, column: 24, scope: !2836)
!2842 = !DILocation(line: 108, column: 3, scope: !2836)
!2843 = !DILocation(line: 109, column: 7, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 108, column: 10)
!2845 = !DILocation(line: 111, column: 2, scope: !2832)
!2846 = !DILocation(line: 112, column: 9, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 111, column: 9)
!2848 = !DILocation(line: 112, column: 6, scope: !2847)
!2849 = !DILocation(line: 113, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 113, column: 7)
!2851 = !DILocation(line: 113, column: 10, scope: !2850)
!2852 = !DILocation(line: 113, column: 7, scope: !2847)
!2853 = !DILocation(line: 114, column: 4, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 113, column: 28)
!2855 = !DILocation(line: 114, column: 13, scope: !2854)
!2856 = !DILocation(line: 114, column: 24, scope: !2854)
!2857 = !DILocation(line: 115, column: 7, scope: !2854)
!2858 = !DILocation(line: 116, column: 3, scope: !2854)
!2859 = !DILocation(line: 119, column: 16, scope: !2807)
!2860 = !DILocation(line: 119, column: 25, scope: !2807)
!2861 = !DILocation(line: 119, column: 31, scope: !2807)
!2862 = !DILocation(line: 119, column: 2, scope: !2807)
!2863 = !DILocation(line: 121, column: 26, scope: !2807)
!2864 = !DILocation(line: 121, column: 29, scope: !2807)
!2865 = !DILocation(line: 121, column: 56, scope: !2807)
!2866 = !DILocation(line: 121, column: 25, scope: !2807)
!2867 = !DILocation(line: 121, column: 2, scope: !2807)
!2868 = !DILocation(line: 121, column: 11, scope: !2807)
!2869 = !DILocation(line: 121, column: 23, scope: !2807)
!2870 = !DILocation(line: 123, column: 1, scope: !2807)
!2871 = distinct !DISubprogram(name: "dte_read_nco", scope: !3, file: !3, line: 80, type: !2872, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!170, !113}
!2874 = !DILocalVariable(name: "regs", arg: 1, scope: !2871, file: !3, line: 80, type: !113)
!2875 = !DILocation(line: 80, column: 39, scope: !2871)
!2876 = !DILocalVariable(name: "sum2", scope: !2871, file: !3, line: 82, type: !551)
!2877 = !DILocation(line: 82, column: 6, scope: !2871)
!2878 = !DILocalVariable(name: "sum3", scope: !2871, file: !3, line: 82, type: !551)
!2879 = !DILocation(line: 82, column: 12, scope: !2871)
!2880 = !DILocalVariable(name: "ns", scope: !2871, file: !3, line: 83, type: !170)
!2881 = !DILocation(line: 83, column: 6, scope: !2871)
!2882 = !DILocation(line: 89, column: 15, scope: !2871)
!2883 = !DILocation(line: 89, column: 20, scope: !2871)
!2884 = !DILocation(line: 89, column: 9, scope: !2871)
!2885 = !DILocation(line: 89, column: 44, scope: !2871)
!2886 = !DILocation(line: 89, column: 7, scope: !2871)
!2887 = !DILocation(line: 90, column: 15, scope: !2871)
!2888 = !DILocation(line: 90, column: 20, scope: !2871)
!2889 = !DILocation(line: 90, column: 9, scope: !2871)
!2890 = !DILocation(line: 90, column: 7, scope: !2871)
!2891 = !DILocation(line: 91, column: 13, scope: !2871)
!2892 = !DILocation(line: 91, column: 8, scope: !2871)
!2893 = !DILocation(line: 91, column: 18, scope: !2871)
!2894 = !DILocation(line: 92, column: 10, scope: !2871)
!2895 = !DILocation(line: 92, column: 5, scope: !2871)
!2896 = !DILocation(line: 92, column: 15, scope: !2871)
!2897 = !DILocation(line: 91, column: 41, scope: !2871)
!2898 = !DILocation(line: 91, column: 5, scope: !2871)
!2899 = !DILocation(line: 94, column: 9, scope: !2871)
!2900 = !DILocation(line: 94, column: 2, scope: !2871)
!2901 = distinct !DISubprogram(name: "dte_write_nco", scope: !3, file: !3, line: 62, type: !2902, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !113, !170}
!2904 = !DILocalVariable(name: "regs", arg: 1, scope: !2901, file: !3, line: 62, type: !113)
!2905 = !DILocation(line: 62, column: 41, scope: !2901)
!2906 = !DILocalVariable(name: "ns", arg: 2, scope: !2901, file: !3, line: 62, type: !170)
!2907 = !DILocation(line: 62, column: 51, scope: !2901)
!2908 = !DILocalVariable(name: "sum2", scope: !2901, file: !3, line: 64, type: !551)
!2909 = !DILocation(line: 64, column: 6, scope: !2901)
!2910 = !DILocalVariable(name: "sum3", scope: !2901, file: !3, line: 64, type: !551)
!2911 = !DILocation(line: 64, column: 12, scope: !2901)
!2912 = !DILocation(line: 66, column: 16, scope: !2901)
!2913 = !DILocation(line: 66, column: 19, scope: !2901)
!2914 = !DILocation(line: 66, column: 42, scope: !2901)
!2915 = !DILocation(line: 66, column: 9, scope: !2901)
!2916 = !DILocation(line: 66, column: 7, scope: !2901)
!2917 = !DILocation(line: 68, column: 6, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 68, column: 6)
!2919 = !DILocation(line: 68, column: 11, scope: !2918)
!2920 = !DILocation(line: 68, column: 6, scope: !2901)
!2921 = !DILocation(line: 69, column: 7, scope: !2918)
!2922 = !DILocation(line: 69, column: 3, scope: !2918)
!2923 = !DILocation(line: 72, column: 17, scope: !2901)
!2924 = !DILocation(line: 72, column: 20, scope: !2901)
!2925 = !DILocation(line: 72, column: 43, scope: !2901)
!2926 = !DILocation(line: 72, column: 64, scope: !2901)
!2927 = !DILocation(line: 72, column: 9, scope: !2901)
!2928 = !DILocation(line: 72, column: 7, scope: !2901)
!2929 = !DILocation(line: 75, column: 13, scope: !2901)
!2930 = !DILocation(line: 75, column: 18, scope: !2901)
!2931 = !DILocation(line: 75, column: 2, scope: !2901)
!2932 = !DILocation(line: 76, column: 9, scope: !2901)
!2933 = !DILocation(line: 76, column: 16, scope: !2901)
!2934 = !DILocation(line: 76, column: 21, scope: !2901)
!2935 = !DILocation(line: 76, column: 2, scope: !2901)
!2936 = !DILocation(line: 77, column: 9, scope: !2901)
!2937 = !DILocation(line: 77, column: 16, scope: !2901)
!2938 = !DILocation(line: 77, column: 21, scope: !2901)
!2939 = !DILocation(line: 77, column: 2, scope: !2901)
!2940 = !DILocation(line: 78, column: 1, scope: !2901)
!2941 = distinct !DISubprogram(name: "readl", scope: !2756, file: !2756, line: 59, type: !2942, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!7, !2944}
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2946 = !DILocalVariable(name: "addr", arg: 1, scope: !2941, file: !2756, line: 59, type: !2944)
!2947 = !DILocation(line: 59, column: 1, scope: !2941)
!2948 = !DILocalVariable(name: "ret", scope: !2941, file: !2756, line: 59, type: !7)
!2949 = !{i32 -2146520659}
!2950 = distinct !DISubprogram(name: "dte_read_nco_with_ovf", scope: !3, file: !3, line: 125, type: !2951, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!170, !115}
!2953 = !DILocalVariable(name: "ptp_dte", arg: 1, scope: !2950, file: !3, line: 125, type: !115)
!2954 = !DILocation(line: 125, column: 50, scope: !2950)
!2955 = !DILocalVariable(name: "ts_ovf", scope: !2950, file: !3, line: 127, type: !551)
!2956 = !DILocation(line: 127, column: 6, scope: !2950)
!2957 = !DILocalVariable(name: "ns", scope: !2950, file: !3, line: 128, type: !170)
!2958 = !DILocation(line: 128, column: 6, scope: !2950)
!2959 = !DILocation(line: 130, column: 20, scope: !2950)
!2960 = !DILocation(line: 130, column: 29, scope: !2950)
!2961 = !DILocation(line: 130, column: 7, scope: !2950)
!2962 = !DILocation(line: 130, column: 5, scope: !2950)
!2963 = !DILocation(line: 133, column: 12, scope: !2950)
!2964 = !DILocation(line: 133, column: 15, scope: !2950)
!2965 = !DILocation(line: 133, column: 42, scope: !2950)
!2966 = !DILocation(line: 133, column: 11, scope: !2950)
!2967 = !DILocation(line: 133, column: 9, scope: !2950)
!2968 = !DILocation(line: 136, column: 6, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 136, column: 6)
!2970 = !DILocation(line: 136, column: 15, scope: !2969)
!2971 = !DILocation(line: 136, column: 24, scope: !2969)
!2972 = !DILocation(line: 136, column: 13, scope: !2969)
!2973 = !DILocation(line: 136, column: 6, scope: !2950)
!2974 = !DILocation(line: 137, column: 3, scope: !2969)
!2975 = !DILocation(line: 137, column: 12, scope: !2969)
!2976 = !DILocation(line: 137, column: 23, scope: !2969)
!2977 = !DILocation(line: 139, column: 25, scope: !2950)
!2978 = !DILocation(line: 139, column: 2, scope: !2950)
!2979 = !DILocation(line: 139, column: 11, scope: !2950)
!2980 = !DILocation(line: 139, column: 23, scope: !2950)
!2981 = !DILocation(line: 142, column: 52, scope: !2950)
!2982 = !DILocation(line: 142, column: 61, scope: !2950)
!2983 = !DILocation(line: 142, column: 50, scope: !2950)
!2984 = !DILocation(line: 142, column: 5, scope: !2950)
!2985 = !DILocation(line: 144, column: 9, scope: !2950)
!2986 = !DILocation(line: 144, column: 2, scope: !2950)
!2987 = distinct !DISubprogram(name: "timespec64_to_ns", scope: !177, file: !177, line: 125, type: !2988, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!170, !208}
!2990 = !DILocalVariable(name: "ts", arg: 1, scope: !2987, file: !177, line: 125, type: !208)
!2991 = !DILocation(line: 125, column: 61, scope: !2987)
!2992 = !DILocation(line: 128, column: 26, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2987, file: !177, line: 128, column: 6)
!2994 = !DILocation(line: 128, column: 30, scope: !2993)
!2995 = !DILocation(line: 128, column: 37, scope: !2993)
!2996 = !DILocation(line: 128, column: 6, scope: !2987)
!2997 = !DILocation(line: 129, column: 3, scope: !2993)
!2998 = !DILocation(line: 131, column: 16, scope: !2987)
!2999 = !DILocation(line: 131, column: 20, scope: !2987)
!3000 = !DILocation(line: 131, column: 27, scope: !2987)
!3001 = !DILocation(line: 131, column: 45, scope: !2987)
!3002 = !DILocation(line: 131, column: 49, scope: !2987)
!3003 = !DILocation(line: 131, column: 43, scope: !2987)
!3004 = !DILocation(line: 131, column: 2, scope: !2987)
!3005 = !DILocation(line: 132, column: 1, scope: !2987)
!3006 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3007, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !224, !113}
!3009 = !DILocalVariable(name: "dev", arg: 1, scope: !3006, file: !30, line: 660, type: !224)
!3010 = !DILocation(line: 660, column: 51, scope: !3006)
!3011 = !DILocalVariable(name: "data", arg: 2, scope: !3006, file: !30, line: 660, type: !113)
!3012 = !DILocation(line: 660, column: 62, scope: !3006)
!3013 = !DILocation(line: 662, column: 21, scope: !3006)
!3014 = !DILocation(line: 662, column: 2, scope: !3006)
!3015 = !DILocation(line: 662, column: 7, scope: !3006)
!3016 = !DILocation(line: 662, column: 19, scope: !3006)
!3017 = !DILocation(line: 663, column: 1, scope: !3006)
!3018 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2201, file: !2201, line: 231, type: !3019, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!113, !3021}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!3023 = !DILocalVariable(name: "pdev", arg: 1, scope: !3018, file: !2201, line: 231, type: !3021)
!3024 = !DILocation(line: 231, column: 72, scope: !3018)
!3025 = !DILocation(line: 233, column: 26, scope: !3018)
!3026 = !DILocation(line: 233, column: 32, scope: !3018)
!3027 = !DILocation(line: 233, column: 9, scope: !3018)
!3028 = !DILocation(line: 233, column: 2, scope: !3018)
!3029 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3030, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!113, !2052}
!3032 = !DILocalVariable(name: "dev", arg: 1, scope: !3029, file: !30, line: 655, type: !2052)
!3033 = !DILocation(line: 655, column: 58, scope: !3029)
!3034 = !DILocation(line: 657, column: 9, scope: !3029)
!3035 = !DILocation(line: 657, column: 14, scope: !3029)
!3036 = !DILocation(line: 657, column: 2, scope: !3029)
!3037 = distinct !DISubprogram(name: "ptp_dte_suspend", scope: !3, file: !3, line: 284, type: !1744, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!3038 = !DILocalVariable(name: "dev", arg: 1, scope: !3037, file: !3, line: 284, type: !224)
!3039 = !DILocation(line: 284, column: 43, scope: !3037)
!3040 = !DILocalVariable(name: "ptp_dte", scope: !3037, file: !3, line: 286, type: !115)
!3041 = !DILocation(line: 286, column: 18, scope: !3037)
!3042 = !DILocation(line: 286, column: 44, scope: !3037)
!3043 = !DILocation(line: 286, column: 28, scope: !3037)
!3044 = !DILocalVariable(name: "i", scope: !3037, file: !3, line: 287, type: !685)
!3045 = !DILocation(line: 287, column: 5, scope: !3037)
!3046 = !DILocation(line: 289, column: 9, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 289, column: 2)
!3048 = !DILocation(line: 289, column: 7, scope: !3047)
!3049 = !DILocation(line: 289, column: 14, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 289, column: 2)
!3051 = !DILocation(line: 289, column: 16, scope: !3050)
!3052 = !DILocation(line: 289, column: 2, scope: !3047)
!3053 = !DILocation(line: 291, column: 10, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 289, column: 48)
!3055 = !DILocation(line: 291, column: 19, scope: !3054)
!3056 = !DILocation(line: 291, column: 27, scope: !3054)
!3057 = !DILocation(line: 291, column: 29, scope: !3054)
!3058 = !DILocation(line: 291, column: 24, scope: !3054)
!3059 = !DILocation(line: 291, column: 4, scope: !3054)
!3060 = !DILocation(line: 290, column: 3, scope: !3054)
!3061 = !DILocation(line: 290, column: 12, scope: !3054)
!3062 = !DILocation(line: 290, column: 20, scope: !3054)
!3063 = !DILocation(line: 290, column: 23, scope: !3054)
!3064 = !DILocation(line: 292, column: 2, scope: !3054)
!3065 = !DILocation(line: 289, column: 44, scope: !3050)
!3066 = !DILocation(line: 289, column: 2, scope: !3050)
!3067 = distinct !{!3067, !3052, !3068}
!3068 = !DILocation(line: 292, column: 2, scope: !3047)
!3069 = !DILocation(line: 295, column: 12, scope: !3037)
!3070 = !DILocation(line: 295, column: 21, scope: !3037)
!3071 = !DILocation(line: 295, column: 26, scope: !3037)
!3072 = !DILocation(line: 295, column: 2, scope: !3037)
!3073 = !DILocation(line: 297, column: 2, scope: !3037)
!3074 = distinct !DISubprogram(name: "ptp_dte_resume", scope: !3, file: !3, line: 300, type: !1744, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!3075 = !DILocalVariable(name: "dev", arg: 1, scope: !3074, file: !3, line: 300, type: !224)
!3076 = !DILocation(line: 300, column: 42, scope: !3074)
!3077 = !DILocalVariable(name: "ptp_dte", scope: !3074, file: !3, line: 302, type: !115)
!3078 = !DILocation(line: 302, column: 18, scope: !3074)
!3079 = !DILocation(line: 302, column: 44, scope: !3074)
!3080 = !DILocation(line: 302, column: 28, scope: !3074)
!3081 = !DILocalVariable(name: "i", scope: !3074, file: !3, line: 303, type: !685)
!3082 = !DILocation(line: 303, column: 5, scope: !3074)
!3083 = !DILocation(line: 305, column: 9, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 305, column: 2)
!3085 = !DILocation(line: 305, column: 7, scope: !3084)
!3086 = !DILocation(line: 305, column: 14, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 305, column: 2)
!3088 = !DILocation(line: 305, column: 16, scope: !3087)
!3089 = !DILocation(line: 305, column: 2, scope: !3084)
!3090 = !DILocation(line: 306, column: 8, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 306, column: 7)
!3092 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 305, column: 48)
!3093 = !DILocation(line: 306, column: 10, scope: !3091)
!3094 = !DILocation(line: 306, column: 25, scope: !3091)
!3095 = !DILocation(line: 306, column: 7, scope: !3092)
!3096 = !DILocation(line: 307, column: 11, scope: !3091)
!3097 = !DILocation(line: 307, column: 20, scope: !3091)
!3098 = !DILocation(line: 307, column: 28, scope: !3091)
!3099 = !DILocation(line: 308, column: 6, scope: !3091)
!3100 = !DILocation(line: 308, column: 15, scope: !3091)
!3101 = !DILocation(line: 308, column: 23, scope: !3091)
!3102 = !DILocation(line: 308, column: 25, scope: !3091)
!3103 = !DILocation(line: 308, column: 20, scope: !3091)
!3104 = !DILocation(line: 307, column: 4, scope: !3091)
!3105 = !DILocation(line: 310, column: 13, scope: !3091)
!3106 = !DILocation(line: 310, column: 22, scope: !3091)
!3107 = !DILocation(line: 310, column: 30, scope: !3091)
!3108 = !DILocation(line: 310, column: 33, scope: !3091)
!3109 = !DILocation(line: 311, column: 24, scope: !3091)
!3110 = !DILocation(line: 312, column: 6, scope: !3091)
!3111 = !DILocation(line: 312, column: 15, scope: !3091)
!3112 = !DILocation(line: 312, column: 23, scope: !3091)
!3113 = !DILocation(line: 312, column: 25, scope: !3091)
!3114 = !DILocation(line: 312, column: 20, scope: !3091)
!3115 = !DILocation(line: 310, column: 4, scope: !3091)
!3116 = !DILocation(line: 313, column: 2, scope: !3092)
!3117 = !DILocation(line: 305, column: 44, scope: !3087)
!3118 = !DILocation(line: 305, column: 2, scope: !3087)
!3119 = distinct !{!3119, !3089, !3120}
!3120 = !DILocation(line: 313, column: 2, scope: !3084)
!3121 = !DILocation(line: 315, column: 2, scope: !3074)
