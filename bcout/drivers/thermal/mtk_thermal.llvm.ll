; ModuleID = '../bcout/drivers/thermal/mtk_thermal.llvm.bc'
source_filename = "drivers/thermal/mtk_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_mtk_thermal_driver_init6:\09\09\09"
module asm ".long\09mtk_thermal_driver_init - .\09\09\09"
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
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
%struct.thermal_zone_of_device_ops = type { i32 (i8*, i32*)*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)* }
%struct.mtk_thermal_data = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8, [8 x %struct.thermal_bank_cfg], i32 }
%struct.thermal_bank_cfg = type { i32, i32* }
%struct.mtk_thermal = type { %struct.device*, i8*, %struct.clk*, %struct.clk*, %struct.mutex, i32, i32, i32, i32, i32, [6 x i32], %struct.mtk_thermal_data*, [8 x %struct.mtk_thermal_bank] }
%struct.clk = type opaque
%struct.mtk_thermal_bank = type { %struct.mtk_thermal*, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.thermal_attr = type opaque
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.nvmem_cell = type opaque

@__UNIQUE_ID___addressable_mtk_thermal_driver_init163 = internal global i8* bitcast (i32 ()* @mtk_thermal_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@mtk_thermal_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @mtk_thermal_probe, i32 (%struct.platform_device*)* @mtk_thermal_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([6 x %struct.of_device_id], [6 x %struct.of_device_id]* @mtk_thermal_of_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !162
@__exitcall_mtk_thermal_driver_exit = internal global void ()* @mtk_thermal_driver_exit, section ".exitcall.exit", align 8, !dbg !119
@__UNIQUE_ID_author164 = internal constant [58 x i8] c"mtk_thermal.author=Michael Kao <michael.kao@mediatek.com>\00", section ".modinfo", align 1, !dbg !126
@__UNIQUE_ID_author165 = internal constant [52 x i8] c"mtk_thermal.author=Louis Yu <louis.yu@mediatek.com>\00", section ".modinfo", align 1, !dbg !133
@__UNIQUE_ID_author166 = internal constant [58 x i8] c"mtk_thermal.author=Dawei Chien <dawei.chien@mediatek.com>\00", section ".modinfo", align 1, !dbg !138
@__UNIQUE_ID_author167 = internal constant [57 x i8] c"mtk_thermal.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1, !dbg !140
@__UNIQUE_ID_author168 = internal constant [52 x i8] c"mtk_thermal.author=Hanyi Wu <hanyi.wu@mediatek.com>\00", section ".modinfo", align 1, !dbg !145
@__UNIQUE_ID_description169 = internal constant [48 x i8] c"mtk_thermal.description=Mediatek thermal driver\00", section ".modinfo", align 1, !dbg !147
@__UNIQUE_ID_file170 = internal constant [45 x i8] c"mtk_thermal.file=drivers/thermal/mtk_thermal\00", section ".modinfo", align 1, !dbg !152
@__UNIQUE_ID_license171 = internal constant [27 x i8] c"mtk_thermal.license=GPL v2\00", section ".modinfo", align 1, !dbg !157
@.str = private unnamed_addr constant [12 x i8] c"mtk-thermal\00", align 1
@mtk_thermal_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.mtk_thermal_data* @mt8173_thermal_data to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.mtk_thermal_data* @mt2701_thermal_data to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.mtk_thermal_data* @mt2712_thermal_data to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.mtk_thermal_data* @mt7622_thermal_data to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.mtk_thermal_data* @mt8183_thermal_data to i8*) }, %struct.of_device_id zeroinitializer], align 16, !dbg !2219
@.str.1 = private unnamed_addr constant [6 x i8] c"therm\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"auxadc\00", align 1
@mtk_thermal_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2193
@.str.3 = private unnamed_addr constant [10 x i8] c"&mt->lock\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mediatek,auxadc\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"missing auxadc node\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Can't get auxadc phys address\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"mediatek,apmixedsys\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"missing apmixedsys node\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Can't enable auxadc clk: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Can't enable peri clk: %d\0A\00", align 1
@mtk_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { i32 (i8*, i32*)* @mtk_read_temp, i32 (i8*, i32, i32*)* null, i32 (i8*, i32, i32)* null, i32 (i8*, i32)* null, i32 (i8*, i32, i32)* null }, align 8, !dbg !2196
@.str.11 = private unnamed_addr constant [17 x i8] c"calibration-data\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"invalid calibration data\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Device not calibrated, using default calibration values\0A\00", align 1
@mt8173_thermal_data = internal constant %struct.mtk_thermal_data { i32 4, i32 5, i32 11, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @mt8173_vts_index, i32 0, i32 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @mt8173_mux_values, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mt8173_msr, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mt8173_adcpnp, i32 0, i32 0), i32 165, i32 1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt8173_tc_offset, i32 0, i32 0), i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 2, i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @mt8173_bank_data, i32 0, i32 0, i32 0) }, %struct.thermal_bank_cfg { i32 2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [3 x i32]]* @mt8173_bank_data to i8*), i64 12) to i32*) }, %struct.thermal_bank_cfg { i32 3, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [3 x i32]]* @mt8173_bank_data to i8*), i64 24) to i32*) }, %struct.thermal_bank_cfg { i32 1, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [3 x i32]]* @mt8173_bank_data to i8*), i64 36) to i32*) }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, align 8, !dbg !2222
@mt2701_thermal_data = internal constant %struct.mtk_thermal_data { i32 1, i32 3, i32 11, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @mt2701_vts_index, i32 0, i32 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @mt2701_mux_values, i32 0, i32 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @mt2701_msr, i32 0, i32 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @mt2701_adcpnp, i32 0, i32 0), i32 165, i32 1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt2701_tc_offset, i32 0, i32 0), i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @mt2701_bank_data, i32 0, i32 0) }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, align 8, !dbg !2266
@mt2712_thermal_data = internal constant %struct.mtk_thermal_data { i32 1, i32 4, i32 11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mt2712_vts_index, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mt2712_mux_values, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mt2712_msr, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mt2712_adcpnp, i32 0, i32 0), i32 165, i32 1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt2712_tc_offset, i32 0, i32 0), i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mt2712_bank_data, i32 0, i32 0) }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, align 8, !dbg !2281
@mt7622_thermal_data = internal constant %struct.mtk_thermal_data { i32 1, i32 1, i32 11, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt7622_vts_index, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt7622_mux_values, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt7622_msr, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt7622_adcpnp, i32 0, i32 0), i32 165, i32 1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt7622_tc_offset, i32 0, i32 0), i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @mt7622_bank_data, i32 0, i32 0) }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 2 }, align 8, !dbg !2295
@mt8183_thermal_data = internal constant %struct.mtk_thermal_data { i32 1, i32 6, i32 11, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @mt8183_vts_index, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @mt8183_mux_values, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @mt8183_msr, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @mt8183_adcpnp, i32 0, i32 0), i32 153, i32 2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @mt8183_tc_offset, i32 0, i32 0), i8 0, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 6, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @mt8183_bank_data, i32 0, i32 0) }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, align 8, !dbg !2309
@mt8173_vts_index = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5], align 16, !dbg !2247
@mt8173_mux_values = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 16], align 16, !dbg !2252
@mt8173_msr = internal constant [4 x i32] [i32 144, i32 148, i32 152, i32 184], align 16, !dbg !2254
@mt8173_adcpnp = internal constant [4 x i32] [i32 72, i32 76, i32 80, i32 180], align 16, !dbg !2257
@mt8173_tc_offset = internal constant [1 x i32] zeroinitializer, align 4, !dbg !2259
@mt8173_bank_data = internal constant [4 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 0], [3 x i32] [i32 1, i32 3, i32 0], [3 x i32] [i32 0, i32 1, i32 4], [3 x i32] [i32 1, i32 0, i32 0]], align 16, !dbg !2262
@mt2701_vts_index = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !2268
@mt2701_mux_values = internal constant [3 x i32] [i32 0, i32 1, i32 16], align 4, !dbg !2271
@mt2701_msr = internal constant [3 x i32] [i32 144, i32 148, i32 152], align 4, !dbg !2273
@mt2701_adcpnp = internal constant [3 x i32] [i32 72, i32 76, i32 80], align 4, !dbg !2275
@mt2701_tc_offset = internal constant [1 x i32] zeroinitializer, align 4, !dbg !2277
@mt2701_bank_data = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !2279
@mt2712_vts_index = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16, !dbg !2283
@mt2712_mux_values = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16, !dbg !2285
@mt2712_msr = internal constant [4 x i32] [i32 144, i32 148, i32 152, i32 184], align 16, !dbg !2287
@mt2712_adcpnp = internal constant [4 x i32] [i32 72, i32 76, i32 80, i32 180], align 16, !dbg !2289
@mt2712_tc_offset = internal constant [1 x i32] zeroinitializer, align 4, !dbg !2291
@mt2712_bank_data = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16, !dbg !2293
@mt7622_vts_index = internal constant [1 x i32] zeroinitializer, align 4, !dbg !2297
@mt7622_mux_values = internal constant [1 x i32] zeroinitializer, align 4, !dbg !2299
@mt7622_msr = internal constant [1 x i32] [i32 144], align 4, !dbg !2301
@mt7622_adcpnp = internal constant [1 x i32] [i32 72], align 4, !dbg !2303
@mt7622_tc_offset = internal constant [1 x i32] zeroinitializer, align 4, !dbg !2305
@mt7622_bank_data = internal constant [1 x i32] zeroinitializer, align 4, !dbg !2307
@mt8183_vts_index = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16, !dbg !2311
@mt8183_mux_values = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 0], align 16, !dbg !2314
@mt8183_msr = internal constant [6 x i32] [i32 400, i32 404, i32 408, i32 148, i32 144, i32 440], align 16, !dbg !2316
@mt8183_adcpnp = internal constant [6 x i32] [i32 328, i32 332, i32 336, i32 76, i32 72, i32 436], align 16, !dbg !2318
@mt8183_tc_offset = internal constant [2 x i32] [i32 0, i32 256], align 4, !dbg !2320
@mt8183_bank_data = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16, !dbg !2323
@llvm.used = appending global [11 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_mtk_thermal_driver_init163 to i8*), i8* bitcast (void ()* @mtk_thermal_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_mtk_thermal_driver_exit to i8*), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author164, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author165, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author166, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_author167, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author168, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_description169, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file170, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license171, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_thermal_driver_init() #0 section ".init.text" !dbg !2330 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @mtk_thermal_driver, %struct.module* null) #5, !dbg !2333
  ret i32 %call, !dbg !2333
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @mtk_thermal_driver_exit() #0 section ".exit.text" !dbg !2334 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @mtk_thermal_driver) #5, !dbg !2335
  ret void, !dbg !2335
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_thermal_probe(%struct.platform_device* %pdev) #2 !dbg !2195 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %ctrl_id = alloca i32, align 4
  %auxadc = alloca %struct.device_node*, align 8
  %apmixedsys = alloca %struct.device_node*, align 8
  %np = alloca %struct.device_node*, align 8
  %mt = alloca %struct.mtk_thermal*, align 8
  %res = alloca %struct.resource*, align 8
  %auxadc_phys_base = alloca i64, align 8
  %apmixed_phys_base = alloca i64, align 8
  %tzdev = alloca %struct.thermal_zone_device*, align 8
  %apmixed_base = alloca i8*, align 8
  %auxadc_base = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2336, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2338, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.declare(metadata i32* %ctrl_id, metadata !2342, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.declare(metadata %struct.device_node** %auxadc, metadata !2344, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.declare(metadata %struct.device_node** %apmixedsys, metadata !2346, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2348, metadata !DIExpression()), !dbg !2349
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2350
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2351
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !2352
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2352
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !2349
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt, metadata !2353, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2381, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.declare(metadata i64* %auxadc_phys_base, metadata !2383, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.declare(metadata i64* %apmixed_phys_base, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzdev, metadata !2387, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.declare(metadata i8** %apmixed_base, metadata !2558, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.declare(metadata i8** %auxadc_base, metadata !2560, metadata !DIExpression()), !dbg !2561
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2562
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !2563
  %call = call i8* @devm_kzalloc(%struct.device* %dev1, i64 240, i32 3264) #5, !dbg !2564
  %3 = bitcast i8* %call to %struct.mtk_thermal*, !dbg !2564
  store %struct.mtk_thermal* %3, %struct.mtk_thermal** %mt, align 8, !dbg !2565
  %4 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2566
  %tobool = icmp ne %struct.mtk_thermal* %4, null, !dbg !2566
  br i1 %tobool, label %if.end, label %if.then, !dbg !2568

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2569
  br label %return, !dbg !2569

if.end:                                           ; preds = %entry
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2570
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !2571
  %call3 = call i8* @of_device_get_match_data(%struct.device* %dev2) #5, !dbg !2572
  %6 = bitcast i8* %call3 to %struct.mtk_thermal_data*, !dbg !2572
  %7 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2573
  %conf = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %7, i32 0, i32 11, !dbg !2574
  store %struct.mtk_thermal_data* %6, %struct.mtk_thermal_data** %conf, align 8, !dbg !2575
  %8 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2576
  %dev4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 3, !dbg !2577
  %call5 = call %struct.clk* @devm_clk_get(%struct.device* %dev4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !2578
  %9 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2579
  %clk_peri_therm = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %9, i32 0, i32 2, !dbg !2580
  store %struct.clk* %call5, %struct.clk** %clk_peri_therm, align 8, !dbg !2581
  %10 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2582
  %clk_peri_therm6 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %10, i32 0, i32 2, !dbg !2584
  %11 = load %struct.clk*, %struct.clk** %clk_peri_therm6, align 8, !dbg !2584
  %12 = bitcast %struct.clk* %11 to i8*, !dbg !2582
  %call7 = call zeroext i1 @IS_ERR(i8* %12) #5, !dbg !2585
  br i1 %call7, label %if.then8, label %if.end11, !dbg !2586

if.then8:                                         ; preds = %if.end
  %13 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2587
  %clk_peri_therm9 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %13, i32 0, i32 2, !dbg !2588
  %14 = load %struct.clk*, %struct.clk** %clk_peri_therm9, align 8, !dbg !2588
  %15 = bitcast %struct.clk* %14 to i8*, !dbg !2587
  %call10 = call i64 @PTR_ERR(i8* %15) #5, !dbg !2589
  %conv = trunc i64 %call10 to i32, !dbg !2589
  store i32 %conv, i32* %retval, align 4, !dbg !2590
  br label %return, !dbg !2590

if.end11:                                         ; preds = %if.end
  %16 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2591
  %dev12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 3, !dbg !2592
  %call13 = call %struct.clk* @devm_clk_get(%struct.device* %dev12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !2593
  %17 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2594
  %clk_auxadc = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %17, i32 0, i32 3, !dbg !2595
  store %struct.clk* %call13, %struct.clk** %clk_auxadc, align 8, !dbg !2596
  %18 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2597
  %clk_auxadc14 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %18, i32 0, i32 3, !dbg !2599
  %19 = load %struct.clk*, %struct.clk** %clk_auxadc14, align 8, !dbg !2599
  %20 = bitcast %struct.clk* %19 to i8*, !dbg !2597
  %call15 = call zeroext i1 @IS_ERR(i8* %20) #5, !dbg !2600
  br i1 %call15, label %if.then16, label %if.end20, !dbg !2601

if.then16:                                        ; preds = %if.end11
  %21 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2602
  %clk_auxadc17 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %21, i32 0, i32 3, !dbg !2603
  %22 = load %struct.clk*, %struct.clk** %clk_auxadc17, align 8, !dbg !2603
  %23 = bitcast %struct.clk* %22 to i8*, !dbg !2602
  %call18 = call i64 @PTR_ERR(i8* %23) #5, !dbg !2604
  %conv19 = trunc i64 %call18 to i32, !dbg !2604
  store i32 %conv19, i32* %retval, align 4, !dbg !2605
  br label %return, !dbg !2605

if.end20:                                         ; preds = %if.end11
  %24 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2606
  %call21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 512, i32 0) #5, !dbg !2607
  store %struct.resource* %call21, %struct.resource** %res, align 8, !dbg !2608
  %25 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2609
  %dev22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 3, !dbg !2610
  %26 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2611
  %call23 = call i8* @devm_ioremap_resource(%struct.device* %dev22, %struct.resource* %26) #5, !dbg !2612
  %27 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2613
  %thermal_base = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %27, i32 0, i32 1, !dbg !2614
  store i8* %call23, i8** %thermal_base, align 8, !dbg !2615
  %28 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2616
  %thermal_base24 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %28, i32 0, i32 1, !dbg !2618
  %29 = load i8*, i8** %thermal_base24, align 8, !dbg !2618
  %call25 = call zeroext i1 @IS_ERR(i8* %29) #5, !dbg !2619
  br i1 %call25, label %if.then26, label %if.end30, !dbg !2620

if.then26:                                        ; preds = %if.end20
  %30 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2621
  %thermal_base27 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %30, i32 0, i32 1, !dbg !2622
  %31 = load i8*, i8** %thermal_base27, align 8, !dbg !2622
  %call28 = call i64 @PTR_ERR(i8* %31) #5, !dbg !2623
  %conv29 = trunc i64 %call28 to i32, !dbg !2623
  store i32 %conv29, i32* %retval, align 4, !dbg !2624
  br label %return, !dbg !2624

if.end30:                                         ; preds = %if.end20
  %32 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2625
  %dev31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 3, !dbg !2626
  %33 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2627
  %call32 = call i32 @mtk_thermal_get_calibration_data(%struct.device* %dev31, %struct.mtk_thermal* %33) #5, !dbg !2628
  store i32 %call32, i32* %ret, align 4, !dbg !2629
  %34 = load i32, i32* %ret, align 4, !dbg !2630
  %tobool33 = icmp ne i32 %34, 0, !dbg !2630
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !2632

if.then34:                                        ; preds = %if.end30
  %35 = load i32, i32* %ret, align 4, !dbg !2633
  store i32 %35, i32* %retval, align 4, !dbg !2634
  br label %return, !dbg !2634

if.end35:                                         ; preds = %if.end30
  br label %do.body, !dbg !2635

do.body:                                          ; preds = %if.end35
  %36 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2636
  %lock = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %36, i32 0, i32 4, !dbg !2636
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* @mtk_thermal_probe.__key) #5, !dbg !2636
  br label %do.end, !dbg !2636

do.end:                                           ; preds = %do.body
  %37 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2638
  %dev36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 3, !dbg !2639
  %38 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2640
  %dev37 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %38, i32 0, i32 0, !dbg !2641
  store %struct.device* %dev36, %struct.device** %dev37, align 8, !dbg !2642
  %39 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2643
  %call38 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0) #5, !dbg !2644
  store %struct.device_node* %call38, %struct.device_node** %auxadc, align 8, !dbg !2645
  %40 = load %struct.device_node*, %struct.device_node** %auxadc, align 8, !dbg !2646
  %tobool39 = icmp ne %struct.device_node* %40, null, !dbg !2646
  br i1 %tobool39, label %if.end42, label %if.then40, !dbg !2648

if.then40:                                        ; preds = %do.end
  %41 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2649
  %dev41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 3, !dbg !2649
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2649
  store i32 -19, i32* %retval, align 4, !dbg !2651
  br label %return, !dbg !2651

if.end42:                                         ; preds = %do.end
  %42 = load %struct.device_node*, %struct.device_node** %auxadc, align 8, !dbg !2652
  %call43 = call i8* @of_iomap(%struct.device_node* %42, i32 0) #5, !dbg !2653
  store i8* %call43, i8** %auxadc_base, align 8, !dbg !2654
  %43 = load %struct.device_node*, %struct.device_node** %auxadc, align 8, !dbg !2655
  %call44 = call i64 @of_get_phys_base(%struct.device_node* %43) #5, !dbg !2656
  store i64 %call44, i64* %auxadc_phys_base, align 8, !dbg !2657
  %44 = load %struct.device_node*, %struct.device_node** %auxadc, align 8, !dbg !2658
  call void @of_node_put(%struct.device_node* %44) #5, !dbg !2659
  %45 = load i64, i64* %auxadc_phys_base, align 8, !dbg !2660
  %cmp = icmp eq i64 %45, -1, !dbg !2662
  br i1 %cmp, label %if.then46, label %if.end48, !dbg !2663

if.then46:                                        ; preds = %if.end42
  %46 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2664
  %dev47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 3, !dbg !2664
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2664
  store i32 -22, i32* %retval, align 4, !dbg !2666
  br label %return, !dbg !2666

if.end48:                                         ; preds = %if.end42
  %47 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2667
  %call49 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 0) #5, !dbg !2668
  store %struct.device_node* %call49, %struct.device_node** %apmixedsys, align 8, !dbg !2669
  %48 = load %struct.device_node*, %struct.device_node** %apmixedsys, align 8, !dbg !2670
  %tobool50 = icmp ne %struct.device_node* %48, null, !dbg !2670
  br i1 %tobool50, label %if.end53, label %if.then51, !dbg !2672

if.then51:                                        ; preds = %if.end48
  %49 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2673
  %dev52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 3, !dbg !2673
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2673
  store i32 -19, i32* %retval, align 4, !dbg !2675
  br label %return, !dbg !2675

if.end53:                                         ; preds = %if.end48
  %50 = load %struct.device_node*, %struct.device_node** %apmixedsys, align 8, !dbg !2676
  %call54 = call i8* @of_iomap(%struct.device_node* %50, i32 0) #5, !dbg !2677
  store i8* %call54, i8** %apmixed_base, align 8, !dbg !2678
  %51 = load %struct.device_node*, %struct.device_node** %apmixedsys, align 8, !dbg !2679
  %call55 = call i64 @of_get_phys_base(%struct.device_node* %51) #5, !dbg !2680
  store i64 %call55, i64* %apmixed_phys_base, align 8, !dbg !2681
  %52 = load %struct.device_node*, %struct.device_node** %apmixedsys, align 8, !dbg !2682
  call void @of_node_put(%struct.device_node* %52) #5, !dbg !2683
  %53 = load i64, i64* %apmixed_phys_base, align 8, !dbg !2684
  %cmp56 = icmp eq i64 %53, -1, !dbg !2686
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !2687

if.then58:                                        ; preds = %if.end53
  %54 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2688
  %dev59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 3, !dbg !2688
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2688
  store i32 -22, i32* %retval, align 4, !dbg !2690
  br label %return, !dbg !2690

if.end60:                                         ; preds = %if.end53
  %55 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2691
  %dev61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 3, !dbg !2692
  %call62 = call i32 @device_reset(%struct.device* %dev61) #5, !dbg !2693
  store i32 %call62, i32* %ret, align 4, !dbg !2694
  %56 = load i32, i32* %ret, align 4, !dbg !2695
  %tobool63 = icmp ne i32 %56, 0, !dbg !2695
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !2697

if.then64:                                        ; preds = %if.end60
  %57 = load i32, i32* %ret, align 4, !dbg !2698
  store i32 %57, i32* %retval, align 4, !dbg !2699
  br label %return, !dbg !2699

if.end65:                                         ; preds = %if.end60
  %58 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2700
  %clk_auxadc66 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %58, i32 0, i32 3, !dbg !2701
  %59 = load %struct.clk*, %struct.clk** %clk_auxadc66, align 8, !dbg !2701
  %call67 = call i32 @clk_prepare_enable(%struct.clk* %59) #5, !dbg !2702
  store i32 %call67, i32* %ret, align 4, !dbg !2703
  %60 = load i32, i32* %ret, align 4, !dbg !2704
  %tobool68 = icmp ne i32 %60, 0, !dbg !2704
  br i1 %tobool68, label %if.then69, label %if.end71, !dbg !2706

if.then69:                                        ; preds = %if.end65
  %61 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2707
  %dev70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 3, !dbg !2707
  %62 = load i32, i32* %ret, align 4, !dbg !2707
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %62) #6, !dbg !2707
  %63 = load i32, i32* %ret, align 4, !dbg !2709
  store i32 %63, i32* %retval, align 4, !dbg !2710
  br label %return, !dbg !2710

if.end71:                                         ; preds = %if.end65
  %64 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2711
  %clk_peri_therm72 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %64, i32 0, i32 2, !dbg !2712
  %65 = load %struct.clk*, %struct.clk** %clk_peri_therm72, align 8, !dbg !2712
  %call73 = call i32 @clk_prepare_enable(%struct.clk* %65) #5, !dbg !2713
  store i32 %call73, i32* %ret, align 4, !dbg !2714
  %66 = load i32, i32* %ret, align 4, !dbg !2715
  %tobool74 = icmp ne i32 %66, 0, !dbg !2715
  br i1 %tobool74, label %if.then75, label %if.end77, !dbg !2717

if.then75:                                        ; preds = %if.end71
  %67 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2718
  %dev76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 3, !dbg !2718
  %68 = load i32, i32* %ret, align 4, !dbg !2718
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %68) #6, !dbg !2718
  br label %err_disable_clk_auxadc, !dbg !2720

if.end77:                                         ; preds = %if.end71
  %69 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2721
  %conf78 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %69, i32 0, i32 11, !dbg !2723
  %70 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf78, align 8, !dbg !2723
  %version = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %70, i32 0, i32 12, !dbg !2724
  %71 = load i32, i32* %version, align 8, !dbg !2724
  %cmp79 = icmp eq i32 %71, 2, !dbg !2725
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !2726

if.then81:                                        ; preds = %if.end77
  %72 = load i8*, i8** %apmixed_base, align 8, !dbg !2727
  call void @mtk_thermal_turn_on_buffer(i8* %72) #5, !dbg !2729
  %73 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2730
  %74 = load i8*, i8** %auxadc_base, align 8, !dbg !2731
  call void @mtk_thermal_release_periodic_ts(%struct.mtk_thermal* %73, i8* %74) #5, !dbg !2732
  br label %if.end82, !dbg !2733

if.end82:                                         ; preds = %if.then81, %if.end77
  store i32 0, i32* %ctrl_id, align 4, !dbg !2734
  br label %for.cond, !dbg !2736

for.cond:                                         ; preds = %for.inc93, %if.end82
  %75 = load i32, i32* %ctrl_id, align 4, !dbg !2737
  %76 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2739
  %conf83 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %76, i32 0, i32 11, !dbg !2740
  %77 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf83, align 8, !dbg !2740
  %num_controller = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %77, i32 0, i32 8, !dbg !2741
  %78 = load i32, i32* %num_controller, align 4, !dbg !2741
  %cmp84 = icmp slt i32 %75, %78, !dbg !2742
  br i1 %cmp84, label %for.body, label %for.end95, !dbg !2743

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !2744
  br label %for.cond86, !dbg !2746

for.cond86:                                       ; preds = %for.inc, %for.body
  %79 = load i32, i32* %i, align 4, !dbg !2747
  %80 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2749
  %conf87 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %80, i32 0, i32 11, !dbg !2750
  %81 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf87, align 8, !dbg !2750
  %num_banks = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %81, i32 0, i32 0, !dbg !2751
  %82 = load i32, i32* %num_banks, align 8, !dbg !2751
  %cmp88 = icmp slt i32 %79, %82, !dbg !2752
  br i1 %cmp88, label %for.body90, label %for.end, !dbg !2753

for.body90:                                       ; preds = %for.cond86
  %83 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2754
  %84 = load i32, i32* %i, align 4, !dbg !2755
  %85 = load i64, i64* %apmixed_phys_base, align 8, !dbg !2756
  %conv91 = trunc i64 %85 to i32, !dbg !2756
  %86 = load i64, i64* %auxadc_phys_base, align 8, !dbg !2757
  %conv92 = trunc i64 %86 to i32, !dbg !2757
  %87 = load i32, i32* %ctrl_id, align 4, !dbg !2758
  call void @mtk_thermal_init_bank(%struct.mtk_thermal* %83, i32 %84, i32 %conv91, i32 %conv92, i32 %87) #5, !dbg !2759
  br label %for.inc, !dbg !2759

for.inc:                                          ; preds = %for.body90
  %88 = load i32, i32* %i, align 4, !dbg !2760
  %inc = add i32 %88, 1, !dbg !2760
  store i32 %inc, i32* %i, align 4, !dbg !2760
  br label %for.cond86, !dbg !2761, !llvm.loop !2762

for.end:                                          ; preds = %for.cond86
  br label %for.inc93, !dbg !2763

for.inc93:                                        ; preds = %for.end
  %89 = load i32, i32* %ctrl_id, align 4, !dbg !2764
  %inc94 = add i32 %89, 1, !dbg !2764
  store i32 %inc94, i32* %ctrl_id, align 4, !dbg !2764
  br label %for.cond, !dbg !2765, !llvm.loop !2766

for.end95:                                        ; preds = %for.cond
  %90 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2768
  %91 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2769
  %92 = bitcast %struct.mtk_thermal* %91 to i8*, !dbg !2769
  call void @platform_set_drvdata(%struct.platform_device* %90, i8* %92) #5, !dbg !2770
  %93 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2771
  %dev96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 3, !dbg !2772
  %94 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2773
  %95 = bitcast %struct.mtk_thermal* %94 to i8*, !dbg !2773
  %call97 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.device* %dev96, i32 0, i8* %95, %struct.thermal_zone_of_device_ops* @mtk_thermal_ops) #5, !dbg !2774
  store %struct.thermal_zone_device* %call97, %struct.thermal_zone_device** %tzdev, align 8, !dbg !2775
  %96 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzdev, align 8, !dbg !2776
  %97 = bitcast %struct.thermal_zone_device* %96 to i8*, !dbg !2776
  %call98 = call zeroext i1 @IS_ERR(i8* %97) #5, !dbg !2778
  br i1 %call98, label %if.then99, label %if.end102, !dbg !2779

if.then99:                                        ; preds = %for.end95
  %98 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzdev, align 8, !dbg !2780
  %99 = bitcast %struct.thermal_zone_device* %98 to i8*, !dbg !2780
  %call100 = call i64 @PTR_ERR(i8* %99) #5, !dbg !2782
  %conv101 = trunc i64 %call100 to i32, !dbg !2782
  store i32 %conv101, i32* %ret, align 4, !dbg !2783
  br label %err_disable_clk_peri_therm, !dbg !2784

if.end102:                                        ; preds = %for.end95
  store i32 0, i32* %retval, align 4, !dbg !2785
  br label %return, !dbg !2785

err_disable_clk_peri_therm:                       ; preds = %if.then99
  call void @llvm.dbg.label(metadata !2786), !dbg !2787
  %100 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2788
  %clk_peri_therm103 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %100, i32 0, i32 2, !dbg !2789
  %101 = load %struct.clk*, %struct.clk** %clk_peri_therm103, align 8, !dbg !2789
  call void @clk_disable_unprepare(%struct.clk* %101) #5, !dbg !2790
  br label %err_disable_clk_auxadc, !dbg !2790

err_disable_clk_auxadc:                           ; preds = %err_disable_clk_peri_therm, %if.then75
  call void @llvm.dbg.label(metadata !2791), !dbg !2792
  %102 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2793
  %clk_auxadc104 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %102, i32 0, i32 3, !dbg !2794
  %103 = load %struct.clk*, %struct.clk** %clk_auxadc104, align 8, !dbg !2794
  call void @clk_disable_unprepare(%struct.clk* %103) #5, !dbg !2795
  %104 = load i32, i32* %ret, align 4, !dbg !2796
  store i32 %104, i32* %retval, align 4, !dbg !2797
  br label %return, !dbg !2797

return:                                           ; preds = %err_disable_clk_auxadc, %if.end102, %if.then69, %if.then64, %if.then58, %if.then51, %if.then46, %if.then40, %if.then34, %if.then26, %if.then16, %if.then8, %if.then
  %105 = load i32, i32* %retval, align 4, !dbg !2798
  ret i32 %105, !dbg !2798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_thermal_remove(%struct.platform_device* %pdev) #2 !dbg !2799 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %mt = alloca %struct.mtk_thermal*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt, metadata !2802, metadata !DIExpression()), !dbg !2803
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2804
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !2805
  %1 = bitcast i8* %call to %struct.mtk_thermal*, !dbg !2805
  store %struct.mtk_thermal* %1, %struct.mtk_thermal** %mt, align 8, !dbg !2803
  %2 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2806
  %clk_peri_therm = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %2, i32 0, i32 2, !dbg !2807
  %3 = load %struct.clk*, %struct.clk** %clk_peri_therm, align 8, !dbg !2807
  call void @clk_disable_unprepare(%struct.clk* %3) #5, !dbg !2808
  %4 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !2809
  %clk_auxadc = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %4, i32 0, i32 3, !dbg !2810
  %5 = load %struct.clk*, %struct.clk** %clk_auxadc, align 8, !dbg !2810
  call void @clk_disable_unprepare(%struct.clk* %5) #5, !dbg !2811
  ret i32 0, !dbg !2812
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2813 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2816, metadata !DIExpression()), !dbg !2817
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2820, metadata !DIExpression()), !dbg !2821
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2822
  %1 = load i64, i64* %size.addr, align 8, !dbg !2823
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2824
  %or = or i32 %2, 256, !dbg !2825
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !2826
  ret i8* %call, !dbg !2827
}

