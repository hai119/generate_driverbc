; ModuleID = '../bcout/drivers/clk/clk-gpio.llvm.bc'
source_filename = "drivers/clk/clk-gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_gpio_clk_driver_init6:\09\09\09"
module asm ".long\09gpio_clk_driver_init - .\09\09\09"
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
%struct.vdso_image = type opaque
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
%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
%struct.gpio_desc = type opaque
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.clk_gpio = type { %struct.clk_hw, %struct.gpio_desc* }

@__UNIQUE_ID___addressable_gpio_clk_driver_init165 = internal global i8* bitcast (i32 ()* @gpio_clk_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@gpio_clk_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @gpio_clk_driver_probe, i32 (%struct.platform_device*)* null, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([3 x %struct.of_device_id], [3 x %struct.of_device_id]* @gpio_clk_match_table, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !202
@.str = private unnamed_addr constant [9 x i8] c"gpio-clk\00", align 1
@gpio_clk_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2212
@.str.1 = private unnamed_addr constant [15 x i8] c"gpio-mux-clock\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"mux-clock must have 2 parents\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\013%pOFn: %s: Can't get '%s' named GPIO property\0A\00", align 1
@__func__.gpio_clk_driver_probe = private unnamed_addr constant [22 x i8] c"gpio_clk_driver_probe\00", align 1
@clk_gpio_mux_ops = internal constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* null, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @__clk_mux_determine_rate, i32 (%struct.clk_hw*, i8)* @clk_gpio_mux_set_parent, i8 (%struct.clk_hw*)* @clk_gpio_mux_get_parent, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !2206
@clk_sleeping_gpio_gate_ops = internal constant %struct.clk_ops { i32 (%struct.clk_hw*)* @clk_sleeping_gpio_gate_prepare, void (%struct.clk_hw*)* @clk_sleeping_gpio_gate_unprepare, i32 (%struct.clk_hw*)* @clk_sleeping_gpio_gate_is_prepared, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* null, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !2208
@clk_gpio_gate_ops = internal constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* @clk_gpio_gate_enable, void (%struct.clk_hw*)* @clk_gpio_gate_disable, i32 (%struct.clk_hw*)* @clk_gpio_gate_is_enabled, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* null, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !2210
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_gpio_clk_driver_init165 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @gpio_clk_driver_init() #0 section ".init.text" !dbg !2220 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @gpio_clk_driver, %struct.module* null) #6, !dbg !2223
  ret i32 %call, !dbg !2223
}

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gpio_clk_driver_probe(%struct.platform_device* %pdev) #2 !dbg !2224 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.device*, align 8
  %node = alloca %struct.device_node*, align 8
  %gpio_name = alloca i8*, align 8
  %num_parents = alloca i32, align 4
  %gpiod = alloca %struct.gpio_desc*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %is_mux = alloca i8, align 1
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2227, metadata !DIExpression()), !dbg !2228
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2229
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2230
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2228
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !2231, metadata !DIExpression()), !dbg !2232
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2233
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !2234
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2234
  store %struct.device_node* %2, %struct.device_node** %node, align 8, !dbg !2232
  call void @llvm.dbg.declare(metadata i8** %gpio_name, metadata !2235, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.declare(metadata i32* %num_parents, metadata !2237, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %gpiod, metadata !2239, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2241, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.declare(metadata i8* %is_mux, metadata !2243, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2245, metadata !DIExpression()), !dbg !2246
  %3 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2247
  %call = call i32 @of_device_is_compatible(%struct.device_node* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2248
  %tobool = icmp ne i32 %call, 0, !dbg !2248
  %frombool = zext i1 %tobool to i8, !dbg !2249
  store i8 %frombool, i8* %is_mux, align 1, !dbg !2249
  %4 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2250
  %call2 = call i32 @of_clk_get_parent_count(%struct.device_node* %4) #6, !dbg !2251
  store i32 %call2, i32* %num_parents, align 4, !dbg !2252
  %5 = load i8, i8* %is_mux, align 1, !dbg !2253
  %tobool3 = trunc i8 %5 to i1, !dbg !2253
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !2255

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %num_parents, align 4, !dbg !2256
  %cmp = icmp ne i32 %6, 2, !dbg !2257
  br i1 %cmp, label %if.then, label %if.end, !dbg !2258

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2259
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2259
  store i32 -22, i32* %retval, align 4, !dbg !2261
  br label %return, !dbg !2261

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i8, i8* %is_mux, align 1, !dbg !2262
  %tobool4 = trunc i8 %8 to i1, !dbg !2262
  %9 = zext i1 %tobool4 to i64, !dbg !2262
  %cond = select i1 %tobool4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), !dbg !2262
  store i8* %cond, i8** %gpio_name, align 8, !dbg !2263
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2264
  %11 = load i8*, i8** %gpio_name, align 8, !dbg !2265
  %call5 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %10, i8* %11, i32 3) #6, !dbg !2266
  store %struct.gpio_desc* %call5, %struct.gpio_desc** %gpiod, align 8, !dbg !2267
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2268
  %13 = bitcast %struct.gpio_desc* %12 to i8*, !dbg !2268
  %call6 = call zeroext i1 @IS_ERR(i8* %13) #6, !dbg !2270
  br i1 %call6, label %if.then7, label %if.end14, !dbg !2271

if.then7:                                         ; preds = %if.end
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2272
  %15 = bitcast %struct.gpio_desc* %14 to i8*, !dbg !2272
  %call8 = call i64 @PTR_ERR(i8* %15) #6, !dbg !2274
  %conv = trunc i64 %call8 to i32, !dbg !2274
  store i32 %conv, i32* %ret, align 4, !dbg !2275
  %16 = load i32, i32* %ret, align 4, !dbg !2276
  %cmp9 = icmp eq i32 %16, -517, !dbg !2278
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !2279

if.then11:                                        ; preds = %if.then7
  store i32 0, i32* %tmp, align 4, !dbg !2280
  %17 = load i32, i32* %tmp, align 4, !dbg !2283
  br label %if.end13, !dbg !2284

if.else:                                          ; preds = %if.then7
  %18 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2285
  %19 = load i8*, i8** %gpio_name, align 8, !dbg !2285
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gpio_clk_driver_probe, i64 0, i64 0), i8* %19) #7, !dbg !2285
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %20 = load i32, i32* %ret, align 4, !dbg !2286
  store i32 %20, i32* %retval, align 4, !dbg !2287
  br label %return, !dbg !2287

if.end14:                                         ; preds = %if.end
  %21 = load i8, i8* %is_mux, align 1, !dbg !2288
  %tobool15 = trunc i8 %21 to i1, !dbg !2288
  br i1 %tobool15, label %if.then16, label %if.else18, !dbg !2290

if.then16:                                        ; preds = %if.end14
  %22 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2291
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2292
  %call17 = call %struct.clk_hw* @clk_hw_register_gpio_mux(%struct.device* %22, %struct.gpio_desc* %23) #6, !dbg !2293
  store %struct.clk_hw* %call17, %struct.clk_hw** %hw, align 8, !dbg !2294
  br label %if.end20, !dbg !2295

if.else18:                                        ; preds = %if.end14
  %24 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2296
  %25 = load i32, i32* %num_parents, align 4, !dbg !2297
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2298
  %call19 = call %struct.clk_hw* @clk_hw_register_gpio_gate(%struct.device* %24, i32 %25, %struct.gpio_desc* %26) #6, !dbg !2299
  store %struct.clk_hw* %call19, %struct.clk_hw** %hw, align 8, !dbg !2300
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  %27 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2301
  %28 = bitcast %struct.clk_hw* %27 to i8*, !dbg !2301
  %call21 = call zeroext i1 @IS_ERR(i8* %28) #6, !dbg !2303
  br i1 %call21, label %if.then22, label %if.end25, !dbg !2304

if.then22:                                        ; preds = %if.end20
  %29 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2305
  %30 = bitcast %struct.clk_hw* %29 to i8*, !dbg !2305
  %call23 = call i64 @PTR_ERR(i8* %30) #6, !dbg !2306
  %conv24 = trunc i64 %call23 to i32, !dbg !2306
  store i32 %conv24, i32* %retval, align 4, !dbg !2307
  br label %return, !dbg !2307

if.end25:                                         ; preds = %if.end20
  %31 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2308
  %32 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2309
  %33 = bitcast %struct.clk_hw* %32 to i8*, !dbg !2309
  %call26 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %31, %struct.clk_hw* (%struct.of_phandle_args*, i8*)* @of_clk_hw_simple_get, i8* %33) #6, !dbg !2310
  store i32 %call26, i32* %retval, align 4, !dbg !2311
  br label %return, !dbg !2311

return:                                           ; preds = %if.end25, %if.then22, %if.end13, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !2312
  ret i32 %34, !dbg !2312
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2313 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2317, metadata !DIExpression()), !dbg !2318
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2319
  %1 = ptrtoint i8* %0 to i64, !dbg !2319
  %2 = inttoptr i64 %1 to i8*, !dbg !2319
  %3 = ptrtoint i8* %2 to i64, !dbg !2319
  %cmp = icmp uge i64 %3, -4095, !dbg !2319
  %lnot = xor i1 %cmp, true, !dbg !2319
  %lnot1 = xor i1 %lnot, true, !dbg !2319
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2319
  %conv = sext i32 %lnot.ext to i64, !dbg !2319
  %tobool = icmp ne i64 %conv, 0, !dbg !2319
  ret i1 %tobool, !dbg !2320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2321 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2324, metadata !DIExpression()), !dbg !2325
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2326
  %1 = ptrtoint i8* %0 to i64, !dbg !2327
  ret i64 %1, !dbg !2328
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_hw* @clk_hw_register_gpio_mux(%struct.device* %dev, %struct.gpio_desc* %gpiod) #2 !dbg !2329 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %gpiod.addr = alloca %struct.gpio_desc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2332, metadata !DIExpression()), !dbg !2333
  store %struct.gpio_desc* %gpiod, %struct.gpio_desc** %gpiod.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %gpiod.addr, metadata !2334, metadata !DIExpression()), !dbg !2335
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2336
  %1 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod.addr, align 8, !dbg !2337
  %call = call %struct.clk_hw* @clk_register_gpio(%struct.device* %0, i8 zeroext 2, %struct.gpio_desc* %1, %struct.clk_ops* @clk_gpio_mux_ops) #6, !dbg !2338
  ret %struct.clk_hw* %call, !dbg !2339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_hw* @clk_hw_register_gpio_gate(%struct.device* %dev, i32 %num_parents, %struct.gpio_desc* %gpiod) #2 !dbg !2340 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %num_parents.addr = alloca i32, align 4
  %gpiod.addr = alloca %struct.gpio_desc*, align 8
  %ops = alloca %struct.clk_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2343, metadata !DIExpression()), !dbg !2344
  store i32 %num_parents, i32* %num_parents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_parents.addr, metadata !2345, metadata !DIExpression()), !dbg !2346
  store %struct.gpio_desc* %gpiod, %struct.gpio_desc** %gpiod.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %gpiod.addr, metadata !2347, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %ops, metadata !2349, metadata !DIExpression()), !dbg !2350
  %0 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod.addr, align 8, !dbg !2351
  %call = call i32 @gpiod_cansleep(%struct.gpio_desc* %0) #6, !dbg !2353
  %tobool = icmp ne i32 %call, 0, !dbg !2353
  br i1 %tobool, label %if.then, label %if.else, !dbg !2354

if.then:                                          ; preds = %entry
  store %struct.clk_ops* @clk_sleeping_gpio_gate_ops, %struct.clk_ops** %ops, align 8, !dbg !2355
  br label %if.end, !dbg !2356

if.else:                                          ; preds = %entry
  store %struct.clk_ops* @clk_gpio_gate_ops, %struct.clk_ops** %ops, align 8, !dbg !2357
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2358
  %2 = load i32, i32* %num_parents.addr, align 4, !dbg !2359
  %conv = trunc i32 %2 to i8, !dbg !2359
  %3 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod.addr, align 8, !dbg !2360
  %4 = load %struct.clk_ops*, %struct.clk_ops** %ops, align 8, !dbg !2361
  %call1 = call %struct.clk_hw* @clk_register_gpio(%struct.device* %1, i8 zeroext %conv, %struct.gpio_desc* %3, %struct.clk_ops* %4) #6, !dbg !2362
  ret %struct.clk_hw* %call1, !dbg !2363
}

; Function Attrs: noredzone
declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, %struct.clk_hw* (%struct.of_phandle_args*, i8*)*, i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @of_clk_hw_simple_get(%struct.of_phandle_args*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_hw* @clk_register_gpio(%struct.device* %dev, i8 zeroext %num_parents, %struct.gpio_desc* %gpiod, %struct.clk_ops* %clk_gpio_ops) #2 !dbg !2364 {
entry:
  %retval = alloca %struct.clk_hw*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %num_parents.addr = alloca i8, align 1
  %gpiod.addr = alloca %struct.gpio_desc*, align 8
  %clk_gpio_ops.addr = alloca %struct.clk_ops*, align 8
  %clk_gpio = alloca %struct.clk_gpio*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %err = alloca i32, align 4
  %gpio_parent_data = alloca [2 x %struct.clk_parent_data], align 16
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2367, metadata !DIExpression()), !dbg !2368
  store i8 %num_parents, i8* %num_parents.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %num_parents.addr, metadata !2369, metadata !DIExpression()), !dbg !2370
  store %struct.gpio_desc* %gpiod, %struct.gpio_desc** %gpiod.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %gpiod.addr, metadata !2371, metadata !DIExpression()), !dbg !2372
  store %struct.clk_ops* %clk_gpio_ops, %struct.clk_ops** %clk_gpio_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %clk_gpio_ops.addr, metadata !2373, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk_gpio, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2377, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !2379, metadata !DIExpression()), !dbg !2380
  %0 = bitcast %struct.clk_init_data* %init to i8*, !dbg !2380
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !2380
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2381, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.declare(metadata [2 x %struct.clk_parent_data]* %gpio_parent_data, metadata !2383, metadata !DIExpression()), !dbg !2385
  %1 = bitcast [2 x %struct.clk_parent_data]* %gpio_parent_data to i8*, !dbg !2385
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 64, i1 false), !dbg !2385
  %2 = bitcast i8* %1 to [2 x %struct.clk_parent_data]*, !dbg !2385
  %3 = getelementptr inbounds [2 x %struct.clk_parent_data], [2 x %struct.clk_parent_data]* %2, i32 0, i32 1, !dbg !2385
  %4 = getelementptr inbounds %struct.clk_parent_data, %struct.clk_parent_data* %3, i32 0, i32 3, !dbg !2385
  store i32 1, i32* %4, align 8, !dbg !2385
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2386
  %call = call i8* @devm_kzalloc(%struct.device* %5, i64 32, i32 3264) #6, !dbg !2387
  %6 = bitcast i8* %call to %struct.clk_gpio*, !dbg !2387
  store %struct.clk_gpio* %6, %struct.clk_gpio** %clk_gpio, align 8, !dbg !2388
  %7 = load %struct.clk_gpio*, %struct.clk_gpio** %clk_gpio, align 8, !dbg !2389
  %tobool = icmp ne %struct.clk_gpio* %7, null, !dbg !2389
  br i1 %tobool, label %if.end, label %if.then, !dbg !2391

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #6, !dbg !2392
  %8 = bitcast i8* %call1 to %struct.clk_hw*, !dbg !2392
  store %struct.clk_hw* %8, %struct.clk_hw** %retval, align 8, !dbg !2393
  br label %return, !dbg !2393

if.end:                                           ; preds = %entry
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2394
  %of_node = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 23, !dbg !2395
  %10 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2395
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 0, !dbg !2396
  %11 = load i8*, i8** %name, align 8, !dbg !2396
  %name2 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !2397
  store i8* %11, i8** %name2, align 8, !dbg !2398
  %12 = load %struct.clk_ops*, %struct.clk_ops** %clk_gpio_ops.addr, align 8, !dbg !2399
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !2400
  store %struct.clk_ops* %12, %struct.clk_ops** %ops, align 8, !dbg !2401
  %arraydecay = getelementptr inbounds [2 x %struct.clk_parent_data], [2 x %struct.clk_parent_data]* %gpio_parent_data, i64 0, i64 0, !dbg !2402
  %parent_data = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 3, !dbg !2403
  store %struct.clk_parent_data* %arraydecay, %struct.clk_parent_data** %parent_data, align 8, !dbg !2404
  %13 = load i8, i8* %num_parents.addr, align 1, !dbg !2405
  %num_parents3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !2406
  store i8 %13, i8* %num_parents3, align 8, !dbg !2407
  %flags = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !2408
  store i64 4, i64* %flags, align 8, !dbg !2409
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod.addr, align 8, !dbg !2410
  %15 = load %struct.clk_gpio*, %struct.clk_gpio** %clk_gpio, align 8, !dbg !2411
  %gpiod4 = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %15, i32 0, i32 1, !dbg !2412
  store %struct.gpio_desc* %14, %struct.gpio_desc** %gpiod4, align 8, !dbg !2413
  %16 = load %struct.clk_gpio*, %struct.clk_gpio** %clk_gpio, align 8, !dbg !2414
  %hw5 = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %16, i32 0, i32 0, !dbg !2415
  %init6 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw5, i32 0, i32 2, !dbg !2416
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init6, align 8, !dbg !2417
  %17 = load %struct.clk_gpio*, %struct.clk_gpio** %clk_gpio, align 8, !dbg !2418
  %hw7 = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %17, i32 0, i32 0, !dbg !2419
  store %struct.clk_hw* %hw7, %struct.clk_hw** %hw, align 8, !dbg !2420
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2421
  %19 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2422
  %call8 = call i32 @devm_clk_hw_register(%struct.device* %18, %struct.clk_hw* %19) #6, !dbg !2423
  store i32 %call8, i32* %err, align 4, !dbg !2424
  %20 = load i32, i32* %err, align 4, !dbg !2425
  %tobool9 = icmp ne i32 %20, 0, !dbg !2425
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2427

