; ModuleID = '../bcout/drivers/watchdog/sirfsoc_wdt.llvm.bc'
source_filename = "drivers/watchdog/sirfsoc_wdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_sirfsoc_wdt_driver_init6:\09\09\09"
module asm ".long\09sirfsoc_wdt_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
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
%struct.watchdog_device = type { i32, %struct.device*, %struct.attribute_group**, %struct.watchdog_info*, %struct.watchdog_ops*, %struct.watchdog_governor*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, i8*, %struct.watchdog_core_data*, i64, %struct.list_head }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { %struct.module*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*, i64, i8*)*, i64 (%struct.watchdog_device*, i32, i64)* }
%struct.watchdog_governor = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.watchdog_core_data = type opaque

@__param_str_timeout = internal constant [20 x i8] c"sirfsoc_wdt.timeout\00", align 16, !dbg !0
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@timeout = internal global i32 0, align 4, !dbg !194
@__param_timeout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_timeout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @timeout to i8*) } }, section "__param", align 8, !dbg !70
@__UNIQUE_ID_timeouttype163 = internal constant [34 x i8] c"sirfsoc_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1, !dbg !138
@__param_str_nowayout = internal constant [21 x i8] c"sirfsoc_wdt.nowayout\00", align 16, !dbg !196
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@nowayout = internal global i8 0, align 1, !dbg !201
@__param_nowayout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_nowayout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon { i8* @nowayout } }, section "__param", align 8, !dbg !143
@__UNIQUE_ID_nowayouttype164 = internal constant [35 x i8] c"sirfsoc_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1, !dbg !145
@__UNIQUE_ID_timeout165 = internal constant [63 x i8] c"sirfsoc_wdt.parm=timeout:Default watchdog timeout (in seconds)\00", section ".modinfo", align 1, !dbg !150
@__UNIQUE_ID_nowayout166 = internal constant [78 x i8] c"sirfsoc_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1, !dbg !155
@__UNIQUE_ID___addressable_sirfsoc_wdt_driver_init167 = internal global i8* bitcast (i32 ()* @sirfsoc_wdt_driver_init to i8*), section ".discard.addressable", align 8, !dbg !160
@sirfsoc_wdt_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @sirfsoc_wdt_probe, i32 (%struct.platform_device*)* null, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @sirfsoc_wdt_of_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @sirfsoc_wdt_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !206
@__exitcall_sirfsoc_wdt_driver_exit = internal global void ()* @sirfsoc_wdt_driver_exit, section ".exitcall.exit", align 8, !dbg !162
@__UNIQUE_ID_description168 = internal constant [49 x i8] c"sirfsoc_wdt.description=SiRF SoC watchdog driver\00", section ".modinfo", align 1, !dbg !169
@__UNIQUE_ID_author169 = internal constant [55 x i8] c"sirfsoc_wdt.author=Xianglong Du <Xianglong.Du@csr.com>\00", section ".modinfo", align 1, !dbg !174
@__UNIQUE_ID_file170 = internal constant [46 x i8] c"sirfsoc_wdt.file=drivers/watchdog/sirfsoc_wdt\00", section ".modinfo", align 1, !dbg !179
@__UNIQUE_ID_license171 = internal constant [27 x i8] c"sirfsoc_wdt.license=GPL v2\00", section ".modinfo", align 1, !dbg !184
@__UNIQUE_ID_alias172 = internal constant [39 x i8] c"sirfsoc_wdt.alias=platform:sirfsoc-wdt\00", section ".modinfo", align 1, !dbg !189
@.str = private unnamed_addr constant [12 x i8] c"sirfsoc-wdt\00", align 1
@sirfsoc_wdt_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sirf,prima2-tick\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2313
@sirfsoc_wdt_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @sirfsoc_wdt_suspend, i32 (%struct.device*)* @sirfsoc_wdt_resume, i32 (%struct.device*)* @sirfsoc_wdt_suspend, i32 (%struct.device*)* @sirfsoc_wdt_resume, i32 (%struct.device*)* @sirfsoc_wdt_suspend, i32 (%struct.device*)* @sirfsoc_wdt_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2316
@sirfsoc_wdd = internal global %struct.watchdog_device { i32 0, %struct.device* null, %struct.attribute_group** null, %struct.watchdog_info* @sirfsoc_wdt_ident, %struct.watchdog_ops* @sirfsoc_wdt_ops, %struct.watchdog_governor* null, i32 0, i32 30, i32 0, i32 30, i32 600, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, i8* null, %struct.watchdog_core_data* null, i64 0, %struct.list_head zeroinitializer }, align 8, !dbg !2230
@sirfsoc_wdt_ident = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"SiRFSOC Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4, !dbg !2309
@sirfsoc_wdt_ops = internal constant %struct.watchdog_ops { %struct.module* null, i32 (%struct.watchdog_device*)* @sirfsoc_wdt_enable, i32 (%struct.watchdog_device*)* @sirfsoc_wdt_disable, i32 (%struct.watchdog_device*)* @sirfsoc_wdt_updatetimeout, i32 (%struct.watchdog_device*)* null, i32 (%struct.watchdog_device*, i32)* @sirfsoc_wdt_settimeout, i32 (%struct.watchdog_device*, i32)* null, i32 (%struct.watchdog_device*)* @sirfsoc_wdt_gettimeleft, i32 (%struct.watchdog_device*, i64, i8*)* null, i64 (%struct.watchdog_device*, i32, i64)* null }, align 8, !dbg !2311
@llvm.used = appending global [14 x i8*] [i8* bitcast (%struct.kernel_param* @__param_timeout to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_timeouttype163, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_nowayout to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_nowayouttype164, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_timeout165, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__UNIQUE_ID_nowayout166, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_sirfsoc_wdt_driver_init167 to i8*), i8* bitcast (void ()* @sirfsoc_wdt_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_sirfsoc_wdt_driver_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_description168, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_author169, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file170, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license171, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_alias172, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_driver_init() #0 section ".init.text" !dbg !2324 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @sirfsoc_wdt_driver, %struct.module* null) #5, !dbg !2327
  ret i32 %call, !dbg !2327
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @sirfsoc_wdt_driver_exit() #0 section ".exit.text" !dbg !2328 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @sirfsoc_wdt_driver) #5, !dbg !2329
  ret void, !dbg !2329
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_probe(%struct.platform_device* %pdev) #2 !dbg !2330 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  %base = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2333, metadata !DIExpression()), !dbg !2334
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2335
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2336
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2334
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2337, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.declare(metadata i8** %base, metadata !2339, metadata !DIExpression()), !dbg !2340
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2341
  %call = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %1, i32 0) #5, !dbg !2342
  store i8* %call, i8** %base, align 8, !dbg !2343
  %2 = load i8*, i8** %base, align 8, !dbg !2344
  %call2 = call zeroext i1 @IS_ERR(i8* %2) #5, !dbg !2346
  br i1 %call2, label %if.then, label %if.end, !dbg !2347

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %base, align 8, !dbg !2348
  %call3 = call i64 @PTR_ERR(i8* %3) #5, !dbg !2349
  %conv = trunc i64 %call3 to i32, !dbg !2349
  store i32 %conv, i32* %retval, align 4, !dbg !2350
  br label %return, !dbg !2350

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %base, align 8, !dbg !2351
  call void @watchdog_set_drvdata(%struct.watchdog_device* @sirfsoc_wdd, i8* %4) #5, !dbg !2352
  %5 = load i32, i32* @timeout, align 4, !dbg !2353
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2354
  %call4 = call i32 @watchdog_init_timeout(%struct.watchdog_device* @sirfsoc_wdd, i32 %5, %struct.device* %6) #5, !dbg !2355
  %7 = load i8, i8* @nowayout, align 1, !dbg !2356
  %tobool = trunc i8 %7 to i1, !dbg !2356
  call void @watchdog_set_nowayout(%struct.watchdog_device* @sirfsoc_wdd, i1 zeroext %tobool) #5, !dbg !2357
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2358
  store %struct.device* %8, %struct.device** getelementptr inbounds (%struct.watchdog_device, %struct.watchdog_device* @sirfsoc_wdd, i32 0, i32 1), align 8, !dbg !2359
  call void @watchdog_stop_on_reboot(%struct.watchdog_device* @sirfsoc_wdd) #5, !dbg !2360
  call void @watchdog_stop_on_unregister(%struct.watchdog_device* @sirfsoc_wdd) #5, !dbg !2361
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2362
  %call5 = call i32 @devm_watchdog_register_device(%struct.device* %9, %struct.watchdog_device* @sirfsoc_wdd) #5, !dbg !2363
  store i32 %call5, i32* %ret, align 4, !dbg !2364
  %10 = load i32, i32* %ret, align 4, !dbg !2365
  %tobool6 = icmp ne i32 %10, 0, !dbg !2365
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2367

if.then7:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4, !dbg !2368
  store i32 %11, i32* %retval, align 4, !dbg !2369
  br label %return, !dbg !2369

if.end8:                                          ; preds = %if.end
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2370
  call void @platform_set_drvdata(%struct.platform_device* %12, i8* bitcast (%struct.watchdog_device* @sirfsoc_wdd to i8*)) #5, !dbg !2371
  store i32 0, i32* %retval, align 4, !dbg !2372
  br label %return, !dbg !2372

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !2373
  ret i32 %13, !dbg !2373
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2374 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2378, metadata !DIExpression()), !dbg !2379
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2380
  %1 = ptrtoint i8* %0 to i64, !dbg !2380
  %2 = inttoptr i64 %1 to i8*, !dbg !2380
  %3 = ptrtoint i8* %2 to i64, !dbg !2380
  %cmp = icmp uge i64 %3, -4095, !dbg !2380
  %lnot = xor i1 %cmp, true, !dbg !2380
  %lnot1 = xor i1 %lnot, true, !dbg !2380
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2380
  %conv = sext i32 %lnot.ext to i64, !dbg !2380
  %tobool = icmp ne i64 %conv, 0, !dbg !2380
  ret i1 %tobool, !dbg !2381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2382 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2385, metadata !DIExpression()), !dbg !2386
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2387
  %1 = ptrtoint i8* %0 to i64, !dbg !2388
  ret i64 %1, !dbg !2389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_set_drvdata(%struct.watchdog_device* %wdd, i8* %data) #2 !dbg !2390 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2393, metadata !DIExpression()), !dbg !2394
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2397
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2398
  %driver_data = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 15, !dbg !2399
  store i8* %0, i8** %driver_data, align 8, !dbg !2400
  ret void, !dbg !2401
}

; Function Attrs: noredzone
declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_set_nowayout(%struct.watchdog_device* %wdd, i1 zeroext %nowayout) #2 !dbg !2402 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %nowayout.addr = alloca i8, align 1
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2405, metadata !DIExpression()), !dbg !2406
  %frombool = zext i1 %nowayout to i8
  store i8 %frombool, i8* %nowayout.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %nowayout.addr, metadata !2407, metadata !DIExpression()), !dbg !2408
  %0 = load i8, i8* %nowayout.addr, align 1, !dbg !2409
  %tobool = trunc i8 %0 to i1, !dbg !2409
  br i1 %tobool, label %if.then, label %if.end, !dbg !2411

if.then:                                          ; preds = %entry
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2412
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 17, !dbg !2413
  call void @set_bit(i64 1, i64* %status) #5, !dbg !2414
  br label %if.end, !dbg !2414

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2415
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_stop_on_reboot(%struct.watchdog_device* %wdd) #2 !dbg !2416 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2419, metadata !DIExpression()), !dbg !2420
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2421
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 17, !dbg !2422
  call void @set_bit(i64 2, i64* %status) #5, !dbg !2423
  ret void, !dbg !2424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watchdog_stop_on_unregister(%struct.watchdog_device* %wdd) #2 !dbg !2425 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2426, metadata !DIExpression()), !dbg !2427
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2428
  %status = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 17, !dbg !2429
  call void @set_bit(i64 4, i64* %status) #5, !dbg !2430
  ret void, !dbg !2431
}

; Function Attrs: noredzone
declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2432 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2435, metadata !DIExpression()), !dbg !2436
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2437, metadata !DIExpression()), !dbg !2438
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2439
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2440
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2441
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !2442
  ret void, !dbg !2443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_enable(%struct.watchdog_device* %wdd) #2 !dbg !2444 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wdt_base = alloca i8*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.declare(metadata i8** %wdt_base, metadata !2447, metadata !DIExpression()), !dbg !2448
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2449
  %call = call i8* @sirfsoc_wdt_base(%struct.watchdog_device* %0) #5, !dbg !2450
  store i8* %call, i8** %wdt_base, align 8, !dbg !2448
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2451
  %call1 = call i32 @sirfsoc_wdt_updatetimeout(%struct.watchdog_device* %1) #5, !dbg !2452
  %2 = load i8*, i8** %wdt_base, align 8, !dbg !2453
  %add.ptr = getelementptr i8, i8* %2, i64 36, !dbg !2454
  %call2 = call i32 @readl(i8* %add.ptr) #5, !dbg !2455
  %or = or i32 %call2, 32, !dbg !2456
  %3 = load i8*, i8** %wdt_base, align 8, !dbg !2457
  %add.ptr3 = getelementptr i8, i8* %3, i64 36, !dbg !2458
  call void @writel(i32 %or, i8* %add.ptr3) #5, !dbg !2459
  %4 = load i8*, i8** %wdt_base, align 8, !dbg !2460
  %add.ptr4 = getelementptr i8, i8* %4, i64 40, !dbg !2461
  call void @writel(i32 1, i8* %add.ptr4) #5, !dbg !2462
  ret i32 0, !dbg !2463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_disable(%struct.watchdog_device* %wdd) #2 !dbg !2464 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %wdt_base = alloca i8*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2465, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.declare(metadata i8** %wdt_base, metadata !2467, metadata !DIExpression()), !dbg !2468
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2469
  %call = call i8* @sirfsoc_wdt_base(%struct.watchdog_device* %0) #5, !dbg !2470
  store i8* %call, i8** %wdt_base, align 8, !dbg !2468
  %1 = load i8*, i8** %wdt_base, align 8, !dbg !2471
  %add.ptr = getelementptr i8, i8* %1, i64 40, !dbg !2472
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !2473
  %2 = load i8*, i8** %wdt_base, align 8, !dbg !2474
  %add.ptr1 = getelementptr i8, i8* %2, i64 36, !dbg !2475
  %call2 = call i32 @readl(i8* %add.ptr1) #5, !dbg !2476
  %and = and i32 %call2, -33, !dbg !2477
  %3 = load i8*, i8** %wdt_base, align 8, !dbg !2478
  %add.ptr3 = getelementptr i8, i8* %3, i64 36, !dbg !2479
  call void @writel(i32 %and, i8* %add.ptr3) #5, !dbg !2480
  ret i32 0, !dbg !2481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_updatetimeout(%struct.watchdog_device* %wdd) #2 !dbg !2482 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %counter = alloca i32, align 4
  %timeout_ticks = alloca i32, align 4
  %wdt_base = alloca i8*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2483, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.declare(metadata i32* %timeout_ticks, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.declare(metadata i8** %wdt_base, metadata !2489, metadata !DIExpression()), !dbg !2490
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2491
  %timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 7, !dbg !2492
  %1 = load i32, i32* %timeout, align 4, !dbg !2492
  %mul = mul i32 %1, 1000000, !dbg !2493
  store i32 %mul, i32* %timeout_ticks, align 4, !dbg !2494
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2495
  %call = call i8* @sirfsoc_wdt_base(%struct.watchdog_device* %2) #5, !dbg !2496
  store i8* %call, i8** %wdt_base, align 8, !dbg !2497
  %3 = load i8*, i8** %wdt_base, align 8, !dbg !2498
  %add.ptr = getelementptr i8, i8* %3, i64 48, !dbg !2499
  call void @writel(i32 1, i8* %add.ptr) #5, !dbg !2500
  %4 = load i8*, i8** %wdt_base, align 8, !dbg !2501
  %add.ptr1 = getelementptr i8, i8* %4, i64 52, !dbg !2502
  %call2 = call i32 @readl(i8* %add.ptr1) #5, !dbg !2503
  store i32 %call2, i32* %counter, align 4, !dbg !2504
  %5 = load i32, i32* %timeout_ticks, align 4, !dbg !2505
  %6 = load i32, i32* %counter, align 4, !dbg !2506
  %add = add i32 %6, %5, !dbg !2506
  store i32 %add, i32* %counter, align 4, !dbg !2506
  %7 = load i32, i32* %counter, align 4, !dbg !2507
  %8 = load i8*, i8** %wdt_base, align 8, !dbg !2508
  %add.ptr3 = getelementptr i8, i8* %8, i64 8, !dbg !2509
  %add.ptr4 = getelementptr i8, i8* %add.ptr3, i64 20, !dbg !2510
  call void @writel(i32 %7, i8* %add.ptr4) #5, !dbg !2511
  ret i32 0, !dbg !2512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_settimeout(%struct.watchdog_device* %wdd, i32 %to) #2 !dbg !2513 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %to.addr = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2514, metadata !DIExpression()), !dbg !2515
  store i32 %to, i32* %to.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %to.addr, metadata !2516, metadata !DIExpression()), !dbg !2517
  %0 = load i32, i32* %to.addr, align 4, !dbg !2518
  %1 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2519
  %timeout = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %1, i32 0, i32 7, !dbg !2520
  store i32 %0, i32* %timeout, align 4, !dbg !2521
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2522
  %call = call i32 @sirfsoc_wdt_updatetimeout(%struct.watchdog_device* %2) #5, !dbg !2523
  ret i32 0, !dbg !2524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_gettimeleft(%struct.watchdog_device* %wdd) #2 !dbg !2525 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  %counter = alloca i32, align 4
  %match = alloca i32, align 4
  %wdt_base = alloca i8*, align 8
  %time_left = alloca i32, align 4
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !2528, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.declare(metadata i32* %match, metadata !2530, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.declare(metadata i8** %wdt_base, metadata !2532, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.declare(metadata i32* %time_left, metadata !2534, metadata !DIExpression()), !dbg !2535
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2536
  %call = call i8* @sirfsoc_wdt_base(%struct.watchdog_device* %0) #5, !dbg !2537
  store i8* %call, i8** %wdt_base, align 8, !dbg !2538
  %1 = load i8*, i8** %wdt_base, align 8, !dbg !2539
  %add.ptr = getelementptr i8, i8* %1, i64 0, !dbg !2540
  %call1 = call i32 @readl(i8* %add.ptr) #5, !dbg !2541
  store i32 %call1, i32* %counter, align 4, !dbg !2542
  %2 = load i8*, i8** %wdt_base, align 8, !dbg !2543
  %add.ptr2 = getelementptr i8, i8* %2, i64 8, !dbg !2544
  %add.ptr3 = getelementptr i8, i8* %add.ptr2, i64 20, !dbg !2545
  %call4 = call i32 @readl(i8* %add.ptr3) #5, !dbg !2546
  store i32 %call4, i32* %match, align 4, !dbg !2547
  %3 = load i32, i32* %match, align 4, !dbg !2548
  %4 = load i32, i32* %counter, align 4, !dbg !2549
  %sub = sub i32 %3, %4, !dbg !2550
  store i32 %sub, i32* %time_left, align 4, !dbg !2551
  %5 = load i32, i32* %time_left, align 4, !dbg !2552
  %div = sdiv i32 %5, 1000000, !dbg !2553
  ret i32 %div, !dbg !2554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @sirfsoc_wdt_base(%struct.watchdog_device* %wdd) #2 !dbg !2555 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2560
  %call = call i8* @watchdog_get_drvdata(%struct.watchdog_device* %0) #5, !dbg !2561
  ret i8* %call, !dbg !2562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !2563 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2569, metadata !DIExpression()), !dbg !2570
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2571, metadata !DIExpression()), !dbg !2570
  %0 = load i32, i32* %val.addr, align 4, !dbg !2570
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2570
  %2 = bitcast i8* %1 to i32*, !dbg !2570
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !2570, !srcloc !2572
  ret void, !dbg !2570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !2573 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2578, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2580, metadata !DIExpression()), !dbg !2579
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2579
  %1 = bitcast i8* %0 to i32*, !dbg !2579
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !2579, !srcloc !2581
  store i32 %2, i32* %ret, align 4, !dbg !2579
  %3 = load i32, i32* %ret, align 4, !dbg !2579
  ret i32 %3, !dbg !2579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @watchdog_get_drvdata(%struct.watchdog_device* %wdd) #2 !dbg !2582 {