; Function Attrs: noredzone
declare dso_local i8* @of_device_get_match_data(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2828 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2832, metadata !DIExpression()), !dbg !2833
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2834
  %1 = ptrtoint i8* %0 to i64, !dbg !2834
  %2 = inttoptr i64 %1 to i8*, !dbg !2834
  %3 = ptrtoint i8* %2 to i64, !dbg !2834
  %cmp = icmp uge i64 %3, -4095, !dbg !2834
  %lnot = xor i1 %cmp, true, !dbg !2834
  %lnot1 = xor i1 %lnot, true, !dbg !2834
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2834
  %conv = sext i32 %lnot.ext to i64, !dbg !2834
  %tobool = icmp ne i64 %conv, 0, !dbg !2834
  ret i1 %tobool, !dbg !2835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2836 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2839, metadata !DIExpression()), !dbg !2840
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2841
  %1 = ptrtoint i8* %0 to i64, !dbg !2842
  ret i64 %1, !dbg !2843
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_thermal_get_calibration_data(%struct.device* %dev, %struct.mtk_thermal* %mt) #2 !dbg !2844 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %mt.addr = alloca %struct.mtk_thermal*, align 8
  %cell = alloca %struct.nvmem_cell*, align 8
  %buf = alloca i32*, align 8
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2847, metadata !DIExpression()), !dbg !2848
  store %struct.mtk_thermal* %mt, %struct.mtk_thermal** %mt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt.addr, metadata !2849, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.declare(metadata %struct.nvmem_cell** %cell, metadata !2851, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.declare(metadata i32** %buf, metadata !2856, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.declare(metadata i64* %len, metadata !2858, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2862, metadata !DIExpression()), !dbg !2863
  store i32 0, i32* %ret, align 4, !dbg !2863
  %0 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !2864
  %adc_ge = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %0, i32 0, i32 5, !dbg !2865
  store i32 512, i32* %adc_ge, align 8, !dbg !2866
  store i32 0, i32* %i, align 4, !dbg !2867
  br label %for.cond, !dbg !2869

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !2870
  %2 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !2872
  %conf = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %2, i32 0, i32 11, !dbg !2873
  %3 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !2873
  %num_sensors = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %3, i32 0, i32 1, !dbg !2874
  %4 = load i32, i32* %num_sensors, align 4, !dbg !2874
  %cmp = icmp slt i32 %1, %4, !dbg !2875
  br i1 %cmp, label %for.body, label %for.end, !dbg !2876

for.body:                                         ; preds = %for.cond
  %5 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !2877
  %vts = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %5, i32 0, i32 10, !dbg !2878
  %6 = load i32, i32* %i, align 4, !dbg !2879
  %idxprom = sext i32 %6 to i64, !dbg !2877
  %arrayidx = getelementptr [6 x i32], [6 x i32]* %vts, i64 0, i64 %idxprom, !dbg !2877
  store i32 260, i32* %arrayidx, align 4, !dbg !2880
  br label %for.inc, !dbg !2877

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !2881
  %inc = add i32 %7, 1, !dbg !2881
  store i32 %inc, i32* %i, align 4, !dbg !2881
  br label %for.cond, !dbg !2882, !llvm.loop !2883

for.end:                                          ; preds = %for.cond
  %8 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !2885
  %degc_cali = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %8, i32 0, i32 7, !dbg !2886
  store i32 40, i32* %degc_cali, align 8, !dbg !2887
  %9 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !2888
  %o_slope = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %9, i32 0, i32 8, !dbg !2889
  store i32 0, i32* %o_slope, align 4, !dbg !2890
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2891
  %call = call %struct.nvmem_cell* @nvmem_cell_get(%struct.device* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !2892
  store %struct.nvmem_cell* %call, %struct.nvmem_cell** %cell, align 8, !dbg !2893
  %11 = load %struct.nvmem_cell*, %struct.nvmem_cell** %cell, align 8, !dbg !2894
  %12 = bitcast %struct.nvmem_cell* %11 to i8*, !dbg !2894
  %call1 = call zeroext i1 @IS_ERR(i8* %12) #5, !dbg !2896
  br i1 %call1, label %if.then, label %if.end6, !dbg !2897

if.then:                                          ; preds = %for.end
  %13 = load %struct.nvmem_cell*, %struct.nvmem_cell** %cell, align 8, !dbg !2898
  %14 = bitcast %struct.nvmem_cell* %13 to i8*, !dbg !2898
  %call2 = call i64 @PTR_ERR(i8* %14) #5, !dbg !2901
  %cmp3 = icmp eq i64 %call2, -517, !dbg !2902
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !2903

if.then4:                                         ; preds = %if.then
  %15 = load %struct.nvmem_cell*, %struct.nvmem_cell** %cell, align 8, !dbg !2904
  %16 = bitcast %struct.nvmem_cell* %15 to i8*, !dbg !2904
  %call5 = call i64 @PTR_ERR(i8* %16) #5, !dbg !2905
  %conv = trunc i64 %call5 to i32, !dbg !2905
  store i32 %conv, i32* %retval, align 4, !dbg !2906
  br label %return, !dbg !2906

if.end:                                           ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !2907
  br label %return, !dbg !2907

if.end6:                                          ; preds = %for.end
  %17 = load %struct.nvmem_cell*, %struct.nvmem_cell** %cell, align 8, !dbg !2908
  %call7 = call i8* @nvmem_cell_read(%struct.nvmem_cell* %17, i64* %len) #5, !dbg !2909
  %18 = bitcast i8* %call7 to i32*, !dbg !2910
  store i32* %18, i32** %buf, align 8, !dbg !2911
  %19 = load %struct.nvmem_cell*, %struct.nvmem_cell** %cell, align 8, !dbg !2912
  call void @nvmem_cell_put(%struct.nvmem_cell* %19) #5, !dbg !2913
  %20 = load i32*, i32** %buf, align 8, !dbg !2914
  %21 = bitcast i32* %20 to i8*, !dbg !2914
  %call8 = call zeroext i1 @IS_ERR(i8* %21) #5, !dbg !2916
  br i1 %call8, label %if.then9, label %if.end12, !dbg !2917

if.then9:                                         ; preds = %if.end6
  %22 = load i32*, i32** %buf, align 8, !dbg !2918
  %23 = bitcast i32* %22 to i8*, !dbg !2918
  %call10 = call i64 @PTR_ERR(i8* %23) #5, !dbg !2919
  %conv11 = trunc i64 %call10 to i32, !dbg !2919
  store i32 %conv11, i32* %retval, align 4, !dbg !2920
  br label %return, !dbg !2920

if.end12:                                         ; preds = %if.end6
  %24 = load i64, i64* %len, align 8, !dbg !2921
  %cmp13 = icmp ult i64 %24, 12, !dbg !2923
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !2924

if.then15:                                        ; preds = %if.end12
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2925
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2925
  store i32 -22, i32* %ret, align 4, !dbg !2927
  br label %out, !dbg !2928

if.end16:                                         ; preds = %if.end12
  %26 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !2929
  %conf17 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %26, i32 0, i32 11, !dbg !2931
  %27 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf17, align 8, !dbg !2931
  %version = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %27, i32 0, i32 12, !dbg !2932
  %28 = load i32, i32* %version, align 8, !dbg !2932
  %cmp18 = icmp eq i32 %28, 1, !dbg !2933
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !2934

if.then20:                                        ; preds = %if.end16
  %29 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !2935
  %30 = load i32*, i32** %buf, align 8, !dbg !2936
  %call21 = call i32 @mtk_thermal_extract_efuse_v1(%struct.mtk_thermal* %29, i32* %30) #5, !dbg !2937
  store i32 %call21, i32* %ret, align 4, !dbg !2938
  br label %if.end23, !dbg !2939

if.else:                                          ; preds = %if.end16
  %31 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !2940
  %32 = load i32*, i32** %buf, align 8, !dbg !2941
  %call22 = call i32 @mtk_thermal_extract_efuse_v2(%struct.mtk_thermal* %31, i32* %32) #5, !dbg !2942
  store i32 %call22, i32* %ret, align 4, !dbg !2943
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %33 = load i32, i32* %ret, align 4, !dbg !2944
  %tobool = icmp ne i32 %33, 0, !dbg !2944
  br i1 %tobool, label %if.then24, label %if.end25, !dbg !2946

if.then24:                                        ; preds = %if.end23
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2947
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2947
  store i32 0, i32* %ret, align 4, !dbg !2949
  br label %if.end25, !dbg !2950

if.end25:                                         ; preds = %if.then24, %if.end23
  br label %out, !dbg !2944

out:                                              ; preds = %if.end25, %if.then15
  call void @llvm.dbg.label(metadata !2951), !dbg !2952
  %35 = load i32*, i32** %buf, align 8, !dbg !2953
  %36 = bitcast i32* %35 to i8*, !dbg !2953
  call void @kfree(i8* %36) #5, !dbg !2954
  %37 = load i32, i32* %ret, align 4, !dbg !2955
  store i32 %37, i32* %retval, align 4, !dbg !2956
  br label %return, !dbg !2956

return:                                           ; preds = %out, %if.then9, %if.end, %if.then4
  %38 = load i32, i32* %retval, align 4, !dbg !2957
  ret i32 %38, !dbg !2957
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i8* @of_iomap(%struct.device_node*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_get_phys_base(%struct.device_node* %np) #2 !dbg !2958 {
entry:
  %retval = alloca i64, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %size64 = alloca i64, align 8
  %regaddr_p = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.declare(metadata i64* %size64, metadata !2963, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.declare(metadata i32** %regaddr_p, metadata !2965, metadata !DIExpression()), !dbg !2969
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2970
  %call = call i32* @of_get_address(%struct.device_node* %0, i32 0, i64* %size64, i32* null) #5, !dbg !2971
  store i32* %call, i32** %regaddr_p, align 8, !dbg !2972
  %1 = load i32*, i32** %regaddr_p, align 8, !dbg !2973
  %tobool = icmp ne i32* %1, null, !dbg !2973
  br i1 %tobool, label %if.end, label %if.then, !dbg !2975

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !2976
  br label %return, !dbg !2976

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2977
  %3 = load i32*, i32** %regaddr_p, align 8, !dbg !2978
  %call1 = call i64 @of_translate_address(%struct.device_node* %2, i32* %3) #5, !dbg !2979
  store i64 %call1, i64* %retval, align 8, !dbg !2980
  br label %return, !dbg !2980

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, i64* %retval, align 8, !dbg !2981
  ret i64 %4, !dbg !2981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #2 !dbg !2982 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2985, metadata !DIExpression()), !dbg !2986
  ret void, !dbg !2987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_reset(%struct.device* %dev) #2 !dbg !2988 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2990, metadata !DIExpression()), !dbg !2991
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2992
  %call = call i32 @__device_reset(%struct.device* %0, i1 zeroext false) #5, !dbg !2993
  ret i32 %call, !dbg !2994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !2995 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3000, metadata !DIExpression()), !dbg !3001
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3002
  %call = call i32 @clk_prepare(%struct.clk* %0) #5, !dbg !3003
  store i32 %call, i32* %ret, align 4, !dbg !3004
  %1 = load i32, i32* %ret, align 4, !dbg !3005
  %tobool = icmp ne i32 %1, 0, !dbg !3005
  br i1 %tobool, label %if.then, label %if.end, !dbg !3007

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3008
  store i32 %2, i32* %retval, align 4, !dbg !3009
  br label %return, !dbg !3009

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3010
  %call1 = call i32 @clk_enable(%struct.clk* %3) #5, !dbg !3011
  store i32 %call1, i32* %ret, align 4, !dbg !3012
  %4 = load i32, i32* %ret, align 4, !dbg !3013
  %tobool2 = icmp ne i32 %4, 0, !dbg !3013
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3015

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3016
  call void @clk_unprepare(%struct.clk* %5) #5, !dbg !3017
  br label %if.end4, !dbg !3017

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !3018
  store i32 %6, i32* %retval, align 4, !dbg !3019
  br label %return, !dbg !3019

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3020
  ret i32 %7, !dbg !3020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtk_thermal_turn_on_buffer(i8* %apmixed_base) #2 !dbg !3021 {
entry:
  %apmixed_base.addr = alloca i8*, align 8
  %tmp = alloca i32, align 4
  store i8* %apmixed_base, i8** %apmixed_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %apmixed_base.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3024, metadata !DIExpression()), !dbg !3025
  %0 = load i8*, i8** %apmixed_base.addr, align 8, !dbg !3026
  %add.ptr = getelementptr i8, i8* %0, i64 1540, !dbg !3027
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !3028
  store i32 %call, i32* %tmp, align 4, !dbg !3029
  %1 = load i32, i32* %tmp, align 4, !dbg !3030
  %and = and i32 %1, -56, !dbg !3030
  store i32 %and, i32* %tmp, align 4, !dbg !3030
  %2 = load i32, i32* %tmp, align 4, !dbg !3031
  %or = or i32 %2, 1, !dbg !3031
  store i32 %or, i32* %tmp, align 4, !dbg !3031
  %3 = load i32, i32* %tmp, align 4, !dbg !3032
  %4 = load i8*, i8** %apmixed_base.addr, align 8, !dbg !3033
  %add.ptr1 = getelementptr i8, i8* %4, i64 1540, !dbg !3034
  call void @writel(i32 %3, i8* %add.ptr1) #5, !dbg !3035
  call void @__const_udelay(i64 859000) #5, !dbg !3036
  ret void, !dbg !3041
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtk_thermal_release_periodic_ts(%struct.mtk_thermal* %mt, i8* %auxadc_base) #2 !dbg !3042 {
entry:
  %mt.addr = alloca %struct.mtk_thermal*, align 8
  %auxadc_base.addr = alloca i8*, align 8
  %tmp = alloca i32, align 4
  store %struct.mtk_thermal* %mt, %struct.mtk_thermal** %mt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt.addr, metadata !3045, metadata !DIExpression()), !dbg !3046
  store i8* %auxadc_base, i8** %auxadc_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %auxadc_base.addr, metadata !3047, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3049, metadata !DIExpression()), !dbg !3050
  %0 = load i8*, i8** %auxadc_base.addr, align 8, !dbg !3051
  %add.ptr = getelementptr i8, i8* %0, i64 8, !dbg !3052
  call void @writel(i32 2048, i8* %add.ptr) #5, !dbg !3053
  %1 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3054
  %thermal_base = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %1, i32 0, i32 1, !dbg !3055
  %2 = load i8*, i8** %thermal_base, align 8, !dbg !3055
  %add.ptr1 = getelementptr i8, i8* %2, i64 0, !dbg !3056
  call void @writel(i32 1, i8* %add.ptr1) #5, !dbg !3057
  %3 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3058
  %thermal_base2 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %3, i32 0, i32 1, !dbg !3059
  %4 = load i8*, i8** %thermal_base2, align 8, !dbg !3059
  %add.ptr3 = getelementptr i8, i8* %4, i64 60, !dbg !3060
  %call = call i32 @readl(i8* %add.ptr3) #5, !dbg !3061
  store i32 %call, i32* %tmp, align 4, !dbg !3062
  %5 = load i32, i32* %tmp, align 4, !dbg !3063
  %and = and i32 %5, -271, !dbg !3064
  %6 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3065
  %thermal_base4 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %6, i32 0, i32 1, !dbg !3066
  %7 = load i8*, i8** %thermal_base4, align 8, !dbg !3066
  %add.ptr5 = getelementptr i8, i8* %7, i64 60, !dbg !3067
  call void @writel(i32 %and, i8* %add.ptr5) #5, !dbg !3068
  ret void, !dbg !3069
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtk_thermal_init_bank(%struct.mtk_thermal* %mt, i32 %num, i32 %apmixed_phys_base, i32 %auxadc_phys_base, i32 %ctrl_id) #2 !dbg !3070 {
entry:
  %mt.addr = alloca %struct.mtk_thermal*, align 8
  %num.addr = alloca i32, align 4
  %apmixed_phys_base.addr = alloca i32, align 4
  %auxadc_phys_base.addr = alloca i32, align 4
  %ctrl_id.addr = alloca i32, align 4
  %bank = alloca %struct.mtk_thermal_bank*, align 8
  %conf = alloca %struct.mtk_thermal_data*, align 8
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %controller_base = alloca i8*, align 8
  store %struct.mtk_thermal* %mt, %struct.mtk_thermal** %mt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt.addr, metadata !3073, metadata !DIExpression()), !dbg !3074
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !3075, metadata !DIExpression()), !dbg !3076
  store i32 %apmixed_phys_base, i32* %apmixed_phys_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %apmixed_phys_base.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  store i32 %auxadc_phys_base, i32* %auxadc_phys_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %auxadc_phys_base.addr, metadata !3079, metadata !DIExpression()), !dbg !3080
  store i32 %ctrl_id, i32* %ctrl_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ctrl_id.addr, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal_bank** %bank, metadata !3083, metadata !DIExpression()), !dbg !3085
  %0 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3086
  %banks = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %0, i32 0, i32 12, !dbg !3087
  %1 = load i32, i32* %num.addr, align 4, !dbg !3088
  %idxprom = sext i32 %1 to i64, !dbg !3086
  %arrayidx = getelementptr [8 x %struct.mtk_thermal_bank], [8 x %struct.mtk_thermal_bank]* %banks, i64 0, i64 %idxprom, !dbg !3086
  store %struct.mtk_thermal_bank* %arrayidx, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3085
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal_data** %conf, metadata !3089, metadata !DIExpression()), !dbg !3090
  %2 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3091
  %conf1 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %2, i32 0, i32 11, !dbg !3092
  %3 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf1, align 8, !dbg !3092
  store %struct.mtk_thermal_data* %3, %struct.mtk_thermal_data** %conf, align 8, !dbg !3090
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !3095, metadata !DIExpression()), !dbg !3096
  %4 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3097
  %conf2 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %4, i32 0, i32 11, !dbg !3098
  %5 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf2, align 8, !dbg !3098
  %controller_offset = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %5, i32 0, i32 9, !dbg !3099
  %6 = load i32*, i32** %controller_offset, align 8, !dbg !3099
  %7 = load i32, i32* %ctrl_id.addr, align 4, !dbg !3100
  %idxprom3 = sext i32 %7 to i64, !dbg !3097
  %arrayidx4 = getelementptr i32, i32* %6, i64 %idxprom3, !dbg !3097
  %8 = load i32, i32* %arrayidx4, align 4, !dbg !3097
  store i32 %8, i32* %offset, align 4, !dbg !3096
  call void @llvm.dbg.declare(metadata i8** %controller_base, metadata !3101, metadata !DIExpression()), !dbg !3102
  %9 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3103
  %thermal_base = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %9, i32 0, i32 1, !dbg !3104
  %10 = load i8*, i8** %thermal_base, align 8, !dbg !3104
  %11 = load i32, i32* %offset, align 4, !dbg !3105
  %idx.ext = sext i32 %11 to i64, !dbg !3106
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !3106
  store i8* %add.ptr, i8** %controller_base, align 8, !dbg !3102
  %12 = load i32, i32* %num.addr, align 4, !dbg !3107
  %13 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3108
  %id = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %13, i32 0, i32 1, !dbg !3109
  store i32 %12, i32* %id, align 8, !dbg !3110
  %14 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3111
  %15 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3112
  %mt5 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %15, i32 0, i32 0, !dbg !3113
  store %struct.mtk_thermal* %14, %struct.mtk_thermal** %mt5, align 8, !dbg !3114
  %16 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3115
  call void @mtk_thermal_get_bank(%struct.mtk_thermal_bank* %16) #5, !dbg !3116
  %17 = load i8*, i8** %controller_base, align 8, !dbg !3117
  %add.ptr6 = getelementptr i8, i8* %17, i64 4, !dbg !3118
  call void @writel(i32 12, i8* %add.ptr6) #5, !dbg !3119
  %18 = load i8*, i8** %controller_base, align 8, !dbg !3120
  %add.ptr7 = getelementptr i8, i8* %18, i64 8, !dbg !3121
  call void @writel(i32 65965, i8* %add.ptr7) #5, !dbg !3122
  %19 = load i8*, i8** %controller_base, align 8, !dbg !3123
  %add.ptr8 = getelementptr i8, i8* %19, i64 64, !dbg !3124
  call void @writel(i32 768, i8* %add.ptr8) #5, !dbg !3125
  %20 = load i8*, i8** %controller_base, align 8, !dbg !3126
  %add.ptr9 = getelementptr i8, i8* %20, i64 56, !dbg !3127
  call void @writel(i32 0, i8* %add.ptr9) #5, !dbg !3128
  %21 = load i8*, i8** %controller_base, align 8, !dbg !3129
  %add.ptr10 = getelementptr i8, i8* %21, i64 68, !dbg !3130
  call void @writel(i32 -1, i8* %add.ptr10) #5, !dbg !3131
  %22 = load i8*, i8** %controller_base, align 8, !dbg !3132
  %add.ptr11 = getelementptr i8, i8* %22, i64 20, !dbg !3133
  call void @writel(i32 0, i8* %add.ptr11) #5, !dbg !3134
  %23 = load i8*, i8** %controller_base, align 8, !dbg !3135
  %add.ptr12 = getelementptr i8, i8* %23, i64 24, !dbg !3136
  call void @writel(i32 0, i8* %add.ptr12) #5, !dbg !3137
  %24 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3138
  %auxadc_channel = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %24, i32 0, i32 2, !dbg !3138
  %25 = load i32, i32* %auxadc_channel, align 8, !dbg !3138
  %sh_prom = zext i32 %25 to i64, !dbg !3138
  %shl = shl i64 1, %sh_prom, !dbg !3138
  %conv = trunc i64 %shl to i32, !dbg !3138
  %26 = load i8*, i8** %controller_base, align 8, !dbg !3139
  %add.ptr13 = getelementptr i8, i8* %26, i64 84, !dbg !3140
  call void @writel(i32 %conv, i8* %add.ptr13) #5, !dbg !3141
  %27 = load i32, i32* %auxadc_phys_base.addr, align 4, !dbg !3142
  %add = add i32 %27, 12, !dbg !3143
  %28 = load i8*, i8** %controller_base, align 8, !dbg !3144
  %add.ptr14 = getelementptr i8, i8* %28, i64 104, !dbg !3145
  call void @writel(i32 %add, i8* %add.ptr14) #5, !dbg !3146
  %29 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3147
  %conf15 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %29, i32 0, i32 11, !dbg !3149
  %30 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf15, align 8, !dbg !3149
  %version = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %30, i32 0, i32 12, !dbg !3150
  %31 = load i32, i32* %version, align 8, !dbg !3150
  %cmp = icmp eq i32 %31, 1, !dbg !3151
  br i1 %cmp, label %if.then, label %if.end, !dbg !3152

if.then:                                          ; preds = %entry
  %32 = load i32, i32* %apmixed_phys_base.addr, align 4, !dbg !3153
  %add17 = add i32 %32, 1540, !dbg !3155
  %33 = load i8*, i8** %controller_base, align 8, !dbg !3156
  %add.ptr18 = getelementptr i8, i8* %33, i64 100, !dbg !3157
  call void @writel(i32 %add17, i8* %add.ptr18) #5, !dbg !3158
  br label %if.end, !dbg !3159

if.end:                                           ; preds = %if.then, %entry
  %34 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3160
  %auxadc_channel19 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %34, i32 0, i32 2, !dbg !3160
  %35 = load i32, i32* %auxadc_channel19, align 8, !dbg !3160
  %sh_prom20 = zext i32 %35 to i64, !dbg !3160
  %shl21 = shl i64 1, %sh_prom20, !dbg !3160
  %conv22 = trunc i64 %shl21 to i32, !dbg !3160
  %36 = load i8*, i8** %controller_base, align 8, !dbg !3161
  %add.ptr23 = getelementptr i8, i8* %36, i64 96, !dbg !3162
  call void @writel(i32 %conv22, i8* %add.ptr23) #5, !dbg !3163
  %37 = load i32, i32* %auxadc_phys_base.addr, align 4, !dbg !3164
  %add24 = add i32 %37, 8, !dbg !3165
  %38 = load i8*, i8** %controller_base, align 8, !dbg !3166
  %add.ptr25 = getelementptr i8, i8* %38, i64 116, !dbg !3167
  call void @writel(i32 %add24, i8* %add.ptr25) #5, !dbg !3168
  %39 = load i32, i32* %auxadc_phys_base.addr, align 4, !dbg !3169
  %40 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3170
  %auxadc_channel26 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %40, i32 0, i32 2, !dbg !3170
  %41 = load i32, i32* %auxadc_channel26, align 8, !dbg !3170
  %mul = mul i32 %41, 4, !dbg !3170
  %add27 = add i32 20, %mul, !dbg !3170
  %add28 = add i32 %39, %add27, !dbg !3171
  %42 = load i8*, i8** %controller_base, align 8, !dbg !3172
  %add.ptr29 = getelementptr i8, i8* %42, i64 120, !dbg !3173
  call void @writel(i32 %add28, i8* %add.ptr29) #5, !dbg !3174
  %43 = load i32, i32* %auxadc_phys_base.addr, align 4, !dbg !3175
  %44 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3176
  %auxadc_channel30 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %44, i32 0, i32 2, !dbg !3176
  %45 = load i32, i32* %auxadc_channel30, align 8, !dbg !3176
  %mul31 = mul i32 %45, 4, !dbg !3176
  %add32 = add i32 20, %mul31, !dbg !3176
  %add33 = add i32 %43, %add32, !dbg !3177
  %46 = load i8*, i8** %controller_base, align 8, !dbg !3178
  %add.ptr34 = getelementptr i8, i8* %46, i64 124, !dbg !3179
  call void @writel(i32 %add33, i8* %add.ptr34) #5, !dbg !3180
  %47 = load i8*, i8** %controller_base, align 8, !dbg !3181
  %add.ptr35 = getelementptr i8, i8* %47, i64 128, !dbg !3182
  call void @writel(i32 0, i8* %add.ptr35) #5, !dbg !3183
  %48 = load i8*, i8** %controller_base, align 8, !dbg !3184
  %add.ptr36 = getelementptr i8, i8* %48, i64 132, !dbg !3185
  call void @writel(i32 44, i8* %add.ptr36) #5, !dbg !3186
  %49 = load i8*, i8** %controller_base, align 8, !dbg !3187
  %add.ptr37 = getelementptr i8, i8* %49, i64 136, !dbg !3188
  call void @writel(i32 0, i8* %add.ptr37) #5, !dbg !3189
  %50 = load i8*, i8** %controller_base, align 8, !dbg !3190
  %add.ptr38 = getelementptr i8, i8* %50, i64 140, !dbg !3191
  call void @writel(i32 2, i8* %add.ptr38) #5, !dbg !3192
  store i32 0, i32* %i, align 4, !dbg !3193
  br label %for.cond, !dbg !3195

for.cond:                                         ; preds = %for.inc, %if.end
  %51 = load i32, i32* %i, align 4, !dbg !3196
  %52 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3198
  %bank_data = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %52, i32 0, i32 11, !dbg !3199
  %53 = load i32, i32* %num.addr, align 4, !dbg !3200
  %idxprom39 = sext i32 %53 to i64, !dbg !3198
  %arrayidx40 = getelementptr [8 x %struct.thermal_bank_cfg], [8 x %struct.thermal_bank_cfg]* %bank_data, i64 0, i64 %idxprom39, !dbg !3198
  %num_sensors = getelementptr inbounds %struct.thermal_bank_cfg, %struct.thermal_bank_cfg* %arrayidx40, i32 0, i32 0, !dbg !3201
  %54 = load i32, i32* %num_sensors, align 8, !dbg !3201
  %cmp41 = icmp ult i32 %51, %54, !dbg !3202
  br i1 %cmp41, label %for.body, label %for.end, !dbg !3203

for.body:                                         ; preds = %for.cond
  %55 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3204
  %sensor_mux_values = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %55, i32 0, i32 4, !dbg !3205
  %56 = load i32*, i32** %sensor_mux_values, align 8, !dbg !3205
  %57 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3206
  %bank_data43 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %57, i32 0, i32 11, !dbg !3207
  %58 = load i32, i32* %num.addr, align 4, !dbg !3208
  %idxprom44 = sext i32 %58 to i64, !dbg !3206
  %arrayidx45 = getelementptr [8 x %struct.thermal_bank_cfg], [8 x %struct.thermal_bank_cfg]* %bank_data43, i64 0, i64 %idxprom44, !dbg !3206
  %sensors = getelementptr inbounds %struct.thermal_bank_cfg, %struct.thermal_bank_cfg* %arrayidx45, i32 0, i32 1, !dbg !3209
  %59 = load i32*, i32** %sensors, align 8, !dbg !3209
  %60 = load i32, i32* %i, align 4, !dbg !3210
  %idxprom46 = sext i32 %60 to i64, !dbg !3206
  %arrayidx47 = getelementptr i32, i32* %59, i64 %idxprom46, !dbg !3206
  %61 = load i32, i32* %arrayidx47, align 4, !dbg !3206
  %idxprom48 = sext i32 %61 to i64, !dbg !3204
  %arrayidx49 = getelementptr i32, i32* %56, i64 %idxprom48, !dbg !3204
  %62 = load i32, i32* %arrayidx49, align 4, !dbg !3204
  %63 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3211
  %thermal_base50 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %63, i32 0, i32 1, !dbg !3212
  %64 = load i8*, i8** %thermal_base50, align 8, !dbg !3212
  %65 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3213
  %adcpnp = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %65, i32 0, i32 6, !dbg !3214
  %66 = load i32*, i32** %adcpnp, align 8, !dbg !3214
  %67 = load i32, i32* %i, align 4, !dbg !3215
  %idxprom51 = sext i32 %67 to i64, !dbg !3213
  %arrayidx52 = getelementptr i32, i32* %66, i64 %idxprom51, !dbg !3213
  %68 = load i32, i32* %arrayidx52, align 4, !dbg !3213
  %idx.ext53 = sext i32 %68 to i64, !dbg !3216
  %add.ptr54 = getelementptr i8, i8* %64, i64 %idx.ext53, !dbg !3216
  call void @writel(i32 %62, i8* %add.ptr54) #5, !dbg !3217
  br label %for.inc, !dbg !3217

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %i, align 4, !dbg !3218
  %inc = add i32 %69, 1, !dbg !3218
  store i32 %inc, i32* %i, align 4, !dbg !3218
  br label %for.cond, !dbg !3219, !llvm.loop !3220

for.end:                                          ; preds = %for.cond
  %70 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3222
  %bank_data55 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %70, i32 0, i32 11, !dbg !3223
  %71 = load i32, i32* %num.addr, align 4, !dbg !3224
  %idxprom56 = sext i32 %71 to i64, !dbg !3222
  %arrayidx57 = getelementptr [8 x %struct.thermal_bank_cfg], [8 x %struct.thermal_bank_cfg]* %bank_data55, i64 0, i64 %idxprom56, !dbg !3222
  %num_sensors58 = getelementptr inbounds %struct.thermal_bank_cfg, %struct.thermal_bank_cfg* %arrayidx57, i32 0, i32 0, !dbg !3225
  %72 = load i32, i32* %num_sensors58, align 8, !dbg !3225
  %shl59 = shl i32 1, %72, !dbg !3226
  %sub = sub i32 %shl59, 1, !dbg !3227
  %73 = load i8*, i8** %controller_base, align 8, !dbg !3228
  %add.ptr60 = getelementptr i8, i8* %73, i64 0, !dbg !3229
  call void @writel(i32 %sub, i8* %add.ptr60) #5, !dbg !3230
  %74 = load i8*, i8** %controller_base, align 8, !dbg !3231
  %add.ptr61 = getelementptr i8, i8* %74, i64 140, !dbg !3232
  call void @writel(i32 3, i8* %add.ptr61) #5, !dbg !3233
  %75 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3234
  call void @mtk_thermal_put_bank(%struct.mtk_thermal_bank* %75) #5, !dbg !3235
  ret void, !dbg !3236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !3237 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3240, metadata !DIExpression()), !dbg !3241
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3242, metadata !DIExpression()), !dbg !3243
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3244
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3245
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3246
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !3247
  ret void, !dbg !3248
}

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.device*, i32, i8*, %struct.thermal_zone_of_device_ops*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !3249 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !3252, metadata !DIExpression()), !dbg !3253
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3254
  call void @clk_disable(%struct.clk* %0) #5, !dbg !3255
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3256
  call void @clk_unprepare(%struct.clk* %1) #5, !dbg !3257
  ret void, !dbg !3258
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nvmem_cell* @nvmem_cell_get(%struct.device* %dev, i8* %id) #2 !dbg !3259 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  %call = call i8* @ERR_PTR(i64 -95) #5, !dbg !3266
  %0 = bitcast i8* %call to %struct.nvmem_cell*, !dbg !3266
  ret %struct.nvmem_cell* %0, !dbg !3267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @nvmem_cell_read(%struct.nvmem_cell* %cell, i64* %len) #2 !dbg !3268 {
entry:
  %cell.addr = alloca %struct.nvmem_cell*, align 8
  %len.addr = alloca i64*, align 8
  store %struct.nvmem_cell* %cell, %struct.nvmem_cell** %cell.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nvmem_cell** %cell.addr, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i64* %len, i64** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %len.addr, metadata !3274, metadata !DIExpression()), !dbg !3275
  %call = call i8* @ERR_PTR(i64 -95) #5, !dbg !3276
  ret i8* %call, !dbg !3277
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nvmem_cell_put(%struct.nvmem_cell* %cell) #2 !dbg !3278 {
entry:
  %cell.addr = alloca %struct.nvmem_cell*, align 8
  store %struct.nvmem_cell* %cell, %struct.nvmem_cell** %cell.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nvmem_cell** %cell.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  ret void, !dbg !3283
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_thermal_extract_efuse_v1(%struct.mtk_thermal* %mt, i32* %buf) #2 !dbg !3284 {
entry:
  %retval = alloca i32, align 4
  %mt.addr = alloca %struct.mtk_thermal*, align 8
  %buf.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.mtk_thermal* %mt, %struct.mtk_thermal** %mt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt.addr, metadata !3287, metadata !DIExpression()), !dbg !3288
  store i32* %buf, i32** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %buf.addr, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3291, metadata !DIExpression()), !dbg !3292
  %0 = load i32*, i32** %buf.addr, align 8, !dbg !3293
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !3293
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3293
  %conv = zext i32 %1 to i64, !dbg !3293
  %and = and i64 %conv, 1, !dbg !3295
  %tobool = icmp ne i64 %and, 0, !dbg !3295
  br i1 %tobool, label %if.end, label %if.then, !dbg !3296

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3297
  br label %return, !dbg !3297

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %buf.addr, align 8, !dbg !3298
  %arrayidx1 = getelementptr i32, i32* %2, i64 1, !dbg !3298
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !3298
  %shr = lshr i32 %3, 22, !dbg !3298
  %and2 = and i32 %shr, 1023, !dbg !3298
  %4 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3299
  %adc_ge = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %4, i32 0, i32 5, !dbg !3300
  store i32 %and2, i32* %adc_ge, align 8, !dbg !3301
  store i32 0, i32* %i, align 4, !dbg !3302
  br label %for.cond, !dbg !3304

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !3305
  %6 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3307
  %conf = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %6, i32 0, i32 11, !dbg !3308
  %7 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3308
  %num_sensors = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %7, i32 0, i32 1, !dbg !3309
  %8 = load i32, i32* %num_sensors, align 4, !dbg !3309
  %cmp = icmp slt i32 %5, %8, !dbg !3310
  br i1 %cmp, label %for.body, label %for.end, !dbg !3311

for.body:                                         ; preds = %for.cond
  %9 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3312
  %conf4 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %9, i32 0, i32 11, !dbg !3314
  %10 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf4, align 8, !dbg !3314
  %vts_index = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %10, i32 0, i32 3, !dbg !3315
  %11 = load i32*, i32** %vts_index, align 8, !dbg !3315
  %12 = load i32, i32* %i, align 4, !dbg !3316
  %idxprom = sext i32 %12 to i64, !dbg !3312
  %arrayidx5 = getelementptr i32, i32* %11, i64 %idxprom, !dbg !3312
  %13 = load i32, i32* %arrayidx5, align 4, !dbg !3312
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb16
    i32 3, label %sw.bb22
    i32 4, label %sw.bb28
    i32 5, label %sw.bb34
  ], !dbg !3317

sw.bb:                                            ; preds = %for.body
  %14 = load i32*, i32** %buf.addr, align 8, !dbg !3318
  %arrayidx6 = getelementptr i32, i32* %14, i64 0, !dbg !3318
  %15 = load i32, i32* %arrayidx6, align 4, !dbg !3318
  %shr7 = lshr i32 %15, 17, !dbg !3318
  %and8 = and i32 %shr7, 511, !dbg !3318
  %16 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3320
  %vts = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %16, i32 0, i32 10, !dbg !3321
  %arrayidx9 = getelementptr [6 x i32], [6 x i32]* %vts, i64 0, i64 0, !dbg !3320
  store i32 %and8, i32* %arrayidx9, align 4, !dbg !3322
  br label %sw.epilog, !dbg !3323

sw.bb10:                                          ; preds = %for.body
  %17 = load i32*, i32** %buf.addr, align 8, !dbg !3324
  %arrayidx11 = getelementptr i32, i32* %17, i64 0, !dbg !3324
  %18 = load i32, i32* %arrayidx11, align 4, !dbg !3324
  %shr12 = lshr i32 %18, 8, !dbg !3324
  %and13 = and i32 %shr12, 511, !dbg !3324
  %19 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3325
  %vts14 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %19, i32 0, i32 10, !dbg !3326
  %arrayidx15 = getelementptr [6 x i32], [6 x i32]* %vts14, i64 0, i64 1, !dbg !3325
  store i32 %and13, i32* %arrayidx15, align 4, !dbg !3327
  br label %sw.epilog, !dbg !3328

sw.bb16:                                          ; preds = %for.body
  %20 = load i32*, i32** %buf.addr, align 8, !dbg !3329
  %arrayidx17 = getelementptr i32, i32* %20, i64 1, !dbg !3329
  %21 = load i32, i32* %arrayidx17, align 4, !dbg !3329
  %shr18 = lshr i32 %21, 0, !dbg !3329
  %and19 = and i32 %shr18, 511, !dbg !3329
  %22 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3330
  %vts20 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %22, i32 0, i32 10, !dbg !3331
  %arrayidx21 = getelementptr [6 x i32], [6 x i32]* %vts20, i64 0, i64 2, !dbg !3330
  store i32 %and19, i32* %arrayidx21, align 4, !dbg !3332
  br label %sw.epilog, !dbg !3333

sw.bb22:                                          ; preds = %for.body
  %23 = load i32*, i32** %buf.addr, align 8, !dbg !3334
  %arrayidx23 = getelementptr i32, i32* %23, i64 2, !dbg !3334
  %24 = load i32, i32* %arrayidx23, align 4, !dbg !3334
  %shr24 = lshr i32 %24, 23, !dbg !3334
  %and25 = and i32 %shr24, 511, !dbg !3334
  %25 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3335
  %vts26 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %25, i32 0, i32 10, !dbg !3336
  %arrayidx27 = getelementptr [6 x i32], [6 x i32]* %vts26, i64 0, i64 3, !dbg !3335
  store i32 %and25, i32* %arrayidx27, align 4, !dbg !3337
  br label %sw.epilog, !dbg !3338

sw.bb28:                                          ; preds = %for.body
  %26 = load i32*, i32** %buf.addr, align 8, !dbg !3339
  %arrayidx29 = getelementptr i32, i32* %26, i64 2, !dbg !3339
  %27 = load i32, i32* %arrayidx29, align 4, !dbg !3339
  %shr30 = lshr i32 %27, 5, !dbg !3339
  %and31 = and i32 %shr30, 511, !dbg !3339
  %28 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3340
  %vts32 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %28, i32 0, i32 10, !dbg !3341
  %arrayidx33 = getelementptr [6 x i32], [6 x i32]* %vts32, i64 0, i64 4, !dbg !3340
  store i32 %and31, i32* %arrayidx33, align 4, !dbg !3342
  br label %sw.epilog, !dbg !3343

sw.bb34:                                          ; preds = %for.body
  %29 = load i32*, i32** %buf.addr, align 8, !dbg !3344
  %arrayidx35 = getelementptr i32, i32* %29, i64 2, !dbg !3344
  %30 = load i32, i32* %arrayidx35, align 4, !dbg !3344
  %shr36 = lshr i32 %30, 14, !dbg !3344
  %and37 = and i32 %shr36, 511, !dbg !3344
  %31 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3345
  %vts38 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %31, i32 0, i32 10, !dbg !3346
  %arrayidx39 = getelementptr [6 x i32], [6 x i32]* %vts38, i64 0, i64 5, !dbg !3345
  store i32 %and37, i32* %arrayidx39, align 4, !dbg !3347
  br label %sw.epilog, !dbg !3348

sw.default:                                       ; preds = %for.body
  br label %sw.epilog, !dbg !3349

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %sw.bb28, %sw.bb22, %sw.bb16, %sw.bb10, %sw.bb
  br label %for.inc, !dbg !3350

for.inc:                                          ; preds = %sw.epilog
  %32 = load i32, i32* %i, align 4, !dbg !3351
  %inc = add i32 %32, 1, !dbg !3351
  store i32 %inc, i32* %i, align 4, !dbg !3351
  br label %for.cond, !dbg !3352, !llvm.loop !3353

for.end:                                          ; preds = %for.cond
  %33 = load i32*, i32** %buf.addr, align 8, !dbg !3355
  %arrayidx40 = getelementptr i32, i32* %33, i64 0, !dbg !3355
  %34 = load i32, i32* %arrayidx40, align 4, !dbg !3355
  %shr41 = lshr i32 %34, 1, !dbg !3355
  %and42 = and i32 %shr41, 63, !dbg !3355
  %35 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3356
  %degc_cali = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %35, i32 0, i32 7, !dbg !3357
  store i32 %and42, i32* %degc_cali, align 8, !dbg !3358
  %36 = load i32*, i32** %buf.addr, align 8, !dbg !3359
  %arrayidx43 = getelementptr i32, i32* %36, i64 1, !dbg !3359
  %37 = load i32, i32* %arrayidx43, align 4, !dbg !3359
  %shr44 = lshr i32 %37, 9, !dbg !3359
  %and45 = and i32 %shr44, 1, !dbg !3359
  %38 = load i32*, i32** %buf.addr, align 8, !dbg !3361
  %arrayidx46 = getelementptr i32, i32* %38, i64 0, !dbg !3361
  %39 = load i32, i32* %arrayidx46, align 4, !dbg !3361
  %shr47 = lshr i32 %39, 7, !dbg !3361
  %and48 = and i32 %shr47, 1, !dbg !3361
  %and49 = and i32 %and45, %and48, !dbg !3362
  %tobool50 = icmp ne i32 %and49, 0, !dbg !3362
  br i1 %tobool50, label %if.then51, label %if.else, !dbg !3363

if.then51:                                        ; preds = %for.end
  %40 = load i32*, i32** %buf.addr, align 8, !dbg !3364
  %arrayidx52 = getelementptr i32, i32* %40, i64 0, !dbg !3364
  %41 = load i32, i32* %arrayidx52, align 4, !dbg !3364
  %shr53 = lshr i32 %41, 26, !dbg !3364
  %and54 = and i32 %shr53, 63, !dbg !3364
  %sub = sub i32 0, %and54, !dbg !3365
  %42 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3366
  %o_slope = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %42, i32 0, i32 8, !dbg !3367
  store i32 %sub, i32* %o_slope, align 4, !dbg !3368
  br label %if.end59, !dbg !3366

if.else:                                          ; preds = %for.end
  %43 = load i32*, i32** %buf.addr, align 8, !dbg !3369
  %arrayidx55 = getelementptr i32, i32* %43, i64 0, !dbg !3369
  %44 = load i32, i32* %arrayidx55, align 4, !dbg !3369
  %shr56 = lshr i32 %44, 26, !dbg !3369
  %and57 = and i32 %shr56, 63, !dbg !3369
  %45 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3370
  %o_slope58 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %45, i32 0, i32 8, !dbg !3371
  store i32 %and57, i32* %o_slope58, align 4, !dbg !3372
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then51
  store i32 0, i32* %retval, align 4, !dbg !3373
  br label %return, !dbg !3373