if.then10:                                        ; preds = %if.end
  %21 = load i32, i32* %err, align 4, !dbg !2428
  %conv = sext i32 %21 to i64, !dbg !2428
  %call11 = call i8* @ERR_PTR(i64 %conv) #6, !dbg !2429
  %22 = bitcast i8* %call11 to %struct.clk_hw*, !dbg !2429
  store %struct.clk_hw* %22, %struct.clk_hw** %retval, align 8, !dbg !2430
  br label %return, !dbg !2430

if.end12:                                         ; preds = %if.end
  %23 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2431
  store %struct.clk_hw* %23, %struct.clk_hw** %retval, align 8, !dbg !2432
  br label %return, !dbg !2432

return:                                           ; preds = %if.end12, %if.then10, %if.then
  %24 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !2433
  ret %struct.clk_hw* %24, !dbg !2433
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2434 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2437, metadata !DIExpression()), !dbg !2438
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2439, metadata !DIExpression()), !dbg !2440
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2441, metadata !DIExpression()), !dbg !2442
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2443
  %1 = load i64, i64* %size.addr, align 8, !dbg !2444
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2445
  %or = or i32 %2, 256, !dbg !2446
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !2447
  ret i8* %call, !dbg !2448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #2 !dbg !2449 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2452, metadata !DIExpression()), !dbg !2453
  %0 = load i64, i64* %error.addr, align 8, !dbg !2454
  %1 = inttoptr i64 %0 to i8*, !dbg !2455
  ret i8* %1, !dbg !2456
}

; Function Attrs: noredzone
declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @__clk_mux_determine_rate(%struct.clk_hw*, %struct.clk_rate_request*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_gpio_mux_set_parent(%struct.clk_hw* %hw, i8 zeroext %index) #2 !dbg !2457 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %index.addr = alloca i8, align 1
  %clk = alloca %struct.clk_gpio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gpio*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2458, metadata !DIExpression()), !dbg !2459
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !2460, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk, metadata !2462, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2464, metadata !DIExpression()), !dbg !2466
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2466
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2466
  store i8* %1, i8** %__mptr, align 8, !dbg !2466
  br label %do.body, !dbg !2466

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2467

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2466
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2466
  %3 = bitcast i8* %add.ptr to %struct.clk_gpio*, !dbg !2466
  store %struct.clk_gpio* %3, %struct.clk_gpio** %tmp, align 8, !dbg !2467
  %4 = load %struct.clk_gpio*, %struct.clk_gpio** %tmp, align 8, !dbg !2466
  store %struct.clk_gpio* %4, %struct.clk_gpio** %clk, align 8, !dbg !2463
  %5 = load %struct.clk_gpio*, %struct.clk_gpio** %clk, align 8, !dbg !2469
  %gpiod = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %5, i32 0, i32 1, !dbg !2470
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2470
  %7 = load i8, i8* %index.addr, align 1, !dbg !2471
  %conv = zext i8 %7 to i32, !dbg !2471
  call void @gpiod_set_value_cansleep(%struct.gpio_desc* %6, i32 %conv) #6, !dbg !2472
  ret i32 0, !dbg !2473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @clk_gpio_mux_get_parent(%struct.clk_hw* %hw) #2 !dbg !2474 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_gpio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gpio*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2479, metadata !DIExpression()), !dbg !2481
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2481
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2481
  store i8* %1, i8** %__mptr, align 8, !dbg !2481
  br label %do.body, !dbg !2481

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2482

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2481
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2481
  %3 = bitcast i8* %add.ptr to %struct.clk_gpio*, !dbg !2481
  store %struct.clk_gpio* %3, %struct.clk_gpio** %tmp, align 8, !dbg !2482
  %4 = load %struct.clk_gpio*, %struct.clk_gpio** %tmp, align 8, !dbg !2481
  store %struct.clk_gpio* %4, %struct.clk_gpio** %clk, align 8, !dbg !2478
  %5 = load %struct.clk_gpio*, %struct.clk_gpio** %clk, align 8, !dbg !2484
  %gpiod = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %5, i32 0, i32 1, !dbg !2485
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2485
  %call = call i32 @gpiod_get_value_cansleep(%struct.gpio_desc* %6) #6, !dbg !2486
  %conv = trunc i32 %call to i8, !dbg !2486
  ret i8 %conv, !dbg !2487
}

; Function Attrs: noredzone
declare dso_local void @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @gpiod_get_value_cansleep(%struct.gpio_desc*) #1

; Function Attrs: noredzone
declare dso_local i32 @gpiod_cansleep(%struct.gpio_desc*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_sleeping_gpio_gate_prepare(%struct.clk_hw* %hw) #2 !dbg !2488 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_gpio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gpio*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2489, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2493, metadata !DIExpression()), !dbg !2495
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2495
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2495
  store i8* %1, i8** %__mptr, align 8, !dbg !2495
  br label %do.body, !dbg !2495

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2496

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2495
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2495
  %3 = bitcast i8* %add.ptr to %struct.clk_gpio*, !dbg !2495
  store %struct.clk_gpio* %3, %struct.clk_gpio** %tmp, align 8, !dbg !2496
  %4 = load %struct.clk_gpio*, %struct.clk_gpio** %tmp, align 8, !dbg !2495
  store %struct.clk_gpio* %4, %struct.clk_gpio** %clk, align 8, !dbg !2492
  %5 = load %struct.clk_gpio*, %struct.clk_gpio** %clk, align 8, !dbg !2498
  %gpiod = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %5, i32 0, i32 1, !dbg !2499
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2499
  call void @gpiod_set_value_cansleep(%struct.gpio_desc* %6, i32 1) #6, !dbg !2500
  ret i32 0, !dbg !2501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_sleeping_gpio_gate_unprepare(%struct.clk_hw* %hw) #2 !dbg !2502 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_gpio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gpio*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2507, metadata !DIExpression()), !dbg !2509
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2509
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2509
  store i8* %1, i8** %__mptr, align 8, !dbg !2509
  br label %do.body, !dbg !2509

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2510

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2509
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2509
  %3 = bitcast i8* %add.ptr to %struct.clk_gpio*, !dbg !2509
  store %struct.clk_gpio* %3, %struct.clk_gpio** %tmp, align 8, !dbg !2510
  %4 = load %struct.clk_gpio*, %struct.clk_gpio** %tmp, align 8, !dbg !2509
  store %struct.clk_gpio* %4, %struct.clk_gpio** %clk, align 8, !dbg !2506
  %5 = load %struct.clk_gpio*, %struct.clk_gpio** %clk, align 8, !dbg !2512
  %gpiod = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %5, i32 0, i32 1, !dbg !2513
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2513
  call void @gpiod_set_value_cansleep(%struct.gpio_desc* %6, i32 0) #6, !dbg !2514
  ret void, !dbg !2515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_sleeping_gpio_gate_is_prepared(%struct.clk_hw* %hw) #2 !dbg !2516 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_gpio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gpio*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2517, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2521, metadata !DIExpression()), !dbg !2523
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2523
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2523
  store i8* %1, i8** %__mptr, align 8, !dbg !2523
  br label %do.body, !dbg !2523

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2524

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2523
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2523
  %3 = bitcast i8* %add.ptr to %struct.clk_gpio*, !dbg !2523
  store %struct.clk_gpio* %3, %struct.clk_gpio** %tmp, align 8, !dbg !2524
  %4 = load %struct.clk_gpio*, %struct.clk_gpio** %tmp, align 8, !dbg !2523
  store %struct.clk_gpio* %4, %struct.clk_gpio** %clk, align 8, !dbg !2520
  %5 = load %struct.clk_gpio*, %struct.clk_gpio** %clk, align 8, !dbg !2526
  %gpiod = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %5, i32 0, i32 1, !dbg !2527
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2527
  %call = call i32 @gpiod_get_value_cansleep(%struct.gpio_desc* %6) #6, !dbg !2528
  ret i32 %call, !dbg !2529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_gpio_gate_enable(%struct.clk_hw* %hw) #2 !dbg !2530 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_gpio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gpio*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2535, metadata !DIExpression()), !dbg !2537
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2537
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2537
  store i8* %1, i8** %__mptr, align 8, !dbg !2537
  br label %do.body, !dbg !2537

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2538

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2537
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2537
  %3 = bitcast i8* %add.ptr to %struct.clk_gpio*, !dbg !2537
  store %struct.clk_gpio* %3, %struct.clk_gpio** %tmp, align 8, !dbg !2538
  %4 = load %struct.clk_gpio*, %struct.clk_gpio** %tmp, align 8, !dbg !2537
  store %struct.clk_gpio* %4, %struct.clk_gpio** %clk, align 8, !dbg !2534
  %5 = load %struct.clk_gpio*, %struct.clk_gpio** %clk, align 8, !dbg !2540
  %gpiod = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %5, i32 0, i32 1, !dbg !2541
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2541
  call void @gpiod_set_value(%struct.gpio_desc* %6, i32 1) #6, !dbg !2542
  ret i32 0, !dbg !2543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_gpio_gate_disable(%struct.clk_hw* %hw) #2 !dbg !2544 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_gpio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gpio*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk, metadata !2547, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2549, metadata !DIExpression()), !dbg !2551
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2551
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2551
  store i8* %1, i8** %__mptr, align 8, !dbg !2551
  br label %do.body, !dbg !2551

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2552

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2551
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2551
  %3 = bitcast i8* %add.ptr to %struct.clk_gpio*, !dbg !2551
  store %struct.clk_gpio* %3, %struct.clk_gpio** %tmp, align 8, !dbg !2552
  %4 = load %struct.clk_gpio*, %struct.clk_gpio** %tmp, align 8, !dbg !2551
  store %struct.clk_gpio* %4, %struct.clk_gpio** %clk, align 8, !dbg !2548
  %5 = load %struct.clk_gpio*, %struct.clk_gpio** %clk, align 8, !dbg !2554
  %gpiod = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %5, i32 0, i32 1, !dbg !2555
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2555
  call void @gpiod_set_value(%struct.gpio_desc* %6, i32 0) #6, !dbg !2556
  ret void, !dbg !2557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_gpio_gate_is_enabled(%struct.clk_hw* %hw) #2 !dbg !2558 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_gpio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gpio*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2559, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.declare(metadata %struct.clk_gpio** %clk, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2563, metadata !DIExpression()), !dbg !2565
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2565
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2565
  store i8* %1, i8** %__mptr, align 8, !dbg !2565
  br label %do.body, !dbg !2565

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2566

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2565
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2565
  %3 = bitcast i8* %add.ptr to %struct.clk_gpio*, !dbg !2565
  store %struct.clk_gpio* %3, %struct.clk_gpio** %tmp, align 8, !dbg !2566
  %4 = load %struct.clk_gpio*, %struct.clk_gpio** %tmp, align 8, !dbg !2565
  store %struct.clk_gpio* %4, %struct.clk_gpio** %clk, align 8, !dbg !2562
  %5 = load %struct.clk_gpio*, %struct.clk_gpio** %clk, align 8, !dbg !2568
  %gpiod = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %5, i32 0, i32 1, !dbg !2569
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2569
  %call = call i32 @gpiod_get_value(%struct.gpio_desc* %6) #6, !dbg !2570
  ret i32 %call, !dbg !2571
}