entry:
  %wdd.addr = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %wdd, %struct.watchdog_device** %wdd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  %0 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd.addr, align 8, !dbg !2585
  %driver_data = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %0, i32 0, i32 15, !dbg !2586
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2586
  ret i8* %1, !dbg !2587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !2588 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2594, metadata !DIExpression()), !dbg !2597
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2599, metadata !DIExpression()), !dbg !2600
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2601, metadata !DIExpression()), !dbg !2606
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2608, metadata !DIExpression()), !dbg !2609
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2610, metadata !DIExpression()), !dbg !2611
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2612, metadata !DIExpression()), !dbg !2613
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2614
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2615
  %div = sdiv i64 %1, 64, !dbg !2615
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2616
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2614
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2617
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2618
  %conv.i = trunc i64 %4 to i32, !dbg !2618
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #7, !dbg !2619
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2620
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2620
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #7, !dbg !2620
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2621
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2622
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !2623
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !2625
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2626

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !2627
  %12 = bitcast i64* %11 to i8*, !dbg !2627
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2627
  %shr.i = ashr i64 %13, 3, !dbg !2627
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !2627
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !2629
  %and.i = and i64 %14, 7, !dbg !2629
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !2629
  %shl.i = shl i32 1, %sh_prom.i, !dbg !2629
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #6, !dbg !2630, !srcloc !2631
  br label %arch_set_bit.exit, !dbg !2632

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !2633
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !2635
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !2636, !srcloc !2637
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !2638
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !2639 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2643, metadata !DIExpression()), !dbg !2644
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2645, metadata !DIExpression()), !dbg !2646
  ret i1 true, !dbg !2647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !2648 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2652, metadata !DIExpression()), !dbg !2653
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2654, metadata !DIExpression()), !dbg !2655
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2656, metadata !DIExpression()), !dbg !2657
  ret void, !dbg !2658
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2659 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2662, metadata !DIExpression()), !dbg !2663
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2664, metadata !DIExpression()), !dbg !2665
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2666
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2667
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2668
  store i8* %0, i8** %driver_data, align 8, !dbg !2669
  ret void, !dbg !2670
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_suspend(%struct.device* %dev) #2 !dbg !2671 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2672, metadata !DIExpression()), !dbg !2673
  ret i32 0, !dbg !2674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sirfsoc_wdt_resume(%struct.device* %dev) #2 !dbg !2675 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %wdd = alloca %struct.watchdog_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2676, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.declare(metadata %struct.watchdog_device** %wdd, metadata !2678, metadata !DIExpression()), !dbg !2679
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2680
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2681
  %1 = bitcast i8* %call to %struct.watchdog_device*, !dbg !2681
  store %struct.watchdog_device* %1, %struct.watchdog_device** %wdd, align 8, !dbg !2679
  %2 = load %struct.watchdog_device*, %struct.watchdog_device** %wdd, align 8, !dbg !2682
  %call1 = call i32 @sirfsoc_wdt_updatetimeout(%struct.watchdog_device* %2) #5, !dbg !2683
  ret i32 0, !dbg !2684
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2685 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2688, metadata !DIExpression()), !dbg !2689
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2690
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2691
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2691
  ret i8* %1, !dbg !2692
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noredzone }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2319, !2320, !2321, !2322}
!llvm.ident = !{!2323}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_timeout", scope: !2, file: !3, line: 34, type: !2318, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !69, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/watchdog/sirfsoc_wdt.c", directory: "/home/lizy2001/genbc/linux")
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
!55 = !{!56, !59, !60, !61, !62, !64, !67}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !58, line: 76, flags: DIFlagFwdDecl)
!58 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!69 = !{!70, !138, !143, !145, !150, !155, !160, !162, !169, !174, !179, !184, !189, !194, !0, !196, !201, !206, !2230, !2309, !2311, !2313, !2316}
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "__param_timeout", scope: !2, file: !3, line: 34, type: !72, isLocal: true, isDefinition: true, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !74, line: 69, size: 320, elements: !75)
!74 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !79, !80, !101, !108, !112, !116}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !74, line: 70, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !73, file: !74, line: 71, baseType: !56, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !73, file: !74, line: 72, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !74, line: 47, size: 256, elements: !84)
!84 = !{!85, !86, !92, !97}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !74, line: 49, baseType: !7, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !83, file: !74, line: 51, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !77, !91}
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !83, file: !74, line: 53, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!90, !96, !91}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !83, file: !74, line: 55, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !59}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !73, file: !74, line: 73, baseType: !102, size: 16, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !73, file: !74, line: 74, baseType: !109, size: 8, offset: 208)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !111)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !74, line: 75, baseType: !113, size: 8, offset: 216)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !115)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !74, line: 76, baseType: !117, size: 64, offset: 256)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !74, line: 76, size: 64, elements: !118)
!118 = !{!119, !120, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !117, file: !74, line: 77, baseType: !59, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !117, file: !74, line: 78, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !74, line: 86, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !123, file: !74, line: 87, baseType: !7, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !123, file: !74, line: 88, baseType: !96, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !117, file: !74, line: 79, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !74, line: 92, size: 256, elements: !131)
!131 = !{!132, !133, !134, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !130, file: !74, line: 94, baseType: !7, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !130, file: !74, line: 95, baseType: !7, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !130, file: !74, line: 96, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !130, file: !74, line: 97, baseType: !81, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !130, file: !74, line: 98, baseType: !59, size: 64, offset: 192)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_timeouttype163", scope: !2, file: !3, line: 34, type: !140, isLocal: true, isDefinition: true, align: 8)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 272, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 34)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "__param_nowayout", scope: !2, file: !3, line: 35, type: !72, isLocal: true, isDefinition: true, align: 64)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nowayouttype164", scope: !2, file: !3, line: 35, type: !147, isLocal: true, isDefinition: true, align: 8)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 280, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 35)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_timeout165", scope: !2, file: !3, line: 37, type: !152, isLocal: true, isDefinition: true, align: 8)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 504, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 63)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nowayout166", scope: !2, file: !3, line: 38, type: !157, isLocal: true, isDefinition: true, align: 8)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 624, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 78)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sirfsoc_wdt_driver_init167", scope: !2, file: !3, line: 211, type: !59, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "__exitcall_sirfsoc_wdt_driver_exit", scope: !2, file: !3, line: 211, type: !164, isLocal: true, isDefinition: true)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !165, line: 117, baseType: !166)
!165 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description168", scope: !2, file: !3, line: 213, type: !171, isLocal: true, isDefinition: true, align: 8)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 392, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 49)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author169", scope: !2, file: !3, line: 214, type: !176, isLocal: true, isDefinition: true, align: 8)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 440, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 55)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file170", scope: !2, file: !3, line: 215, type: !181, isLocal: true, isDefinition: true, align: 8)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 368, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 46)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license171", scope: !2, file: !3, line: 215, type: !186, isLocal: true, isDefinition: true, align: 8)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 216, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 27)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias172", scope: !2, file: !3, line: 216, type: !191, isLocal: true, isDefinition: true, align: 8)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 312, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 39)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "timeout", scope: !2, file: !3, line: 31, type: !7, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "__param_str_nowayout", scope: !2, file: !3, line: 35, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 168, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 21)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "nowayout", scope: !2, file: !3, line: 32, type: !203, isLocal: true, isDefinition: true)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !204, line: 30, baseType: !205)
!204 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!205 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "sirfsoc_wdt_driver", scope: !2, file: !3, line: 203, type: !208, isLocal: true, isDefinition: true)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !209, line: 200, size: 1600, elements: !210)
!209 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!210 = !{!211, !2217, !2218, !2222, !2226, !2227, !2228, !2229}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !208, file: !209, line: 201, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!90, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !209, line: 22, size: 6208, elements: !217)
!217 = !{!218, !219, !220, !221, !2186, !2187, !2188, !2189, !2203, !2211, !2212, !2215}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !209, line: 23, baseType: !77, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !216, file: !209, line: 24, baseType: !90, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !216, file: !209, line: 25, baseType: !203, size: 8, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !216, file: !209, line: 26, baseType: !222, size: 5568, offset: 128)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !223)
!223 = !{!224, !1712, !1714, !1717, !1718, !1769, !1863, !1864, !1865, !1866, !1867, !1876, !1981, !1994, !1997, !1998, !2002, !2004, !2005, !2006, !2010, !2016, !2017, !2020, !2135, !2136, !2139, !2140, !2141, !2142, !2174, !2175, !2176, !2179, !2182, !2183, !2184, !2185}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !222, file: !30, line: 462, baseType: !225, size: 512)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !226, line: 64, size: 512, elements: !227)
!226 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!227 = !{!228, !229, !235, !237, !296, !1548, !1702, !1707, !1708, !1709, !1710, !1711}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !226, line: 65, baseType: !77, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !225, file: !226, line: 66, baseType: !230, size: 128, offset: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !204, line: 178, size: 128, elements: !231)
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !204, line: 179, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !230, file: !204, line: 179, baseType: !233, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !226, line: 67, baseType: !236, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !225, file: !226, line: 68, baseType: !238, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !226, line: 192, size: 704, elements: !240)
!240 = !{!241, !242, !258, !259}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !239, file: !226, line: 193, baseType: !230, size: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !239, file: !226, line: 194, baseType: !243, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !244, line: 83, baseType: !245)
!244 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !244, line: 71, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !244, line: 72, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !244, line: 72, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !248, file: !244, line: 73, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !244, line: 20, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !251, file: !244, line: 21, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !255, line: 25, baseType: !256)
!255 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 25, elements: !257)
!257 = !{}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !239, file: !226, line: 195, baseType: !225, size: 512, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !239, file: !226, line: 196, baseType: !260, size: 64, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !226, line: 156, size: 192, elements: !263)
!263 = !{!264, !269, !274}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !262, file: !226, line: 157, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!90, !238, !236}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !226, line: 158, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!77, !238, !236}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !262, file: !226, line: 159, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!90, !238, !236, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !226, line: 148, size: 20736, elements: !281)
!281 = !{!282, !286, !290, !291, !295}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !280, file: !226, line: 149, baseType: !283, size: 192)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 192, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 3)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !280, file: !226, line: 150, baseType: !287, size: 4096, offset: 192)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 4096, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !280, file: !226, line: 151, baseType: !90, size: 32, offset: 4288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !280, file: !226, line: 152, baseType: !292, size: 16384, offset: 4320)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 16384, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 2048)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !280, file: !226, line: 153, baseType: !90, size: 32, offset: 20704)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !225, file: !226, line: 69, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !226, line: 138, size: 448, elements: !299)
!299 = !{!300, !304, !331, !333, !1499, !1527, !1531}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !298, file: !226, line: 139, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !236}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !298, file: !226, line: 140, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !308, line: 230, size: 128, elements: !309)
!308 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!309 = !{!310, !324}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !307, file: !308, line: 231, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !236, !318, !96}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !204, line: 60, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !316, line: 73, baseType: !317)
!316 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !316, line: 15, baseType: !61)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !308, line: 30, size: 128, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !308, line: 31, baseType: !77, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !319, file: !308, line: 32, baseType: !323, size: 16, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !204, line: 19, baseType: !107)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !307, file: !308, line: 232, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!314, !236, !318, !77, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !204, line: 55, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !316, line: 72, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !316, line: 16, baseType: !60)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !298, file: !226, line: 141, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !298, file: !226, line: 142, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !308, line: 84, size: 320, elements: !338)
!338 = !{!339, !340, !344, !1496, !1497}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !308, line: 85, baseType: !77, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !337, file: !308, line: 86, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!323, !236, !318, !90}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !337, file: !308, line: 88, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!323, !236, !348, !90}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !308, line: 168, size: 448, elements: !350)
!350 = !{!351, !352, !353, !354, !364, !365}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !349, file: !308, line: 169, baseType: !319, size: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !308, line: 170, baseType: !328, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !349, file: !308, line: 171, baseType: !59, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !349, file: !308, line: 172, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!314, !358, !236, !348, !96, !361, !328}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !360, line: 526, flags: DIFlagFwdDecl)
!360 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !204, line: 46, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !316, line: 88, baseType: !363)
!363 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !349, file: !308, line: 174, baseType: !355, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !349, file: !308, line: 176, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!90, !358, !236, !348, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !371, line: 305, size: 1472, elements: !372)
!371 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !374, !375, !376, !377, !385, !386, !1470, !1476, !1477, !1482, !1483, !1486, !1490, !1491, !1492, !1493, !1494}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !370, file: !371, line: 308, baseType: !60, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !370, file: !371, line: 309, baseType: !60, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !370, file: !371, line: 313, baseType: !369, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !370, file: !371, line: 313, baseType: !369, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !370, file: !371, line: 315, baseType: !378, size: 192, align: 64, offset: 256)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !379, line: 24, size: 192, align: 64, elements: !380)
!379 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!380 = !{!381, !382, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !378, file: !379, line: 25, baseType: !60, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !378, file: !379, line: 26, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !378, file: !379, line: 27, baseType: !383, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !370, file: !371, line: 323, baseType: !60, size: 64, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !370, file: !371, line: 327, baseType: !387, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !371, line: 388, size: 7296, elements: !389)
!389 = !{!390, !1466}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !371, line: 389, baseType: !391, size: 7296)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !371, line: 389, size: 7296, elements: !392)
!392 = !{!393, !394, !398, !402, !406, !407, !408, !409, !410, !418, !423, !424, !425, !426, !435, !436, !437, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !472, !480, !483, !529, !530, !1436, !1437, !1440, !1444, !1445, !1448, !1449, !1450, !1453, !1465}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !391, file: !371, line: 390, baseType: !369, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !391, file: !371, line: 391, baseType: !395, size: 64, offset: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !379, line: 31, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !395, file: !379, line: 32, baseType: !383, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !391, file: !371, line: 392, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !401)
!401 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !391, file: !371, line: 394, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!60, !358, !60, !60, !60, !60}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !391, file: !371, line: 398, baseType: !60, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !391, file: !371, line: 399, baseType: !60, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !391, file: !371, line: 405, baseType: !60, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !391, file: !371, line: 406, baseType: !60, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !391, file: !371, line: 407, baseType: !411, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !360, line: 286, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 286, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !413, file: !360, line: 286, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !417, line: 18, baseType: !60)
!417 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !391, file: !371, line: 416, baseType: !419, size: 32, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !204, line: 168, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 166, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !420, file: !204, line: 167, baseType: !90, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !391, file: !371, line: 428, baseType: !419, size: 32, offset: 608)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !391, file: !371, line: 437, baseType: !419, size: 32, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !391, file: !371, line: 447, baseType: !419, size: 32, offset: 672)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !391, file: !371, line: 450, baseType: !427, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !428, line: 13, baseType: !429)
!428 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !204, line: 175, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 173, size: 64, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !430, file: !204, line: 174, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !363)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !391, file: !371, line: 452, baseType: !90, size: 32, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !391, file: !371, line: 454, baseType: !243, offset: 800)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !391, file: !371, line: 457, baseType: !438, size: 256, offset: 832)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !439, line: 35, size: 256, elements: !440)
!439 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!440 = !{!441, !442, !443, !445}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !438, file: !439, line: 36, baseType: !427, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !438, file: !439, line: 42, baseType: !427, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !438, file: !439, line: 46, baseType: !444, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !244, line: 29, baseType: !251)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !438, file: !439, line: 47, baseType: !230, size: 128, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !391, file: !371, line: 459, baseType: !230, size: 128, offset: 1088)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !391, file: !371, line: 466, baseType: !60, size: 64, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !391, file: !371, line: 467, baseType: !60, size: 64, offset: 1280)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !391, file: !371, line: 469, baseType: !60, size: 64, offset: 1344)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !391, file: !371, line: 470, baseType: !60, size: 64, offset: 1408)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !391, file: !371, line: 471, baseType: !429, size: 64, offset: 1472)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !391, file: !371, line: 472, baseType: !60, size: 64, offset: 1536)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !391, file: !371, line: 473, baseType: !60, size: 64, offset: 1600)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !391, file: !371, line: 474, baseType: !60, size: 64, offset: 1664)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !391, file: !371, line: 475, baseType: !60, size: 64, offset: 1728)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !391, file: !371, line: 477, baseType: !243, offset: 1792)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !391, file: !371, line: 478, baseType: !60, size: 64, offset: 1792)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !391, file: !371, line: 478, baseType: !60, size: 64, offset: 1856)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !391, file: !371, line: 478, baseType: !60, size: 64, offset: 1920)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !391, file: !371, line: 478, baseType: !60, size: 64, offset: 1984)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !391, file: !371, line: 479, baseType: !60, size: 64, offset: 2048)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !391, file: !371, line: 479, baseType: !60, size: 64, offset: 2112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !391, file: !371, line: 479, baseType: !60, size: 64, offset: 2176)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !391, file: !371, line: 480, baseType: !60, size: 64, offset: 2240)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !391, file: !371, line: 480, baseType: !60, size: 64, offset: 2304)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !391, file: !371, line: 480, baseType: !60, size: 64, offset: 2368)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !391, file: !371, line: 480, baseType: !60, size: 64, offset: 2432)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !391, file: !371, line: 482, baseType: !469, size: 2816, offset: 2496)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2816, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 44)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !391, file: !371, line: 488, baseType: !473, size: 256, offset: 5312)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !474, line: 60, size: 256, elements: !475)
!474 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !473, file: !474, line: 61, baseType: !477, size: 256)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 256, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 4)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !391, file: !371, line: 490, baseType: !481, size: 64, offset: 5568)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !371, line: 490, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !391, file: !371, line: 493, baseType: !484, size: 896, offset: 5632)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !485, line: 53, baseType: !486)
!485 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 13, size: 896, elements: !487)
!487 = !{!488, !489, !490, !491, !494, !495, !502, !503, !523, !524, !525}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !486, file: !485, line: 18, baseType: !399, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !486, file: !485, line: 28, baseType: !429, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !486, file: !485, line: 31, baseType: !438, size: 256, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !486, file: !485, line: 32, baseType: !492, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !485, line: 32, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !486, file: !485, line: 37, baseType: !107, size: 16, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !486, file: !485, line: 40, baseType: !496, size: 192, offset: 512)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !497, line: 53, size: 192, elements: !498)
!497 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !500, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !496, file: !497, line: 54, baseType: !427, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !496, file: !497, line: 55, baseType: !243, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !496, file: !497, line: 59, baseType: !230, size: 128, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !486, file: !485, line: 41, baseType: !59, size: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !486, file: !485, line: 42, baseType: !504, size: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !507, line: 13, size: 896, elements: !508)
!507 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !506, file: !507, line: 14, baseType: !59, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !506, file: !507, line: 15, baseType: !60, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !506, file: !507, line: 17, baseType: !60, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !506, file: !507, line: 17, baseType: !60, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !506, file: !507, line: 19, baseType: !61, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !506, file: !507, line: 21, baseType: !61, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !506, file: !507, line: 22, baseType: !61, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !506, file: !507, line: 23, baseType: !61, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !506, file: !507, line: 24, baseType: !61, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !506, file: !507, line: 25, baseType: !61, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !506, file: !507, line: 26, baseType: !61, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !506, file: !507, line: 27, baseType: !61, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !506, file: !507, line: 28, baseType: !61, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !506, file: !507, line: 29, baseType: !61, size: 64, offset: 832)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !486, file: !485, line: 44, baseType: !419, size: 32, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !486, file: !485, line: 50, baseType: !103, size: 16, offset: 864)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !486, file: !485, line: 51, baseType: !526, size: 16, offset: 880)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !528)
!528 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !371, line: 495, baseType: !60, size: 64, offset: 6528)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !391, file: !371, line: 497, baseType: !531, size: 64, offset: 6592)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !371, line: 381, size: 384, elements: !533)
!533 = !{!534, !535, !1435}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !532, file: !371, line: 382, baseType: !419, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !532, file: !371, line: 383, baseType: !536, size: 128, offset: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !371, line: 376, size: 128, elements: !537)
!537 = !{!538, !1433}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !536, file: !371, line: 377, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !541, line: 640, size: 48640, elements: !542)
!541 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!542 = !{!543, !551, !552, !553, !559, !560, !561, !562, !563, !564, !565, !566, !570, !588, !599, !691, !692, !693, !704, !705, !707, !708, !709, !710, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !789, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !845, !847, !848, !849, !861, !863, !864, !865, !866, !867, !873, !874, !875, !876, !877, !878, !879, !891, !896, !901, !902, !903, !906, !910, !913, !916, !919, !922, !926, !929, !932, !938, !939, !940, !946, !947, !948, !949, !950, !959, !960, !961, !962, !963, !968, !969, !970, !973, !974, !977, !980, !983, !986, !989, !992, !993, !1073, !1076, !1079, !1080, !1083, !1084, !1085, !1091, !1092, !1093, !1106, !1107, !1108, !1118, !1123, !1126, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !540, file: !541, line: 646, baseType: !544, size: 128)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !545, line: 56, size: 128, elements: !546)
!545 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !545, line: 57, baseType: !60, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !544, file: !545, line: 58, baseType: !549, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !540, file: !541, line: 649, baseType: !68, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !540, file: !541, line: 657, baseType: !59, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !540, file: !541, line: 658, baseType: !554, size: 32, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !555, line: 113, baseType: !556)
!555 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !555, line: 111, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !556, file: !555, line: 112, baseType: !419, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !541, line: 660, baseType: !7, size: 32, offset: 288)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !540, file: !541, line: 661, baseType: !7, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !540, file: !541, line: 684, baseType: !90, size: 32, offset: 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !540, file: !541, line: 686, baseType: !90, size: 32, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !540, file: !541, line: 687, baseType: !90, size: 32, offset: 416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !540, file: !541, line: 688, baseType: !90, size: 32, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !540, file: !541, line: 689, baseType: !7, size: 32, offset: 480)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !540, file: !541, line: 691, baseType: !567, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !541, line: 691, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !540, file: !541, line: 692, baseType: !571, size: 832, offset: 576)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !541, line: 451, size: 832, elements: !572)
!572 = !{!573, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !571, file: !541, line: 453, baseType: !574, size: 128)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !541, line: 325, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !574, file: !541, line: 326, baseType: !60, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !574, file: !541, line: 327, baseType: !549, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !571, file: !541, line: 454, baseType: !378, size: 192, align: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !571, file: !541, line: 455, baseType: !230, size: 128, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !571, file: !541, line: 456, baseType: !7, size: 32, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !571, file: !541, line: 458, baseType: !399, size: 64, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !571, file: !541, line: 459, baseType: !399, size: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !571, file: !541, line: 460, baseType: !399, size: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !571, file: !541, line: 461, baseType: !399, size: 64, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !571, file: !541, line: 463, baseType: !399, size: 64, offset: 768)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !571, file: !541, line: 465, baseType: !587, offset: 832)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !541, line: 415, elements: !257)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !540, file: !541, line: 693, baseType: !589, size: 384, offset: 1408)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !541, line: 489, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !589, file: !541, line: 490, baseType: !230, size: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !589, file: !541, line: 491, baseType: !60, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !589, file: !541, line: 492, baseType: !60, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !589, file: !541, line: 493, baseType: !7, size: 32, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !589, file: !541, line: 494, baseType: !107, size: 16, offset: 288)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !589, file: !541, line: 495, baseType: !107, size: 16, offset: 304)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !589, file: !541, line: 497, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !540, file: !541, line: 697, baseType: !600, size: 1792, offset: 1792)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !541, line: 507, size: 1792, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !688, !689}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !600, file: !541, line: 508, baseType: !378, size: 192, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !600, file: !541, line: 515, baseType: !399, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !600, file: !541, line: 516, baseType: !399, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !600, file: !541, line: 517, baseType: !399, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !600, file: !541, line: 518, baseType: !399, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !600, file: !541, line: 519, baseType: !399, size: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !600, file: !541, line: 526, baseType: !433, size: 64, offset: 512)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !600, file: !541, line: 527, baseType: !399, size: 64, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !541, line: 528, baseType: !7, size: 32, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !600, file: !541, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !600, file: !541, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !600, file: !541, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !600, file: !541, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !600, file: !541, line: 563, baseType: !616, size: 512, offset: 704)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !617)
!617 = !{!618, !626, !627, !632, !684, !685, !686, !687}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !6, line: 119, baseType: !619, size: 256)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !620, line: 9, size: 256, elements: !621)
!620 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !620, line: 10, baseType: !378, size: 192, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !619, file: !620, line: 11, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !625, line: 29, baseType: !433)
!625 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !616, file: !6, line: 120, baseType: !624, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !616, file: !6, line: 121, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!5, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !616, file: !6, line: 122, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !635)
!635 = !{!636, !656, !657, !660, !670, !671, !679, !683}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !634, file: !6, line: 160, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !638, file: !6, line: 215, baseType: !444)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !638, file: !6, line: 216, baseType: !7, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !638, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !638, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !638, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !638, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !638, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !638, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !638, file: !6, line: 233, baseType: !624, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !638, file: !6, line: 234, baseType: !631, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !638, file: !6, line: 235, baseType: !624, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !638, file: !6, line: 236, baseType: !631, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !638, file: !6, line: 237, baseType: !653, size: 4096, offset: 512)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 4096, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 8)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !634, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !634, file: !6, line: 162, baseType: !658, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !204, line: 27, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !316, line: 96, baseType: !90)
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
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !620, line: 14, size: 128, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !672, file: !620, line: 15, baseType: !675, size: 128)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !379, line: 125, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !675, file: !379, line: 126, baseType: !395, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !675, file: !379, line: 127, baseType: !383, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !634, file: !6, line: 166, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!624}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !634, file: !6, line: 167, baseType: !624, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !616, file: !6, line: 123, baseType: !113, size: 8, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !616, file: !6, line: 124, baseType: !113, size: 8, offset: 456)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !616, file: !6, line: 125, baseType: !113, size: 8, offset: 464)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !616, file: !6, line: 126, baseType: !113, size: 8, offset: 472)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !600, file: !541, line: 572, baseType: !616, size: 512, offset: 1216)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !600, file: !541, line: 580, baseType: !690, size: 64, offset: 1728)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !540, file: !541, line: 721, baseType: !7, size: 32, offset: 3584)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !540, file: !541, line: 722, baseType: !90, size: 32, offset: 3616)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !540, file: !541, line: 723, baseType: !694, size: 64, offset: 3648)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !697, line: 17, baseType: !698)
!697 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !697, line: 17, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !698, file: !697, line: 17, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 1)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !540, file: !541, line: 724, baseType: !696, size: 64, offset: 3712)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !540, file: !541, line: 749, baseType: !706, offset: 3776)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !541, line: 290, elements: !257)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !540, file: !541, line: 751, baseType: !230, size: 128, offset: 3776)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !540, file: !541, line: 757, baseType: !387, size: 64, offset: 3904)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !540, file: !541, line: 758, baseType: !387, size: 64, offset: 3968)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !540, file: !541, line: 761, baseType: !711, size: 320, offset: 4032)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !474, line: 34, size: 320, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !711, file: !474, line: 35, baseType: !399, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !711, file: !474, line: 36, baseType: !715, size: 256, offset: 64)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !478)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !540, file: !541, line: 766, baseType: !90, size: 32, offset: 4352)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !540, file: !541, line: 767, baseType: !90, size: 32, offset: 4384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !540, file: !541, line: 768, baseType: !90, size: 32, offset: 4416)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !540, file: !541, line: 770, baseType: !90, size: 32, offset: 4448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !540, file: !541, line: 772, baseType: !60, size: 64, offset: 4480)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !540, file: !541, line: 775, baseType: !7, size: 32, offset: 4544)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !540, file: !541, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !540, file: !541, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !540, file: !541, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !540, file: !541, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !540, file: !541, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !540, file: !541, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !540, file: !541, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !540, file: !541, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !540, file: !541, line: 831, baseType: !60, size: 64, offset: 4672)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !540, file: !541, line: 833, baseType: !732, size: 384, offset: 4736)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !733)
!733 = !{!734, !739}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !732, file: !12, line: 26, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!61, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !12, line: 27, baseType: !740, size: 320, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !12, line: 27, size: 320, elements: !741)
!741 = !{!742, !752, !779}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !740, file: !12, line: 36, baseType: !743, size: 320)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !12, line: 29, size: 320, elements: !744)
!744 = !{!745, !747, !748, !749, !750, !751}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !743, file: !12, line: 30, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !743, file: !12, line: 31, baseType: !549, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !12, line: 32, baseType: !549, size: 32, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !743, file: !12, line: 33, baseType: !549, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !743, file: !12, line: 34, baseType: !399, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !743, file: !12, line: 35, baseType: !746, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !740, file: !12, line: 46, baseType: !753, size: 192)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !12, line: 38, size: 192, elements: !754)
!754 = !{!755, !756, !757, !778}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !753, file: !12, line: 39, baseType: !658, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !753, file: !12, line: 41, baseType: !758, size: 64, offset: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !753, file: !12, line: 41, size: 64, elements: !759)
!759 = !{!760, !768}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !758, file: !12, line: 42, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !763, line: 7, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !762, file: !763, line: 8, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !316, line: 93, baseType: !363)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !762, file: !763, line: 9, baseType: !363, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !758, file: !12, line: 43, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !771, line: 7, size: 64, elements: !772)
!771 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !777}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !770, file: !771, line: 8, baseType: !774, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !771, line: 5, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !90)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !770, file: !771, line: 9, baseType: !775, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !753, file: !12, line: 45, baseType: !399, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !740, file: !12, line: 54, baseType: !780, size: 256)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !12, line: 48, size: 256, elements: !781)
!781 = !{!782, !785, !786, !787, !788}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !780, file: !12, line: 49, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !780, file: !12, line: 50, baseType: !90, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !780, file: !12, line: 51, baseType: !90, size: 32, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !780, file: !12, line: 52, baseType: !60, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !780, file: !12, line: 53, baseType: !60, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !540, file: !541, line: 835, baseType: !790, size: 32, offset: 5120)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !204, line: 22, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !316, line: 28, baseType: !90)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !540, file: !541, line: 836, baseType: !790, size: 32, offset: 5152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !540, file: !541, line: 840, baseType: !60, size: 64, offset: 5184)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !540, file: !541, line: 849, baseType: !539, size: 64, offset: 5248)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !540, file: !541, line: 852, baseType: !539, size: 64, offset: 5312)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !540, file: !541, line: 857, baseType: !230, size: 128, offset: 5376)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !540, file: !541, line: 858, baseType: !230, size: 128, offset: 5504)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !540, file: !541, line: 859, baseType: !539, size: 64, offset: 5632)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !540, file: !541, line: 867, baseType: !230, size: 128, offset: 5696)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !540, file: !541, line: 868, baseType: !230, size: 128, offset: 5824)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !540, file: !541, line: 871, baseType: !802, size: 64, offset: 5952)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !804, line: 59, size: 768, elements: !805)
!804 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!805 = !{!806, !807, !808, !809, !820, !821, !828, !837}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !803, file: !804, line: 61, baseType: !554, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !803, file: !804, line: 62, baseType: !7, size: 32, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !803, file: !804, line: 63, baseType: !243, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !803, file: !804, line: 65, baseType: !810, size: 256, offset: 64)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 256, elements: !478)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !204, line: 182, size: 64, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !811, file: !204, line: 183, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !204, line: 186, size: 128, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !815, file: !204, line: 187, baseType: !814, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !815, file: !204, line: 187, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !803, file: !804, line: 66, baseType: !811, size: 64, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !803, file: !804, line: 68, baseType: !822, size: 128, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !823, line: 40, baseType: !824)
!823 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !823, line: 36, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !824, file: !823, line: 37, baseType: !243)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !824, file: !823, line: 38, baseType: !230, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !803, file: !804, line: 69, baseType: !829, size: 128, align: 64, offset: 512)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !204, line: 216, size: 128, align: 64, elements: !830)
!830 = !{!831, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !829, file: !204, line: 217, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !829, file: !204, line: 218, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !832}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !803, file: !804, line: 70, baseType: !838, size: 128, offset: 640)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 128, elements: !702)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !804, line: 54, size: 128, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !839, file: !804, line: 55, baseType: !90, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !839, file: !804, line: 56, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !804, line: 56, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !540, file: !541, line: 872, baseType: !846, size: 512, offset: 6016)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 512, elements: !478)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !540, file: !541, line: 873, baseType: !230, size: 128, offset: 6528)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !540, file: !541, line: 874, baseType: !230, size: 128, offset: 6656)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !540, file: !541, line: 876, baseType: !850, size: 64, offset: 6784)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !852, line: 26, size: 192, elements: !853)
!852 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !851, file: !852, line: 27, baseType: !7, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !851, file: !852, line: 28, baseType: !856, size: 128, offset: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !857, line: 43, size: 128, elements: !858)
!857 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !856, file: !857, line: 44, baseType: !444)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !856, file: !857, line: 45, baseType: !230, size: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !540, file: !541, line: 879, baseType: !862, size: 64, offset: 6848)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !540, file: !541, line: 882, baseType: !862, size: 64, offset: 6912)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !540, file: !541, line: 884, baseType: !399, size: 64, offset: 6976)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !540, file: !541, line: 885, baseType: !399, size: 64, offset: 7040)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !540, file: !541, line: 890, baseType: !399, size: 64, offset: 7104)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !540, file: !541, line: 891, baseType: !868, size: 128, offset: 7168)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !541, line: 242, size: 128, elements: !869)
!869 = !{!870, !871, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !868, file: !541, line: 244, baseType: !399, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !868, file: !541, line: 245, baseType: !399, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !868, file: !541, line: 246, baseType: !444, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !540, file: !541, line: 900, baseType: !60, size: 64, offset: 7296)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !540, file: !541, line: 901, baseType: !60, size: 64, offset: 7360)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !540, file: !541, line: 904, baseType: !399, size: 64, offset: 7424)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !540, file: !541, line: 907, baseType: !399, size: 64, offset: 7488)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !540, file: !541, line: 910, baseType: !60, size: 64, offset: 7552)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !540, file: !541, line: 911, baseType: !60, size: 64, offset: 7616)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !540, file: !541, line: 914, baseType: !880, size: 640, offset: 7680)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !881, line: 123, size: 640, elements: !882)
!881 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!882 = !{!883, !889, !890}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !880, file: !881, line: 124, baseType: !884, size: 576)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 576, elements: !284)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !881, line: 108, size: 192, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !885, file: !881, line: 109, baseType: !399, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !885, file: !881, line: 110, baseType: !672, size: 128, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !880, file: !881, line: 125, baseType: !7, size: 32, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !880, file: !881, line: 126, baseType: !7, size: 32, offset: 608)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !540, file: !541, line: 917, baseType: !892, size: 192, offset: 8320)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !881, line: 134, size: 192, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !892, file: !881, line: 135, baseType: !829, size: 128, align: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !892, file: !881, line: 136, baseType: !7, size: 32, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !540, file: !541, line: 923, baseType: !897, size: 64, offset: 8512)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !900, line: 11, flags: DIFlagFwdDecl)
!900 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!901 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !540, file: !541, line: 926, baseType: !897, size: 64, offset: 8576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !540, file: !541, line: 929, baseType: !897, size: 64, offset: 8640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !540, file: !541, line: 933, baseType: !904, size: 64, offset: 8704)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !541, line: 933, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !540, file: !541, line: 943, baseType: !907, size: 128, offset: 8768)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 128, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 16)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !540, file: !541, line: 945, baseType: !911, size: 64, offset: 8896)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !541, line: 49, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !540, file: !541, line: 956, baseType: !914, size: 64, offset: 8960)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !541, line: 45, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !540, file: !541, line: 959, baseType: !917, size: 64, offset: 9024)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !541, line: 959, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !540, file: !541, line: 962, baseType: !920, size: 64, offset: 9088)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !541, line: 66, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !540, file: !541, line: 966, baseType: !923, size: 64, offset: 9152)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !925, line: 35, flags: DIFlagFwdDecl)
!925 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!926 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !540, file: !541, line: 969, baseType: !927, size: 64, offset: 9216)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !881, line: 223, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !540, file: !541, line: 970, baseType: !930, size: 64, offset: 9280)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !541, line: 62, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !540, file: !541, line: 971, baseType: !933, size: 64, offset: 9344)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !934, line: 25, baseType: !935)
!934 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !934, line: 23, size: 64, elements: !936)
!936 = !{!937}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !935, file: !934, line: 24, baseType: !701, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !540, file: !541, line: 972, baseType: !933, size: 64, offset: 9408)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !540, file: !541, line: 974, baseType: !933, size: 64, offset: 9472)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !540, file: !541, line: 975, baseType: !941, size: 192, offset: 9536)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !942, line: 30, size: 192, elements: !943)
!942 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !941, file: !942, line: 31, baseType: !230, size: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !941, file: !942, line: 32, baseType: !933, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !540, file: !541, line: 976, baseType: !60, size: 64, offset: 9728)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !540, file: !541, line: 977, baseType: !328, size: 64, offset: 9792)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !540, file: !541, line: 978, baseType: !7, size: 32, offset: 9856)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !540, file: !541, line: 980, baseType: !832, size: 64, offset: 9920)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !540, file: !541, line: 989, baseType: !951, size: 128, offset: 9984)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !952, line: 35, size: 128, elements: !953)
!952 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !951, file: !952, line: 36, baseType: !90, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !951, file: !952, line: 37, baseType: !419, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !951, file: !952, line: 38, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !952, line: 23, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !540, file: !541, line: 992, baseType: !399, size: 64, offset: 10112)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !540, file: !541, line: 993, baseType: !399, size: 64, offset: 10176)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !540, file: !541, line: 996, baseType: !243, offset: 10240)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !540, file: !541, line: 999, baseType: !444, offset: 10240)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !540, file: !541, line: 1001, baseType: !964, size: 64, offset: 10240)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !541, line: 636, size: 64, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !964, file: !541, line: 637, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !540, file: !541, line: 1005, baseType: !675, size: 128, offset: 10304)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !540, file: !541, line: 1007, baseType: !539, size: 64, offset: 10432)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !540, file: !541, line: 1009, baseType: !971, size: 64, offset: 10496)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !541, line: 1009, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !540, file: !541, line: 1043, baseType: !59, size: 64, offset: 10560)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !540, file: !541, line: 1046, baseType: !975, size: 64, offset: 10624)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !541, line: 41, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !540, file: !541, line: 1050, baseType: !978, size: 64, offset: 10688)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !541, line: 42, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !540, file: !541, line: 1054, baseType: !981, size: 64, offset: 10752)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !541, line: 55, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !540, file: !541, line: 1056, baseType: !984, size: 64, offset: 10816)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !541, line: 40, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !540, file: !541, line: 1058, baseType: !987, size: 64, offset: 10880)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !541, line: 47, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !540, file: !541, line: 1061, baseType: !990, size: 64, offset: 10944)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !541, line: 43, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !540, file: !541, line: 1064, baseType: !60, size: 64, offset: 11008)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !540, file: !541, line: 1065, baseType: !994, size: 64, offset: 11072)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !942, line: 14, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !942, line: 12, size: 384, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !942, line: 13, baseType: !999, size: 384)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !996, file: !942, line: 13, size: 384, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !999, file: !942, line: 13, baseType: !90, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !999, file: !942, line: 13, baseType: !90, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !999, file: !942, line: 13, baseType: !90, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !999, file: !942, line: 13, baseType: !1005, size: 256, offset: 128)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1006, line: 32, size: 256, elements: !1007)
!1006 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1007 = !{!1008, !1014, !1027, !1033, !1042, !1062, !1067}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1005, file: !1006, line: 37, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !1006, line: 34, size: 64, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1009, file: !1006, line: 35, baseType: !791, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1009, file: !1006, line: 36, baseType: !1013, size: 32, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !316, line: 49, baseType: !7)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1005, file: !1006, line: 45, baseType: !1015, size: 192)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !1006, line: 40, size: 192, elements: !1016)
!1016 = !{!1017, !1019, !1020, !1026}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1015, file: !1006, line: 41, baseType: !1018, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !316, line: 95, baseType: !90)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1015, file: !1006, line: 42, baseType: !90, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1015, file: !1006, line: 43, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1006, line: 11, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1006, line: 8, size: 64, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1022, file: !1006, line: 9, baseType: !90, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1022, file: !1006, line: 10, baseType: !59, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1015, file: !1006, line: 44, baseType: !90, size: 32, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1005, file: !1006, line: 52, baseType: !1028, size: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !1006, line: 48, size: 128, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1028, file: !1006, line: 49, baseType: !791, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1028, file: !1006, line: 50, baseType: !1013, size: 32, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1028, file: !1006, line: 51, baseType: !1021, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1005, file: !1006, line: 61, baseType: !1034, size: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !1006, line: 55, size: 256, elements: !1035)
!1035 = !{!1036, !1037, !1038, !1039, !1041}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1034, file: !1006, line: 56, baseType: !791, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1034, file: !1006, line: 57, baseType: !1013, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1034, file: !1006, line: 58, baseType: !90, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1034, file: !1006, line: 59, baseType: !1040, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !316, line: 94, baseType: !317)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1034, file: !1006, line: 60, baseType: !1040, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1005, file: !1006, line: 95, baseType: !1043, size: 256)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !1006, line: 64, size: 256, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1043, file: !1006, line: 65, baseType: !59, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !1006, line: 77, baseType: !1047, size: 192, offset: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !1006, line: 77, size: 192, elements: !1048)
!1048 = !{!1049, !1050, !1057}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1047, file: !1006, line: 82, baseType: !528, size: 16)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1047, file: !1006, line: 88, baseType: !1051, size: 192)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !1006, line: 84, size: 192, elements: !1052)
!1052 = !{!1053, !1055, !1056}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1051, file: !1006, line: 85, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !654)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1051, file: !1006, line: 86, baseType: !59, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1051, file: !1006, line: 87, baseType: !59, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1047, file: !1006, line: 93, baseType: !1058, size: 96)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !1006, line: 90, size: 96, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1058, file: !1006, line: 91, baseType: !1054, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1058, file: !1006, line: 92, baseType: !550, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1005, file: !1006, line: 101, baseType: !1063, size: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !1006, line: 98, size: 128, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1063, file: !1006, line: 99, baseType: !61, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1063, file: !1006, line: 100, baseType: !90, size: 32, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1005, file: !1006, line: 108, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !1006, line: 104, size: 128, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1068, file: !1006, line: 105, baseType: !59, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1068, file: !1006, line: 106, baseType: !90, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1068, file: !1006, line: 107, baseType: !7, size: 32, offset: 96)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !540, file: !541, line: 1067, baseType: !1074, offset: 11136)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1075, line: 12, elements: !257)
!1075 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !540, file: !541, line: 1099, baseType: !1077, size: 64, offset: 11136)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !541, line: 56, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !540, file: !541, line: 1103, baseType: !230, size: 128, offset: 11200)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !540, file: !541, line: 1104, baseType: !1081, size: 64, offset: 11328)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !541, line: 46, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !540, file: !541, line: 1105, baseType: !496, size: 192, offset: 11392)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !540, file: !541, line: 1106, baseType: !7, size: 32, offset: 11584)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !540, file: !541, line: 1109, baseType: !1086, size: 128, offset: 11648)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1087, size: 128, elements: !1089)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !541, line: 51, flags: DIFlagFwdDecl)
!1089 = !{!1090}
!1090 = !DISubrange(count: 2)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !540, file: !541, line: 1110, baseType: !496, size: 192, offset: 11776)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !540, file: !541, line: 1111, baseType: !230, size: 128, offset: 11968)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !540, file: !541, line: 1173, baseType: !1094, size: 64, offset: 12096)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1096, line: 62, size: 256, align: 256, elements: !1097)
!1096 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1099, !1100, !1105}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1095, file: !1096, line: 75, baseType: !550, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1095, file: !1096, line: 90, baseType: !550, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1095, file: !1096, line: 124, baseType: !1101, size: 64, offset: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !1096, line: 109, size: 64, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1101, file: !1096, line: 110, baseType: !400, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1101, file: !1096, line: 112, baseType: !400, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1095, file: !1096, line: 144, baseType: !550, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !540, file: !541, line: 1174, baseType: !549, size: 32, offset: 12160)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !540, file: !541, line: 1179, baseType: !60, size: 64, offset: 12224)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !540, file: !541, line: 1182, baseType: !1109, size: 128, offset: 12288)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !474, line: 76, size: 128, elements: !1110)
!1110 = !{!1111, !1116, !1117}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1109, file: !474, line: 85, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1113, line: 7, size: 64, elements: !1114)
!1113 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1112, file: !1113, line: 12, baseType: !698, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1109, file: !474, line: 88, baseType: !203, size: 8, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1109, file: !474, line: 95, baseType: !203, size: 8, offset: 72)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !541, line: 1184, baseType: !1119, size: 128, offset: 12416)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !541, line: 1184, size: 128, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1119, file: !541, line: 1185, baseType: !554, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1119, file: !541, line: 1186, baseType: !829, size: 128, align: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !540, file: !541, line: 1190, baseType: !1124, size: 64, offset: 12544)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !541, line: 53, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !540, file: !541, line: 1192, baseType: !1127, size: 128, offset: 12608)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !474, line: 64, size: 128, elements: !1128)
!1128 = !{!1129, !1222, !1223}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1127, file: !474, line: 65, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !371, line: 68, size: 512, align: 128, elements: !1132)
!1132 = !{!1133, !1134, !1214, !1221}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !371, line: 69, baseType: !60, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !371, line: 77, baseType: !1135, size: 320, offset: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1131, file: !371, line: 77, size: 320, elements: !1136)
!1136 = !{!1137, !1146, !1151, !1179, !1187, !1193, !1206, !1213}
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !371, line: 78, baseType: !1138, size: 320)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !371, line: 78, size: 320, elements: !1139)
!1139 = !{!1140, !1141, !1144, !1145}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1138, file: !371, line: 84, baseType: !230, size: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1138, file: !371, line: 86, baseType: !1142, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !371, line: 26, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1138, file: !371, line: 87, baseType: !60, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1138, file: !371, line: 94, baseType: !60, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !371, line: 96, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !371, line: 96, size: 64, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1147, file: !371, line: 101, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !204, line: 143, baseType: !399)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !371, line: 103, baseType: !1152, size: 320)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !371, line: 103, size: 320, elements: !1153)
!1153 = !{!1154, !1164, !1167, !1168}
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !371, line: 104, baseType: !1155, size: 128)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !371, line: 104, size: 128, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1155, file: !371, line: 105, baseType: !230, size: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !371, line: 106, baseType: !1159, size: 128)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !371, line: 106, size: 128, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1159, file: !371, line: 107, baseType: !1130, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1159, file: !371, line: 109, baseType: !90, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1159, file: !371, line: 110, baseType: !90, size: 32, offset: 96)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1152, file: !371, line: 117, baseType: !1165, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !371, line: 117, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1152, file: !371, line: 119, baseType: !59, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !371, line: 120, baseType: !1169, size: 64, offset: 256)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !371, line: 120, size: 64, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1169, file: !371, line: 121, baseType: !59, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1169, file: !371, line: 122, baseType: !60, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !371, line: 123, baseType: !1174, size: 32)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1169, file: !371, line: 123, size: 32, elements: !1175)
!1175 = !{!1176, !1177, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1174, file: !371, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1174, file: !371, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1174, file: !371, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !371, line: 130, baseType: !1180, size: 192)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !371, line: 130, size: 192, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1180, file: !371, line: 131, baseType: !60, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1180, file: !371, line: 134, baseType: !115, size: 8, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1180, file: !371, line: 135, baseType: !115, size: 8, offset: 72)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1180, file: !371, line: 136, baseType: !419, size: 32, offset: 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1180, file: !371, line: 137, baseType: !7, size: 32, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !371, line: 139, baseType: !1188, size: 256)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !371, line: 139, size: 256, elements: !1189)
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1188, file: !371, line: 140, baseType: !60, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1188, file: !371, line: 141, baseType: !419, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1188, file: !371, line: 143, baseType: !230, size: 128, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !371, line: 145, baseType: !1194, size: 256)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !371, line: 145, size: 256, elements: !1195)
!1195 = !{!1196, !1197, !1199, !1200, !1205}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1194, file: !371, line: 146, baseType: !60, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1194, file: !371, line: 147, baseType: !1198, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !360, line: 509, baseType: !1130)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1194, file: !371, line: 148, baseType: !60, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !371, line: 149, baseType: !1201, size: 64, offset: 192)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !371, line: 149, size: 64, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1201, file: !371, line: 150, baseType: !387, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1201, file: !371, line: 151, baseType: !419, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1194, file: !371, line: 156, baseType: !243, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !371, line: 159, baseType: !1207, size: 128)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !371, line: 159, size: 128, elements: !1208)
!1208 = !{!1209, !1212}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1207, file: !371, line: 161, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !371, line: 161, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1207, file: !371, line: 162, baseType: !59, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1135, file: !371, line: 176, baseType: !829, size: 128, align: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !371, line: 179, baseType: !1215, size: 32, offset: 384)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1131, file: !371, line: 179, size: 32, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1215, file: !371, line: 184, baseType: !419, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1215, file: !371, line: 192, baseType: !7, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1215, file: !371, line: 194, baseType: !7, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1215, file: !371, line: 195, baseType: !90, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1131, file: !371, line: 199, baseType: !419, size: 32, offset: 416)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1127, file: !474, line: 67, baseType: !550, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1127, file: !474, line: 68, baseType: !550, size: 32, offset: 96)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !540, file: !541, line: 1206, baseType: !90, size: 32, offset: 12736)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !540, file: !541, line: 1207, baseType: !90, size: 32, offset: 12768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !540, file: !541, line: 1209, baseType: !60, size: 64, offset: 12800)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !540, file: !541, line: 1219, baseType: !399, size: 64, offset: 12864)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !540, file: !541, line: 1220, baseType: !399, size: 64, offset: 12928)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !540, file: !541, line: 1317, baseType: !90, size: 32, offset: 12992)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !540, file: !541, line: 1319, baseType: !539, size: 64, offset: 13056)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !540, file: !541, line: 1322, baseType: !1232, size: 64, offset: 13120)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1234, line: 56, size: 512, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1242, !1243, !1245}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1233, file: !1234, line: 57, baseType: !1232, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1233, file: !1234, line: 58, baseType: !59, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1233, file: !1234, line: 59, baseType: !60, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !1234, line: 60, baseType: !60, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1233, file: !1234, line: 61, baseType: !1241, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1233, file: !1234, line: 62, baseType: !7, size: 32, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1233, file: !1234, line: 63, baseType: !1244, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !204, line: 153, baseType: !399)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1233, file: !1234, line: 64, baseType: !1246, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !540, file: !541, line: 1326, baseType: !554, size: 32, offset: 13184)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !540, file: !541, line: 1342, baseType: !59, size: 64, offset: 13248)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !540, file: !541, line: 1343, baseType: !400, size: 64, offset: 13312)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !540, file: !541, line: 1344, baseType: !399, size: 64, offset: 13376)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !540, file: !541, line: 1345, baseType: !400, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !540, file: !541, line: 1346, baseType: !400, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !540, file: !541, line: 1347, baseType: !400, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !540, file: !541, line: 1348, baseType: !829, size: 128, align: 64, offset: 13504)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !540, file: !541, line: 1358, baseType: !1257, size: 34816, offset: 13824)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1258, line: 485, size: 34816, elements: !1259)
!1258 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1259 = !{!1260, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1289, !1290, !1291, !1292, !1293, !1294, !1297, !1298, !1299}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1257, file: !1258, line: 487, baseType: !1261, size: 192)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 192, elements: !284)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1263, line: 16, size: 64, elements: !1264)
!1263 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1262, file: !1263, line: 17, baseType: !103, size: 16)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1262, file: !1263, line: 18, baseType: !103, size: 16, offset: 16)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1262, file: !1263, line: 19, baseType: !103, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1262, file: !1263, line: 19, baseType: !103, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1262, file: !1263, line: 19, baseType: !103, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1262, file: !1263, line: 19, baseType: !103, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1262, file: !1263, line: 19, baseType: !103, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1262, file: !1263, line: 20, baseType: !103, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1262, file: !1263, line: 20, baseType: !103, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1262, file: !1263, line: 20, baseType: !103, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1262, file: !1263, line: 20, baseType: !103, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1262, file: !1263, line: 20, baseType: !103, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1262, file: !1263, line: 20, baseType: !103, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1257, file: !1258, line: 491, baseType: !60, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1257, file: !1258, line: 495, baseType: !107, size: 16, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1257, file: !1258, line: 496, baseType: !107, size: 16, offset: 272)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1257, file: !1258, line: 497, baseType: !107, size: 16, offset: 288)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1257, file: !1258, line: 498, baseType: !107, size: 16, offset: 304)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1257, file: !1258, line: 502, baseType: !60, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1257, file: !1258, line: 503, baseType: !60, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1257, file: !1258, line: 514, baseType: !1286, size: 256, offset: 448)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 256, elements: !478)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1258, line: 483, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1257, file: !1258, line: 516, baseType: !60, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1257, file: !1258, line: 518, baseType: !60, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1257, file: !1258, line: 520, baseType: !60, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1257, file: !1258, line: 521, baseType: !60, size: 64, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1257, file: !1258, line: 522, baseType: !60, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1257, file: !1258, line: 528, baseType: !1295, size: 64, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1258, line: 10, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1257, file: !1258, line: 535, baseType: !60, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1257, file: !1258, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1257, file: !1258, line: 540, baseType: !1300, size: 33280, offset: 1536)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1301, line: 317, size: 33280, elements: !1302)
!1301 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1300, file: !1301, line: 330, baseType: !7, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1300, file: !1301, line: 337, baseType: !60, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1300, file: !1301, line: 348, baseType: !1306, size: 32768, offset: 512)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1301, line: 304, size: 32768, elements: !1307)
!1307 = !{!1308, !1323, !1362, !1412, !1429}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1306, file: !1301, line: 305, baseType: !1309, size: 896)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1301, line: 12, size: 896, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1322}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1309, file: !1301, line: 13, baseType: !549, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1309, file: !1301, line: 14, baseType: !549, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1309, file: !1301, line: 15, baseType: !549, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1309, file: !1301, line: 16, baseType: !549, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1309, file: !1301, line: 17, baseType: !549, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1309, file: !1301, line: 18, baseType: !549, size: 32, offset: 160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1309, file: !1301, line: 19, baseType: !549, size: 32, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1309, file: !1301, line: 22, baseType: !1319, size: 640, offset: 224)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 640, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 20)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1309, file: !1301, line: 25, baseType: !549, size: 32, offset: 864)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1306, file: !1301, line: 306, baseType: !1324, size: 4096, align: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1301, line: 34, size: 4096, align: 128, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1345, !1346, !1347, !1351, !1353, !1357}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1324, file: !1301, line: 35, baseType: !103, size: 16)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1324, file: !1301, line: 36, baseType: !103, size: 16, offset: 16)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1324, file: !1301, line: 37, baseType: !103, size: 16, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1324, file: !1301, line: 38, baseType: !103, size: 16, offset: 48)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1301, line: 39, baseType: !1331, size: 128, offset: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !1301, line: 39, size: 128, elements: !1332)
!1332 = !{!1333, !1338}
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1301, line: 40, baseType: !1334, size: 128)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1301, line: 40, size: 128, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1334, file: !1301, line: 41, baseType: !399, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1334, file: !1301, line: 42, baseType: !399, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1301, line: 44, baseType: !1339, size: 128)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1301, line: 44, size: 128, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1339, file: !1301, line: 45, baseType: !549, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1339, file: !1301, line: 46, baseType: !549, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1339, file: !1301, line: 47, baseType: !549, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1339, file: !1301, line: 48, baseType: !549, size: 32, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1324, file: !1301, line: 51, baseType: !549, size: 32, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1324, file: !1301, line: 52, baseType: !549, size: 32, offset: 224)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1324, file: !1301, line: 55, baseType: !1348, size: 1024, offset: 256)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 1024, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1324, file: !1301, line: 58, baseType: !1352, size: 2048, offset: 1280)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 2048, elements: !288)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1324, file: !1301, line: 60, baseType: !1354, size: 384, offset: 3328)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 384, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 12)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1301, line: 62, baseType: !1358, size: 384, offset: 3712)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !1301, line: 62, size: 384, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1358, file: !1301, line: 63, baseType: !1354, size: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1358, file: !1301, line: 64, baseType: !1354, size: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1306, file: !1301, line: 307, baseType: !1363, size: 1088)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1301, line: 79, size: 1088, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1411}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1363, file: !1301, line: 80, baseType: !549, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1363, file: !1301, line: 81, baseType: !549, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1363, file: !1301, line: 82, baseType: !549, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1363, file: !1301, line: 83, baseType: !549, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1363, file: !1301, line: 84, baseType: !549, size: 32, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1363, file: !1301, line: 85, baseType: !549, size: 32, offset: 160)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1363, file: !1301, line: 86, baseType: !549, size: 32, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1363, file: !1301, line: 88, baseType: !1319, size: 640, offset: 224)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1363, file: !1301, line: 89, baseType: !113, size: 8, offset: 864)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1363, file: !1301, line: 90, baseType: !113, size: 8, offset: 872)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1363, file: !1301, line: 91, baseType: !113, size: 8, offset: 880)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1363, file: !1301, line: 92, baseType: !113, size: 8, offset: 888)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1363, file: !1301, line: 93, baseType: !113, size: 8, offset: 896)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1363, file: !1301, line: 94, baseType: !113, size: 8, offset: 904)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1363, file: !1301, line: 95, baseType: !1380, size: 64, offset: 960)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1382, line: 11, size: 128, elements: !1383)
!1382 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1381, file: !1382, line: 12, baseType: !61, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1381, file: !1382, line: 13, baseType: !1386, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1388, line: 56, size: 1344, elements: !1389)
!1388 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1387, file: !1388, line: 61, baseType: !60, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1387, file: !1388, line: 62, baseType: !60, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1387, file: !1388, line: 63, baseType: !60, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1387, file: !1388, line: 64, baseType: !60, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1387, file: !1388, line: 65, baseType: !60, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1387, file: !1388, line: 66, baseType: !60, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1387, file: !1388, line: 68, baseType: !60, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1387, file: !1388, line: 69, baseType: !60, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1387, file: !1388, line: 70, baseType: !60, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1387, file: !1388, line: 71, baseType: !60, size: 64, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1387, file: !1388, line: 72, baseType: !60, size: 64, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1387, file: !1388, line: 73, baseType: !60, size: 64, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1387, file: !1388, line: 74, baseType: !60, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1387, file: !1388, line: 75, baseType: !60, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1387, file: !1388, line: 76, baseType: !60, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1387, file: !1388, line: 81, baseType: !60, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1387, file: !1388, line: 83, baseType: !60, size: 64, offset: 1024)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1387, file: !1388, line: 84, baseType: !60, size: 64, offset: 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1387, file: !1388, line: 85, baseType: !60, size: 64, offset: 1152)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1387, file: !1388, line: 86, baseType: !60, size: 64, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1387, file: !1388, line: 87, baseType: !60, size: 64, offset: 1280)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1363, file: !1301, line: 96, baseType: !549, size: 32, offset: 1024)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1306, file: !1301, line: 308, baseType: !1413, size: 4608, align: 512)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1301, line: 289, size: 4608, align: 512, elements: !1414)
!1414 = !{!1415, !1416, !1425}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1413, file: !1301, line: 290, baseType: !1324, size: 4096, align: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1413, file: !1301, line: 291, baseType: !1417, size: 512, offset: 4096)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1301, line: 268, size: 512, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1417, file: !1301, line: 269, baseType: !399, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1417, file: !1301, line: 270, baseType: !399, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1417, file: !1301, line: 271, baseType: !1422, size: 384, offset: 128)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, elements: !1423)
!1423 = !{!1424}
!1424 = !DISubrange(count: 6)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1413, file: !1301, line: 292, baseType: !1426, offset: 4608)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !1427)
!1427 = !{!1428}
!1428 = !DISubrange(count: 0)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1306, file: !1301, line: 309, baseType: !1430, size: 32768)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 32768, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 4096)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !371, line: 378, baseType: !1434, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !532, file: !371, line: 384, baseType: !851, size: 192, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !391, file: !371, line: 500, baseType: !243, offset: 6656)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !391, file: !371, line: 501, baseType: !1438, size: 64, offset: 6656)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !371, line: 387, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !391, file: !371, line: 516, baseType: !1441, size: 64, offset: 6720)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1443, line: 18, flags: DIFlagFwdDecl)
!1443 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !391, file: !371, line: 519, baseType: !358, size: 64, offset: 6784)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !391, file: !371, line: 521, baseType: !1446, size: 64, offset: 6848)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !371, line: 521, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !391, file: !371, line: 545, baseType: !419, size: 32, offset: 6912)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !391, file: !371, line: 548, baseType: !203, size: 8, offset: 6944)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !391, file: !371, line: 550, baseType: !1451, offset: 6952)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1452, line: 142, elements: !257)
!1452 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !391, file: !371, line: 554, baseType: !1454, size: 256, offset: 6976)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1455, line: 102, size: 256, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1456 = !{!1457, !1458, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1454, file: !1455, line: 103, baseType: !427, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1454, file: !1455, line: 104, baseType: !230, size: 128, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1454, file: !1455, line: 105, baseType: !1460, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1455, line: 21, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !391, file: !371, line: 557, baseType: !549, size: 32, offset: 7232)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !388, file: !371, line: 565, baseType: !1467, offset: 7296)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !1468)
!1468 = !{!1469}
!1469 = !DISubrange(count: -1)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !370, file: !371, line: 333, baseType: !1471, size: 64, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !360, line: 284, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !360, line: 284, size: 64, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1472, file: !360, line: 284, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !417, line: 19, baseType: !60)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !370, file: !371, line: 334, baseType: !60, size: 64, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !370, file: !371, line: 343, baseType: !1478, size: 256, offset: 704)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !371, line: 340, size: 256, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1478, file: !371, line: 341, baseType: !378, size: 192, align: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1478, file: !371, line: 342, baseType: !60, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !370, file: !371, line: 351, baseType: !230, size: 128, offset: 960)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !370, file: !371, line: 353, baseType: !1484, size: 64, offset: 1088)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !371, line: 353, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !370, file: !371, line: 356, baseType: !1487, size: 64, offset: 1152)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !371, line: 356, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !370, file: !371, line: 359, baseType: !60, size: 64, offset: 1216)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !370, file: !371, line: 361, baseType: !358, size: 64, offset: 1280)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !370, file: !371, line: 362, baseType: !59, size: 64, offset: 1344)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !370, file: !371, line: 365, baseType: !427, size: 64, offset: 1408)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !370, file: !371, line: 373, baseType: !1495, offset: 1472)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !371, line: 296, elements: !257)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !337, file: !308, line: 90, baseType: !332, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !337, file: !308, line: 91, baseType: !1498, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !298, file: !226, line: 143, baseType: !1500, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1503, !236}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1506)
!1506 = !{!1507, !1508, !1512, !1516, !1522, !1526}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1505, file: !18, line: 40, baseType: !17, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1505, file: !18, line: 41, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!203}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1505, file: !18, line: 42, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!59}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1505, file: !18, line: 43, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1246, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1505, file: !18, line: 44, baseType: !1523, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1246}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1505, file: !18, line: 45, baseType: !98, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !298, file: !226, line: 144, baseType: !1528, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!1246, !236}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !298, file: !226, line: 145, baseType: !1532, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !236, !1535, !1541}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1443, line: 23, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1443, line: 21, size: 32, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1537, file: !1443, line: 22, baseType: !1540, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !204, line: 32, baseType: !1013)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1443, line: 28, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1443, line: 26, size: 32, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1543, file: !1443, line: 27, baseType: !1546, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !204, line: 33, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !316, line: 50, baseType: !7)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !225, file: !226, line: 70, baseType: !1549, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1551, line: 123, size: 1024, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1695, !1696, !1697, !1698, !1699}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1550, file: !1551, line: 124, baseType: !419, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1550, file: !1551, line: 125, baseType: !419, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1550, file: !1551, line: 135, baseType: !1549, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1550, file: !1551, line: 136, baseType: !77, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1550, file: !1551, line: 138, baseType: !378, size: 192, align: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1550, file: !1551, line: 140, baseType: !1246, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1550, file: !1551, line: 141, baseType: !7, size: 32, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !1551, line: 142, baseType: !1561, size: 256, offset: 512)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1550, file: !1551, line: 142, size: 256, elements: !1562)
!1562 = !{!1563, !1618, !1622}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1561, file: !1551, line: 143, baseType: !1564, size: 192)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1551, line: 91, size: 192, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1564, file: !1551, line: 92, baseType: !60, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1564, file: !1551, line: 94, baseType: !395, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1564, file: !1551, line: 100, baseType: !1569, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1551, line: 180, size: 704, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1588, !1589, !1590, !1616, !1617}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1570, file: !1551, line: 182, baseType: !1549, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !1551, line: 183, baseType: !7, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1570, file: !1551, line: 186, baseType: !1575, size: 192, offset: 128)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1576, line: 19, size: 192, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1586, !1587}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1575, file: !1576, line: 20, baseType: !1579, size: 128)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1580, line: 292, size: 128, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582, !1583, !1585}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1579, file: !1580, line: 293, baseType: !243)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1579, file: !1580, line: 295, baseType: !1584, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !204, line: 148, baseType: !7)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1579, file: !1580, line: 296, baseType: !59, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1575, file: !1576, line: 21, baseType: !7, size: 32, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1575, file: !1576, line: 22, baseType: !7, size: 32, offset: 160)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1570, file: !1551, line: 187, baseType: !549, size: 32, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1570, file: !1551, line: 188, baseType: !549, size: 32, offset: 352)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1570, file: !1551, line: 189, baseType: !1591, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1551, line: 168, size: 320, elements: !1593)
!1593 = !{!1594, !1600, !1604, !1608, !1612}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1592, file: !1551, line: 169, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!90, !1598, !1569}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !360, line: 539, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1592, file: !1551, line: 171, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!90, !1549, !77, !323}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1592, file: !1551, line: 173, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!90, !1549}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1592, file: !1551, line: 174, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!90, !1549, !1549, !77}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1592, file: !1551, line: 176, baseType: !1613, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!90, !1598, !1549, !1569}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1570, file: !1551, line: 192, baseType: !230, size: 128, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1570, file: !1551, line: 194, baseType: !822, size: 128, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1561, file: !1551, line: 144, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1551, line: 103, size: 64, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1619, file: !1551, line: 104, baseType: !1549, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1561, file: !1551, line: 145, baseType: !1623, size: 256)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1551, line: 107, size: 256, elements: !1624)
!1624 = !{!1625, !1690, !1693, !1694}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1623, file: !1551, line: 108, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1551, line: 217, size: 768, elements: !1629)
!1629 = !{!1630, !1650, !1654, !1658, !1663, !1667, !1671, !1675, !1676, !1677, !1678, !1686}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1628, file: !1551, line: 222, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!90, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1551, line: 197, size: 1088, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1635, file: !1551, line: 199, baseType: !1549, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1635, file: !1551, line: 200, baseType: !358, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1635, file: !1551, line: 201, baseType: !1598, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1635, file: !1551, line: 202, baseType: !59, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1635, file: !1551, line: 205, baseType: !496, size: 192, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1635, file: !1551, line: 206, baseType: !496, size: 192, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1635, file: !1551, line: 207, baseType: !90, size: 32, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1635, file: !1551, line: 208, baseType: !230, size: 128, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1635, file: !1551, line: 209, baseType: !96, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1635, file: !1551, line: 211, baseType: !328, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1635, file: !1551, line: 212, baseType: !203, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1635, file: !1551, line: 213, baseType: !203, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1635, file: !1551, line: 214, baseType: !1487, size: 64, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1628, file: !1551, line: 223, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !1634}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1628, file: !1551, line: 236, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!90, !1598, !59}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1628, file: !1551, line: 238, baseType: !1659, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!59, !1598, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1628, file: !1551, line: 239, baseType: !1664, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!59, !1598, !59, !1662}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1628, file: !1551, line: 240, baseType: !1668, size: 64, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1598, !59}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1628, file: !1551, line: 242, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!314, !1634, !96, !328, !361}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1628, file: !1551, line: 252, baseType: !328, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1628, file: !1551, line: 259, baseType: !203, size: 8, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1628, file: !1551, line: 260, baseType: !1672, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1628, file: !1551, line: 263, baseType: !1679, size: 64, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1682, !1634, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1683, line: 52, baseType: !7)
!1683 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1551, line: 27, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1628, file: !1551, line: 266, baseType: !1687, size: 64, offset: 704)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!90, !1634, !369}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1623, file: !1551, line: 109, baseType: !1691, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1551, line: 31, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1623, file: !1551, line: 110, baseType: !361, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1623, file: !1551, line: 111, baseType: !1549, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1550, file: !1551, line: 148, baseType: !59, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1550, file: !1551, line: 154, baseType: !399, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1550, file: !1551, line: 156, baseType: !107, size: 16, offset: 896)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1550, file: !1551, line: 157, baseType: !323, size: 16, offset: 912)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1550, file: !1551, line: 158, baseType: !1700, size: 64, offset: 960)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1551, line: 32, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !225, file: !226, line: 71, baseType: !1703, size: 32, offset: 448)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1704, line: 19, size: 32, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1703, file: !1704, line: 20, baseType: !554, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !225, file: !226, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !225, file: !226, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !225, file: !226, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !225, file: !226, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !225, file: !226, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !30, line: 463, baseType: !1713, size: 64, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !222, file: !30, line: 465, baseType: !1715, size: 64, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !222, file: !30, line: 467, baseType: !77, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !222, file: !30, line: 468, baseType: !1719, size: 64, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1729, !1734, !1738}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1721, file: !30, line: 88, baseType: !77, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1721, file: !30, line: 89, baseType: !334, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1721, file: !30, line: 90, baseType: !1726, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!90, !1713, !279}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1721, file: !30, line: 91, baseType: !1730, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!96, !1713, !1733, !1535, !1541}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1721, file: !30, line: 93, baseType: !1735, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1713}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1721, file: !30, line: 95, baseType: !1739, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1742)
!1742 = !{!1743, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1741, file: !37, line: 279, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!90, !1713}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1741, file: !37, line: 280, baseType: !1735, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1741, file: !37, line: 281, baseType: !1744, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1741, file: !37, line: 282, baseType: !1744, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1741, file: !37, line: 283, baseType: !1744, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1741, file: !37, line: 284, baseType: !1744, size: 64, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1741, file: !37, line: 285, baseType: !1744, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1741, file: !37, line: 286, baseType: !1744, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1741, file: !37, line: 287, baseType: !1744, size: 64, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1741, file: !37, line: 288, baseType: !1744, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1741, file: !37, line: 289, baseType: !1744, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1741, file: !37, line: 290, baseType: !1744, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1741, file: !37, line: 291, baseType: !1744, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1741, file: !37, line: 292, baseType: !1744, size: 64, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1741, file: !37, line: 293, baseType: !1744, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1741, file: !37, line: 294, baseType: !1744, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1741, file: !37, line: 295, baseType: !1744, size: 64, offset: 1024)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1741, file: !37, line: 296, baseType: !1744, size: 64, offset: 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1741, file: !37, line: 297, baseType: !1744, size: 64, offset: 1152)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1741, file: !37, line: 298, baseType: !1744, size: 64, offset: 1216)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1741, file: !37, line: 299, baseType: !1744, size: 64, offset: 1280)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1741, file: !37, line: 300, baseType: !1744, size: 64, offset: 1344)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1741, file: !37, line: 301, baseType: !1744, size: 64, offset: 1408)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !222, file: !30, line: 470, baseType: !1770, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1772, line: 82, size: 1408, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1856, !1859, !1862}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1771, file: !1772, line: 83, baseType: !77, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1771, file: !1772, line: 84, baseType: !77, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1771, file: !1772, line: 85, baseType: !1713, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1771, file: !1772, line: 86, baseType: !334, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1771, file: !1772, line: 87, baseType: !334, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1771, file: !1772, line: 88, baseType: !334, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1771, file: !1772, line: 90, baseType: !1781, size: 64, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!90, !1713, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1807, !1820, !1821, !1822, !1823, !1824, !1832, !1833, !1834, !1835, !1836, !1837}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1785, file: !24, line: 96, baseType: !77, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1785, file: !24, line: 97, baseType: !1770, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1785, file: !24, line: 99, baseType: !56, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1785, file: !24, line: 100, baseType: !77, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1785, file: !24, line: 102, baseType: !203, size: 8, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1785, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1785, file: !24, line: 105, baseType: !1794, size: 64, offset: 320)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1797, line: 262, size: 1600, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1798 = !{!1799, !1801, !1802, !1806}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1796, file: !1797, line: 263, baseType: !1800, size: 256)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, elements: !1349)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1796, file: !1797, line: 264, baseType: !1800, size: 256, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1796, file: !1797, line: 265, baseType: !1803, size: 1024, offset: 512)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 1024, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1796, file: !1797, line: 266, baseType: !1246, size: 64, offset: 1536)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1785, file: !24, line: 106, baseType: !1808, size: 64, offset: 384)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1797, line: 210, size: 256, elements: !1811)
!1811 = !{!1812, !1816, !1818, !1819}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1810, file: !1797, line: 211, baseType: !1813, size: 72)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 72, elements: !1814)
!1814 = !{!1815}
!1815 = !DISubrange(count: 9)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1810, file: !1797, line: 212, baseType: !1817, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1797, line: 14, baseType: !60)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1810, file: !1797, line: 213, baseType: !550, size: 32, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1810, file: !1797, line: 214, baseType: !550, size: 32, offset: 224)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1785, file: !24, line: 108, baseType: !1744, size: 64, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1785, file: !24, line: 109, baseType: !1735, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1785, file: !24, line: 110, baseType: !1744, size: 64, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1785, file: !24, line: 111, baseType: !1735, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1785, file: !24, line: 112, baseType: !1825, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!90, !1713, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1830)
!1830 = !{!1831}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1829, file: !37, line: 51, baseType: !90, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1785, file: !24, line: 113, baseType: !1744, size: 64, offset: 768)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1785, file: !24, line: 114, baseType: !334, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1785, file: !24, line: 115, baseType: !334, size: 64, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1785, file: !24, line: 117, baseType: !1739, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1785, file: !24, line: 118, baseType: !1735, size: 64, offset: 1024)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1785, file: !24, line: 120, baseType: !1838, size: 64, offset: 1088)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1771, file: !1772, line: 91, baseType: !1726, size: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1771, file: !1772, line: 92, baseType: !1744, size: 64, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1771, file: !1772, line: 93, baseType: !1735, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1771, file: !1772, line: 94, baseType: !1744, size: 64, offset: 640)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1771, file: !1772, line: 95, baseType: !1735, size: 64, offset: 704)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1771, file: !1772, line: 97, baseType: !1744, size: 64, offset: 768)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1771, file: !1772, line: 98, baseType: !1744, size: 64, offset: 832)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1771, file: !1772, line: 100, baseType: !1825, size: 64, offset: 896)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1771, file: !1772, line: 101, baseType: !1744, size: 64, offset: 960)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1771, file: !1772, line: 103, baseType: !1744, size: 64, offset: 1024)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1771, file: !1772, line: 105, baseType: !1744, size: 64, offset: 1088)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1771, file: !1772, line: 107, baseType: !1739, size: 64, offset: 1152)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1771, file: !1772, line: 109, baseType: !1853, size: 64, offset: 1216)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1772, line: 109, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1771, file: !1772, line: 111, baseType: !1857, size: 64, offset: 1280)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1772, line: 111, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1771, file: !1772, line: 112, baseType: !1860, offset: 1344)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1861, line: 187, elements: !257)
!1861 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1771, file: !1772, line: 114, baseType: !203, size: 8, offset: 1344)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !222, file: !30, line: 471, baseType: !1784, size: 64, offset: 832)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !222, file: !30, line: 473, baseType: !59, size: 64, offset: 896)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !222, file: !30, line: 475, baseType: !59, size: 64, offset: 960)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !222, file: !30, line: 480, baseType: !496, size: 192, offset: 1024)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !222, file: !30, line: 484, baseType: !1868, size: 576, offset: 1216)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1868, file: !30, line: 362, baseType: !230, size: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1868, file: !30, line: 363, baseType: !230, size: 128, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1868, file: !30, line: 364, baseType: !230, size: 128, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1868, file: !30, line: 365, baseType: !230, size: 128, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1868, file: !30, line: 366, baseType: !203, size: 8, offset: 512)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1868, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !222, file: !30, line: 485, baseType: !1877, size: 2304, offset: 1792)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1974, !1978}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1877, file: !37, line: 566, baseType: !1828, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1877, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1877, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1877, file: !37, line: 569, baseType: !203, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1877, file: !37, line: 570, baseType: !203, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1877, file: !37, line: 571, baseType: !203, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1877, file: !37, line: 572, baseType: !203, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1877, file: !37, line: 573, baseType: !203, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1877, file: !37, line: 574, baseType: !203, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1877, file: !37, line: 575, baseType: !203, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1877, file: !37, line: 576, baseType: !203, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1877, file: !37, line: 577, baseType: !549, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1877, file: !37, line: 578, baseType: !243, offset: 96)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1877, file: !37, line: 580, baseType: !230, size: 128, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1877, file: !37, line: 581, baseType: !851, size: 192, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1877, file: !37, line: 582, baseType: !1895, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1897, line: 43, size: 1472, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1906, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1896, file: !1897, line: 44, baseType: !77, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1896, file: !1897, line: 45, baseType: !90, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1896, file: !1897, line: 46, baseType: !230, size: 128, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1896, file: !1897, line: 47, baseType: !243, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1896, file: !1897, line: 48, baseType: !1904, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1896, file: !1897, line: 49, baseType: !1907, size: 320, offset: 320)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1908, line: 11, size: 320, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !{!1910, !1911, !1912, !1917}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1907, file: !1908, line: 16, baseType: !815, size: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1907, file: !1908, line: 17, baseType: !60, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1907, file: !1908, line: 18, baseType: !1913, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !1908, line: 19, baseType: !549, size: 32, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1896, file: !1897, line: 50, baseType: !60, size: 64, offset: 640)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1896, file: !1897, line: 51, baseType: !624, size: 64, offset: 704)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1896, file: !1897, line: 52, baseType: !624, size: 64, offset: 768)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1896, file: !1897, line: 53, baseType: !624, size: 64, offset: 832)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1896, file: !1897, line: 54, baseType: !624, size: 64, offset: 896)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1896, file: !1897, line: 55, baseType: !624, size: 64, offset: 960)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1896, file: !1897, line: 56, baseType: !60, size: 64, offset: 1024)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1896, file: !1897, line: 57, baseType: !60, size: 64, offset: 1088)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1896, file: !1897, line: 58, baseType: !60, size: 64, offset: 1152)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1896, file: !1897, line: 59, baseType: !60, size: 64, offset: 1216)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1896, file: !1897, line: 60, baseType: !60, size: 64, offset: 1280)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1896, file: !1897, line: 61, baseType: !1713, size: 64, offset: 1344)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1896, file: !1897, line: 62, baseType: !203, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1896, file: !1897, line: 63, baseType: !203, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1877, file: !37, line: 583, baseType: !203, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1877, file: !37, line: 584, baseType: !203, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1877, file: !37, line: 585, baseType: !203, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1877, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1877, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1877, file: !37, line: 592, baseType: !616, size: 512, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1877, file: !37, line: 593, baseType: !399, size: 64, offset: 1088)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1877, file: !37, line: 594, baseType: !1454, size: 256, offset: 1152)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1877, file: !37, line: 595, baseType: !822, size: 128, offset: 1408)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1877, file: !37, line: 596, baseType: !1904, size: 64, offset: 1536)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1877, file: !37, line: 597, baseType: !419, size: 32, offset: 1600)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1877, file: !37, line: 598, baseType: !419, size: 32, offset: 1632)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1877, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1877, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1877, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1877, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1877, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1877, file: !37, line: 604, baseType: !203, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1877, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1877, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1877, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1877, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1877, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1877, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1877, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1877, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1877, file: !37, line: 613, baseType: !90, size: 32, offset: 1792)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1877, file: !37, line: 614, baseType: !90, size: 32, offset: 1824)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1877, file: !37, line: 615, baseType: !399, size: 64, offset: 1856)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1877, file: !37, line: 616, baseType: !399, size: 64, offset: 1920)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1877, file: !37, line: 617, baseType: !399, size: 64, offset: 1984)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1877, file: !37, line: 618, baseType: !399, size: 64, offset: 2048)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1877, file: !37, line: 620, baseType: !1965, size: 64, offset: 2112)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1971}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1966, file: !37, line: 537, baseType: !243)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1966, file: !37, line: 538, baseType: !7, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1966, file: !37, line: 540, baseType: !230, size: 128, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1966, file: !37, line: 543, baseType: !1972, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1877, file: !37, line: 621, baseType: !1975, size: 64, offset: 2176)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1713, !775}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1877, file: !37, line: 622, baseType: !1979, size: 64, offset: 2240)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !222, file: !30, line: 486, baseType: !1982, size: 64, offset: 4096)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1991, !1992, !1993}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1983, file: !37, line: 643, baseType: !1741, size: 1472)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1983, file: !37, line: 644, baseType: !1744, size: 64, offset: 1472)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1983, file: !37, line: 645, baseType: !1988, size: 64, offset: 1536)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1713, !203}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1983, file: !37, line: 646, baseType: !1744, size: 64, offset: 1600)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1983, file: !37, line: 647, baseType: !1735, size: 64, offset: 1664)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1983, file: !37, line: 648, baseType: !1735, size: 64, offset: 1728)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !222, file: !30, line: 493, baseType: !1995, size: 64, offset: 4160)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !222, file: !30, line: 499, baseType: !230, size: 128, offset: 4224)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !222, file: !30, line: 502, baseType: !1999, size: 64, offset: 4352)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !222, file: !30, line: 504, baseType: !2003, size: 64, offset: 4416)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !222, file: !30, line: 505, baseType: !399, size: 64, offset: 4480)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !222, file: !30, line: 510, baseType: !399, size: 64, offset: 4544)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !222, file: !30, line: 511, baseType: !2007, size: 64, offset: 4608)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !222, file: !30, line: 513, baseType: !2011, size: 64, offset: 4672)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2012, file: !30, line: 293, baseType: !7, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2012, file: !30, line: 294, baseType: !60, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !222, file: !30, line: 515, baseType: !230, size: 128, offset: 4736)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !222, file: !30, line: 526, baseType: !2018, offset: 4864)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2019, line: 5, elements: !257)
!2019 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !222, file: !30, line: 528, baseType: !2021, size: 64, offset: 4864)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2023, line: 51, size: 1344, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025, !2026, !2028, !2029, !2119, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2022, file: !2023, line: 52, baseType: !77, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2022, file: !2023, line: 53, baseType: !2027, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2023, line: 28, baseType: !549)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2022, file: !2023, line: 54, baseType: !77, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2022, file: !2023, line: 55, baseType: !2030, size: 192, offset: 192)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2031, line: 17, size: 192, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !{!2033, !2035, !2118}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2030, file: !2031, line: 18, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2030, file: !2031, line: 19, baseType: !2036, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2031, line: 110, size: 1152, elements: !2039)
!2039 = !{!2040, !2044, !2048, !2054, !2060, !2064, !2068, !2073, !2077, !2078, !2082, !2086, !2090, !2101, !2102, !2103, !2104, !2114}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2038, file: !2031, line: 111, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!2034, !2034}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2038, file: !2031, line: 112, baseType: !2045, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !2034}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2038, file: !2031, line: 113, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!203, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2038, file: !2031, line: 114, baseType: !2055, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1246, !2052, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2038, file: !2031, line: 116, baseType: !2061, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!203, !2052, !77}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2038, file: !2031, line: 118, baseType: !2065, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!90, !2052, !77, !7, !59, !328}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2038, file: !2031, line: 123, baseType: !2069, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!90, !2052, !77, !2072, !328}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2038, file: !2031, line: 126, baseType: !2074, size: 64, offset: 448)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!77, !2052}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2038, file: !2031, line: 127, baseType: !2074, size: 64, offset: 512)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2038, file: !2031, line: 128, baseType: !2079, size: 64, offset: 576)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!2034, !2052}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2038, file: !2031, line: 130, baseType: !2083, size: 64, offset: 640)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!2034, !2052, !2034}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2038, file: !2031, line: 133, baseType: !2087, size: 64, offset: 704)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2034, !2052, !77}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2038, file: !2031, line: 135, baseType: !2091, size: 64, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!90, !2052, !77, !77, !7, !7, !2094}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2031, line: 43, size: 640, elements: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2095, file: !2031, line: 44, baseType: !2034, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2095, file: !2031, line: 45, baseType: !7, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2095, file: !2031, line: 46, baseType: !2100, size: 512, offset: 128)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 512, elements: !654)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2038, file: !2031, line: 140, baseType: !2083, size: 64, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2038, file: !2031, line: 143, baseType: !2079, size: 64, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2038, file: !2031, line: 145, baseType: !2041, size: 64, offset: 960)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2038, file: !2031, line: 146, baseType: !2105, size: 64, offset: 1024)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!90, !2052, !2108}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2031, line: 29, size: 128, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2109, file: !2031, line: 30, baseType: !7, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2109, file: !2031, line: 31, baseType: !7, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2109, file: !2031, line: 32, baseType: !2052, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2038, file: !2031, line: 148, baseType: !2115, size: 64, offset: 1088)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!90, !2052, !1713}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2030, file: !2031, line: 20, baseType: !1713, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2022, file: !2023, line: 57, baseType: !2120, size: 64, offset: 384)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2023, line: 31, size: 704, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126, !2127}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2121, file: !2023, line: 32, baseType: !96, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2121, file: !2023, line: 33, baseType: !90, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2121, file: !2023, line: 34, baseType: !59, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2121, file: !2023, line: 35, baseType: !2120, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2121, file: !2023, line: 43, baseType: !349, size: 448, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2022, file: !2023, line: 58, baseType: !2120, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2022, file: !2023, line: 59, baseType: !2021, size: 64, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2022, file: !2023, line: 60, baseType: !2021, size: 64, offset: 576)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2022, file: !2023, line: 61, baseType: !2021, size: 64, offset: 640)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2022, file: !2023, line: 63, baseType: !225, size: 512, offset: 704)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2022, file: !2023, line: 65, baseType: !60, size: 64, offset: 1216)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2022, file: !2023, line: 66, baseType: !59, size: 64, offset: 1280)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !222, file: !30, line: 529, baseType: !2034, size: 64, offset: 4928)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !222, file: !30, line: 534, baseType: !2137, size: 32, offset: 4992)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !204, line: 16, baseType: !2138)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !204, line: 13, baseType: !549)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !222, file: !30, line: 535, baseType: !549, size: 32, offset: 5024)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !222, file: !30, line: 537, baseType: !243, offset: 5056)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !222, file: !30, line: 538, baseType: !230, size: 128, offset: 5056)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !222, file: !30, line: 540, baseType: !2143, size: 64, offset: 5184)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2145, line: 54, size: 960, elements: !2146)
!2145 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2146 = !{!2147, !2148, !2149, !2150, !2151, !2152, !2153, !2157, !2161, !2162, !2163, !2164, !2168, !2172, !2173}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2144, file: !2145, line: 55, baseType: !77, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2144, file: !2145, line: 56, baseType: !56, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2144, file: !2145, line: 58, baseType: !334, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2144, file: !2145, line: 59, baseType: !334, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2144, file: !2145, line: 60, baseType: !236, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2144, file: !2145, line: 62, baseType: !1726, size: 64, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2144, file: !2145, line: 63, baseType: !2154, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!96, !1713, !1733}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2144, file: !2145, line: 65, baseType: !2158, size: 64, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !2143}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2144, file: !2145, line: 66, baseType: !1735, size: 64, offset: 512)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2144, file: !2145, line: 68, baseType: !1744, size: 64, offset: 576)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2144, file: !2145, line: 70, baseType: !1503, size: 64, offset: 640)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2144, file: !2145, line: 71, baseType: !2165, size: 64, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!1246, !1713}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2144, file: !2145, line: 73, baseType: !2169, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !1713, !1535, !1541}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2144, file: !2145, line: 75, baseType: !1739, size: 64, offset: 832)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2144, file: !2145, line: 77, baseType: !1857, size: 64, offset: 896)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !222, file: !30, line: 541, baseType: !334, size: 64, offset: 5248)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !222, file: !30, line: 543, baseType: !1735, size: 64, offset: 5312)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !222, file: !30, line: 544, baseType: !2177, size: 64, offset: 5376)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !222, file: !30, line: 545, baseType: !2180, size: 64, offset: 5440)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !222, file: !30, line: 547, baseType: !203, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !222, file: !30, line: 548, baseType: !203, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !222, file: !30, line: 549, baseType: !203, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !222, file: !30, line: 550, baseType: !203, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !216, file: !209, line: 27, baseType: !399, size: 64, offset: 5696)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !216, file: !209, line: 28, baseType: !2012, size: 128, offset: 5760)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !216, file: !209, line: 29, baseType: !549, size: 32, offset: 5888)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !216, file: !209, line: 30, baseType: !2190, size: 64, offset: 5952)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2192, line: 20, size: 512, elements: !2193)
!2192 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2193 = !{!2194, !2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2191, file: !2192, line: 21, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !204, line: 158, baseType: !1244)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2191, file: !2192, line: 22, baseType: !2195, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2191, file: !2192, line: 23, baseType: !77, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2191, file: !2192, line: 24, baseType: !60, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2191, file: !2192, line: 25, baseType: !60, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2191, file: !2192, line: 26, baseType: !2190, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2191, file: !2192, line: 26, baseType: !2190, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2191, file: !2192, line: 26, baseType: !2190, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !216, file: !209, line: 32, baseType: !2204, size: 64, offset: 6016)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1797, line: 586, size: 256, elements: !2207)
!2207 = !{!2208, !2210}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2206, file: !1797, line: 587, baseType: !2209, size: 160)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 160, elements: !1320)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2206, file: !1797, line: 588, baseType: !1817, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !216, file: !209, line: 33, baseType: !96, size: 64, offset: 6080)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !216, file: !209, line: 36, baseType: !2213, size: 64, offset: 6144)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !209, line: 18, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !216, file: !209, line: 39, baseType: !2216, offset: 6208)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2019, line: 8, elements: !257)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !208, file: !209, line: 202, baseType: !212, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !208, file: !209, line: 203, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !215}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !208, file: !209, line: 204, baseType: !2223, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!90, !215, !1828}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !208, file: !209, line: 205, baseType: !212, size: 64, offset: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !208, file: !209, line: 206, baseType: !1785, size: 1152, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !208, file: !209, line: 207, baseType: !2204, size: 64, offset: 1472)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !208, file: !209, line: 208, baseType: !203, size: 8, offset: 1536)
!2230 = !DIGlobalVariableExpression(var: !2231, expr: !DIExpression())
!2231 = distinct !DIGlobalVariable(name: "sirfsoc_wdd", scope: !2, file: !3, line: 138, type: !2232, isLocal: true, isDefinition: true)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_device", file: !2233, line: 94, size: 1344, elements: !2234)
!2233 = !DIFile(filename: "./include/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!2234 = !{!2235, !2236, !2237, !2238, !2248, !2279, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2302, !2303, !2304, !2307, !2308}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2232, file: !2233, line: 95, baseType: !90, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2232, file: !2233, line: 96, baseType: !1713, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2232, file: !2233, line: 97, baseType: !334, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2232, file: !2233, line: 98, baseType: !2239, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2241)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_info", file: !2242, line: 18, size: 320, elements: !2243)
!2242 = !DIFile(filename: "./include/uapi/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!2243 = !{!2244, !2245, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2241, file: !2242, line: 19, baseType: !550, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_version", scope: !2241, file: !2242, line: 20, baseType: !550, size: 32, offset: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "identity", scope: !2241, file: !2242, line: 21, baseType: !2247, size: 256, offset: 64)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !1349)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2232, file: !2233, line: 99, baseType: !2249, size: 64, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2251)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_ops", file: !2233, line: 43, size: 640, elements: !2252)
!2252 = !{!2253, !2254, !2259, !2260, !2261, !2265, !2269, !2270, !2271, !2275}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2251, file: !2233, line: 44, baseType: !56, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2251, file: !2233, line: 46, baseType: !2255, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!90, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2251, file: !2233, line: 48, baseType: !2255, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !2251, file: !2233, line: 49, baseType: !2255, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2251, file: !2233, line: 50, baseType: !2262, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!7, !2258}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "set_timeout", scope: !2251, file: !2233, line: 51, baseType: !2266, size: 64, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!90, !2258, !7}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "set_pretimeout", scope: !2251, file: !2233, line: 52, baseType: !2266, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeleft", scope: !2251, file: !2233, line: 53, baseType: !2262, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "restart", scope: !2251, file: !2233, line: 54, baseType: !2272, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!90, !2258, !60, !59}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2251, file: !2233, line: 55, baseType: !2276, size: 64, offset: 576)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!61, !2258, !7, !60}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !2232, file: !2233, line: 100, baseType: !2280, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2282)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_governor", file: !2233, line: 23, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "bootstatus", scope: !2232, file: !2233, line: 101, baseType: !7, size: 32, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2232, file: !2233, line: 102, baseType: !7, size: 32, offset: 416)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pretimeout", scope: !2232, file: !2233, line: 103, baseType: !7, size: 32, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !2232, file: !2233, line: 104, baseType: !7, size: 32, offset: 480)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !2232, file: !2233, line: 105, baseType: !7, size: 32, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "min_hw_heartbeat_ms", scope: !2232, file: !2233, line: 106, baseType: !7, size: 32, offset: 544)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_heartbeat_ms", scope: !2232, file: !2233, line: 107, baseType: !7, size: 32, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_nb", scope: !2232, file: !2233, line: 108, baseType: !2291, size: 192, offset: 640)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2292, line: 54, size: 192, elements: !2293)
!2292 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2300, !2301}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2291, file: !2292, line: 55, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2292, line: 51, baseType: !2296)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!90, !2299, !60, !59}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2291, file: !2292, line: 56, baseType: !2299, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2291, file: !2292, line: 57, baseType: !90, size: 32, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "restart_nb", scope: !2232, file: !2233, line: 109, baseType: !2291, size: 192, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2232, file: !2233, line: 110, baseType: !59, size: 64, offset: 1024)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "wd_data", scope: !2232, file: !2233, line: 111, baseType: !2305, size: 64, offset: 1088)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_core_data", file: !2233, line: 22, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2232, file: !2233, line: 112, baseType: !60, size: 64, offset: 1152)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "deferred", scope: !2232, file: !2233, line: 119, baseType: !230, size: 128, offset: 1216)
!2309 = !DIGlobalVariableExpression(var: !2310, expr: !DIExpression())
!2310 = distinct !DIGlobalVariable(name: "sirfsoc_wdt_ident", scope: !2, file: !3, line: 123, type: !2240, isLocal: true, isDefinition: true)
!2311 = !DIGlobalVariableExpression(var: !2312, expr: !DIExpression())
!2312 = distinct !DIGlobalVariable(name: "sirfsoc_wdt_ops", scope: !2, file: !3, line: 129, type: !2250, isLocal: true, isDefinition: true)
!2313 = !DIGlobalVariableExpression(var: !2314, expr: !DIExpression())
!2314 = distinct !DIGlobalVariable(name: "sirfsoc_wdt_of_match", scope: !2, file: !3, line: 197, type: !2315, isLocal: true, isDefinition: true)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1795, size: 3200, elements: !1089)
!2316 = !DIGlobalVariableExpression(var: !2317, expr: !DIExpression())
!2317 = distinct !DIGlobalVariable(name: "sirfsoc_wdt_pm_ops", scope: !2, file: !3, line: 194, type: !1740, isLocal: true, isDefinition: true)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 160, elements: !1320)
!2319 = !{i32 7, !"Dwarf Version", i32 4}
!2320 = !{i32 2, !"Debug Info Version", i32 3}
!2321 = !{i32 1, !"wchar_size", i32 2}
!2322 = !{i32 1, !"Code Model", i32 2}
!2323 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2324 = distinct !DISubprogram(name: "sirfsoc_wdt_driver_init", scope: !3, file: !3, line: 211, type: !2325, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!90}
!2327 = !DILocation(line: 211, column: 1, scope: !2324)
!2328 = distinct !DISubprogram(name: "sirfsoc_wdt_driver_exit", scope: !3, file: !3, line: 211, type: !167, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2329 = !DILocation(line: 211, column: 1, scope: !2328)
!2330 = distinct !DISubprogram(name: "sirfsoc_wdt_probe", scope: !3, file: !3, line: 146, type: !213, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2331 = !DILocalVariable(name: "pdev", arg: 1, scope: !2330, file: !3, line: 146, type: !215)
!2332 = !DILocation(line: 146, column: 54, scope: !2330)
!2333 = !DILocalVariable(name: "dev", scope: !2330, file: !3, line: 148, type: !1713)
!2334 = !DILocation(line: 148, column: 17, scope: !2330)
!2335 = !DILocation(line: 148, column: 24, scope: !2330)
!2336 = !DILocation(line: 148, column: 30, scope: !2330)
!2337 = !DILocalVariable(name: "ret", scope: !2330, file: !3, line: 149, type: !90)
!2338 = !DILocation(line: 149, column: 6, scope: !2330)
!2339 = !DILocalVariable(name: "base", scope: !2330, file: !3, line: 150, type: !59)
!2340 = !DILocation(line: 150, column: 16, scope: !2330)
!2341 = !DILocation(line: 152, column: 40, scope: !2330)
!2342 = !DILocation(line: 152, column: 9, scope: !2330)
!2343 = !DILocation(line: 152, column: 7, scope: !2330)
!2344 = !DILocation(line: 153, column: 13, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 153, column: 6)
!2346 = !DILocation(line: 153, column: 6, scope: !2345)
!2347 = !DILocation(line: 153, column: 6, scope: !2330)
!2348 = !DILocation(line: 154, column: 18, scope: !2345)
!2349 = !DILocation(line: 154, column: 10, scope: !2345)
!2350 = !DILocation(line: 154, column: 3, scope: !2345)
!2351 = !DILocation(line: 156, column: 53, scope: !2330)
!2352 = !DILocation(line: 156, column: 2, scope: !2330)
!2353 = !DILocation(line: 158, column: 38, scope: !2330)
!2354 = !DILocation(line: 158, column: 47, scope: !2330)
!2355 = !DILocation(line: 158, column: 2, scope: !2330)
!2356 = !DILocation(line: 159, column: 38, scope: !2330)
!2357 = !DILocation(line: 159, column: 2, scope: !2330)
!2358 = !DILocation(line: 160, column: 23, scope: !2330)
!2359 = !DILocation(line: 160, column: 21, scope: !2330)
!2360 = !DILocation(line: 162, column: 2, scope: !2330)
!2361 = !DILocation(line: 163, column: 2, scope: !2330)
!2362 = !DILocation(line: 164, column: 38, scope: !2330)
!2363 = !DILocation(line: 164, column: 8, scope: !2330)
!2364 = !DILocation(line: 164, column: 6, scope: !2330)
!2365 = !DILocation(line: 165, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 165, column: 6)
!2367 = !DILocation(line: 165, column: 6, scope: !2330)
!2368 = !DILocation(line: 166, column: 10, scope: !2366)
!2369 = !DILocation(line: 166, column: 3, scope: !2366)
!2370 = !DILocation(line: 168, column: 23, scope: !2330)
!2371 = !DILocation(line: 168, column: 2, scope: !2330)
!2372 = !DILocation(line: 170, column: 2, scope: !2330)
!2373 = !DILocation(line: 171, column: 1, scope: !2330)
!2374 = distinct !DISubprogram(name: "IS_ERR", scope: !2375, file: !2375, line: 34, type: !2376, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2375 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!203, !1246}
!2378 = !DILocalVariable(name: "ptr", arg: 1, scope: !2374, file: !2375, line: 34, type: !1246)
!2379 = !DILocation(line: 34, column: 60, scope: !2374)
!2380 = !DILocation(line: 36, column: 9, scope: !2374)
!2381 = !DILocation(line: 36, column: 2, scope: !2374)
!2382 = distinct !DISubprogram(name: "PTR_ERR", scope: !2375, file: !2375, line: 29, type: !2383, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!61, !1246}
!2385 = !DILocalVariable(name: "ptr", arg: 1, scope: !2382, file: !2375, line: 29, type: !1246)
!2386 = !DILocation(line: 29, column: 61, scope: !2382)
!2387 = !DILocation(line: 31, column: 16, scope: !2382)
!2388 = !DILocation(line: 31, column: 9, scope: !2382)
!2389 = !DILocation(line: 31, column: 2, scope: !2382)
!2390 = distinct !DISubprogram(name: "watchdog_set_drvdata", scope: !2233, file: !2233, line: 186, type: !2391, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !2258, !59}
!2393 = !DILocalVariable(name: "wdd", arg: 1, scope: !2390, file: !2233, line: 186, type: !2258)
!2394 = !DILocation(line: 186, column: 65, scope: !2390)
!2395 = !DILocalVariable(name: "data", arg: 2, scope: !2390, file: !2233, line: 186, type: !59)
!2396 = !DILocation(line: 186, column: 76, scope: !2390)
!2397 = !DILocation(line: 188, column: 21, scope: !2390)
!2398 = !DILocation(line: 188, column: 2, scope: !2390)
!2399 = !DILocation(line: 188, column: 7, scope: !2390)
!2400 = !DILocation(line: 188, column: 19, scope: !2390)
!2401 = !DILocation(line: 189, column: 1, scope: !2390)
!2402 = distinct !DISubprogram(name: "watchdog_set_nowayout", scope: !2233, file: !2233, line: 141, type: !2403, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !2258, !203}
!2405 = !DILocalVariable(name: "wdd", arg: 1, scope: !2402, file: !2233, line: 141, type: !2258)
!2406 = !DILocation(line: 141, column: 66, scope: !2402)
!2407 = !DILocalVariable(name: "nowayout", arg: 2, scope: !2402, file: !2233, line: 141, type: !203)
!2408 = !DILocation(line: 141, column: 76, scope: !2402)
!2409 = !DILocation(line: 143, column: 6, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2402, file: !2233, line: 143, column: 6)
!2411 = !DILocation(line: 143, column: 6, scope: !2402)
!2412 = !DILocation(line: 144, column: 29, scope: !2410)
!2413 = !DILocation(line: 144, column: 34, scope: !2410)
!2414 = !DILocation(line: 144, column: 3, scope: !2410)
!2415 = !DILocation(line: 145, column: 1, scope: !2402)
!2416 = distinct !DISubprogram(name: "watchdog_stop_on_reboot", scope: !2233, file: !2233, line: 148, type: !2417, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2258}
!2419 = !DILocalVariable(name: "wdd", arg: 1, scope: !2416, file: !2233, line: 148, type: !2258)
!2420 = !DILocation(line: 148, column: 68, scope: !2416)
!2421 = !DILocation(line: 150, column: 32, scope: !2416)
!2422 = !DILocation(line: 150, column: 37, scope: !2416)
!2423 = !DILocation(line: 150, column: 2, scope: !2416)
!2424 = !DILocation(line: 151, column: 1, scope: !2416)
!2425 = distinct !DISubprogram(name: "watchdog_stop_on_unregister", scope: !2233, file: !2233, line: 154, type: !2417, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2426 = !DILocalVariable(name: "wdd", arg: 1, scope: !2425, file: !2233, line: 154, type: !2258)
!2427 = !DILocation(line: 154, column: 72, scope: !2425)
!2428 = !DILocation(line: 156, column: 36, scope: !2425)
!2429 = !DILocation(line: 156, column: 41, scope: !2425)
!2430 = !DILocation(line: 156, column: 2, scope: !2425)
!2431 = !DILocation(line: 157, column: 1, scope: !2425)
!2432 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !209, file: !209, line: 236, type: !2433, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !215, !59}
!2435 = !DILocalVariable(name: "pdev", arg: 1, scope: !2432, file: !209, line: 236, type: !215)
!2436 = !DILocation(line: 236, column: 65, scope: !2432)
!2437 = !DILocalVariable(name: "data", arg: 2, scope: !2432, file: !209, line: 237, type: !59)
!2438 = !DILocation(line: 237, column: 12, scope: !2432)
!2439 = !DILocation(line: 239, column: 19, scope: !2432)
!2440 = !DILocation(line: 239, column: 25, scope: !2432)
!2441 = !DILocation(line: 239, column: 30, scope: !2432)
!2442 = !DILocation(line: 239, column: 2, scope: !2432)
!2443 = !DILocation(line: 240, column: 1, scope: !2432)
!2444 = distinct !DISubprogram(name: "sirfsoc_wdt_enable", scope: !3, file: !3, line: 84, type: !2256, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2445 = !DILocalVariable(name: "wdd", arg: 1, scope: !2444, file: !3, line: 84, type: !2258)
!2446 = !DILocation(line: 84, column: 55, scope: !2444)
!2447 = !DILocalVariable(name: "wdt_base", scope: !2444, file: !3, line: 86, type: !59)
!2448 = !DILocation(line: 86, column: 16, scope: !2444)
!2449 = !DILocation(line: 86, column: 44, scope: !2444)
!2450 = !DILocation(line: 86, column: 27, scope: !2444)
!2451 = !DILocation(line: 87, column: 28, scope: !2444)
!2452 = !DILocation(line: 87, column: 2, scope: !2444)
!2453 = !DILocation(line: 93, column: 15, scope: !2444)
!2454 = !DILocation(line: 93, column: 24, scope: !2444)
!2455 = !DILocation(line: 93, column: 9, scope: !2444)
!2456 = !DILocation(line: 94, column: 3, scope: !2444)
!2457 = !DILocation(line: 95, column: 3, scope: !2444)
!2458 = !DILocation(line: 95, column: 12, scope: !2444)
!2459 = !DILocation(line: 93, column: 2, scope: !2444)
!2460 = !DILocation(line: 96, column: 12, scope: !2444)
!2461 = !DILocation(line: 96, column: 21, scope: !2444)
!2462 = !DILocation(line: 96, column: 2, scope: !2444)
!2463 = !DILocation(line: 98, column: 2, scope: !2444)
!2464 = distinct !DISubprogram(name: "sirfsoc_wdt_disable", scope: !3, file: !3, line: 101, type: !2256, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2465 = !DILocalVariable(name: "wdd", arg: 1, scope: !2464, file: !3, line: 101, type: !2258)
!2466 = !DILocation(line: 101, column: 56, scope: !2464)
!2467 = !DILocalVariable(name: "wdt_base", scope: !2464, file: !3, line: 103, type: !59)
!2468 = !DILocation(line: 103, column: 16, scope: !2464)
!2469 = !DILocation(line: 103, column: 44, scope: !2464)
!2470 = !DILocation(line: 103, column: 27, scope: !2464)
!2471 = !DILocation(line: 105, column: 12, scope: !2464)
!2472 = !DILocation(line: 105, column: 21, scope: !2464)
!2473 = !DILocation(line: 105, column: 2, scope: !2464)
!2474 = !DILocation(line: 106, column: 15, scope: !2464)
!2475 = !DILocation(line: 106, column: 24, scope: !2464)
!2476 = !DILocation(line: 106, column: 9, scope: !2464)
!2477 = !DILocation(line: 107, column: 3, scope: !2464)
!2478 = !DILocation(line: 108, column: 3, scope: !2464)
!2479 = !DILocation(line: 108, column: 12, scope: !2464)
!2480 = !DILocation(line: 106, column: 2, scope: !2464)
!2481 = !DILocation(line: 110, column: 2, scope: !2464)
!2482 = distinct !DISubprogram(name: "sirfsoc_wdt_updatetimeout", scope: !3, file: !3, line: 62, type: !2256, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2483 = !DILocalVariable(name: "wdd", arg: 1, scope: !2482, file: !3, line: 62, type: !2258)
!2484 = !DILocation(line: 62, column: 62, scope: !2482)
!2485 = !DILocalVariable(name: "counter", scope: !2482, file: !3, line: 64, type: !549)
!2486 = !DILocation(line: 64, column: 6, scope: !2482)
!2487 = !DILocalVariable(name: "timeout_ticks", scope: !2482, file: !3, line: 64, type: !549)
!2488 = !DILocation(line: 64, column: 15, scope: !2482)
!2489 = !DILocalVariable(name: "wdt_base", scope: !2482, file: !3, line: 65, type: !59)
!2490 = !DILocation(line: 65, column: 16, scope: !2482)
!2491 = !DILocation(line: 67, column: 18, scope: !2482)
!2492 = !DILocation(line: 67, column: 23, scope: !2482)
!2493 = !DILocation(line: 67, column: 31, scope: !2482)
!2494 = !DILocation(line: 67, column: 16, scope: !2482)
!2495 = !DILocation(line: 68, column: 30, scope: !2482)
!2496 = !DILocation(line: 68, column: 13, scope: !2482)
!2497 = !DILocation(line: 68, column: 11, scope: !2482)
!2498 = !DILocation(line: 71, column: 12, scope: !2482)
!2499 = !DILocation(line: 71, column: 21, scope: !2482)
!2500 = !DILocation(line: 71, column: 2, scope: !2482)
!2501 = !DILocation(line: 74, column: 18, scope: !2482)
!2502 = !DILocation(line: 74, column: 27, scope: !2482)
!2503 = !DILocation(line: 74, column: 12, scope: !2482)
!2504 = !DILocation(line: 74, column: 10, scope: !2482)
!2505 = !DILocation(line: 76, column: 13, scope: !2482)
!2506 = !DILocation(line: 76, column: 10, scope: !2482)
!2507 = !DILocation(line: 78, column: 9, scope: !2482)
!2508 = !DILocation(line: 78, column: 18, scope: !2482)
!2509 = !DILocation(line: 78, column: 27, scope: !2482)
!2510 = !DILocation(line: 79, column: 25, scope: !2482)
!2511 = !DILocation(line: 78, column: 2, scope: !2482)
!2512 = !DILocation(line: 81, column: 2, scope: !2482)
!2513 = distinct !DISubprogram(name: "sirfsoc_wdt_settimeout", scope: !3, file: !3, line: 113, type: !2267, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2514 = !DILocalVariable(name: "wdd", arg: 1, scope: !2513, file: !3, line: 113, type: !2258)
!2515 = !DILocation(line: 113, column: 59, scope: !2513)
!2516 = !DILocalVariable(name: "to", arg: 2, scope: !2513, file: !3, line: 113, type: !7)
!2517 = !DILocation(line: 113, column: 77, scope: !2513)
!2518 = !DILocation(line: 115, column: 17, scope: !2513)
!2519 = !DILocation(line: 115, column: 2, scope: !2513)
!2520 = !DILocation(line: 115, column: 7, scope: !2513)
!2521 = !DILocation(line: 115, column: 15, scope: !2513)
!2522 = !DILocation(line: 116, column: 28, scope: !2513)
!2523 = !DILocation(line: 116, column: 2, scope: !2513)
!2524 = !DILocation(line: 118, column: 2, scope: !2513)
!2525 = distinct !DISubprogram(name: "sirfsoc_wdt_gettimeleft", scope: !3, file: !3, line: 46, type: !2263, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2526 = !DILocalVariable(name: "wdd", arg: 1, scope: !2525, file: !3, line: 46, type: !2258)
!2527 = !DILocation(line: 46, column: 69, scope: !2525)
!2528 = !DILocalVariable(name: "counter", scope: !2525, file: !3, line: 48, type: !549)
!2529 = !DILocation(line: 48, column: 6, scope: !2525)
!2530 = !DILocalVariable(name: "match", scope: !2525, file: !3, line: 48, type: !549)
!2531 = !DILocation(line: 48, column: 15, scope: !2525)
!2532 = !DILocalVariable(name: "wdt_base", scope: !2525, file: !3, line: 49, type: !59)
!2533 = !DILocation(line: 49, column: 16, scope: !2525)
!2534 = !DILocalVariable(name: "time_left", scope: !2525, file: !3, line: 50, type: !90)
!2535 = !DILocation(line: 50, column: 6, scope: !2525)
!2536 = !DILocation(line: 52, column: 30, scope: !2525)
!2537 = !DILocation(line: 52, column: 13, scope: !2525)
!2538 = !DILocation(line: 52, column: 11, scope: !2525)
!2539 = !DILocation(line: 53, column: 18, scope: !2525)
!2540 = !DILocation(line: 53, column: 27, scope: !2525)
!2541 = !DILocation(line: 53, column: 12, scope: !2525)
!2542 = !DILocation(line: 53, column: 10, scope: !2525)
!2543 = !DILocation(line: 54, column: 16, scope: !2525)
!2544 = !DILocation(line: 54, column: 25, scope: !2525)
!2545 = !DILocation(line: 55, column: 25, scope: !2525)
!2546 = !DILocation(line: 54, column: 10, scope: !2525)
!2547 = !DILocation(line: 54, column: 8, scope: !2525)
!2548 = !DILocation(line: 57, column: 14, scope: !2525)
!2549 = !DILocation(line: 57, column: 22, scope: !2525)
!2550 = !DILocation(line: 57, column: 20, scope: !2525)
!2551 = !DILocation(line: 57, column: 12, scope: !2525)
!2552 = !DILocation(line: 59, column: 9, scope: !2525)
!2553 = !DILocation(line: 59, column: 19, scope: !2525)
!2554 = !DILocation(line: 59, column: 2, scope: !2525)
!2555 = distinct !DISubprogram(name: "sirfsoc_wdt_base", scope: !3, file: !3, line: 41, type: !2556, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!59, !2258}
!2558 = !DILocalVariable(name: "wdd", arg: 1, scope: !2555, file: !3, line: 41, type: !2258)
!2559 = !DILocation(line: 41, column: 63, scope: !2555)
!2560 = !DILocation(line: 43, column: 54, scope: !2555)
!2561 = !DILocation(line: 43, column: 33, scope: !2555)
!2562 = !DILocation(line: 43, column: 2, scope: !2555)
!2563 = distinct !DISubprogram(name: "writel", scope: !2564, file: !2564, line: 67, type: !2565, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2564 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !7, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2569 = !DILocalVariable(name: "val", arg: 1, scope: !2563, file: !2564, line: 67, type: !7)
!2570 = !DILocation(line: 67, column: 1, scope: !2563)
!2571 = !DILocalVariable(name: "addr", arg: 2, scope: !2563, file: !2564, line: 67, type: !2567)
!2572 = !{i32 -2143484997}
!2573 = distinct !DISubprogram(name: "readl", scope: !2564, file: !2564, line: 59, type: !2574, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!7, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2568)
!2578 = !DILocalVariable(name: "addr", arg: 1, scope: !2573, file: !2564, line: 59, type: !2576)
!2579 = !DILocation(line: 59, column: 1, scope: !2573)
!2580 = !DILocalVariable(name: "ret", scope: !2573, file: !2564, line: 59, type: !7)
!2581 = !{i32 -2143487390}
!2582 = distinct !DISubprogram(name: "watchdog_get_drvdata", scope: !2233, file: !2233, line: 191, type: !2556, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2583 = !DILocalVariable(name: "wdd", arg: 1, scope: !2582, file: !2233, line: 191, type: !2258)
!2584 = !DILocation(line: 191, column: 66, scope: !2582)
!2585 = !DILocation(line: 193, column: 9, scope: !2582)
!2586 = !DILocation(line: 193, column: 14, scope: !2582)
!2587 = !DILocation(line: 193, column: 2, scope: !2582)
!2588 = distinct !DISubprogram(name: "set_bit", scope: !2589, file: !2589, line: 26, type: !2590, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2589 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !61, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!2594 = !DILocalVariable(name: "nr", arg: 1, scope: !2595, file: !2596, line: 52, type: !61)
!2595 = distinct !DISubprogram(name: "arch_set_bit", scope: !2596, file: !2596, line: 52, type: !2590, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2596 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2597 = !DILocation(line: 52, column: 19, scope: !2595, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 29, column: 2, scope: !2588)
!2599 = !DILocalVariable(name: "addr", arg: 2, scope: !2595, file: !2596, line: 52, type: !2592)
!2600 = !DILocation(line: 52, column: 47, scope: !2595, inlinedAt: !2598)
!2601 = !DILocalVariable(name: "v", arg: 1, scope: !2602, file: !2603, line: 84, type: !2576)
!2602 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2603, file: !2603, line: 84, type: !2604, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2603 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2576, !328}
!2606 = !DILocation(line: 84, column: 74, scope: !2602, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 28, column: 2, scope: !2588)
!2608 = !DILocalVariable(name: "size", arg: 2, scope: !2602, file: !2603, line: 84, type: !328)
!2609 = !DILocation(line: 84, column: 84, scope: !2602, inlinedAt: !2607)
!2610 = !DILocalVariable(name: "nr", arg: 1, scope: !2588, file: !2589, line: 26, type: !61)
!2611 = !DILocation(line: 26, column: 33, scope: !2588)
!2612 = !DILocalVariable(name: "addr", arg: 2, scope: !2588, file: !2589, line: 26, type: !2592)
!2613 = !DILocation(line: 26, column: 61, scope: !2588)
!2614 = !DILocation(line: 28, column: 26, scope: !2588)
!2615 = !DILocation(line: 28, column: 33, scope: !2588)
!2616 = !DILocation(line: 28, column: 31, scope: !2588)
!2617 = !DILocation(line: 86, column: 20, scope: !2602, inlinedAt: !2607)
!2618 = !DILocation(line: 86, column: 23, scope: !2602, inlinedAt: !2607)
!2619 = !DILocation(line: 86, column: 2, scope: !2602, inlinedAt: !2607)
!2620 = !DILocation(line: 87, column: 2, scope: !2602, inlinedAt: !2607)
!2621 = !DILocation(line: 29, column: 15, scope: !2588)
!2622 = !DILocation(line: 29, column: 19, scope: !2588)
!2623 = !DILocation(line: 54, column: 27, scope: !2624, inlinedAt: !2598)
!2624 = distinct !DILexicalBlock(scope: !2595, file: !2596, line: 54, column: 6)
!2625 = !DILocation(line: 54, column: 6, scope: !2624, inlinedAt: !2598)
!2626 = !DILocation(line: 54, column: 6, scope: !2595, inlinedAt: !2598)
!2627 = !DILocation(line: 56, column: 6, scope: !2628, inlinedAt: !2598)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !2596, line: 54, column: 32)
!2629 = !DILocation(line: 57, column: 12, scope: !2628, inlinedAt: !2598)
!2630 = !DILocation(line: 55, column: 3, scope: !2628, inlinedAt: !2598)
!2631 = !{i32 -2147150124}
!2632 = !DILocation(line: 59, column: 2, scope: !2628, inlinedAt: !2598)
!2633 = !DILocation(line: 61, column: 8, scope: !2634, inlinedAt: !2598)
!2634 = distinct !DILexicalBlock(scope: !2624, file: !2596, line: 59, column: 9)
!2635 = !DILocation(line: 61, column: 32, scope: !2634, inlinedAt: !2598)
!2636 = !DILocation(line: 60, column: 3, scope: !2634, inlinedAt: !2598)
!2637 = !{i32 -2147149992}
!2638 = !DILocation(line: 30, column: 1, scope: !2588)
!2639 = distinct !DISubprogram(name: "kasan_check_write", scope: !2640, file: !2640, line: 38, type: !2641, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2640 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!203, !2576, !7}
!2643 = !DILocalVariable(name: "p", arg: 1, scope: !2639, file: !2640, line: 38, type: !2576)
!2644 = !DILocation(line: 38, column: 59, scope: !2639)
!2645 = !DILocalVariable(name: "size", arg: 2, scope: !2639, file: !2640, line: 38, type: !7)
!2646 = !DILocation(line: 38, column: 75, scope: !2639)
!2647 = !DILocation(line: 40, column: 2, scope: !2639)
!2648 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2649, file: !2649, line: 178, type: !2650, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2649 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !2576, !328, !90}
!2652 = !DILocalVariable(name: "ptr", arg: 1, scope: !2648, file: !2649, line: 178, type: !2576)
!2653 = !DILocation(line: 178, column: 60, scope: !2648)
!2654 = !DILocalVariable(name: "size", arg: 2, scope: !2648, file: !2649, line: 178, type: !328)
!2655 = !DILocation(line: 178, column: 72, scope: !2648)
!2656 = !DILocalVariable(name: "type", arg: 3, scope: !2648, file: !2649, line: 179, type: !90)
!2657 = !DILocation(line: 179, column: 15, scope: !2648)
!2658 = !DILocation(line: 179, column: 23, scope: !2648)
!2659 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2660, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !1713, !59}
!2662 = !DILocalVariable(name: "dev", arg: 1, scope: !2659, file: !30, line: 660, type: !1713)
!2663 = !DILocation(line: 660, column: 51, scope: !2659)
!2664 = !DILocalVariable(name: "data", arg: 2, scope: !2659, file: !30, line: 660, type: !59)
!2665 = !DILocation(line: 660, column: 62, scope: !2659)
!2666 = !DILocation(line: 662, column: 21, scope: !2659)
!2667 = !DILocation(line: 662, column: 2, scope: !2659)
!2668 = !DILocation(line: 662, column: 7, scope: !2659)
!2669 = !DILocation(line: 662, column: 19, scope: !2659)
!2670 = !DILocation(line: 663, column: 1, scope: !2659)
!2671 = distinct !DISubprogram(name: "sirfsoc_wdt_suspend", scope: !3, file: !3, line: 174, type: !1745, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2672 = !DILocalVariable(name: "dev", arg: 1, scope: !2671, file: !3, line: 174, type: !1713)
!2673 = !DILocation(line: 174, column: 47, scope: !2671)
!2674 = !DILocation(line: 176, column: 2, scope: !2671)
!2675 = distinct !DISubprogram(name: "sirfsoc_wdt_resume", scope: !3, file: !3, line: 179, type: !1745, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2676 = !DILocalVariable(name: "dev", arg: 1, scope: !2675, file: !3, line: 179, type: !1713)
!2677 = !DILocation(line: 179, column: 46, scope: !2675)
!2678 = !DILocalVariable(name: "wdd", scope: !2675, file: !3, line: 181, type: !2258)
!2679 = !DILocation(line: 181, column: 26, scope: !2675)
!2680 = !DILocation(line: 181, column: 48, scope: !2675)
!2681 = !DILocation(line: 181, column: 32, scope: !2675)
!2682 = !DILocation(line: 188, column: 28, scope: !2675)
!2683 = !DILocation(line: 188, column: 2, scope: !2675)
!2684 = !DILocation(line: 190, column: 2, scope: !2675)
!2685 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2686, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!59, !2058}
!2688 = !DILocalVariable(name: "dev", arg: 1, scope: !2685, file: !30, line: 655, type: !2058)
!2689 = !DILocation(line: 655, column: 58, scope: !2685)
!2690 = !DILocation(line: 657, column: 9, scope: !2685)
!2691 = !DILocation(line: 657, column: 14, scope: !2685)
!2692 = !DILocation(line: 657, column: 2, scope: !2685)