return:                                           ; preds = %if.end59, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !3374
  ret i32 %46, !dbg !3374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_thermal_extract_efuse_v2(%struct.mtk_thermal* %mt, i32* %buf) #2 !dbg !3375 {
entry:
  %retval = alloca i32, align 4
  %mt.addr = alloca %struct.mtk_thermal*, align 8
  %buf.addr = alloca i32*, align 8
  store %struct.mtk_thermal* %mt, %struct.mtk_thermal** %mt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt.addr, metadata !3376, metadata !DIExpression()), !dbg !3377
  store i32* %buf, i32** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %buf.addr, metadata !3378, metadata !DIExpression()), !dbg !3379
  %0 = load i32*, i32** %buf.addr, align 8, !dbg !3380
  %arrayidx = getelementptr i32, i32* %0, i64 1, !dbg !3380
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3380
  %shr = lshr i32 %1, 4, !dbg !3380
  %and = and i32 %shr, 1, !dbg !3380
  %tobool = icmp ne i32 %and, 0, !dbg !3380
  br i1 %tobool, label %if.end, label %if.then, !dbg !3382

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3383
  br label %return, !dbg !3383

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %buf.addr, align 8, !dbg !3384
  %arrayidx1 = getelementptr i32, i32* %2, i64 0, !dbg !3384
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !3384
  %shr2 = lshr i32 %3, 22, !dbg !3384
  %and3 = and i32 %shr2, 1023, !dbg !3384
  %4 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3385
  %adc_oe = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %4, i32 0, i32 6, !dbg !3386
  store i32 %and3, i32* %adc_oe, align 4, !dbg !3387
  %5 = load i32*, i32** %buf.addr, align 8, !dbg !3388
  %arrayidx4 = getelementptr i32, i32* %5, i64 0, !dbg !3388
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !3388
  %shr5 = lshr i32 %6, 12, !dbg !3388
  %and6 = and i32 %shr5, 1023, !dbg !3388
  %7 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3389
  %adc_ge = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %7, i32 0, i32 5, !dbg !3390
  store i32 %and6, i32* %adc_ge, align 8, !dbg !3391
  %8 = load i32*, i32** %buf.addr, align 8, !dbg !3392
  %arrayidx7 = getelementptr i32, i32* %8, i64 0, !dbg !3392
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !3392
  %shr8 = lshr i32 %9, 6, !dbg !3392
  %and9 = and i32 %shr8, 63, !dbg !3392
  %10 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3393
  %degc_cali = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %10, i32 0, i32 7, !dbg !3394
  store i32 %and9, i32* %degc_cali, align 8, !dbg !3395
  %11 = load i32*, i32** %buf.addr, align 8, !dbg !3396
  %arrayidx10 = getelementptr i32, i32* %11, i64 0, !dbg !3396
  %12 = load i32, i32* %arrayidx10, align 4, !dbg !3396
  %shr11 = lshr i32 %12, 0, !dbg !3396
  %and12 = and i32 %shr11, 63, !dbg !3396
  %13 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3397
  %o_slope = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %13, i32 0, i32 8, !dbg !3398
  store i32 %and12, i32* %o_slope, align 4, !dbg !3399
  %14 = load i32*, i32** %buf.addr, align 8, !dbg !3400
  %arrayidx13 = getelementptr i32, i32* %14, i64 1, !dbg !3400
  %15 = load i32, i32* %arrayidx13, align 4, !dbg !3400
  %shr14 = lshr i32 %15, 23, !dbg !3400
  %and15 = and i32 %shr14, 511, !dbg !3400
  %16 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3401
  %vts = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %16, i32 0, i32 10, !dbg !3402
  %arrayidx16 = getelementptr [6 x i32], [6 x i32]* %vts, i64 0, i64 0, !dbg !3401
  store i32 %and15, i32* %arrayidx16, align 4, !dbg !3403
  %17 = load i32*, i32** %buf.addr, align 8, !dbg !3404
  %arrayidx17 = getelementptr i32, i32* %17, i64 1, !dbg !3404
  %18 = load i32, i32* %arrayidx17, align 4, !dbg !3404
  %shr18 = lshr i32 %18, 14, !dbg !3404
  %and19 = and i32 %shr18, 511, !dbg !3404
  %19 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3405
  %vts20 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %19, i32 0, i32 10, !dbg !3406
  %arrayidx21 = getelementptr [6 x i32], [6 x i32]* %vts20, i64 0, i64 1, !dbg !3405
  store i32 %and19, i32* %arrayidx21, align 4, !dbg !3407
  %20 = load i32*, i32** %buf.addr, align 8, !dbg !3408
  %arrayidx22 = getelementptr i32, i32* %20, i64 1, !dbg !3408
  %21 = load i32, i32* %arrayidx22, align 4, !dbg !3408
  %shr23 = lshr i32 %21, 5, !dbg !3408
  %and24 = and i32 %shr23, 511, !dbg !3408
  %22 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3409
  %vts25 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %22, i32 0, i32 10, !dbg !3410
  %arrayidx26 = getelementptr [6 x i32], [6 x i32]* %vts25, i64 0, i64 5, !dbg !3409
  store i32 %and24, i32* %arrayidx26, align 4, !dbg !3411
  %23 = load i32*, i32** %buf.addr, align 8, !dbg !3412
  %arrayidx27 = getelementptr i32, i32* %23, i64 1, !dbg !3412
  %24 = load i32, i32* %arrayidx27, align 4, !dbg !3412
  %shr28 = lshr i32 %24, 3, !dbg !3412
  %and29 = and i32 %shr28, 1, !dbg !3412
  %25 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3413
  %o_slope_sign = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %25, i32 0, i32 9, !dbg !3414
  store i32 %and29, i32* %o_slope_sign, align 8, !dbg !3415
  store i32 0, i32* %retval, align 4, !dbg !3416
  br label %return, !dbg !3416

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !3417
  ret i32 %26, !dbg !3417
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #2 !dbg !3418 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3421, metadata !DIExpression()), !dbg !3422
  %0 = load i64, i64* %error.addr, align 8, !dbg !3423
  %1 = inttoptr i64 %0 to i8*, !dbg !3424
  ret i8* %1, !dbg !3425
}

; Function Attrs: noredzone
declare dso_local i32* @of_get_address(%struct.device_node*, i32, i64*, i32*) #1

; Function Attrs: noredzone
declare dso_local i64 @of_translate_address(%struct.device_node*, i32*) #1

; Function Attrs: noredzone
declare dso_local i32 @__device_reset(%struct.device*, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !3426 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3435, metadata !DIExpression()), !dbg !3434
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3434
  %1 = bitcast i8* %0 to i32*, !dbg !3434
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !3434, !srcloc !3436
  store i32 %2, i32* %ret, align 4, !dbg !3434
  %3 = load i32, i32* %ret, align 4, !dbg !3434
  ret i32 %3, !dbg !3434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !3437 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3443, metadata !DIExpression()), !dbg !3442
  %0 = load i32, i32* %val.addr, align 4, !dbg !3442
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3442
  %2 = bitcast i8* %1 to i32*, !dbg !3442
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !3442, !srcloc !3444
  ret void, !dbg !3442
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtk_thermal_get_bank(%struct.mtk_thermal_bank* %bank) #2 !dbg !3445 {
entry:
  %bank.addr = alloca %struct.mtk_thermal_bank*, align 8
  %mt = alloca %struct.mtk_thermal*, align 8
  %val = alloca i32, align 4
  store %struct.mtk_thermal_bank* %bank, %struct.mtk_thermal_bank** %bank.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal_bank** %bank.addr, metadata !3448, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt, metadata !3450, metadata !DIExpression()), !dbg !3451
  %0 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank.addr, align 8, !dbg !3452
  %mt1 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %0, i32 0, i32 0, !dbg !3453
  %1 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt1, align 8, !dbg !3453
  store %struct.mtk_thermal* %1, %struct.mtk_thermal** %mt, align 8, !dbg !3451
  call void @llvm.dbg.declare(metadata i32* %val, metadata !3454, metadata !DIExpression()), !dbg !3455
  %2 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3456
  %conf = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %2, i32 0, i32 11, !dbg !3458
  %3 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3458
  %need_switch_bank = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %3, i32 0, i32 10, !dbg !3459
  %4 = load i8, i8* %need_switch_bank, align 8, !dbg !3459
  %tobool = trunc i8 %4 to i1, !dbg !3459
  br i1 %tobool, label %if.then, label %if.end, !dbg !3460

if.then:                                          ; preds = %entry
  %5 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3461
  %lock = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %5, i32 0, i32 4, !dbg !3463
  call void @mutex_lock(%struct.mutex* %lock) #5, !dbg !3464
  %6 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3465
  %thermal_base = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %6, i32 0, i32 1, !dbg !3466
  %7 = load i8*, i8** %thermal_base, align 8, !dbg !3466
  %add.ptr = getelementptr i8, i8* %7, i64 1024, !dbg !3467
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !3468
  store i32 %call, i32* %val, align 4, !dbg !3469
  %8 = load i32, i32* %val, align 4, !dbg !3470
  %and = and i32 %8, -16, !dbg !3470
  store i32 %and, i32* %val, align 4, !dbg !3470
  %9 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank.addr, align 8, !dbg !3471
  %id = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %9, i32 0, i32 1, !dbg !3472
  %10 = load i32, i32* %id, align 8, !dbg !3472
  %11 = load i32, i32* %val, align 4, !dbg !3473
  %or = or i32 %11, %10, !dbg !3473
  store i32 %or, i32* %val, align 4, !dbg !3473
  %12 = load i32, i32* %val, align 4, !dbg !3474
  %13 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3475
  %thermal_base2 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %13, i32 0, i32 1, !dbg !3476
  %14 = load i8*, i8** %thermal_base2, align 8, !dbg !3476
  %add.ptr3 = getelementptr i8, i8* %14, i64 1024, !dbg !3477
  call void @writel(i32 %12, i8* %add.ptr3) #5, !dbg !3478
  br label %if.end, !dbg !3479

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtk_thermal_put_bank(%struct.mtk_thermal_bank* %bank) #2 !dbg !3481 {
entry:
  %bank.addr = alloca %struct.mtk_thermal_bank*, align 8
  %mt = alloca %struct.mtk_thermal*, align 8
  store %struct.mtk_thermal_bank* %bank, %struct.mtk_thermal_bank** %bank.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal_bank** %bank.addr, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt, metadata !3484, metadata !DIExpression()), !dbg !3485
  %0 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank.addr, align 8, !dbg !3486
  %mt1 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %0, i32 0, i32 0, !dbg !3487
  %1 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt1, align 8, !dbg !3487
  store %struct.mtk_thermal* %1, %struct.mtk_thermal** %mt, align 8, !dbg !3485
  %2 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3488
  %conf = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %2, i32 0, i32 11, !dbg !3490
  %3 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3490
  %need_switch_bank = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %3, i32 0, i32 10, !dbg !3491
  %4 = load i8, i8* %need_switch_bank, align 8, !dbg !3491
  %tobool = trunc i8 %4 to i1, !dbg !3491
  br i1 %tobool, label %if.then, label %if.end, !dbg !3492

if.then:                                          ; preds = %entry
  %5 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3493
  %lock = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %5, i32 0, i32 4, !dbg !3494
  call void @mutex_unlock(%struct.mutex* %lock) #5, !dbg !3495
  br label %if.end, !dbg !3495

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3496
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3497 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3500, metadata !DIExpression()), !dbg !3501
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3502, metadata !DIExpression()), !dbg !3503
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3504
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3505
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3506
  store i8* %0, i8** %driver_data, align 8, !dbg !3507
  ret void, !dbg !3508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_read_temp(i8* %data, i32* %temperature) #2 !dbg !3509 {
entry:
  %data.addr = alloca i8*, align 8
  %temperature.addr = alloca i32*, align 8
  %mt = alloca %struct.mtk_thermal*, align 8
  %i = alloca i32, align 4
  %tempmax = alloca i32, align 4
  %bank = alloca %struct.mtk_thermal_bank*, align 8
  %__UNIQUE_ID___x161 = alloca i32, align 4
  %__UNIQUE_ID___y162 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3510, metadata !DIExpression()), !dbg !3511
  store i32* %temperature, i32** %temperature.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temperature.addr, metadata !3512, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt, metadata !3514, metadata !DIExpression()), !dbg !3515
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3516
  %1 = bitcast i8* %0 to %struct.mtk_thermal*, !dbg !3516
  store %struct.mtk_thermal* %1, %struct.mtk_thermal** %mt, align 8, !dbg !3515
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.declare(metadata i32* %tempmax, metadata !3519, metadata !DIExpression()), !dbg !3520
  store i32 -2147483648, i32* %tempmax, align 4, !dbg !3520
  store i32 0, i32* %i, align 4, !dbg !3521
  br label %for.cond, !dbg !3523

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3524
  %3 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3526
  %conf = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %3, i32 0, i32 11, !dbg !3527
  %4 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3527
  %num_banks = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %4, i32 0, i32 0, !dbg !3528
  %5 = load i32, i32* %num_banks, align 8, !dbg !3528
  %cmp = icmp slt i32 %2, %5, !dbg !3529
  br i1 %cmp, label %for.body, label %for.end, !dbg !3530

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal_bank** %bank, metadata !3531, metadata !DIExpression()), !dbg !3533
  %6 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3534
  %banks = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %6, i32 0, i32 12, !dbg !3535
  %7 = load i32, i32* %i, align 4, !dbg !3536
  %idxprom = sext i32 %7 to i64, !dbg !3534
  %arrayidx = getelementptr [8 x %struct.mtk_thermal_bank], [8 x %struct.mtk_thermal_bank]* %banks, i64 0, i64 %idxprom, !dbg !3534
  store %struct.mtk_thermal_bank* %arrayidx, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3533
  %8 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3537
  call void @mtk_thermal_get_bank(%struct.mtk_thermal_bank* %8) #5, !dbg !3538
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x161, metadata !3539, metadata !DIExpression()), !dbg !3541
  %9 = load i32, i32* %tempmax, align 4, !dbg !3541
  store i32 %9, i32* %__UNIQUE_ID___x161, align 4, !dbg !3541
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y162, metadata !3542, metadata !DIExpression()), !dbg !3541
  %10 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3541
  %call = call i32 @mtk_thermal_bank_temperature(%struct.mtk_thermal_bank* %10) #5, !dbg !3541
  store i32 %call, i32* %__UNIQUE_ID___y162, align 4, !dbg !3541
  %11 = load i32, i32* %__UNIQUE_ID___x161, align 4, !dbg !3541
  %12 = load i32, i32* %__UNIQUE_ID___y162, align 4, !dbg !3541
  %cmp1 = icmp sgt i32 %11, %12, !dbg !3541
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3541

cond.true:                                        ; preds = %for.body
  %13 = load i32, i32* %__UNIQUE_ID___x161, align 4, !dbg !3541
  br label %cond.end, !dbg !3541

cond.false:                                       ; preds = %for.body
  %14 = load i32, i32* %__UNIQUE_ID___y162, align 4, !dbg !3541
  br label %cond.end, !dbg !3541

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !3541
  store i32 %cond, i32* %tmp, align 4, !dbg !3541
  %15 = load i32, i32* %tmp, align 4, !dbg !3541
  store i32 %15, i32* %tempmax, align 4, !dbg !3543
  %16 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank, align 8, !dbg !3544
  call void @mtk_thermal_put_bank(%struct.mtk_thermal_bank* %16) #5, !dbg !3545
  br label %for.inc, !dbg !3546

for.inc:                                          ; preds = %cond.end
  %17 = load i32, i32* %i, align 4, !dbg !3547
  %inc = add i32 %17, 1, !dbg !3547
  store i32 %inc, i32* %i, align 4, !dbg !3547
  br label %for.cond, !dbg !3548, !llvm.loop !3549

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %tempmax, align 4, !dbg !3551
  %19 = load i32*, i32** %temperature.addr, align 8, !dbg !3552
  store i32 %18, i32* %19, align 4, !dbg !3553
  ret i32 0, !dbg !3554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_thermal_bank_temperature(%struct.mtk_thermal_bank* %bank) #2 !dbg !3555 {
entry:
  %bank.addr = alloca %struct.mtk_thermal_bank*, align 8
  %mt = alloca %struct.mtk_thermal*, align 8
  %conf = alloca %struct.mtk_thermal_data*, align 8
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %max = alloca i32, align 4
  %raw = alloca i32, align 4
  store %struct.mtk_thermal_bank* %bank, %struct.mtk_thermal_bank** %bank.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal_bank** %bank.addr, metadata !3558, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt, metadata !3560, metadata !DIExpression()), !dbg !3561
  %0 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank.addr, align 8, !dbg !3562
  %mt1 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %0, i32 0, i32 0, !dbg !3563
  %1 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt1, align 8, !dbg !3563
  store %struct.mtk_thermal* %1, %struct.mtk_thermal** %mt, align 8, !dbg !3561
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal_data** %conf, metadata !3564, metadata !DIExpression()), !dbg !3565
  %2 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3566
  %conf2 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %2, i32 0, i32 11, !dbg !3567
  %3 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf2, align 8, !dbg !3567
  store %struct.mtk_thermal_data* %3, %struct.mtk_thermal_data** %conf, align 8, !dbg !3565
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !3570, metadata !DIExpression()), !dbg !3571
  store i32 -2147483648, i32* %temp, align 4, !dbg !3571
  call void @llvm.dbg.declare(metadata i32* %max, metadata !3572, metadata !DIExpression()), !dbg !3573
  store i32 -2147483648, i32* %max, align 4, !dbg !3573
  call void @llvm.dbg.declare(metadata i32* %raw, metadata !3574, metadata !DIExpression()), !dbg !3575
  store i32 0, i32* %i, align 4, !dbg !3576
  br label %for.cond, !dbg !3578

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !3579
  %5 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3581
  %bank_data = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %5, i32 0, i32 11, !dbg !3582
  %6 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank.addr, align 8, !dbg !3583
  %id = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %6, i32 0, i32 1, !dbg !3584
  %7 = load i32, i32* %id, align 8, !dbg !3584
  %idxprom = sext i32 %7 to i64, !dbg !3581
  %arrayidx = getelementptr [8 x %struct.thermal_bank_cfg], [8 x %struct.thermal_bank_cfg]* %bank_data, i64 0, i64 %idxprom, !dbg !3581
  %num_sensors = getelementptr inbounds %struct.thermal_bank_cfg, %struct.thermal_bank_cfg* %arrayidx, i32 0, i32 0, !dbg !3585
  %8 = load i32, i32* %num_sensors, align 8, !dbg !3585
  %cmp = icmp ult i32 %4, %8, !dbg !3586
  br i1 %cmp, label %for.body, label %for.end, !dbg !3587

for.body:                                         ; preds = %for.cond
  %9 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3588
  %thermal_base = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %9, i32 0, i32 1, !dbg !3590
  %10 = load i8*, i8** %thermal_base, align 8, !dbg !3590
  %11 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3591
  %msr = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %11, i32 0, i32 5, !dbg !3592
  %12 = load i32*, i32** %msr, align 8, !dbg !3592
  %13 = load i32, i32* %i, align 4, !dbg !3593
  %idxprom3 = sext i32 %13 to i64, !dbg !3591
  %arrayidx4 = getelementptr i32, i32* %12, i64 %idxprom3, !dbg !3591
  %14 = load i32, i32* %arrayidx4, align 4, !dbg !3591
  %idx.ext = sext i32 %14 to i64, !dbg !3594
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !3594
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !3595
  store i32 %call, i32* %raw, align 4, !dbg !3596
  %15 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3597
  %conf5 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %15, i32 0, i32 11, !dbg !3599
  %16 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf5, align 8, !dbg !3599
  %version = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %16, i32 0, i32 12, !dbg !3600
  %17 = load i32, i32* %version, align 8, !dbg !3600
  %cmp6 = icmp eq i32 %17, 1, !dbg !3601
  br i1 %cmp6, label %if.then, label %if.else, !dbg !3602

if.then:                                          ; preds = %for.body
  %18 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3603
  %19 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3605
  %bank_data7 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %19, i32 0, i32 11, !dbg !3606
  %20 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank.addr, align 8, !dbg !3607
  %id8 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %20, i32 0, i32 1, !dbg !3608
  %21 = load i32, i32* %id8, align 8, !dbg !3608
  %idxprom9 = sext i32 %21 to i64, !dbg !3605
  %arrayidx10 = getelementptr [8 x %struct.thermal_bank_cfg], [8 x %struct.thermal_bank_cfg]* %bank_data7, i64 0, i64 %idxprom9, !dbg !3605
  %sensors = getelementptr inbounds %struct.thermal_bank_cfg, %struct.thermal_bank_cfg* %arrayidx10, i32 0, i32 1, !dbg !3609
  %22 = load i32*, i32** %sensors, align 8, !dbg !3609
  %23 = load i32, i32* %i, align 4, !dbg !3610
  %idxprom11 = sext i32 %23 to i64, !dbg !3605
  %arrayidx12 = getelementptr i32, i32* %22, i64 %idxprom11, !dbg !3605
  %24 = load i32, i32* %arrayidx12, align 4, !dbg !3605
  %25 = load i32, i32* %raw, align 4, !dbg !3611
  %call13 = call i32 @raw_to_mcelsius_v1(%struct.mtk_thermal* %18, i32 %24, i32 %25) #5, !dbg !3612
  store i32 %call13, i32* %temp, align 4, !dbg !3613
  br label %if.end, !dbg !3614

if.else:                                          ; preds = %for.body
  %26 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt, align 8, !dbg !3615
  %27 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3617
  %bank_data14 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %27, i32 0, i32 11, !dbg !3618
  %28 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %bank.addr, align 8, !dbg !3619
  %id15 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %28, i32 0, i32 1, !dbg !3620
  %29 = load i32, i32* %id15, align 8, !dbg !3620
  %idxprom16 = sext i32 %29 to i64, !dbg !3617
  %arrayidx17 = getelementptr [8 x %struct.thermal_bank_cfg], [8 x %struct.thermal_bank_cfg]* %bank_data14, i64 0, i64 %idxprom16, !dbg !3617
  %sensors18 = getelementptr inbounds %struct.thermal_bank_cfg, %struct.thermal_bank_cfg* %arrayidx17, i32 0, i32 1, !dbg !3621
  %30 = load i32*, i32** %sensors18, align 8, !dbg !3621
  %31 = load i32, i32* %i, align 4, !dbg !3622
  %idxprom19 = sext i32 %31 to i64, !dbg !3617
  %arrayidx20 = getelementptr i32, i32* %30, i64 %idxprom19, !dbg !3617
  %32 = load i32, i32* %arrayidx20, align 4, !dbg !3617
  %33 = load i32, i32* %raw, align 4, !dbg !3623
  %call21 = call i32 @raw_to_mcelsius_v2(%struct.mtk_thermal* %26, i32 %32, i32 %33) #5, !dbg !3624
  store i32 %call21, i32* %temp, align 4, !dbg !3625
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %34 = load i32, i32* %temp, align 4, !dbg !3626
  %cmp22 = icmp sgt i32 %34, 200000, !dbg !3628
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !3629

if.then23:                                        ; preds = %if.end
  store i32 0, i32* %temp, align 4, !dbg !3630
  br label %if.end24, !dbg !3631

if.end24:                                         ; preds = %if.then23, %if.end
  %35 = load i32, i32* %temp, align 4, !dbg !3632
  %36 = load i32, i32* %max, align 4, !dbg !3634
  %cmp25 = icmp sgt i32 %35, %36, !dbg !3635
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !3636

if.then26:                                        ; preds = %if.end24
  %37 = load i32, i32* %temp, align 4, !dbg !3637
  store i32 %37, i32* %max, align 4, !dbg !3638
  br label %if.end27, !dbg !3639

if.end27:                                         ; preds = %if.then26, %if.end24
  br label %for.inc, !dbg !3640

for.inc:                                          ; preds = %if.end27
  %38 = load i32, i32* %i, align 4, !dbg !3641
  %inc = add i32 %38, 1, !dbg !3641
  store i32 %inc, i32* %i, align 4, !dbg !3641
  br label %for.cond, !dbg !3642, !llvm.loop !3643

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %max, align 4, !dbg !3645
  ret i32 %39, !dbg !3646
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @raw_to_mcelsius_v1(%struct.mtk_thermal* %mt, i32 %sensno, i32 %raw) #2 !dbg !3647 {
entry:
  %mt.addr = alloca %struct.mtk_thermal*, align 8
  %sensno.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.mtk_thermal* %mt, %struct.mtk_thermal** %mt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt.addr, metadata !3650, metadata !DIExpression()), !dbg !3651
  store i32 %sensno, i32* %sensno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sensno.addr, metadata !3652, metadata !DIExpression()), !dbg !3653
  store i32 %raw, i32* %raw.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %raw.addr, metadata !3654, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3656, metadata !DIExpression()), !dbg !3657
  %0 = load i32, i32* %raw.addr, align 4, !dbg !3658
  %and = and i32 %0, 4095, !dbg !3658
  store i32 %and, i32* %raw.addr, align 4, !dbg !3658
  store i32 1627604160, i32* %tmp, align 4, !dbg !3659
  %1 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3660
  %conf = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %1, i32 0, i32 11, !dbg !3661
  %2 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %conf, align 8, !dbg !3661
  %cali_val = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %2, i32 0, i32 7, !dbg !3662
  %3 = load i32, i32* %cali_val, align 8, !dbg !3662
  %4 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3663
  %o_slope = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %4, i32 0, i32 8, !dbg !3664
  %5 = load i32, i32* %o_slope, align 4, !dbg !3664
  %add = add i32 %3, %5, !dbg !3665
  %6 = load i32, i32* %tmp, align 4, !dbg !3666
  %div = sdiv i32 %6, %add, !dbg !3666
  store i32 %div, i32* %tmp, align 4, !dbg !3666
  %7 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3667
  %adc_ge = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %7, i32 0, i32 5, !dbg !3668
  %8 = load i32, i32* %adc_ge, align 8, !dbg !3668
  %add1 = add i32 10000, %8, !dbg !3669
  %9 = load i32, i32* %tmp, align 4, !dbg !3670
  %div2 = sdiv i32 %9, %add1, !dbg !3670
  store i32 %div2, i32* %tmp, align 4, !dbg !3670
  %10 = load i32, i32* %raw.addr, align 4, !dbg !3671
  %11 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3672
  %vts = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %11, i32 0, i32 10, !dbg !3673
  %12 = load i32, i32* %sensno.addr, align 4, !dbg !3674
  %idxprom = sext i32 %12 to i64, !dbg !3672
  %arrayidx = getelementptr [6 x i32], [6 x i32]* %vts, i64 0, i64 %idxprom, !dbg !3672
  %13 = load i32, i32* %arrayidx, align 4, !dbg !3672
  %sub = sub i32 %10, %13, !dbg !3675
  %sub3 = sub i32 %sub, 3350, !dbg !3676
  %14 = load i32, i32* %tmp, align 4, !dbg !3677
  %mul = mul i32 %14, %sub3, !dbg !3677
  store i32 %mul, i32* %tmp, align 4, !dbg !3677
  %15 = load i32, i32* %tmp, align 4, !dbg !3678
  %shr = ashr i32 %15, 3, !dbg !3678
  store i32 %shr, i32* %tmp, align 4, !dbg !3678
  %16 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3679
  %degc_cali = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %16, i32 0, i32 7, !dbg !3680
  %17 = load i32, i32* %degc_cali, align 8, !dbg !3680
  %mul4 = mul i32 %17, 500, !dbg !3681
  %18 = load i32, i32* %tmp, align 4, !dbg !3682
  %sub5 = sub i32 %mul4, %18, !dbg !3683
  ret i32 %sub5, !dbg !3684
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @raw_to_mcelsius_v2(%struct.mtk_thermal* %mt, i32 %sensno, i32 %raw) #2 !dbg !3685 {
entry:
  %retval = alloca i32, align 4
  %mt.addr = alloca %struct.mtk_thermal*, align 8
  %sensno.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  %format_1 = alloca i32, align 4
  %format_2 = alloca i32, align 4
  %g_oe = alloca i32, align 4
  %g_gain = alloca i32, align 4
  %g_x_roomt = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.mtk_thermal* %mt, %struct.mtk_thermal** %mt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtk_thermal** %mt.addr, metadata !3686, metadata !DIExpression()), !dbg !3687
  store i32 %sensno, i32* %sensno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sensno.addr, metadata !3688, metadata !DIExpression()), !dbg !3689
  store i32 %raw, i32* %raw.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %raw.addr, metadata !3690, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.declare(metadata i32* %format_1, metadata !3692, metadata !DIExpression()), !dbg !3693
  store i32 0, i32* %format_1, align 4, !dbg !3693
  call void @llvm.dbg.declare(metadata i32* %format_2, metadata !3694, metadata !DIExpression()), !dbg !3695
  store i32 0, i32* %format_2, align 4, !dbg !3695
  call void @llvm.dbg.declare(metadata i32* %g_oe, metadata !3696, metadata !DIExpression()), !dbg !3697
  store i32 1, i32* %g_oe, align 4, !dbg !3697
  call void @llvm.dbg.declare(metadata i32* %g_gain, metadata !3698, metadata !DIExpression()), !dbg !3699
  store i32 1, i32* %g_gain, align 4, !dbg !3699
  call void @llvm.dbg.declare(metadata i32* %g_x_roomt, metadata !3700, metadata !DIExpression()), !dbg !3701
  store i32 0, i32* %g_x_roomt, align 4, !dbg !3701
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3702, metadata !DIExpression()), !dbg !3703
  store i32 0, i32* %tmp, align 4, !dbg !3703
  %0 = load i32, i32* %raw.addr, align 4, !dbg !3704
  %cmp = icmp eq i32 %0, 0, !dbg !3706
  br i1 %cmp, label %if.then, label %if.end, !dbg !3707

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3708
  br label %return, !dbg !3708

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %raw.addr, align 4, !dbg !3709
  %and = and i32 %1, 4095, !dbg !3709
  store i32 %and, i32* %raw.addr, align 4, !dbg !3709
  %2 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3710
  %adc_ge = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %2, i32 0, i32 5, !dbg !3711
  %3 = load i32, i32* %adc_ge, align 8, !dbg !3711
  %sub = sub i32 %3, 512, !dbg !3712
  %mul = mul i32 %sub, 10000, !dbg !3713
  %shr = ashr i32 %mul, 12, !dbg !3714
  %add = add i32 10000, %shr, !dbg !3715
  store i32 %add, i32* %g_gain, align 4, !dbg !3716
  %4 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3717
  %adc_oe = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %4, i32 0, i32 6, !dbg !3718
  %5 = load i32, i32* %adc_oe, align 4, !dbg !3718
  %sub1 = sub i32 %5, 512, !dbg !3719
  store i32 %sub1, i32* %g_oe, align 4, !dbg !3720
  %6 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3721
  %vts = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %6, i32 0, i32 10, !dbg !3722
  %arrayidx = getelementptr [6 x i32], [6 x i32]* %vts, i64 0, i64 1, !dbg !3721
  %7 = load i32, i32* %arrayidx, align 4, !dbg !3721
  %add2 = add i32 %7, 3105, !dbg !3723
  %8 = load i32, i32* %g_oe, align 4, !dbg !3724
  %sub3 = sub i32 %add2, %8, !dbg !3725
  store i32 %sub3, i32* %format_1, align 4, !dbg !3726
  %9 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3727
  %degc_cali = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %9, i32 0, i32 7, !dbg !3728
  %10 = load i32, i32* %degc_cali, align 8, !dbg !3728
  %mul4 = mul i32 %10, 10, !dbg !3729
  %shr5 = ashr i32 %mul4, 1, !dbg !3730
  store i32 %shr5, i32* %format_2, align 4, !dbg !3731
  %11 = load i32, i32* %format_1, align 4, !dbg !3732
  %mul6 = mul i32 %11, 10000, !dbg !3733
  %shr7 = ashr i32 %mul6, 12, !dbg !3734
  %mul8 = mul i32 %shr7, 10000, !dbg !3735
  %12 = load i32, i32* %g_gain, align 4, !dbg !3736
  %div = sdiv i32 %mul8, %12, !dbg !3737
  store i32 %div, i32* %g_x_roomt, align 4, !dbg !3738
  %13 = load i32, i32* %raw.addr, align 4, !dbg !3739
  %14 = load i32, i32* %g_oe, align 4, !dbg !3740
  %sub9 = sub i32 %13, %14, !dbg !3741
  %mul10 = mul i32 %sub9, 10000, !dbg !3742
  %shr11 = ashr i32 %mul10, 12, !dbg !3743
  %mul12 = mul i32 %shr11, 10000, !dbg !3744
  %15 = load i32, i32* %g_gain, align 4, !dbg !3745
  %div13 = sdiv i32 %mul12, %15, !dbg !3746
  %16 = load i32, i32* %g_x_roomt, align 4, !dbg !3747
  %sub14 = sub i32 %div13, %16, !dbg !3748
  store i32 %sub14, i32* %tmp, align 4, !dbg !3749
  %17 = load i32, i32* %tmp, align 4, !dbg !3750
  %mul15 = mul i32 %17, 10, !dbg !3751
  %mul16 = mul i32 %mul15, 100, !dbg !3752
  %div17 = sdiv i32 %mul16, 11, !dbg !3753
  store i32 %div17, i32* %tmp, align 4, !dbg !3754
  %18 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3755
  %o_slope_sign = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %18, i32 0, i32 9, !dbg !3757
  %19 = load i32, i32* %o_slope_sign, align 8, !dbg !3757
  %cmp18 = icmp eq i32 %19, 0, !dbg !3758
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !3759

if.then19:                                        ; preds = %if.end
  %20 = load i32, i32* %tmp, align 4, !dbg !3760
  %21 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3761
  %o_slope = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %21, i32 0, i32 8, !dbg !3762
  %22 = load i32, i32* %o_slope, align 4, !dbg !3762
  %sub20 = sub i32 165, %22, !dbg !3763
  %div21 = sdiv i32 %20, %sub20, !dbg !3764
  store i32 %div21, i32* %tmp, align 4, !dbg !3765
  br label %if.end25, !dbg !3766

if.else:                                          ; preds = %if.end
  %23 = load i32, i32* %tmp, align 4, !dbg !3767
  %24 = load %struct.mtk_thermal*, %struct.mtk_thermal** %mt.addr, align 8, !dbg !3768
  %o_slope22 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %24, i32 0, i32 8, !dbg !3769
  %25 = load i32, i32* %o_slope22, align 4, !dbg !3769
  %add23 = add i32 165, %25, !dbg !3770
  %div24 = sdiv i32 %23, %add23, !dbg !3771
  store i32 %div24, i32* %tmp, align 4, !dbg !3772
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then19
  %26 = load i32, i32* %format_2, align 4, !dbg !3773
  %27 = load i32, i32* %tmp, align 4, !dbg !3774
  %sub26 = sub i32 %26, %27, !dbg !3775
  %mul27 = mul i32 %sub26, 100, !dbg !3776
  store i32 %mul27, i32* %retval, align 4, !dbg !3777
  br label %return, !dbg !3777