; Function Attrs: noredzone
declare dso_local void @gpiod_set_value(%struct.gpio_desc*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @gpiod_get_value(%struct.gpio_desc*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2215, !2216, !2217, !2218}
!llvm.ident = !{!2219}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gpio_clk_driver_init165", scope: !2, file: !3, line: 249, type: !64, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !201, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clk-gpio.c", directory: "/home/lizy2001/genbc/linux")
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpiod_flags", file: !51, line: 49, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58}
!53 = !DIEnumerator(name: "GPIOD_ASIS", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "GPIOD_IN", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "GPIOD_OUT_LOW", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "GPIOD_OUT_HIGH", value: 7, isUnsigned: true)
!57 = !DIEnumerator(name: "GPIOD_OUT_LOW_OPEN_DRAIN", value: 11, isUnsigned: true)
!58 = !DIEnumerator(name: "GPIOD_OUT_HIGH_OPEN_DRAIN", value: 15, isUnsigned: true)
!59 = !{!60, !63, !64, !65, !66, !68}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !62, line: 76, flags: DIFlagFwdDecl)
!62 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !67, line: 148, baseType: !7)
!67 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_gpio", file: !3, line: 44, size: 256, elements: !70)
!70 = !{!71, !198}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !69, file: !3, line: 45, baseType: !72, size: 192)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !73, line: 312, size: 192, elements: !74)
!73 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !78, !81}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !72, file: !73, line: 313, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !73, line: 38, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !72, file: !73, line: 314, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !73, line: 36, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !72, file: !73, line: 315, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !73, line: 285, size: 448, elements: !85)
!85 = !{!86, !90, !180, !183, !194, !196, !197}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !73, line: 286, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !84, file: !73, line: 287, baseType: !91, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !73, line: 220, size: 1600, elements: !94)
!94 = !{!95, !101, !105, !106, !107, !108, !109, !110, !111, !112, !113, !117, !122, !134, !143, !147, !151, !155, !156, !157, !161, !170, !171, !172, !173}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !93, file: !73, line: 221, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !100}
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !93, file: !73, line: 222, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !100}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !93, file: !73, line: 223, baseType: !96, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !93, file: !73, line: 224, baseType: !102, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !93, file: !73, line: 225, baseType: !96, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !93, file: !73, line: 226, baseType: !102, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !93, file: !73, line: 227, baseType: !96, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !93, file: !73, line: 228, baseType: !102, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !93, file: !73, line: 229, baseType: !96, size: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !93, file: !73, line: 230, baseType: !102, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !93, file: !73, line: 231, baseType: !114, size: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!63, !100, !63}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !93, file: !73, line: 233, baseType: !118, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!65, !100, !63, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !93, file: !73, line: 235, baseType: !123, size: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!99, !100, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !73, line: 55, size: 320, elements: !128)
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !127, file: !73, line: 56, baseType: !63, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !127, file: !73, line: 57, baseType: !63, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !127, file: !73, line: 58, baseType: !63, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !127, file: !73, line: 59, baseType: !63, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !127, file: !73, line: 60, baseType: !100, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !93, file: !73, line: 237, baseType: !135, size: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!99, !100, !138}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !139, line: 17, baseType: !140)
!139 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !141, line: 21, baseType: !142)
!141 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !93, file: !73, line: 238, baseType: !144, size: 64, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!138, !100}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !93, file: !73, line: 239, baseType: !148, size: 64, offset: 960)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!99, !100, !63, !63}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !93, file: !73, line: 241, baseType: !152, size: 64, offset: 1024)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!99, !100, !63, !63, !138}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !93, file: !73, line: 244, baseType: !114, size: 64, offset: 1088)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !93, file: !73, line: 246, baseType: !96, size: 64, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !93, file: !73, line: 247, baseType: !158, size: 64, offset: 1216)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!99, !100, !99}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !93, file: !73, line: 248, baseType: !162, size: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!99, !100, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !73, line: 69, size: 64, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !166, file: !73, line: 70, baseType: !7, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !166, file: !73, line: 71, baseType: !7, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !93, file: !73, line: 250, baseType: !162, size: 64, offset: 1344)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !93, file: !73, line: 252, baseType: !96, size: 64, offset: 1408)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !93, file: !73, line: 253, baseType: !102, size: 64, offset: 1472)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !93, file: !73, line: 254, baseType: !174, size: 64, offset: 1536)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !100, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !179, line: 21, flags: DIFlagFwdDecl)
!179 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !84, file: !73, line: 289, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !84, file: !73, line: 290, baseType: !184, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !73, line: 264, size: 256, elements: !187)
!187 = !{!188, !191, !192, !193}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !186, file: !73, line: 265, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !186, file: !73, line: 266, baseType: !87, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !73, line: 267, baseType: !87, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !186, file: !73, line: 268, baseType: !99, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !84, file: !73, line: 291, baseType: !195, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !84, file: !73, line: 292, baseType: !138, size: 8, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !73, line: 293, baseType: !63, size: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "gpiod", scope: !69, file: !3, line: 46, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !51, line: 19, flags: DIFlagFwdDecl)
!201 = !{!0, !202, !2206, !2208, !2210, !2212}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "gpio_clk_driver", scope: !2, file: !3, line: 242, type: !204, isLocal: true, isDefinition: true)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !205, line: 200, size: 1600, elements: !206)
!205 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !2193, !2194, !2198, !2202, !2203, !2204, !2205}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !204, file: !205, line: 201, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!99, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !205, line: 22, size: 6208, elements: !213)
!213 = !{!214, !215, !216, !219, !2161, !2162, !2163, !2164, !2179, !2187, !2188, !2191}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !205, line: 23, baseType: !87, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !212, file: !205, line: 24, baseType: !99, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !212, file: !205, line: 25, baseType: !217, size: 8, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !67, line: 30, baseType: !218)
!218 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !212, file: !205, line: 26, baseType: !220, size: 5568, offset: 128)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !221)
!221 = !{!222, !1687, !1689, !1692, !1693, !1744, !1838, !1839, !1840, !1841, !1842, !1851, !1956, !1969, !1972, !1973, !1977, !1979, !1980, !1981, !1985, !1991, !1992, !1995, !2110, !2111, !2114, !2115, !2116, !2117, !2149, !2150, !2151, !2154, !2157, !2158, !2159, !2160}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !220, file: !30, line: 462, baseType: !223, size: 512)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !224, line: 64, size: 512, elements: !225)
!224 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !227, !233, !235, !295, !1525, !1677, !1682, !1683, !1684, !1685, !1686}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !224, line: 65, baseType: !87, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !223, file: !224, line: 66, baseType: !228, size: 128, offset: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !67, line: 178, size: 128, elements: !229)
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !67, line: 179, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !67, line: 179, baseType: !231, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !224, line: 67, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !223, file: !224, line: 68, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !224, line: 192, size: 704, elements: !238)
!238 = !{!239, !240, !256, !257}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !237, file: !224, line: 193, baseType: !228, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !237, file: !224, line: 194, baseType: !241, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !242, line: 83, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !242, line: 71, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !242, line: 72, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !242, line: 72, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !246, file: !242, line: 73, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !242, line: 20, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !249, file: !242, line: 21, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !253, line: 25, baseType: !254)
!253 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 25, elements: !255)
!255 = !{}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !237, file: !224, line: 195, baseType: !223, size: 512, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !237, file: !224, line: 196, baseType: !258, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !224, line: 156, size: 192, elements: !261)
!261 = !{!262, !267, !272}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !260, file: !224, line: 157, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!99, !236, !234}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !224, line: 158, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!87, !236, !234}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !260, file: !224, line: 159, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!99, !236, !234, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !224, line: 148, size: 20736, elements: !279)
!279 = !{!280, !285, !289, !290, !294}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !278, file: !224, line: 149, baseType: !281, size: 192)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 192, elements: !283)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!283 = !{!284}
!284 = !DISubrange(count: 3)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !278, file: !224, line: 150, baseType: !286, size: 4096, offset: 192)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 4096, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !278, file: !224, line: 151, baseType: !99, size: 32, offset: 4288)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !278, file: !224, line: 152, baseType: !291, size: 16384, offset: 4320)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 16384, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 2048)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !278, file: !224, line: 153, baseType: !99, size: 32, offset: 20704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !223, file: !224, line: 69, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !224, line: 138, size: 448, elements: !298)
!298 = !{!299, !303, !331, !333, !1470, !1503, !1507}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !297, file: !224, line: 139, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !234}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !297, file: !224, line: 140, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !307, line: 230, size: 128, elements: !308)
!307 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !324}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !306, file: !307, line: 231, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !234, !317, !282}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !67, line: 60, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !315, line: 73, baseType: !316)
!315 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !315, line: 15, baseType: !65)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !307, line: 30, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !307, line: 31, baseType: !87, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !318, file: !307, line: 32, baseType: !322, size: 16, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !67, line: 19, baseType: !323)
!323 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !306, file: !307, line: 232, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!313, !234, !317, !87, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 55, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !315, line: 72, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !315, line: 16, baseType: !63)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !297, file: !224, line: 141, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !297, file: !224, line: 142, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !307, line: 84, size: 320, elements: !338)
!338 = !{!339, !340, !344, !1467, !1468}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !307, line: 85, baseType: !87, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !337, file: !307, line: 86, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!322, !234, !317, !99}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !337, file: !307, line: 88, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!322, !234, !348, !99}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !307, line: 168, size: 448, elements: !350)
!350 = !{!351, !352, !353, !354, !364, !365}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !349, file: !307, line: 169, baseType: !318, size: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !307, line: 170, baseType: !328, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !349, file: !307, line: 171, baseType: !64, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !349, file: !307, line: 172, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!313, !358, !234, !348, !282, !361, !328}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !360, line: 526, flags: DIFlagFwdDecl)
!360 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !67, line: 46, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !315, line: 88, baseType: !363)
!363 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !349, file: !307, line: 174, baseType: !355, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !349, file: !307, line: 176, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!99, !358, !234, !348, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !371, line: 305, size: 1472, elements: !372)
!371 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !374, !375, !376, !377, !385, !386, !1441, !1447, !1448, !1453, !1454, !1457, !1461, !1462, !1463, !1464, !1465}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !370, file: !371, line: 308, baseType: !63, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !370, file: !371, line: 309, baseType: !63, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !370, file: !371, line: 313, baseType: !369, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !370, file: !371, line: 313, baseType: !369, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !370, file: !371, line: 315, baseType: !378, size: 192, align: 64, offset: 256)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !379, line: 24, size: 192, align: 64, elements: !380)
!379 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!380 = !{!381, !382, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !378, file: !379, line: 25, baseType: !63, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !378, file: !379, line: 26, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !378, file: !379, line: 27, baseType: !383, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !370, file: !371, line: 323, baseType: !63, size: 64, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !370, file: !371, line: 327, baseType: !387, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !371, line: 388, size: 7296, elements: !389)
!389 = !{!390, !1437}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !371, line: 389, baseType: !391, size: 7296)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !371, line: 389, size: 7296, elements: !392)
!392 = !{!393, !394, !398, !402, !406, !407, !408, !409, !410, !418, !423, !424, !425, !426, !435, !436, !437, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !472, !480, !483, !515, !516, !1408, !1409, !1412, !1415, !1416, !1419, !1420, !1421, !1424, !1436}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !391, file: !371, line: 390, baseType: !369, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !391, file: !371, line: 391, baseType: !395, size: 64, offset: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !379, line: 31, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !395, file: !379, line: 32, baseType: !383, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !391, file: !371, line: 392, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !139, line: 23, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !141, line: 31, baseType: !401)
!401 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !391, file: !371, line: 394, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!63, !358, !63, !63, !63, !63}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !391, file: !371, line: 398, baseType: !63, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !391, file: !371, line: 399, baseType: !63, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !391, file: !371, line: 405, baseType: !63, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !391, file: !371, line: 406, baseType: !63, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !391, file: !371, line: 407, baseType: !411, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !360, line: 286, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 286, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !413, file: !360, line: 286, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !417, line: 18, baseType: !63)
!417 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !391, file: !371, line: 416, baseType: !419, size: 32, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !67, line: 168, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 166, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !420, file: !67, line: 167, baseType: !99, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !391, file: !371, line: 428, baseType: !419, size: 32, offset: 608)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !391, file: !371, line: 437, baseType: !419, size: 32, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !391, file: !371, line: 447, baseType: !419, size: 32, offset: 672)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !391, file: !371, line: 450, baseType: !427, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !428, line: 13, baseType: !429)
!428 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !67, line: 175, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 173, size: 64, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !430, file: !67, line: 174, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !139, line: 22, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !141, line: 30, baseType: !363)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !391, file: !371, line: 452, baseType: !99, size: 32, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !391, file: !371, line: 454, baseType: !241, offset: 800)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !391, file: !371, line: 457, baseType: !438, size: 256, offset: 832)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !439, line: 35, size: 256, elements: !440)
!439 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!440 = !{!441, !442, !443, !445}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !438, file: !439, line: 36, baseType: !427, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !438, file: !439, line: 42, baseType: !427, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !438, file: !439, line: 46, baseType: !444, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !242, line: 29, baseType: !249)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !438, file: !439, line: 47, baseType: !228, size: 128, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !391, file: !371, line: 459, baseType: !228, size: 128, offset: 1088)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !391, file: !371, line: 466, baseType: !63, size: 64, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !391, file: !371, line: 467, baseType: !63, size: 64, offset: 1280)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !391, file: !371, line: 469, baseType: !63, size: 64, offset: 1344)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !391, file: !371, line: 470, baseType: !63, size: 64, offset: 1408)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !391, file: !371, line: 471, baseType: !429, size: 64, offset: 1472)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !391, file: !371, line: 472, baseType: !63, size: 64, offset: 1536)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !391, file: !371, line: 473, baseType: !63, size: 64, offset: 1600)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !391, file: !371, line: 474, baseType: !63, size: 64, offset: 1664)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !391, file: !371, line: 475, baseType: !63, size: 64, offset: 1728)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !391, file: !371, line: 477, baseType: !241, offset: 1792)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !391, file: !371, line: 478, baseType: !63, size: 64, offset: 1792)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !391, file: !371, line: 478, baseType: !63, size: 64, offset: 1856)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !391, file: !371, line: 478, baseType: !63, size: 64, offset: 1920)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !391, file: !371, line: 478, baseType: !63, size: 64, offset: 1984)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !391, file: !371, line: 479, baseType: !63, size: 64, offset: 2048)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !391, file: !371, line: 479, baseType: !63, size: 64, offset: 2112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !391, file: !371, line: 479, baseType: !63, size: 64, offset: 2176)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !391, file: !371, line: 480, baseType: !63, size: 64, offset: 2240)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !391, file: !371, line: 480, baseType: !63, size: 64, offset: 2304)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !391, file: !371, line: 480, baseType: !63, size: 64, offset: 2368)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !391, file: !371, line: 480, baseType: !63, size: 64, offset: 2432)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !391, file: !371, line: 482, baseType: !469, size: 2816, offset: 2496)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2816, elements: !470)
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
!487 = !{!488, !489, !490, !491, !494, !495, !502, !503, !507, !508, !511}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !486, file: !485, line: 18, baseType: !399, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !486, file: !485, line: 28, baseType: !429, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !486, file: !485, line: 31, baseType: !438, size: 256, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !486, file: !485, line: 32, baseType: !492, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !485, line: 32, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !486, file: !485, line: 37, baseType: !323, size: 16, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !486, file: !485, line: 40, baseType: !496, size: 192, offset: 512)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !497, line: 53, size: 192, elements: !498)
!497 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !500, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !496, file: !497, line: 54, baseType: !427, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !496, file: !497, line: 55, baseType: !241, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !496, file: !497, line: 59, baseType: !228, size: 128, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !486, file: !485, line: 41, baseType: !64, size: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !486, file: !485, line: 42, baseType: !504, size: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !485, line: 42, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !486, file: !485, line: 44, baseType: !419, size: 32, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !486, file: !485, line: 50, baseType: !509, size: 16, offset: 864)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !139, line: 19, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !141, line: 24, baseType: !323)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !486, file: !485, line: 51, baseType: !512, size: 16, offset: 880)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !139, line: 18, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !141, line: 23, baseType: !514)
!514 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !371, line: 495, baseType: !63, size: 64, offset: 6528)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !391, file: !371, line: 497, baseType: !517, size: 64, offset: 6592)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !371, line: 381, size: 384, elements: !519)
!519 = !{!520, !521, !1407}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !518, file: !371, line: 382, baseType: !419, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !518, file: !371, line: 383, baseType: !522, size: 128, offset: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !371, line: 376, size: 128, elements: !523)
!523 = !{!524, !1405}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !522, file: !371, line: 377, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !527, line: 640, size: 48640, elements: !528)
!527 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!528 = !{!529, !537, !539, !540, !546, !547, !548, !549, !550, !551, !552, !553, !557, !575, !586, !678, !679, !680, !691, !692, !694, !695, !696, !697, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !776, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !832, !834, !835, !836, !848, !850, !851, !852, !853, !854, !860, !861, !862, !863, !864, !865, !866, !878, !883, !887, !888, !889, !892, !896, !899, !902, !905, !908, !911, !914, !917, !923, !924, !925, !931, !932, !933, !934, !935, !944, !945, !946, !947, !948, !953, !954, !955, !958, !959, !962, !965, !968, !971, !974, !977, !978, !1058, !1061, !1064, !1065, !1068, !1069, !1070, !1076, !1077, !1078, !1091, !1092, !1093, !1103, !1108, !1111, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !526, file: !527, line: 646, baseType: !530, size: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !531, line: 56, size: 128, elements: !532)
!531 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !531, line: 57, baseType: !63, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !530, file: !531, line: 58, baseType: !535, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !139, line: 21, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !141, line: 27, baseType: !7)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !526, file: !527, line: 649, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !526, file: !527, line: 657, baseType: !64, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !526, file: !527, line: 658, baseType: !541, size: 32, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !542, line: 113, baseType: !543)
!542 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !542, line: 111, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !543, file: !542, line: 112, baseType: !419, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !527, line: 660, baseType: !7, size: 32, offset: 288)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !526, file: !527, line: 661, baseType: !7, size: 32, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !526, file: !527, line: 684, baseType: !99, size: 32, offset: 352)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !526, file: !527, line: 686, baseType: !99, size: 32, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !526, file: !527, line: 687, baseType: !99, size: 32, offset: 416)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !526, file: !527, line: 688, baseType: !99, size: 32, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !526, file: !527, line: 689, baseType: !7, size: 32, offset: 480)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !526, file: !527, line: 691, baseType: !554, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !527, line: 691, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !526, file: !527, line: 692, baseType: !558, size: 832, offset: 576)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !527, line: 451, size: 832, elements: !559)
!559 = !{!560, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !558, file: !527, line: 453, baseType: !561, size: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !527, line: 325, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !561, file: !527, line: 326, baseType: !63, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !561, file: !527, line: 327, baseType: !535, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !558, file: !527, line: 454, baseType: !378, size: 192, align: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !558, file: !527, line: 455, baseType: !228, size: 128, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !558, file: !527, line: 456, baseType: !7, size: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !558, file: !527, line: 458, baseType: !399, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !558, file: !527, line: 459, baseType: !399, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !558, file: !527, line: 460, baseType: !399, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !558, file: !527, line: 461, baseType: !399, size: 64, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !558, file: !527, line: 463, baseType: !399, size: 64, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !558, file: !527, line: 465, baseType: !574, offset: 832)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !527, line: 415, elements: !255)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !526, file: !527, line: 693, baseType: !576, size: 384, offset: 1408)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !527, line: 489, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !576, file: !527, line: 490, baseType: !228, size: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !576, file: !527, line: 491, baseType: !63, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !576, file: !527, line: 492, baseType: !63, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !576, file: !527, line: 493, baseType: !7, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !576, file: !527, line: 494, baseType: !323, size: 16, offset: 288)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !576, file: !527, line: 495, baseType: !323, size: 16, offset: 304)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !576, file: !527, line: 497, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !526, file: !527, line: 697, baseType: !587, size: 1792, offset: 1792)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !527, line: 507, size: 1792, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !675, !676}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !587, file: !527, line: 508, baseType: !378, size: 192, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !587, file: !527, line: 515, baseType: !399, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !587, file: !527, line: 516, baseType: !399, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !587, file: !527, line: 517, baseType: !399, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !587, file: !527, line: 518, baseType: !399, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !587, file: !527, line: 519, baseType: !399, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !587, file: !527, line: 526, baseType: !433, size: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !587, file: !527, line: 527, baseType: !399, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !527, line: 528, baseType: !7, size: 32, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !587, file: !527, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !587, file: !527, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !587, file: !527, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !587, file: !527, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !587, file: !527, line: 563, baseType: !603, size: 512, offset: 704)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !604)
!604 = !{!605, !613, !614, !619, !671, !672, !673, !674}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !6, line: 119, baseType: !606, size: 256)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !607, line: 9, size: 256, elements: !608)
!607 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !606, file: !607, line: 10, baseType: !378, size: 192, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !606, file: !607, line: 11, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !612, line: 29, baseType: !433)
!612 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !603, file: !6, line: 120, baseType: !611, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !603, file: !6, line: 121, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!5, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !603, file: !6, line: 122, baseType: !620, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !622)
!622 = !{!623, !643, !644, !647, !657, !658, !666, !670}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !621, file: !6, line: 160, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !625, file: !6, line: 215, baseType: !444)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !625, file: !6, line: 216, baseType: !7, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !625, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !625, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !625, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !625, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !625, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !625, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !625, file: !6, line: 233, baseType: !611, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !625, file: !6, line: 234, baseType: !618, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !625, file: !6, line: 235, baseType: !611, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !625, file: !6, line: 236, baseType: !618, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !625, file: !6, line: 237, baseType: !640, size: 4096, offset: 512)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 4096, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 8)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !621, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !621, file: !6, line: 162, baseType: !645, size: 32, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !67, line: 27, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !315, line: 96, baseType: !99)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !621, file: !6, line: 163, baseType: !648, size: 32, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !649, line: 276, baseType: !650)
!649 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !649, line: 276, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !650, file: !649, line: 276, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !649, line: 70, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !649, line: 65, size: 32, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !654, file: !649, line: 66, baseType: !7, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !621, file: !6, line: 164, baseType: !618, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !621, file: !6, line: 165, baseType: !659, size: 128, offset: 256)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !607, line: 14, size: 128, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !659, file: !607, line: 15, baseType: !662, size: 128)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !379, line: 125, size: 128, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !662, file: !379, line: 126, baseType: !395, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !662, file: !379, line: 127, baseType: !383, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !621, file: !6, line: 166, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!611}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !621, file: !6, line: 167, baseType: !611, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !603, file: !6, line: 123, baseType: !138, size: 8, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !603, file: !6, line: 124, baseType: !138, size: 8, offset: 456)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !603, file: !6, line: 125, baseType: !138, size: 8, offset: 464)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !603, file: !6, line: 126, baseType: !138, size: 8, offset: 472)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !587, file: !527, line: 572, baseType: !603, size: 512, offset: 1216)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !587, file: !527, line: 580, baseType: !677, size: 64, offset: 1728)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !526, file: !527, line: 721, baseType: !7, size: 32, offset: 3584)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !526, file: !527, line: 722, baseType: !99, size: 32, offset: 3616)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !526, file: !527, line: 723, baseType: !681, size: 64, offset: 3648)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !684, line: 17, baseType: !685)
!684 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !684, line: 17, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !685, file: !684, line: 17, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 1)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !526, file: !527, line: 724, baseType: !683, size: 64, offset: 3712)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !526, file: !527, line: 749, baseType: !693, offset: 3776)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !527, line: 290, elements: !255)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !526, file: !527, line: 751, baseType: !228, size: 128, offset: 3776)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !526, file: !527, line: 757, baseType: !387, size: 64, offset: 3904)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !526, file: !527, line: 758, baseType: !387, size: 64, offset: 3968)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !526, file: !527, line: 761, baseType: !698, size: 320, offset: 4032)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !474, line: 34, size: 320, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !698, file: !474, line: 35, baseType: !399, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !698, file: !474, line: 36, baseType: !702, size: 256, offset: 64)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !478)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !526, file: !527, line: 766, baseType: !99, size: 32, offset: 4352)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !526, file: !527, line: 767, baseType: !99, size: 32, offset: 4384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !526, file: !527, line: 768, baseType: !99, size: 32, offset: 4416)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !526, file: !527, line: 770, baseType: !99, size: 32, offset: 4448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !526, file: !527, line: 772, baseType: !63, size: 64, offset: 4480)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !526, file: !527, line: 775, baseType: !7, size: 32, offset: 4544)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !526, file: !527, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !526, file: !527, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !526, file: !527, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !526, file: !527, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !526, file: !527, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !526, file: !527, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !526, file: !527, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !526, file: !527, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !526, file: !527, line: 831, baseType: !63, size: 64, offset: 4672)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !526, file: !527, line: 833, baseType: !719, size: 384, offset: 4736)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !720)
!720 = !{!721, !726}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !719, file: !12, line: 26, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!65, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !12, line: 27, baseType: !727, size: 320, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !12, line: 27, size: 320, elements: !728)
!728 = !{!729, !739, !766}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !727, file: !12, line: 36, baseType: !730, size: 320)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !12, line: 29, size: 320, elements: !731)
!731 = !{!732, !734, !735, !736, !737, !738}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !730, file: !12, line: 30, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !730, file: !12, line: 31, baseType: !535, size: 32, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !12, line: 32, baseType: !535, size: 32, offset: 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !730, file: !12, line: 33, baseType: !535, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !730, file: !12, line: 34, baseType: !399, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !730, file: !12, line: 35, baseType: !733, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !727, file: !12, line: 46, baseType: !740, size: 192)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !12, line: 38, size: 192, elements: !741)
!741 = !{!742, !743, !744, !765}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !740, file: !12, line: 39, baseType: !645, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !12, line: 41, baseType: !745, size: 64, offset: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !12, line: 41, size: 64, elements: !746)
!746 = !{!747, !755}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !745, file: !12, line: 42, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !750, line: 7, size: 128, elements: !751)
!750 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !749, file: !750, line: 8, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !315, line: 93, baseType: !363)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !749, file: !750, line: 9, baseType: !363, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !745, file: !12, line: 43, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !758, line: 7, size: 64, elements: !759)
!758 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !764}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !757, file: !758, line: 8, baseType: !761, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !758, line: 5, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !139, line: 20, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !141, line: 26, baseType: !99)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !757, file: !758, line: 9, baseType: !762, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !740, file: !12, line: 45, baseType: !399, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !727, file: !12, line: 54, baseType: !767, size: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !12, line: 48, size: 256, elements: !768)
!768 = !{!769, !772, !773, !774, !775}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !767, file: !12, line: 49, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !767, file: !12, line: 50, baseType: !99, size: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !767, file: !12, line: 51, baseType: !99, size: 32, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !767, file: !12, line: 52, baseType: !63, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !767, file: !12, line: 53, baseType: !63, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !526, file: !527, line: 835, baseType: !777, size: 32, offset: 5120)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !67, line: 22, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !315, line: 28, baseType: !99)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !526, file: !527, line: 836, baseType: !777, size: 32, offset: 5152)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !526, file: !527, line: 840, baseType: !63, size: 64, offset: 5184)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !526, file: !527, line: 849, baseType: !525, size: 64, offset: 5248)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !526, file: !527, line: 852, baseType: !525, size: 64, offset: 5312)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !526, file: !527, line: 857, baseType: !228, size: 128, offset: 5376)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !526, file: !527, line: 858, baseType: !228, size: 128, offset: 5504)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !526, file: !527, line: 859, baseType: !525, size: 64, offset: 5632)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !526, file: !527, line: 867, baseType: !228, size: 128, offset: 5696)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !526, file: !527, line: 868, baseType: !228, size: 128, offset: 5824)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !526, file: !527, line: 871, baseType: !789, size: 64, offset: 5952)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !791, line: 59, size: 768, elements: !792)
!791 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794, !795, !796, !807, !808, !815, !824}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !790, file: !791, line: 61, baseType: !541, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !790, file: !791, line: 62, baseType: !7, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !790, file: !791, line: 63, baseType: !241, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !790, file: !791, line: 65, baseType: !797, size: 256, offset: 64)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 256, elements: !478)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !67, line: 182, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !798, file: !67, line: 183, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !67, line: 186, size: 128, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !802, file: !67, line: 187, baseType: !801, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !802, file: !67, line: 187, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !790, file: !791, line: 66, baseType: !798, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !790, file: !791, line: 68, baseType: !809, size: 128, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !810, line: 40, baseType: !811)
!810 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !810, line: 36, size: 128, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !811, file: !810, line: 37, baseType: !241)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !811, file: !810, line: 38, baseType: !228, size: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !790, file: !791, line: 69, baseType: !816, size: 128, align: 64, offset: 512)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !67, line: 216, size: 128, align: 64, elements: !817)
!817 = !{!818, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !816, file: !67, line: 217, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !816, file: !67, line: 218, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !819}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !790, file: !791, line: 70, baseType: !825, size: 128, offset: 640)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 128, elements: !689)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !791, line: 54, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !826, file: !791, line: 55, baseType: !99, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !826, file: !791, line: 56, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !791, line: 56, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !526, file: !527, line: 872, baseType: !833, size: 512, offset: 6016)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 512, elements: !478)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !526, file: !527, line: 873, baseType: !228, size: 128, offset: 6528)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !526, file: !527, line: 874, baseType: !228, size: 128, offset: 6656)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !526, file: !527, line: 876, baseType: !837, size: 64, offset: 6784)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !839, line: 26, size: 192, elements: !840)
!839 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !838, file: !839, line: 27, baseType: !7, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !838, file: !839, line: 28, baseType: !843, size: 128, offset: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !844, line: 43, size: 128, elements: !845)
!844 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !843, file: !844, line: 44, baseType: !444)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !843, file: !844, line: 45, baseType: !228, size: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !526, file: !527, line: 879, baseType: !849, size: 64, offset: 6848)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !526, file: !527, line: 882, baseType: !849, size: 64, offset: 6912)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !526, file: !527, line: 884, baseType: !399, size: 64, offset: 6976)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !526, file: !527, line: 885, baseType: !399, size: 64, offset: 7040)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !526, file: !527, line: 890, baseType: !399, size: 64, offset: 7104)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !526, file: !527, line: 891, baseType: !855, size: 128, offset: 7168)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !527, line: 242, size: 128, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !855, file: !527, line: 244, baseType: !399, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !855, file: !527, line: 245, baseType: !399, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !855, file: !527, line: 246, baseType: !444, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !526, file: !527, line: 900, baseType: !63, size: 64, offset: 7296)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !526, file: !527, line: 901, baseType: !63, size: 64, offset: 7360)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !526, file: !527, line: 904, baseType: !399, size: 64, offset: 7424)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !526, file: !527, line: 907, baseType: !399, size: 64, offset: 7488)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !526, file: !527, line: 910, baseType: !63, size: 64, offset: 7552)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !526, file: !527, line: 911, baseType: !63, size: 64, offset: 7616)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !526, file: !527, line: 914, baseType: !867, size: 640, offset: 7680)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !868, line: 123, size: 640, elements: !869)
!868 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!869 = !{!870, !876, !877}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !867, file: !868, line: 124, baseType: !871, size: 576)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 576, elements: !283)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !868, line: 108, size: 192, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !872, file: !868, line: 109, baseType: !399, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !872, file: !868, line: 110, baseType: !659, size: 128, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !867, file: !868, line: 125, baseType: !7, size: 32, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !867, file: !868, line: 126, baseType: !7, size: 32, offset: 608)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !526, file: !527, line: 917, baseType: !879, size: 192, offset: 8320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !868, line: 134, size: 192, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !879, file: !868, line: 135, baseType: !816, size: 128, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !879, file: !868, line: 136, baseType: !7, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !526, file: !527, line: 923, baseType: !884, size: 64, offset: 8512)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !527, line: 923, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !526, file: !527, line: 926, baseType: !884, size: 64, offset: 8576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !526, file: !527, line: 929, baseType: !884, size: 64, offset: 8640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !526, file: !527, line: 933, baseType: !890, size: 64, offset: 8704)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !527, line: 933, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !526, file: !527, line: 943, baseType: !893, size: 128, offset: 8768)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 16)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !526, file: !527, line: 945, baseType: !897, size: 64, offset: 8896)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !527, line: 49, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !526, file: !527, line: 956, baseType: !900, size: 64, offset: 8960)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !527, line: 45, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !526, file: !527, line: 959, baseType: !903, size: 64, offset: 9024)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !527, line: 959, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !526, file: !527, line: 962, baseType: !906, size: 64, offset: 9088)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !527, line: 66, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !526, file: !527, line: 966, baseType: !909, size: 64, offset: 9152)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !527, line: 50, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !526, file: !527, line: 969, baseType: !912, size: 64, offset: 9216)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !868, line: 223, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !526, file: !527, line: 970, baseType: !915, size: 64, offset: 9280)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !527, line: 62, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !526, file: !527, line: 971, baseType: !918, size: 64, offset: 9344)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !919, line: 25, baseType: !920)
!919 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !919, line: 23, size: 64, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !920, file: !919, line: 24, baseType: !688, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !526, file: !527, line: 972, baseType: !918, size: 64, offset: 9408)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !526, file: !527, line: 974, baseType: !918, size: 64, offset: 9472)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !526, file: !527, line: 975, baseType: !926, size: 192, offset: 9536)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !927, line: 30, size: 192, elements: !928)
!927 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !926, file: !927, line: 31, baseType: !228, size: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !926, file: !927, line: 32, baseType: !918, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !526, file: !527, line: 976, baseType: !63, size: 64, offset: 9728)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !526, file: !527, line: 977, baseType: !328, size: 64, offset: 9792)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !526, file: !527, line: 978, baseType: !7, size: 32, offset: 9856)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !526, file: !527, line: 980, baseType: !819, size: 64, offset: 9920)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !526, file: !527, line: 989, baseType: !936, size: 128, offset: 9984)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !937, line: 35, size: 128, elements: !938)
!937 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !936, file: !937, line: 36, baseType: !99, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !936, file: !937, line: 37, baseType: !419, size: 32, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !936, file: !937, line: 38, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !937, line: 23, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !526, file: !527, line: 992, baseType: !399, size: 64, offset: 10112)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !526, file: !527, line: 993, baseType: !399, size: 64, offset: 10176)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !526, file: !527, line: 996, baseType: !241, offset: 10240)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !526, file: !527, line: 999, baseType: !444, offset: 10240)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !526, file: !527, line: 1001, baseType: !949, size: 64, offset: 10240)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !527, line: 636, size: 64, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !949, file: !527, line: 637, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !526, file: !527, line: 1005, baseType: !662, size: 128, offset: 10304)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !526, file: !527, line: 1007, baseType: !525, size: 64, offset: 10432)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !526, file: !527, line: 1009, baseType: !956, size: 64, offset: 10496)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !527, line: 1009, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !526, file: !527, line: 1043, baseType: !64, size: 64, offset: 10560)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !526, file: !527, line: 1046, baseType: !960, size: 64, offset: 10624)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !527, line: 41, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !526, file: !527, line: 1050, baseType: !963, size: 64, offset: 10688)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !527, line: 42, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !526, file: !527, line: 1054, baseType: !966, size: 64, offset: 10752)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !527, line: 55, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !526, file: !527, line: 1056, baseType: !969, size: 64, offset: 10816)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !527, line: 40, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !526, file: !527, line: 1058, baseType: !972, size: 64, offset: 10880)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !527, line: 47, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !526, file: !527, line: 1061, baseType: !975, size: 64, offset: 10944)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !527, line: 43, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !526, file: !527, line: 1064, baseType: !63, size: 64, offset: 11008)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !526, file: !527, line: 1065, baseType: !979, size: 64, offset: 11072)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !927, line: 14, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !927, line: 12, size: 384, elements: !982)
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !927, line: 13, baseType: !984, size: 384)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !927, line: 13, size: 384, elements: !985)
!985 = !{!986, !987, !988, !989}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !984, file: !927, line: 13, baseType: !99, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !984, file: !927, line: 13, baseType: !99, size: 32, offset: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !984, file: !927, line: 13, baseType: !99, size: 32, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !984, file: !927, line: 13, baseType: !990, size: 256, offset: 128)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !991, line: 32, size: 256, elements: !992)
!991 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!992 = !{!993, !999, !1012, !1018, !1027, !1047, !1052}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !990, file: !991, line: 37, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !991, line: 34, size: 64, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !994, file: !991, line: 35, baseType: !778, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !994, file: !991, line: 36, baseType: !998, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !315, line: 49, baseType: !7)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !990, file: !991, line: 45, baseType: !1000, size: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !991, line: 40, size: 192, elements: !1001)
!1001 = !{!1002, !1004, !1005, !1011}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1000, file: !991, line: 41, baseType: !1003, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !315, line: 95, baseType: !99)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1000, file: !991, line: 42, baseType: !99, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1000, file: !991, line: 43, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !991, line: 11, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !991, line: 8, size: 64, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1007, file: !991, line: 9, baseType: !99, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1007, file: !991, line: 10, baseType: !64, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1000, file: !991, line: 44, baseType: !99, size: 32, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !990, file: !991, line: 52, baseType: !1013, size: 128)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !991, line: 48, size: 128, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1013, file: !991, line: 49, baseType: !778, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1013, file: !991, line: 50, baseType: !998, size: 32, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1013, file: !991, line: 51, baseType: !1006, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !990, file: !991, line: 61, baseType: !1019, size: 256)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !991, line: 55, size: 256, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1026}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1019, file: !991, line: 56, baseType: !778, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1019, file: !991, line: 57, baseType: !998, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1019, file: !991, line: 58, baseType: !99, size: 32, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1019, file: !991, line: 59, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !315, line: 94, baseType: !316)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1019, file: !991, line: 60, baseType: !1025, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !990, file: !991, line: 95, baseType: !1028, size: 256)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !991, line: 64, size: 256, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1028, file: !991, line: 65, baseType: !64, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !991, line: 77, baseType: !1032, size: 192, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1028, file: !991, line: 77, size: 192, elements: !1033)
!1033 = !{!1034, !1035, !1042}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1032, file: !991, line: 82, baseType: !514, size: 16)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1032, file: !991, line: 88, baseType: !1036, size: 192)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1032, file: !991, line: 84, size: 192, elements: !1037)
!1037 = !{!1038, !1040, !1041}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1036, file: !991, line: 85, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !641)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1036, file: !991, line: 86, baseType: !64, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1036, file: !991, line: 87, baseType: !64, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1032, file: !991, line: 93, baseType: !1043, size: 96)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1032, file: !991, line: 90, size: 96, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1043, file: !991, line: 91, baseType: !1039, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1043, file: !991, line: 92, baseType: !536, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !990, file: !991, line: 101, baseType: !1048, size: 128)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !991, line: 98, size: 128, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1048, file: !991, line: 99, baseType: !65, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1048, file: !991, line: 100, baseType: !99, size: 32, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !990, file: !991, line: 108, baseType: !1053, size: 128)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !991, line: 104, size: 128, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1053, file: !991, line: 105, baseType: !64, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1053, file: !991, line: 106, baseType: !99, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1053, file: !991, line: 107, baseType: !7, size: 32, offset: 96)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !526, file: !527, line: 1067, baseType: !1059, offset: 11136)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1060, line: 12, elements: !255)
!1060 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !526, file: !527, line: 1099, baseType: !1062, size: 64, offset: 11136)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !527, line: 56, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !526, file: !527, line: 1103, baseType: !228, size: 128, offset: 11200)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !526, file: !527, line: 1104, baseType: !1066, size: 64, offset: 11328)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !527, line: 46, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !526, file: !527, line: 1105, baseType: !496, size: 192, offset: 11392)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !526, file: !527, line: 1106, baseType: !7, size: 32, offset: 11584)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !526, file: !527, line: 1109, baseType: !1071, size: 128, offset: 11648)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, size: 128, elements: !1074)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !527, line: 51, flags: DIFlagFwdDecl)
!1074 = !{!1075}
!1075 = !DISubrange(count: 2)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !526, file: !527, line: 1110, baseType: !496, size: 192, offset: 11776)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !526, file: !527, line: 1111, baseType: !228, size: 128, offset: 11968)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !526, file: !527, line: 1173, baseType: !1079, size: 64, offset: 12096)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1081, line: 62, size: 256, align: 256, elements: !1082)
!1081 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1082 = !{!1083, !1084, !1085, !1090}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1080, file: !1081, line: 75, baseType: !536, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1080, file: !1081, line: 90, baseType: !536, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1080, file: !1081, line: 124, baseType: !1086, size: 64, offset: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !1081, line: 109, size: 64, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1086, file: !1081, line: 110, baseType: !400, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1086, file: !1081, line: 112, baseType: !400, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !1081, line: 144, baseType: !536, size: 32, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !526, file: !527, line: 1174, baseType: !535, size: 32, offset: 12160)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !526, file: !527, line: 1179, baseType: !63, size: 64, offset: 12224)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !526, file: !527, line: 1182, baseType: !1094, size: 128, offset: 12288)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !474, line: 76, size: 128, elements: !1095)
!1095 = !{!1096, !1101, !1102}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1094, file: !474, line: 85, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1098, line: 7, size: 64, elements: !1099)
!1098 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1097, file: !1098, line: 12, baseType: !685, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1094, file: !474, line: 88, baseType: !217, size: 8, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1094, file: !474, line: 95, baseType: !217, size: 8, offset: 72)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !527, line: 1184, baseType: !1104, size: 128, offset: 12416)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !527, line: 1184, size: 128, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1104, file: !527, line: 1185, baseType: !541, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1104, file: !527, line: 1186, baseType: !816, size: 128, align: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !526, file: !527, line: 1190, baseType: !1109, size: 64, offset: 12544)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !527, line: 53, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !526, file: !527, line: 1192, baseType: !1112, size: 128, offset: 12608)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !474, line: 64, size: 128, elements: !1113)
!1113 = !{!1114, !1207, !1208}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1112, file: !474, line: 65, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !371, line: 68, size: 512, align: 128, elements: !1117)
!1117 = !{!1118, !1119, !1199, !1206}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !371, line: 69, baseType: !63, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !371, line: 77, baseType: !1120, size: 320, offset: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !371, line: 77, size: 320, elements: !1121)
!1121 = !{!1122, !1131, !1136, !1164, !1172, !1178, !1191, !1198}
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !371, line: 78, baseType: !1123, size: 320)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !371, line: 78, size: 320, elements: !1124)
!1124 = !{!1125, !1126, !1129, !1130}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1123, file: !371, line: 84, baseType: !228, size: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1123, file: !371, line: 86, baseType: !1127, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !371, line: 26, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1123, file: !371, line: 87, baseType: !63, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1123, file: !371, line: 94, baseType: !63, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !371, line: 96, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !371, line: 96, size: 64, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1132, file: !371, line: 101, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !67, line: 143, baseType: !399)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !371, line: 103, baseType: !1137, size: 320)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !371, line: 103, size: 320, elements: !1138)
!1138 = !{!1139, !1149, !1152, !1153}
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !371, line: 104, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !371, line: 104, size: 128, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1140, file: !371, line: 105, baseType: !228, size: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !371, line: 106, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !371, line: 106, size: 128, elements: !1145)
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1144, file: !371, line: 107, baseType: !1115, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1144, file: !371, line: 109, baseType: !99, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1144, file: !371, line: 110, baseType: !99, size: 32, offset: 96)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1137, file: !371, line: 117, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !371, line: 117, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1137, file: !371, line: 119, baseType: !64, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !371, line: 120, baseType: !1154, size: 64, offset: 256)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !371, line: 120, size: 64, elements: !1155)
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1154, file: !371, line: 121, baseType: !64, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1154, file: !371, line: 122, baseType: !63, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !371, line: 123, baseType: !1159, size: 32)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !371, line: 123, size: 32, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1159, file: !371, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1159, file: !371, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1159, file: !371, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !371, line: 130, baseType: !1165, size: 192)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !371, line: 130, size: 192, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1165, file: !371, line: 131, baseType: !63, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1165, file: !371, line: 134, baseType: !142, size: 8, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1165, file: !371, line: 135, baseType: !142, size: 8, offset: 72)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1165, file: !371, line: 136, baseType: !419, size: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1165, file: !371, line: 137, baseType: !7, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !371, line: 139, baseType: !1173, size: 256)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !371, line: 139, size: 256, elements: !1174)
!1174 = !{!1175, !1176, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1173, file: !371, line: 140, baseType: !63, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1173, file: !371, line: 141, baseType: !419, size: 32, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1173, file: !371, line: 143, baseType: !228, size: 128, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !371, line: 145, baseType: !1179, size: 256)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !371, line: 145, size: 256, elements: !1180)
!1180 = !{!1181, !1182, !1184, !1185, !1190}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1179, file: !371, line: 146, baseType: !63, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1179, file: !371, line: 147, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !360, line: 509, baseType: !1115)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1179, file: !371, line: 148, baseType: !63, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !371, line: 149, baseType: !1186, size: 64, offset: 192)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !371, line: 149, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1186, file: !371, line: 150, baseType: !387, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1186, file: !371, line: 151, baseType: !419, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1179, file: !371, line: 156, baseType: !241, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !371, line: 159, baseType: !1192, size: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !371, line: 159, size: 128, elements: !1193)
!1193 = !{!1194, !1197}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1192, file: !371, line: 161, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !371, line: 161, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1192, file: !371, line: 162, baseType: !64, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1120, file: !371, line: 176, baseType: !816, size: 128, align: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !371, line: 179, baseType: !1200, size: 32, offset: 384)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !371, line: 179, size: 32, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1200, file: !371, line: 184, baseType: !419, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1200, file: !371, line: 192, baseType: !7, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1200, file: !371, line: 194, baseType: !7, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1200, file: !371, line: 195, baseType: !99, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1116, file: !371, line: 199, baseType: !419, size: 32, offset: 416)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1112, file: !474, line: 67, baseType: !536, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1112, file: !474, line: 68, baseType: !536, size: 32, offset: 96)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !526, file: !527, line: 1206, baseType: !99, size: 32, offset: 12736)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !526, file: !527, line: 1207, baseType: !99, size: 32, offset: 12768)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !526, file: !527, line: 1209, baseType: !63, size: 64, offset: 12800)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !526, file: !527, line: 1219, baseType: !399, size: 64, offset: 12864)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !526, file: !527, line: 1220, baseType: !399, size: 64, offset: 12928)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !526, file: !527, line: 1317, baseType: !99, size: 32, offset: 12992)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !526, file: !527, line: 1319, baseType: !525, size: 64, offset: 13056)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !526, file: !527, line: 1322, baseType: !1217, size: 64, offset: 13120)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1219, line: 9, flags: DIFlagFwdDecl)
!1219 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !526, file: !527, line: 1326, baseType: !541, size: 32, offset: 13184)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !526, file: !527, line: 1342, baseType: !64, size: 64, offset: 13248)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !526, file: !527, line: 1343, baseType: !400, size: 64, offset: 13312)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !526, file: !527, line: 1344, baseType: !399, size: 64, offset: 13376)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !526, file: !527, line: 1345, baseType: !400, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !526, file: !527, line: 1346, baseType: !400, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !526, file: !527, line: 1347, baseType: !400, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !526, file: !527, line: 1348, baseType: !816, size: 128, align: 64, offset: 13504)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !526, file: !527, line: 1358, baseType: !1229, size: 34816, offset: 13824)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1230, line: 485, size: 34816, elements: !1231)
!1230 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1261, !1262, !1263, !1264, !1265, !1266, !1269, !1270, !1271}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1229, file: !1230, line: 487, baseType: !1233, size: 192)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1234, size: 192, elements: !283)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1235, line: 16, size: 64, elements: !1236)
!1235 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1234, file: !1235, line: 17, baseType: !509, size: 16)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1234, file: !1235, line: 18, baseType: !509, size: 16, offset: 16)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1234, file: !1235, line: 19, baseType: !509, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1234, file: !1235, line: 19, baseType: !509, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1234, file: !1235, line: 19, baseType: !509, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1234, file: !1235, line: 19, baseType: !509, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1234, file: !1235, line: 19, baseType: !509, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1234, file: !1235, line: 20, baseType: !509, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1234, file: !1235, line: 20, baseType: !509, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1234, file: !1235, line: 20, baseType: !509, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1234, file: !1235, line: 20, baseType: !509, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1234, file: !1235, line: 20, baseType: !509, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1234, file: !1235, line: 20, baseType: !509, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1229, file: !1230, line: 491, baseType: !63, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1229, file: !1230, line: 495, baseType: !323, size: 16, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1229, file: !1230, line: 496, baseType: !323, size: 16, offset: 272)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1229, file: !1230, line: 497, baseType: !323, size: 16, offset: 288)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1229, file: !1230, line: 498, baseType: !323, size: 16, offset: 304)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1229, file: !1230, line: 502, baseType: !63, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1229, file: !1230, line: 503, baseType: !63, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1229, file: !1230, line: 514, baseType: !1258, size: 256, offset: 448)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1259, size: 256, elements: !478)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1230, line: 483, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1229, file: !1230, line: 516, baseType: !63, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1229, file: !1230, line: 518, baseType: !63, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1229, file: !1230, line: 520, baseType: !63, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1229, file: !1230, line: 521, baseType: !63, size: 64, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1229, file: !1230, line: 522, baseType: !63, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1229, file: !1230, line: 528, baseType: !1267, size: 64, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1230, line: 10, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1229, file: !1230, line: 535, baseType: !63, size: 64, offset: 1088)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1229, file: !1230, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1229, file: !1230, line: 540, baseType: !1272, size: 33280, offset: 1536)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1273, line: 317, size: 33280, elements: !1274)
!1273 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1272, file: !1273, line: 330, baseType: !7, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1272, file: !1273, line: 337, baseType: !63, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1272, file: !1273, line: 348, baseType: !1278, size: 32768, offset: 512)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1273, line: 304, size: 32768, elements: !1279)
!1279 = !{!1280, !1295, !1334, !1384, !1401}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1278, file: !1273, line: 305, baseType: !1281, size: 896)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1273, line: 12, size: 896, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1294}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1281, file: !1273, line: 13, baseType: !535, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1281, file: !1273, line: 14, baseType: !535, size: 32, offset: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1281, file: !1273, line: 15, baseType: !535, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1281, file: !1273, line: 16, baseType: !535, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1281, file: !1273, line: 17, baseType: !535, size: 32, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1281, file: !1273, line: 18, baseType: !535, size: 32, offset: 160)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1281, file: !1273, line: 19, baseType: !535, size: 32, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1281, file: !1273, line: 22, baseType: !1291, size: 640, offset: 224)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 640, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 20)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1281, file: !1273, line: 25, baseType: !535, size: 32, offset: 864)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1278, file: !1273, line: 306, baseType: !1296, size: 4096, align: 128)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1273, line: 34, size: 4096, align: 128, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1317, !1318, !1319, !1323, !1325, !1329}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1296, file: !1273, line: 35, baseType: !509, size: 16)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1296, file: !1273, line: 36, baseType: !509, size: 16, offset: 16)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1296, file: !1273, line: 37, baseType: !509, size: 16, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1296, file: !1273, line: 38, baseType: !509, size: 16, offset: 48)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !1273, line: 39, baseType: !1303, size: 128, offset: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !1273, line: 39, size: 128, elements: !1304)
!1304 = !{!1305, !1310}
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !1273, line: 40, baseType: !1306, size: 128)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1273, line: 40, size: 128, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1306, file: !1273, line: 41, baseType: !399, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1306, file: !1273, line: 42, baseType: !399, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !1273, line: 44, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1273, line: 44, size: 128, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1311, file: !1273, line: 45, baseType: !535, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1311, file: !1273, line: 46, baseType: !535, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1311, file: !1273, line: 47, baseType: !535, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1311, file: !1273, line: 48, baseType: !535, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1296, file: !1273, line: 51, baseType: !535, size: 32, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1296, file: !1273, line: 52, baseType: !535, size: 32, offset: 224)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1296, file: !1273, line: 55, baseType: !1320, size: 1024, offset: 256)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 1024, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1296, file: !1273, line: 58, baseType: !1324, size: 2048, offset: 1280)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 2048, elements: !287)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1296, file: !1273, line: 60, baseType: !1326, size: 384, offset: 3328)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 384, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 12)
!1329 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !1273, line: 62, baseType: !1330, size: 384, offset: 3712)
!1330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !1273, line: 62, size: 384, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1330, file: !1273, line: 63, baseType: !1326, size: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1330, file: !1273, line: 64, baseType: !1326, size: 384)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1278, file: !1273, line: 307, baseType: !1335, size: 1088)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1273, line: 79, size: 1088, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1383}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1335, file: !1273, line: 80, baseType: !535, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1335, file: !1273, line: 81, baseType: !535, size: 32, offset: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1335, file: !1273, line: 82, baseType: !535, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1335, file: !1273, line: 83, baseType: !535, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1335, file: !1273, line: 84, baseType: !535, size: 32, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1335, file: !1273, line: 85, baseType: !535, size: 32, offset: 160)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1335, file: !1273, line: 86, baseType: !535, size: 32, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1335, file: !1273, line: 88, baseType: !1291, size: 640, offset: 224)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1335, file: !1273, line: 89, baseType: !138, size: 8, offset: 864)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1335, file: !1273, line: 90, baseType: !138, size: 8, offset: 872)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1335, file: !1273, line: 91, baseType: !138, size: 8, offset: 880)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1335, file: !1273, line: 92, baseType: !138, size: 8, offset: 888)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1335, file: !1273, line: 93, baseType: !138, size: 8, offset: 896)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1335, file: !1273, line: 94, baseType: !138, size: 8, offset: 904)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1335, file: !1273, line: 95, baseType: !1352, size: 64, offset: 960)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1354, line: 11, size: 128, elements: !1355)
!1354 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1353, file: !1354, line: 12, baseType: !65, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1353, file: !1354, line: 13, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1360, line: 56, size: 1344, elements: !1361)
!1360 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1359, file: !1360, line: 61, baseType: !63, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1359, file: !1360, line: 62, baseType: !63, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1359, file: !1360, line: 63, baseType: !63, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1359, file: !1360, line: 64, baseType: !63, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1359, file: !1360, line: 65, baseType: !63, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1359, file: !1360, line: 66, baseType: !63, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1359, file: !1360, line: 68, baseType: !63, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1359, file: !1360, line: 69, baseType: !63, size: 64, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1359, file: !1360, line: 70, baseType: !63, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1359, file: !1360, line: 71, baseType: !63, size: 64, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1359, file: !1360, line: 72, baseType: !63, size: 64, offset: 640)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1359, file: !1360, line: 73, baseType: !63, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1359, file: !1360, line: 74, baseType: !63, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1359, file: !1360, line: 75, baseType: !63, size: 64, offset: 832)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1359, file: !1360, line: 76, baseType: !63, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1359, file: !1360, line: 81, baseType: !63, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1359, file: !1360, line: 83, baseType: !63, size: 64, offset: 1024)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1359, file: !1360, line: 84, baseType: !63, size: 64, offset: 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1359, file: !1360, line: 85, baseType: !63, size: 64, offset: 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1359, file: !1360, line: 86, baseType: !63, size: 64, offset: 1216)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1359, file: !1360, line: 87, baseType: !63, size: 64, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1335, file: !1273, line: 96, baseType: !535, size: 32, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1278, file: !1273, line: 308, baseType: !1385, size: 4608, align: 512)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1273, line: 289, size: 4608, align: 512, elements: !1386)
!1386 = !{!1387, !1388, !1397}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1385, file: !1273, line: 290, baseType: !1296, size: 4096, align: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1385, file: !1273, line: 291, baseType: !1389, size: 512, offset: 4096)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1273, line: 268, size: 512, elements: !1390)
!1390 = !{!1391, !1392, !1393}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1389, file: !1273, line: 269, baseType: !399, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1389, file: !1273, line: 270, baseType: !399, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1389, file: !1273, line: 271, baseType: !1394, size: 384, offset: 128)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 6)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1385, file: !1273, line: 292, baseType: !1398, offset: 4608)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: 0)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1278, file: !1273, line: 309, baseType: !1402, size: 32768)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 32768, elements: !1403)
!1403 = !{!1404}
!1404 = !DISubrange(count: 4096)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !371, line: 378, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !518, file: !371, line: 384, baseType: !838, size: 192, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !391, file: !371, line: 500, baseType: !241, offset: 6656)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !391, file: !371, line: 501, baseType: !1410, size: 64, offset: 6656)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !371, line: 387, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !391, file: !371, line: 516, baseType: !1413, size: 64, offset: 6720)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !371, line: 516, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !391, file: !371, line: 519, baseType: !358, size: 64, offset: 6784)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !391, file: !371, line: 521, baseType: !1417, size: 64, offset: 6848)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !371, line: 521, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !391, file: !371, line: 545, baseType: !419, size: 32, offset: 6912)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !391, file: !371, line: 548, baseType: !217, size: 8, offset: 6944)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !391, file: !371, line: 550, baseType: !1422, offset: 6952)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1423, line: 142, elements: !255)
!1423 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !391, file: !371, line: 554, baseType: !1425, size: 256, offset: 6976)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1426, line: 102, size: 256, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1429, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1425, file: !1426, line: 103, baseType: !427, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1425, file: !1426, line: 104, baseType: !228, size: 128, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1425, file: !1426, line: 105, baseType: !1431, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1426, line: 21, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !391, file: !371, line: 557, baseType: !535, size: 32, offset: 7232)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !388, file: !371, line: 565, baseType: !1438, offset: 7296)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: -1)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !370, file: !371, line: 333, baseType: !1442, size: 64, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !360, line: 284, baseType: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !360, line: 284, size: 64, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1443, file: !360, line: 284, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !417, line: 19, baseType: !63)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !370, file: !371, line: 334, baseType: !63, size: 64, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !370, file: !371, line: 343, baseType: !1449, size: 256, offset: 704)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !371, line: 340, size: 256, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1449, file: !371, line: 341, baseType: !378, size: 192, align: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1449, file: !371, line: 342, baseType: !63, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !370, file: !371, line: 351, baseType: !228, size: 128, offset: 960)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !370, file: !371, line: 353, baseType: !1455, size: 64, offset: 1088)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !371, line: 353, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !370, file: !371, line: 356, baseType: !1458, size: 64, offset: 1152)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !371, line: 356, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !370, file: !371, line: 359, baseType: !63, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !370, file: !371, line: 361, baseType: !358, size: 64, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !370, file: !371, line: 362, baseType: !64, size: 64, offset: 1344)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !370, file: !371, line: 365, baseType: !427, size: 64, offset: 1408)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !370, file: !371, line: 373, baseType: !1466, offset: 1472)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !371, line: 296, elements: !255)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !337, file: !307, line: 90, baseType: !332, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !337, file: !307, line: 91, baseType: !1469, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !297, file: !224, line: 143, baseType: !1471, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1474, !234}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1477)
!1477 = !{!1478, !1479, !1483, !1487, !1495, !1499}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1476, file: !18, line: 40, baseType: !17, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1476, file: !18, line: 41, baseType: !1480, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!217}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1476, file: !18, line: 42, baseType: !1484, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!64}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1476, file: !18, line: 43, baseType: !1488, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1491, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1476, file: !18, line: 44, baseType: !1496, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1491}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1476, file: !18, line: 45, baseType: !1500, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !64}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !297, file: !224, line: 144, baseType: !1504, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!1491, !234}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !297, file: !224, line: 145, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !234, !1511, !1518}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1513, line: 23, baseType: !1514)
!1513 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1513, line: 21, size: 32, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1514, file: !1513, line: 22, baseType: !1517, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !67, line: 32, baseType: !998)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1513, line: 28, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1513, line: 26, size: 32, elements: !1521)
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1520, file: !1513, line: 27, baseType: !1523, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !67, line: 33, baseType: !1524)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !315, line: 50, baseType: !7)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !223, file: !224, line: 70, baseType: !1526, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !179, line: 123, size: 1024, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1670, !1671, !1672, !1673, !1674}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1527, file: !179, line: 124, baseType: !419, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1527, file: !179, line: 125, baseType: !419, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1527, file: !179, line: 135, baseType: !1526, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1527, file: !179, line: 136, baseType: !87, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1527, file: !179, line: 138, baseType: !378, size: 192, align: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1527, file: !179, line: 140, baseType: !1491, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1527, file: !179, line: 141, baseType: !7, size: 32, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !179, line: 142, baseType: !1537, size: 256, offset: 512)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1527, file: !179, line: 142, size: 256, elements: !1538)
!1538 = !{!1539, !1593, !1597}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1537, file: !179, line: 143, baseType: !1540, size: 192)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !179, line: 91, size: 192, elements: !1541)
!1541 = !{!1542, !1543, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1540, file: !179, line: 92, baseType: !63, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1540, file: !179, line: 94, baseType: !395, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1540, file: !179, line: 100, baseType: !1545, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !179, line: 180, size: 704, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1563, !1564, !1565, !1591, !1592}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1546, file: !179, line: 182, baseType: !1526, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !179, line: 183, baseType: !7, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1546, file: !179, line: 186, baseType: !1551, size: 192, offset: 128)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1552, line: 19, size: 192, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1561, !1562}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1551, file: !1552, line: 20, baseType: !1555, size: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1556, line: 292, size: 128, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1559, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1555, file: !1556, line: 293, baseType: !241)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1555, file: !1556, line: 295, baseType: !66, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1555, file: !1556, line: 296, baseType: !64, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1551, file: !1552, line: 21, baseType: !7, size: 32, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1551, file: !1552, line: 22, baseType: !7, size: 32, offset: 160)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1546, file: !179, line: 187, baseType: !535, size: 32, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1546, file: !179, line: 188, baseType: !535, size: 32, offset: 352)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1546, file: !179, line: 189, baseType: !1566, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !179, line: 168, size: 320, elements: !1568)
!1568 = !{!1569, !1575, !1579, !1583, !1587}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1567, file: !179, line: 169, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!99, !1573, !1545}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !360, line: 539, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1567, file: !179, line: 171, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!99, !1526, !87, !322}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1567, file: !179, line: 173, baseType: !1580, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!99, !1526}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1567, file: !179, line: 174, baseType: !1584, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!99, !1526, !1526, !87}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1567, file: !179, line: 176, baseType: !1588, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!99, !1573, !1526, !1545}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1546, file: !179, line: 192, baseType: !228, size: 128, offset: 448)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1546, file: !179, line: 194, baseType: !809, size: 128, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1537, file: !179, line: 144, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !179, line: 103, size: 64, elements: !1595)
!1595 = !{!1596}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1594, file: !179, line: 104, baseType: !1526, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1537, file: !179, line: 145, baseType: !1598, size: 256)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !179, line: 107, size: 256, elements: !1599)
!1599 = !{!1600, !1665, !1668, !1669}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1598, file: !179, line: 108, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !179, line: 217, size: 768, elements: !1604)
!1604 = !{!1605, !1625, !1629, !1633, !1638, !1642, !1646, !1650, !1651, !1652, !1653, !1661}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1603, file: !179, line: 222, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!99, !1609}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !179, line: 197, size: 1088, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1610, file: !179, line: 199, baseType: !1526, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1610, file: !179, line: 200, baseType: !358, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1610, file: !179, line: 201, baseType: !1573, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1610, file: !179, line: 202, baseType: !64, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1610, file: !179, line: 205, baseType: !496, size: 192, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1610, file: !179, line: 206, baseType: !496, size: 192, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1610, file: !179, line: 207, baseType: !99, size: 32, offset: 640)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1610, file: !179, line: 208, baseType: !228, size: 128, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1610, file: !179, line: 209, baseType: !282, size: 64, offset: 832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1610, file: !179, line: 211, baseType: !328, size: 64, offset: 896)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1610, file: !179, line: 212, baseType: !217, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1610, file: !179, line: 213, baseType: !217, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1610, file: !179, line: 214, baseType: !1458, size: 64, offset: 1024)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1603, file: !179, line: 223, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1609}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1603, file: !179, line: 236, baseType: !1630, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!99, !1573, !64}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1603, file: !179, line: 238, baseType: !1634, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!64, !1573, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1603, file: !179, line: 239, baseType: !1639, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!64, !1573, !64, !1637}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1603, file: !179, line: 240, baseType: !1643, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1573, !64}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1603, file: !179, line: 242, baseType: !1647, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!313, !1609, !282, !328, !361}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1603, file: !179, line: 252, baseType: !328, size: 64, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1603, file: !179, line: 259, baseType: !217, size: 8, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1603, file: !179, line: 260, baseType: !1647, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1603, file: !179, line: 263, baseType: !1654, size: 64, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1657, !1609, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1658, line: 52, baseType: !7)
!1658 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !179, line: 27, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1603, file: !179, line: 266, baseType: !1662, size: 64, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!99, !1609, !369}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1598, file: !179, line: 109, baseType: !1666, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !179, line: 31, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1598, file: !179, line: 110, baseType: !361, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1598, file: !179, line: 111, baseType: !1526, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1527, file: !179, line: 148, baseType: !64, size: 64, offset: 768)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1527, file: !179, line: 154, baseType: !399, size: 64, offset: 832)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1527, file: !179, line: 156, baseType: !323, size: 16, offset: 896)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1527, file: !179, line: 157, baseType: !322, size: 16, offset: 912)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1527, file: !179, line: 158, baseType: !1675, size: 64, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !179, line: 32, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !223, file: !224, line: 71, baseType: !1678, size: 32, offset: 448)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1679, line: 19, size: 32, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1678, file: !1679, line: 20, baseType: !541, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !223, file: !224, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !223, file: !224, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !223, file: !224, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !223, file: !224, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !223, file: !224, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !30, line: 463, baseType: !1688, size: 64, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !220, file: !30, line: 465, baseType: !1690, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !220, file: !30, line: 467, baseType: !87, size: 64, offset: 640)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !220, file: !30, line: 468, baseType: !1694, size: 64, offset: 704)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1704, !1709, !1713}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1696, file: !30, line: 88, baseType: !87, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1696, file: !30, line: 89, baseType: !334, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1696, file: !30, line: 90, baseType: !1701, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!99, !1688, !277}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1696, file: !30, line: 91, baseType: !1705, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!282, !1688, !1708, !1511, !1518}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1696, file: !30, line: 93, baseType: !1710, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1688}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1696, file: !30, line: 95, baseType: !1714, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1717)
!1717 = !{!1718, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1716, file: !37, line: 279, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!99, !1688}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1716, file: !37, line: 280, baseType: !1710, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1716, file: !37, line: 281, baseType: !1719, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1716, file: !37, line: 282, baseType: !1719, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1716, file: !37, line: 283, baseType: !1719, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1716, file: !37, line: 284, baseType: !1719, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1716, file: !37, line: 285, baseType: !1719, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1716, file: !37, line: 286, baseType: !1719, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1716, file: !37, line: 287, baseType: !1719, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1716, file: !37, line: 288, baseType: !1719, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1716, file: !37, line: 289, baseType: !1719, size: 64, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1716, file: !37, line: 290, baseType: !1719, size: 64, offset: 704)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1716, file: !37, line: 291, baseType: !1719, size: 64, offset: 768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1716, file: !37, line: 292, baseType: !1719, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1716, file: !37, line: 293, baseType: !1719, size: 64, offset: 896)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1716, file: !37, line: 294, baseType: !1719, size: 64, offset: 960)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1716, file: !37, line: 295, baseType: !1719, size: 64, offset: 1024)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1716, file: !37, line: 296, baseType: !1719, size: 64, offset: 1088)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1716, file: !37, line: 297, baseType: !1719, size: 64, offset: 1152)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1716, file: !37, line: 298, baseType: !1719, size: 64, offset: 1216)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1716, file: !37, line: 299, baseType: !1719, size: 64, offset: 1280)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1716, file: !37, line: 300, baseType: !1719, size: 64, offset: 1344)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1716, file: !37, line: 301, baseType: !1719, size: 64, offset: 1408)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !220, file: !30, line: 470, baseType: !1745, size: 64, offset: 768)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1747, line: 82, size: 1408, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1755, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1831, !1834, !1837}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1746, file: !1747, line: 83, baseType: !87, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1746, file: !1747, line: 84, baseType: !87, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1746, file: !1747, line: 85, baseType: !1688, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1746, file: !1747, line: 86, baseType: !334, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1746, file: !1747, line: 87, baseType: !334, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1746, file: !1747, line: 88, baseType: !334, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1746, file: !1747, line: 90, baseType: !1756, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!99, !1688, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768, !1782, !1795, !1796, !1797, !1798, !1799, !1807, !1808, !1809, !1810, !1811, !1812}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1760, file: !24, line: 96, baseType: !87, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1760, file: !24, line: 97, baseType: !1745, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1760, file: !24, line: 99, baseType: !60, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1760, file: !24, line: 100, baseType: !87, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1760, file: !24, line: 102, baseType: !217, size: 8, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1760, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1760, file: !24, line: 105, baseType: !1769, size: 64, offset: 320)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1772, line: 262, size: 1600, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1776, !1777, !1781}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1771, file: !1772, line: 263, baseType: !1775, size: 256)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !1321)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !1772, line: 264, baseType: !1775, size: 256, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1771, file: !1772, line: 265, baseType: !1778, size: 1024, offset: 512)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 1024, elements: !1779)
!1779 = !{!1780}
!1780 = !DISubrange(count: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1771, file: !1772, line: 266, baseType: !1491, size: 64, offset: 1536)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1760, file: !24, line: 106, baseType: !1783, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1785)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1772, line: 210, size: 256, elements: !1786)
!1786 = !{!1787, !1791, !1793, !1794}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1785, file: !1772, line: 211, baseType: !1788, size: 72)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 72, elements: !1789)
!1789 = !{!1790}
!1790 = !DISubrange(count: 9)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1785, file: !1772, line: 212, baseType: !1792, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1772, line: 14, baseType: !63)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1785, file: !1772, line: 213, baseType: !536, size: 32, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1785, file: !1772, line: 214, baseType: !536, size: 32, offset: 224)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1760, file: !24, line: 108, baseType: !1719, size: 64, offset: 448)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1760, file: !24, line: 109, baseType: !1710, size: 64, offset: 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1760, file: !24, line: 110, baseType: !1719, size: 64, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1760, file: !24, line: 111, baseType: !1710, size: 64, offset: 640)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1760, file: !24, line: 112, baseType: !1800, size: 64, offset: 704)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!99, !1688, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1804, file: !37, line: 51, baseType: !99, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1760, file: !24, line: 113, baseType: !1719, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1760, file: !24, line: 114, baseType: !334, size: 64, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1760, file: !24, line: 115, baseType: !334, size: 64, offset: 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1760, file: !24, line: 117, baseType: !1714, size: 64, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1760, file: !24, line: 118, baseType: !1710, size: 64, offset: 1024)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1760, file: !24, line: 120, baseType: !1813, size: 64, offset: 1088)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1746, file: !1747, line: 91, baseType: !1701, size: 64, offset: 448)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1746, file: !1747, line: 92, baseType: !1719, size: 64, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1746, file: !1747, line: 93, baseType: !1710, size: 64, offset: 576)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1746, file: !1747, line: 94, baseType: !1719, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1746, file: !1747, line: 95, baseType: !1710, size: 64, offset: 704)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1746, file: !1747, line: 97, baseType: !1719, size: 64, offset: 768)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1746, file: !1747, line: 98, baseType: !1719, size: 64, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1746, file: !1747, line: 100, baseType: !1800, size: 64, offset: 896)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1746, file: !1747, line: 101, baseType: !1719, size: 64, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1746, file: !1747, line: 103, baseType: !1719, size: 64, offset: 1024)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1746, file: !1747, line: 105, baseType: !1719, size: 64, offset: 1088)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1746, file: !1747, line: 107, baseType: !1714, size: 64, offset: 1152)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1746, file: !1747, line: 109, baseType: !1828, size: 64, offset: 1216)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1830)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1747, line: 109, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1746, file: !1747, line: 111, baseType: !1832, size: 64, offset: 1280)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1747, line: 111, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1746, file: !1747, line: 112, baseType: !1835, offset: 1344)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1836, line: 187, elements: !255)
!1836 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1746, file: !1747, line: 114, baseType: !217, size: 8, offset: 1344)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !220, file: !30, line: 471, baseType: !1759, size: 64, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !220, file: !30, line: 473, baseType: !64, size: 64, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !220, file: !30, line: 475, baseType: !64, size: 64, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !220, file: !30, line: 480, baseType: !496, size: 192, offset: 1024)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !220, file: !30, line: 484, baseType: !1843, size: 576, offset: 1216)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1843, file: !30, line: 362, baseType: !228, size: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1843, file: !30, line: 363, baseType: !228, size: 128, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1843, file: !30, line: 364, baseType: !228, size: 128, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1843, file: !30, line: 365, baseType: !228, size: 128, offset: 384)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1843, file: !30, line: 366, baseType: !217, size: 8, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1843, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !220, file: !30, line: 485, baseType: !1852, size: 2304, offset: 1792)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1949, !1953}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1852, file: !37, line: 566, baseType: !1803, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1852, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1852, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1852, file: !37, line: 569, baseType: !217, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1852, file: !37, line: 570, baseType: !217, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1852, file: !37, line: 571, baseType: !217, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1852, file: !37, line: 572, baseType: !217, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1852, file: !37, line: 573, baseType: !217, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1852, file: !37, line: 574, baseType: !217, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1852, file: !37, line: 575, baseType: !217, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1852, file: !37, line: 576, baseType: !217, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1852, file: !37, line: 577, baseType: !535, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1852, file: !37, line: 578, baseType: !241, offset: 96)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1852, file: !37, line: 580, baseType: !228, size: 128, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1852, file: !37, line: 581, baseType: !838, size: 192, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1852, file: !37, line: 582, baseType: !1870, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1872, line: 43, size: 1472, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1881, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1871, file: !1872, line: 44, baseType: !87, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1871, file: !1872, line: 45, baseType: !99, size: 32, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1871, file: !1872, line: 46, baseType: !228, size: 128, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1871, file: !1872, line: 47, baseType: !241, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1871, file: !1872, line: 48, baseType: !1879, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1871, file: !1872, line: 49, baseType: !1882, size: 320, offset: 320)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1883, line: 11, size: 320, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1886, !1887, !1892}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1882, file: !1883, line: 16, baseType: !802, size: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1882, file: !1883, line: 17, baseType: !63, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1882, file: !1883, line: 18, baseType: !1888, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !1891}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1882, file: !1883, line: 19, baseType: !535, size: 32, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1871, file: !1872, line: 50, baseType: !63, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1871, file: !1872, line: 51, baseType: !611, size: 64, offset: 704)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1871, file: !1872, line: 52, baseType: !611, size: 64, offset: 768)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1871, file: !1872, line: 53, baseType: !611, size: 64, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1871, file: !1872, line: 54, baseType: !611, size: 64, offset: 896)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1871, file: !1872, line: 55, baseType: !611, size: 64, offset: 960)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1871, file: !1872, line: 56, baseType: !63, size: 64, offset: 1024)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1871, file: !1872, line: 57, baseType: !63, size: 64, offset: 1088)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1871, file: !1872, line: 58, baseType: !63, size: 64, offset: 1152)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1871, file: !1872, line: 59, baseType: !63, size: 64, offset: 1216)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1871, file: !1872, line: 60, baseType: !63, size: 64, offset: 1280)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1871, file: !1872, line: 61, baseType: !1688, size: 64, offset: 1344)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1871, file: !1872, line: 62, baseType: !217, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1871, file: !1872, line: 63, baseType: !217, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1852, file: !37, line: 583, baseType: !217, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1852, file: !37, line: 584, baseType: !217, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1852, file: !37, line: 585, baseType: !217, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1852, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1852, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1852, file: !37, line: 592, baseType: !603, size: 512, offset: 576)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1852, file: !37, line: 593, baseType: !399, size: 64, offset: 1088)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1852, file: !37, line: 594, baseType: !1425, size: 256, offset: 1152)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1852, file: !37, line: 595, baseType: !809, size: 128, offset: 1408)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1852, file: !37, line: 596, baseType: !1879, size: 64, offset: 1536)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1852, file: !37, line: 597, baseType: !419, size: 32, offset: 1600)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1852, file: !37, line: 598, baseType: !419, size: 32, offset: 1632)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1852, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1852, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1852, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1852, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1852, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1852, file: !37, line: 604, baseType: !217, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1852, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1852, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1852, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1852, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1852, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1852, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1852, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1852, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1852, file: !37, line: 613, baseType: !99, size: 32, offset: 1792)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1852, file: !37, line: 614, baseType: !99, size: 32, offset: 1824)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1852, file: !37, line: 615, baseType: !399, size: 64, offset: 1856)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1852, file: !37, line: 616, baseType: !399, size: 64, offset: 1920)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1852, file: !37, line: 617, baseType: !399, size: 64, offset: 1984)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1852, file: !37, line: 618, baseType: !399, size: 64, offset: 2048)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1852, file: !37, line: 620, baseType: !1940, size: 64, offset: 2112)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1942)
!1942 = !{!1943, !1944, !1945, !1946}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1941, file: !37, line: 537, baseType: !241)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1941, file: !37, line: 538, baseType: !7, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1941, file: !37, line: 540, baseType: !228, size: 128, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1941, file: !37, line: 543, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1852, file: !37, line: 621, baseType: !1950, size: 64, offset: 2176)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1688, !762}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1852, file: !37, line: 622, baseType: !1954, size: 64, offset: 2240)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !220, file: !30, line: 486, baseType: !1957, size: 64, offset: 4096)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1966, !1967, !1968}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1958, file: !37, line: 643, baseType: !1716, size: 1472)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1958, file: !37, line: 644, baseType: !1719, size: 64, offset: 1472)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1958, file: !37, line: 645, baseType: !1963, size: 64, offset: 1536)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1688, !217}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1958, file: !37, line: 646, baseType: !1719, size: 64, offset: 1600)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1958, file: !37, line: 647, baseType: !1710, size: 64, offset: 1664)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1958, file: !37, line: 648, baseType: !1710, size: 64, offset: 1728)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !220, file: !30, line: 493, baseType: !1970, size: 64, offset: 4160)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !220, file: !30, line: 499, baseType: !228, size: 128, offset: 4224)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !220, file: !30, line: 502, baseType: !1974, size: 64, offset: 4352)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !220, file: !30, line: 504, baseType: !1978, size: 64, offset: 4416)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !220, file: !30, line: 505, baseType: !399, size: 64, offset: 4480)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !220, file: !30, line: 510, baseType: !399, size: 64, offset: 4544)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !220, file: !30, line: 511, baseType: !1982, size: 64, offset: 4608)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !220, file: !30, line: 513, baseType: !1986, size: 64, offset: 4672)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1987, file: !30, line: 293, baseType: !7, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1987, file: !30, line: 294, baseType: !63, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !220, file: !30, line: 515, baseType: !228, size: 128, offset: 4736)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !220, file: !30, line: 526, baseType: !1993, offset: 4864)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1994, line: 5, elements: !255)
!1994 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !220, file: !30, line: 528, baseType: !1996, size: 64, offset: 4864)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1998, line: 51, size: 1344, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2001, !2003, !2004, !2094, !2103, !2104, !2105, !2106, !2107, !2108, !2109}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1997, file: !1998, line: 52, baseType: !87, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1997, file: !1998, line: 53, baseType: !2002, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1998, line: 28, baseType: !535)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1997, file: !1998, line: 54, baseType: !87, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1997, file: !1998, line: 55, baseType: !2005, size: 192, offset: 192)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2006, line: 17, size: 192, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2010, !2093}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2005, file: !2006, line: 18, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2005, file: !2006, line: 19, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2006, line: 110, size: 1152, elements: !2014)
!2014 = !{!2015, !2019, !2023, !2029, !2035, !2039, !2043, !2048, !2052, !2053, !2057, !2061, !2065, !2076, !2077, !2078, !2079, !2089}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2013, file: !2006, line: 111, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2009, !2009}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2013, file: !2006, line: 112, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !2009}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2013, file: !2006, line: 113, baseType: !2024, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!217, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2005)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2013, file: !2006, line: 114, baseType: !2030, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!1491, !2027, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2013, file: !2006, line: 116, baseType: !2036, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!217, !2027, !87}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2013, file: !2006, line: 118, baseType: !2040, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!99, !2027, !87, !7, !64, !328}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2013, file: !2006, line: 123, baseType: !2044, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!99, !2027, !87, !2047, !328}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2013, file: !2006, line: 126, baseType: !2049, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!87, !2027}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2013, file: !2006, line: 127, baseType: !2049, size: 64, offset: 512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2013, file: !2006, line: 128, baseType: !2054, size: 64, offset: 576)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!2009, !2027}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2013, file: !2006, line: 130, baseType: !2058, size: 64, offset: 640)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2009, !2027, !2009}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2013, file: !2006, line: 133, baseType: !2062, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2009, !2027, !87}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2013, file: !2006, line: 135, baseType: !2066, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!99, !2027, !87, !87, !7, !7, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2006, line: 43, size: 640, elements: !2071)
!2071 = !{!2072, !2073, !2074}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2070, file: !2006, line: 44, baseType: !2009, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2070, file: !2006, line: 45, baseType: !7, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2070, file: !2006, line: 46, baseType: !2075, size: 512, offset: 128)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 512, elements: !641)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2013, file: !2006, line: 140, baseType: !2058, size: 64, offset: 832)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2013, file: !2006, line: 143, baseType: !2054, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2013, file: !2006, line: 145, baseType: !2016, size: 64, offset: 960)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2013, file: !2006, line: 146, baseType: !2080, size: 64, offset: 1024)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!99, !2027, !2083}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2006, line: 29, size: 128, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2084, file: !2006, line: 30, baseType: !7, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2084, file: !2006, line: 31, baseType: !7, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2084, file: !2006, line: 32, baseType: !2027, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2013, file: !2006, line: 148, baseType: !2090, size: 64, offset: 1088)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!99, !2027, !1688}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2005, file: !2006, line: 20, baseType: !1688, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1997, file: !1998, line: 57, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1998, line: 31, size: 704, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2096, file: !1998, line: 32, baseType: !282, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2096, file: !1998, line: 33, baseType: !99, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2096, file: !1998, line: 34, baseType: !64, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2096, file: !1998, line: 35, baseType: !2095, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2096, file: !1998, line: 43, baseType: !349, size: 448, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1997, file: !1998, line: 58, baseType: !2095, size: 64, offset: 448)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1997, file: !1998, line: 59, baseType: !1996, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1997, file: !1998, line: 60, baseType: !1996, size: 64, offset: 576)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1997, file: !1998, line: 61, baseType: !1996, size: 64, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1997, file: !1998, line: 63, baseType: !223, size: 512, offset: 704)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1997, file: !1998, line: 65, baseType: !63, size: 64, offset: 1216)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1997, file: !1998, line: 66, baseType: !64, size: 64, offset: 1280)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !220, file: !30, line: 529, baseType: !2009, size: 64, offset: 4928)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !220, file: !30, line: 534, baseType: !2112, size: 32, offset: 4992)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !67, line: 16, baseType: !2113)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !67, line: 13, baseType: !535)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !220, file: !30, line: 535, baseType: !535, size: 32, offset: 5024)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !220, file: !30, line: 537, baseType: !241, offset: 5056)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !220, file: !30, line: 538, baseType: !228, size: 128, offset: 5056)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !220, file: !30, line: 540, baseType: !2118, size: 64, offset: 5184)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2120, line: 54, size: 960, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2132, !2136, !2137, !2138, !2139, !2143, !2147, !2148}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2119, file: !2120, line: 55, baseType: !87, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2119, file: !2120, line: 56, baseType: !60, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2119, file: !2120, line: 58, baseType: !334, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2119, file: !2120, line: 59, baseType: !334, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2119, file: !2120, line: 60, baseType: !234, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2119, file: !2120, line: 62, baseType: !1701, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2119, file: !2120, line: 63, baseType: !2129, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!282, !1688, !1708}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2119, file: !2120, line: 65, baseType: !2133, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !2118}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2119, file: !2120, line: 66, baseType: !1710, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2119, file: !2120, line: 68, baseType: !1719, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2119, file: !2120, line: 70, baseType: !1474, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2119, file: !2120, line: 71, baseType: !2140, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!1491, !1688}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2119, file: !2120, line: 73, baseType: !2144, size: 64, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !1688, !1511, !1518}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2119, file: !2120, line: 75, baseType: !1714, size: 64, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2119, file: !2120, line: 77, baseType: !1832, size: 64, offset: 896)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !220, file: !30, line: 541, baseType: !334, size: 64, offset: 5248)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !220, file: !30, line: 543, baseType: !1710, size: 64, offset: 5312)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !220, file: !30, line: 544, baseType: !2152, size: 64, offset: 5376)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !220, file: !30, line: 545, baseType: !2155, size: 64, offset: 5440)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !220, file: !30, line: 547, baseType: !217, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !220, file: !30, line: 548, baseType: !217, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !220, file: !30, line: 549, baseType: !217, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !220, file: !30, line: 550, baseType: !217, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !212, file: !205, line: 27, baseType: !399, size: 64, offset: 5696)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !212, file: !205, line: 28, baseType: !1987, size: 128, offset: 5760)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !212, file: !205, line: 29, baseType: !535, size: 32, offset: 5888)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !212, file: !205, line: 30, baseType: !2165, size: 64, offset: 5952)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2167, line: 20, size: 512, elements: !2168)
!2167 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2168 = !{!2169, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2166, file: !2167, line: 21, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !67, line: 158, baseType: !2171)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !67, line: 153, baseType: !399)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2166, file: !2167, line: 22, baseType: !2170, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2166, file: !2167, line: 23, baseType: !87, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2166, file: !2167, line: 24, baseType: !63, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2166, file: !2167, line: 25, baseType: !63, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2166, file: !2167, line: 26, baseType: !2165, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2166, file: !2167, line: 26, baseType: !2165, size: 64, offset: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2166, file: !2167, line: 26, baseType: !2165, size: 64, offset: 448)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !212, file: !205, line: 32, baseType: !2180, size: 64, offset: 6016)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1772, line: 586, size: 256, elements: !2183)
!2183 = !{!2184, !2186}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2182, file: !1772, line: 587, baseType: !2185, size: 160)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 160, elements: !1292)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2182, file: !1772, line: 588, baseType: !1792, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !212, file: !205, line: 33, baseType: !282, size: 64, offset: 6080)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !212, file: !205, line: 36, baseType: !2189, size: 64, offset: 6144)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !205, line: 18, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !212, file: !205, line: 39, baseType: !2192, offset: 6208)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1994, line: 8, elements: !255)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !204, file: !205, line: 202, baseType: !208, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !204, file: !205, line: 203, baseType: !2195, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !211}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !204, file: !205, line: 204, baseType: !2199, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!99, !211, !1803}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !204, file: !205, line: 205, baseType: !208, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !204, file: !205, line: 206, baseType: !1760, size: 1152, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !204, file: !205, line: 207, baseType: !2180, size: 64, offset: 1472)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !204, file: !205, line: 208, baseType: !217, size: 8, offset: 1536)
!2206 = !DIGlobalVariableExpression(var: !2207, expr: !DIExpression())
!2207 = distinct !DIGlobalVariable(name: "clk_gpio_mux_ops", scope: !2, file: !3, line: 133, type: !92, isLocal: true, isDefinition: true)
!2208 = !DIGlobalVariableExpression(var: !2209, expr: !DIExpression())
!2209 = distinct !DIGlobalVariable(name: "clk_sleeping_gpio_gate_ops", scope: !2, file: !3, line: 103, type: !92, isLocal: true, isDefinition: true)
!2210 = !DIGlobalVariableExpression(var: !2211, expr: !DIExpression())
!2211 = distinct !DIGlobalVariable(name: "clk_gpio_gate_ops", scope: !2, file: !3, line: 74, type: !92, isLocal: true, isDefinition: true)
!2212 = !DIGlobalVariableExpression(var: !2213, expr: !DIExpression())
!2213 = distinct !DIGlobalVariable(name: "gpio_clk_match_table", scope: !2, file: !3, line: 236, type: !2214, isLocal: true, isDefinition: true)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1770, size: 4800, elements: !283)
!2215 = !{i32 7, !"Dwarf Version", i32 4}
!2216 = !{i32 2, !"Debug Info Version", i32 3}
!2217 = !{i32 1, !"wchar_size", i32 2}
!2218 = !{i32 1, !"Code Model", i32 2}
!2219 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2220 = distinct !DISubprogram(name: "gpio_clk_driver_init", scope: !3, file: !3, line: 249, type: !2221, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!99}
!2223 = !DILocation(line: 249, column: 1, scope: !2220)
!2224 = distinct !DISubprogram(name: "gpio_clk_driver_probe", scope: !3, file: !3, line: 193, type: !209, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2225 = !DILocalVariable(name: "pdev", arg: 1, scope: !2224, file: !3, line: 193, type: !211)
!2226 = !DILocation(line: 193, column: 58, scope: !2224)
!2227 = !DILocalVariable(name: "dev", scope: !2224, file: !3, line: 195, type: !1688)
!2228 = !DILocation(line: 195, column: 17, scope: !2224)
!2229 = !DILocation(line: 195, column: 24, scope: !2224)
!2230 = !DILocation(line: 195, column: 30, scope: !2224)
!2231 = !DILocalVariable(name: "node", scope: !2224, file: !3, line: 196, type: !1996)
!2232 = !DILocation(line: 196, column: 22, scope: !2224)
!2233 = !DILocation(line: 196, column: 29, scope: !2224)
!2234 = !DILocation(line: 196, column: 34, scope: !2224)
!2235 = !DILocalVariable(name: "gpio_name", scope: !2224, file: !3, line: 197, type: !87)
!2236 = !DILocation(line: 197, column: 14, scope: !2224)
!2237 = !DILocalVariable(name: "num_parents", scope: !2224, file: !3, line: 198, type: !7)
!2238 = !DILocation(line: 198, column: 15, scope: !2224)
!2239 = !DILocalVariable(name: "gpiod", scope: !2224, file: !3, line: 199, type: !199)
!2240 = !DILocation(line: 199, column: 20, scope: !2224)
!2241 = !DILocalVariable(name: "hw", scope: !2224, file: !3, line: 200, type: !100)
!2242 = !DILocation(line: 200, column: 17, scope: !2224)
!2243 = !DILocalVariable(name: "is_mux", scope: !2224, file: !3, line: 201, type: !217)
!2244 = !DILocation(line: 201, column: 7, scope: !2224)
!2245 = !DILocalVariable(name: "ret", scope: !2224, file: !3, line: 202, type: !99)
!2246 = !DILocation(line: 202, column: 6, scope: !2224)
!2247 = !DILocation(line: 204, column: 35, scope: !2224)
!2248 = !DILocation(line: 204, column: 11, scope: !2224)
!2249 = !DILocation(line: 204, column: 9, scope: !2224)
!2250 = !DILocation(line: 206, column: 40, scope: !2224)
!2251 = !DILocation(line: 206, column: 16, scope: !2224)
!2252 = !DILocation(line: 206, column: 14, scope: !2224)
!2253 = !DILocation(line: 207, column: 6, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 207, column: 6)
!2255 = !DILocation(line: 207, column: 13, scope: !2254)
!2256 = !DILocation(line: 207, column: 16, scope: !2254)
!2257 = !DILocation(line: 207, column: 28, scope: !2254)
!2258 = !DILocation(line: 207, column: 6, scope: !2224)
!2259 = !DILocation(line: 208, column: 3, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 207, column: 34)
!2261 = !DILocation(line: 209, column: 3, scope: !2260)
!2262 = !DILocation(line: 212, column: 14, scope: !2224)
!2263 = !DILocation(line: 212, column: 12, scope: !2224)
!2264 = !DILocation(line: 213, column: 25, scope: !2224)
!2265 = !DILocation(line: 213, column: 30, scope: !2224)
!2266 = !DILocation(line: 213, column: 10, scope: !2224)
!2267 = !DILocation(line: 213, column: 8, scope: !2224)
!2268 = !DILocation(line: 214, column: 13, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 214, column: 6)
!2270 = !DILocation(line: 214, column: 6, scope: !2269)
!2271 = !DILocation(line: 214, column: 6, scope: !2224)
!2272 = !DILocation(line: 215, column: 17, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 214, column: 21)
!2274 = !DILocation(line: 215, column: 9, scope: !2273)
!2275 = !DILocation(line: 215, column: 7, scope: !2273)
!2276 = !DILocation(line: 216, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 216, column: 7)
!2278 = !DILocation(line: 216, column: 11, scope: !2277)
!2279 = !DILocation(line: 216, column: 7, scope: !2273)
!2280 = !DILocation(line: 217, column: 4, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 217, column: 4)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 217, column: 4)
!2283 = !DILocation(line: 217, column: 4, scope: !2282)
!2284 = !DILocation(line: 217, column: 4, scope: !2277)
!2285 = !DILocation(line: 220, column: 4, scope: !2277)
!2286 = !DILocation(line: 223, column: 10, scope: !2273)
!2287 = !DILocation(line: 223, column: 3, scope: !2273)
!2288 = !DILocation(line: 226, column: 6, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 226, column: 6)
!2290 = !DILocation(line: 226, column: 6, scope: !2224)
!2291 = !DILocation(line: 227, column: 33, scope: !2289)
!2292 = !DILocation(line: 227, column: 38, scope: !2289)
!2293 = !DILocation(line: 227, column: 8, scope: !2289)
!2294 = !DILocation(line: 227, column: 6, scope: !2289)
!2295 = !DILocation(line: 227, column: 3, scope: !2289)
!2296 = !DILocation(line: 229, column: 34, scope: !2289)
!2297 = !DILocation(line: 229, column: 39, scope: !2289)
!2298 = !DILocation(line: 229, column: 52, scope: !2289)
!2299 = !DILocation(line: 229, column: 8, scope: !2289)
!2300 = !DILocation(line: 229, column: 6, scope: !2289)
!2301 = !DILocation(line: 230, column: 13, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 230, column: 6)
!2303 = !DILocation(line: 230, column: 6, scope: !2302)
!2304 = !DILocation(line: 230, column: 6, scope: !2224)
!2305 = !DILocation(line: 231, column: 18, scope: !2302)
!2306 = !DILocation(line: 231, column: 10, scope: !2302)
!2307 = !DILocation(line: 231, column: 3, scope: !2302)
!2308 = !DILocation(line: 233, column: 37, scope: !2224)
!2309 = !DILocation(line: 233, column: 64, scope: !2224)
!2310 = !DILocation(line: 233, column: 9, scope: !2224)
!2311 = !DILocation(line: 233, column: 2, scope: !2224)
!2312 = !DILocation(line: 234, column: 1, scope: !2224)
!2313 = distinct !DISubprogram(name: "IS_ERR", scope: !2314, file: !2314, line: 34, type: !2315, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2314 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!217, !1491}
!2317 = !DILocalVariable(name: "ptr", arg: 1, scope: !2313, file: !2314, line: 34, type: !1491)
!2318 = !DILocation(line: 34, column: 60, scope: !2313)
!2319 = !DILocation(line: 36, column: 9, scope: !2313)
!2320 = !DILocation(line: 36, column: 2, scope: !2313)
!2321 = distinct !DISubprogram(name: "PTR_ERR", scope: !2314, file: !2314, line: 29, type: !2322, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!65, !1491}
!2324 = !DILocalVariable(name: "ptr", arg: 1, scope: !2321, file: !2314, line: 29, type: !1491)
!2325 = !DILocation(line: 29, column: 61, scope: !2321)
!2326 = !DILocation(line: 31, column: 16, scope: !2321)
!2327 = !DILocation(line: 31, column: 9, scope: !2321)
!2328 = !DILocation(line: 31, column: 2, scope: !2321)
!2329 = distinct !DISubprogram(name: "clk_hw_register_gpio_mux", scope: !3, file: !3, line: 187, type: !2330, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!100, !1688, !199}
!2332 = !DILocalVariable(name: "dev", arg: 1, scope: !2329, file: !3, line: 187, type: !1688)
!2333 = !DILocation(line: 187, column: 63, scope: !2329)
!2334 = !DILocalVariable(name: "gpiod", arg: 2, scope: !2329, file: !3, line: 188, type: !199)
!2335 = !DILocation(line: 188, column: 31, scope: !2329)
!2336 = !DILocation(line: 190, column: 27, scope: !2329)
!2337 = !DILocation(line: 190, column: 35, scope: !2329)
!2338 = !DILocation(line: 190, column: 9, scope: !2329)
!2339 = !DILocation(line: 190, column: 2, scope: !2329)
!2340 = distinct !DISubprogram(name: "clk_hw_register_gpio_gate", scope: !3, file: !3, line: 173, type: !2341, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!100, !1688, !99, !199}
!2343 = !DILocalVariable(name: "dev", arg: 1, scope: !2340, file: !3, line: 173, type: !1688)
!2344 = !DILocation(line: 173, column: 64, scope: !2340)
!2345 = !DILocalVariable(name: "num_parents", arg: 2, scope: !2340, file: !3, line: 174, type: !99)
!2346 = !DILocation(line: 174, column: 11, scope: !2340)
!2347 = !DILocalVariable(name: "gpiod", arg: 3, scope: !2340, file: !3, line: 175, type: !199)
!2348 = !DILocation(line: 175, column: 25, scope: !2340)
!2349 = !DILocalVariable(name: "ops", scope: !2340, file: !3, line: 177, type: !91)
!2350 = !DILocation(line: 177, column: 24, scope: !2340)
!2351 = !DILocation(line: 179, column: 21, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 179, column: 6)
!2353 = !DILocation(line: 179, column: 6, scope: !2352)
!2354 = !DILocation(line: 179, column: 6, scope: !2340)
!2355 = !DILocation(line: 180, column: 7, scope: !2352)
!2356 = !DILocation(line: 180, column: 3, scope: !2352)
!2357 = !DILocation(line: 182, column: 7, scope: !2352)
!2358 = !DILocation(line: 184, column: 27, scope: !2340)
!2359 = !DILocation(line: 184, column: 32, scope: !2340)
!2360 = !DILocation(line: 184, column: 45, scope: !2340)
!2361 = !DILocation(line: 184, column: 52, scope: !2340)
!2362 = !DILocation(line: 184, column: 9, scope: !2340)
!2363 = !DILocation(line: 184, column: 2, scope: !2340)
!2364 = distinct !DISubprogram(name: "clk_register_gpio", scope: !3, file: !3, line: 139, type: !2365, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!100, !1688, !138, !199, !91}
!2367 = !DILocalVariable(name: "dev", arg: 1, scope: !2364, file: !3, line: 139, type: !1688)
!2368 = !DILocation(line: 139, column: 56, scope: !2364)
!2369 = !DILocalVariable(name: "num_parents", arg: 2, scope: !2364, file: !3, line: 139, type: !138)
!2370 = !DILocation(line: 139, column: 64, scope: !2364)
!2371 = !DILocalVariable(name: "gpiod", arg: 3, scope: !2364, file: !3, line: 140, type: !199)
!2372 = !DILocation(line: 140, column: 24, scope: !2364)
!2373 = !DILocalVariable(name: "clk_gpio_ops", arg: 4, scope: !2364, file: !3, line: 141, type: !91)
!2374 = !DILocation(line: 141, column: 28, scope: !2364)
!2375 = !DILocalVariable(name: "clk_gpio", scope: !2364, file: !3, line: 143, type: !68)
!2376 = !DILocation(line: 143, column: 19, scope: !2364)
!2377 = !DILocalVariable(name: "hw", scope: !2364, file: !3, line: 144, type: !100)
!2378 = !DILocation(line: 144, column: 17, scope: !2364)
!2379 = !DILocalVariable(name: "init", scope: !2364, file: !3, line: 145, type: !84)
!2380 = !DILocation(line: 145, column: 23, scope: !2364)
!2381 = !DILocalVariable(name: "err", scope: !2364, file: !3, line: 146, type: !99)
!2382 = !DILocation(line: 146, column: 6, scope: !2364)
!2383 = !DILocalVariable(name: "gpio_parent_data", scope: !2364, file: !3, line: 147, type: !2384)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 512, elements: !1074)
!2385 = !DILocation(line: 147, column: 31, scope: !2364)
!2386 = !DILocation(line: 152, column: 26, scope: !2364)
!2387 = !DILocation(line: 152, column: 13, scope: !2364)
!2388 = !DILocation(line: 152, column: 11, scope: !2364)
!2389 = !DILocation(line: 153, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 153, column: 6)
!2391 = !DILocation(line: 153, column: 6, scope: !2364)
!2392 = !DILocation(line: 154, column: 10, scope: !2390)
!2393 = !DILocation(line: 154, column: 3, scope: !2390)
!2394 = !DILocation(line: 156, column: 14, scope: !2364)
!2395 = !DILocation(line: 156, column: 19, scope: !2364)
!2396 = !DILocation(line: 156, column: 28, scope: !2364)
!2397 = !DILocation(line: 156, column: 7, scope: !2364)
!2398 = !DILocation(line: 156, column: 12, scope: !2364)
!2399 = !DILocation(line: 157, column: 13, scope: !2364)
!2400 = !DILocation(line: 157, column: 7, scope: !2364)
!2401 = !DILocation(line: 157, column: 11, scope: !2364)
!2402 = !DILocation(line: 158, column: 21, scope: !2364)
!2403 = !DILocation(line: 158, column: 7, scope: !2364)
!2404 = !DILocation(line: 158, column: 19, scope: !2364)
!2405 = !DILocation(line: 159, column: 21, scope: !2364)
!2406 = !DILocation(line: 159, column: 7, scope: !2364)
!2407 = !DILocation(line: 159, column: 19, scope: !2364)
!2408 = !DILocation(line: 160, column: 7, scope: !2364)
!2409 = !DILocation(line: 160, column: 13, scope: !2364)
!2410 = !DILocation(line: 162, column: 20, scope: !2364)
!2411 = !DILocation(line: 162, column: 2, scope: !2364)
!2412 = !DILocation(line: 162, column: 12, scope: !2364)
!2413 = !DILocation(line: 162, column: 18, scope: !2364)
!2414 = !DILocation(line: 163, column: 2, scope: !2364)
!2415 = !DILocation(line: 163, column: 12, scope: !2364)
!2416 = !DILocation(line: 163, column: 15, scope: !2364)
!2417 = !DILocation(line: 163, column: 20, scope: !2364)
!2418 = !DILocation(line: 165, column: 8, scope: !2364)
!2419 = !DILocation(line: 165, column: 18, scope: !2364)
!2420 = !DILocation(line: 165, column: 5, scope: !2364)
!2421 = !DILocation(line: 166, column: 29, scope: !2364)
!2422 = !DILocation(line: 166, column: 34, scope: !2364)
!2423 = !DILocation(line: 166, column: 8, scope: !2364)
!2424 = !DILocation(line: 166, column: 6, scope: !2364)
!2425 = !DILocation(line: 167, column: 6, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 167, column: 6)
!2427 = !DILocation(line: 167, column: 6, scope: !2364)
!2428 = !DILocation(line: 168, column: 18, scope: !2426)
!2429 = !DILocation(line: 168, column: 10, scope: !2426)
!2430 = !DILocation(line: 168, column: 3, scope: !2426)
!2431 = !DILocation(line: 170, column: 9, scope: !2364)
!2432 = !DILocation(line: 170, column: 2, scope: !2364)
!2433 = !DILocation(line: 171, column: 1, scope: !2364)
!2434 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2435, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!64, !1688, !328, !66}
!2437 = !DILocalVariable(name: "dev", arg: 1, scope: !2434, file: !30, line: 215, type: !1688)
!2438 = !DILocation(line: 215, column: 49, scope: !2434)
!2439 = !DILocalVariable(name: "size", arg: 2, scope: !2434, file: !30, line: 215, type: !328)
!2440 = !DILocation(line: 215, column: 61, scope: !2434)
!2441 = !DILocalVariable(name: "gfp", arg: 3, scope: !2434, file: !30, line: 215, type: !66)
!2442 = !DILocation(line: 215, column: 73, scope: !2434)
!2443 = !DILocation(line: 217, column: 22, scope: !2434)
!2444 = !DILocation(line: 217, column: 27, scope: !2434)
!2445 = !DILocation(line: 217, column: 33, scope: !2434)
!2446 = !DILocation(line: 217, column: 37, scope: !2434)
!2447 = !DILocation(line: 217, column: 9, scope: !2434)
!2448 = !DILocation(line: 217, column: 2, scope: !2434)
!2449 = distinct !DISubprogram(name: "ERR_PTR", scope: !2314, file: !2314, line: 24, type: !2450, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!64, !65}
!2452 = !DILocalVariable(name: "error", arg: 1, scope: !2449, file: !2314, line: 24, type: !65)
!2453 = !DILocation(line: 24, column: 48, scope: !2449)
!2454 = !DILocation(line: 26, column: 18, scope: !2449)
!2455 = !DILocation(line: 26, column: 9, scope: !2449)
!2456 = !DILocation(line: 26, column: 2, scope: !2449)
!2457 = distinct !DISubprogram(name: "clk_gpio_mux_set_parent", scope: !3, file: !3, line: 124, type: !136, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2458 = !DILocalVariable(name: "hw", arg: 1, scope: !2457, file: !3, line: 124, type: !100)
!2459 = !DILocation(line: 124, column: 51, scope: !2457)
!2460 = !DILocalVariable(name: "index", arg: 2, scope: !2457, file: !3, line: 124, type: !138)
!2461 = !DILocation(line: 124, column: 58, scope: !2457)
!2462 = !DILocalVariable(name: "clk", scope: !2457, file: !3, line: 126, type: !68)
!2463 = !DILocation(line: 126, column: 19, scope: !2457)
!2464 = !DILocalVariable(name: "__mptr", scope: !2465, file: !3, line: 126, type: !64)
!2465 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 126, column: 25)
!2466 = !DILocation(line: 126, column: 25, scope: !2465)
!2467 = !DILocation(line: 126, column: 25, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 126, column: 25)
!2469 = !DILocation(line: 128, column: 27, scope: !2457)
!2470 = !DILocation(line: 128, column: 32, scope: !2457)
!2471 = !DILocation(line: 128, column: 39, scope: !2457)
!2472 = !DILocation(line: 128, column: 2, scope: !2457)
!2473 = !DILocation(line: 130, column: 2, scope: !2457)
!2474 = distinct !DISubprogram(name: "clk_gpio_mux_get_parent", scope: !3, file: !3, line: 117, type: !145, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2475 = !DILocalVariable(name: "hw", arg: 1, scope: !2474, file: !3, line: 117, type: !100)
!2476 = !DILocation(line: 117, column: 50, scope: !2474)
!2477 = !DILocalVariable(name: "clk", scope: !2474, file: !3, line: 119, type: !68)
!2478 = !DILocation(line: 119, column: 19, scope: !2474)
!2479 = !DILocalVariable(name: "__mptr", scope: !2480, file: !3, line: 119, type: !64)
!2480 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 119, column: 25)
!2481 = !DILocation(line: 119, column: 25, scope: !2480)
!2482 = !DILocation(line: 119, column: 25, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 119, column: 25)
!2484 = !DILocation(line: 121, column: 34, scope: !2474)
!2485 = !DILocation(line: 121, column: 39, scope: !2474)
!2486 = !DILocation(line: 121, column: 9, scope: !2474)
!2487 = !DILocation(line: 121, column: 2, scope: !2474)
!2488 = distinct !DISubprogram(name: "clk_sleeping_gpio_gate_prepare", scope: !3, file: !3, line: 80, type: !97, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2489 = !DILocalVariable(name: "hw", arg: 1, scope: !2488, file: !3, line: 80, type: !100)
!2490 = !DILocation(line: 80, column: 58, scope: !2488)
!2491 = !DILocalVariable(name: "clk", scope: !2488, file: !3, line: 82, type: !68)
!2492 = !DILocation(line: 82, column: 19, scope: !2488)
!2493 = !DILocalVariable(name: "__mptr", scope: !2494, file: !3, line: 82, type: !64)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 82, column: 25)
!2495 = !DILocation(line: 82, column: 25, scope: !2494)
!2496 = !DILocation(line: 82, column: 25, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 82, column: 25)
!2498 = !DILocation(line: 84, column: 27, scope: !2488)
!2499 = !DILocation(line: 84, column: 32, scope: !2488)
!2500 = !DILocation(line: 84, column: 2, scope: !2488)
!2501 = !DILocation(line: 86, column: 2, scope: !2488)
!2502 = distinct !DISubprogram(name: "clk_sleeping_gpio_gate_unprepare", scope: !3, file: !3, line: 89, type: !103, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2503 = !DILocalVariable(name: "hw", arg: 1, scope: !2502, file: !3, line: 89, type: !100)
!2504 = !DILocation(line: 89, column: 61, scope: !2502)
!2505 = !DILocalVariable(name: "clk", scope: !2502, file: !3, line: 91, type: !68)
!2506 = !DILocation(line: 91, column: 19, scope: !2502)
!2507 = !DILocalVariable(name: "__mptr", scope: !2508, file: !3, line: 91, type: !64)
!2508 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 91, column: 25)
!2509 = !DILocation(line: 91, column: 25, scope: !2508)
!2510 = !DILocation(line: 91, column: 25, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 91, column: 25)
!2512 = !DILocation(line: 93, column: 27, scope: !2502)
!2513 = !DILocation(line: 93, column: 32, scope: !2502)
!2514 = !DILocation(line: 93, column: 2, scope: !2502)
!2515 = !DILocation(line: 94, column: 1, scope: !2502)
!2516 = distinct !DISubprogram(name: "clk_sleeping_gpio_gate_is_prepared", scope: !3, file: !3, line: 96, type: !97, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2517 = !DILocalVariable(name: "hw", arg: 1, scope: !2516, file: !3, line: 96, type: !100)
!2518 = !DILocation(line: 96, column: 62, scope: !2516)
!2519 = !DILocalVariable(name: "clk", scope: !2516, file: !3, line: 98, type: !68)
!2520 = !DILocation(line: 98, column: 19, scope: !2516)
!2521 = !DILocalVariable(name: "__mptr", scope: !2522, file: !3, line: 98, type: !64)
!2522 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 98, column: 25)
!2523 = !DILocation(line: 98, column: 25, scope: !2522)
!2524 = !DILocation(line: 98, column: 25, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 98, column: 25)
!2526 = !DILocation(line: 100, column: 34, scope: !2516)
!2527 = !DILocation(line: 100, column: 39, scope: !2516)
!2528 = !DILocation(line: 100, column: 9, scope: !2516)
!2529 = !DILocation(line: 100, column: 2, scope: !2516)
!2530 = distinct !DISubprogram(name: "clk_gpio_gate_enable", scope: !3, file: !3, line: 51, type: !97, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2531 = !DILocalVariable(name: "hw", arg: 1, scope: !2530, file: !3, line: 51, type: !100)
!2532 = !DILocation(line: 51, column: 48, scope: !2530)
!2533 = !DILocalVariable(name: "clk", scope: !2530, file: !3, line: 53, type: !68)
!2534 = !DILocation(line: 53, column: 19, scope: !2530)
!2535 = !DILocalVariable(name: "__mptr", scope: !2536, file: !3, line: 53, type: !64)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 53, column: 25)
!2537 = !DILocation(line: 53, column: 25, scope: !2536)
!2538 = !DILocation(line: 53, column: 25, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 53, column: 25)
!2540 = !DILocation(line: 55, column: 18, scope: !2530)
!2541 = !DILocation(line: 55, column: 23, scope: !2530)
!2542 = !DILocation(line: 55, column: 2, scope: !2530)
!2543 = !DILocation(line: 57, column: 2, scope: !2530)
!2544 = distinct !DISubprogram(name: "clk_gpio_gate_disable", scope: !3, file: !3, line: 60, type: !103, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2545 = !DILocalVariable(name: "hw", arg: 1, scope: !2544, file: !3, line: 60, type: !100)
!2546 = !DILocation(line: 60, column: 50, scope: !2544)
!2547 = !DILocalVariable(name: "clk", scope: !2544, file: !3, line: 62, type: !68)
!2548 = !DILocation(line: 62, column: 19, scope: !2544)
!2549 = !DILocalVariable(name: "__mptr", scope: !2550, file: !3, line: 62, type: !64)
!2550 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 62, column: 25)
!2551 = !DILocation(line: 62, column: 25, scope: !2550)
!2552 = !DILocation(line: 62, column: 25, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 62, column: 25)
!2554 = !DILocation(line: 64, column: 18, scope: !2544)
!2555 = !DILocation(line: 64, column: 23, scope: !2544)
!2556 = !DILocation(line: 64, column: 2, scope: !2544)
!2557 = !DILocation(line: 65, column: 1, scope: !2544)
!2558 = distinct !DISubprogram(name: "clk_gpio_gate_is_enabled", scope: !3, file: !3, line: 67, type: !97, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2559 = !DILocalVariable(name: "hw", arg: 1, scope: !2558, file: !3, line: 67, type: !100)
!2560 = !DILocation(line: 67, column: 52, scope: !2558)
!2561 = !DILocalVariable(name: "clk", scope: !2558, file: !3, line: 69, type: !68)
!2562 = !DILocation(line: 69, column: 19, scope: !2558)
!2563 = !DILocalVariable(name: "__mptr", scope: !2564, file: !3, line: 69, type: !64)
!2564 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 69, column: 25)
!2565 = !DILocation(line: 69, column: 25, scope: !2564)
!2566 = !DILocation(line: 69, column: 25, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 69, column: 25)
!2568 = !DILocation(line: 71, column: 25, scope: !2558)
!2569 = !DILocation(line: 71, column: 30, scope: !2558)
!2570 = !DILocation(line: 71, column: 9, scope: !2558)
!2571 = !DILocation(line: 71, column: 2, scope: !2558)