return:                                           ; preds = %if.end25, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !3778
  ret i32 %28, !dbg !3778
}

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3779 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3784, metadata !DIExpression()), !dbg !3785
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3786
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3787
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !3788
  ret i8* %call, !dbg !3789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3790 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3793, metadata !DIExpression()), !dbg !3794
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3795
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3796
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3796
  ret i8* %1, !dbg !3797
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2325, !2326, !2327, !2328}
!llvm.ident = !{!2329}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mtk_thermal_driver_init163", scope: !2, file: !3, line: 1119, type: !110, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !118, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/mtk_thermal.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !54, !59, !65, !73, !84, !93}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mtk_thermal_version", file: !3, line: 161, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53}
!52 = !DIEnumerator(name: "MTK_THERMAL_V1", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "MTK_THERMAL_V2", value: 2, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !55, line: 7, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !55, line: 12, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !66, line: 40, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70, !71, !72}
!68 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!71 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!72 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !66, line: 49, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83}
!75 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!79 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!80 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!81 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!82 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!83 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 151, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIEnumerator(name: "VTS1", value: 0, isUnsigned: true)
!87 = !DIEnumerator(name: "VTS2", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "VTS3", value: 2, isUnsigned: true)
!89 = !DIEnumerator(name: "VTS4", value: 3, isUnsigned: true)
!90 = !DIEnumerator(name: "VTS5", value: 4, isUnsigned: true)
!91 = !DIEnumerator(name: "VTSABB", value: 5, isUnsigned: true)
!92 = !DIEnumerator(name: "MAX_NUM_VTS", value: 6, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !{!99, !102, !104, !109, !110, !111, !112, !115, !117}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !101, line: 76, flags: DIFlagFwdDecl)
!101 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 148, baseType: !7)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !105, line: 23, baseType: !106)
!105 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !105, line: 21, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !{!0, !119, !126, !133, !138, !140, !145, !147, !152, !157, !162, !2193, !2196, !2219, !2222, !2247, !2252, !2254, !2257, !2259, !2262, !2266, !2268, !2271, !2273, !2275, !2277, !2279, !2281, !2283, !2285, !2287, !2289, !2291, !2293, !2295, !2297, !2299, !2301, !2303, !2305, !2307, !2309, !2311, !2314, !2316, !2318, !2320, !2323}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__exitcall_mtk_thermal_driver_exit", scope: !2, file: !3, line: 1119, type: !121, isLocal: true, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !122, line: 117, baseType: !123)
!122 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author164", scope: !2, file: !3, line: 1121, type: !128, isLocal: true, isDefinition: true, align: 8)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 464, elements: !131)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!131 = !{!132}
!132 = !DISubrange(count: 58)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author165", scope: !2, file: !3, line: 1122, type: !135, isLocal: true, isDefinition: true, align: 8)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 416, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 52)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author166", scope: !2, file: !3, line: 1123, type: !128, isLocal: true, isDefinition: true, align: 8)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author167", scope: !2, file: !3, line: 1124, type: !142, isLocal: true, isDefinition: true, align: 8)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 456, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 57)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author168", scope: !2, file: !3, line: 1125, type: !135, isLocal: true, isDefinition: true, align: 8)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description169", scope: !2, file: !3, line: 1126, type: !149, isLocal: true, isDefinition: true, align: 8)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 48)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file170", scope: !2, file: !3, line: 1127, type: !154, isLocal: true, isDefinition: true, align: 8)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 360, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 45)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license171", scope: !2, file: !3, line: 1127, type: !159, isLocal: true, isDefinition: true, align: 8)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 216, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 27)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "mtk_thermal_driver", scope: !2, file: !3, line: 1110, type: !164, isLocal: true, isDefinition: true)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !165, line: 200, size: 1600, elements: !166)
!165 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !2180, !2181, !2185, !2189, !2190, !2191, !2192}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !164, file: !165, line: 201, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!117, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !165, line: 22, size: 6208, elements: !173)
!173 = !{!174, !176, !177, !180, !2149, !2150, !2151, !2152, !2166, !2174, !2175, !2178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !165, line: 23, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !172, file: !165, line: 24, baseType: !117, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !172, file: !165, line: 25, baseType: !178, size: 8, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 30, baseType: !179)
!179 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !172, file: !165, line: 26, baseType: !181, size: 5568, offset: 128)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !182)
!182 = !{!183, !1675, !1677, !1680, !1681, !1732, !1826, !1827, !1828, !1829, !1830, !1839, !1944, !1957, !1960, !1961, !1965, !1967, !1968, !1969, !1973, !1979, !1980, !1983, !2098, !2099, !2102, !2103, !2104, !2105, !2137, !2138, !2139, !2142, !2145, !2146, !2147, !2148}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !181, file: !30, line: 462, baseType: !184, size: 512)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !185, line: 64, size: 512, elements: !186)
!185 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!186 = !{!187, !188, !194, !196, !256, !1512, !1665, !1670, !1671, !1672, !1673, !1674}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !185, line: 65, baseType: !175, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !184, file: !185, line: 66, baseType: !189, size: 128, offset: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 178, size: 128, elements: !190)
!190 = !{!191, !193}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !103, line: 179, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !189, file: !103, line: 179, baseType: !192, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !185, line: 67, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !184, file: !185, line: 68, baseType: !197, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !185, line: 192, size: 704, elements: !199)
!199 = !{!200, !201, !217, !218}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !198, file: !185, line: 193, baseType: !189, size: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !198, file: !185, line: 194, baseType: !202, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !203, line: 83, baseType: !204)
!203 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !203, line: 71, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !203, line: 72, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !203, line: 72, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !207, file: !203, line: 73, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !203, line: 20, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !210, file: !203, line: 21, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !214, line: 25, baseType: !215)
!214 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 25, elements: !216)
!216 = !{}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !198, file: !185, line: 195, baseType: !184, size: 512, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !198, file: !185, line: 196, baseType: !219, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !185, line: 156, size: 192, elements: !222)
!222 = !{!223, !228, !233}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !221, file: !185, line: 157, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!117, !197, !195}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !185, line: 158, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!175, !197, !195}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !221, file: !185, line: 159, baseType: !234, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!117, !197, !195, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !185, line: 148, size: 20736, elements: !240)
!240 = !{!241, !246, !250, !251, !255}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !239, file: !185, line: 149, baseType: !242, size: 192)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 192, elements: !244)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!244 = !{!245}
!245 = !DISubrange(count: 3)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !239, file: !185, line: 150, baseType: !247, size: 4096, offset: 192)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 4096, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !239, file: !185, line: 151, baseType: !117, size: 32, offset: 4288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !239, file: !185, line: 152, baseType: !252, size: 16384, offset: 4320)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 16384, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 2048)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !239, file: !185, line: 153, baseType: !117, size: 32, offset: 20704)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !184, file: !185, line: 69, baseType: !257, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !185, line: 138, size: 448, elements: !259)
!259 = !{!260, !264, !292, !294, !1460, !1491, !1495}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !258, file: !185, line: 139, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !195}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !258, file: !185, line: 140, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !268, line: 230, size: 128, elements: !269)
!268 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!269 = !{!270, !285}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !267, file: !268, line: 231, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !195, !278, !243}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 60, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !276, line: 73, baseType: !277)
!276 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !276, line: 15, baseType: !111)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !268, line: 30, size: 128, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !268, line: 31, baseType: !175, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !279, file: !268, line: 32, baseType: !283, size: 16, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 19, baseType: !284)
!284 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !267, file: !268, line: 232, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!274, !195, !278, !175, !289}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 55, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !276, line: 72, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !276, line: 16, baseType: !109)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !258, file: !185, line: 141, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !258, file: !185, line: 142, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !268, line: 84, size: 320, elements: !299)
!299 = !{!300, !301, !305, !1457, !1458}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !268, line: 85, baseType: !175, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !298, file: !268, line: 86, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!283, !195, !278, !117}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !298, file: !268, line: 88, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!283, !195, !309, !117}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !268, line: 168, size: 448, elements: !311)
!311 = !{!312, !313, !314, !315, !325, !326}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !310, file: !268, line: 169, baseType: !279, size: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !310, file: !268, line: 170, baseType: !289, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !310, file: !268, line: 171, baseType: !110, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !310, file: !268, line: 172, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!274, !319, !195, !309, !243, !322, !289}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !321, line: 526, flags: DIFlagFwdDecl)
!321 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 46, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !276, line: 88, baseType: !324)
!324 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !310, file: !268, line: 174, baseType: !316, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !310, file: !268, line: 176, baseType: !327, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!117, !319, !195, !309, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !332, line: 305, size: 1472, elements: !333)
!332 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !335, !336, !337, !338, !346, !347, !1431, !1437, !1438, !1443, !1444, !1447, !1451, !1452, !1453, !1454, !1455}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !331, file: !332, line: 308, baseType: !109, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !331, file: !332, line: 309, baseType: !109, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !331, file: !332, line: 313, baseType: !330, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !331, file: !332, line: 313, baseType: !330, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !331, file: !332, line: 315, baseType: !339, size: 192, align: 64, offset: 256)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !340, line: 24, size: 192, align: 64, elements: !341)
!340 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!341 = !{!342, !343, !345}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !339, file: !340, line: 25, baseType: !109, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !339, file: !340, line: 26, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !339, file: !340, line: 27, baseType: !344, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !331, file: !332, line: 323, baseType: !109, size: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !331, file: !332, line: 327, baseType: !348, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !332, line: 388, size: 7296, elements: !350)
!350 = !{!351, !1427}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !332, line: 389, baseType: !352, size: 7296)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !332, line: 389, size: 7296, elements: !353)
!353 = !{!354, !355, !359, !360, !364, !365, !366, !367, !368, !376, !381, !382, !383, !384, !393, !394, !395, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !430, !438, !441, !489, !490, !1397, !1398, !1401, !1405, !1406, !1409, !1410, !1411, !1414, !1426}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !352, file: !332, line: 390, baseType: !330, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !352, file: !332, line: 391, baseType: !356, size: 64, offset: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !340, line: 31, size: 64, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !356, file: !340, line: 32, baseType: !344, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !352, file: !332, line: 392, baseType: !104, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !352, file: !332, line: 394, baseType: !361, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!109, !319, !109, !109, !109, !109}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !352, file: !332, line: 398, baseType: !109, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !352, file: !332, line: 399, baseType: !109, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !352, file: !332, line: 405, baseType: !109, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !352, file: !332, line: 406, baseType: !109, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !352, file: !332, line: 407, baseType: !369, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !321, line: 286, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 286, size: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !371, file: !321, line: 286, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !375, line: 18, baseType: !109)
!375 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !352, file: !332, line: 416, baseType: !377, size: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 168, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 166, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !378, file: !103, line: 167, baseType: !117, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !352, file: !332, line: 428, baseType: !377, size: 32, offset: 608)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !352, file: !332, line: 437, baseType: !377, size: 32, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !352, file: !332, line: 447, baseType: !377, size: 32, offset: 672)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !352, file: !332, line: 450, baseType: !385, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !386, line: 13, baseType: !387)
!386 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 175, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 173, size: 64, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !388, file: !103, line: 174, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !105, line: 22, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !324)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !352, file: !332, line: 452, baseType: !117, size: 32, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !352, file: !332, line: 454, baseType: !202, offset: 800)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !352, file: !332, line: 457, baseType: !396, size: 256, offset: 832)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !397, line: 35, size: 256, elements: !398)
!397 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !400, !401, !403}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !396, file: !397, line: 36, baseType: !385, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !396, file: !397, line: 42, baseType: !385, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !396, file: !397, line: 46, baseType: !402, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !203, line: 29, baseType: !210)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !396, file: !397, line: 47, baseType: !189, size: 128, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !352, file: !332, line: 459, baseType: !189, size: 128, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !352, file: !332, line: 466, baseType: !109, size: 64, offset: 1216)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !352, file: !332, line: 467, baseType: !109, size: 64, offset: 1280)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !352, file: !332, line: 469, baseType: !109, size: 64, offset: 1344)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !352, file: !332, line: 470, baseType: !109, size: 64, offset: 1408)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !352, file: !332, line: 471, baseType: !387, size: 64, offset: 1472)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !352, file: !332, line: 472, baseType: !109, size: 64, offset: 1536)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !352, file: !332, line: 473, baseType: !109, size: 64, offset: 1600)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !352, file: !332, line: 474, baseType: !109, size: 64, offset: 1664)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !352, file: !332, line: 475, baseType: !109, size: 64, offset: 1728)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !352, file: !332, line: 477, baseType: !202, offset: 1792)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !352, file: !332, line: 478, baseType: !109, size: 64, offset: 1792)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !352, file: !332, line: 478, baseType: !109, size: 64, offset: 1856)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !352, file: !332, line: 478, baseType: !109, size: 64, offset: 1920)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !352, file: !332, line: 478, baseType: !109, size: 64, offset: 1984)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !352, file: !332, line: 479, baseType: !109, size: 64, offset: 2048)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !352, file: !332, line: 479, baseType: !109, size: 64, offset: 2112)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !352, file: !332, line: 479, baseType: !109, size: 64, offset: 2176)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !352, file: !332, line: 480, baseType: !109, size: 64, offset: 2240)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !352, file: !332, line: 480, baseType: !109, size: 64, offset: 2304)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !352, file: !332, line: 480, baseType: !109, size: 64, offset: 2368)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !352, file: !332, line: 480, baseType: !109, size: 64, offset: 2432)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !352, file: !332, line: 482, baseType: !427, size: 2816, offset: 2496)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 2816, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 44)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !352, file: !332, line: 488, baseType: !431, size: 256, offset: 5312)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !432, line: 60, size: 256, elements: !433)
!432 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !432, line: 61, baseType: !435, size: 256)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 4)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !352, file: !332, line: 490, baseType: !439, size: 64, offset: 5568)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !332, line: 490, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !352, file: !332, line: 493, baseType: !442, size: 896, offset: 5632)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !443, line: 53, baseType: !444)
!443 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 13, size: 896, elements: !445)
!445 = !{!446, !447, !448, !449, !452, !453, !460, !461, !481, !482, !485}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !444, file: !443, line: 18, baseType: !104, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !444, file: !443, line: 28, baseType: !387, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !444, file: !443, line: 31, baseType: !396, size: 256, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !444, file: !443, line: 32, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !443, line: 32, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !444, file: !443, line: 37, baseType: !284, size: 16, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !444, file: !443, line: 40, baseType: !454, size: 192, offset: 512)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !455, line: 53, size: 192, elements: !456)
!455 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !454, file: !455, line: 54, baseType: !385, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !454, file: !455, line: 55, baseType: !202, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !454, file: !455, line: 59, baseType: !189, size: 128, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !444, file: !443, line: 41, baseType: !110, size: 64, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !444, file: !443, line: 42, baseType: !462, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !465, line: 13, size: 896, elements: !466)
!465 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !464, file: !465, line: 14, baseType: !110, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !464, file: !465, line: 15, baseType: !109, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !464, file: !465, line: 17, baseType: !109, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !464, file: !465, line: 17, baseType: !109, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !464, file: !465, line: 19, baseType: !111, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !464, file: !465, line: 21, baseType: !111, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !464, file: !465, line: 22, baseType: !111, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !464, file: !465, line: 23, baseType: !111, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !464, file: !465, line: 24, baseType: !111, size: 64, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !464, file: !465, line: 25, baseType: !111, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !464, file: !465, line: 26, baseType: !111, size: 64, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !464, file: !465, line: 27, baseType: !111, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !464, file: !465, line: 28, baseType: !111, size: 64, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !464, file: !465, line: 29, baseType: !111, size: 64, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !444, file: !443, line: 44, baseType: !377, size: 32, offset: 832)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !444, file: !443, line: 50, baseType: !483, size: 16, offset: 864)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !105, line: 19, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !284)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !444, file: !443, line: 51, baseType: !486, size: 16, offset: 880)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !105, line: 18, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !488)
!488 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !332, line: 495, baseType: !109, size: 64, offset: 6528)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !352, file: !332, line: 497, baseType: !491, size: 64, offset: 6592)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !332, line: 381, size: 384, elements: !493)
!493 = !{!494, !495, !1396}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !492, file: !332, line: 382, baseType: !377, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !492, file: !332, line: 383, baseType: !496, size: 128, offset: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !332, line: 376, size: 128, elements: !497)
!497 = !{!498, !1394}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !496, file: !332, line: 377, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !501, line: 640, size: 48640, elements: !502)
!501 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !509, !511, !512, !518, !519, !520, !521, !522, !523, !524, !525, !529, !547, !558, !653, !654, !655, !666, !667, !669, !670, !671, !672, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !750, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !806, !808, !809, !810, !822, !824, !825, !826, !827, !828, !834, !835, !836, !837, !838, !839, !840, !852, !857, !862, !863, !864, !867, !871, !874, !877, !880, !883, !887, !890, !893, !899, !900, !901, !907, !908, !909, !910, !911, !920, !921, !922, !923, !924, !929, !930, !931, !934, !935, !938, !941, !944, !947, !950, !953, !954, !1034, !1037, !1040, !1041, !1044, !1045, !1046, !1052, !1053, !1054, !1067, !1068, !1069, !1079, !1084, !1087, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !500, file: !501, line: 646, baseType: !504, size: 128)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !505, line: 56, size: 128, elements: !506)
!505 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !505, line: 57, baseType: !109, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !504, file: !505, line: 58, baseType: !113, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !500, file: !501, line: 649, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !111)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !500, file: !501, line: 657, baseType: !110, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !500, file: !501, line: 658, baseType: !513, size: 32, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !514, line: 113, baseType: !515)
!514 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !514, line: 111, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !515, file: !514, line: 112, baseType: !377, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !501, line: 660, baseType: !7, size: 32, offset: 288)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !500, file: !501, line: 661, baseType: !7, size: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !500, file: !501, line: 684, baseType: !117, size: 32, offset: 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !500, file: !501, line: 686, baseType: !117, size: 32, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !500, file: !501, line: 687, baseType: !117, size: 32, offset: 416)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !500, file: !501, line: 688, baseType: !117, size: 32, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !500, file: !501, line: 689, baseType: !7, size: 32, offset: 480)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !500, file: !501, line: 691, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !501, line: 691, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !500, file: !501, line: 692, baseType: !530, size: 832, offset: 576)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !501, line: 451, size: 832, elements: !531)
!531 = !{!532, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !530, file: !501, line: 453, baseType: !533, size: 128)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !501, line: 325, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !533, file: !501, line: 326, baseType: !109, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !533, file: !501, line: 327, baseType: !113, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !530, file: !501, line: 454, baseType: !339, size: 192, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !530, file: !501, line: 455, baseType: !189, size: 128, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !530, file: !501, line: 456, baseType: !7, size: 32, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !530, file: !501, line: 458, baseType: !104, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !530, file: !501, line: 459, baseType: !104, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !530, file: !501, line: 460, baseType: !104, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !530, file: !501, line: 461, baseType: !104, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !530, file: !501, line: 463, baseType: !104, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !530, file: !501, line: 465, baseType: !546, offset: 832)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !501, line: 415, elements: !216)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !500, file: !501, line: 693, baseType: !548, size: 384, offset: 1408)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !501, line: 489, size: 384, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !548, file: !501, line: 490, baseType: !189, size: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !548, file: !501, line: 491, baseType: !109, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !548, file: !501, line: 492, baseType: !109, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !548, file: !501, line: 493, baseType: !7, size: 32, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !548, file: !501, line: 494, baseType: !284, size: 16, offset: 288)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !548, file: !501, line: 495, baseType: !284, size: 16, offset: 304)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !548, file: !501, line: 497, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !500, file: !501, line: 697, baseType: !559, size: 1792, offset: 1792)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !501, line: 507, size: 1792, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !650, !651}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !559, file: !501, line: 508, baseType: !339, size: 192, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !559, file: !501, line: 515, baseType: !104, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !559, file: !501, line: 516, baseType: !104, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !559, file: !501, line: 517, baseType: !104, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !559, file: !501, line: 518, baseType: !104, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !559, file: !501, line: 519, baseType: !104, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !559, file: !501, line: 526, baseType: !391, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !559, file: !501, line: 527, baseType: !104, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !559, file: !501, line: 528, baseType: !7, size: 32, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !559, file: !501, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !559, file: !501, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !559, file: !501, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !559, file: !501, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !559, file: !501, line: 563, baseType: !575, size: 512, offset: 704)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !576)
!576 = !{!577, !585, !586, !591, !643, !647, !648, !649}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !575, file: !6, line: 119, baseType: !578, size: 256)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !579, line: 9, size: 256, elements: !580)
!579 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !578, file: !579, line: 10, baseType: !339, size: 192, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !578, file: !579, line: 11, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !584, line: 29, baseType: !391)
!584 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !575, file: !6, line: 120, baseType: !583, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !575, file: !6, line: 121, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!5, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !575, file: !6, line: 122, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !594)
!594 = !{!595, !615, !616, !619, !629, !630, !638, !642}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !593, file: !6, line: 160, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !597, file: !6, line: 215, baseType: !402)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !597, file: !6, line: 216, baseType: !7, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !597, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !597, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !597, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !597, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !597, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !597, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !597, file: !6, line: 233, baseType: !583, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !597, file: !6, line: 234, baseType: !590, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !597, file: !6, line: 235, baseType: !583, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !597, file: !6, line: 236, baseType: !590, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !597, file: !6, line: 237, baseType: !612, size: 4096, offset: 512)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 4096, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 8)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !593, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !593, file: !6, line: 162, baseType: !617, size: 32, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 27, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !276, line: 96, baseType: !117)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !593, file: !6, line: 163, baseType: !620, size: 32, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !621, line: 276, baseType: !622)
!621 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !621, line: 276, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !622, file: !621, line: 276, baseType: !625, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !621, line: 70, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !621, line: 65, size: 32, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !626, file: !621, line: 66, baseType: !7, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !593, file: !6, line: 164, baseType: !590, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !593, file: !6, line: 165, baseType: !631, size: 128, offset: 256)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !579, line: 14, size: 128, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !631, file: !579, line: 15, baseType: !634, size: 128)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !340, line: 125, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !634, file: !340, line: 126, baseType: !356, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !634, file: !340, line: 127, baseType: !344, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !593, file: !6, line: 166, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!583}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !593, file: !6, line: 167, baseType: !583, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !575, file: !6, line: 123, baseType: !644, size: 8, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !105, line: 17, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !646)
!646 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !575, file: !6, line: 124, baseType: !644, size: 8, offset: 456)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !575, file: !6, line: 125, baseType: !644, size: 8, offset: 464)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !575, file: !6, line: 126, baseType: !644, size: 8, offset: 472)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !559, file: !501, line: 572, baseType: !575, size: 512, offset: 1216)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !559, file: !501, line: 580, baseType: !652, size: 64, offset: 1728)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !500, file: !501, line: 721, baseType: !7, size: 32, offset: 3584)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !500, file: !501, line: 722, baseType: !117, size: 32, offset: 3616)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !500, file: !501, line: 723, baseType: !656, size: 64, offset: 3648)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !659, line: 17, baseType: !660)
!659 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !659, line: 17, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !660, file: !659, line: 17, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 1)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !500, file: !501, line: 724, baseType: !658, size: 64, offset: 3712)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !500, file: !501, line: 749, baseType: !668, offset: 3776)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !501, line: 290, elements: !216)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !500, file: !501, line: 751, baseType: !189, size: 128, offset: 3776)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !500, file: !501, line: 757, baseType: !348, size: 64, offset: 3904)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !500, file: !501, line: 758, baseType: !348, size: 64, offset: 3968)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !500, file: !501, line: 761, baseType: !673, size: 320, offset: 4032)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !432, line: 34, size: 320, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !673, file: !432, line: 35, baseType: !104, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !673, file: !432, line: 36, baseType: !677, size: 256, offset: 64)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !436)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !500, file: !501, line: 766, baseType: !117, size: 32, offset: 4352)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !500, file: !501, line: 767, baseType: !117, size: 32, offset: 4384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !500, file: !501, line: 768, baseType: !117, size: 32, offset: 4416)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !500, file: !501, line: 770, baseType: !117, size: 32, offset: 4448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !500, file: !501, line: 772, baseType: !109, size: 64, offset: 4480)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !500, file: !501, line: 775, baseType: !7, size: 32, offset: 4544)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !500, file: !501, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !500, file: !501, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !500, file: !501, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !500, file: !501, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !500, file: !501, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !500, file: !501, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !500, file: !501, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !500, file: !501, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !500, file: !501, line: 831, baseType: !109, size: 64, offset: 4672)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !500, file: !501, line: 833, baseType: !694, size: 384, offset: 4736)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !695)
!695 = !{!696, !701}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !694, file: !12, line: 26, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!111, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !12, line: 27, baseType: !702, size: 320, offset: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !12, line: 27, size: 320, elements: !703)
!703 = !{!704, !713, !740}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !702, file: !12, line: 36, baseType: !705, size: 320)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !12, line: 29, size: 320, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !705, file: !12, line: 30, baseType: !112, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !705, file: !12, line: 31, baseType: !113, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !12, line: 32, baseType: !113, size: 32, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !705, file: !12, line: 33, baseType: !113, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !705, file: !12, line: 34, baseType: !104, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !705, file: !12, line: 35, baseType: !112, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !702, file: !12, line: 46, baseType: !714, size: 192)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !12, line: 38, size: 192, elements: !715)
!715 = !{!716, !717, !718, !739}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !714, file: !12, line: 39, baseType: !617, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !714, file: !12, line: 41, baseType: !719, size: 64, offset: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !714, file: !12, line: 41, size: 64, elements: !720)
!720 = !{!721, !729}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !719, file: !12, line: 42, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !724, line: 7, size: 128, elements: !725)
!724 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !723, file: !724, line: 8, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !276, line: 93, baseType: !324)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !723, file: !724, line: 9, baseType: !324, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !719, file: !12, line: 43, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !732, line: 7, size: 64, elements: !733)
!732 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !731, file: !732, line: 8, baseType: !735, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !732, line: 5, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !105, line: 20, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !117)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !731, file: !732, line: 9, baseType: !736, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !714, file: !12, line: 45, baseType: !104, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !702, file: !12, line: 54, baseType: !741, size: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !12, line: 48, size: 256, elements: !742)
!742 = !{!743, !746, !747, !748, !749}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !741, file: !12, line: 49, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !741, file: !12, line: 50, baseType: !117, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !741, file: !12, line: 51, baseType: !117, size: 32, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !741, file: !12, line: 52, baseType: !109, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !741, file: !12, line: 53, baseType: !109, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !500, file: !501, line: 835, baseType: !751, size: 32, offset: 5120)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !103, line: 22, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !276, line: 28, baseType: !117)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !500, file: !501, line: 836, baseType: !751, size: 32, offset: 5152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !500, file: !501, line: 840, baseType: !109, size: 64, offset: 5184)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !500, file: !501, line: 849, baseType: !499, size: 64, offset: 5248)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !500, file: !501, line: 852, baseType: !499, size: 64, offset: 5312)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !500, file: !501, line: 857, baseType: !189, size: 128, offset: 5376)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !500, file: !501, line: 858, baseType: !189, size: 128, offset: 5504)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !500, file: !501, line: 859, baseType: !499, size: 64, offset: 5632)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !500, file: !501, line: 867, baseType: !189, size: 128, offset: 5696)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !500, file: !501, line: 868, baseType: !189, size: 128, offset: 5824)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !500, file: !501, line: 871, baseType: !763, size: 64, offset: 5952)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !765, line: 59, size: 768, elements: !766)
!765 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !769, !770, !781, !782, !789, !798}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !765, line: 61, baseType: !513, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !764, file: !765, line: 62, baseType: !7, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !764, file: !765, line: 63, baseType: !202, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !764, file: !765, line: 65, baseType: !771, size: 256, offset: 64)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 256, elements: !436)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !103, line: 182, size: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !772, file: !103, line: 183, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 186, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !103, line: 187, baseType: !775, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !776, file: !103, line: 187, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !764, file: !765, line: 66, baseType: !772, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !764, file: !765, line: 68, baseType: !783, size: 128, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !784, line: 40, baseType: !785)
!784 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !784, line: 36, size: 128, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !785, file: !784, line: 37, baseType: !202)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !785, file: !784, line: 38, baseType: !189, size: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !764, file: !765, line: 69, baseType: !790, size: 128, align: 64, offset: 512)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 216, size: 128, align: 64, elements: !791)
!791 = !{!792, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !790, file: !103, line: 217, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !790, file: !103, line: 218, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !793}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !764, file: !765, line: 70, baseType: !799, size: 128, offset: 640)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 128, elements: !664)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !765, line: 54, size: 128, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !800, file: !765, line: 55, baseType: !117, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !800, file: !765, line: 56, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !765, line: 56, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !500, file: !501, line: 872, baseType: !807, size: 512, offset: 6016)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 512, elements: !436)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !500, file: !501, line: 873, baseType: !189, size: 128, offset: 6528)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !500, file: !501, line: 874, baseType: !189, size: 128, offset: 6656)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !500, file: !501, line: 876, baseType: !811, size: 64, offset: 6784)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !813, line: 26, size: 192, elements: !814)
!813 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !812, file: !813, line: 27, baseType: !7, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !812, file: !813, line: 28, baseType: !817, size: 128, offset: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !818, line: 43, size: 128, elements: !819)
!818 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !817, file: !818, line: 44, baseType: !402)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !817, file: !818, line: 45, baseType: !189, size: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !500, file: !501, line: 879, baseType: !823, size: 64, offset: 6848)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !500, file: !501, line: 882, baseType: !823, size: 64, offset: 6912)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !500, file: !501, line: 884, baseType: !104, size: 64, offset: 6976)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !500, file: !501, line: 885, baseType: !104, size: 64, offset: 7040)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !500, file: !501, line: 890, baseType: !104, size: 64, offset: 7104)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !500, file: !501, line: 891, baseType: !829, size: 128, offset: 7168)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !501, line: 242, size: 128, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !829, file: !501, line: 244, baseType: !104, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !829, file: !501, line: 245, baseType: !104, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !829, file: !501, line: 246, baseType: !402, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !500, file: !501, line: 900, baseType: !109, size: 64, offset: 7296)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !500, file: !501, line: 901, baseType: !109, size: 64, offset: 7360)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !500, file: !501, line: 904, baseType: !104, size: 64, offset: 7424)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !500, file: !501, line: 907, baseType: !104, size: 64, offset: 7488)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !500, file: !501, line: 910, baseType: !109, size: 64, offset: 7552)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !500, file: !501, line: 911, baseType: !109, size: 64, offset: 7616)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !500, file: !501, line: 914, baseType: !841, size: 640, offset: 7680)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !842, line: 123, size: 640, elements: !843)
!842 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!843 = !{!844, !850, !851}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !841, file: !842, line: 124, baseType: !845, size: 576)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 576, elements: !244)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !842, line: 108, size: 192, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !846, file: !842, line: 109, baseType: !104, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !846, file: !842, line: 110, baseType: !631, size: 128, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !841, file: !842, line: 125, baseType: !7, size: 32, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !841, file: !842, line: 126, baseType: !7, size: 32, offset: 608)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !500, file: !501, line: 917, baseType: !853, size: 192, offset: 8320)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !842, line: 134, size: 192, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !853, file: !842, line: 135, baseType: !790, size: 128, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !853, file: !842, line: 136, baseType: !7, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !500, file: !501, line: 923, baseType: !858, size: 64, offset: 8512)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !861, line: 11, flags: DIFlagFwdDecl)
!861 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!862 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !500, file: !501, line: 926, baseType: !858, size: 64, offset: 8576)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !500, file: !501, line: 929, baseType: !858, size: 64, offset: 8640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !500, file: !501, line: 933, baseType: !865, size: 64, offset: 8704)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !501, line: 933, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !500, file: !501, line: 943, baseType: !868, size: 128, offset: 8768)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: 16)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !500, file: !501, line: 945, baseType: !872, size: 64, offset: 8896)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !501, line: 49, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !500, file: !501, line: 956, baseType: !875, size: 64, offset: 8960)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !501, line: 45, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !500, file: !501, line: 959, baseType: !878, size: 64, offset: 9024)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !501, line: 959, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !500, file: !501, line: 962, baseType: !881, size: 64, offset: 9088)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !501, line: 66, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !500, file: !501, line: 966, baseType: !884, size: 64, offset: 9152)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !886, line: 35, flags: DIFlagFwdDecl)
!886 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !500, file: !501, line: 969, baseType: !888, size: 64, offset: 9216)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !842, line: 223, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !500, file: !501, line: 970, baseType: !891, size: 64, offset: 9280)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !501, line: 62, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !500, file: !501, line: 971, baseType: !894, size: 64, offset: 9344)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !895, line: 25, baseType: !896)
!895 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !895, line: 23, size: 64, elements: !897)
!897 = !{!898}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !896, file: !895, line: 24, baseType: !663, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !500, file: !501, line: 972, baseType: !894, size: 64, offset: 9408)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !500, file: !501, line: 974, baseType: !894, size: 64, offset: 9472)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !500, file: !501, line: 975, baseType: !902, size: 192, offset: 9536)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !903, line: 30, size: 192, elements: !904)
!903 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !902, file: !903, line: 31, baseType: !189, size: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !902, file: !903, line: 32, baseType: !894, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !500, file: !501, line: 976, baseType: !109, size: 64, offset: 9728)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !500, file: !501, line: 977, baseType: !289, size: 64, offset: 9792)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !500, file: !501, line: 978, baseType: !7, size: 32, offset: 9856)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !500, file: !501, line: 980, baseType: !793, size: 64, offset: 9920)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !500, file: !501, line: 989, baseType: !912, size: 128, offset: 9984)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !913, line: 35, size: 128, elements: !914)
!913 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !912, file: !913, line: 36, baseType: !117, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !912, file: !913, line: 37, baseType: !377, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !912, file: !913, line: 38, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !913, line: 23, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !500, file: !501, line: 992, baseType: !104, size: 64, offset: 10112)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !500, file: !501, line: 993, baseType: !104, size: 64, offset: 10176)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !500, file: !501, line: 996, baseType: !202, offset: 10240)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !500, file: !501, line: 999, baseType: !402, offset: 10240)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !500, file: !501, line: 1001, baseType: !925, size: 64, offset: 10240)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !501, line: 636, size: 64, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !925, file: !501, line: 637, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !500, file: !501, line: 1005, baseType: !634, size: 128, offset: 10304)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !500, file: !501, line: 1007, baseType: !499, size: 64, offset: 10432)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !500, file: !501, line: 1009, baseType: !932, size: 64, offset: 10496)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !501, line: 1009, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !500, file: !501, line: 1043, baseType: !110, size: 64, offset: 10560)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !500, file: !501, line: 1046, baseType: !936, size: 64, offset: 10624)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !501, line: 41, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !500, file: !501, line: 1050, baseType: !939, size: 64, offset: 10688)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !501, line: 42, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !500, file: !501, line: 1054, baseType: !942, size: 64, offset: 10752)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !501, line: 55, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !500, file: !501, line: 1056, baseType: !945, size: 64, offset: 10816)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !501, line: 40, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !500, file: !501, line: 1058, baseType: !948, size: 64, offset: 10880)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !501, line: 47, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !500, file: !501, line: 1061, baseType: !951, size: 64, offset: 10944)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !501, line: 43, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !500, file: !501, line: 1064, baseType: !109, size: 64, offset: 11008)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !500, file: !501, line: 1065, baseType: !955, size: 64, offset: 11072)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !903, line: 14, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !903, line: 12, size: 384, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !903, line: 13, baseType: !960, size: 384)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !957, file: !903, line: 13, size: 384, elements: !961)
!961 = !{!962, !963, !964, !965}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !960, file: !903, line: 13, baseType: !117, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !960, file: !903, line: 13, baseType: !117, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !960, file: !903, line: 13, baseType: !117, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !960, file: !903, line: 13, baseType: !966, size: 256, offset: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !967, line: 32, size: 256, elements: !968)
!967 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!968 = !{!969, !975, !988, !994, !1003, !1023, !1028}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !966, file: !967, line: 37, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !967, line: 34, size: 64, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !970, file: !967, line: 35, baseType: !752, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !970, file: !967, line: 36, baseType: !974, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !276, line: 49, baseType: !7)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !966, file: !967, line: 45, baseType: !976, size: 192)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !967, line: 40, size: 192, elements: !977)
!977 = !{!978, !980, !981, !987}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !976, file: !967, line: 41, baseType: !979, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !276, line: 95, baseType: !117)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !976, file: !967, line: 42, baseType: !117, size: 32, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !976, file: !967, line: 43, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !967, line: 11, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !967, line: 8, size: 64, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !983, file: !967, line: 9, baseType: !117, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !983, file: !967, line: 10, baseType: !110, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !976, file: !967, line: 44, baseType: !117, size: 32, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !966, file: !967, line: 52, baseType: !989, size: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !967, line: 48, size: 128, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !989, file: !967, line: 49, baseType: !752, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !989, file: !967, line: 50, baseType: !974, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !989, file: !967, line: 51, baseType: !982, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !966, file: !967, line: 61, baseType: !995, size: 256)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !967, line: 55, size: 256, elements: !996)
!996 = !{!997, !998, !999, !1000, !1002}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !995, file: !967, line: 56, baseType: !752, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !995, file: !967, line: 57, baseType: !974, size: 32, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !995, file: !967, line: 58, baseType: !117, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !995, file: !967, line: 59, baseType: !1001, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !276, line: 94, baseType: !277)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !995, file: !967, line: 60, baseType: !1001, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !966, file: !967, line: 95, baseType: !1004, size: 256)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !967, line: 64, size: 256, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1004, file: !967, line: 65, baseType: !110, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !967, line: 77, baseType: !1008, size: 192, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !967, line: 77, size: 192, elements: !1009)
!1009 = !{!1010, !1011, !1018}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1008, file: !967, line: 82, baseType: !488, size: 16)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1008, file: !967, line: 88, baseType: !1012, size: 192)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !967, line: 84, size: 192, elements: !1013)
!1013 = !{!1014, !1016, !1017}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1012, file: !967, line: 85, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !613)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1012, file: !967, line: 86, baseType: !110, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1012, file: !967, line: 87, baseType: !110, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1008, file: !967, line: 93, baseType: !1019, size: 96)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !967, line: 90, size: 96, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1019, file: !967, line: 91, baseType: !1015, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1019, file: !967, line: 92, baseType: !114, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !966, file: !967, line: 101, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !967, line: 98, size: 128, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1024, file: !967, line: 99, baseType: !111, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1024, file: !967, line: 100, baseType: !117, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !966, file: !967, line: 108, baseType: !1029, size: 128)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !967, line: 104, size: 128, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1029, file: !967, line: 105, baseType: !110, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1029, file: !967, line: 106, baseType: !117, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1029, file: !967, line: 107, baseType: !7, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !500, file: !501, line: 1067, baseType: !1035, offset: 11136)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1036, line: 12, elements: !216)
!1036 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !500, file: !501, line: 1099, baseType: !1038, size: 64, offset: 11136)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !501, line: 56, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !500, file: !501, line: 1103, baseType: !189, size: 128, offset: 11200)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !500, file: !501, line: 1104, baseType: !1042, size: 64, offset: 11328)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !501, line: 46, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !500, file: !501, line: 1105, baseType: !454, size: 192, offset: 11392)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !500, file: !501, line: 1106, baseType: !7, size: 32, offset: 11584)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !500, file: !501, line: 1109, baseType: !1047, size: 128, offset: 11648)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 128, elements: !1050)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !501, line: 51, flags: DIFlagFwdDecl)
!1050 = !{!1051}
!1051 = !DISubrange(count: 2)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !500, file: !501, line: 1110, baseType: !454, size: 192, offset: 11776)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !500, file: !501, line: 1111, baseType: !189, size: 128, offset: 11968)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !500, file: !501, line: 1173, baseType: !1055, size: 64, offset: 12096)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1057, line: 62, size: 256, align: 256, elements: !1058)
!1057 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1058 = !{!1059, !1060, !1061, !1066}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1056, file: !1057, line: 75, baseType: !114, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1056, file: !1057, line: 90, baseType: !114, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1056, file: !1057, line: 124, baseType: !1062, size: 64, offset: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !1057, line: 109, size: 64, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1062, file: !1057, line: 110, baseType: !106, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1062, file: !1057, line: 112, baseType: !106, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1056, file: !1057, line: 144, baseType: !114, size: 32, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !500, file: !501, line: 1174, baseType: !113, size: 32, offset: 12160)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !500, file: !501, line: 1179, baseType: !109, size: 64, offset: 12224)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !500, file: !501, line: 1182, baseType: !1070, size: 128, offset: 12288)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !432, line: 76, size: 128, elements: !1071)
!1071 = !{!1072, !1077, !1078}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1070, file: !432, line: 85, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1074, line: 7, size: 64, elements: !1075)
!1074 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1073, file: !1074, line: 12, baseType: !660, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1070, file: !432, line: 88, baseType: !178, size: 8, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1070, file: !432, line: 95, baseType: !178, size: 8, offset: 72)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !501, line: 1184, baseType: !1080, size: 128, offset: 12416)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !501, line: 1184, size: 128, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1080, file: !501, line: 1185, baseType: !513, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1080, file: !501, line: 1186, baseType: !790, size: 128, align: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !500, file: !501, line: 1190, baseType: !1085, size: 64, offset: 12544)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !501, line: 53, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !500, file: !501, line: 1192, baseType: !1088, size: 128, offset: 12608)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !432, line: 64, size: 128, elements: !1089)
!1089 = !{!1090, !1183, !1184}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1088, file: !432, line: 65, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !332, line: 68, size: 512, align: 128, elements: !1093)
!1093 = !{!1094, !1095, !1175, !1182}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1092, file: !332, line: 69, baseType: !109, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !332, line: 77, baseType: !1096, size: 320, offset: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !332, line: 77, size: 320, elements: !1097)
!1097 = !{!1098, !1107, !1112, !1140, !1148, !1154, !1167, !1174}
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !332, line: 78, baseType: !1099, size: 320)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !332, line: 78, size: 320, elements: !1100)
!1100 = !{!1101, !1102, !1105, !1106}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1099, file: !332, line: 84, baseType: !189, size: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1099, file: !332, line: 86, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !332, line: 26, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1099, file: !332, line: 87, baseType: !109, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1099, file: !332, line: 94, baseType: !109, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !332, line: 96, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !332, line: 96, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1108, file: !332, line: 101, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !103, line: 143, baseType: !104)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !332, line: 103, baseType: !1113, size: 320)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !332, line: 103, size: 320, elements: !1114)
!1114 = !{!1115, !1125, !1128, !1129}
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !332, line: 104, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !332, line: 104, size: 128, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1116, file: !332, line: 105, baseType: !189, size: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !332, line: 106, baseType: !1120, size: 128)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !332, line: 106, size: 128, elements: !1121)
!1121 = !{!1122, !1123, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1120, file: !332, line: 107, baseType: !1091, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1120, file: !332, line: 109, baseType: !117, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1120, file: !332, line: 110, baseType: !117, size: 32, offset: 96)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1113, file: !332, line: 117, baseType: !1126, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !332, line: 117, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1113, file: !332, line: 119, baseType: !110, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !332, line: 120, baseType: !1130, size: 64, offset: 256)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !332, line: 120, size: 64, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1130, file: !332, line: 121, baseType: !110, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1130, file: !332, line: 122, baseType: !109, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !332, line: 123, baseType: !1135, size: 32)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !332, line: 123, size: 32, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1135, file: !332, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1135, file: !332, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1135, file: !332, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !332, line: 130, baseType: !1141, size: 192)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !332, line: 130, size: 192, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1147}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1141, file: !332, line: 131, baseType: !109, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1141, file: !332, line: 134, baseType: !646, size: 8, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1141, file: !332, line: 135, baseType: !646, size: 8, offset: 72)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1141, file: !332, line: 136, baseType: !377, size: 32, offset: 96)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1141, file: !332, line: 137, baseType: !7, size: 32, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !332, line: 139, baseType: !1149, size: 256)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !332, line: 139, size: 256, elements: !1150)
!1150 = !{!1151, !1152, !1153}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1149, file: !332, line: 140, baseType: !109, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1149, file: !332, line: 141, baseType: !377, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1149, file: !332, line: 143, baseType: !189, size: 128, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !332, line: 145, baseType: !1155, size: 256)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !332, line: 145, size: 256, elements: !1156)
!1156 = !{!1157, !1158, !1160, !1161, !1166}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1155, file: !332, line: 146, baseType: !109, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1155, file: !332, line: 147, baseType: !1159, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !321, line: 509, baseType: !1091)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1155, file: !332, line: 148, baseType: !109, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !332, line: 149, baseType: !1162, size: 64, offset: 192)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1155, file: !332, line: 149, size: 64, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1162, file: !332, line: 150, baseType: !348, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1162, file: !332, line: 151, baseType: !377, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1155, file: !332, line: 156, baseType: !202, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !332, line: 159, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !332, line: 159, size: 128, elements: !1169)
!1169 = !{!1170, !1173}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1168, file: !332, line: 161, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !332, line: 161, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1168, file: !332, line: 162, baseType: !110, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1096, file: !332, line: 176, baseType: !790, size: 128, align: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !332, line: 179, baseType: !1176, size: 32, offset: 384)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !332, line: 179, size: 32, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1176, file: !332, line: 184, baseType: !377, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1176, file: !332, line: 192, baseType: !7, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1176, file: !332, line: 194, baseType: !7, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1176, file: !332, line: 195, baseType: !117, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1092, file: !332, line: 199, baseType: !377, size: 32, offset: 416)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1088, file: !432, line: 67, baseType: !114, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1088, file: !432, line: 68, baseType: !114, size: 32, offset: 96)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !500, file: !501, line: 1206, baseType: !117, size: 32, offset: 12736)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !500, file: !501, line: 1207, baseType: !117, size: 32, offset: 12768)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !500, file: !501, line: 1209, baseType: !109, size: 64, offset: 12800)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !500, file: !501, line: 1219, baseType: !104, size: 64, offset: 12864)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !500, file: !501, line: 1220, baseType: !104, size: 64, offset: 12928)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !500, file: !501, line: 1317, baseType: !117, size: 32, offset: 12992)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !500, file: !501, line: 1319, baseType: !499, size: 64, offset: 13056)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !500, file: !501, line: 1322, baseType: !1193, size: 64, offset: 13120)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1195, line: 56, size: 512, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1203, !1204, !1206}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1194, file: !1195, line: 57, baseType: !1193, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1194, file: !1195, line: 58, baseType: !110, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1194, file: !1195, line: 59, baseType: !109, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !1195, line: 60, baseType: !109, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1194, file: !1195, line: 61, baseType: !1202, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1194, file: !1195, line: 62, baseType: !7, size: 32, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1194, file: !1195, line: 63, baseType: !1205, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !103, line: 153, baseType: !104)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1194, file: !1195, line: 64, baseType: !1207, size: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !500, file: !501, line: 1326, baseType: !513, size: 32, offset: 13184)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !500, file: !501, line: 1342, baseType: !110, size: 64, offset: 13248)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !500, file: !501, line: 1343, baseType: !106, size: 64, offset: 13312)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !500, file: !501, line: 1344, baseType: !104, size: 64, offset: 13376)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !500, file: !501, line: 1345, baseType: !106, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !500, file: !501, line: 1346, baseType: !106, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !500, file: !501, line: 1347, baseType: !106, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !500, file: !501, line: 1348, baseType: !790, size: 128, align: 64, offset: 13504)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !500, file: !501, line: 1358, baseType: !1218, size: 34816, offset: 13824)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1219, line: 485, size: 34816, elements: !1220)
!1219 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1250, !1251, !1252, !1253, !1254, !1255, !1258, !1259, !1260}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1218, file: !1219, line: 487, baseType: !1222, size: 192)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1223, size: 192, elements: !244)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1224, line: 16, size: 64, elements: !1225)
!1224 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1223, file: !1224, line: 17, baseType: !483, size: 16)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1223, file: !1224, line: 18, baseType: !483, size: 16, offset: 16)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1223, file: !1224, line: 19, baseType: !483, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1223, file: !1224, line: 19, baseType: !483, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1223, file: !1224, line: 19, baseType: !483, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1223, file: !1224, line: 19, baseType: !483, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1223, file: !1224, line: 19, baseType: !483, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1223, file: !1224, line: 20, baseType: !483, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1223, file: !1224, line: 20, baseType: !483, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1223, file: !1224, line: 20, baseType: !483, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1223, file: !1224, line: 20, baseType: !483, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1223, file: !1224, line: 20, baseType: !483, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1223, file: !1224, line: 20, baseType: !483, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1218, file: !1219, line: 491, baseType: !109, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1218, file: !1219, line: 495, baseType: !284, size: 16, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1218, file: !1219, line: 496, baseType: !284, size: 16, offset: 272)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1218, file: !1219, line: 497, baseType: !284, size: 16, offset: 288)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1218, file: !1219, line: 498, baseType: !284, size: 16, offset: 304)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1218, file: !1219, line: 502, baseType: !109, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1218, file: !1219, line: 503, baseType: !109, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1218, file: !1219, line: 514, baseType: !1247, size: 256, offset: 448)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1248, size: 256, elements: !436)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1219, line: 483, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1218, file: !1219, line: 516, baseType: !109, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1218, file: !1219, line: 518, baseType: !109, size: 64, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1218, file: !1219, line: 520, baseType: !109, size: 64, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1218, file: !1219, line: 521, baseType: !109, size: 64, offset: 896)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1218, file: !1219, line: 522, baseType: !109, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1218, file: !1219, line: 528, baseType: !1256, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1219, line: 10, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1218, file: !1219, line: 535, baseType: !109, size: 64, offset: 1088)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1218, file: !1219, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1218, file: !1219, line: 540, baseType: !1261, size: 33280, offset: 1536)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1262, line: 317, size: 33280, elements: !1263)
!1262 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1261, file: !1262, line: 330, baseType: !7, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1261, file: !1262, line: 337, baseType: !109, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1261, file: !1262, line: 348, baseType: !1267, size: 32768, offset: 512)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1262, line: 304, size: 32768, elements: !1268)
!1268 = !{!1269, !1284, !1323, !1373, !1390}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1267, file: !1262, line: 305, baseType: !1270, size: 896)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1262, line: 12, size: 896, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1283}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1270, file: !1262, line: 13, baseType: !113, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1270, file: !1262, line: 14, baseType: !113, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1270, file: !1262, line: 15, baseType: !113, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1270, file: !1262, line: 16, baseType: !113, size: 32, offset: 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1270, file: !1262, line: 17, baseType: !113, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1270, file: !1262, line: 18, baseType: !113, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1270, file: !1262, line: 19, baseType: !113, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1270, file: !1262, line: 22, baseType: !1280, size: 640, offset: 224)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 640, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 20)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1270, file: !1262, line: 25, baseType: !113, size: 32, offset: 864)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1267, file: !1262, line: 306, baseType: !1285, size: 4096, align: 128)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1262, line: 34, size: 4096, align: 128, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1306, !1307, !1308, !1312, !1314, !1318}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1285, file: !1262, line: 35, baseType: !483, size: 16)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1285, file: !1262, line: 36, baseType: !483, size: 16, offset: 16)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1285, file: !1262, line: 37, baseType: !483, size: 16, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1285, file: !1262, line: 38, baseType: !483, size: 16, offset: 48)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1262, line: 39, baseType: !1292, size: 128, offset: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1262, line: 39, size: 128, elements: !1293)
!1293 = !{!1294, !1299}
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1262, line: 40, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1292, file: !1262, line: 40, size: 128, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1295, file: !1262, line: 41, baseType: !104, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1295, file: !1262, line: 42, baseType: !104, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1262, line: 44, baseType: !1300, size: 128)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1292, file: !1262, line: 44, size: 128, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1300, file: !1262, line: 45, baseType: !113, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1300, file: !1262, line: 46, baseType: !113, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1300, file: !1262, line: 47, baseType: !113, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1300, file: !1262, line: 48, baseType: !113, size: 32, offset: 96)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1285, file: !1262, line: 51, baseType: !113, size: 32, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1285, file: !1262, line: 52, baseType: !113, size: 32, offset: 224)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1285, file: !1262, line: 55, baseType: !1309, size: 1024, offset: 256)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1024, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1285, file: !1262, line: 58, baseType: !1313, size: 2048, offset: 1280)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 2048, elements: !248)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1285, file: !1262, line: 60, baseType: !1315, size: 384, offset: 3328)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 384, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 12)
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1262, line: 62, baseType: !1319, size: 384, offset: 3712)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1262, line: 62, size: 384, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1319, file: !1262, line: 63, baseType: !1315, size: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1319, file: !1262, line: 64, baseType: !1315, size: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1267, file: !1262, line: 307, baseType: !1324, size: 1088)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1262, line: 79, size: 1088, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1372}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1324, file: !1262, line: 80, baseType: !113, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1324, file: !1262, line: 81, baseType: !113, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1324, file: !1262, line: 82, baseType: !113, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1324, file: !1262, line: 83, baseType: !113, size: 32, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1324, file: !1262, line: 84, baseType: !113, size: 32, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1324, file: !1262, line: 85, baseType: !113, size: 32, offset: 160)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1324, file: !1262, line: 86, baseType: !113, size: 32, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1324, file: !1262, line: 88, baseType: !1280, size: 640, offset: 224)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1324, file: !1262, line: 89, baseType: !644, size: 8, offset: 864)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1324, file: !1262, line: 90, baseType: !644, size: 8, offset: 872)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1324, file: !1262, line: 91, baseType: !644, size: 8, offset: 880)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1324, file: !1262, line: 92, baseType: !644, size: 8, offset: 888)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1324, file: !1262, line: 93, baseType: !644, size: 8, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1324, file: !1262, line: 94, baseType: !644, size: 8, offset: 904)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1324, file: !1262, line: 95, baseType: !1341, size: 64, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1343, line: 11, size: 128, elements: !1344)
!1343 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1342, file: !1343, line: 12, baseType: !111, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1342, file: !1343, line: 13, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1349, line: 56, size: 1344, elements: !1350)
!1349 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1348, file: !1349, line: 61, baseType: !109, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1348, file: !1349, line: 62, baseType: !109, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1348, file: !1349, line: 63, baseType: !109, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1348, file: !1349, line: 64, baseType: !109, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1348, file: !1349, line: 65, baseType: !109, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1348, file: !1349, line: 66, baseType: !109, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1348, file: !1349, line: 68, baseType: !109, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1348, file: !1349, line: 69, baseType: !109, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1348, file: !1349, line: 70, baseType: !109, size: 64, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1348, file: !1349, line: 71, baseType: !109, size: 64, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1348, file: !1349, line: 72, baseType: !109, size: 64, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1348, file: !1349, line: 73, baseType: !109, size: 64, offset: 704)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1348, file: !1349, line: 74, baseType: !109, size: 64, offset: 768)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1348, file: !1349, line: 75, baseType: !109, size: 64, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1348, file: !1349, line: 76, baseType: !109, size: 64, offset: 896)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1348, file: !1349, line: 81, baseType: !109, size: 64, offset: 960)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1348, file: !1349, line: 83, baseType: !109, size: 64, offset: 1024)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1348, file: !1349, line: 84, baseType: !109, size: 64, offset: 1088)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1348, file: !1349, line: 85, baseType: !109, size: 64, offset: 1152)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1348, file: !1349, line: 86, baseType: !109, size: 64, offset: 1216)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1348, file: !1349, line: 87, baseType: !109, size: 64, offset: 1280)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1324, file: !1262, line: 96, baseType: !113, size: 32, offset: 1024)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1267, file: !1262, line: 308, baseType: !1374, size: 4608, align: 512)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1262, line: 289, size: 4608, align: 512, elements: !1375)
!1375 = !{!1376, !1377, !1386}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1374, file: !1262, line: 290, baseType: !1285, size: 4096, align: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1374, file: !1262, line: 291, baseType: !1378, size: 512, offset: 4096)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1262, line: 268, size: 512, elements: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1378, file: !1262, line: 269, baseType: !104, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1378, file: !1262, line: 270, baseType: !104, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1378, file: !1262, line: 271, baseType: !1383, size: 384, offset: 128)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 384, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 6)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1374, file: !1262, line: 292, baseType: !1387, offset: 4608)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 0)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1267, file: !1262, line: 309, baseType: !1391, size: 32768)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 32768, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 4096)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !332, line: 378, baseType: !1395, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !492, file: !332, line: 384, baseType: !812, size: 192, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !352, file: !332, line: 500, baseType: !202, offset: 6656)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !352, file: !332, line: 501, baseType: !1399, size: 64, offset: 6656)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !332, line: 387, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !352, file: !332, line: 516, baseType: !1402, size: 64, offset: 6720)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1404, line: 18, flags: DIFlagFwdDecl)
!1404 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !352, file: !332, line: 519, baseType: !319, size: 64, offset: 6784)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !352, file: !332, line: 521, baseType: !1407, size: 64, offset: 6848)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !332, line: 521, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !352, file: !332, line: 545, baseType: !377, size: 32, offset: 6912)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !352, file: !332, line: 548, baseType: !178, size: 8, offset: 6944)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !352, file: !332, line: 550, baseType: !1412, offset: 6952)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1413, line: 142, elements: !216)
!1413 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !352, file: !332, line: 554, baseType: !1415, size: 256, offset: 6976)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1416, line: 102, size: 256, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1415, file: !1416, line: 103, baseType: !385, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1415, file: !1416, line: 104, baseType: !189, size: 128, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1415, file: !1416, line: 105, baseType: !1421, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1416, line: 21, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1425}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !352, file: !332, line: 557, baseType: !113, size: 32, offset: 7232)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !349, file: !332, line: 565, baseType: !1428, offset: 7296)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: -1)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !331, file: !332, line: 333, baseType: !1432, size: 64, offset: 576)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !321, line: 284, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !321, line: 284, size: 64, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1433, file: !321, line: 284, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !375, line: 19, baseType: !109)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !331, file: !332, line: 334, baseType: !109, size: 64, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !331, file: !332, line: 343, baseType: !1439, size: 256, offset: 704)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !332, line: 340, size: 256, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1439, file: !332, line: 341, baseType: !339, size: 192, align: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1439, file: !332, line: 342, baseType: !109, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !331, file: !332, line: 351, baseType: !189, size: 128, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !331, file: !332, line: 353, baseType: !1445, size: 64, offset: 1088)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !332, line: 353, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !331, file: !332, line: 356, baseType: !1448, size: 64, offset: 1152)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !332, line: 356, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !331, file: !332, line: 359, baseType: !109, size: 64, offset: 1216)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !331, file: !332, line: 361, baseType: !319, size: 64, offset: 1280)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !331, file: !332, line: 362, baseType: !110, size: 64, offset: 1344)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !331, file: !332, line: 365, baseType: !385, size: 64, offset: 1408)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !331, file: !332, line: 373, baseType: !1456, offset: 1472)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !332, line: 296, elements: !216)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !298, file: !268, line: 90, baseType: !293, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !298, file: !268, line: 91, baseType: !1459, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !258, file: !185, line: 143, baseType: !1461, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1464, !195}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1467)
!1467 = !{!1468, !1469, !1473, !1477, !1483, !1487}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1466, file: !18, line: 40, baseType: !17, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1466, file: !18, line: 41, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!178}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1466, file: !18, line: 42, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!110}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1466, file: !18, line: 43, baseType: !1478, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1207, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1466, file: !18, line: 44, baseType: !1484, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1207}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1466, file: !18, line: 45, baseType: !1488, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !110}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !258, file: !185, line: 144, baseType: !1492, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!1207, !195}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !258, file: !185, line: 145, baseType: !1496, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !195, !1499, !1505}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1404, line: 23, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1404, line: 21, size: 32, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1501, file: !1404, line: 22, baseType: !1504, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 32, baseType: !974)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1404, line: 28, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1404, line: 26, size: 32, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1507, file: !1404, line: 27, baseType: !1510, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 33, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !276, line: 50, baseType: !7)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !184, file: !185, line: 70, baseType: !1513, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1515, line: 123, size: 1024, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1658, !1659, !1660, !1661, !1662}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1514, file: !1515, line: 124, baseType: !377, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1514, file: !1515, line: 125, baseType: !377, size: 32, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1514, file: !1515, line: 135, baseType: !1513, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1514, file: !1515, line: 136, baseType: !175, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1514, file: !1515, line: 138, baseType: !339, size: 192, align: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1514, file: !1515, line: 140, baseType: !1207, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1514, file: !1515, line: 141, baseType: !7, size: 32, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1515, line: 142, baseType: !1525, size: 256, offset: 512)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1515, line: 142, size: 256, elements: !1526)
!1526 = !{!1527, !1581, !1585}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1525, file: !1515, line: 143, baseType: !1528, size: 192)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1515, line: 91, size: 192, elements: !1529)
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1528, file: !1515, line: 92, baseType: !109, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1528, file: !1515, line: 94, baseType: !356, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1528, file: !1515, line: 100, baseType: !1533, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1515, line: 180, size: 704, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1551, !1552, !1553, !1579, !1580}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1534, file: !1515, line: 182, baseType: !1513, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1534, file: !1515, line: 183, baseType: !7, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1534, file: !1515, line: 186, baseType: !1539, size: 192, offset: 128)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1540, line: 19, size: 192, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1541 = !{!1542, !1549, !1550}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1539, file: !1540, line: 20, baseType: !1543, size: 128)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1544, line: 292, size: 128, elements: !1545)
!1544 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1543, file: !1544, line: 293, baseType: !202)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1543, file: !1544, line: 295, baseType: !102, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1543, file: !1544, line: 296, baseType: !110, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1539, file: !1540, line: 21, baseType: !7, size: 32, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1539, file: !1540, line: 22, baseType: !7, size: 32, offset: 160)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1534, file: !1515, line: 187, baseType: !113, size: 32, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1534, file: !1515, line: 188, baseType: !113, size: 32, offset: 352)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1534, file: !1515, line: 189, baseType: !1554, size: 64, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1515, line: 168, size: 320, elements: !1556)
!1556 = !{!1557, !1563, !1567, !1571, !1575}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1555, file: !1515, line: 169, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!117, !1561, !1533}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !321, line: 539, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1555, file: !1515, line: 171, baseType: !1564, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!117, !1513, !175, !283}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1555, file: !1515, line: 173, baseType: !1568, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!117, !1513}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1555, file: !1515, line: 174, baseType: !1572, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!117, !1513, !1513, !175}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1555, file: !1515, line: 176, baseType: !1576, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!117, !1561, !1513, !1533}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1534, file: !1515, line: 192, baseType: !189, size: 128, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1534, file: !1515, line: 194, baseType: !783, size: 128, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1525, file: !1515, line: 144, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1515, line: 103, size: 64, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1582, file: !1515, line: 104, baseType: !1513, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1525, file: !1515, line: 145, baseType: !1586, size: 256)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1515, line: 107, size: 256, elements: !1587)
!1587 = !{!1588, !1653, !1656, !1657}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1586, file: !1515, line: 108, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1515, line: 217, size: 768, elements: !1592)
!1592 = !{!1593, !1613, !1617, !1621, !1626, !1630, !1634, !1638, !1639, !1640, !1641, !1649}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1591, file: !1515, line: 222, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!117, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1515, line: 197, size: 1088, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1598, file: !1515, line: 199, baseType: !1513, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1598, file: !1515, line: 200, baseType: !319, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1598, file: !1515, line: 201, baseType: !1561, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1598, file: !1515, line: 202, baseType: !110, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1598, file: !1515, line: 205, baseType: !454, size: 192, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1598, file: !1515, line: 206, baseType: !454, size: 192, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1598, file: !1515, line: 207, baseType: !117, size: 32, offset: 640)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1598, file: !1515, line: 208, baseType: !189, size: 128, offset: 704)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1598, file: !1515, line: 209, baseType: !243, size: 64, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1598, file: !1515, line: 211, baseType: !289, size: 64, offset: 896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1598, file: !1515, line: 212, baseType: !178, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1598, file: !1515, line: 213, baseType: !178, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1598, file: !1515, line: 214, baseType: !1448, size: 64, offset: 1024)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1591, file: !1515, line: 223, baseType: !1614, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !1597}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1591, file: !1515, line: 236, baseType: !1618, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!117, !1561, !110}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1591, file: !1515, line: 238, baseType: !1622, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!110, !1561, !1625}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1591, file: !1515, line: 239, baseType: !1627, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!110, !1561, !110, !1625}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1591, file: !1515, line: 240, baseType: !1631, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !1561, !110}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1591, file: !1515, line: 242, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!274, !1597, !243, !289, !322}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1591, file: !1515, line: 252, baseType: !289, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1591, file: !1515, line: 259, baseType: !178, size: 8, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1591, file: !1515, line: 260, baseType: !1635, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1591, file: !1515, line: 263, baseType: !1642, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!1645, !1597, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1646, line: 52, baseType: !7)
!1646 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1515, line: 27, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1591, file: !1515, line: 266, baseType: !1650, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!117, !1597, !330}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1586, file: !1515, line: 109, baseType: !1654, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1515, line: 31, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1586, file: !1515, line: 110, baseType: !322, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1586, file: !1515, line: 111, baseType: !1513, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1514, file: !1515, line: 148, baseType: !110, size: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1514, file: !1515, line: 154, baseType: !104, size: 64, offset: 832)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !1515, line: 156, baseType: !284, size: 16, offset: 896)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1514, file: !1515, line: 157, baseType: !283, size: 16, offset: 912)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1514, file: !1515, line: 158, baseType: !1663, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1515, line: 32, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !184, file: !185, line: 71, baseType: !1666, size: 32, offset: 448)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1667, line: 19, size: 32, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1666, file: !1667, line: 20, baseType: !513, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !184, file: !185, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !184, file: !185, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !184, file: !185, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !184, file: !185, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !184, file: !185, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !181, file: !30, line: 463, baseType: !1676, size: 64, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !181, file: !30, line: 465, baseType: !1678, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !181, file: !30, line: 467, baseType: !175, size: 64, offset: 640)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !181, file: !30, line: 468, baseType: !1682, size: 64, offset: 704)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1692, !1697, !1701}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1684, file: !30, line: 88, baseType: !175, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1684, file: !30, line: 89, baseType: !295, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1684, file: !30, line: 90, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!117, !1676, !238}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1684, file: !30, line: 91, baseType: !1693, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!243, !1676, !1696, !1499, !1505}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1684, file: !30, line: 93, baseType: !1698, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !1676}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1684, file: !30, line: 95, baseType: !1702, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1705)
!1705 = !{!1706, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1704, file: !37, line: 279, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!117, !1676}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1704, file: !37, line: 280, baseType: !1698, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1704, file: !37, line: 281, baseType: !1707, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1704, file: !37, line: 282, baseType: !1707, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1704, file: !37, line: 283, baseType: !1707, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1704, file: !37, line: 284, baseType: !1707, size: 64, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1704, file: !37, line: 285, baseType: !1707, size: 64, offset: 384)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1704, file: !37, line: 286, baseType: !1707, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1704, file: !37, line: 287, baseType: !1707, size: 64, offset: 512)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1704, file: !37, line: 288, baseType: !1707, size: 64, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1704, file: !37, line: 289, baseType: !1707, size: 64, offset: 640)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1704, file: !37, line: 290, baseType: !1707, size: 64, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1704, file: !37, line: 291, baseType: !1707, size: 64, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1704, file: !37, line: 292, baseType: !1707, size: 64, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1704, file: !37, line: 293, baseType: !1707, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1704, file: !37, line: 294, baseType: !1707, size: 64, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1704, file: !37, line: 295, baseType: !1707, size: 64, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1704, file: !37, line: 296, baseType: !1707, size: 64, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1704, file: !37, line: 297, baseType: !1707, size: 64, offset: 1152)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1704, file: !37, line: 298, baseType: !1707, size: 64, offset: 1216)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1704, file: !37, line: 299, baseType: !1707, size: 64, offset: 1280)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1704, file: !37, line: 300, baseType: !1707, size: 64, offset: 1344)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1704, file: !37, line: 301, baseType: !1707, size: 64, offset: 1408)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !181, file: !30, line: 470, baseType: !1733, size: 64, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1735, line: 82, size: 1408, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1819, !1822, !1825}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1734, file: !1735, line: 83, baseType: !175, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1734, file: !1735, line: 84, baseType: !175, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1734, file: !1735, line: 85, baseType: !1676, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1734, file: !1735, line: 86, baseType: !295, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1734, file: !1735, line: 87, baseType: !295, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1734, file: !1735, line: 88, baseType: !295, size: 64, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1734, file: !1735, line: 90, baseType: !1744, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!117, !1676, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1770, !1783, !1784, !1785, !1786, !1787, !1795, !1796, !1797, !1798, !1799, !1800}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1748, file: !24, line: 96, baseType: !175, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1748, file: !24, line: 97, baseType: !1733, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1748, file: !24, line: 99, baseType: !99, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1748, file: !24, line: 100, baseType: !175, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1748, file: !24, line: 102, baseType: !178, size: 8, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1748, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1748, file: !24, line: 105, baseType: !1757, size: 64, offset: 320)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1760, line: 262, size: 1600, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1764, !1765, !1769}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1759, file: !1760, line: 263, baseType: !1763, size: 256)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !1310)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1759, file: !1760, line: 264, baseType: !1763, size: 256, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1759, file: !1760, line: 265, baseType: !1766, size: 1024, offset: 512)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 1024, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1759, file: !1760, line: 266, baseType: !1207, size: 64, offset: 1536)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1748, file: !24, line: 106, baseType: !1771, size: 64, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1760, line: 210, size: 256, elements: !1774)
!1774 = !{!1775, !1779, !1781, !1782}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1773, file: !1760, line: 211, baseType: !1776, size: 72)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 72, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 9)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1773, file: !1760, line: 212, baseType: !1780, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1760, line: 14, baseType: !109)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1773, file: !1760, line: 213, baseType: !114, size: 32, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1773, file: !1760, line: 214, baseType: !114, size: 32, offset: 224)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1748, file: !24, line: 108, baseType: !1707, size: 64, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1748, file: !24, line: 109, baseType: !1698, size: 64, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1748, file: !24, line: 110, baseType: !1707, size: 64, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1748, file: !24, line: 111, baseType: !1698, size: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1748, file: !24, line: 112, baseType: !1788, size: 64, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!117, !1676, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1792)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1793)
!1793 = !{!1794}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1792, file: !37, line: 51, baseType: !117, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1748, file: !24, line: 113, baseType: !1707, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1748, file: !24, line: 114, baseType: !295, size: 64, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1748, file: !24, line: 115, baseType: !295, size: 64, offset: 896)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1748, file: !24, line: 117, baseType: !1702, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1748, file: !24, line: 118, baseType: !1698, size: 64, offset: 1024)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1748, file: !24, line: 120, baseType: !1801, size: 64, offset: 1088)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1734, file: !1735, line: 91, baseType: !1689, size: 64, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1734, file: !1735, line: 92, baseType: !1707, size: 64, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1734, file: !1735, line: 93, baseType: !1698, size: 64, offset: 576)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1734, file: !1735, line: 94, baseType: !1707, size: 64, offset: 640)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1734, file: !1735, line: 95, baseType: !1698, size: 64, offset: 704)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1734, file: !1735, line: 97, baseType: !1707, size: 64, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1734, file: !1735, line: 98, baseType: !1707, size: 64, offset: 832)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1734, file: !1735, line: 100, baseType: !1788, size: 64, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1734, file: !1735, line: 101, baseType: !1707, size: 64, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1734, file: !1735, line: 103, baseType: !1707, size: 64, offset: 1024)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1734, file: !1735, line: 105, baseType: !1707, size: 64, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1734, file: !1735, line: 107, baseType: !1702, size: 64, offset: 1152)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1734, file: !1735, line: 109, baseType: !1816, size: 64, offset: 1216)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1735, line: 109, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1734, file: !1735, line: 111, baseType: !1820, size: 64, offset: 1280)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1735, line: 111, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1734, file: !1735, line: 112, baseType: !1823, offset: 1344)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1824, line: 187, elements: !216)
!1824 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1734, file: !1735, line: 114, baseType: !178, size: 8, offset: 1344)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !181, file: !30, line: 471, baseType: !1747, size: 64, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !181, file: !30, line: 473, baseType: !110, size: 64, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !181, file: !30, line: 475, baseType: !110, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !181, file: !30, line: 480, baseType: !454, size: 192, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !181, file: !30, line: 484, baseType: !1831, size: 576, offset: 1216)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1831, file: !30, line: 362, baseType: !189, size: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1831, file: !30, line: 363, baseType: !189, size: 128, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1831, file: !30, line: 364, baseType: !189, size: 128, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1831, file: !30, line: 365, baseType: !189, size: 128, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1831, file: !30, line: 366, baseType: !178, size: 8, offset: 512)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1831, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !181, file: !30, line: 485, baseType: !1840, size: 2304, offset: 1792)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1937, !1941}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1840, file: !37, line: 566, baseType: !1791, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1840, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1840, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1840, file: !37, line: 569, baseType: !178, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1840, file: !37, line: 570, baseType: !178, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1840, file: !37, line: 571, baseType: !178, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1840, file: !37, line: 572, baseType: !178, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1840, file: !37, line: 573, baseType: !178, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1840, file: !37, line: 574, baseType: !178, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1840, file: !37, line: 575, baseType: !178, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1840, file: !37, line: 576, baseType: !178, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1840, file: !37, line: 577, baseType: !113, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1840, file: !37, line: 578, baseType: !202, offset: 96)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1840, file: !37, line: 580, baseType: !189, size: 128, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1840, file: !37, line: 581, baseType: !812, size: 192, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1840, file: !37, line: 582, baseType: !1858, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1860, line: 43, size: 1472, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1869, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1859, file: !1860, line: 44, baseType: !175, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1859, file: !1860, line: 45, baseType: !117, size: 32, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1859, file: !1860, line: 46, baseType: !189, size: 128, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1859, file: !1860, line: 47, baseType: !202, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1859, file: !1860, line: 48, baseType: !1867, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1859, file: !1860, line: 49, baseType: !1870, size: 320, offset: 320)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1871, line: 11, size: 320, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !{!1873, !1874, !1875, !1880}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1870, file: !1871, line: 16, baseType: !776, size: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1870, file: !1871, line: 17, baseType: !109, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1870, file: !1871, line: 18, baseType: !1876, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !1871, line: 19, baseType: !113, size: 32, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1859, file: !1860, line: 50, baseType: !109, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1859, file: !1860, line: 51, baseType: !583, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1859, file: !1860, line: 52, baseType: !583, size: 64, offset: 768)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1859, file: !1860, line: 53, baseType: !583, size: 64, offset: 832)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1859, file: !1860, line: 54, baseType: !583, size: 64, offset: 896)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1859, file: !1860, line: 55, baseType: !583, size: 64, offset: 960)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1859, file: !1860, line: 56, baseType: !109, size: 64, offset: 1024)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1859, file: !1860, line: 57, baseType: !109, size: 64, offset: 1088)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1859, file: !1860, line: 58, baseType: !109, size: 64, offset: 1152)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1859, file: !1860, line: 59, baseType: !109, size: 64, offset: 1216)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1859, file: !1860, line: 60, baseType: !109, size: 64, offset: 1280)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1859, file: !1860, line: 61, baseType: !1676, size: 64, offset: 1344)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1859, file: !1860, line: 62, baseType: !178, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1859, file: !1860, line: 63, baseType: !178, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1840, file: !37, line: 583, baseType: !178, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1840, file: !37, line: 584, baseType: !178, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1840, file: !37, line: 585, baseType: !178, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1840, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1840, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1840, file: !37, line: 592, baseType: !575, size: 512, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1840, file: !37, line: 593, baseType: !104, size: 64, offset: 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1840, file: !37, line: 594, baseType: !1415, size: 256, offset: 1152)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1840, file: !37, line: 595, baseType: !783, size: 128, offset: 1408)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1840, file: !37, line: 596, baseType: !1867, size: 64, offset: 1536)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1840, file: !37, line: 597, baseType: !377, size: 32, offset: 1600)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1840, file: !37, line: 598, baseType: !377, size: 32, offset: 1632)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1840, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1840, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1840, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1840, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1840, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1840, file: !37, line: 604, baseType: !178, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1840, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1840, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1840, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1840, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1840, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1840, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1840, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1840, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1840, file: !37, line: 613, baseType: !117, size: 32, offset: 1792)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1840, file: !37, line: 614, baseType: !117, size: 32, offset: 1824)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1840, file: !37, line: 615, baseType: !104, size: 64, offset: 1856)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1840, file: !37, line: 616, baseType: !104, size: 64, offset: 1920)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1840, file: !37, line: 617, baseType: !104, size: 64, offset: 1984)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1840, file: !37, line: 618, baseType: !104, size: 64, offset: 2048)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1840, file: !37, line: 620, baseType: !1928, size: 64, offset: 2112)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1929, file: !37, line: 537, baseType: !202)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1929, file: !37, line: 538, baseType: !7, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1929, file: !37, line: 540, baseType: !189, size: 128, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1929, file: !37, line: 543, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1840, file: !37, line: 621, baseType: !1938, size: 64, offset: 2176)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1676, !736}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1840, file: !37, line: 622, baseType: !1942, size: 64, offset: 2240)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !181, file: !30, line: 486, baseType: !1945, size: 64, offset: 4096)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1954, !1955, !1956}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1946, file: !37, line: 643, baseType: !1704, size: 1472)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1946, file: !37, line: 644, baseType: !1707, size: 64, offset: 1472)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1946, file: !37, line: 645, baseType: !1951, size: 64, offset: 1536)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1676, !178}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1946, file: !37, line: 646, baseType: !1707, size: 64, offset: 1600)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1946, file: !37, line: 647, baseType: !1698, size: 64, offset: 1664)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1946, file: !37, line: 648, baseType: !1698, size: 64, offset: 1728)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !181, file: !30, line: 493, baseType: !1958, size: 64, offset: 4160)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !181, file: !30, line: 499, baseType: !189, size: 128, offset: 4224)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !181, file: !30, line: 502, baseType: !1962, size: 64, offset: 4352)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !181, file: !30, line: 504, baseType: !1966, size: 64, offset: 4416)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !181, file: !30, line: 505, baseType: !104, size: 64, offset: 4480)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !181, file: !30, line: 510, baseType: !104, size: 64, offset: 4544)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !181, file: !30, line: 511, baseType: !1970, size: 64, offset: 4608)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !181, file: !30, line: 513, baseType: !1974, size: 64, offset: 4672)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1975, file: !30, line: 293, baseType: !7, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1975, file: !30, line: 294, baseType: !109, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !181, file: !30, line: 515, baseType: !189, size: 128, offset: 4736)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !181, file: !30, line: 526, baseType: !1981, offset: 4864)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1982, line: 5, elements: !216)
!1982 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !181, file: !30, line: 528, baseType: !1984, size: 64, offset: 4864)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1986, line: 51, size: 1344, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988, !1989, !1991, !1992, !2082, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1985, file: !1986, line: 52, baseType: !175, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1985, file: !1986, line: 53, baseType: !1990, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1986, line: 28, baseType: !113)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1985, file: !1986, line: 54, baseType: !175, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1985, file: !1986, line: 55, baseType: !1993, size: 192, offset: 192)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1994, line: 17, size: 192, elements: !1995)
!1994 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !{!1996, !1998, !2081}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1993, file: !1994, line: 18, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1993, file: !1994, line: 19, baseType: !1999, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1994, line: 110, size: 1152, elements: !2002)
!2002 = !{!2003, !2007, !2011, !2017, !2023, !2027, !2031, !2036, !2040, !2041, !2045, !2049, !2053, !2064, !2065, !2066, !2067, !2077}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2001, file: !1994, line: 111, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!1997, !1997}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2001, file: !1994, line: 112, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !1997}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2001, file: !1994, line: 113, baseType: !2012, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!178, !2015}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2001, file: !1994, line: 114, baseType: !2018, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!1207, !2015, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2001, file: !1994, line: 116, baseType: !2024, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!178, !2015, !175}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2001, file: !1994, line: 118, baseType: !2028, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!117, !2015, !175, !7, !110, !289}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2001, file: !1994, line: 123, baseType: !2032, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!117, !2015, !175, !2035, !289}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2001, file: !1994, line: 126, baseType: !2037, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!175, !2015}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2001, file: !1994, line: 127, baseType: !2037, size: 64, offset: 512)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2001, file: !1994, line: 128, baseType: !2042, size: 64, offset: 576)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!1997, !2015}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2001, file: !1994, line: 130, baseType: !2046, size: 64, offset: 640)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!1997, !2015, !1997}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2001, file: !1994, line: 133, baseType: !2050, size: 64, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!1997, !2015, !175}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2001, file: !1994, line: 135, baseType: !2054, size: 64, offset: 768)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!117, !2015, !175, !175, !7, !7, !2057}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1994, line: 43, size: 640, elements: !2059)
!2059 = !{!2060, !2061, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2058, file: !1994, line: 44, baseType: !1997, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2058, file: !1994, line: 45, baseType: !7, size: 32, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2058, file: !1994, line: 46, baseType: !2063, size: 512, offset: 128)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 512, elements: !613)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2001, file: !1994, line: 140, baseType: !2046, size: 64, offset: 832)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2001, file: !1994, line: 143, baseType: !2042, size: 64, offset: 896)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2001, file: !1994, line: 145, baseType: !2004, size: 64, offset: 960)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2001, file: !1994, line: 146, baseType: !2068, size: 64, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!117, !2015, !2071}
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1994, line: 29, size: 128, elements: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2072, file: !1994, line: 30, baseType: !7, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2072, file: !1994, line: 31, baseType: !7, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2072, file: !1994, line: 32, baseType: !2015, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2001, file: !1994, line: 148, baseType: !2078, size: 64, offset: 1088)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!117, !2015, !1676}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1993, file: !1994, line: 20, baseType: !1676, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1985, file: !1986, line: 57, baseType: !2083, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1986, line: 31, size: 704, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2090}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2084, file: !1986, line: 32, baseType: !243, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2084, file: !1986, line: 33, baseType: !117, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2084, file: !1986, line: 34, baseType: !110, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2084, file: !1986, line: 35, baseType: !2083, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2084, file: !1986, line: 43, baseType: !310, size: 448, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1985, file: !1986, line: 58, baseType: !2083, size: 64, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1985, file: !1986, line: 59, baseType: !1984, size: 64, offset: 512)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1985, file: !1986, line: 60, baseType: !1984, size: 64, offset: 576)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1985, file: !1986, line: 61, baseType: !1984, size: 64, offset: 640)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1985, file: !1986, line: 63, baseType: !184, size: 512, offset: 704)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1985, file: !1986, line: 65, baseType: !109, size: 64, offset: 1216)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1985, file: !1986, line: 66, baseType: !110, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !181, file: !30, line: 529, baseType: !1997, size: 64, offset: 4928)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !181, file: !30, line: 534, baseType: !2100, size: 32, offset: 4992)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 16, baseType: !2101)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 13, baseType: !113)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !181, file: !30, line: 535, baseType: !113, size: 32, offset: 5024)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !181, file: !30, line: 537, baseType: !202, offset: 5056)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !181, file: !30, line: 538, baseType: !189, size: 128, offset: 5056)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !181, file: !30, line: 540, baseType: !2106, size: 64, offset: 5184)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2108, line: 54, size: 960, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2120, !2124, !2125, !2126, !2127, !2131, !2135, !2136}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2107, file: !2108, line: 55, baseType: !175, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2107, file: !2108, line: 56, baseType: !99, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2107, file: !2108, line: 58, baseType: !295, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2107, file: !2108, line: 59, baseType: !295, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2107, file: !2108, line: 60, baseType: !195, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2107, file: !2108, line: 62, baseType: !1689, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2107, file: !2108, line: 63, baseType: !2117, size: 64, offset: 384)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!243, !1676, !1696}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2107, file: !2108, line: 65, baseType: !2121, size: 64, offset: 448)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2106}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2107, file: !2108, line: 66, baseType: !1698, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2107, file: !2108, line: 68, baseType: !1707, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2107, file: !2108, line: 70, baseType: !1464, size: 64, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2107, file: !2108, line: 71, baseType: !2128, size: 64, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!1207, !1676}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2107, file: !2108, line: 73, baseType: !2132, size: 64, offset: 768)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !1676, !1499, !1505}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2107, file: !2108, line: 75, baseType: !1702, size: 64, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2107, file: !2108, line: 77, baseType: !1820, size: 64, offset: 896)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !181, file: !30, line: 541, baseType: !295, size: 64, offset: 5248)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !181, file: !30, line: 543, baseType: !1698, size: 64, offset: 5312)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !181, file: !30, line: 544, baseType: !2140, size: 64, offset: 5376)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !181, file: !30, line: 545, baseType: !2143, size: 64, offset: 5440)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !181, file: !30, line: 547, baseType: !178, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !181, file: !30, line: 548, baseType: !178, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !181, file: !30, line: 549, baseType: !178, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !181, file: !30, line: 550, baseType: !178, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !172, file: !165, line: 27, baseType: !104, size: 64, offset: 5696)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !172, file: !165, line: 28, baseType: !1975, size: 128, offset: 5760)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !172, file: !165, line: 29, baseType: !113, size: 32, offset: 5888)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !172, file: !165, line: 30, baseType: !2153, size: 64, offset: 5952)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2155, line: 20, size: 512, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !{!2157, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2154, file: !2155, line: 21, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !103, line: 158, baseType: !1205)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2154, file: !2155, line: 22, baseType: !2158, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2154, file: !2155, line: 23, baseType: !175, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !2155, line: 24, baseType: !109, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2154, file: !2155, line: 25, baseType: !109, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2154, file: !2155, line: 26, baseType: !2153, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2154, file: !2155, line: 26, baseType: !2153, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2154, file: !2155, line: 26, baseType: !2153, size: 64, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !172, file: !165, line: 32, baseType: !2167, size: 64, offset: 6016)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1760, line: 586, size: 256, elements: !2170)
!2170 = !{!2171, !2173}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2169, file: !1760, line: 587, baseType: !2172, size: 160)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 160, elements: !1281)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2169, file: !1760, line: 588, baseType: !1780, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !172, file: !165, line: 33, baseType: !243, size: 64, offset: 6080)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !172, file: !165, line: 36, baseType: !2176, size: 64, offset: 6144)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !165, line: 18, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !172, file: !165, line: 39, baseType: !2179, offset: 6208)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1982, line: 8, elements: !216)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !164, file: !165, line: 202, baseType: !168, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !164, file: !165, line: 203, baseType: !2182, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !171}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !164, file: !165, line: 204, baseType: !2186, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!117, !171, !1791}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !164, file: !165, line: 205, baseType: !168, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !164, file: !165, line: 206, baseType: !1748, size: 1152, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !164, file: !165, line: 207, baseType: !2167, size: 64, offset: 1472)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !164, file: !165, line: 208, baseType: !178, size: 8, offset: 1536)
!2193 = !DIGlobalVariableExpression(var: !2194, expr: !DIExpression())
!2194 = distinct !DIGlobalVariable(name: "__key", scope: !2195, file: !3, line: 1019, type: !1823, isLocal: true, isDefinition: true)
!2195 = distinct !DISubprogram(name: "mtk_thermal_probe", scope: !3, file: !3, line: 986, type: !169, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2196 = !DIGlobalVariableExpression(var: !2197, expr: !DIExpression())
!2197 = distinct !DIGlobalVariable(name: "mtk_thermal_ops", scope: !2, file: !3, line: 701, type: !2198, isLocal: true, isDefinition: true)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2199)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_of_device_ops", file: !66, line: 308, size: 320, elements: !2200)
!2200 = !{!2201, !2205, !2210, !2214, !2218}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2199, file: !66, line: 309, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!117, !110, !823}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2199, file: !66, line: 310, baseType: !2206, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!117, !110, !117, !2209}
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2199, file: !66, line: 311, baseType: !2211, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!117, !110, !117, !117}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2199, file: !66, line: 312, baseType: !2215, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!117, !110, !117}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2199, file: !66, line: 313, baseType: !2211, size: 64, offset: 256)
!2219 = !DIGlobalVariableExpression(var: !2220, expr: !DIExpression())
!2220 = distinct !DIGlobalVariable(name: "mtk_thermal_of_match", scope: !2, file: !3, line: 939, type: !2221, isLocal: true, isDefinition: true)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 9600, elements: !1384)
!2222 = !DIGlobalVariableExpression(var: !2223, expr: !DIExpression())
!2223 = distinct !DIGlobalVariable(name: "mt8173_thermal_data", scope: !2, file: !3, line: 400, type: !2224, isLocal: true, isDefinition: true)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtk_thermal_data", file: !3, line: 258, size: 1664, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2246}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "num_banks", scope: !2225, file: !3, line: 259, baseType: !736, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "num_sensors", scope: !2225, file: !3, line: 260, baseType: !736, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "auxadc_channel", scope: !2225, file: !3, line: 261, baseType: !736, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "vts_index", scope: !2225, file: !3, line: 262, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sensor_mux_values", scope: !2225, file: !3, line: 263, baseType: !2231, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !2225, file: !3, line: 264, baseType: !2231, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "adcpnp", scope: !2225, file: !3, line: 265, baseType: !2231, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cali_val", scope: !2225, file: !3, line: 266, baseType: !2232, size: 32, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "num_controller", scope: !2225, file: !3, line: 267, baseType: !2232, size: 32, offset: 416)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "controller_offset", scope: !2225, file: !3, line: 268, baseType: !2231, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "need_switch_bank", scope: !2225, file: !3, line: 269, baseType: !178, size: 8, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bank_data", scope: !2225, file: !3, line: 270, baseType: !2241, size: 1024, offset: 576)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2242, size: 1024, elements: !613)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bank_cfg", file: !3, line: 248, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "num_sensors", scope: !2242, file: !3, line: 249, baseType: !7, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sensors", scope: !2242, file: !3, line: 250, baseType: !2231, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2225, file: !3, line: 271, baseType: !50, size: 32, offset: 1600)
!2247 = !DIGlobalVariableExpression(var: !2248, expr: !DIExpression())
!2248 = distinct !DIGlobalVariable(name: "mt8173_vts_index", scope: !2, file: !3, line: 335, type: !2249, isLocal: true, isDefinition: true)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2232, size: 160, elements: !2250)
!2250 = !{!2251}
!2251 = !DISubrange(count: 5)
!2252 = !DIGlobalVariableExpression(var: !2253, expr: !DIExpression())
!2253 = distinct !DIGlobalVariable(name: "mt8173_mux_values", scope: !2, file: !3, line: 332, type: !2249, isLocal: true, isDefinition: true)
!2254 = !DIGlobalVariableExpression(var: !2255, expr: !DIExpression())
!2255 = distinct !DIGlobalVariable(name: "mt8173_msr", scope: !2, file: !3, line: 324, type: !2256, isLocal: true, isDefinition: true)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2232, size: 128, elements: !436)
!2257 = !DIGlobalVariableExpression(var: !2258, expr: !DIExpression())
!2258 = distinct !DIGlobalVariable(name: "mt8173_adcpnp", scope: !2, file: !3, line: 328, type: !2256, isLocal: true, isDefinition: true)
!2259 = !DIGlobalVariableExpression(var: !2260, expr: !DIExpression())
!2260 = distinct !DIGlobalVariable(name: "mt8173_tc_offset", scope: !2, file: !3, line: 333, type: !2261, isLocal: true, isDefinition: true)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2232, size: 32, elements: !664)
!2262 = !DIGlobalVariableExpression(var: !2263, expr: !DIExpression())
!2263 = distinct !DIGlobalVariable(name: "mt8173_bank_data", scope: !2, file: !3, line: 317, type: !2264, isLocal: true, isDefinition: true)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2232, size: 384, elements: !2265)
!2265 = !{!437, !245}
!2266 = !DIGlobalVariableExpression(var: !2267, expr: !DIExpression())
!2267 = distinct !DIGlobalVariable(name: "mt2701_thermal_data", scope: !2, file: !3, line: 440, type: !2224, isLocal: true, isDefinition: true)
!2268 = !DIGlobalVariableExpression(var: !2269, expr: !DIExpression())
!2269 = distinct !DIGlobalVariable(name: "mt2701_vts_index", scope: !2, file: !3, line: 355, type: !2270, isLocal: true, isDefinition: true)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2232, size: 96, elements: !244)
!2271 = !DIGlobalVariableExpression(var: !2272, expr: !DIExpression())
!2272 = distinct !DIGlobalVariable(name: "mt2701_mux_values", scope: !2, file: !3, line: 352, type: !2270, isLocal: true, isDefinition: true)
!2273 = !DIGlobalVariableExpression(var: !2274, expr: !DIExpression())
!2274 = distinct !DIGlobalVariable(name: "mt2701_msr", scope: !2, file: !3, line: 344, type: !2270, isLocal: true, isDefinition: true)
!2275 = !DIGlobalVariableExpression(var: !2276, expr: !DIExpression())
!2276 = distinct !DIGlobalVariable(name: "mt2701_adcpnp", scope: !2, file: !3, line: 348, type: !2270, isLocal: true, isDefinition: true)
!2277 = !DIGlobalVariableExpression(var: !2278, expr: !DIExpression())
!2278 = distinct !DIGlobalVariable(name: "mt2701_tc_offset", scope: !2, file: !3, line: 353, type: !2261, isLocal: true, isDefinition: true)
!2279 = !DIGlobalVariableExpression(var: !2280, expr: !DIExpression())
!2280 = distinct !DIGlobalVariable(name: "mt2701_bank_data", scope: !2, file: !3, line: 340, type: !2270, isLocal: true, isDefinition: true)
!2281 = !DIGlobalVariableExpression(var: !2282, expr: !DIExpression())
!2282 = distinct !DIGlobalVariable(name: "mt2712_thermal_data", scope: !2, file: !3, line: 471, type: !2224, isLocal: true, isDefinition: true)
!2283 = !DIGlobalVariableExpression(var: !2284, expr: !DIExpression())
!2284 = distinct !DIGlobalVariable(name: "mt2712_vts_index", scope: !2, file: !3, line: 375, type: !2256, isLocal: true, isDefinition: true)
!2285 = !DIGlobalVariableExpression(var: !2286, expr: !DIExpression())
!2286 = distinct !DIGlobalVariable(name: "mt2712_mux_values", scope: !2, file: !3, line: 372, type: !2256, isLocal: true, isDefinition: true)
!2287 = !DIGlobalVariableExpression(var: !2288, expr: !DIExpression())
!2288 = distinct !DIGlobalVariable(name: "mt2712_msr", scope: !2, file: !3, line: 364, type: !2256, isLocal: true, isDefinition: true)
!2289 = !DIGlobalVariableExpression(var: !2290, expr: !DIExpression())
!2290 = distinct !DIGlobalVariable(name: "mt2712_adcpnp", scope: !2, file: !3, line: 368, type: !2256, isLocal: true, isDefinition: true)
!2291 = !DIGlobalVariableExpression(var: !2292, expr: !DIExpression())
!2292 = distinct !DIGlobalVariable(name: "mt2712_tc_offset", scope: !2, file: !3, line: 373, type: !2261, isLocal: true, isDefinition: true)
!2293 = !DIGlobalVariableExpression(var: !2294, expr: !DIExpression())
!2294 = distinct !DIGlobalVariable(name: "mt2712_bank_data", scope: !2, file: !3, line: 360, type: !2256, isLocal: true, isDefinition: true)
!2295 = !DIGlobalVariableExpression(var: !2296, expr: !DIExpression())
!2296 = distinct !DIGlobalVariable(name: "mt7622_thermal_data", scope: !2, file: !3, line: 496, type: !2224, isLocal: true, isDefinition: true)
!2297 = !DIGlobalVariableExpression(var: !2298, expr: !DIExpression())
!2298 = distinct !DIGlobalVariable(name: "mt7622_vts_index", scope: !2, file: !3, line: 384, type: !2261, isLocal: true, isDefinition: true)
!2299 = !DIGlobalVariableExpression(var: !2300, expr: !DIExpression())
!2300 = distinct !DIGlobalVariable(name: "mt7622_mux_values", scope: !2, file: !3, line: 383, type: !2261, isLocal: true, isDefinition: true)
!2301 = !DIGlobalVariableExpression(var: !2302, expr: !DIExpression())
!2302 = distinct !DIGlobalVariable(name: "mt7622_msr", scope: !2, file: !3, line: 381, type: !2261, isLocal: true, isDefinition: true)
!2303 = !DIGlobalVariableExpression(var: !2304, expr: !DIExpression())
!2304 = distinct !DIGlobalVariable(name: "mt7622_adcpnp", scope: !2, file: !3, line: 382, type: !2261, isLocal: true, isDefinition: true)
!2305 = !DIGlobalVariableExpression(var: !2306, expr: !DIExpression())
!2306 = distinct !DIGlobalVariable(name: "mt7622_tc_offset", scope: !2, file: !3, line: 385, type: !2261, isLocal: true, isDefinition: true)
!2307 = !DIGlobalVariableExpression(var: !2308, expr: !DIExpression())
!2308 = distinct !DIGlobalVariable(name: "mt7622_bank_data", scope: !2, file: !3, line: 380, type: !2261, isLocal: true, isDefinition: true)
!2309 = !DIGlobalVariableExpression(var: !2310, expr: !DIExpression())
!2310 = distinct !DIGlobalVariable(name: "mt8183_thermal_data", scope: !2, file: !3, line: 528, type: !2224, isLocal: true, isDefinition: true)
!2311 = !DIGlobalVariableExpression(var: !2312, expr: !DIExpression())
!2312 = distinct !DIGlobalVariable(name: "mt8183_vts_index", scope: !2, file: !3, line: 312, type: !2313, isLocal: true, isDefinition: true)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2232, size: 192, elements: !1384)
!2314 = !DIGlobalVariableExpression(var: !2315, expr: !DIExpression())
!2315 = distinct !DIGlobalVariable(name: "mt8183_mux_values", scope: !2, file: !3, line: 309, type: !2313, isLocal: true, isDefinition: true)
!2316 = !DIGlobalVariableExpression(var: !2317, expr: !DIExpression())
!2317 = distinct !DIGlobalVariable(name: "mt8183_msr", scope: !2, file: !3, line: 300, type: !2313, isLocal: true, isDefinition: true)
!2318 = !DIGlobalVariableExpression(var: !2319, expr: !DIExpression())
!2319 = distinct !DIGlobalVariable(name: "mt8183_adcpnp", scope: !2, file: !3, line: 304, type: !2313, isLocal: true, isDefinition: true)
!2320 = !DIGlobalVariableExpression(var: !2321, expr: !DIExpression())
!2321 = distinct !DIGlobalVariable(name: "mt8183_tc_offset", scope: !2, file: !3, line: 310, type: !2322, isLocal: true, isDefinition: true)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2232, size: 64, elements: !1050)
!2323 = !DIGlobalVariableExpression(var: !2324, expr: !DIExpression())
!2324 = distinct !DIGlobalVariable(name: "mt8183_bank_data", scope: !2, file: !3, line: 296, type: !2313, isLocal: true, isDefinition: true)
!2325 = !{i32 7, !"Dwarf Version", i32 4}
!2326 = !{i32 2, !"Debug Info Version", i32 3}
!2327 = !{i32 1, !"wchar_size", i32 2}
!2328 = !{i32 1, !"Code Model", i32 2}
!2329 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2330 = distinct !DISubprogram(name: "mtk_thermal_driver_init", scope: !3, file: !3, line: 1119, type: !2331, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!117}
!2333 = !DILocation(line: 1119, column: 1, scope: !2330)
!2334 = distinct !DISubprogram(name: "mtk_thermal_driver_exit", scope: !3, file: !3, line: 1119, type: !124, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2335 = !DILocation(line: 1119, column: 1, scope: !2334)
!2336 = !DILocalVariable(name: "pdev", arg: 1, scope: !2195, file: !3, line: 986, type: !171)
!2337 = !DILocation(line: 986, column: 54, scope: !2195)
!2338 = !DILocalVariable(name: "ret", scope: !2195, file: !3, line: 988, type: !117)
!2339 = !DILocation(line: 988, column: 6, scope: !2195)
!2340 = !DILocalVariable(name: "i", scope: !2195, file: !3, line: 988, type: !117)
!2341 = !DILocation(line: 988, column: 11, scope: !2195)
!2342 = !DILocalVariable(name: "ctrl_id", scope: !2195, file: !3, line: 988, type: !117)
!2343 = !DILocation(line: 988, column: 14, scope: !2195)
!2344 = !DILocalVariable(name: "auxadc", scope: !2195, file: !3, line: 989, type: !1984)
!2345 = !DILocation(line: 989, column: 22, scope: !2195)
!2346 = !DILocalVariable(name: "apmixedsys", scope: !2195, file: !3, line: 989, type: !1984)
!2347 = !DILocation(line: 989, column: 31, scope: !2195)
!2348 = !DILocalVariable(name: "np", scope: !2195, file: !3, line: 989, type: !1984)
!2349 = !DILocation(line: 989, column: 44, scope: !2195)
!2350 = !DILocation(line: 989, column: 49, scope: !2195)
!2351 = !DILocation(line: 989, column: 55, scope: !2195)
!2352 = !DILocation(line: 989, column: 59, scope: !2195)
!2353 = !DILocalVariable(name: "mt", scope: !2195, file: !3, line: 990, type: !2354)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtk_thermal", file: !3, line: 274, size: 1920, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2372, !2374}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2355, file: !3, line: 275, baseType: !1676, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_base", scope: !2355, file: !3, line: 276, baseType: !110, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "clk_peri_therm", scope: !2355, file: !3, line: 278, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2362, line: 17, flags: DIFlagFwdDecl)
!2362 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "clk_auxadc", scope: !2355, file: !3, line: 279, baseType: !2360, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2355, file: !3, line: 281, baseType: !454, size: 192, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "adc_ge", scope: !2355, file: !3, line: 284, baseType: !736, size: 32, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "adc_oe", scope: !2355, file: !3, line: 285, baseType: !736, size: 32, offset: 480)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "degc_cali", scope: !2355, file: !3, line: 286, baseType: !736, size: 32, offset: 512)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "o_slope", scope: !2355, file: !3, line: 287, baseType: !736, size: 32, offset: 544)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "o_slope_sign", scope: !2355, file: !3, line: 288, baseType: !736, size: 32, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "vts", scope: !2355, file: !3, line: 289, baseType: !2371, size: 192, offset: 608)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 192, elements: !1384)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2355, file: !3, line: 291, baseType: !2373, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "banks", scope: !2355, file: !3, line: 292, baseType: !2375, size: 1024, offset: 896)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2376, size: 1024, elements: !613)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtk_thermal_bank", file: !3, line: 253, size: 128, elements: !2377)
!2377 = !{!2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !2376, file: !3, line: 254, baseType: !2354, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2376, file: !3, line: 255, baseType: !117, size: 32, offset: 64)
!2380 = !DILocation(line: 990, column: 22, scope: !2195)
!2381 = !DILocalVariable(name: "res", scope: !2195, file: !3, line: 991, type: !2153)
!2382 = !DILocation(line: 991, column: 19, scope: !2195)
!2383 = !DILocalVariable(name: "auxadc_phys_base", scope: !2195, file: !3, line: 992, type: !104)
!2384 = !DILocation(line: 992, column: 6, scope: !2195)
!2385 = !DILocalVariable(name: "apmixed_phys_base", scope: !2195, file: !3, line: 992, type: !104)
!2386 = !DILocation(line: 992, column: 24, scope: !2195)
!2387 = !DILocalVariable(name: "tzdev", scope: !2195, file: !3, line: 993, type: !2388)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !66, line: 150, size: 8448, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2394, !2395, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2500, !2524, !2539, !2540, !2541, !2545, !2546, !2547, !2556}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2389, file: !66, line: 151, baseType: !117, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2389, file: !66, line: 152, baseType: !2172, size: 160, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2389, file: !66, line: 153, baseType: !181, size: 5568, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2389, file: !66, line: 154, baseType: !298, size: 320, offset: 5760)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2389, file: !66, line: 155, baseType: !2396, size: 64, offset: 6080)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !66, line: 38, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2389, file: !66, line: 156, baseType: !2396, size: 64, offset: 6144)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2389, file: !66, line: 157, baseType: !2396, size: 64, offset: 6208)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2389, file: !66, line: 158, baseType: !54, size: 32, offset: 6272)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2389, file: !66, line: 159, baseType: !110, size: 64, offset: 6336)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2389, file: !66, line: 160, baseType: !117, size: 32, offset: 6400)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2389, file: !66, line: 161, baseType: !109, size: 64, offset: 6464)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2389, file: !66, line: 162, baseType: !117, size: 32, offset: 6528)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2389, file: !66, line: 163, baseType: !117, size: 32, offset: 6560)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2389, file: !66, line: 164, baseType: !117, size: 32, offset: 6592)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2389, file: !66, line: 165, baseType: !117, size: 32, offset: 6624)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2389, file: !66, line: 166, baseType: !117, size: 32, offset: 6656)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2389, file: !66, line: 167, baseType: !117, size: 32, offset: 6688)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2389, file: !66, line: 168, baseType: !117, size: 32, offset: 6720)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2389, file: !66, line: 169, baseType: !117, size: 32, offset: 6752)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !2389, file: !66, line: 170, baseType: !7, size: 32, offset: 6784)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2389, file: !66, line: 171, baseType: !377, size: 32, offset: 6816)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2389, file: !66, line: 172, baseType: !2415, size: 64, offset: 6848)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !66, line: 61, size: 896, elements: !2417)
!2417 = !{!2418, !2462, !2463, !2467, !2471, !2475, !2480, !2484, !2485, !2486, !2487, !2488, !2492, !2496}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2416, file: !66, line: 62, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!117, !2388, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !66, line: 93, size: 6528, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2458, !2459, !2460, !2461}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2423, file: !66, line: 94, baseType: !117, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2423, file: !66, line: 95, baseType: !2172, size: 160, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2423, file: !66, line: 96, baseType: !181, size: 5568, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2423, file: !66, line: 97, baseType: !1984, size: 64, offset: 5760)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2423, file: !66, line: 98, baseType: !110, size: 64, offset: 5824)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2423, file: !66, line: 99, baseType: !110, size: 64, offset: 5888)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2423, file: !66, line: 100, baseType: !2432, size: 64, offset: 5952)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !66, line: 84, size: 384, elements: !2435)
!2435 = !{!2436, !2441, !2442, !2446, !2450, !2454}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2434, file: !66, line: 85, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!117, !2422, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2434, file: !66, line: 86, baseType: !2437, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2434, file: !66, line: 87, baseType: !2443, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!117, !2422, !109}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2434, file: !66, line: 88, baseType: !2447, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!117, !2422, !112}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2434, file: !66, line: 89, baseType: !2451, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!117, !2422, !109, !112}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2434, file: !66, line: 90, baseType: !2455, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!117, !2422, !113, !2440}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2423, file: !66, line: 101, baseType: !178, size: 8, offset: 6016)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2423, file: !66, line: 102, baseType: !454, size: 192, offset: 6080)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2423, file: !66, line: 103, baseType: !189, size: 128, offset: 6272)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2423, file: !66, line: 104, baseType: !189, size: 128, offset: 6400)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2416, file: !66, line: 64, baseType: !2419, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2416, file: !66, line: 66, baseType: !2464, size: 64, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!117, !2388, !823}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2416, file: !66, line: 67, baseType: !2468, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!117, !2388, !117, !117}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2416, file: !66, line: 68, baseType: !2472, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!117, !2388, !54}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2416, file: !66, line: 70, baseType: !2476, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!117, !2388, !117, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2416, file: !66, line: 72, baseType: !2481, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!117, !2388, !117, !823}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2416, file: !66, line: 73, baseType: !2468, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2416, file: !66, line: 74, baseType: !2481, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2416, file: !66, line: 75, baseType: !2468, size: 64, offset: 576)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2416, file: !66, line: 76, baseType: !2464, size: 64, offset: 640)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2416, file: !66, line: 77, baseType: !2489, size: 64, offset: 704)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!117, !2388, !117}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2416, file: !66, line: 78, baseType: !2493, size: 64, offset: 768)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!117, !2388, !117, !2209}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2416, file: !66, line: 80, baseType: !2497, size: 64, offset: 832)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!117, !2388, !117, !59}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2389, file: !66, line: 173, baseType: !2501, size: 64, offset: 6912)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !66, line: 240, size: 576, elements: !2503)
!2503 = !{!2504, !2505, !2506, !2507, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2502, file: !66, line: 241, baseType: !2172, size: 160)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2502, file: !66, line: 248, baseType: !178, size: 8, offset: 160)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2502, file: !66, line: 250, baseType: !117, size: 32, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2502, file: !66, line: 251, baseType: !2508, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !66, line: 205, size: 256, elements: !2510)
!2510 = !{!2511, !2512, !2513, !2514, !2515}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2509, file: !66, line: 206, baseType: !2422, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2509, file: !66, line: 217, baseType: !117, size: 32, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2509, file: !66, line: 224, baseType: !117, size: 32, offset: 96)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2509, file: !66, line: 234, baseType: !2440, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2509, file: !66, line: 235, baseType: !2419, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2502, file: !66, line: 257, baseType: !113, size: 32, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2502, file: !66, line: 263, baseType: !736, size: 32, offset: 352)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2502, file: !66, line: 269, baseType: !736, size: 32, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2502, file: !66, line: 272, baseType: !736, size: 32, offset: 416)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2502, file: !66, line: 275, baseType: !736, size: 32, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2502, file: !66, line: 278, baseType: !736, size: 32, offset: 480)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2502, file: !66, line: 284, baseType: !117, size: 32, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2502, file: !66, line: 289, baseType: !117, size: 32, offset: 544)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2389, file: !66, line: 174, baseType: !2525, size: 64, offset: 6976)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !66, line: 196, size: 512, elements: !2527)
!2527 = !{!2528, !2529, !2533, !2537, !2538}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2526, file: !66, line: 197, baseType: !2172, size: 160)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2526, file: !66, line: 198, baseType: !2530, size: 64, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!117, !2388}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2526, file: !66, line: 199, baseType: !2534, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !2388}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2526, file: !66, line: 200, baseType: !2489, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2526, file: !66, line: 201, baseType: !189, size: 128, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2389, file: !66, line: 175, baseType: !110, size: 64, offset: 7040)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2389, file: !66, line: 176, baseType: !189, size: 128, offset: 7104)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2389, file: !66, line: 177, baseType: !2542, size: 128, offset: 7232)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1540, line: 244, size: 128, elements: !2543)
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2542, file: !1540, line: 245, baseType: !1543, size: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2389, file: !66, line: 178, baseType: !454, size: 192, offset: 7360)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2389, file: !66, line: 179, baseType: !189, size: 128, offset: 7552)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2389, file: !66, line: 180, baseType: !2548, size: 704, offset: 7680)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1416, line: 115, size: 704, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2555}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2548, file: !1416, line: 116, baseType: !1415, size: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2548, file: !1416, line: 117, baseType: !1870, size: 320, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2548, file: !1416, line: 120, baseType: !2553, size: 64, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1416, line: 18, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2548, file: !1416, line: 121, baseType: !117, size: 32, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2389, file: !66, line: 181, baseType: !73, size: 32, offset: 8384)
!2557 = !DILocation(line: 993, column: 30, scope: !2195)
!2558 = !DILocalVariable(name: "apmixed_base", scope: !2195, file: !3, line: 994, type: !110)
!2559 = !DILocation(line: 994, column: 16, scope: !2195)
!2560 = !DILocalVariable(name: "auxadc_base", scope: !2195, file: !3, line: 994, type: !110)
!2561 = !DILocation(line: 994, column: 31, scope: !2195)
!2562 = !DILocation(line: 996, column: 21, scope: !2195)
!2563 = !DILocation(line: 996, column: 27, scope: !2195)
!2564 = !DILocation(line: 996, column: 7, scope: !2195)
!2565 = !DILocation(line: 996, column: 5, scope: !2195)
!2566 = !DILocation(line: 997, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 997, column: 6)
!2568 = !DILocation(line: 997, column: 6, scope: !2195)
!2569 = !DILocation(line: 998, column: 3, scope: !2567)
!2570 = !DILocation(line: 1000, column: 39, scope: !2195)
!2571 = !DILocation(line: 1000, column: 45, scope: !2195)
!2572 = !DILocation(line: 1000, column: 13, scope: !2195)
!2573 = !DILocation(line: 1000, column: 2, scope: !2195)
!2574 = !DILocation(line: 1000, column: 6, scope: !2195)
!2575 = !DILocation(line: 1000, column: 11, scope: !2195)
!2576 = !DILocation(line: 1002, column: 37, scope: !2195)
!2577 = !DILocation(line: 1002, column: 43, scope: !2195)
!2578 = !DILocation(line: 1002, column: 23, scope: !2195)
!2579 = !DILocation(line: 1002, column: 2, scope: !2195)
!2580 = !DILocation(line: 1002, column: 6, scope: !2195)
!2581 = !DILocation(line: 1002, column: 21, scope: !2195)
!2582 = !DILocation(line: 1003, column: 13, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1003, column: 6)
!2584 = !DILocation(line: 1003, column: 17, scope: !2583)
!2585 = !DILocation(line: 1003, column: 6, scope: !2583)
!2586 = !DILocation(line: 1003, column: 6, scope: !2195)
!2587 = !DILocation(line: 1004, column: 18, scope: !2583)
!2588 = !DILocation(line: 1004, column: 22, scope: !2583)
!2589 = !DILocation(line: 1004, column: 10, scope: !2583)
!2590 = !DILocation(line: 1004, column: 3, scope: !2583)
!2591 = !DILocation(line: 1006, column: 33, scope: !2195)
!2592 = !DILocation(line: 1006, column: 39, scope: !2195)
!2593 = !DILocation(line: 1006, column: 19, scope: !2195)
!2594 = !DILocation(line: 1006, column: 2, scope: !2195)
!2595 = !DILocation(line: 1006, column: 6, scope: !2195)
!2596 = !DILocation(line: 1006, column: 17, scope: !2195)
!2597 = !DILocation(line: 1007, column: 13, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1007, column: 6)
!2599 = !DILocation(line: 1007, column: 17, scope: !2598)
!2600 = !DILocation(line: 1007, column: 6, scope: !2598)
!2601 = !DILocation(line: 1007, column: 6, scope: !2195)
!2602 = !DILocation(line: 1008, column: 18, scope: !2598)
!2603 = !DILocation(line: 1008, column: 22, scope: !2598)
!2604 = !DILocation(line: 1008, column: 10, scope: !2598)
!2605 = !DILocation(line: 1008, column: 3, scope: !2598)
!2606 = !DILocation(line: 1010, column: 30, scope: !2195)
!2607 = !DILocation(line: 1010, column: 8, scope: !2195)
!2608 = !DILocation(line: 1010, column: 6, scope: !2195)
!2609 = !DILocation(line: 1011, column: 44, scope: !2195)
!2610 = !DILocation(line: 1011, column: 50, scope: !2195)
!2611 = !DILocation(line: 1011, column: 55, scope: !2195)
!2612 = !DILocation(line: 1011, column: 21, scope: !2195)
!2613 = !DILocation(line: 1011, column: 2, scope: !2195)
!2614 = !DILocation(line: 1011, column: 6, scope: !2195)
!2615 = !DILocation(line: 1011, column: 19, scope: !2195)
!2616 = !DILocation(line: 1012, column: 13, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1012, column: 6)
!2618 = !DILocation(line: 1012, column: 17, scope: !2617)
!2619 = !DILocation(line: 1012, column: 6, scope: !2617)
!2620 = !DILocation(line: 1012, column: 6, scope: !2195)
!2621 = !DILocation(line: 1013, column: 18, scope: !2617)
!2622 = !DILocation(line: 1013, column: 22, scope: !2617)
!2623 = !DILocation(line: 1013, column: 10, scope: !2617)
!2624 = !DILocation(line: 1013, column: 3, scope: !2617)
!2625 = !DILocation(line: 1015, column: 42, scope: !2195)
!2626 = !DILocation(line: 1015, column: 48, scope: !2195)
!2627 = !DILocation(line: 1015, column: 53, scope: !2195)
!2628 = !DILocation(line: 1015, column: 8, scope: !2195)
!2629 = !DILocation(line: 1015, column: 6, scope: !2195)
!2630 = !DILocation(line: 1016, column: 6, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1016, column: 6)
!2632 = !DILocation(line: 1016, column: 6, scope: !2195)
!2633 = !DILocation(line: 1017, column: 10, scope: !2631)
!2634 = !DILocation(line: 1017, column: 3, scope: !2631)
!2635 = !DILocation(line: 1019, column: 2, scope: !2195)
!2636 = !DILocation(line: 1019, column: 2, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1019, column: 2)
!2638 = !DILocation(line: 1021, column: 13, scope: !2195)
!2639 = !DILocation(line: 1021, column: 19, scope: !2195)
!2640 = !DILocation(line: 1021, column: 2, scope: !2195)
!2641 = !DILocation(line: 1021, column: 6, scope: !2195)
!2642 = !DILocation(line: 1021, column: 10, scope: !2195)
!2643 = !DILocation(line: 1023, column: 28, scope: !2195)
!2644 = !DILocation(line: 1023, column: 11, scope: !2195)
!2645 = !DILocation(line: 1023, column: 9, scope: !2195)
!2646 = !DILocation(line: 1024, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1024, column: 6)
!2648 = !DILocation(line: 1024, column: 6, scope: !2195)
!2649 = !DILocation(line: 1025, column: 3, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1024, column: 15)
!2651 = !DILocation(line: 1026, column: 3, scope: !2650)
!2652 = !DILocation(line: 1029, column: 25, scope: !2195)
!2653 = !DILocation(line: 1029, column: 16, scope: !2195)
!2654 = !DILocation(line: 1029, column: 14, scope: !2195)
!2655 = !DILocation(line: 1030, column: 38, scope: !2195)
!2656 = !DILocation(line: 1030, column: 21, scope: !2195)
!2657 = !DILocation(line: 1030, column: 19, scope: !2195)
!2658 = !DILocation(line: 1032, column: 14, scope: !2195)
!2659 = !DILocation(line: 1032, column: 2, scope: !2195)
!2660 = !DILocation(line: 1034, column: 6, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1034, column: 6)
!2662 = !DILocation(line: 1034, column: 23, scope: !2661)
!2663 = !DILocation(line: 1034, column: 6, scope: !2195)
!2664 = !DILocation(line: 1035, column: 3, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1034, column: 39)
!2666 = !DILocation(line: 1036, column: 3, scope: !2665)
!2667 = !DILocation(line: 1039, column: 32, scope: !2195)
!2668 = !DILocation(line: 1039, column: 15, scope: !2195)
!2669 = !DILocation(line: 1039, column: 13, scope: !2195)
!2670 = !DILocation(line: 1040, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1040, column: 6)
!2672 = !DILocation(line: 1040, column: 6, scope: !2195)
!2673 = !DILocation(line: 1041, column: 3, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1040, column: 19)
!2675 = !DILocation(line: 1042, column: 3, scope: !2674)
!2676 = !DILocation(line: 1045, column: 26, scope: !2195)
!2677 = !DILocation(line: 1045, column: 17, scope: !2195)
!2678 = !DILocation(line: 1045, column: 15, scope: !2195)
!2679 = !DILocation(line: 1046, column: 39, scope: !2195)
!2680 = !DILocation(line: 1046, column: 22, scope: !2195)
!2681 = !DILocation(line: 1046, column: 20, scope: !2195)
!2682 = !DILocation(line: 1048, column: 14, scope: !2195)
!2683 = !DILocation(line: 1048, column: 2, scope: !2195)
!2684 = !DILocation(line: 1050, column: 6, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1050, column: 6)
!2686 = !DILocation(line: 1050, column: 24, scope: !2685)
!2687 = !DILocation(line: 1050, column: 6, scope: !2195)
!2688 = !DILocation(line: 1051, column: 3, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1050, column: 40)
!2690 = !DILocation(line: 1052, column: 3, scope: !2689)
!2691 = !DILocation(line: 1055, column: 22, scope: !2195)
!2692 = !DILocation(line: 1055, column: 28, scope: !2195)
!2693 = !DILocation(line: 1055, column: 8, scope: !2195)
!2694 = !DILocation(line: 1055, column: 6, scope: !2195)
!2695 = !DILocation(line: 1056, column: 6, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1056, column: 6)
!2697 = !DILocation(line: 1056, column: 6, scope: !2195)
!2698 = !DILocation(line: 1057, column: 10, scope: !2696)
!2699 = !DILocation(line: 1057, column: 3, scope: !2696)
!2700 = !DILocation(line: 1059, column: 27, scope: !2195)
!2701 = !DILocation(line: 1059, column: 31, scope: !2195)
!2702 = !DILocation(line: 1059, column: 8, scope: !2195)
!2703 = !DILocation(line: 1059, column: 6, scope: !2195)
!2704 = !DILocation(line: 1060, column: 6, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1060, column: 6)
!2706 = !DILocation(line: 1060, column: 6, scope: !2195)
!2707 = !DILocation(line: 1061, column: 3, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 1060, column: 11)
!2709 = !DILocation(line: 1062, column: 10, scope: !2708)
!2710 = !DILocation(line: 1062, column: 3, scope: !2708)
!2711 = !DILocation(line: 1065, column: 27, scope: !2195)
!2712 = !DILocation(line: 1065, column: 31, scope: !2195)
!2713 = !DILocation(line: 1065, column: 8, scope: !2195)
!2714 = !DILocation(line: 1065, column: 6, scope: !2195)
!2715 = !DILocation(line: 1066, column: 6, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1066, column: 6)
!2717 = !DILocation(line: 1066, column: 6, scope: !2195)
!2718 = !DILocation(line: 1067, column: 3, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1066, column: 11)
!2720 = !DILocation(line: 1068, column: 3, scope: !2719)
!2721 = !DILocation(line: 1071, column: 6, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1071, column: 6)
!2723 = !DILocation(line: 1071, column: 10, scope: !2722)
!2724 = !DILocation(line: 1071, column: 16, scope: !2722)
!2725 = !DILocation(line: 1071, column: 24, scope: !2722)
!2726 = !DILocation(line: 1071, column: 6, scope: !2195)
!2727 = !DILocation(line: 1072, column: 30, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1071, column: 43)
!2729 = !DILocation(line: 1072, column: 3, scope: !2728)
!2730 = !DILocation(line: 1073, column: 35, scope: !2728)
!2731 = !DILocation(line: 1073, column: 39, scope: !2728)
!2732 = !DILocation(line: 1073, column: 3, scope: !2728)
!2733 = !DILocation(line: 1074, column: 2, scope: !2728)
!2734 = !DILocation(line: 1076, column: 15, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1076, column: 2)
!2736 = !DILocation(line: 1076, column: 7, scope: !2735)
!2737 = !DILocation(line: 1076, column: 20, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1076, column: 2)
!2739 = !DILocation(line: 1076, column: 30, scope: !2738)
!2740 = !DILocation(line: 1076, column: 34, scope: !2738)
!2741 = !DILocation(line: 1076, column: 40, scope: !2738)
!2742 = !DILocation(line: 1076, column: 28, scope: !2738)
!2743 = !DILocation(line: 1076, column: 2, scope: !2735)
!2744 = !DILocation(line: 1077, column: 10, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1077, column: 3)
!2746 = !DILocation(line: 1077, column: 8, scope: !2745)
!2747 = !DILocation(line: 1077, column: 15, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1077, column: 3)
!2749 = !DILocation(line: 1077, column: 19, scope: !2748)
!2750 = !DILocation(line: 1077, column: 23, scope: !2748)
!2751 = !DILocation(line: 1077, column: 29, scope: !2748)
!2752 = !DILocation(line: 1077, column: 17, scope: !2748)
!2753 = !DILocation(line: 1077, column: 3, scope: !2745)
!2754 = !DILocation(line: 1078, column: 26, scope: !2748)
!2755 = !DILocation(line: 1078, column: 30, scope: !2748)
!2756 = !DILocation(line: 1078, column: 33, scope: !2748)
!2757 = !DILocation(line: 1079, column: 12, scope: !2748)
!2758 = !DILocation(line: 1079, column: 30, scope: !2748)
!2759 = !DILocation(line: 1078, column: 4, scope: !2748)
!2760 = !DILocation(line: 1077, column: 41, scope: !2748)
!2761 = !DILocation(line: 1077, column: 3, scope: !2748)
!2762 = distinct !{!2762, !2753, !2763}
!2763 = !DILocation(line: 1079, column: 37, scope: !2745)
!2764 = !DILocation(line: 1076, column: 64, scope: !2738)
!2765 = !DILocation(line: 1076, column: 2, scope: !2738)
!2766 = distinct !{!2766, !2743, !2767}
!2767 = !DILocation(line: 1079, column: 37, scope: !2735)
!2768 = !DILocation(line: 1081, column: 23, scope: !2195)
!2769 = !DILocation(line: 1081, column: 29, scope: !2195)
!2770 = !DILocation(line: 1081, column: 2, scope: !2195)
!2771 = !DILocation(line: 1083, column: 48, scope: !2195)
!2772 = !DILocation(line: 1083, column: 54, scope: !2195)
!2773 = !DILocation(line: 1083, column: 62, scope: !2195)
!2774 = !DILocation(line: 1083, column: 10, scope: !2195)
!2775 = !DILocation(line: 1083, column: 8, scope: !2195)
!2776 = !DILocation(line: 1085, column: 13, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1085, column: 6)
!2778 = !DILocation(line: 1085, column: 6, scope: !2777)
!2779 = !DILocation(line: 1085, column: 6, scope: !2195)
!2780 = !DILocation(line: 1086, column: 17, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1085, column: 21)
!2782 = !DILocation(line: 1086, column: 9, scope: !2781)
!2783 = !DILocation(line: 1086, column: 7, scope: !2781)
!2784 = !DILocation(line: 1087, column: 3, scope: !2781)
!2785 = !DILocation(line: 1090, column: 2, scope: !2195)
!2786 = !DILabel(scope: !2195, name: "err_disable_clk_peri_therm", file: !3, line: 1092)
!2787 = !DILocation(line: 1092, column: 1, scope: !2195)
!2788 = !DILocation(line: 1093, column: 24, scope: !2195)
!2789 = !DILocation(line: 1093, column: 28, scope: !2195)
!2790 = !DILocation(line: 1093, column: 2, scope: !2195)
!2791 = !DILabel(scope: !2195, name: "err_disable_clk_auxadc", file: !3, line: 1094)
!2792 = !DILocation(line: 1094, column: 1, scope: !2195)
!2793 = !DILocation(line: 1095, column: 24, scope: !2195)
!2794 = !DILocation(line: 1095, column: 28, scope: !2195)
!2795 = !DILocation(line: 1095, column: 2, scope: !2195)
!2796 = !DILocation(line: 1097, column: 9, scope: !2195)
!2797 = !DILocation(line: 1097, column: 2, scope: !2195)
!2798 = !DILocation(line: 1098, column: 1, scope: !2195)
!2799 = distinct !DISubprogram(name: "mtk_thermal_remove", scope: !3, file: !3, line: 1100, type: !169, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2800 = !DILocalVariable(name: "pdev", arg: 1, scope: !2799, file: !3, line: 1100, type: !171)
!2801 = !DILocation(line: 1100, column: 55, scope: !2799)
!2802 = !DILocalVariable(name: "mt", scope: !2799, file: !3, line: 1102, type: !2354)
!2803 = !DILocation(line: 1102, column: 22, scope: !2799)
!2804 = !DILocation(line: 1102, column: 48, scope: !2799)
!2805 = !DILocation(line: 1102, column: 27, scope: !2799)
!2806 = !DILocation(line: 1104, column: 24, scope: !2799)
!2807 = !DILocation(line: 1104, column: 28, scope: !2799)
!2808 = !DILocation(line: 1104, column: 2, scope: !2799)
!2809 = !DILocation(line: 1105, column: 24, scope: !2799)
!2810 = !DILocation(line: 1105, column: 28, scope: !2799)
!2811 = !DILocation(line: 1105, column: 2, scope: !2799)
!2812 = !DILocation(line: 1107, column: 2, scope: !2799)
!2813 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2814, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!110, !1676, !289, !102}
!2816 = !DILocalVariable(name: "dev", arg: 1, scope: !2813, file: !30, line: 215, type: !1676)
!2817 = !DILocation(line: 215, column: 49, scope: !2813)
!2818 = !DILocalVariable(name: "size", arg: 2, scope: !2813, file: !30, line: 215, type: !289)
!2819 = !DILocation(line: 215, column: 61, scope: !2813)
!2820 = !DILocalVariable(name: "gfp", arg: 3, scope: !2813, file: !30, line: 215, type: !102)
!2821 = !DILocation(line: 215, column: 73, scope: !2813)
!2822 = !DILocation(line: 217, column: 22, scope: !2813)
!2823 = !DILocation(line: 217, column: 27, scope: !2813)
!2824 = !DILocation(line: 217, column: 33, scope: !2813)
!2825 = !DILocation(line: 217, column: 37, scope: !2813)
!2826 = !DILocation(line: 217, column: 9, scope: !2813)
!2827 = !DILocation(line: 217, column: 2, scope: !2813)
!2828 = distinct !DISubprogram(name: "IS_ERR", scope: !2829, file: !2829, line: 34, type: !2830, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2829 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!178, !1207}
!2832 = !DILocalVariable(name: "ptr", arg: 1, scope: !2828, file: !2829, line: 34, type: !1207)
!2833 = !DILocation(line: 34, column: 60, scope: !2828)
!2834 = !DILocation(line: 36, column: 9, scope: !2828)
!2835 = !DILocation(line: 36, column: 2, scope: !2828)
!2836 = distinct !DISubprogram(name: "PTR_ERR", scope: !2829, file: !2829, line: 29, type: !2837, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!111, !1207}
!2839 = !DILocalVariable(name: "ptr", arg: 1, scope: !2836, file: !2829, line: 29, type: !1207)
!2840 = !DILocation(line: 29, column: 61, scope: !2836)
!2841 = !DILocation(line: 31, column: 16, scope: !2836)
!2842 = !DILocation(line: 31, column: 9, scope: !2836)
!2843 = !DILocation(line: 31, column: 2, scope: !2836)
!2844 = distinct !DISubprogram(name: "mtk_thermal_get_calibration_data", scope: !3, file: !3, line: 888, type: !2845, scopeLine: 890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!117, !1676, !2354}
!2847 = !DILocalVariable(name: "dev", arg: 1, scope: !2844, file: !3, line: 888, type: !1676)
!2848 = !DILocation(line: 888, column: 60, scope: !2844)
!2849 = !DILocalVariable(name: "mt", arg: 2, scope: !2844, file: !3, line: 889, type: !2354)
!2850 = !DILocation(line: 889, column: 30, scope: !2844)
!2851 = !DILocalVariable(name: "cell", scope: !2844, file: !3, line: 891, type: !2852)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_cell", file: !2854, line: 19, flags: DIFlagFwdDecl)
!2854 = !DIFile(filename: "./include/linux/nvmem-consumer.h", directory: "/home/lizy2001/genbc/linux")
!2855 = !DILocation(line: 891, column: 21, scope: !2844)
!2856 = !DILocalVariable(name: "buf", scope: !2844, file: !3, line: 892, type: !112)
!2857 = !DILocation(line: 892, column: 7, scope: !2844)
!2858 = !DILocalVariable(name: "len", scope: !2844, file: !3, line: 893, type: !289)
!2859 = !DILocation(line: 893, column: 9, scope: !2844)
!2860 = !DILocalVariable(name: "i", scope: !2844, file: !3, line: 894, type: !117)
!2861 = !DILocation(line: 894, column: 6, scope: !2844)
!2862 = !DILocalVariable(name: "ret", scope: !2844, file: !3, line: 894, type: !117)
!2863 = !DILocation(line: 894, column: 9, scope: !2844)
!2864 = !DILocation(line: 897, column: 2, scope: !2844)
!2865 = !DILocation(line: 897, column: 6, scope: !2844)
!2866 = !DILocation(line: 897, column: 13, scope: !2844)
!2867 = !DILocation(line: 898, column: 9, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 898, column: 2)
!2869 = !DILocation(line: 898, column: 7, scope: !2868)
!2870 = !DILocation(line: 898, column: 14, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 898, column: 2)
!2872 = !DILocation(line: 898, column: 18, scope: !2871)
!2873 = !DILocation(line: 898, column: 22, scope: !2871)
!2874 = !DILocation(line: 898, column: 28, scope: !2871)
!2875 = !DILocation(line: 898, column: 16, scope: !2871)
!2876 = !DILocation(line: 898, column: 2, scope: !2868)
!2877 = !DILocation(line: 899, column: 3, scope: !2871)
!2878 = !DILocation(line: 899, column: 7, scope: !2871)
!2879 = !DILocation(line: 899, column: 11, scope: !2871)
!2880 = !DILocation(line: 899, column: 14, scope: !2871)
!2881 = !DILocation(line: 898, column: 42, scope: !2871)
!2882 = !DILocation(line: 898, column: 2, scope: !2871)
!2883 = distinct !{!2883, !2876, !2884}
!2884 = !DILocation(line: 899, column: 16, scope: !2868)
!2885 = !DILocation(line: 900, column: 2, scope: !2844)
!2886 = !DILocation(line: 900, column: 6, scope: !2844)
!2887 = !DILocation(line: 900, column: 16, scope: !2844)
!2888 = !DILocation(line: 901, column: 2, scope: !2844)
!2889 = !DILocation(line: 901, column: 6, scope: !2844)
!2890 = !DILocation(line: 901, column: 14, scope: !2844)
!2891 = !DILocation(line: 903, column: 24, scope: !2844)
!2892 = !DILocation(line: 903, column: 9, scope: !2844)
!2893 = !DILocation(line: 903, column: 7, scope: !2844)
!2894 = !DILocation(line: 904, column: 13, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 904, column: 6)
!2896 = !DILocation(line: 904, column: 6, scope: !2895)
!2897 = !DILocation(line: 904, column: 6, scope: !2844)
!2898 = !DILocation(line: 905, column: 15, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 905, column: 7)
!2900 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 904, column: 20)
!2901 = !DILocation(line: 905, column: 7, scope: !2899)
!2902 = !DILocation(line: 905, column: 21, scope: !2899)
!2903 = !DILocation(line: 905, column: 7, scope: !2900)
!2904 = !DILocation(line: 906, column: 19, scope: !2899)
!2905 = !DILocation(line: 906, column: 11, scope: !2899)
!2906 = !DILocation(line: 906, column: 4, scope: !2899)
!2907 = !DILocation(line: 907, column: 3, scope: !2900)
!2908 = !DILocation(line: 910, column: 31, scope: !2844)
!2909 = !DILocation(line: 910, column: 15, scope: !2844)
!2910 = !DILocation(line: 910, column: 8, scope: !2844)
!2911 = !DILocation(line: 910, column: 6, scope: !2844)
!2912 = !DILocation(line: 912, column: 17, scope: !2844)
!2913 = !DILocation(line: 912, column: 2, scope: !2844)
!2914 = !DILocation(line: 914, column: 13, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 914, column: 6)
!2916 = !DILocation(line: 914, column: 6, scope: !2915)
!2917 = !DILocation(line: 914, column: 6, scope: !2844)
!2918 = !DILocation(line: 915, column: 18, scope: !2915)
!2919 = !DILocation(line: 915, column: 10, scope: !2915)
!2920 = !DILocation(line: 915, column: 3, scope: !2915)
!2921 = !DILocation(line: 917, column: 6, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 917, column: 6)
!2923 = !DILocation(line: 917, column: 10, scope: !2922)
!2924 = !DILocation(line: 917, column: 6, scope: !2844)
!2925 = !DILocation(line: 918, column: 3, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 917, column: 29)
!2927 = !DILocation(line: 919, column: 7, scope: !2926)
!2928 = !DILocation(line: 920, column: 3, scope: !2926)
!2929 = !DILocation(line: 923, column: 6, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 923, column: 6)
!2931 = !DILocation(line: 923, column: 10, scope: !2930)
!2932 = !DILocation(line: 923, column: 16, scope: !2930)
!2933 = !DILocation(line: 923, column: 24, scope: !2930)
!2934 = !DILocation(line: 923, column: 6, scope: !2844)
!2935 = !DILocation(line: 924, column: 38, scope: !2930)
!2936 = !DILocation(line: 924, column: 42, scope: !2930)
!2937 = !DILocation(line: 924, column: 9, scope: !2930)
!2938 = !DILocation(line: 924, column: 7, scope: !2930)
!2939 = !DILocation(line: 924, column: 3, scope: !2930)
!2940 = !DILocation(line: 926, column: 38, scope: !2930)
!2941 = !DILocation(line: 926, column: 42, scope: !2930)
!2942 = !DILocation(line: 926, column: 9, scope: !2930)
!2943 = !DILocation(line: 926, column: 7, scope: !2930)
!2944 = !DILocation(line: 928, column: 6, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 928, column: 6)
!2946 = !DILocation(line: 928, column: 6, scope: !2844)
!2947 = !DILocation(line: 929, column: 3, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 928, column: 11)
!2949 = !DILocation(line: 930, column: 7, scope: !2948)
!2950 = !DILocation(line: 931, column: 2, scope: !2948)
!2951 = !DILabel(scope: !2844, name: "out", file: !3, line: 933)
!2952 = !DILocation(line: 933, column: 1, scope: !2844)
!2953 = !DILocation(line: 934, column: 8, scope: !2844)
!2954 = !DILocation(line: 934, column: 2, scope: !2844)
!2955 = !DILocation(line: 936, column: 9, scope: !2844)
!2956 = !DILocation(line: 936, column: 2, scope: !2844)
!2957 = !DILocation(line: 937, column: 1, scope: !2844)
!2958 = distinct !DISubprogram(name: "of_get_phys_base", scope: !3, file: !3, line: 814, type: !2959, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!104, !1984}
!2961 = !DILocalVariable(name: "np", arg: 1, scope: !2958, file: !3, line: 814, type: !1984)
!2962 = !DILocation(line: 814, column: 49, scope: !2958)
!2963 = !DILocalVariable(name: "size64", scope: !2958, file: !3, line: 816, type: !104)
!2964 = !DILocation(line: 816, column: 6, scope: !2958)
!2965 = !DILocalVariable(name: "regaddr_p", scope: !2958, file: !3, line: 817, type: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1646, line: 32, baseType: !114)
!2969 = !DILocation(line: 817, column: 16, scope: !2958)
!2970 = !DILocation(line: 819, column: 29, scope: !2958)
!2971 = !DILocation(line: 819, column: 14, scope: !2958)
!2972 = !DILocation(line: 819, column: 12, scope: !2958)
!2973 = !DILocation(line: 820, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 820, column: 6)
!2975 = !DILocation(line: 820, column: 6, scope: !2958)
!2976 = !DILocation(line: 821, column: 3, scope: !2974)
!2977 = !DILocation(line: 823, column: 30, scope: !2958)
!2978 = !DILocation(line: 823, column: 34, scope: !2958)
!2979 = !DILocation(line: 823, column: 9, scope: !2958)
!2980 = !DILocation(line: 823, column: 2, scope: !2958)
!2981 = !DILocation(line: 824, column: 1, scope: !2958)
!2982 = distinct !DISubprogram(name: "of_node_put", scope: !1986, file: !1986, line: 129, type: !2983, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !1984}
!2985 = !DILocalVariable(name: "node", arg: 1, scope: !2982, file: !1986, line: 129, type: !1984)
!2986 = !DILocation(line: 129, column: 52, scope: !2982)
!2987 = !DILocation(line: 129, column: 60, scope: !2982)
!2988 = distinct !DISubprogram(name: "device_reset", scope: !2989, file: !2989, line: 126, type: !1708, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2989 = !DIFile(filename: "./include/linux/reset.h", directory: "/home/lizy2001/genbc/linux")
!2990 = !DILocalVariable(name: "dev", arg: 1, scope: !2988, file: !2989, line: 126, type: !1676)
!2991 = !DILocation(line: 126, column: 60, scope: !2988)
!2992 = !DILocation(line: 128, column: 24, scope: !2988)
!2993 = !DILocation(line: 128, column: 9, scope: !2988)
!2994 = !DILocation(line: 128, column: 2, scope: !2988)
!2995 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !2362, file: !2362, line: 906, type: !2996, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!117, !2360}
!2998 = !DILocalVariable(name: "clk", arg: 1, scope: !2995, file: !2362, line: 906, type: !2360)
!2999 = !DILocation(line: 906, column: 50, scope: !2995)
!3000 = !DILocalVariable(name: "ret", scope: !2995, file: !2362, line: 908, type: !117)
!3001 = !DILocation(line: 908, column: 6, scope: !2995)
!3002 = !DILocation(line: 910, column: 20, scope: !2995)
!3003 = !DILocation(line: 910, column: 8, scope: !2995)
!3004 = !DILocation(line: 910, column: 6, scope: !2995)
!3005 = !DILocation(line: 911, column: 6, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2995, file: !2362, line: 911, column: 6)
!3007 = !DILocation(line: 911, column: 6, scope: !2995)
!3008 = !DILocation(line: 912, column: 10, scope: !3006)
!3009 = !DILocation(line: 912, column: 3, scope: !3006)
!3010 = !DILocation(line: 913, column: 19, scope: !2995)
!3011 = !DILocation(line: 913, column: 8, scope: !2995)
!3012 = !DILocation(line: 913, column: 6, scope: !2995)
!3013 = !DILocation(line: 914, column: 6, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2995, file: !2362, line: 914, column: 6)
!3015 = !DILocation(line: 914, column: 6, scope: !2995)
!3016 = !DILocation(line: 915, column: 17, scope: !3014)
!3017 = !DILocation(line: 915, column: 3, scope: !3014)
!3018 = !DILocation(line: 917, column: 9, scope: !2995)
!3019 = !DILocation(line: 917, column: 2, scope: !2995)
!3020 = !DILocation(line: 918, column: 1, scope: !2995)
!3021 = distinct !DISubprogram(name: "mtk_thermal_turn_on_buffer", scope: !3, file: !3, line: 964, type: !1489, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3022 = !DILocalVariable(name: "apmixed_base", arg: 1, scope: !3021, file: !3, line: 964, type: !110)
!3023 = !DILocation(line: 964, column: 54, scope: !3021)
!3024 = !DILocalVariable(name: "tmp", scope: !3021, file: !3, line: 966, type: !117)
!3025 = !DILocation(line: 966, column: 6, scope: !3021)
!3026 = !DILocation(line: 968, column: 14, scope: !3021)
!3027 = !DILocation(line: 968, column: 27, scope: !3021)
!3028 = !DILocation(line: 968, column: 8, scope: !3021)
!3029 = !DILocation(line: 968, column: 6, scope: !3021)
!3030 = !DILocation(line: 969, column: 6, scope: !3021)
!3031 = !DILocation(line: 970, column: 6, scope: !3021)
!3032 = !DILocation(line: 971, column: 9, scope: !3021)
!3033 = !DILocation(line: 971, column: 14, scope: !3021)
!3034 = !DILocation(line: 971, column: 27, scope: !3021)
!3035 = !DILocation(line: 971, column: 2, scope: !3021)
!3036 = !DILocation(line: 972, column: 2, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 972, column: 2)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 972, column: 2)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 972, column: 2)
!3040 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 972, column: 2)
!3041 = !DILocation(line: 973, column: 1, scope: !3021)
!3042 = distinct !DISubprogram(name: "mtk_thermal_release_periodic_ts", scope: !3, file: !3, line: 975, type: !3043, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null, !2354, !110}
!3045 = !DILocalVariable(name: "mt", arg: 1, scope: !3042, file: !3, line: 975, type: !2354)
!3046 = !DILocation(line: 975, column: 65, scope: !3042)
!3047 = !DILocalVariable(name: "auxadc_base", arg: 2, scope: !3042, file: !3, line: 976, type: !110)
!3048 = !DILocation(line: 976, column: 24, scope: !3042)
!3049 = !DILocalVariable(name: "tmp", scope: !3042, file: !3, line: 978, type: !117)
!3050 = !DILocation(line: 978, column: 6, scope: !3042)
!3051 = !DILocation(line: 980, column: 16, scope: !3042)
!3052 = !DILocation(line: 980, column: 28, scope: !3042)
!3053 = !DILocation(line: 980, column: 2, scope: !3042)
!3054 = !DILocation(line: 981, column: 14, scope: !3042)
!3055 = !DILocation(line: 981, column: 18, scope: !3042)
!3056 = !DILocation(line: 981, column: 31, scope: !3042)
!3057 = !DILocation(line: 981, column: 2, scope: !3042)
!3058 = !DILocation(line: 982, column: 14, scope: !3042)
!3059 = !DILocation(line: 982, column: 18, scope: !3042)
!3060 = !DILocation(line: 982, column: 31, scope: !3042)
!3061 = !DILocation(line: 982, column: 8, scope: !3042)
!3062 = !DILocation(line: 982, column: 6, scope: !3042)
!3063 = !DILocation(line: 983, column: 10, scope: !3042)
!3064 = !DILocation(line: 983, column: 14, scope: !3042)
!3065 = !DILocation(line: 983, column: 27, scope: !3042)
!3066 = !DILocation(line: 983, column: 31, scope: !3042)
!3067 = !DILocation(line: 983, column: 44, scope: !3042)
!3068 = !DILocation(line: 983, column: 2, scope: !3042)
!3069 = !DILocation(line: 984, column: 1, scope: !3042)
!3070 = distinct !DISubprogram(name: "mtk_thermal_init_bank", scope: !3, file: !3, line: 705, type: !3071, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !2354, !117, !113, !113, !117}
!3073 = !DILocalVariable(name: "mt", arg: 1, scope: !3070, file: !3, line: 705, type: !2354)
!3074 = !DILocation(line: 705, column: 55, scope: !3070)
!3075 = !DILocalVariable(name: "num", arg: 2, scope: !3070, file: !3, line: 705, type: !117)
!3076 = !DILocation(line: 705, column: 63, scope: !3070)
!3077 = !DILocalVariable(name: "apmixed_phys_base", arg: 3, scope: !3070, file: !3, line: 706, type: !113)
!3078 = !DILocation(line: 706, column: 11, scope: !3070)
!3079 = !DILocalVariable(name: "auxadc_phys_base", arg: 4, scope: !3070, file: !3, line: 706, type: !113)
!3080 = !DILocation(line: 706, column: 34, scope: !3070)
!3081 = !DILocalVariable(name: "ctrl_id", arg: 5, scope: !3070, file: !3, line: 707, type: !117)
!3082 = !DILocation(line: 707, column: 11, scope: !3070)
!3083 = !DILocalVariable(name: "bank", scope: !3070, file: !3, line: 709, type: !3084)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!3085 = !DILocation(line: 709, column: 27, scope: !3070)
!3086 = !DILocation(line: 709, column: 35, scope: !3070)
!3087 = !DILocation(line: 709, column: 39, scope: !3070)
!3088 = !DILocation(line: 709, column: 45, scope: !3070)
!3089 = !DILocalVariable(name: "conf", scope: !3070, file: !3, line: 710, type: !2373)
!3090 = !DILocation(line: 710, column: 33, scope: !3070)
!3091 = !DILocation(line: 710, column: 40, scope: !3070)
!3092 = !DILocation(line: 710, column: 44, scope: !3070)
!3093 = !DILocalVariable(name: "i", scope: !3070, file: !3, line: 711, type: !117)
!3094 = !DILocation(line: 711, column: 6, scope: !3070)
!3095 = !DILocalVariable(name: "offset", scope: !3070, file: !3, line: 713, type: !117)
!3096 = !DILocation(line: 713, column: 6, scope: !3070)
!3097 = !DILocation(line: 713, column: 15, scope: !3070)
!3098 = !DILocation(line: 713, column: 19, scope: !3070)
!3099 = !DILocation(line: 713, column: 25, scope: !3070)
!3100 = !DILocation(line: 713, column: 43, scope: !3070)
!3101 = !DILocalVariable(name: "controller_base", scope: !3070, file: !3, line: 714, type: !110)
!3102 = !DILocation(line: 714, column: 16, scope: !3070)
!3103 = !DILocation(line: 714, column: 34, scope: !3070)
!3104 = !DILocation(line: 714, column: 38, scope: !3070)
!3105 = !DILocation(line: 714, column: 53, scope: !3070)
!3106 = !DILocation(line: 714, column: 51, scope: !3070)
!3107 = !DILocation(line: 716, column: 13, scope: !3070)
!3108 = !DILocation(line: 716, column: 2, scope: !3070)
!3109 = !DILocation(line: 716, column: 8, scope: !3070)
!3110 = !DILocation(line: 716, column: 11, scope: !3070)
!3111 = !DILocation(line: 717, column: 13, scope: !3070)
!3112 = !DILocation(line: 717, column: 2, scope: !3070)
!3113 = !DILocation(line: 717, column: 8, scope: !3070)
!3114 = !DILocation(line: 717, column: 11, scope: !3070)
!3115 = !DILocation(line: 719, column: 23, scope: !3070)
!3116 = !DILocation(line: 719, column: 2, scope: !3070)
!3117 = !DILocation(line: 722, column: 39, scope: !3070)
!3118 = !DILocation(line: 722, column: 55, scope: !3070)
!3119 = !DILocation(line: 722, column: 2, scope: !3070)
!3120 = !DILocation(line: 730, column: 4, scope: !3070)
!3121 = !DILocation(line: 730, column: 20, scope: !3070)
!3122 = !DILocation(line: 728, column: 2, scope: !3070)
!3123 = !DILocation(line: 734, column: 9, scope: !3070)
!3124 = !DILocation(line: 734, column: 25, scope: !3070)
!3125 = !DILocation(line: 733, column: 2, scope: !3070)
!3126 = !DILocation(line: 737, column: 14, scope: !3070)
!3127 = !DILocation(line: 737, column: 30, scope: !3070)
!3128 = !DILocation(line: 737, column: 2, scope: !3070)
!3129 = !DILocation(line: 740, column: 21, scope: !3070)
!3130 = !DILocation(line: 740, column: 37, scope: !3070)
!3131 = !DILocation(line: 740, column: 2, scope: !3070)
!3132 = !DILocation(line: 743, column: 14, scope: !3070)
!3133 = !DILocation(line: 743, column: 30, scope: !3070)
!3134 = !DILocation(line: 743, column: 2, scope: !3070)
!3135 = !DILocation(line: 744, column: 14, scope: !3070)
!3136 = !DILocation(line: 744, column: 30, scope: !3070)
!3137 = !DILocation(line: 744, column: 2, scope: !3070)
!3138 = !DILocation(line: 759, column: 9, scope: !3070)
!3139 = !DILocation(line: 759, column: 36, scope: !3070)
!3140 = !DILocation(line: 759, column: 52, scope: !3070)
!3141 = !DILocation(line: 759, column: 2, scope: !3070)
!3142 = !DILocation(line: 762, column: 9, scope: !3070)
!3143 = !DILocation(line: 762, column: 26, scope: !3070)
!3144 = !DILocation(line: 763, column: 9, scope: !3070)
!3145 = !DILocation(line: 763, column: 25, scope: !3070)
!3146 = !DILocation(line: 762, column: 2, scope: !3070)
!3147 = !DILocation(line: 765, column: 6, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 765, column: 6)
!3149 = !DILocation(line: 765, column: 10, scope: !3148)
!3150 = !DILocation(line: 765, column: 16, scope: !3148)
!3151 = !DILocation(line: 765, column: 24, scope: !3148)
!3152 = !DILocation(line: 765, column: 6, scope: !3070)
!3153 = !DILocation(line: 767, column: 10, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 765, column: 43)
!3155 = !DILocation(line: 767, column: 28, scope: !3154)
!3156 = !DILocation(line: 768, column: 10, scope: !3154)
!3157 = !DILocation(line: 768, column: 26, scope: !3154)
!3158 = !DILocation(line: 767, column: 3, scope: !3154)
!3159 = !DILocation(line: 769, column: 2, scope: !3154)
!3160 = !DILocation(line: 772, column: 9, scope: !3070)
!3161 = !DILocation(line: 772, column: 36, scope: !3070)
!3162 = !DILocation(line: 772, column: 52, scope: !3070)
!3163 = !DILocation(line: 772, column: 2, scope: !3070)
!3164 = !DILocation(line: 775, column: 9, scope: !3070)
!3165 = !DILocation(line: 775, column: 26, scope: !3070)
!3166 = !DILocation(line: 776, column: 9, scope: !3070)
!3167 = !DILocation(line: 776, column: 25, scope: !3070)
!3168 = !DILocation(line: 775, column: 2, scope: !3070)
!3169 = !DILocation(line: 779, column: 9, scope: !3070)
!3170 = !DILocation(line: 779, column: 28, scope: !3070)
!3171 = !DILocation(line: 779, column: 26, scope: !3070)
!3172 = !DILocation(line: 780, column: 9, scope: !3070)
!3173 = !DILocation(line: 780, column: 25, scope: !3070)
!3174 = !DILocation(line: 779, column: 2, scope: !3070)
!3175 = !DILocation(line: 783, column: 9, scope: !3070)
!3176 = !DILocation(line: 783, column: 28, scope: !3070)
!3177 = !DILocation(line: 783, column: 26, scope: !3070)
!3178 = !DILocation(line: 784, column: 9, scope: !3070)
!3179 = !DILocation(line: 784, column: 25, scope: !3070)
!3180 = !DILocation(line: 783, column: 2, scope: !3070)
!3181 = !DILocation(line: 787, column: 14, scope: !3070)
!3182 = !DILocation(line: 787, column: 30, scope: !3070)
!3183 = !DILocation(line: 787, column: 2, scope: !3070)
!3184 = !DILocation(line: 791, column: 9, scope: !3070)
!3185 = !DILocation(line: 791, column: 25, scope: !3070)
!3186 = !DILocation(line: 790, column: 2, scope: !3070)
!3187 = !DILocation(line: 794, column: 14, scope: !3070)
!3188 = !DILocation(line: 794, column: 30, scope: !3070)
!3189 = !DILocation(line: 794, column: 2, scope: !3070)
!3190 = !DILocation(line: 798, column: 3, scope: !3070)
!3191 = !DILocation(line: 798, column: 19, scope: !3070)
!3192 = !DILocation(line: 797, column: 2, scope: !3070)
!3193 = !DILocation(line: 800, column: 9, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 800, column: 2)
!3195 = !DILocation(line: 800, column: 7, scope: !3194)
!3196 = !DILocation(line: 800, column: 14, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 800, column: 2)
!3198 = !DILocation(line: 800, column: 18, scope: !3197)
!3199 = !DILocation(line: 800, column: 24, scope: !3197)
!3200 = !DILocation(line: 800, column: 34, scope: !3197)
!3201 = !DILocation(line: 800, column: 39, scope: !3197)
!3202 = !DILocation(line: 800, column: 16, scope: !3197)
!3203 = !DILocation(line: 800, column: 2, scope: !3194)
!3204 = !DILocation(line: 801, column: 10, scope: !3197)
!3205 = !DILocation(line: 801, column: 16, scope: !3197)
!3206 = !DILocation(line: 801, column: 34, scope: !3197)
!3207 = !DILocation(line: 801, column: 40, scope: !3197)
!3208 = !DILocation(line: 801, column: 50, scope: !3197)
!3209 = !DILocation(line: 801, column: 55, scope: !3197)
!3210 = !DILocation(line: 801, column: 63, scope: !3197)
!3211 = !DILocation(line: 802, column: 10, scope: !3197)
!3212 = !DILocation(line: 802, column: 14, scope: !3197)
!3213 = !DILocation(line: 802, column: 29, scope: !3197)
!3214 = !DILocation(line: 802, column: 35, scope: !3197)
!3215 = !DILocation(line: 802, column: 42, scope: !3197)
!3216 = !DILocation(line: 802, column: 27, scope: !3197)
!3217 = !DILocation(line: 801, column: 3, scope: !3197)
!3218 = !DILocation(line: 800, column: 53, scope: !3197)
!3219 = !DILocation(line: 800, column: 2, scope: !3197)
!3220 = distinct !{!3220, !3203, !3221}
!3221 = !DILocation(line: 802, column: 44, scope: !3194)
!3222 = !DILocation(line: 804, column: 15, scope: !3070)
!3223 = !DILocation(line: 804, column: 21, scope: !3070)
!3224 = !DILocation(line: 804, column: 31, scope: !3070)
!3225 = !DILocation(line: 804, column: 36, scope: !3070)
!3226 = !DILocation(line: 804, column: 12, scope: !3070)
!3227 = !DILocation(line: 804, column: 49, scope: !3070)
!3228 = !DILocation(line: 805, column: 9, scope: !3070)
!3229 = !DILocation(line: 805, column: 25, scope: !3070)
!3230 = !DILocation(line: 804, column: 2, scope: !3070)
!3231 = !DILocation(line: 809, column: 9, scope: !3070)
!3232 = !DILocation(line: 809, column: 25, scope: !3070)
!3233 = !DILocation(line: 807, column: 2, scope: !3070)
!3234 = !DILocation(line: 811, column: 23, scope: !3070)
!3235 = !DILocation(line: 811, column: 2, scope: !3070)
!3236 = !DILocation(line: 812, column: 1, scope: !3070)
!3237 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !165, file: !165, line: 236, type: !3238, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !171, !110}
!3240 = !DILocalVariable(name: "pdev", arg: 1, scope: !3237, file: !165, line: 236, type: !171)
!3241 = !DILocation(line: 236, column: 65, scope: !3237)
!3242 = !DILocalVariable(name: "data", arg: 2, scope: !3237, file: !165, line: 237, type: !110)
!3243 = !DILocation(line: 237, column: 12, scope: !3237)
!3244 = !DILocation(line: 239, column: 19, scope: !3237)
!3245 = !DILocation(line: 239, column: 25, scope: !3237)
!3246 = !DILocation(line: 239, column: 30, scope: !3237)
!3247 = !DILocation(line: 239, column: 2, scope: !3237)
!3248 = !DILocation(line: 240, column: 1, scope: !3237)
!3249 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !2362, file: !2362, line: 921, type: !3250, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !2360}
!3252 = !DILocalVariable(name: "clk", arg: 1, scope: !3249, file: !2362, line: 921, type: !2360)
!3253 = !DILocation(line: 921, column: 54, scope: !3249)
!3254 = !DILocation(line: 923, column: 14, scope: !3249)
!3255 = !DILocation(line: 923, column: 2, scope: !3249)
!3256 = !DILocation(line: 924, column: 16, scope: !3249)
!3257 = !DILocation(line: 924, column: 2, scope: !3249)
!3258 = !DILocation(line: 925, column: 1, scope: !3249)
!3259 = distinct !DISubprogram(name: "nvmem_cell_get", scope: !2854, file: !2854, line: 99, type: !3260, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!2852, !1676, !175}
!3262 = !DILocalVariable(name: "dev", arg: 1, scope: !3259, file: !2854, line: 99, type: !1676)
!3263 = !DILocation(line: 99, column: 64, scope: !3259)
!3264 = !DILocalVariable(name: "id", arg: 2, scope: !3259, file: !2854, line: 100, type: !175)
!3265 = !DILocation(line: 100, column: 19, scope: !3259)
!3266 = !DILocation(line: 102, column: 9, scope: !3259)
!3267 = !DILocation(line: 102, column: 2, scope: !3259)
!3268 = distinct !DISubprogram(name: "nvmem_cell_read", scope: !2854, file: !2854, line: 120, type: !3269, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!110, !2852, !3271}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3272 = !DILocalVariable(name: "cell", arg: 1, scope: !3268, file: !2854, line: 120, type: !2852)
!3273 = !DILocation(line: 120, column: 56, scope: !3268)
!3274 = !DILocalVariable(name: "len", arg: 2, scope: !3268, file: !2854, line: 120, type: !3271)
!3275 = !DILocation(line: 120, column: 70, scope: !3268)
!3276 = !DILocation(line: 122, column: 9, scope: !3268)
!3277 = !DILocation(line: 122, column: 2, scope: !3268)
!3278 = distinct !DISubprogram(name: "nvmem_cell_put", scope: !2854, file: !2854, line: 116, type: !3279, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !2852}
!3281 = !DILocalVariable(name: "cell", arg: 1, scope: !3278, file: !2854, line: 116, type: !2852)
!3282 = !DILocation(line: 116, column: 54, scope: !3278)
!3283 = !DILocation(line: 118, column: 1, scope: !3278)
!3284 = distinct !DISubprogram(name: "mtk_thermal_extract_efuse_v1", scope: !3, file: !3, line: 826, type: !3285, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!117, !2354, !112}
!3287 = !DILocalVariable(name: "mt", arg: 1, scope: !3284, file: !3, line: 826, type: !2354)
!3288 = !DILocation(line: 826, column: 61, scope: !3284)
!3289 = !DILocalVariable(name: "buf", arg: 2, scope: !3284, file: !3, line: 826, type: !112)
!3290 = !DILocation(line: 826, column: 70, scope: !3284)
!3291 = !DILocalVariable(name: "i", scope: !3284, file: !3, line: 828, type: !117)
!3292 = !DILocation(line: 828, column: 6, scope: !3284)
!3293 = !DILocation(line: 830, column: 8, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 830, column: 6)
!3295 = !DILocation(line: 830, column: 15, scope: !3294)
!3296 = !DILocation(line: 830, column: 6, scope: !3284)
!3297 = !DILocation(line: 831, column: 3, scope: !3294)
!3298 = !DILocation(line: 833, column: 15, scope: !3284)
!3299 = !DILocation(line: 833, column: 2, scope: !3284)
!3300 = !DILocation(line: 833, column: 6, scope: !3284)
!3301 = !DILocation(line: 833, column: 13, scope: !3284)
!3302 = !DILocation(line: 835, column: 9, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 835, column: 2)
!3304 = !DILocation(line: 835, column: 7, scope: !3303)
!3305 = !DILocation(line: 835, column: 14, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 835, column: 2)
!3307 = !DILocation(line: 835, column: 18, scope: !3306)
!3308 = !DILocation(line: 835, column: 22, scope: !3306)
!3309 = !DILocation(line: 835, column: 28, scope: !3306)
!3310 = !DILocation(line: 835, column: 16, scope: !3306)
!3311 = !DILocation(line: 835, column: 2, scope: !3303)
!3312 = !DILocation(line: 836, column: 11, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 835, column: 46)
!3314 = !DILocation(line: 836, column: 15, scope: !3313)
!3315 = !DILocation(line: 836, column: 21, scope: !3313)
!3316 = !DILocation(line: 836, column: 31, scope: !3313)
!3317 = !DILocation(line: 836, column: 3, scope: !3313)
!3318 = !DILocation(line: 838, column: 20, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 836, column: 35)
!3320 = !DILocation(line: 838, column: 4, scope: !3319)
!3321 = !DILocation(line: 838, column: 8, scope: !3319)
!3322 = !DILocation(line: 838, column: 18, scope: !3319)
!3323 = !DILocation(line: 839, column: 4, scope: !3319)
!3324 = !DILocation(line: 841, column: 20, scope: !3319)
!3325 = !DILocation(line: 841, column: 4, scope: !3319)
!3326 = !DILocation(line: 841, column: 8, scope: !3319)
!3327 = !DILocation(line: 841, column: 18, scope: !3319)
!3328 = !DILocation(line: 842, column: 4, scope: !3319)
!3329 = !DILocation(line: 844, column: 20, scope: !3319)
!3330 = !DILocation(line: 844, column: 4, scope: !3319)
!3331 = !DILocation(line: 844, column: 8, scope: !3319)
!3332 = !DILocation(line: 844, column: 18, scope: !3319)
!3333 = !DILocation(line: 845, column: 4, scope: !3319)
!3334 = !DILocation(line: 847, column: 20, scope: !3319)
!3335 = !DILocation(line: 847, column: 4, scope: !3319)
!3336 = !DILocation(line: 847, column: 8, scope: !3319)
!3337 = !DILocation(line: 847, column: 18, scope: !3319)
!3338 = !DILocation(line: 848, column: 4, scope: !3319)
!3339 = !DILocation(line: 850, column: 20, scope: !3319)
!3340 = !DILocation(line: 850, column: 4, scope: !3319)
!3341 = !DILocation(line: 850, column: 8, scope: !3319)
!3342 = !DILocation(line: 850, column: 18, scope: !3319)
!3343 = !DILocation(line: 851, column: 4, scope: !3319)
!3344 = !DILocation(line: 854, column: 5, scope: !3319)
!3345 = !DILocation(line: 853, column: 4, scope: !3319)
!3346 = !DILocation(line: 853, column: 8, scope: !3319)
!3347 = !DILocation(line: 853, column: 20, scope: !3319)
!3348 = !DILocation(line: 855, column: 4, scope: !3319)
!3349 = !DILocation(line: 857, column: 4, scope: !3319)
!3350 = !DILocation(line: 859, column: 2, scope: !3313)
!3351 = !DILocation(line: 835, column: 42, scope: !3306)
!3352 = !DILocation(line: 835, column: 2, scope: !3306)
!3353 = distinct !{!3353, !3311, !3354}
!3354 = !DILocation(line: 859, column: 2, scope: !3303)
!3355 = !DILocation(line: 861, column: 18, scope: !3284)
!3356 = !DILocation(line: 861, column: 2, scope: !3284)
!3357 = !DILocation(line: 861, column: 6, scope: !3284)
!3358 = !DILocation(line: 861, column: 16, scope: !3284)
!3359 = !DILocation(line: 862, column: 6, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 862, column: 6)
!3361 = !DILocation(line: 863, column: 6, scope: !3360)
!3362 = !DILocation(line: 862, column: 31, scope: !3360)
!3363 = !DILocation(line: 862, column: 6, scope: !3284)
!3364 = !DILocation(line: 864, column: 18, scope: !3360)
!3365 = !DILocation(line: 864, column: 17, scope: !3360)
!3366 = !DILocation(line: 864, column: 3, scope: !3360)
!3367 = !DILocation(line: 864, column: 7, scope: !3360)
!3368 = !DILocation(line: 864, column: 15, scope: !3360)
!3369 = !DILocation(line: 866, column: 17, scope: !3360)
!3370 = !DILocation(line: 866, column: 3, scope: !3360)
!3371 = !DILocation(line: 866, column: 7, scope: !3360)
!3372 = !DILocation(line: 866, column: 15, scope: !3360)
!3373 = !DILocation(line: 868, column: 2, scope: !3284)
!3374 = !DILocation(line: 869, column: 1, scope: !3284)
!3375 = distinct !DISubprogram(name: "mtk_thermal_extract_efuse_v2", scope: !3, file: !3, line: 871, type: !3285, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3376 = !DILocalVariable(name: "mt", arg: 1, scope: !3375, file: !3, line: 871, type: !2354)
!3377 = !DILocation(line: 871, column: 61, scope: !3375)
!3378 = !DILocalVariable(name: "buf", arg: 2, scope: !3375, file: !3, line: 871, type: !112)
!3379 = !DILocation(line: 871, column: 70, scope: !3375)
!3380 = !DILocation(line: 873, column: 7, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 873, column: 6)
!3382 = !DILocation(line: 873, column: 6, scope: !3375)
!3383 = !DILocation(line: 874, column: 3, scope: !3381)
!3384 = !DILocation(line: 876, column: 15, scope: !3375)
!3385 = !DILocation(line: 876, column: 2, scope: !3375)
!3386 = !DILocation(line: 876, column: 6, scope: !3375)
!3387 = !DILocation(line: 876, column: 13, scope: !3375)
!3388 = !DILocation(line: 877, column: 15, scope: !3375)
!3389 = !DILocation(line: 877, column: 2, scope: !3375)
!3390 = !DILocation(line: 877, column: 6, scope: !3375)
!3391 = !DILocation(line: 877, column: 13, scope: !3375)
!3392 = !DILocation(line: 878, column: 18, scope: !3375)
!3393 = !DILocation(line: 878, column: 2, scope: !3375)
!3394 = !DILocation(line: 878, column: 6, scope: !3375)
!3395 = !DILocation(line: 878, column: 16, scope: !3375)
!3396 = !DILocation(line: 879, column: 16, scope: !3375)
!3397 = !DILocation(line: 879, column: 2, scope: !3375)
!3398 = !DILocation(line: 879, column: 6, scope: !3375)
!3399 = !DILocation(line: 879, column: 14, scope: !3375)
!3400 = !DILocation(line: 880, column: 18, scope: !3375)
!3401 = !DILocation(line: 880, column: 2, scope: !3375)
!3402 = !DILocation(line: 880, column: 6, scope: !3375)
!3403 = !DILocation(line: 880, column: 16, scope: !3375)
!3404 = !DILocation(line: 881, column: 18, scope: !3375)
!3405 = !DILocation(line: 881, column: 2, scope: !3375)
!3406 = !DILocation(line: 881, column: 6, scope: !3375)
!3407 = !DILocation(line: 881, column: 16, scope: !3375)
!3408 = !DILocation(line: 882, column: 20, scope: !3375)
!3409 = !DILocation(line: 882, column: 2, scope: !3375)
!3410 = !DILocation(line: 882, column: 6, scope: !3375)
!3411 = !DILocation(line: 882, column: 18, scope: !3375)
!3412 = !DILocation(line: 883, column: 21, scope: !3375)
!3413 = !DILocation(line: 883, column: 2, scope: !3375)
!3414 = !DILocation(line: 883, column: 6, scope: !3375)
!3415 = !DILocation(line: 883, column: 19, scope: !3375)
!3416 = !DILocation(line: 885, column: 2, scope: !3375)
!3417 = !DILocation(line: 886, column: 1, scope: !3375)
!3418 = distinct !DISubprogram(name: "ERR_PTR", scope: !2829, file: !2829, line: 24, type: !3419, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!110, !111}
!3421 = !DILocalVariable(name: "error", arg: 1, scope: !3418, file: !2829, line: 24, type: !111)
!3422 = !DILocation(line: 24, column: 48, scope: !3418)
!3423 = !DILocation(line: 26, column: 18, scope: !3418)
!3424 = !DILocation(line: 26, column: 9, scope: !3418)
!3425 = !DILocation(line: 26, column: 2, scope: !3418)
!3426 = distinct !DISubprogram(name: "readl", scope: !3427, file: !3427, line: 59, type: !3428, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3427 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!7, !3430}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3432)
!3432 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3433 = !DILocalVariable(name: "addr", arg: 1, scope: !3426, file: !3427, line: 59, type: !3430)
!3434 = !DILocation(line: 59, column: 1, scope: !3426)
!3435 = !DILocalVariable(name: "ret", scope: !3426, file: !3427, line: 59, type: !7)
!3436 = !{i32 -2144008154}
!3437 = distinct !DISubprogram(name: "writel", scope: !3427, file: !3427, line: 67, type: !3438, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !7, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3441 = !DILocalVariable(name: "val", arg: 1, scope: !3437, file: !3427, line: 67, type: !7)
!3442 = !DILocation(line: 67, column: 1, scope: !3437)
!3443 = !DILocalVariable(name: "addr", arg: 2, scope: !3437, file: !3427, line: 67, type: !3440)
!3444 = !{i32 -2144005761}
!3445 = distinct !DISubprogram(name: "mtk_thermal_get_bank", scope: !3, file: !3, line: 611, type: !3446, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !3084}
!3448 = !DILocalVariable(name: "bank", arg: 1, scope: !3445, file: !3, line: 611, type: !3084)
!3449 = !DILocation(line: 611, column: 59, scope: !3445)
!3450 = !DILocalVariable(name: "mt", scope: !3445, file: !3, line: 613, type: !2354)
!3451 = !DILocation(line: 613, column: 22, scope: !3445)
!3452 = !DILocation(line: 613, column: 27, scope: !3445)
!3453 = !DILocation(line: 613, column: 33, scope: !3445)
!3454 = !DILocalVariable(name: "val", scope: !3445, file: !3, line: 614, type: !113)
!3455 = !DILocation(line: 614, column: 6, scope: !3445)
!3456 = !DILocation(line: 616, column: 6, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 616, column: 6)
!3458 = !DILocation(line: 616, column: 10, scope: !3457)
!3459 = !DILocation(line: 616, column: 16, scope: !3457)
!3460 = !DILocation(line: 616, column: 6, scope: !3445)
!3461 = !DILocation(line: 617, column: 15, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 616, column: 34)
!3463 = !DILocation(line: 617, column: 19, scope: !3462)
!3464 = !DILocation(line: 617, column: 3, scope: !3462)
!3465 = !DILocation(line: 619, column: 15, scope: !3462)
!3466 = !DILocation(line: 619, column: 19, scope: !3462)
!3467 = !DILocation(line: 619, column: 32, scope: !3462)
!3468 = !DILocation(line: 619, column: 9, scope: !3462)
!3469 = !DILocation(line: 619, column: 7, scope: !3462)
!3470 = !DILocation(line: 620, column: 7, scope: !3462)
!3471 = !DILocation(line: 621, column: 10, scope: !3462)
!3472 = !DILocation(line: 621, column: 16, scope: !3462)
!3473 = !DILocation(line: 621, column: 7, scope: !3462)
!3474 = !DILocation(line: 622, column: 10, scope: !3462)
!3475 = !DILocation(line: 622, column: 15, scope: !3462)
!3476 = !DILocation(line: 622, column: 19, scope: !3462)
!3477 = !DILocation(line: 622, column: 32, scope: !3462)
!3478 = !DILocation(line: 622, column: 3, scope: !3462)
!3479 = !DILocation(line: 623, column: 2, scope: !3462)
!3480 = !DILocation(line: 624, column: 1, scope: !3445)
!3481 = distinct !DISubprogram(name: "mtk_thermal_put_bank", scope: !3, file: !3, line: 632, type: !3446, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3482 = !DILocalVariable(name: "bank", arg: 1, scope: !3481, file: !3, line: 632, type: !3084)
!3483 = !DILocation(line: 632, column: 59, scope: !3481)
!3484 = !DILocalVariable(name: "mt", scope: !3481, file: !3, line: 634, type: !2354)
!3485 = !DILocation(line: 634, column: 22, scope: !3481)
!3486 = !DILocation(line: 634, column: 27, scope: !3481)
!3487 = !DILocation(line: 634, column: 33, scope: !3481)
!3488 = !DILocation(line: 636, column: 6, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 636, column: 6)
!3490 = !DILocation(line: 636, column: 10, scope: !3489)
!3491 = !DILocation(line: 636, column: 16, scope: !3489)
!3492 = !DILocation(line: 636, column: 6, scope: !3481)
!3493 = !DILocation(line: 637, column: 17, scope: !3489)
!3494 = !DILocation(line: 637, column: 21, scope: !3489)
!3495 = !DILocation(line: 637, column: 3, scope: !3489)
!3496 = !DILocation(line: 638, column: 1, scope: !3481)
!3497 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3498, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null, !1676, !110}
!3500 = !DILocalVariable(name: "dev", arg: 1, scope: !3497, file: !30, line: 660, type: !1676)
!3501 = !DILocation(line: 660, column: 51, scope: !3497)
!3502 = !DILocalVariable(name: "data", arg: 2, scope: !3497, file: !30, line: 660, type: !110)
!3503 = !DILocation(line: 660, column: 62, scope: !3497)
!3504 = !DILocation(line: 662, column: 21, scope: !3497)
!3505 = !DILocation(line: 662, column: 2, scope: !3497)
!3506 = !DILocation(line: 662, column: 7, scope: !3497)
!3507 = !DILocation(line: 662, column: 19, scope: !3497)
!3508 = !DILocation(line: 663, column: 1, scope: !3497)
!3509 = distinct !DISubprogram(name: "mtk_read_temp", scope: !3, file: !3, line: 680, type: !2203, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3510 = !DILocalVariable(name: "data", arg: 1, scope: !3509, file: !3, line: 680, type: !110)
!3511 = !DILocation(line: 680, column: 32, scope: !3509)
!3512 = !DILocalVariable(name: "temperature", arg: 2, scope: !3509, file: !3, line: 680, type: !823)
!3513 = !DILocation(line: 680, column: 43, scope: !3509)
!3514 = !DILocalVariable(name: "mt", scope: !3509, file: !3, line: 682, type: !2354)
!3515 = !DILocation(line: 682, column: 22, scope: !3509)
!3516 = !DILocation(line: 682, column: 27, scope: !3509)
!3517 = !DILocalVariable(name: "i", scope: !3509, file: !3, line: 683, type: !117)
!3518 = !DILocation(line: 683, column: 6, scope: !3509)
!3519 = !DILocalVariable(name: "tempmax", scope: !3509, file: !3, line: 684, type: !117)
!3520 = !DILocation(line: 684, column: 6, scope: !3509)
!3521 = !DILocation(line: 686, column: 9, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 686, column: 2)
!3523 = !DILocation(line: 686, column: 7, scope: !3522)
!3524 = !DILocation(line: 686, column: 14, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 686, column: 2)
!3526 = !DILocation(line: 686, column: 18, scope: !3525)
!3527 = !DILocation(line: 686, column: 22, scope: !3525)
!3528 = !DILocation(line: 686, column: 28, scope: !3525)
!3529 = !DILocation(line: 686, column: 16, scope: !3525)
!3530 = !DILocation(line: 686, column: 2, scope: !3522)
!3531 = !DILocalVariable(name: "bank", scope: !3532, file: !3, line: 687, type: !3084)
!3532 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 686, column: 44)
!3533 = !DILocation(line: 687, column: 28, scope: !3532)
!3534 = !DILocation(line: 687, column: 36, scope: !3532)
!3535 = !DILocation(line: 687, column: 40, scope: !3532)
!3536 = !DILocation(line: 687, column: 46, scope: !3532)
!3537 = !DILocation(line: 689, column: 24, scope: !3532)
!3538 = !DILocation(line: 689, column: 3, scope: !3532)
!3539 = !DILocalVariable(name: "__UNIQUE_ID___x161", scope: !3540, file: !3, line: 691, type: !117)
!3540 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 691, column: 13)
!3541 = !DILocation(line: 691, column: 13, scope: !3540)
!3542 = !DILocalVariable(name: "__UNIQUE_ID___y162", scope: !3540, file: !3, line: 691, type: !117)
!3543 = !DILocation(line: 691, column: 11, scope: !3532)
!3544 = !DILocation(line: 693, column: 24, scope: !3532)
!3545 = !DILocation(line: 693, column: 3, scope: !3532)
!3546 = !DILocation(line: 694, column: 2, scope: !3532)
!3547 = !DILocation(line: 686, column: 40, scope: !3525)
!3548 = !DILocation(line: 686, column: 2, scope: !3525)
!3549 = distinct !{!3549, !3530, !3550}
!3550 = !DILocation(line: 694, column: 2, scope: !3522)
!3551 = !DILocation(line: 696, column: 17, scope: !3509)
!3552 = !DILocation(line: 696, column: 3, scope: !3509)
!3553 = !DILocation(line: 696, column: 15, scope: !3509)
!3554 = !DILocation(line: 698, column: 2, scope: !3509)
!3555 = distinct !DISubprogram(name: "mtk_thermal_bank_temperature", scope: !3, file: !3, line: 647, type: !3556, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!117, !3084}
!3558 = !DILocalVariable(name: "bank", arg: 1, scope: !3555, file: !3, line: 647, type: !3084)
!3559 = !DILocation(line: 647, column: 66, scope: !3555)
!3560 = !DILocalVariable(name: "mt", scope: !3555, file: !3, line: 649, type: !2354)
!3561 = !DILocation(line: 649, column: 22, scope: !3555)
!3562 = !DILocation(line: 649, column: 27, scope: !3555)
!3563 = !DILocation(line: 649, column: 33, scope: !3555)
!3564 = !DILocalVariable(name: "conf", scope: !3555, file: !3, line: 650, type: !2373)
!3565 = !DILocation(line: 650, column: 33, scope: !3555)
!3566 = !DILocation(line: 650, column: 40, scope: !3555)
!3567 = !DILocation(line: 650, column: 44, scope: !3555)
!3568 = !DILocalVariable(name: "i", scope: !3555, file: !3, line: 651, type: !117)
!3569 = !DILocation(line: 651, column: 6, scope: !3555)
!3570 = !DILocalVariable(name: "temp", scope: !3555, file: !3, line: 651, type: !117)
!3571 = !DILocation(line: 651, column: 9, scope: !3555)
!3572 = !DILocalVariable(name: "max", scope: !3555, file: !3, line: 651, type: !117)
!3573 = !DILocation(line: 651, column: 25, scope: !3555)
!3574 = !DILocalVariable(name: "raw", scope: !3555, file: !3, line: 652, type: !113)
!3575 = !DILocation(line: 652, column: 6, scope: !3555)
!3576 = !DILocation(line: 654, column: 9, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 654, column: 2)
!3578 = !DILocation(line: 654, column: 7, scope: !3577)
!3579 = !DILocation(line: 654, column: 14, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 654, column: 2)
!3581 = !DILocation(line: 654, column: 18, scope: !3580)
!3582 = !DILocation(line: 654, column: 24, scope: !3580)
!3583 = !DILocation(line: 654, column: 34, scope: !3580)
!3584 = !DILocation(line: 654, column: 40, scope: !3580)
!3585 = !DILocation(line: 654, column: 44, scope: !3580)
!3586 = !DILocation(line: 654, column: 16, scope: !3580)
!3587 = !DILocation(line: 654, column: 2, scope: !3577)
!3588 = !DILocation(line: 655, column: 15, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 654, column: 62)
!3590 = !DILocation(line: 655, column: 19, scope: !3589)
!3591 = !DILocation(line: 655, column: 34, scope: !3589)
!3592 = !DILocation(line: 655, column: 40, scope: !3589)
!3593 = !DILocation(line: 655, column: 44, scope: !3589)
!3594 = !DILocation(line: 655, column: 32, scope: !3589)
!3595 = !DILocation(line: 655, column: 9, scope: !3589)
!3596 = !DILocation(line: 655, column: 7, scope: !3589)
!3597 = !DILocation(line: 657, column: 7, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 657, column: 7)
!3599 = !DILocation(line: 657, column: 11, scope: !3598)
!3600 = !DILocation(line: 657, column: 17, scope: !3598)
!3601 = !DILocation(line: 657, column: 25, scope: !3598)
!3602 = !DILocation(line: 657, column: 7, scope: !3589)
!3603 = !DILocation(line: 659, column: 5, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 657, column: 44)
!3605 = !DILocation(line: 659, column: 9, scope: !3604)
!3606 = !DILocation(line: 659, column: 15, scope: !3604)
!3607 = !DILocation(line: 659, column: 25, scope: !3604)
!3608 = !DILocation(line: 659, column: 31, scope: !3604)
!3609 = !DILocation(line: 659, column: 35, scope: !3604)
!3610 = !DILocation(line: 659, column: 43, scope: !3604)
!3611 = !DILocation(line: 659, column: 47, scope: !3604)
!3612 = !DILocation(line: 658, column: 11, scope: !3604)
!3613 = !DILocation(line: 658, column: 9, scope: !3604)
!3614 = !DILocation(line: 660, column: 3, scope: !3604)
!3615 = !DILocation(line: 662, column: 5, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 660, column: 10)
!3617 = !DILocation(line: 662, column: 9, scope: !3616)
!3618 = !DILocation(line: 662, column: 15, scope: !3616)
!3619 = !DILocation(line: 662, column: 25, scope: !3616)
!3620 = !DILocation(line: 662, column: 31, scope: !3616)
!3621 = !DILocation(line: 662, column: 35, scope: !3616)
!3622 = !DILocation(line: 662, column: 43, scope: !3616)
!3623 = !DILocation(line: 662, column: 47, scope: !3616)
!3624 = !DILocation(line: 661, column: 11, scope: !3616)
!3625 = !DILocation(line: 661, column: 9, scope: !3616)
!3626 = !DILocation(line: 670, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 670, column: 7)
!3628 = !DILocation(line: 670, column: 12, scope: !3627)
!3629 = !DILocation(line: 670, column: 7, scope: !3589)
!3630 = !DILocation(line: 671, column: 9, scope: !3627)
!3631 = !DILocation(line: 671, column: 4, scope: !3627)
!3632 = !DILocation(line: 673, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 673, column: 7)
!3634 = !DILocation(line: 673, column: 14, scope: !3633)
!3635 = !DILocation(line: 673, column: 12, scope: !3633)
!3636 = !DILocation(line: 673, column: 7, scope: !3589)
!3637 = !DILocation(line: 674, column: 10, scope: !3633)
!3638 = !DILocation(line: 674, column: 8, scope: !3633)
!3639 = !DILocation(line: 674, column: 4, scope: !3633)
!3640 = !DILocation(line: 675, column: 2, scope: !3589)
!3641 = !DILocation(line: 654, column: 58, scope: !3580)
!3642 = !DILocation(line: 654, column: 2, scope: !3580)
!3643 = distinct !{!3643, !3587, !3644}
!3644 = !DILocation(line: 675, column: 2, scope: !3577)
!3645 = !DILocation(line: 677, column: 9, scope: !3555)
!3646 = !DILocation(line: 677, column: 2, scope: !3555)
!3647 = distinct !DISubprogram(name: "raw_to_mcelsius_v1", scope: !3, file: !3, line: 559, type: !3648, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!117, !2354, !117, !736}
!3650 = !DILocalVariable(name: "mt", arg: 1, scope: !3647, file: !3, line: 559, type: !2354)
!3651 = !DILocation(line: 559, column: 51, scope: !3647)
!3652 = !DILocalVariable(name: "sensno", arg: 2, scope: !3647, file: !3, line: 559, type: !117)
!3653 = !DILocation(line: 559, column: 59, scope: !3647)
!3654 = !DILocalVariable(name: "raw", arg: 3, scope: !3647, file: !3, line: 559, type: !736)
!3655 = !DILocation(line: 559, column: 71, scope: !3647)
!3656 = !DILocalVariable(name: "tmp", scope: !3647, file: !3, line: 561, type: !736)
!3657 = !DILocation(line: 561, column: 6, scope: !3647)
!3658 = !DILocation(line: 563, column: 6, scope: !3647)
!3659 = !DILocation(line: 565, column: 6, scope: !3647)
!3660 = !DILocation(line: 566, column: 9, scope: !3647)
!3661 = !DILocation(line: 566, column: 13, scope: !3647)
!3662 = !DILocation(line: 566, column: 19, scope: !3647)
!3663 = !DILocation(line: 566, column: 30, scope: !3647)
!3664 = !DILocation(line: 566, column: 34, scope: !3647)
!3665 = !DILocation(line: 566, column: 28, scope: !3647)
!3666 = !DILocation(line: 566, column: 6, scope: !3647)
!3667 = !DILocation(line: 567, column: 17, scope: !3647)
!3668 = !DILocation(line: 567, column: 21, scope: !3647)
!3669 = !DILocation(line: 567, column: 15, scope: !3647)
!3670 = !DILocation(line: 567, column: 6, scope: !3647)
!3671 = !DILocation(line: 568, column: 9, scope: !3647)
!3672 = !DILocation(line: 568, column: 15, scope: !3647)
!3673 = !DILocation(line: 568, column: 19, scope: !3647)
!3674 = !DILocation(line: 568, column: 23, scope: !3647)
!3675 = !DILocation(line: 568, column: 13, scope: !3647)
!3676 = !DILocation(line: 568, column: 31, scope: !3647)
!3677 = !DILocation(line: 568, column: 6, scope: !3647)
!3678 = !DILocation(line: 569, column: 6, scope: !3647)
!3679 = !DILocation(line: 571, column: 9, scope: !3647)
!3680 = !DILocation(line: 571, column: 13, scope: !3647)
!3681 = !DILocation(line: 571, column: 23, scope: !3647)
!3682 = !DILocation(line: 571, column: 31, scope: !3647)
!3683 = !DILocation(line: 571, column: 29, scope: !3647)
!3684 = !DILocation(line: 571, column: 2, scope: !3647)
!3685 = distinct !DISubprogram(name: "raw_to_mcelsius_v2", scope: !3, file: !3, line: 574, type: !3648, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3686 = !DILocalVariable(name: "mt", arg: 1, scope: !3685, file: !3, line: 574, type: !2354)
!3687 = !DILocation(line: 574, column: 51, scope: !3685)
!3688 = !DILocalVariable(name: "sensno", arg: 2, scope: !3685, file: !3, line: 574, type: !117)
!3689 = !DILocation(line: 574, column: 59, scope: !3685)
!3690 = !DILocalVariable(name: "raw", arg: 3, scope: !3685, file: !3, line: 574, type: !736)
!3691 = !DILocation(line: 574, column: 71, scope: !3685)
!3692 = !DILocalVariable(name: "format_1", scope: !3685, file: !3, line: 576, type: !736)
!3693 = !DILocation(line: 576, column: 6, scope: !3685)
!3694 = !DILocalVariable(name: "format_2", scope: !3685, file: !3, line: 577, type: !736)
!3695 = !DILocation(line: 577, column: 6, scope: !3685)
!3696 = !DILocalVariable(name: "g_oe", scope: !3685, file: !3, line: 578, type: !736)
!3697 = !DILocation(line: 578, column: 6, scope: !3685)
!3698 = !DILocalVariable(name: "g_gain", scope: !3685, file: !3, line: 579, type: !736)
!3699 = !DILocation(line: 579, column: 6, scope: !3685)
!3700 = !DILocalVariable(name: "g_x_roomt", scope: !3685, file: !3, line: 580, type: !736)
!3701 = !DILocation(line: 580, column: 6, scope: !3685)
!3702 = !DILocalVariable(name: "tmp", scope: !3685, file: !3, line: 581, type: !736)
!3703 = !DILocation(line: 581, column: 6, scope: !3685)
!3704 = !DILocation(line: 583, column: 6, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 583, column: 6)
!3706 = !DILocation(line: 583, column: 10, scope: !3705)
!3707 = !DILocation(line: 583, column: 6, scope: !3685)
!3708 = !DILocation(line: 584, column: 3, scope: !3705)
!3709 = !DILocation(line: 586, column: 6, scope: !3685)
!3710 = !DILocation(line: 587, column: 22, scope: !3685)
!3711 = !DILocation(line: 587, column: 26, scope: !3685)
!3712 = !DILocation(line: 587, column: 33, scope: !3685)
!3713 = !DILocation(line: 587, column: 40, scope: !3685)
!3714 = !DILocation(line: 587, column: 49, scope: !3685)
!3715 = !DILocation(line: 587, column: 17, scope: !3685)
!3716 = !DILocation(line: 587, column: 9, scope: !3685)
!3717 = !DILocation(line: 588, column: 9, scope: !3685)
!3718 = !DILocation(line: 588, column: 13, scope: !3685)
!3719 = !DILocation(line: 588, column: 20, scope: !3685)
!3720 = !DILocation(line: 588, column: 7, scope: !3685)
!3721 = !DILocation(line: 589, column: 13, scope: !3685)
!3722 = !DILocation(line: 589, column: 17, scope: !3685)
!3723 = !DILocation(line: 589, column: 27, scope: !3685)
!3724 = !DILocation(line: 589, column: 36, scope: !3685)
!3725 = !DILocation(line: 589, column: 34, scope: !3685)
!3726 = !DILocation(line: 589, column: 11, scope: !3685)
!3727 = !DILocation(line: 590, column: 14, scope: !3685)
!3728 = !DILocation(line: 590, column: 18, scope: !3685)
!3729 = !DILocation(line: 590, column: 28, scope: !3685)
!3730 = !DILocation(line: 590, column: 34, scope: !3685)
!3731 = !DILocation(line: 590, column: 11, scope: !3685)
!3732 = !DILocation(line: 591, column: 17, scope: !3685)
!3733 = !DILocation(line: 591, column: 26, scope: !3685)
!3734 = !DILocation(line: 591, column: 35, scope: !3685)
!3735 = !DILocation(line: 591, column: 42, scope: !3685)
!3736 = !DILocation(line: 591, column: 53, scope: !3685)
!3737 = !DILocation(line: 591, column: 51, scope: !3685)
!3738 = !DILocation(line: 591, column: 12, scope: !3685)
!3739 = !DILocation(line: 593, column: 13, scope: !3685)
!3740 = !DILocation(line: 593, column: 19, scope: !3685)
!3741 = !DILocation(line: 593, column: 17, scope: !3685)
!3742 = !DILocation(line: 593, column: 25, scope: !3685)
!3743 = !DILocation(line: 593, column: 34, scope: !3685)
!3744 = !DILocation(line: 593, column: 41, scope: !3685)
!3745 = !DILocation(line: 593, column: 52, scope: !3685)
!3746 = !DILocation(line: 593, column: 50, scope: !3685)
!3747 = !DILocation(line: 593, column: 62, scope: !3685)
!3748 = !DILocation(line: 593, column: 60, scope: !3685)
!3749 = !DILocation(line: 593, column: 6, scope: !3685)
!3750 = !DILocation(line: 594, column: 8, scope: !3685)
!3751 = !DILocation(line: 594, column: 12, scope: !3685)
!3752 = !DILocation(line: 594, column: 17, scope: !3685)
!3753 = !DILocation(line: 594, column: 23, scope: !3685)
!3754 = !DILocation(line: 594, column: 6, scope: !3685)
!3755 = !DILocation(line: 596, column: 6, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 596, column: 6)
!3757 = !DILocation(line: 596, column: 10, scope: !3756)
!3758 = !DILocation(line: 596, column: 23, scope: !3756)
!3759 = !DILocation(line: 596, column: 6, scope: !3685)
!3760 = !DILocation(line: 597, column: 9, scope: !3756)
!3761 = !DILocation(line: 597, column: 22, scope: !3756)
!3762 = !DILocation(line: 597, column: 26, scope: !3756)
!3763 = !DILocation(line: 597, column: 20, scope: !3756)
!3764 = !DILocation(line: 597, column: 13, scope: !3756)
!3765 = !DILocation(line: 597, column: 7, scope: !3756)
!3766 = !DILocation(line: 597, column: 3, scope: !3756)
!3767 = !DILocation(line: 599, column: 9, scope: !3756)
!3768 = !DILocation(line: 599, column: 22, scope: !3756)
!3769 = !DILocation(line: 599, column: 26, scope: !3756)
!3770 = !DILocation(line: 599, column: 20, scope: !3756)
!3771 = !DILocation(line: 599, column: 13, scope: !3756)
!3772 = !DILocation(line: 599, column: 7, scope: !3756)
!3773 = !DILocation(line: 601, column: 10, scope: !3685)
!3774 = !DILocation(line: 601, column: 21, scope: !3685)
!3775 = !DILocation(line: 601, column: 19, scope: !3685)
!3776 = !DILocation(line: 601, column: 26, scope: !3685)
!3777 = !DILocation(line: 601, column: 2, scope: !3685)
!3778 = !DILocation(line: 602, column: 1, scope: !3685)
!3779 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !165, file: !165, line: 231, type: !3780, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!110, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!3784 = !DILocalVariable(name: "pdev", arg: 1, scope: !3779, file: !165, line: 231, type: !3782)
!3785 = !DILocation(line: 231, column: 72, scope: !3779)
!3786 = !DILocation(line: 233, column: 26, scope: !3779)
!3787 = !DILocation(line: 233, column: 32, scope: !3779)
!3788 = !DILocation(line: 233, column: 9, scope: !3779)
!3789 = !DILocation(line: 233, column: 2, scope: !3779)
!3790 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3791, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !216)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!110, !2021}
!3793 = !DILocalVariable(name: "dev", arg: 1, scope: !3790, file: !30, line: 655, type: !2021)
!3794 = !DILocation(line: 655, column: 58, scope: !3790)
!3795 = !DILocation(line: 657, column: 9, scope: !3790)
!3796 = !DILocation(line: 657, column: 14, scope: !3790)
!3797 = !DILocation(line: 657, column: 2, scope: !3790)
