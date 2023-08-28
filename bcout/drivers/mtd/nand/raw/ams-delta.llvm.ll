; ModuleID = '../bcout/drivers/mtd/nand/raw/ams-delta.llvm.bc'
source_filename = "drivers/mtd/nand/raw/ams-delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_gpio_nand_driver_init6:\09\09\09"
module asm ".long\09gpio_nand_driver_init - .\09\09\09"
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
%struct.nand_controller_ops = type { i32 (%struct.nand_chip*)*, void (%struct.nand_chip*)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, i32, %struct.nand_interface_config*)* }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, %struct.nand_interface_config*, %struct.nand_interface_config*, i32, i32, i32, i32, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*, i8*, i32, i32, i32, i32, i32, i8*, i8*, %struct.anon.44, i64, %struct.mutex, i8, i32, i32, %struct.nand_controller*, %struct.nand_ecc_ctrl, i8* }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, %struct.nand_ops* }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.mtd_ooblayout_ops*, %struct.mtd_pairing_scheme*, i32, i32, i32, %struct.mtd_erase_region_info*, i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, i8*, %struct.module*, %struct.device, i32, %struct.mtd_debug_info, %struct.nvmem_device*, %struct.mtd_info*, %struct.list_head, %union.anon.41 }
%struct.mtd_ooblayout_ops = type { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* }
%struct.mtd_oob_region = type { i32, i32 }
%struct.mtd_pairing_scheme = type { i32, i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)*, i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)* }
%struct.mtd_pairing_info = type { i32, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, i64* }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_ops = type { i32, i64, i64, i64, i64, i32, i8*, i8* }
%struct.otp_info = type { i32, i32, i32 }
%struct.kvec = type { i8*, i64 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { %struct.dentry*, i8*, i8* }
%struct.dentry = type opaque
%struct.nvmem_device = type opaque
%union.anon.41 = type { %struct.mtd_part }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, %struct.nand_ecc_engine*, %struct.nand_ecc_engine* }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i8* }
%struct.nand_ecc_engine = type { %struct.nand_ecc_engine_ops* }
%struct.nand_ecc_engine_ops = type { i32 (%struct.nand_device*)*, void (%struct.nand_device*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)* }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.42, i32, i32, %union.anon.43, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.42 = type { i8* }
%union.anon.43 = type { i8* }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { i64* }
%struct.nand_ops = type { i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)*, i1 (%struct.nand_device*, %struct.nand_pos*)* }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { i8*, i8, [4 x i64], [4 x i64], %struct.onfi_params* }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i16, i16, [88 x i8] }
%struct.nand_manufacturer = type { %struct.nand_manufacturer_desc*, i8* }
%struct.nand_manufacturer_desc = type opaque
%struct.nand_chip_ops = type { i32 (%struct.nand_chip*)*, void (%struct.nand_chip*)*, i32 (%struct.nand_chip*, i64, i64)*, i32 (%struct.nand_chip*, i64, i64)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, %struct.nand_interface_config*)* }
%struct.nand_legacy = type { i8*, i8*, void (%struct.nand_chip*, i32)*, i8 (%struct.nand_chip*)*, void (%struct.nand_chip*, i8)*, void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)*, i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*, i64)*, i32 (%struct.nand_chip*, i64)*, i32 (%struct.nand_chip*, i32, i8*)*, i32 (%struct.nand_chip*, i32, i8*)*, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, %struct.nand_controller_ops* }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.40 }
%union.anon.40 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, i8* }
%struct.anon.44 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, void (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i8*, i8*)*, i32 (%struct.nand_chip*, i8*, i8*, i8*)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32, i32, i8*, i32)*, i32 (%struct.nand_chip*, i32, i32, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)* }
%struct.nand_operation = type { i32, %struct.nand_op_instr*, i32 }
%struct.nand_op_instr = type { i32, %union.anon.38, i32 }
%union.anon.38 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.39, i8 }
%union.anon.39 = type { i8* }
%struct.gpio_nand_platdata = type { void (%struct.gpio_nand_platdata*, i64)*, %struct.mtd_partition*, i32, i32, i32 }
%struct.mtd_partition = type { i8*, i8**, i64, i64, i32, i32, %struct.device_node* }
%struct.gpio_nand = type { %struct.nand_controller, %struct.nand_chip, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_descs*, i8, i32, i32, i8 (%struct.gpio_nand*)*, void (%struct.gpio_nand*, i8)* }
%struct.gpio_desc = type opaque
%struct.gpio_descs = type { %struct.gpio_array*, i32, [0 x %struct.gpio_desc*] }
%struct.gpio_array = type opaque
%struct.mtd_part_parser_data = type { i64 }
%struct.nand_flash_dev = type { i8*, %union.anon.45, i32, i32, i32, i32, i16, i16, %struct.anon.47 }
%union.anon.45 = type { [8 x i8] }
%struct.anon.47 = type { i16, i16 }
%struct.nand_op_cmd_instr = type { i8 }
%struct.nand_op_addr_instr = type { i32, i8* }
%struct.nand_op_waitrdy_instr = type { i32 }

@__UNIQUE_ID___addressable_gpio_nand_driver_init176 = internal global i8* bitcast (i32 ()* @gpio_nand_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@gpio_nand_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @gpio_nand_probe, i32 (%struct.platform_device*)* @gpio_nand_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([1 x %struct.of_device_id], [1 x %struct.of_device_id]* @gpio_nand_of_id_table, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* getelementptr inbounds ([2 x %struct.platform_device_id], [2 x %struct.platform_device_id]* @gpio_nand_plat_id_table, i32 0, i32 0), i8 0 }, align 8, !dbg !2768
@__exitcall_gpio_nand_driver_exit = internal global void ()* @gpio_nand_driver_exit, section ".exitcall.exit", align 8, !dbg !2741
@__UNIQUE_ID_file177 = internal constant [46 x i8] c"ams_delta.file=drivers/mtd/nand/raw/ams-delta\00", section ".modinfo", align 1, !dbg !2748
@__UNIQUE_ID_license178 = internal constant [25 x i8] c"ams_delta.license=GPL v2\00", section ".modinfo", align 1, !dbg !2753
@__UNIQUE_ID_author179 = internal constant [54 x i8] c"ams_delta.author=Jonathan McDowell <noodles@earth.li>\00", section ".modinfo", align 1, !dbg !2758
@__UNIQUE_ID_description180 = internal constant [70 x i8] c"ams_delta.description=Glue layer for NAND flash on Amstrad E3 (Delta)\00", section ".modinfo", align 1, !dbg !2763
@.str = private unnamed_addr constant [15 x i8] c"ams-delta-nand\00", align 1
@gpio_nand_of_id_table = internal constant [1 x %struct.of_device_id] zeroinitializer, align 16, !dbg !2834
@gpio_nand_plat_id_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ams-delta-nand\00\00\00\00\00\00", i64 0 }, %struct.platform_device_id zeroinitializer], align 16, !dbg !2837
@.str.1 = private unnamed_addr constant [4 x i8] c"rdy\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"RDY GPIO request failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nwp\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"NWP GPIO request failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"nce\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"NCE GPIO request failed (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nre\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"NRE GPIO request failed (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"nwe\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"NWE GPIO request failed (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ale\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"ALE GPIO request failed (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"cle\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"CLE GPIO request failed (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"data GPIO request failed: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"mandatory NWE pin not provided by platform\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"incomplete device configuration\0A\00", align 1
@gpio_nand_ops = internal constant %struct.nand_controller_ops { i32 (%struct.nand_chip*)* @gpio_nand_attach_chip, void (%struct.nand_chip*)* null, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)* @gpio_nand_exec_op, i32 (%struct.nand_chip*, i32, %struct.nand_interface_config*)* @gpio_nand_setup_interface }, align 8, !dbg !2827
@.str.19 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2829
@.str.20 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/ams-delta.c\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_gpio_nand_driver_init176 to i8*), i8* bitcast (void ()* @gpio_nand_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_gpio_nand_driver_exit to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file177, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license178, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_author179, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__UNIQUE_ID_description180, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @gpio_nand_driver_init() #0 section ".init.text" !dbg !2845 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @gpio_nand_driver, %struct.module* null) #7, !dbg !2848
  ret i32 %call, !dbg !2848
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @gpio_nand_driver_exit() #0 section ".exit.text" !dbg !2849 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @gpio_nand_driver) #7, !dbg !2850
  ret void, !dbg !2850
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gpio_nand_probe(%struct.platform_device* %pdev) #2 !dbg !2851 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %pdata = alloca %struct.gpio_nand_platdata*, align 8
  %partitions = alloca %struct.mtd_partition*, align 8
  %num_partitions = alloca i32, align 4
  %priv = alloca %struct.gpio_nand*, align 8
  %this = alloca %struct.nand_chip*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %probe = alloca i32 (%struct.platform_device*, %struct.gpio_nand*)*, align 8
  %err = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.declare(metadata %struct.gpio_nand_platdata** %pdata, metadata !2854, metadata !DIExpression()), !dbg !2880
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2881
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2882
  %call = call i8* @dev_get_platdata(%struct.device* %dev) #7, !dbg !2883
  %1 = bitcast i8* %call to %struct.gpio_nand_platdata*, !dbg !2883
  store %struct.gpio_nand_platdata* %1, %struct.gpio_nand_platdata** %pdata, align 8, !dbg !2880
  call void @llvm.dbg.declare(metadata %struct.mtd_partition** %partitions, metadata !2884, metadata !DIExpression()), !dbg !2887
  store %struct.mtd_partition* null, %struct.mtd_partition** %partitions, align 8, !dbg !2887
  call void @llvm.dbg.declare(metadata i32* %num_partitions, metadata !2888, metadata !DIExpression()), !dbg !2889
  store i32 0, i32* %num_partitions, align 4, !dbg !2889
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv, metadata !2890, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this, metadata !2927, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2929, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.declare(metadata i32 (%struct.platform_device*, %struct.gpio_nand*)** %probe, metadata !2931, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2936, metadata !DIExpression()), !dbg !2937
  store i32 0, i32* %err, align 4, !dbg !2937
  %2 = load %struct.gpio_nand_platdata*, %struct.gpio_nand_platdata** %pdata, align 8, !dbg !2938
  %tobool = icmp ne %struct.gpio_nand_platdata* %2, null, !dbg !2938
  br i1 %tobool, label %if.then, label %if.end, !dbg !2940

if.then:                                          ; preds = %entry
  %3 = load %struct.gpio_nand_platdata*, %struct.gpio_nand_platdata** %pdata, align 8, !dbg !2941
  %parts = getelementptr inbounds %struct.gpio_nand_platdata, %struct.gpio_nand_platdata* %3, i32 0, i32 1, !dbg !2943
  %4 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2943
  store %struct.mtd_partition* %4, %struct.mtd_partition** %partitions, align 8, !dbg !2944
  %5 = load %struct.gpio_nand_platdata*, %struct.gpio_nand_platdata** %pdata, align 8, !dbg !2945
  %num_parts = getelementptr inbounds %struct.gpio_nand_platdata, %struct.gpio_nand_platdata* %5, i32 0, i32 2, !dbg !2946
  %6 = load i32, i32* %num_parts, align 8, !dbg !2946
  store i32 %6, i32* %num_partitions, align 4, !dbg !2947
  br label %if.end, !dbg !2948

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2949
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 3, !dbg !2950
  %call2 = call i8* @devm_kzalloc(%struct.device* %dev1, i64 2216, i32 3264) #7, !dbg !2951
  %8 = bitcast i8* %call2 to %struct.gpio_nand*, !dbg !2951
  store %struct.gpio_nand* %8, %struct.gpio_nand** %priv, align 8, !dbg !2952
  %9 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !2953
  %tobool3 = icmp ne %struct.gpio_nand* %9, null, !dbg !2953
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2955

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2956
  br label %return, !dbg !2956

if.end5:                                          ; preds = %if.end
  %10 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !2957
  %nand_chip = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %10, i32 0, i32 1, !dbg !2958
  store %struct.nand_chip* %nand_chip, %struct.nand_chip** %this, align 8, !dbg !2959
  %11 = load %struct.nand_chip*, %struct.nand_chip** %this, align 8, !dbg !2960
  %call6 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11) #7, !dbg !2961
  store %struct.mtd_info* %call6, %struct.mtd_info** %mtd, align 8, !dbg !2962
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2963
  %dev7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3, !dbg !2964
  %13 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2965
  %dev8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 55, !dbg !2966
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 1, !dbg !2967
  store %struct.device* %dev7, %struct.device** %parent, align 8, !dbg !2968
  %14 = load %struct.nand_chip*, %struct.nand_chip** %this, align 8, !dbg !2969
  %15 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !2970
  %16 = bitcast %struct.gpio_nand* %15 to i8*, !dbg !2970
  call void @nand_set_controller_data(%struct.nand_chip* %14, i8* %16) #7, !dbg !2971
  %17 = load %struct.nand_chip*, %struct.nand_chip** %this, align 8, !dbg !2972
  %18 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2973
  %dev9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 3, !dbg !2974
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 23, !dbg !2975
  %19 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2975
  call void @nand_set_flash_node(%struct.nand_chip* %17, %struct.device_node* %19) #7, !dbg !2976
  %20 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2977
  %dev10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 3, !dbg !2978
  %call11 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %dev10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1) #7, !dbg !2979
  %21 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !2980
  %gpiod_rdy = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %21, i32 0, i32 2, !dbg !2981
  store %struct.gpio_desc* %call11, %struct.gpio_desc** %gpiod_rdy, align 8, !dbg !2982
  %22 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !2983
  %gpiod_rdy12 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %22, i32 0, i32 2, !dbg !2985
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_rdy12, align 8, !dbg !2985
  %24 = bitcast %struct.gpio_desc* %23 to i8*, !dbg !2983
  %call13 = call zeroext i1 @IS_ERR(i8* %24) #7, !dbg !2986
  br i1 %call13, label %if.then14, label %if.end18, !dbg !2987

if.then14:                                        ; preds = %if.end5
  %25 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !2988
  %gpiod_rdy15 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %25, i32 0, i32 2, !dbg !2990
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_rdy15, align 8, !dbg !2990
  %27 = bitcast %struct.gpio_desc* %26 to i8*, !dbg !2988
  %call16 = call i64 @PTR_ERR(i8* %27) #7, !dbg !2991
  %conv = trunc i64 %call16 to i32, !dbg !2991
  store i32 %conv, i32* %err, align 4, !dbg !2992
  %28 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2993
  %dev17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 3, !dbg !2993
  %29 = load i32, i32* %err, align 4, !dbg !2993
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %29) #8, !dbg !2993
  %30 = load i32, i32* %err, align 4, !dbg !2994
  store i32 %30, i32* %retval, align 4, !dbg !2995
  br label %return, !dbg !2995

if.end18:                                         ; preds = %if.end5
  %31 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2996
  %32 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !2997
  %33 = bitcast %struct.gpio_nand* %32 to i8*, !dbg !2997
  call void @platform_set_drvdata(%struct.platform_device* %31, i8* %33) #7, !dbg !2998
  %34 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2999
  %dev19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 3, !dbg !3000
  %call20 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %dev19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 7) #7, !dbg !3001
  %35 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3002
  %gpiod_nwp = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %35, i32 0, i32 5, !dbg !3003
  store %struct.gpio_desc* %call20, %struct.gpio_desc** %gpiod_nwp, align 8, !dbg !3004
  %36 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3005
  %gpiod_nwp21 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %36, i32 0, i32 5, !dbg !3007
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwp21, align 8, !dbg !3007
  %38 = bitcast %struct.gpio_desc* %37 to i8*, !dbg !3005
  %call22 = call zeroext i1 @IS_ERR(i8* %38) #7, !dbg !3008
  br i1 %call22, label %if.then23, label %if.end28, !dbg !3009

if.then23:                                        ; preds = %if.end18
  %39 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3010
  %gpiod_nwp24 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %39, i32 0, i32 5, !dbg !3012
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwp24, align 8, !dbg !3012
  %41 = bitcast %struct.gpio_desc* %40 to i8*, !dbg !3010
  %call25 = call i64 @PTR_ERR(i8* %41) #7, !dbg !3013
  %conv26 = trunc i64 %call25 to i32, !dbg !3013
  store i32 %conv26, i32* %err, align 4, !dbg !3014
  %42 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3015
  %dev27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 3, !dbg !3015
  %43 = load i32, i32* %err, align 4, !dbg !3015
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %43) #8, !dbg !3015
  %44 = load i32, i32* %err, align 4, !dbg !3016
  store i32 %44, i32* %retval, align 4, !dbg !3017
  br label %return, !dbg !3017

if.end28:                                         ; preds = %if.end18
  %45 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3018
  %dev29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 3, !dbg !3019
  %call30 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %dev29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3) #7, !dbg !3020
  %46 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3021
  %gpiod_nce = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %46, i32 0, i32 3, !dbg !3022
  store %struct.gpio_desc* %call30, %struct.gpio_desc** %gpiod_nce, align 8, !dbg !3023
  %47 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3024
  %gpiod_nce31 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %47, i32 0, i32 3, !dbg !3026
  %48 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nce31, align 8, !dbg !3026
  %49 = bitcast %struct.gpio_desc* %48 to i8*, !dbg !3024
  %call32 = call zeroext i1 @IS_ERR(i8* %49) #7, !dbg !3027
  br i1 %call32, label %if.then33, label %if.end38, !dbg !3028

if.then33:                                        ; preds = %if.end28
  %50 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3029
  %gpiod_nce34 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %50, i32 0, i32 3, !dbg !3031
  %51 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nce34, align 8, !dbg !3031
  %52 = bitcast %struct.gpio_desc* %51 to i8*, !dbg !3029
  %call35 = call i64 @PTR_ERR(i8* %52) #7, !dbg !3032
  %conv36 = trunc i64 %call35 to i32, !dbg !3032
  store i32 %conv36, i32* %err, align 4, !dbg !3033
  %53 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3034
  %dev37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 3, !dbg !3034
  %54 = load i32, i32* %err, align 4, !dbg !3034
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %54) #8, !dbg !3034
  %55 = load i32, i32* %err, align 4, !dbg !3035
  store i32 %55, i32* %retval, align 4, !dbg !3036
  br label %return, !dbg !3036

if.end38:                                         ; preds = %if.end28
  %56 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3037
  %dev39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 3, !dbg !3038
  %call40 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %dev39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3) #7, !dbg !3039
  %57 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3040
  %gpiod_nre = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %57, i32 0, i32 4, !dbg !3041
  store %struct.gpio_desc* %call40, %struct.gpio_desc** %gpiod_nre, align 8, !dbg !3042
  %58 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3043
  %gpiod_nre41 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %58, i32 0, i32 4, !dbg !3045
  %59 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nre41, align 8, !dbg !3045
  %60 = bitcast %struct.gpio_desc* %59 to i8*, !dbg !3043
  %call42 = call zeroext i1 @IS_ERR(i8* %60) #7, !dbg !3046
  br i1 %call42, label %if.then43, label %if.end48, !dbg !3047

if.then43:                                        ; preds = %if.end38
  %61 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3048
  %gpiod_nre44 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %61, i32 0, i32 4, !dbg !3050
  %62 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nre44, align 8, !dbg !3050
  %63 = bitcast %struct.gpio_desc* %62 to i8*, !dbg !3048
  %call45 = call i64 @PTR_ERR(i8* %63) #7, !dbg !3051
  %conv46 = trunc i64 %call45 to i32, !dbg !3051
  store i32 %conv46, i32* %err, align 4, !dbg !3052
  %64 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3053
  %dev47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 3, !dbg !3053
  %65 = load i32, i32* %err, align 4, !dbg !3053
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %65) #8, !dbg !3053
  %66 = load i32, i32* %err, align 4, !dbg !3054
  store i32 %66, i32* %retval, align 4, !dbg !3055
  br label %return, !dbg !3055

if.end48:                                         ; preds = %if.end38
  %67 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3056
  %dev49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 3, !dbg !3057
  %call50 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %dev49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3) #7, !dbg !3058
  %68 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3059
  %gpiod_nwe = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %68, i32 0, i32 6, !dbg !3060
  store %struct.gpio_desc* %call50, %struct.gpio_desc** %gpiod_nwe, align 8, !dbg !3061
  %69 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3062
  %gpiod_nwe51 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %69, i32 0, i32 6, !dbg !3064
  %70 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwe51, align 8, !dbg !3064
  %71 = bitcast %struct.gpio_desc* %70 to i8*, !dbg !3062
  %call52 = call zeroext i1 @IS_ERR(i8* %71) #7, !dbg !3065
  br i1 %call52, label %if.then53, label %if.end58, !dbg !3066

if.then53:                                        ; preds = %if.end48
  %72 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3067
  %gpiod_nwe54 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %72, i32 0, i32 6, !dbg !3069
  %73 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwe54, align 8, !dbg !3069
  %74 = bitcast %struct.gpio_desc* %73 to i8*, !dbg !3067
  %call55 = call i64 @PTR_ERR(i8* %74) #7, !dbg !3070
  %conv56 = trunc i64 %call55 to i32, !dbg !3070
  store i32 %conv56, i32* %err, align 4, !dbg !3071
  %75 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3072
  %dev57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 3, !dbg !3072
  %76 = load i32, i32* %err, align 4, !dbg !3072
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %76) #8, !dbg !3072
  %77 = load i32, i32* %err, align 4, !dbg !3073
  store i32 %77, i32* %retval, align 4, !dbg !3074
  br label %return, !dbg !3074

if.end58:                                         ; preds = %if.end48
  %78 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3075
  %dev59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 3, !dbg !3076
  %call60 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %dev59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3) #7, !dbg !3077
  %79 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3078
  %gpiod_ale = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %79, i32 0, i32 7, !dbg !3079
  store %struct.gpio_desc* %call60, %struct.gpio_desc** %gpiod_ale, align 8, !dbg !3080
  %80 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3081
  %gpiod_ale61 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %80, i32 0, i32 7, !dbg !3083
  %81 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_ale61, align 8, !dbg !3083
  %82 = bitcast %struct.gpio_desc* %81 to i8*, !dbg !3081
  %call62 = call zeroext i1 @IS_ERR(i8* %82) #7, !dbg !3084
  br i1 %call62, label %if.then63, label %if.end68, !dbg !3085

if.then63:                                        ; preds = %if.end58
  %83 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3086
  %gpiod_ale64 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %83, i32 0, i32 7, !dbg !3088
  %84 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_ale64, align 8, !dbg !3088
  %85 = bitcast %struct.gpio_desc* %84 to i8*, !dbg !3086
  %call65 = call i64 @PTR_ERR(i8* %85) #7, !dbg !3089
  %conv66 = trunc i64 %call65 to i32, !dbg !3089
  store i32 %conv66, i32* %err, align 4, !dbg !3090
  %86 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3091
  %dev67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 3, !dbg !3091
  %87 = load i32, i32* %err, align 4, !dbg !3091
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %87) #8, !dbg !3091
  %88 = load i32, i32* %err, align 4, !dbg !3092
  store i32 %88, i32* %retval, align 4, !dbg !3093
  br label %return, !dbg !3093

if.end68:                                         ; preds = %if.end58
  %89 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3094
  %dev69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 3, !dbg !3095
  %call70 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %dev69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3) #7, !dbg !3096
  %90 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3097
  %gpiod_cle = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %90, i32 0, i32 8, !dbg !3098
  store %struct.gpio_desc* %call70, %struct.gpio_desc** %gpiod_cle, align 8, !dbg !3099
  %91 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3100
  %gpiod_cle71 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %91, i32 0, i32 8, !dbg !3102
  %92 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_cle71, align 8, !dbg !3102
  %93 = bitcast %struct.gpio_desc* %92 to i8*, !dbg !3100
  %call72 = call zeroext i1 @IS_ERR(i8* %93) #7, !dbg !3103
  br i1 %call72, label %if.then73, label %if.end78, !dbg !3104

if.then73:                                        ; preds = %if.end68
  %94 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3105
  %gpiod_cle74 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %94, i32 0, i32 8, !dbg !3107
  %95 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_cle74, align 8, !dbg !3107
  %96 = bitcast %struct.gpio_desc* %95 to i8*, !dbg !3105
  %call75 = call i64 @PTR_ERR(i8* %96) #7, !dbg !3108
  %conv76 = trunc i64 %call75 to i32, !dbg !3108
  store i32 %conv76, i32* %err, align 4, !dbg !3109
  %97 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3110
  %dev77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 3, !dbg !3110
  %98 = load i32, i32* %err, align 4, !dbg !3110
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %98) #8, !dbg !3110
  %99 = load i32, i32* %err, align 4, !dbg !3111
  store i32 %99, i32* %retval, align 4, !dbg !3112
  br label %return, !dbg !3112

if.end78:                                         ; preds = %if.end68
  %100 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3113
  %dev79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 3, !dbg !3114
  %call80 = call %struct.gpio_descs* @devm_gpiod_get_array_optional(%struct.device* %dev79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 1) #7, !dbg !3115
  %101 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3116
  %data_gpiods = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %101, i32 0, i32 9, !dbg !3117
  store %struct.gpio_descs* %call80, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3118
  %102 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3119
  %data_gpiods81 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %102, i32 0, i32 9, !dbg !3121
  %103 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods81, align 8, !dbg !3121
  %104 = bitcast %struct.gpio_descs* %103 to i8*, !dbg !3119
  %call82 = call zeroext i1 @IS_ERR(i8* %104) #7, !dbg !3122
  br i1 %call82, label %if.then83, label %if.end88, !dbg !3123

if.then83:                                        ; preds = %if.end78
  %105 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3124
  %data_gpiods84 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %105, i32 0, i32 9, !dbg !3126
  %106 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods84, align 8, !dbg !3126
  %107 = bitcast %struct.gpio_descs* %106 to i8*, !dbg !3124
  %call85 = call i64 @PTR_ERR(i8* %107) #7, !dbg !3127
  %conv86 = trunc i64 %call85 to i32, !dbg !3127
  store i32 %conv86, i32* %err, align 4, !dbg !3128
  %108 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3129
  %dev87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 3, !dbg !3129
  %109 = load i32, i32* %err, align 4, !dbg !3129
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %109) #8, !dbg !3129
  %110 = load i32, i32* %err, align 4, !dbg !3130
  store i32 %110, i32* %retval, align 4, !dbg !3131
  br label %return, !dbg !3131

if.end88:                                         ; preds = %if.end78
  %111 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3132
  %data_gpiods89 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %111, i32 0, i32 9, !dbg !3134
  %112 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods89, align 8, !dbg !3134
  %tobool90 = icmp ne %struct.gpio_descs* %112, null, !dbg !3132
  br i1 %tobool90, label %if.then91, label %if.end97, !dbg !3135

if.then91:                                        ; preds = %if.end88
  %113 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3136
  %gpiod_nwe92 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %113, i32 0, i32 6, !dbg !3139
  %114 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwe92, align 8, !dbg !3139
  %tobool93 = icmp ne %struct.gpio_desc* %114, null, !dbg !3136
  br i1 %tobool93, label %if.end96, label %if.then94, !dbg !3140

if.then94:                                        ; preds = %if.then91
  %115 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3141
  %dev95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 3, !dbg !3141
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !3141
  store i32 -19, i32* %retval, align 4, !dbg !3143
  br label %return, !dbg !3143

if.end96:                                         ; preds = %if.then91
  %116 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3144
  %io_read = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %116, i32 0, i32 13, !dbg !3145
  store i8 (%struct.gpio_nand*)* @gpio_nand_io_read, i8 (%struct.gpio_nand*)** %io_read, align 8, !dbg !3146
  %117 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3147
  %io_write = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %117, i32 0, i32 14, !dbg !3148
  store void (%struct.gpio_nand*, i8)* @gpio_nand_io_write, void (%struct.gpio_nand*, i8)** %io_write, align 8, !dbg !3149
  %118 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3150
  %data_in = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %118, i32 0, i32 10, !dbg !3151
  store i8 1, i8* %data_in, align 8, !dbg !3152
  br label %if.end97, !dbg !3153

if.end97:                                         ; preds = %if.end96, %if.end88
  %119 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3154
  %id_entry = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 8, !dbg !3156
  %120 = load %struct.platform_device_id*, %struct.platform_device_id** %id_entry, align 8, !dbg !3156
  %tobool98 = icmp ne %struct.platform_device_id* %120, null, !dbg !3154
  br i1 %tobool98, label %if.then99, label %if.else, !dbg !3157

if.then99:                                        ; preds = %if.end97
  %121 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3158
  %id_entry100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 8, !dbg !3159
  %122 = load %struct.platform_device_id*, %struct.platform_device_id** %id_entry100, align 8, !dbg !3159
  %driver_data = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %122, i32 0, i32 1, !dbg !3160
  %123 = load i64, i64* %driver_data, align 8, !dbg !3160
  %124 = inttoptr i64 %123 to i8*, !dbg !3161
  %125 = bitcast i8* %124 to i32 (%struct.platform_device*, %struct.gpio_nand*)*, !dbg !3161
  store i32 (%struct.platform_device*, %struct.gpio_nand*)* %125, i32 (%struct.platform_device*, %struct.gpio_nand*)** %probe, align 8, !dbg !3162
  br label %if.end103, !dbg !3163

if.else:                                          ; preds = %if.end97
  %126 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3164
  %dev101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 3, !dbg !3165
  %call102 = call i8* @of_device_get_match_data(%struct.device* %dev101) #7, !dbg !3166
  %127 = bitcast i8* %call102 to i32 (%struct.platform_device*, %struct.gpio_nand*)*, !dbg !3166
  store i32 (%struct.platform_device*, %struct.gpio_nand*)* %127, i32 (%struct.platform_device*, %struct.gpio_nand*)** %probe, align 8, !dbg !3167
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then99
  %128 = load i32 (%struct.platform_device*, %struct.gpio_nand*)*, i32 (%struct.platform_device*, %struct.gpio_nand*)** %probe, align 8, !dbg !3168
  %tobool104 = icmp ne i32 (%struct.platform_device*, %struct.gpio_nand*)* %128, null, !dbg !3168
  br i1 %tobool104, label %if.then105, label %if.end107, !dbg !3170

if.then105:                                       ; preds = %if.end103
  %129 = load i32 (%struct.platform_device*, %struct.gpio_nand*)*, i32 (%struct.platform_device*, %struct.gpio_nand*)** %probe, align 8, !dbg !3171
  %130 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3172
  %131 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3173
  %call106 = call i32 %129(%struct.platform_device* %130, %struct.gpio_nand* %131) #7, !dbg !3171
  store i32 %call106, i32* %err, align 4, !dbg !3174
  br label %if.end107, !dbg !3175

if.end107:                                        ; preds = %if.then105, %if.end103
  %132 = load i32, i32* %err, align 4, !dbg !3176
  %tobool108 = icmp ne i32 %132, 0, !dbg !3176
  br i1 %tobool108, label %if.then109, label %if.end110, !dbg !3178

if.then109:                                       ; preds = %if.end107
  %133 = load i32, i32* %err, align 4, !dbg !3179
  store i32 %133, i32* %retval, align 4, !dbg !3180
  br label %return, !dbg !3180

if.end110:                                        ; preds = %if.end107
  %134 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3181
  %io_read111 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %134, i32 0, i32 13, !dbg !3183
  %135 = load i8 (%struct.gpio_nand*)*, i8 (%struct.gpio_nand*)** %io_read111, align 8, !dbg !3183
  %tobool112 = icmp ne i8 (%struct.gpio_nand*)* %135, null, !dbg !3181
  br i1 %tobool112, label %lor.lhs.false, label %if.then115, !dbg !3184

lor.lhs.false:                                    ; preds = %if.end110
  %136 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3185
  %io_write113 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %136, i32 0, i32 14, !dbg !3186
  %137 = load void (%struct.gpio_nand*, i8)*, void (%struct.gpio_nand*, i8)** %io_write113, align 8, !dbg !3186
  %tobool114 = icmp ne void (%struct.gpio_nand*, i8)* %137, null, !dbg !3185
  br i1 %tobool114, label %if.end117, label %if.then115, !dbg !3187

if.then115:                                       ; preds = %lor.lhs.false, %if.end110
  %138 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3188
  %dev116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 3, !dbg !3188
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !3188
  store i32 -19, i32* %retval, align 4, !dbg !3190
  br label %return, !dbg !3190

if.end117:                                        ; preds = %lor.lhs.false
  %139 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3191
  %base = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %139, i32 0, i32 0, !dbg !3192
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %base, i32 0, i32 1, !dbg !3193
  store %struct.nand_controller_ops* @gpio_nand_ops, %struct.nand_controller_ops** %ops, align 8, !dbg !3194
  %140 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3195
  %base118 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %140, i32 0, i32 0, !dbg !3196
  call void @nand_controller_init(%struct.nand_controller* %base118) #7, !dbg !3197
  %141 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3198
  %base119 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %141, i32 0, i32 0, !dbg !3199
  %142 = load %struct.nand_chip*, %struct.nand_chip** %this, align 8, !dbg !3200
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %142, i32 0, i32 30, !dbg !3201
  store %struct.nand_controller* %base119, %struct.nand_controller** %controller, align 8, !dbg !3202
  %143 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3203
  %gpiod_nwp120 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %143, i32 0, i32 5, !dbg !3204
  %144 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwp120, align 8, !dbg !3204
  call void @gpiod_set_value(%struct.gpio_desc* %144, i32 0) #7, !dbg !3205
  %145 = load %struct.nand_chip*, %struct.nand_chip** %this, align 8, !dbg !3206
  %call121 = call i32 @nand_scan(%struct.nand_chip* %145, i32 1) #7, !dbg !3207
  store i32 %call121, i32* %err, align 4, !dbg !3208
  %146 = load i32, i32* %err, align 4, !dbg !3209
  %tobool122 = icmp ne i32 %146, 0, !dbg !3209
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !3211

if.then123:                                       ; preds = %if.end117
  %147 = load i32, i32* %err, align 4, !dbg !3212
  store i32 %147, i32* %retval, align 4, !dbg !3213
  br label %return, !dbg !3213

if.end124:                                        ; preds = %if.end117
  %148 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3214
  %149 = load %struct.mtd_partition*, %struct.mtd_partition** %partitions, align 8, !dbg !3214
  %150 = load i32, i32* %num_partitions, align 4, !dbg !3214
  %call125 = call i32 @mtd_device_parse_register(%struct.mtd_info* %148, i8** null, %struct.mtd_part_parser_data* null, %struct.mtd_partition* %149, i32 %150) #7, !dbg !3214
  store i32 %call125, i32* %err, align 4, !dbg !3215
  %151 = load i32, i32* %err, align 4, !dbg !3216
  %tobool126 = icmp ne i32 %151, 0, !dbg !3216
  br i1 %tobool126, label %if.then127, label %if.end128, !dbg !3218

if.then127:                                       ; preds = %if.end124
  br label %err_nand_cleanup, !dbg !3219

if.end128:                                        ; preds = %if.end124
  store i32 0, i32* %retval, align 4, !dbg !3220
  br label %return, !dbg !3220

err_nand_cleanup:                                 ; preds = %if.then127
  call void @llvm.dbg.label(metadata !3221), !dbg !3222
  %152 = load %struct.nand_chip*, %struct.nand_chip** %this, align 8, !dbg !3223
  call void @nand_cleanup(%struct.nand_chip* %152) #7, !dbg !3224
  %153 = load i32, i32* %err, align 4, !dbg !3225
  store i32 %153, i32* %retval, align 4, !dbg !3226
  br label %return, !dbg !3226

return:                                           ; preds = %err_nand_cleanup, %if.end128, %if.then123, %if.then115, %if.then109, %if.then94, %if.then83, %if.then73, %if.then63, %if.then53, %if.then43, %if.then33, %if.then23, %if.then14, %if.then4
  %154 = load i32, i32* %retval, align 4, !dbg !3227
  ret i32 %154, !dbg !3227
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gpio_nand_remove(%struct.platform_device* %pdev) #2 !dbg !3228 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv = alloca %struct.gpio_nand*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv, metadata !3231, metadata !DIExpression()), !dbg !3232
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3233
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #7, !dbg !3234
  %1 = bitcast i8* %call to %struct.gpio_nand*, !dbg !3234
  store %struct.gpio_nand* %1, %struct.gpio_nand** %priv, align 8, !dbg !3232
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3235, metadata !DIExpression()), !dbg !3236
  %2 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3237
  %nand_chip = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %2, i32 0, i32 1, !dbg !3238
  %call1 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %nand_chip) #7, !dbg !3239
  store %struct.mtd_info* %call1, %struct.mtd_info** %mtd, align 8, !dbg !3236
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3240, metadata !DIExpression()), !dbg !3241
  %3 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3242
  %gpiod_nwp = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %3, i32 0, i32 5, !dbg !3243
  %4 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwp, align 8, !dbg !3243
  call void @gpiod_set_value(%struct.gpio_desc* %4, i32 1) #7, !dbg !3244
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3245
  %call2 = call i32 @mtd_device_unregister(%struct.mtd_info* %5) #7, !dbg !3246
  store i32 %call2, i32* %ret, align 4, !dbg !3247
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3248, metadata !DIExpression()), !dbg !3250
  %6 = load i32, i32* %ret, align 4, !dbg !3250
  %tobool = icmp ne i32 %6, 0, !dbg !3250
  %lnot = xor i1 %tobool, true, !dbg !3250
  %lnot3 = xor i1 %lnot, true, !dbg !3250
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3250
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3250
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !3251
  %tobool4 = icmp ne i32 %7, 0, !dbg !3251
  %lnot5 = xor i1 %tobool4, true, !dbg !3251
  %lnot7 = xor i1 %lnot5, true, !dbg !3251
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3251
  %conv = sext i32 %lnot.ext8 to i64, !dbg !3251
  %tobool9 = icmp ne i64 %conv, 0, !dbg !3251
  br i1 %tobool9, label %if.then, label %if.end, !dbg !3250

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3251

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !3253

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !3255

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !3253

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 405, i32 2305, i64 12) #9, !dbg !3257, !srcloc !3259
  br label %do.end12, !dbg !3257

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 175) #9, !dbg !3260, !srcloc !3262
  br label %do.body13, !dbg !3253

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3263

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !3253

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !3253

if.end:                                           ; preds = %do.end15, %entry
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !3250
  %tobool16 = icmp ne i32 %8, 0, !dbg !3250
  %lnot17 = xor i1 %tobool16, true, !dbg !3250
  %lnot19 = xor i1 %lnot17, true, !dbg !3250
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3250
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3250
  store i64 %conv21, i64* %tmp, align 8, !dbg !3251
  %9 = load i64, i64* %tmp, align 8, !dbg !3250
  %10 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3265
  %call22 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10) #7, !dbg !3266
  call void @nand_cleanup(%struct.nand_chip* %call22) #7, !dbg !3267
  ret i32 0, !dbg !3268
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_platdata(%struct.device* %dev) #2 !dbg !3269 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3272, metadata !DIExpression()), !dbg !3273
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3274
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 7, !dbg !3275
  %1 = load i8*, i8** %platform_data, align 8, !dbg !3275
  ret i8* %1, !dbg !3276
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !3277 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3280, metadata !DIExpression()), !dbg !3281
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3282, metadata !DIExpression()), !dbg !3283
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !3284, metadata !DIExpression()), !dbg !3285
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3286
  %1 = load i64, i64* %size.addr, align 8, !dbg !3287
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !3288
  %or = or i32 %2, 256, !dbg !3289
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #7, !dbg !3290
  ret i8* %call, !dbg !3291
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #2 !dbg !3292 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3295, metadata !DIExpression()), !dbg !3296
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3297
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3298
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !3299
  ret %struct.mtd_info* %mtd, !dbg !3300
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_set_controller_data(%struct.nand_chip* %chip, i8* %priv) #2 !dbg !3301 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %priv.addr = alloca i8*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  %0 = load i8*, i8** %priv.addr, align 8, !dbg !3308
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3309
  %priv1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 32, !dbg !3310
  store i8* %0, i8** %priv1, align 8, !dbg !3311
  ret void, !dbg !3312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_set_flash_node(%struct.nand_chip* %chip, %struct.device_node* %np) #2 !dbg !3313 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3318, metadata !DIExpression()), !dbg !3319
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3320
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #7, !dbg !3321
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3322
  call void @mtd_set_of_node(%struct.mtd_info* %call, %struct.device_node* %1) #7, !dbg !3323
  ret void, !dbg !3324
}

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !3325 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3329, metadata !DIExpression()), !dbg !3330
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3331
  %1 = ptrtoint i8* %0 to i64, !dbg !3331
  %2 = inttoptr i64 %1 to i8*, !dbg !3331
  %3 = ptrtoint i8* %2 to i64, !dbg !3331
  %cmp = icmp uge i64 %3, -4095, !dbg !3331
  %lnot = xor i1 %cmp, true, !dbg !3331
  %lnot1 = xor i1 %lnot, true, !dbg !3331
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3331
  %conv = sext i32 %lnot.ext to i64, !dbg !3331
  %tobool = icmp ne i64 %conv, 0, !dbg !3331
  ret i1 %tobool, !dbg !3332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !3333 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3336, metadata !DIExpression()), !dbg !3337
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3338
  %1 = ptrtoint i8* %0 to i64, !dbg !3339
  ret i64 %1, !dbg !3340
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !3341 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3344, metadata !DIExpression()), !dbg !3345
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3346, metadata !DIExpression()), !dbg !3347
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3348
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3349
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3350
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #7, !dbg !3351
  ret void, !dbg !3352
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local %struct.gpio_descs* @devm_gpiod_get_array_optional(%struct.device*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @gpio_nand_io_read(%struct.gpio_nand* %priv) #2 !dbg !3353 {
entry:
  %priv.addr = alloca %struct.gpio_nand*, align 8
  %res = alloca i8, align 1
  %data_gpiods = alloca %struct.gpio_descs*, align 8
  %values = alloca [1 x i64], align 8
  store %struct.gpio_nand* %priv, %struct.gpio_nand** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv.addr, metadata !3354, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.declare(metadata i8* %res, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.declare(metadata %struct.gpio_descs** %data_gpiods, metadata !3358, metadata !DIExpression()), !dbg !3359
  %0 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3360
  %data_gpiods1 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %0, i32 0, i32 9, !dbg !3361
  %1 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods1, align 8, !dbg !3361
  store %struct.gpio_descs* %1, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3359
  call void @llvm.dbg.declare(metadata [1 x i64]* %values, metadata !3362, metadata !DIExpression()), !dbg !3363
  %2 = bitcast [1 x i64]* %values to i8*, !dbg !3363
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false), !dbg !3363
  %3 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3364
  %gpiod_nre = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %3, i32 0, i32 4, !dbg !3365
  %4 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nre, align 8, !dbg !3365
  call void @gpiod_set_value(%struct.gpio_desc* %4, i32 1) #7, !dbg !3366
  %5 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3367
  %tRP = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %5, i32 0, i32 11, !dbg !3367
  %6 = load i32, i32* %tRP, align 4, !dbg !3367
  %7 = call i1 @llvm.is.constant.i32(i32 %6), !dbg !3367
  br i1 %7, label %if.then, label %if.else5, !dbg !3370

if.then:                                          ; preds = %entry
  %8 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3371
  %tRP2 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %8, i32 0, i32 11, !dbg !3371
  %9 = load i32, i32* %tRP2, align 4, !dbg !3371
  %div = udiv i32 %9, 20000, !dbg !3371
  %cmp = icmp uge i32 %div, 1, !dbg !3371
  br i1 %cmp, label %if.then3, label %if.else, !dbg !3374

if.then3:                                         ; preds = %if.then
  call void @__bad_ndelay() #7, !dbg !3371
  br label %if.end, !dbg !3371

if.else:                                          ; preds = %if.then
  %10 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3371
  %tRP4 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %10, i32 0, i32 11, !dbg !3371
  %11 = load i32, i32* %tRP4, align 4, !dbg !3371
  %conv = zext i32 %11 to i64, !dbg !3371
  %mul = mul i64 %conv, 5, !dbg !3371
  call void @__const_udelay(i64 %mul) #7, !dbg !3371
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end8, !dbg !3374

if.else5:                                         ; preds = %entry
  %12 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3375
  %tRP6 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %12, i32 0, i32 11, !dbg !3375
  %13 = load i32, i32* %tRP6, align 4, !dbg !3375
  %conv7 = zext i32 %13 to i64, !dbg !3375
  call void @__ndelay(i64 %conv7) #7, !dbg !3375
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.end
  %14 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3377
  %ndescs = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %14, i32 0, i32 1, !dbg !3378
  %15 = load i32, i32* %ndescs, align 8, !dbg !3378
  %16 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3379
  %desc = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %16, i32 0, i32 2, !dbg !3380
  %arraydecay = getelementptr inbounds [0 x %struct.gpio_desc*], [0 x %struct.gpio_desc*]* %desc, i64 0, i64 0, !dbg !3379
  %17 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3381
  %info = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %17, i32 0, i32 0, !dbg !3382
  %18 = load %struct.gpio_array*, %struct.gpio_array** %info, align 8, !dbg !3382
  %arraydecay9 = getelementptr inbounds [1 x i64], [1 x i64]* %values, i64 0, i64 0, !dbg !3383
  %call = call i32 @gpiod_get_raw_array_value(i32 %15, %struct.gpio_desc** %arraydecay, %struct.gpio_array* %18, i64* %arraydecay9) #7, !dbg !3384
  %19 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3385
  %gpiod_nre10 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %19, i32 0, i32 4, !dbg !3386
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nre10, align 8, !dbg !3386
  call void @gpiod_set_value(%struct.gpio_desc* %20, i32 0) #7, !dbg !3387
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %values, i64 0, i64 0, !dbg !3388
  %21 = load i64, i64* %arrayidx, align 8, !dbg !3388
  %conv11 = trunc i64 %21 to i8, !dbg !3388
  store i8 %conv11, i8* %res, align 1, !dbg !3389
  %22 = load i8, i8* %res, align 1, !dbg !3390
  ret i8 %22, !dbg !3391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_nand_io_write(%struct.gpio_nand* %priv, i8 zeroext %byte) #2 !dbg !3392 {
entry:
  %priv.addr = alloca %struct.gpio_nand*, align 8
  %byte.addr = alloca i8, align 1
  %data_gpiods = alloca %struct.gpio_descs*, align 8
  %values = alloca [1 x i64], align 8
  store %struct.gpio_nand* %priv, %struct.gpio_nand** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv.addr, metadata !3393, metadata !DIExpression()), !dbg !3394
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.declare(metadata %struct.gpio_descs** %data_gpiods, metadata !3397, metadata !DIExpression()), !dbg !3398
  %0 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3399
  %data_gpiods1 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %0, i32 0, i32 9, !dbg !3400
  %1 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods1, align 8, !dbg !3400
  store %struct.gpio_descs* %1, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3398
  call void @llvm.dbg.declare(metadata [1 x i64]* %values, metadata !3401, metadata !DIExpression()), !dbg !3402
  %arrayinit.begin = getelementptr inbounds [1 x i64], [1 x i64]* %values, i64 0, i64 0, !dbg !3403
  %2 = load i8, i8* %byte.addr, align 1, !dbg !3404
  %conv = zext i8 %2 to i64, !dbg !3404
  store i64 %conv, i64* %arrayinit.begin, align 8, !dbg !3403
  %3 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3405
  %ndescs = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %3, i32 0, i32 1, !dbg !3406
  %4 = load i32, i32* %ndescs, align 8, !dbg !3406
  %5 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3407
  %desc = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %5, i32 0, i32 2, !dbg !3408
  %arraydecay = getelementptr inbounds [0 x %struct.gpio_desc*], [0 x %struct.gpio_desc*]* %desc, i64 0, i64 0, !dbg !3407
  %6 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3409
  %info = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %6, i32 0, i32 0, !dbg !3410
  %7 = load %struct.gpio_array*, %struct.gpio_array** %info, align 8, !dbg !3410
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %values, i64 0, i64 0, !dbg !3411
  %call = call i32 @gpiod_set_raw_array_value(i32 %4, %struct.gpio_desc** %arraydecay, %struct.gpio_array* %7, i64* %arraydecay2) #7, !dbg !3412
  %8 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3413
  call void @gpio_nand_write_commit(%struct.gpio_nand* %8) #7, !dbg !3414
  ret void, !dbg !3415
}

; Function Attrs: noredzone
declare dso_local i8* @of_device_get_match_data(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_controller_init(%struct.nand_controller* %nfc) #2 !dbg !2831 {
entry:
  %nfc.addr = alloca %struct.nand_controller*, align 8
  store %struct.nand_controller* %nfc, %struct.nand_controller** %nfc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_controller** %nfc.addr, metadata !3416, metadata !DIExpression()), !dbg !3417
  br label %do.body, !dbg !3418

do.body:                                          ; preds = %entry
  %0 = load %struct.nand_controller*, %struct.nand_controller** %nfc.addr, align 8, !dbg !3419
  %lock = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %0, i32 0, i32 0, !dbg !3419
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), %struct.lock_class_key* @nand_controller_init.__key) #7, !dbg !3419
  br label %do.end, !dbg !3419

do.end:                                           ; preds = %do.body
  ret void, !dbg !3421
}

; Function Attrs: noredzone
declare dso_local void @gpiod_set_value(%struct.gpio_desc*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_scan(%struct.nand_chip* %chip, i32 %max_chips) #2 !dbg !3422 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %max_chips.addr = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3425, metadata !DIExpression()), !dbg !3426
  store i32 %max_chips, i32* %max_chips.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_chips.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3429
  %1 = load i32, i32* %max_chips.addr, align 4, !dbg !3430
  %call = call i32 @nand_scan_with_ids(%struct.nand_chip* %0, i32 %1, %struct.nand_flash_dev* null) #7, !dbg !3431
  ret i32 %call, !dbg !3432
}

; Function Attrs: noredzone
declare dso_local i32 @mtd_device_parse_register(%struct.mtd_info*, i8**, %struct.mtd_part_parser_data*, %struct.mtd_partition*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @nand_cleanup(%struct.nand_chip*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtd_set_of_node(%struct.mtd_info* %mtd, %struct.device_node* %np) #2 !dbg !3433 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3436, metadata !DIExpression()), !dbg !3437
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3438, metadata !DIExpression()), !dbg !3439
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3440
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3441
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 55, !dbg !3442
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !3443
  store %struct.device_node* %0, %struct.device_node** %of_node, align 8, !dbg !3444
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3445
  %name = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 13, !dbg !3447
  %3 = load i8*, i8** %name, align 8, !dbg !3447
  %tobool = icmp ne i8* %3, null, !dbg !3445
  br i1 %tobool, label %if.end, label %if.then, !dbg !3448

if.then:                                          ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3449
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3450
  %name1 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 13, !dbg !3451
  %call = call i32 @of_property_read_string(%struct.device_node* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %name1) #7, !dbg !3452
  br label %if.end, !dbg !3452

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3453
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3454 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3459, metadata !DIExpression()), !dbg !3460
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3461
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3462
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3463
  store i8* %0, i8** %driver_data, align 8, !dbg !3464
  ret void, !dbg !3465
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noredzone
declare dso_local void @__bad_ndelay() #1

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local void @__ndelay(i64) #1

; Function Attrs: noredzone
declare dso_local i32 @gpiod_get_raw_array_value(i32, %struct.gpio_desc**, %struct.gpio_array*, i64*) #1

; Function Attrs: noredzone
declare dso_local i32 @gpiod_set_raw_array_value(i32, %struct.gpio_desc**, %struct.gpio_array*, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_nand_write_commit(%struct.gpio_nand* %priv) #2 !dbg !3466 {
entry:
  %priv.addr = alloca %struct.gpio_nand*, align 8
  store %struct.gpio_nand* %priv, %struct.gpio_nand** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv.addr, metadata !3469, metadata !DIExpression()), !dbg !3470
  %0 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3471
  %gpiod_nwe = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %0, i32 0, i32 6, !dbg !3472
  %1 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwe, align 8, !dbg !3472
  call void @gpiod_set_value(%struct.gpio_desc* %1, i32 1) #7, !dbg !3473
  %2 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3474
  %tWP = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %2, i32 0, i32 12, !dbg !3474
  %3 = load i32, i32* %tWP, align 8, !dbg !3474
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !3474
  br i1 %4, label %if.then, label %if.else4, !dbg !3477

if.then:                                          ; preds = %entry
  %5 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3478
  %tWP1 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %5, i32 0, i32 12, !dbg !3478
  %6 = load i32, i32* %tWP1, align 8, !dbg !3478
  %div = udiv i32 %6, 20000, !dbg !3478
  %cmp = icmp uge i32 %div, 1, !dbg !3478
  br i1 %cmp, label %if.then2, label %if.else, !dbg !3481

if.then2:                                         ; preds = %if.then
  call void @__bad_ndelay() #7, !dbg !3478
  br label %if.end, !dbg !3478

if.else:                                          ; preds = %if.then
  %7 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3478
  %tWP3 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %7, i32 0, i32 12, !dbg !3478
  %8 = load i32, i32* %tWP3, align 8, !dbg !3478
  %conv = zext i32 %8 to i64, !dbg !3478
  %mul = mul i64 %conv, 5, !dbg !3478
  call void @__const_udelay(i64 %mul) #7, !dbg !3478
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7, !dbg !3481

if.else4:                                         ; preds = %entry
  %9 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3482
  %tWP5 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %9, i32 0, i32 12, !dbg !3482
  %10 = load i32, i32* %tWP5, align 8, !dbg !3482
  %conv6 = zext i32 %10 to i64, !dbg !3482
  call void @__ndelay(i64 %conv6) #7, !dbg !3482
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.end
  %11 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3484
  %gpiod_nwe8 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %11, i32 0, i32 6, !dbg !3485
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nwe8, align 8, !dbg !3485
  call void @gpiod_set_value(%struct.gpio_desc* %12, i32 0) #7, !dbg !3486
  ret void, !dbg !3487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gpio_nand_attach_chip(%struct.nand_chip* %chip) #2 !dbg !3488 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3489, metadata !DIExpression()), !dbg !3490
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3491
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 31, !dbg !3492
  %engine_type = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 0, !dbg !3493
  store i32 2, i32* %engine_type, align 8, !dbg !3494
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3495
  %ecc1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 31, !dbg !3497
  %algo = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc1, i32 0, i32 2, !dbg !3498
  %2 = load i32, i32* %algo, align 8, !dbg !3498
  %cmp = icmp eq i32 %2, 0, !dbg !3499
  br i1 %cmp, label %if.then, label %if.end, !dbg !3500

if.then:                                          ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3501
  %ecc2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 31, !dbg !3502
  %algo3 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc2, i32 0, i32 2, !dbg !3503
  store i32 1, i32* %algo3, align 8, !dbg !3504
  br label %if.end, !dbg !3501

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !3505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gpio_nand_exec_op(%struct.nand_chip* %this, %struct.nand_operation* %op, i1 zeroext %check_only) #2 !dbg !3506 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %op.addr = alloca %struct.nand_operation*, align 8
  %check_only.addr = alloca i8, align 1
  %priv = alloca %struct.gpio_nand*, align 8
  %instr = alloca %struct.nand_op_instr*, align 8
  %ret = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !3507, metadata !DIExpression()), !dbg !3508
  store %struct.nand_operation* %op, %struct.nand_operation** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_operation** %op.addr, metadata !3509, metadata !DIExpression()), !dbg !3510
  %frombool = zext i1 %check_only to i8
  store i8 %frombool, i8* %check_only.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %check_only.addr, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv, metadata !3513, metadata !DIExpression()), !dbg !3514
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3515
  %call = call i8* @nand_get_controller_data(%struct.nand_chip* %0) #7, !dbg !3516
  %1 = bitcast i8* %call to %struct.gpio_nand*, !dbg !3516
  store %struct.gpio_nand* %1, %struct.gpio_nand** %priv, align 8, !dbg !3514
  call void @llvm.dbg.declare(metadata %struct.nand_op_instr** %instr, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3519, metadata !DIExpression()), !dbg !3520
  store i32 0, i32* %ret, align 4, !dbg !3520
  %2 = load i8, i8* %check_only.addr, align 1, !dbg !3521
  %tobool = trunc i8 %2 to i1, !dbg !3521
  br i1 %tobool, label %if.then, label %if.end, !dbg !3523

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3524
  br label %return, !dbg !3524

if.end:                                           ; preds = %entry
  %3 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3525
  call void @gpio_nand_ctrl_cs(%struct.gpio_nand* %3, i1 zeroext true) #7, !dbg !3526
  %4 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !3527
  %instrs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %4, i32 0, i32 1, !dbg !3529
  %5 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instrs, align 8, !dbg !3529
  store %struct.nand_op_instr* %5, %struct.nand_op_instr** %instr, align 8, !dbg !3530
  br label %for.cond, !dbg !3531

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3532
  %7 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !3534
  %instrs1 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %7, i32 0, i32 1, !dbg !3535
  %8 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instrs1, align 8, !dbg !3535
  %9 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !3536
  %ninstrs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %9, i32 0, i32 2, !dbg !3537
  %10 = load i32, i32* %ninstrs, align 8, !dbg !3537
  %idx.ext = zext i32 %10 to i64, !dbg !3538
  %add.ptr = getelementptr %struct.nand_op_instr, %struct.nand_op_instr* %8, i64 %idx.ext, !dbg !3538
  %cmp = icmp ult %struct.nand_op_instr* %6, %add.ptr, !dbg !3539
  br i1 %cmp, label %for.body, label %for.end, !dbg !3540

for.body:                                         ; preds = %for.cond
  %11 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3541
  %type = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %11, i32 0, i32 0, !dbg !3543
  %12 = load i32, i32* %type, align 8, !dbg !3543
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
    i32 4, label %sw.bb19
  ], !dbg !3544

sw.bb:                                            ; preds = %for.body
  %13 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3545
  %gpiod_cle = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %13, i32 0, i32 8, !dbg !3547
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_cle, align 8, !dbg !3547
  call void @gpiod_set_value(%struct.gpio_desc* %14, i32 1) #7, !dbg !3548
  %15 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3549
  %16 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3550
  %ctx = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %16, i32 0, i32 1, !dbg !3551
  %cmd = bitcast %union.anon.38* %ctx to %struct.nand_op_cmd_instr*, !dbg !3552
  %opcode = getelementptr inbounds %struct.nand_op_cmd_instr, %struct.nand_op_cmd_instr* %cmd, i32 0, i32 0, !dbg !3553
  call void @gpio_nand_write_buf(%struct.gpio_nand* %15, i8* %opcode, i32 1) #7, !dbg !3554
  %17 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3555
  %gpiod_cle2 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %17, i32 0, i32 8, !dbg !3556
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_cle2, align 8, !dbg !3556
  call void @gpiod_set_value(%struct.gpio_desc* %18, i32 0) #7, !dbg !3557
  br label %sw.epilog, !dbg !3558

sw.bb3:                                           ; preds = %for.body
  %19 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3559
  %gpiod_ale = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %19, i32 0, i32 7, !dbg !3560
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_ale, align 8, !dbg !3560
  call void @gpiod_set_value(%struct.gpio_desc* %20, i32 1) #7, !dbg !3561
  %21 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3562
  %22 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3563
  %ctx4 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %22, i32 0, i32 1, !dbg !3564
  %addr = bitcast %union.anon.38* %ctx4 to %struct.nand_op_addr_instr*, !dbg !3565
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, %struct.nand_op_addr_instr* %addr, i32 0, i32 1, !dbg !3566
  %23 = load i8*, i8** %addrs, align 8, !dbg !3566
  %24 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3567
  %ctx5 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %24, i32 0, i32 1, !dbg !3568
  %addr6 = bitcast %union.anon.38* %ctx5 to %struct.nand_op_addr_instr*, !dbg !3569
  %naddrs = getelementptr inbounds %struct.nand_op_addr_instr, %struct.nand_op_addr_instr* %addr6, i32 0, i32 0, !dbg !3570
  %25 = load i32, i32* %naddrs, align 8, !dbg !3570
  call void @gpio_nand_write_buf(%struct.gpio_nand* %21, i8* %23, i32 %25) #7, !dbg !3571
  %26 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3572
  %gpiod_ale7 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %26, i32 0, i32 7, !dbg !3573
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_ale7, align 8, !dbg !3573
  call void @gpiod_set_value(%struct.gpio_desc* %27, i32 0) #7, !dbg !3574
  br label %sw.epilog, !dbg !3575

sw.bb8:                                           ; preds = %for.body
  %28 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3576
  %29 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3577
  %ctx9 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %29, i32 0, i32 1, !dbg !3578
  %data = bitcast %union.anon.38* %ctx9 to %struct.nand_op_data_instr*, !dbg !3579
  %buf = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data, i32 0, i32 1, !dbg !3580
  %in = bitcast %union.anon.39* %buf to i8**, !dbg !3581
  %30 = load i8*, i8** %in, align 8, !dbg !3581
  %31 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3582
  %ctx10 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %31, i32 0, i32 1, !dbg !3583
  %data11 = bitcast %union.anon.38* %ctx10 to %struct.nand_op_data_instr*, !dbg !3584
  %len = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data11, i32 0, i32 0, !dbg !3585
  %32 = load i32, i32* %len, align 8, !dbg !3585
  call void @gpio_nand_read_buf(%struct.gpio_nand* %28, i8* %30, i32 %32) #7, !dbg !3586
  br label %sw.epilog, !dbg !3587

sw.bb12:                                          ; preds = %for.body
  %33 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3588
  %34 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3589
  %ctx13 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %34, i32 0, i32 1, !dbg !3590
  %data14 = bitcast %union.anon.38* %ctx13 to %struct.nand_op_data_instr*, !dbg !3591
  %buf15 = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data14, i32 0, i32 1, !dbg !3592
  %out = bitcast %union.anon.39* %buf15 to i8**, !dbg !3593
  %35 = load i8*, i8** %out, align 8, !dbg !3593
  %36 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3594
  %ctx16 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %36, i32 0, i32 1, !dbg !3595
  %data17 = bitcast %union.anon.38* %ctx16 to %struct.nand_op_data_instr*, !dbg !3596
  %len18 = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data17, i32 0, i32 0, !dbg !3597
  %37 = load i32, i32* %len18, align 8, !dbg !3597
  call void @gpio_nand_write_buf(%struct.gpio_nand* %33, i8* %35, i32 %37) #7, !dbg !3598
  br label %sw.epilog, !dbg !3599

sw.bb19:                                          ; preds = %for.body
  %38 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3600
  %gpiod_rdy = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %38, i32 0, i32 2, !dbg !3601
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_rdy, align 8, !dbg !3601
  %tobool20 = icmp ne %struct.gpio_desc* %39, null, !dbg !3600
  br i1 %tobool20, label %cond.true, label %cond.false, !dbg !3600

cond.true:                                        ; preds = %sw.bb19
  %40 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3602
  %41 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3603
  %gpiod_rdy21 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %41, i32 0, i32 2, !dbg !3604
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_rdy21, align 8, !dbg !3604
  %43 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3605
  %ctx22 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %43, i32 0, i32 1, !dbg !3606
  %waitrdy = bitcast %union.anon.38* %ctx22 to %struct.nand_op_waitrdy_instr*, !dbg !3607
  %timeout_ms = getelementptr inbounds %struct.nand_op_waitrdy_instr, %struct.nand_op_waitrdy_instr* %waitrdy, i32 0, i32 0, !dbg !3608
  %44 = load i32, i32* %timeout_ms, align 8, !dbg !3608
  %conv = zext i32 %44 to i64, !dbg !3605
  %call23 = call i32 @nand_gpio_waitrdy(%struct.nand_chip* %40, %struct.gpio_desc* %42, i64 %conv) #7, !dbg !3609
  br label %cond.end, !dbg !3600

cond.false:                                       ; preds = %sw.bb19
  %45 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3610
  %46 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3611
  %ctx24 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %46, i32 0, i32 1, !dbg !3612
  %waitrdy25 = bitcast %union.anon.38* %ctx24 to %struct.nand_op_waitrdy_instr*, !dbg !3613
  %timeout_ms26 = getelementptr inbounds %struct.nand_op_waitrdy_instr, %struct.nand_op_waitrdy_instr* %waitrdy25, i32 0, i32 0, !dbg !3614
  %47 = load i32, i32* %timeout_ms26, align 8, !dbg !3614
  %conv27 = zext i32 %47 to i64, !dbg !3611
  %call28 = call i32 @nand_soft_waitrdy(%struct.nand_chip* %45, i64 %conv27) #7, !dbg !3615
  br label %cond.end, !dbg !3600

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call23, %cond.true ], [ %call28, %cond.false ], !dbg !3600
  store i32 %cond, i32* %ret, align 4, !dbg !3616
  br label %sw.epilog, !dbg !3617

sw.epilog:                                        ; preds = %for.body, %cond.end, %sw.bb12, %sw.bb8, %sw.bb3, %sw.bb
  %48 = load i32, i32* %ret, align 4, !dbg !3618
  %tobool29 = icmp ne i32 %48, 0, !dbg !3618
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !3620

if.then30:                                        ; preds = %sw.epilog
  br label %for.end, !dbg !3621

if.end31:                                         ; preds = %sw.epilog
  br label %for.inc, !dbg !3622

for.inc:                                          ; preds = %if.end31
  %49 = load %struct.nand_op_instr*, %struct.nand_op_instr** %instr, align 8, !dbg !3623
  %incdec.ptr = getelementptr %struct.nand_op_instr, %struct.nand_op_instr* %49, i32 1, !dbg !3623
  store %struct.nand_op_instr* %incdec.ptr, %struct.nand_op_instr** %instr, align 8, !dbg !3623
  br label %for.cond, !dbg !3624, !llvm.loop !3625

for.end:                                          ; preds = %if.then30, %for.cond
  %50 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3627
  call void @gpio_nand_ctrl_cs(%struct.gpio_nand* %50, i1 zeroext false) #7, !dbg !3628
  %51 = load i32, i32* %ret, align 4, !dbg !3629
  store i32 %51, i32* %retval, align 4, !dbg !3630
  br label %return, !dbg !3630

return:                                           ; preds = %for.end, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !3631
  ret i32 %52, !dbg !3631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gpio_nand_setup_interface(%struct.nand_chip* %this, i32 %csline, %struct.nand_interface_config* %cf) #2 !dbg !3632 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %csline.addr = alloca i32, align 4
  %cf.addr = alloca %struct.nand_interface_config*, align 8
  %priv = alloca %struct.gpio_nand*, align 8
  %sdr = alloca %struct.nand_sdr_timings*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !3633, metadata !DIExpression()), !dbg !3634
  store i32 %csline, i32* %csline.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %csline.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  store %struct.nand_interface_config* %cf, %struct.nand_interface_config** %cf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_interface_config** %cf.addr, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv, metadata !3639, metadata !DIExpression()), !dbg !3640
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3641
  %call = call i8* @nand_get_controller_data(%struct.nand_chip* %0) #7, !dbg !3642
  %1 = bitcast i8* %call to %struct.gpio_nand*, !dbg !3642
  store %struct.gpio_nand* %1, %struct.gpio_nand** %priv, align 8, !dbg !3640
  call void @llvm.dbg.declare(metadata %struct.nand_sdr_timings** %sdr, metadata !3643, metadata !DIExpression()), !dbg !3646
  %2 = load %struct.nand_interface_config*, %struct.nand_interface_config** %cf.addr, align 8, !dbg !3647
  %call1 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_interface_config* %2) #7, !dbg !3648
  store %struct.nand_sdr_timings* %call1, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3646
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3649, metadata !DIExpression()), !dbg !3650
  %3 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3651
  %call2 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %3) #7, !dbg !3652
  %dev3 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %call2, i32 0, i32 55, !dbg !3653
  store %struct.device* %dev3, %struct.device** %dev, align 8, !dbg !3650
  %4 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3654
  %5 = bitcast %struct.nand_sdr_timings* %4 to i8*, !dbg !3654
  %call4 = call zeroext i1 @IS_ERR(i8* %5) #7, !dbg !3656
  br i1 %call4, label %if.then, label %if.end, !dbg !3657

if.then:                                          ; preds = %entry
  %6 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3658
  %7 = bitcast %struct.nand_sdr_timings* %6 to i8*, !dbg !3658
  %call5 = call i64 @PTR_ERR(i8* %7) #7, !dbg !3659
  %conv = trunc i64 %call5 to i32, !dbg !3659
  store i32 %conv, i32* %retval, align 4, !dbg !3660
  br label %return, !dbg !3660

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %csline.addr, align 4, !dbg !3661
  %cmp = icmp eq i32 %8, -1, !dbg !3663
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !3664

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3665
  br label %return, !dbg !3665

if.end8:                                          ; preds = %if.end
  %9 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3666
  %gpiod_nre = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %9, i32 0, i32 4, !dbg !3668
  %10 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nre, align 8, !dbg !3668
  %tobool = icmp ne %struct.gpio_desc* %10, null, !dbg !3666
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !3669

if.then9:                                         ; preds = %if.end8
  %11 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3670
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %11, i32 0, i32 29, !dbg !3670
  %12 = load i32, i32* %tRP_min, align 4, !dbg !3670
  %add = add i32 %12, 1000, !dbg !3670
  %sub = sub i32 %add, 1, !dbg !3670
  %div = udiv i32 %sub, 1000, !dbg !3670
  %13 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3672
  %tRP = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %13, i32 0, i32 11, !dbg !3673
  store i32 %div, i32* %tRP, align 4, !dbg !3674
  br label %if.end10, !dbg !3675

if.end10:                                         ; preds = %if.then9, %if.end8
  %14 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3676
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %14, i32 0, i32 36, !dbg !3676
  %15 = load i32, i32* %tWP_min, align 8, !dbg !3676
  %add11 = add i32 %15, 1000, !dbg !3676
  %sub12 = sub i32 %add11, 1, !dbg !3676
  %div13 = udiv i32 %sub12, 1000, !dbg !3676
  %16 = load %struct.gpio_nand*, %struct.gpio_nand** %priv, align 8, !dbg !3677
  %tWP = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %16, i32 0, i32 12, !dbg !3678
  store i32 %div13, i32* %tWP, align 8, !dbg !3679
  store i32 0, i32* %retval, align 4, !dbg !3680
  br label %return, !dbg !3680

return:                                           ; preds = %if.end10, %if.then7, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !3681
  ret i32 %17, !dbg !3681
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @nand_get_controller_data(%struct.nand_chip* %chip) #2 !dbg !3682 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3685, metadata !DIExpression()), !dbg !3686
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3687
  %priv = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 32, !dbg !3688
  %1 = load i8*, i8** %priv, align 8, !dbg !3688
  ret i8* %1, !dbg !3689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_nand_ctrl_cs(%struct.gpio_nand* %priv, i1 zeroext %assert) #2 !dbg !3690 {
entry:
  %priv.addr = alloca %struct.gpio_nand*, align 8
  %assert.addr = alloca i8, align 1
  store %struct.gpio_nand* %priv, %struct.gpio_nand** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv.addr, metadata !3693, metadata !DIExpression()), !dbg !3694
  %frombool = zext i1 %assert to i8
  store i8 %frombool, i8* %assert.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %assert.addr, metadata !3695, metadata !DIExpression()), !dbg !3696
  %0 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3697
  %gpiod_nce = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %0, i32 0, i32 3, !dbg !3698
  %1 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod_nce, align 8, !dbg !3698
  %2 = load i8, i8* %assert.addr, align 1, !dbg !3699
  %tobool = trunc i8 %2 to i1, !dbg !3699
  %conv = zext i1 %tobool to i32, !dbg !3699
  call void @gpiod_set_value(%struct.gpio_desc* %1, i32 %conv) #7, !dbg !3700
  ret void, !dbg !3701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_nand_write_buf(%struct.gpio_nand* %priv, i8* %buf, i32 %len) #2 !dbg !3702 {
entry:
  %priv.addr = alloca %struct.gpio_nand*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gpio_nand* %priv, %struct.gpio_nand** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv.addr, metadata !3705, metadata !DIExpression()), !dbg !3706
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3711, metadata !DIExpression()), !dbg !3712
  store i32 0, i32* %i, align 4, !dbg !3712
  %0 = load i32, i32* %len.addr, align 4, !dbg !3713
  %cmp = icmp sgt i32 %0, 0, !dbg !3715
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3716

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3717
  %data_in = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %1, i32 0, i32 10, !dbg !3718
  %2 = load i8, i8* %data_in, align 8, !dbg !3718
  %tobool = trunc i8 %2 to i1, !dbg !3718
  br i1 %tobool, label %if.then, label %if.end, !dbg !3719

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3720
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3721
  %5 = load i32, i32* %i, align 4, !dbg !3722
  %inc = add i32 %5, 1, !dbg !3722
  store i32 %inc, i32* %i, align 4, !dbg !3722
  %idxprom = sext i32 %5 to i64, !dbg !3721
  %arrayidx = getelementptr i8, i8* %4, i64 %idxprom, !dbg !3721
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3721
  call void @gpio_nand_dir_output(%struct.gpio_nand* %3, i8 zeroext %6) #7, !dbg !3723
  br label %if.end, !dbg !3723

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond, !dbg !3724

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !3725
  %8 = load i32, i32* %len.addr, align 4, !dbg !3726
  %cmp1 = icmp slt i32 %7, %8, !dbg !3727
  br i1 %cmp1, label %while.body, label %while.end, !dbg !3724

while.body:                                       ; preds = %while.cond
  %9 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3728
  %io_write = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %9, i32 0, i32 14, !dbg !3729
  %10 = load void (%struct.gpio_nand*, i8)*, void (%struct.gpio_nand*, i8)** %io_write, align 8, !dbg !3729
  %11 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3730
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !3731
  %13 = load i32, i32* %i, align 4, !dbg !3732
  %inc2 = add i32 %13, 1, !dbg !3732
  store i32 %inc2, i32* %i, align 4, !dbg !3732
  %idxprom3 = sext i32 %13 to i64, !dbg !3731
  %arrayidx4 = getelementptr i8, i8* %12, i64 %idxprom3, !dbg !3731
  %14 = load i8, i8* %arrayidx4, align 1, !dbg !3731
  call void %10(%struct.gpio_nand* %11, i8 zeroext %14) #7, !dbg !3728
  br label %while.cond, !dbg !3724, !llvm.loop !3733

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_nand_read_buf(%struct.gpio_nand* %priv, i8* %buf, i32 %len) #2 !dbg !3736 {
entry:
  %priv.addr = alloca %struct.gpio_nand*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gpio_nand* %priv, %struct.gpio_nand** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv.addr, metadata !3739, metadata !DIExpression()), !dbg !3740
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3743, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3745, metadata !DIExpression()), !dbg !3746
  %0 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3747
  %data_gpiods = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %0, i32 0, i32 9, !dbg !3749
  %1 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3749
  %tobool = icmp ne %struct.gpio_descs* %1, null, !dbg !3747
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3750

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3751
  %data_in = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %2, i32 0, i32 10, !dbg !3752
  %3 = load i8, i8* %data_in, align 8, !dbg !3752
  %tobool1 = trunc i8 %3 to i1, !dbg !3752
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3753

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3754
  call void @gpio_nand_dir_input(%struct.gpio_nand* %4) #7, !dbg !3755
  br label %if.end, !dbg !3755

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !dbg !3756
  br label %for.cond, !dbg !3758

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !3759
  %6 = load i32, i32* %len.addr, align 4, !dbg !3761
  %cmp = icmp slt i32 %5, %6, !dbg !3762
  br i1 %cmp, label %for.body, label %for.end, !dbg !3763

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3764
  %io_read = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %7, i32 0, i32 13, !dbg !3765
  %8 = load i8 (%struct.gpio_nand*)*, i8 (%struct.gpio_nand*)** %io_read, align 8, !dbg !3765
  %9 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3766
  %call = call zeroext i8 %8(%struct.gpio_nand* %9) #7, !dbg !3764
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !3767
  %11 = load i32, i32* %i, align 4, !dbg !3768
  %idxprom = sext i32 %11 to i64, !dbg !3767
  %arrayidx = getelementptr i8, i8* %10, i64 %idxprom, !dbg !3767
  store i8 %call, i8* %arrayidx, align 1, !dbg !3769
  br label %for.inc, !dbg !3767

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !3770
  %inc = add i32 %12, 1, !dbg !3770
  store i32 %inc, i32* %i, align 4, !dbg !3770
  br label %for.cond, !dbg !3771, !llvm.loop !3772

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3774
}

; Function Attrs: noredzone
declare dso_local i32 @nand_gpio_waitrdy(%struct.nand_chip*, %struct.gpio_desc*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @nand_soft_waitrdy(%struct.nand_chip*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_nand_dir_output(%struct.gpio_nand* %priv, i8 zeroext %byte) #2 !dbg !3775 {
entry:
  %priv.addr = alloca %struct.gpio_nand*, align 8
  %byte.addr = alloca i8, align 1
  %data_gpiods = alloca %struct.gpio_descs*, align 8
  %values = alloca [1 x i64], align 8
  %i = alloca i32, align 4
  store %struct.gpio_nand* %priv, %struct.gpio_nand** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv.addr, metadata !3776, metadata !DIExpression()), !dbg !3777
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !3778, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.declare(metadata %struct.gpio_descs** %data_gpiods, metadata !3780, metadata !DIExpression()), !dbg !3781
  %0 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3782
  %data_gpiods1 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %0, i32 0, i32 9, !dbg !3783
  %1 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods1, align 8, !dbg !3783
  store %struct.gpio_descs* %1, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3781
  call void @llvm.dbg.declare(metadata [1 x i64]* %values, metadata !3784, metadata !DIExpression()), !dbg !3785
  %arrayinit.begin = getelementptr inbounds [1 x i64], [1 x i64]* %values, i64 0, i64 0, !dbg !3786
  %2 = load i8, i8* %byte.addr, align 1, !dbg !3787
  %conv = zext i8 %2 to i64, !dbg !3787
  store i64 %conv, i64* %arrayinit.begin, align 8, !dbg !3786
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3788, metadata !DIExpression()), !dbg !3789
  store i32 0, i32* %i, align 4, !dbg !3790
  br label %for.cond, !dbg !3792

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !3793
  %4 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3795
  %ndescs = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %4, i32 0, i32 1, !dbg !3796
  %5 = load i32, i32* %ndescs, align 8, !dbg !3796
  %cmp = icmp ult i32 %3, %5, !dbg !3797
  br i1 %cmp, label %for.body, label %for.end, !dbg !3798

for.body:                                         ; preds = %for.cond
  %6 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3799
  %desc = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %6, i32 0, i32 2, !dbg !3800
  %7 = load i32, i32* %i, align 4, !dbg !3801
  %idxprom = sext i32 %7 to i64, !dbg !3799
  %arrayidx = getelementptr [0 x %struct.gpio_desc*], [0 x %struct.gpio_desc*]* %desc, i64 0, i64 %idxprom, !dbg !3799
  %8 = load %struct.gpio_desc*, %struct.gpio_desc** %arrayidx, align 8, !dbg !3799
  %9 = load i32, i32* %i, align 4, !dbg !3802
  %conv3 = sext i32 %9 to i64, !dbg !3802
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %values, i64 0, i64 0, !dbg !3803
  %call = call zeroext i1 @test_bit(i64 %conv3, i64* %arraydecay) #7, !dbg !3804
  %conv4 = zext i1 %call to i32, !dbg !3804
  %call5 = call i32 @gpiod_direction_output_raw(%struct.gpio_desc* %8, i32 %conv4) #7, !dbg !3805
  br label %for.inc, !dbg !3805

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !3806
  %inc = add i32 %10, 1, !dbg !3806
  store i32 %inc, i32* %i, align 4, !dbg !3806
  br label %for.cond, !dbg !3807, !llvm.loop !3808

for.end:                                          ; preds = %for.cond
  %11 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3810
  call void @gpio_nand_write_commit(%struct.gpio_nand* %11) #7, !dbg !3811
  %12 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3812
  %data_in = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %12, i32 0, i32 10, !dbg !3813
  store i8 0, i8* %data_in, align 8, !dbg !3814
  ret void, !dbg !3815
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_direction_output_raw(%struct.gpio_desc*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !3816 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3823, metadata !DIExpression()), !dbg !3826
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3828, metadata !DIExpression()), !dbg !3829
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3830, metadata !DIExpression()), !dbg !3831
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3832, metadata !DIExpression()), !dbg !3834
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3836, metadata !DIExpression()), !dbg !3837
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3838, metadata !DIExpression()), !dbg !3846
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3848, metadata !DIExpression()), !dbg !3849
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3850, metadata !DIExpression()), !dbg !3851
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3852, metadata !DIExpression()), !dbg !3853
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3854
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3855
  %div = sdiv i64 %1, 64, !dbg !3855
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3856
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3854
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3857
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3858
  %conv.i = trunc i64 %4 to i32, !dbg !3858
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !3859
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3860
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3860
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !3860
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3861
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3861
  br i1 %8, label %cond.true, label %cond.false, !dbg !3861

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3861
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3861
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3862
  %and.i = and i64 %11, 63, !dbg !3863
  %shl.i = shl i64 1, %and.i, !dbg !3864
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3865
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3866
  %shr.i = ashr i64 %13, 6, !dbg !3867
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3865
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3865
  %and1.i = and i64 %shl.i, %14, !dbg !3868
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3869
  %conv = zext i1 %cmp.i to i32, !dbg !3861
  br label %cond.end, !dbg !3861

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3861
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3861
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3870
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3871
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !3872, !srcloc !3873
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3872
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3874
  %tobool.i = trunc i8 %20 to i1, !dbg !3874
  %conv2 = zext i1 %tobool.i to i32, !dbg !3861
  br label %cond.end, !dbg !3861

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3861
  %tobool = icmp ne i32 %cond, 0, !dbg !3861
  ret i1 %tobool, !dbg !3875
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !3876 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3880, metadata !DIExpression()), !dbg !3881
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3882, metadata !DIExpression()), !dbg !3883
  ret i1 true, !dbg !3884
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !3885 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3889, metadata !DIExpression()), !dbg !3890
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3891, metadata !DIExpression()), !dbg !3892
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3893, metadata !DIExpression()), !dbg !3894
  ret void, !dbg !3895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_nand_dir_input(%struct.gpio_nand* %priv) #2 !dbg !3896 {
entry:
  %priv.addr = alloca %struct.gpio_nand*, align 8
  %data_gpiods = alloca %struct.gpio_descs*, align 8
  %i = alloca i32, align 4
  store %struct.gpio_nand* %priv, %struct.gpio_nand** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_nand** %priv.addr, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.declare(metadata %struct.gpio_descs** %data_gpiods, metadata !3899, metadata !DIExpression()), !dbg !3900
  %0 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3901
  %data_gpiods1 = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %0, i32 0, i32 9, !dbg !3902
  %1 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods1, align 8, !dbg !3902
  store %struct.gpio_descs* %1, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3900
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3903, metadata !DIExpression()), !dbg !3904
  store i32 0, i32* %i, align 4, !dbg !3905
  br label %for.cond, !dbg !3907

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3908
  %3 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3910
  %ndescs = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %3, i32 0, i32 1, !dbg !3911
  %4 = load i32, i32* %ndescs, align 8, !dbg !3911
  %cmp = icmp ult i32 %2, %4, !dbg !3912
  br i1 %cmp, label %for.body, label %for.end, !dbg !3913

for.body:                                         ; preds = %for.cond
  %5 = load %struct.gpio_descs*, %struct.gpio_descs** %data_gpiods, align 8, !dbg !3914
  %desc = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %5, i32 0, i32 2, !dbg !3915
  %6 = load i32, i32* %i, align 4, !dbg !3916
  %idxprom = sext i32 %6 to i64, !dbg !3914
  %arrayidx = getelementptr [0 x %struct.gpio_desc*], [0 x %struct.gpio_desc*]* %desc, i64 0, i64 %idxprom, !dbg !3914
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %arrayidx, align 8, !dbg !3914
  %call = call i32 @gpiod_direction_input(%struct.gpio_desc* %7) #7, !dbg !3917
  br label %for.inc, !dbg !3917

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !3918
  %inc = add i32 %8, 1, !dbg !3918
  store i32 %inc, i32* %i, align 4, !dbg !3918
  br label %for.cond, !dbg !3919, !llvm.loop !3920

for.end:                                          ; preds = %for.cond
  %9 = load %struct.gpio_nand*, %struct.gpio_nand** %priv.addr, align 8, !dbg !3922
  %data_in = getelementptr inbounds %struct.gpio_nand, %struct.gpio_nand* %9, i32 0, i32 10, !dbg !3923
  store i8 1, i8* %data_in, align 8, !dbg !3924
  ret void, !dbg !3925
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_direction_input(%struct.gpio_desc*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_interface_config* %conf) #2 !dbg !3926 {
entry:
  %retval = alloca %struct.nand_sdr_timings*, align 8
  %conf.addr = alloca %struct.nand_interface_config*, align 8
  store %struct.nand_interface_config* %conf, %struct.nand_interface_config** %conf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_interface_config** %conf.addr, metadata !3929, metadata !DIExpression()), !dbg !3930
  %0 = load %struct.nand_interface_config*, %struct.nand_interface_config** %conf.addr, align 8, !dbg !3931
  %type = getelementptr inbounds %struct.nand_interface_config, %struct.nand_interface_config* %0, i32 0, i32 0, !dbg !3933
  %1 = load i32, i32* %type, align 8, !dbg !3933
  %cmp = icmp ne i32 %1, 0, !dbg !3934
  br i1 %cmp, label %if.then, label %if.end, !dbg !3935

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #7, !dbg !3936
  %2 = bitcast i8* %call to %struct.nand_sdr_timings*, !dbg !3936
  store %struct.nand_sdr_timings* %2, %struct.nand_sdr_timings** %retval, align 8, !dbg !3937
  br label %return, !dbg !3937

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_interface_config*, %struct.nand_interface_config** %conf.addr, align 8, !dbg !3938
  %timings = getelementptr inbounds %struct.nand_interface_config, %struct.nand_interface_config* %3, i32 0, i32 1, !dbg !3939
  %4 = getelementptr inbounds %struct.nand_timings, %struct.nand_timings* %timings, i32 0, i32 1, !dbg !3940
  %sdr = bitcast %union.anon.40* %4 to %struct.nand_sdr_timings*, !dbg !3940
  store %struct.nand_sdr_timings* %sdr, %struct.nand_sdr_timings** %retval, align 8, !dbg !3941
  br label %return, !dbg !3941

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %retval, align 8, !dbg !3942
  ret %struct.nand_sdr_timings* %5, !dbg !3942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #2 !dbg !3943 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3946, metadata !DIExpression()), !dbg !3947
  %0 = load i64, i64* %error.addr, align 8, !dbg !3948
  %1 = inttoptr i64 %0 to i8*, !dbg !3949
  ret i8* %1, !dbg !3950
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local i32 @nand_scan_with_ids(%struct.nand_chip*, i32, %struct.nand_flash_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3951 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3956, metadata !DIExpression()), !dbg !3957
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3958
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3959
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #7, !dbg !3960
  ret i8* %call, !dbg !3961
}

; Function Attrs: noredzone
declare dso_local i32 @mtd_device_unregister(%struct.mtd_info*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %mtd) #2 !dbg !3962 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3967, metadata !DIExpression()), !dbg !3969
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3969
  %1 = bitcast %struct.mtd_info* %0 to i8*, !dbg !3969
  store i8* %1, i8** %__mptr, align 8, !dbg !3969
  br label %do.body, !dbg !3969

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3970

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3969
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3969
  %3 = bitcast i8* %add.ptr to %struct.nand_chip*, !dbg !3969
  store %struct.nand_chip* %3, %struct.nand_chip** %tmp, align 8, !dbg !3970
  %4 = load %struct.nand_chip*, %struct.nand_chip** %tmp, align 8, !dbg !3969
  ret %struct.nand_chip* %4, !dbg !3972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3973 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3974, metadata !DIExpression()), !dbg !3975
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3976
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3977
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3977
  ret i8* %1, !dbg !3978
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2840, !2841, !2842, !2843}
!llvm.ident = !{!2844}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gpio_nand_driver_init176", scope: !2, file: !3, line: 439, type: !104, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !2740, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/nand/raw/ams-delta.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !58, !63, !69, !73, !77, !84, !93}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_engine_type", file: !51, line: 142, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/mtd/nand.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_INVALID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_NONE", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_SOFT", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_ON_HOST", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_ON_DIE", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_placement", file: !51, line: 158, baseType: !7, size: 32, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_UNKNOWN", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_OOB", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_INTERLEAVED", value: 2, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_algo", file: !51, line: 171, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "NAND_ECC_ALGO_UNKNOWN", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "NAND_ECC_ALGO_HAMMING", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "NAND_ECC_ALGO_BCH", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "NAND_ECC_ALGO_RS", value: 3, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_page_io_req_type", file: !51, line: 90, baseType: !7, size: 32, elements: !70)
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "NAND_PAGE_READ", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "NAND_PAGE_WRITE", value: 1, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_interface_type", file: !74, line: 481, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/mtd/rawnand.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76}
!76 = !DIEnumerator(name: "NAND_SDR_IFACE", value: 0, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_op_instr_type", file: !74, line: 570, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "NAND_OP_CMD_INSTR", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "NAND_OP_ADDR_INSTR", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "NAND_OP_DATA_IN_INSTR", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "NAND_OP_DATA_OUT_INSTR", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "NAND_OP_WAITRDY_INSTR", value: 4, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpiod_flags", file: !85, line: 49, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90, !91, !92}
!87 = !DIEnumerator(name: "GPIOD_ASIS", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "GPIOD_IN", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "GPIOD_OUT_LOW", value: 3, isUnsigned: true)
!90 = !DIEnumerator(name: "GPIOD_OUT_HIGH", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "GPIOD_OUT_LOW_OPEN_DRAIN", value: 11, isUnsigned: true)
!92 = !DIEnumerator(name: "GPIOD_OUT_HIGH_OPEN_DRAIN", value: 15, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !{!99, !102, !104, !105, !106, !107, !108}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !101, line: 76, flags: DIFlagFwdDecl)
!101 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 148, baseType: !7)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !74, line: 1096, size: 16704, elements: !110)
!110 = !{!111, !2421, !2427, !2451, !2459, !2535, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2682, !2683, !2684, !2685, !2686, !2687, !2689, !2739}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !109, file: !74, line: 1097, baseType: !112, size: 11200)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !51, line: 319, size: 11200, elements: !113)
!113 = !{!114, !2314, !2326, !2396, !2401, !2405}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !112, file: !51, line: 320, baseType: !115, size: 9664)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !116, line: 235, size: 9664, elements: !117)
!116 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !121, !127, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !146, !148, !164, !185, !186, !187, !188, !196, !206, !222, !226, !231, !237, !238, !257, !258, !269, !270, !271, !272, !273, !274, !285, !289, !293, !294, !295, !299, !300, !301, !302, !306, !307, !308, !309, !310, !313, !325, !332, !333, !334, !335, !2284, !2285, !2293, !2297, !2298, !2299}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !116, line: 236, baseType: !119, size: 8)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !103, line: 79, baseType: !120)
!120 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !116, line: 237, baseType: !122, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !103, line: 104, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !124, line: 21, baseType: !125)
!124 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !126, line: 27, baseType: !7)
!126 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !115, file: !116, line: 238, baseType: !128, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !103, line: 107, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !124, line: 23, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !126, line: 31, baseType: !131)
!131 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !115, file: !116, line: 244, baseType: !122, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !115, file: !116, line: 252, baseType: !122, size: 32, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !115, file: !116, line: 263, baseType: !122, size: 32, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !115, file: !116, line: 265, baseType: !122, size: 32, offset: 224)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !115, file: !116, line: 266, baseType: !122, size: 32, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !115, file: !116, line: 272, baseType: !7, size: 32, offset: 288)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !115, file: !116, line: 273, baseType: !7, size: 32, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !115, file: !116, line: 275, baseType: !7, size: 32, offset: 352)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !115, file: !116, line: 276, baseType: !7, size: 32, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !115, file: !116, line: 285, baseType: !7, size: 32, offset: 416)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !116, line: 288, baseType: !143, size: 64, offset: 448)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !115, file: !116, line: 289, baseType: !147, size: 32, offset: 512)
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !115, file: !116, line: 292, baseType: !149, size: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !116, line: 101, size: 128, elements: !152)
!152 = !{!153, !163}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !151, file: !116, line: 102, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!147, !157, !147, !158}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !116, line: 87, size: 64, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !159, file: !116, line: 88, baseType: !123, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !159, file: !116, line: 89, baseType: !123, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !151, file: !116, line: 104, baseType: !154, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !115, file: !116, line: 295, baseType: !165, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !116, line: 176, size: 192, elements: !168)
!168 = !{!169, !170, !179}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !167, file: !116, line: 177, baseType: !147, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !167, file: !116, line: 178, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!147, !157, !147, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !116, line: 138, size: 64, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !175, file: !116, line: 139, baseType: !147, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !175, file: !116, line: 140, baseType: !147, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !167, file: !116, line: 180, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!147, !157, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !115, file: !116, line: 298, baseType: !7, size: 32, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !115, file: !116, line: 301, baseType: !7, size: 32, offset: 736)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !115, file: !116, line: 306, baseType: !147, size: 32, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !115, file: !116, line: 307, baseType: !189, size: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !116, line: 36, size: 192, elements: !191)
!191 = !{!192, !193, !194, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !190, file: !116, line: 37, baseType: !128, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !190, file: !116, line: 38, baseType: !122, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !190, file: !116, line: 39, baseType: !122, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !190, file: !116, line: 40, baseType: !107, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !115, file: !116, line: 313, baseType: !197, size: 64, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!147, !157, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !116, line: 30, size: 192, elements: !202)
!202 = !{!203, !204, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !201, file: !116, line: 31, baseType: !128, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !201, file: !116, line: 32, baseType: !128, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !201, file: !116, line: 33, baseType: !128, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !115, file: !116, line: 314, baseType: !207, size: 64, offset: 960)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!147, !157, !210, !214, !217, !218, !219}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 46, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !212, line: 88, baseType: !213)
!212 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!213 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 55, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !212, line: 72, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !212, line: 16, baseType: !105)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !103, line: 158, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !103, line: 153, baseType: !129)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !115, file: !116, line: 316, baseType: !223, size: 64, offset: 1024)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!147, !157, !210, !214}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !115, file: !116, line: 317, baseType: !227, size: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!147, !157, !210, !214, !217, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !115, file: !116, line: 319, baseType: !232, size: 64, offset: 1152)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!147, !157, !210, !214, !217, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !115, file: !116, line: 321, baseType: !232, size: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !115, file: !116, line: 323, baseType: !239, size: 64, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!147, !157, !210, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !116, line: 64, size: 512, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !243, file: !116, line: 65, baseType: !7, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !116, line: 66, baseType: !214, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !243, file: !116, line: 67, baseType: !214, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !243, file: !116, line: 68, baseType: !214, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !243, file: !116, line: 69, baseType: !214, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !243, file: !116, line: 70, baseType: !122, size: 32, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !243, file: !116, line: 71, baseType: !252, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !103, line: 102, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !124, line: 17, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !126, line: 21, baseType: !120)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !243, file: !116, line: 72, baseType: !252, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !115, file: !116, line: 325, baseType: !239, size: 64, offset: 1344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !115, file: !116, line: 327, baseType: !259, size: 64, offset: 1408)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!147, !157, !214, !217, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !264, line: 146, size: 96, elements: !265)
!264 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266, !267, !268}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !263, file: !264, line: 147, baseType: !125, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !263, file: !264, line: 148, baseType: !125, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !263, file: !264, line: 149, baseType: !125, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !115, file: !116, line: 329, baseType: !227, size: 64, offset: 1472)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !115, file: !116, line: 331, baseType: !259, size: 64, offset: 1536)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !115, file: !116, line: 333, baseType: !227, size: 64, offset: 1600)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !115, file: !116, line: 335, baseType: !227, size: 64, offset: 1664)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !115, file: !116, line: 337, baseType: !223, size: 64, offset: 1728)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !115, file: !116, line: 339, baseType: !275, size: 64, offset: 1792)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!147, !157, !278, !105, !210, !217}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !281, line: 15, size: 128, elements: !282)
!281 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !280, file: !281, line: 16, baseType: !104, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !280, file: !281, line: 17, baseType: !214, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !115, file: !116, line: 341, baseType: !286, size: 64, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !157}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !115, file: !116, line: 342, baseType: !290, size: 64, offset: 1920)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!147, !157, !210, !128}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !115, file: !116, line: 343, baseType: !290, size: 64, offset: 1984)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !115, file: !116, line: 344, baseType: !290, size: 64, offset: 2048)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !115, file: !116, line: 345, baseType: !296, size: 64, offset: 2112)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!147, !157, !210}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !115, file: !116, line: 346, baseType: !296, size: 64, offset: 2176)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !115, file: !116, line: 347, baseType: !296, size: 64, offset: 2240)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !115, file: !116, line: 348, baseType: !223, size: 64, offset: 2304)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !115, file: !116, line: 349, baseType: !303, size: 64, offset: 2368)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!147, !157}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !115, file: !116, line: 350, baseType: !286, size: 64, offset: 2432)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !115, file: !116, line: 351, baseType: !286, size: 64, offset: 2496)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !115, file: !116, line: 356, baseType: !303, size: 64, offset: 2560)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !115, file: !116, line: 357, baseType: !286, size: 64, offset: 2624)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !115, file: !116, line: 363, baseType: !311, size: 8, offset: 2688)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 30, baseType: !312)
!312 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !115, file: !116, line: 365, baseType: !314, size: 192, offset: 2752)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !315, line: 54, size: 192, elements: !316)
!315 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317, !323, !324}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !314, file: !315, line: 55, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !315, line: 51, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!147, !322, !105, !104}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !315, line: 56, baseType: !322, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !314, file: !315, line: 57, baseType: !147, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !115, file: !116, line: 368, baseType: !326, size: 128, offset: 2944)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !264, line: 250, size: 128, elements: !327)
!327 = !{!328, !329, !330, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !326, file: !264, line: 251, baseType: !125, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !326, file: !264, line: 252, baseType: !125, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !326, file: !264, line: 253, baseType: !125, size: 32, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !326, file: !264, line: 254, baseType: !125, size: 32, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !115, file: !116, line: 370, baseType: !147, size: 32, offset: 3072)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !115, file: !116, line: 372, baseType: !104, size: 64, offset: 3136)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !115, file: !116, line: 374, baseType: !99, size: 64, offset: 3200)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !115, file: !116, line: 375, baseType: !336, size: 5568, offset: 3264)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !337)
!337 = !{!338, !1810, !1812, !1815, !1816, !1867, !1961, !1962, !1963, !1964, !1965, !1974, !2079, !2092, !2095, !2096, !2100, !2102, !2103, !2104, !2108, !2114, !2115, !2118, !2233, !2234, !2237, !2238, !2239, !2240, !2272, !2273, !2274, !2277, !2280, !2281, !2282, !2283}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !336, file: !30, line: 462, baseType: !339, size: 512)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !340, line: 64, size: 512, elements: !341)
!340 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!341 = !{!342, !343, !349, !351, !411, !1647, !1800, !1805, !1806, !1807, !1808, !1809}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !340, line: 65, baseType: !143, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !339, file: !340, line: 66, baseType: !344, size: 128, offset: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 178, size: 128, elements: !345)
!345 = !{!346, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !103, line: 179, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !344, file: !103, line: 179, baseType: !347, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !339, file: !340, line: 67, baseType: !350, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !339, file: !340, line: 68, baseType: !352, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !340, line: 192, size: 704, elements: !354)
!354 = !{!355, !356, !372, !373}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !353, file: !340, line: 193, baseType: !344, size: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !353, file: !340, line: 194, baseType: !357, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !358, line: 83, baseType: !359)
!358 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !358, line: 71, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !358, line: 72, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !358, line: 72, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !362, file: !358, line: 73, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !358, line: 20, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !365, file: !358, line: 21, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !369, line: 25, baseType: !370)
!369 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 25, elements: !371)
!371 = !{}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !353, file: !340, line: 195, baseType: !339, size: 512, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !353, file: !340, line: 196, baseType: !374, size: 64, offset: 640)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !340, line: 156, size: 192, elements: !377)
!377 = !{!378, !383, !388}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !376, file: !340, line: 157, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!147, !352, !350}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !340, line: 158, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!143, !352, !350}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !376, file: !340, line: 159, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!147, !352, !350, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !340, line: 148, size: 20736, elements: !395)
!395 = !{!396, !401, !405, !406, !410}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !394, file: !340, line: 149, baseType: !397, size: 192)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 192, elements: !399)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!399 = !{!400}
!400 = !DISubrange(count: 3)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !394, file: !340, line: 150, baseType: !402, size: 4096, offset: 192)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 4096, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !394, file: !340, line: 151, baseType: !147, size: 32, offset: 4288)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !394, file: !340, line: 152, baseType: !407, size: 16384, offset: 4320)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 16384, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 2048)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !394, file: !340, line: 153, baseType: !147, size: 32, offset: 20704)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !339, file: !340, line: 69, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !340, line: 138, size: 448, elements: !414)
!414 = !{!415, !419, !443, !445, !1592, !1625, !1629}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !413, file: !340, line: 139, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !350}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !413, file: !340, line: 140, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !423, line: 230, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !439}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !422, file: !423, line: 231, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !350, !432, !398}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 60, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !212, line: 73, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !212, line: 15, baseType: !106)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !423, line: 30, size: 128, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !423, line: 31, baseType: !143, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !433, file: !423, line: 32, baseType: !437, size: 16, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 19, baseType: !438)
!438 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !422, file: !423, line: 232, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!429, !350, !432, !143, !214}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !413, file: !340, line: 141, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !413, file: !340, line: 142, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !423, line: 84, size: 320, elements: !450)
!450 = !{!451, !452, !456, !1589, !1590}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !423, line: 85, baseType: !143, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !449, file: !423, line: 86, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!437, !350, !432, !147}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !449, file: !423, line: 88, baseType: !457, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!437, !350, !460, !147}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !423, line: 168, size: 448, elements: !462)
!462 = !{!463, !464, !465, !466, !473, !474}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !461, file: !423, line: 169, baseType: !433, size: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !461, file: !423, line: 170, baseType: !214, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !461, file: !423, line: 171, baseType: !104, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !461, file: !423, line: 172, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!429, !470, !350, !460, !398, !210, !214}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !472, line: 526, flags: DIFlagFwdDecl)
!472 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !461, file: !423, line: 174, baseType: !467, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !461, file: !423, line: 176, baseType: !475, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!147, !470, !350, !460, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !480, line: 305, size: 1472, elements: !481)
!480 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!481 = !{!482, !483, !484, !485, !486, !494, !495, !1563, !1569, !1570, !1575, !1576, !1579, !1583, !1584, !1585, !1586, !1587}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !479, file: !480, line: 308, baseType: !105, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !479, file: !480, line: 309, baseType: !105, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !479, file: !480, line: 313, baseType: !478, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !479, file: !480, line: 313, baseType: !478, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !479, file: !480, line: 315, baseType: !487, size: 192, align: 64, offset: 256)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !488, line: 24, size: 192, align: 64, elements: !489)
!488 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!489 = !{!490, !491, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !487, file: !488, line: 25, baseType: !105, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !487, file: !488, line: 26, baseType: !492, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !487, file: !488, line: 27, baseType: !492, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !479, file: !480, line: 323, baseType: !105, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !479, file: !480, line: 327, baseType: !496, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !480, line: 388, size: 7296, elements: !498)
!498 = !{!499, !1559}
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !480, line: 389, baseType: !500, size: 7296)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !497, file: !480, line: 389, size: 7296, elements: !501)
!501 = !{!502, !503, !507, !508, !512, !513, !514, !515, !516, !524, !529, !530, !531, !532, !541, !542, !543, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !578, !586, !589, !637, !638, !1530, !1531, !1534, !1537, !1538, !1541, !1542, !1543, !1546, !1558}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !500, file: !480, line: 390, baseType: !478, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !500, file: !480, line: 391, baseType: !504, size: 64, offset: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !488, line: 31, size: 64, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !504, file: !488, line: 32, baseType: !492, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !500, file: !480, line: 392, baseType: !129, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !500, file: !480, line: 394, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!105, !470, !105, !105, !105, !105}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !500, file: !480, line: 398, baseType: !105, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !500, file: !480, line: 399, baseType: !105, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !500, file: !480, line: 405, baseType: !105, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !500, file: !480, line: 406, baseType: !105, size: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !500, file: !480, line: 407, baseType: !517, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !472, line: 286, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 286, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !519, file: !472, line: 286, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !523, line: 18, baseType: !105)
!523 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!524 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !500, file: !480, line: 416, baseType: !525, size: 32, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 168, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 166, size: 32, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !526, file: !103, line: 167, baseType: !147, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !500, file: !480, line: 428, baseType: !525, size: 32, offset: 608)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !500, file: !480, line: 437, baseType: !525, size: 32, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !500, file: !480, line: 447, baseType: !525, size: 32, offset: 672)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !500, file: !480, line: 450, baseType: !533, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !534, line: 13, baseType: !535)
!534 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 175, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 173, size: 64, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !536, file: !103, line: 174, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !124, line: 22, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !126, line: 30, baseType: !213)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !500, file: !480, line: 452, baseType: !147, size: 32, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !500, file: !480, line: 454, baseType: !357, offset: 800)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !500, file: !480, line: 457, baseType: !544, size: 256, offset: 832)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !545, line: 35, size: 256, elements: !546)
!545 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !548, !549, !551}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !544, file: !545, line: 36, baseType: !533, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !544, file: !545, line: 42, baseType: !533, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !544, file: !545, line: 46, baseType: !550, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !358, line: 29, baseType: !365)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !544, file: !545, line: 47, baseType: !344, size: 128, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !500, file: !480, line: 459, baseType: !344, size: 128, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !500, file: !480, line: 466, baseType: !105, size: 64, offset: 1216)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !500, file: !480, line: 467, baseType: !105, size: 64, offset: 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !500, file: !480, line: 469, baseType: !105, size: 64, offset: 1344)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !500, file: !480, line: 470, baseType: !105, size: 64, offset: 1408)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !500, file: !480, line: 471, baseType: !535, size: 64, offset: 1472)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !500, file: !480, line: 472, baseType: !105, size: 64, offset: 1536)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !500, file: !480, line: 473, baseType: !105, size: 64, offset: 1600)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !500, file: !480, line: 474, baseType: !105, size: 64, offset: 1664)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !500, file: !480, line: 475, baseType: !105, size: 64, offset: 1728)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !500, file: !480, line: 477, baseType: !357, offset: 1792)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !500, file: !480, line: 478, baseType: !105, size: 64, offset: 1792)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !500, file: !480, line: 478, baseType: !105, size: 64, offset: 1856)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !500, file: !480, line: 478, baseType: !105, size: 64, offset: 1920)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !500, file: !480, line: 478, baseType: !105, size: 64, offset: 1984)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !500, file: !480, line: 479, baseType: !105, size: 64, offset: 2048)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !500, file: !480, line: 479, baseType: !105, size: 64, offset: 2112)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !500, file: !480, line: 479, baseType: !105, size: 64, offset: 2176)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !500, file: !480, line: 480, baseType: !105, size: 64, offset: 2240)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !500, file: !480, line: 480, baseType: !105, size: 64, offset: 2304)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !500, file: !480, line: 480, baseType: !105, size: 64, offset: 2368)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !500, file: !480, line: 480, baseType: !105, size: 64, offset: 2432)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !500, file: !480, line: 482, baseType: !575, size: 2816, offset: 2496)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 2816, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 44)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !500, file: !480, line: 488, baseType: !579, size: 256, offset: 5312)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !580, line: 60, size: 256, elements: !581)
!580 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !579, file: !580, line: 61, baseType: !583, size: 256)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 256, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 4)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !500, file: !480, line: 490, baseType: !587, size: 64, offset: 5568)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !480, line: 490, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !500, file: !480, line: 493, baseType: !590, size: 896, offset: 5632)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !591, line: 53, baseType: !592)
!591 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 13, size: 896, elements: !593)
!593 = !{!594, !595, !596, !597, !600, !601, !608, !609, !629, !630, !633}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !592, file: !591, line: 18, baseType: !129, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !592, file: !591, line: 28, baseType: !535, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !592, file: !591, line: 31, baseType: !544, size: 256, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !592, file: !591, line: 32, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !591, line: 32, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !592, file: !591, line: 37, baseType: !438, size: 16, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !592, file: !591, line: 40, baseType: !602, size: 192, offset: 512)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !603, line: 53, size: 192, elements: !604)
!603 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!604 = !{!605, !606, !607}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !602, file: !603, line: 54, baseType: !533, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !602, file: !603, line: 55, baseType: !357, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !602, file: !603, line: 59, baseType: !344, size: 128, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !592, file: !591, line: 41, baseType: !104, size: 64, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !592, file: !591, line: 42, baseType: !610, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !613, line: 13, size: 896, elements: !614)
!613 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !612, file: !613, line: 14, baseType: !104, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !612, file: !613, line: 15, baseType: !105, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !612, file: !613, line: 17, baseType: !105, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !612, file: !613, line: 17, baseType: !105, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !612, file: !613, line: 19, baseType: !106, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !612, file: !613, line: 21, baseType: !106, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !612, file: !613, line: 22, baseType: !106, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !612, file: !613, line: 23, baseType: !106, size: 64, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !612, file: !613, line: 24, baseType: !106, size: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !612, file: !613, line: 25, baseType: !106, size: 64, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !612, file: !613, line: 26, baseType: !106, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !612, file: !613, line: 27, baseType: !106, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !612, file: !613, line: 28, baseType: !106, size: 64, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !612, file: !613, line: 29, baseType: !106, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !592, file: !591, line: 44, baseType: !525, size: 32, offset: 832)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !592, file: !591, line: 50, baseType: !631, size: 16, offset: 864)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !124, line: 19, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !126, line: 24, baseType: !438)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !592, file: !591, line: 51, baseType: !634, size: 16, offset: 880)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !124, line: 18, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !126, line: 23, baseType: !636)
!636 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !480, line: 495, baseType: !105, size: 64, offset: 6528)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !500, file: !480, line: 497, baseType: !639, size: 64, offset: 6592)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !480, line: 381, size: 384, elements: !641)
!641 = !{!642, !643, !1529}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !640, file: !480, line: 382, baseType: !525, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !640, file: !480, line: 383, baseType: !644, size: 128, offset: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !480, line: 376, size: 128, elements: !645)
!645 = !{!646, !1527}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !644, file: !480, line: 377, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !649, line: 640, size: 48640, elements: !650)
!649 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!650 = !{!651, !657, !659, !660, !666, !667, !668, !669, !670, !671, !672, !673, !677, !695, !706, !798, !799, !800, !811, !812, !814, !815, !816, !817, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !896, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !952, !954, !955, !956, !968, !970, !971, !972, !973, !974, !980, !981, !982, !983, !984, !985, !986, !998, !1003, !1008, !1009, !1010, !1013, !1017, !1020, !1023, !1026, !1029, !1033, !1036, !1039, !1045, !1046, !1047, !1053, !1054, !1055, !1056, !1057, !1066, !1067, !1068, !1069, !1070, !1075, !1076, !1077, !1080, !1081, !1084, !1087, !1090, !1093, !1096, !1099, !1100, !1180, !1183, !1186, !1187, !1190, !1191, !1192, !1198, !1199, !1200, !1213, !1214, !1215, !1225, !1230, !1233, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !648, file: !649, line: 646, baseType: !652, size: 128)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !653, line: 56, size: 128, elements: !654)
!653 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !653, line: 57, baseType: !105, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !652, file: !653, line: 58, baseType: !123, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !648, file: !649, line: 649, baseType: !658, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !648, file: !649, line: 657, baseType: !104, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !648, file: !649, line: 658, baseType: !661, size: 32, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !662, line: 113, baseType: !663)
!662 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !662, line: 111, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !663, file: !662, line: 112, baseType: !525, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !649, line: 660, baseType: !7, size: 32, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !648, file: !649, line: 661, baseType: !7, size: 32, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !648, file: !649, line: 684, baseType: !147, size: 32, offset: 352)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !648, file: !649, line: 686, baseType: !147, size: 32, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !648, file: !649, line: 687, baseType: !147, size: 32, offset: 416)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !648, file: !649, line: 688, baseType: !147, size: 32, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !648, file: !649, line: 689, baseType: !7, size: 32, offset: 480)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !648, file: !649, line: 691, baseType: !674, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !649, line: 691, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !648, file: !649, line: 692, baseType: !678, size: 832, offset: 576)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !649, line: 451, size: 832, elements: !679)
!679 = !{!680, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !678, file: !649, line: 453, baseType: !681, size: 128)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !649, line: 325, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !681, file: !649, line: 326, baseType: !105, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !681, file: !649, line: 327, baseType: !123, size: 32, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !678, file: !649, line: 454, baseType: !487, size: 192, align: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !678, file: !649, line: 455, baseType: !344, size: 128, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !678, file: !649, line: 456, baseType: !7, size: 32, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !678, file: !649, line: 458, baseType: !129, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !678, file: !649, line: 459, baseType: !129, size: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !678, file: !649, line: 460, baseType: !129, size: 64, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !678, file: !649, line: 461, baseType: !129, size: 64, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !678, file: !649, line: 463, baseType: !129, size: 64, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !678, file: !649, line: 465, baseType: !694, offset: 832)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !649, line: 415, elements: !371)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !648, file: !649, line: 693, baseType: !696, size: 384, offset: 1408)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !649, line: 489, size: 384, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !696, file: !649, line: 490, baseType: !344, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !696, file: !649, line: 491, baseType: !105, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !696, file: !649, line: 492, baseType: !105, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !696, file: !649, line: 493, baseType: !7, size: 32, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !696, file: !649, line: 494, baseType: !438, size: 16, offset: 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !696, file: !649, line: 495, baseType: !438, size: 16, offset: 304)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !696, file: !649, line: 497, baseType: !705, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !648, file: !649, line: 697, baseType: !707, size: 1792, offset: 1792)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !649, line: 507, size: 1792, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !795, !796}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !707, file: !649, line: 508, baseType: !487, size: 192, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !707, file: !649, line: 515, baseType: !129, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !707, file: !649, line: 516, baseType: !129, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !707, file: !649, line: 517, baseType: !129, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !707, file: !649, line: 518, baseType: !129, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !707, file: !649, line: 519, baseType: !129, size: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !707, file: !649, line: 526, baseType: !539, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !707, file: !649, line: 527, baseType: !129, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !649, line: 528, baseType: !7, size: 32, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !707, file: !649, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !707, file: !649, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !707, file: !649, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !707, file: !649, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !707, file: !649, line: 563, baseType: !723, size: 512, offset: 704)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !724)
!724 = !{!725, !733, !734, !739, !791, !792, !793, !794}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !6, line: 119, baseType: !726, size: 256)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !727, line: 9, size: 256, elements: !728)
!727 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !727, line: 10, baseType: !487, size: 192, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !726, file: !727, line: 11, baseType: !731, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !732, line: 29, baseType: !539)
!732 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !723, file: !6, line: 120, baseType: !731, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !723, file: !6, line: 121, baseType: !735, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!5, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !723, file: !6, line: 122, baseType: !740, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !742)
!742 = !{!743, !763, !764, !767, !777, !778, !786, !790}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !741, file: !6, line: 160, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !745, file: !6, line: 215, baseType: !550)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !745, file: !6, line: 216, baseType: !7, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !745, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !745, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !745, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !745, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !745, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !745, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !745, file: !6, line: 233, baseType: !731, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !745, file: !6, line: 234, baseType: !738, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !745, file: !6, line: 235, baseType: !731, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !745, file: !6, line: 236, baseType: !738, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !745, file: !6, line: 237, baseType: !760, size: 4096, offset: 512)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 4096, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 8)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !741, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !741, file: !6, line: 162, baseType: !765, size: 32, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 27, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !212, line: 96, baseType: !147)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !741, file: !6, line: 163, baseType: !768, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !769, line: 276, baseType: !770)
!769 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !769, line: 276, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !770, file: !769, line: 276, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !769, line: 70, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !769, line: 65, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !774, file: !769, line: 66, baseType: !7, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !741, file: !6, line: 164, baseType: !738, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !741, file: !6, line: 165, baseType: !779, size: 128, offset: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !727, line: 14, size: 128, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !779, file: !727, line: 15, baseType: !782, size: 128)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !488, line: 125, size: 128, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !782, file: !488, line: 126, baseType: !504, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !782, file: !488, line: 127, baseType: !492, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !741, file: !6, line: 166, baseType: !787, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!731}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !741, file: !6, line: 167, baseType: !731, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !723, file: !6, line: 123, baseType: !254, size: 8, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !723, file: !6, line: 124, baseType: !254, size: 8, offset: 456)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !723, file: !6, line: 125, baseType: !254, size: 8, offset: 464)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !723, file: !6, line: 126, baseType: !254, size: 8, offset: 472)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !707, file: !649, line: 572, baseType: !723, size: 512, offset: 1216)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !707, file: !649, line: 580, baseType: !797, size: 64, offset: 1728)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !648, file: !649, line: 721, baseType: !7, size: 32, offset: 3584)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !648, file: !649, line: 722, baseType: !147, size: 32, offset: 3616)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !648, file: !649, line: 723, baseType: !801, size: 64, offset: 3648)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !804, line: 17, baseType: !805)
!804 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !804, line: 17, size: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !805, file: !804, line: 17, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 1)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !648, file: !649, line: 724, baseType: !803, size: 64, offset: 3712)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !648, file: !649, line: 749, baseType: !813, offset: 3776)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !649, line: 290, elements: !371)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !648, file: !649, line: 751, baseType: !344, size: 128, offset: 3776)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !648, file: !649, line: 757, baseType: !496, size: 64, offset: 3904)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !648, file: !649, line: 758, baseType: !496, size: 64, offset: 3968)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !648, file: !649, line: 761, baseType: !818, size: 320, offset: 4032)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !580, line: 34, size: 320, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !818, file: !580, line: 35, baseType: !129, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !818, file: !580, line: 36, baseType: !822, size: 256, offset: 64)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 256, elements: !584)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !648, file: !649, line: 766, baseType: !147, size: 32, offset: 4352)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !648, file: !649, line: 767, baseType: !147, size: 32, offset: 4384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !648, file: !649, line: 768, baseType: !147, size: 32, offset: 4416)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !648, file: !649, line: 770, baseType: !147, size: 32, offset: 4448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !648, file: !649, line: 772, baseType: !105, size: 64, offset: 4480)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !648, file: !649, line: 775, baseType: !7, size: 32, offset: 4544)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !648, file: !649, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !648, file: !649, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !648, file: !649, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !648, file: !649, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !648, file: !649, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !648, file: !649, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !648, file: !649, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !648, file: !649, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !648, file: !649, line: 831, baseType: !105, size: 64, offset: 4672)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !648, file: !649, line: 833, baseType: !839, size: 384, offset: 4736)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !840)
!840 = !{!841, !846}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !839, file: !12, line: 26, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!106, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !12, line: 27, baseType: !847, size: 320, offset: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !12, line: 27, size: 320, elements: !848)
!848 = !{!849, !859, !886}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !847, file: !12, line: 36, baseType: !850, size: 320)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !847, file: !12, line: 29, size: 320, elements: !851)
!851 = !{!852, !854, !855, !856, !857, !858}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !850, file: !12, line: 30, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !850, file: !12, line: 31, baseType: !123, size: 32, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !12, line: 32, baseType: !123, size: 32, offset: 96)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !850, file: !12, line: 33, baseType: !123, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !850, file: !12, line: 34, baseType: !129, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !850, file: !12, line: 35, baseType: !853, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !847, file: !12, line: 46, baseType: !860, size: 192)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !847, file: !12, line: 38, size: 192, elements: !861)
!861 = !{!862, !863, !864, !885}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !860, file: !12, line: 39, baseType: !765, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !860, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !12, line: 41, baseType: !865, size: 64, offset: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !12, line: 41, size: 64, elements: !866)
!866 = !{!867, !875}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !865, file: !12, line: 42, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !870, line: 7, size: 128, elements: !871)
!870 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!871 = !{!872, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !869, file: !870, line: 8, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !212, line: 93, baseType: !213)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !869, file: !870, line: 9, baseType: !213, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !865, file: !12, line: 43, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !878, line: 7, size: 64, elements: !879)
!878 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!879 = !{!880, !884}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !877, file: !878, line: 8, baseType: !881, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !878, line: 5, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !124, line: 20, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !126, line: 26, baseType: !147)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !877, file: !878, line: 9, baseType: !882, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !860, file: !12, line: 45, baseType: !129, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !847, file: !12, line: 54, baseType: !887, size: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !847, file: !12, line: 48, size: 256, elements: !888)
!888 = !{!889, !892, !893, !894, !895}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !887, file: !12, line: 49, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !887, file: !12, line: 50, baseType: !147, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !887, file: !12, line: 51, baseType: !147, size: 32, offset: 96)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !887, file: !12, line: 52, baseType: !105, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !887, file: !12, line: 53, baseType: !105, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !648, file: !649, line: 835, baseType: !897, size: 32, offset: 5120)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !103, line: 22, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !212, line: 28, baseType: !147)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !648, file: !649, line: 836, baseType: !897, size: 32, offset: 5152)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !648, file: !649, line: 840, baseType: !105, size: 64, offset: 5184)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !648, file: !649, line: 849, baseType: !647, size: 64, offset: 5248)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !648, file: !649, line: 852, baseType: !647, size: 64, offset: 5312)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !648, file: !649, line: 857, baseType: !344, size: 128, offset: 5376)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !648, file: !649, line: 858, baseType: !344, size: 128, offset: 5504)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !648, file: !649, line: 859, baseType: !647, size: 64, offset: 5632)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !648, file: !649, line: 867, baseType: !344, size: 128, offset: 5696)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !648, file: !649, line: 868, baseType: !344, size: 128, offset: 5824)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !648, file: !649, line: 871, baseType: !909, size: 64, offset: 5952)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !911, line: 59, size: 768, elements: !912)
!911 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!912 = !{!913, !914, !915, !916, !927, !928, !935, !944}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !910, file: !911, line: 61, baseType: !661, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !910, file: !911, line: 62, baseType: !7, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !910, file: !911, line: 63, baseType: !357, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !910, file: !911, line: 65, baseType: !917, size: 256, offset: 64)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 256, elements: !584)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !103, line: 182, size: 64, elements: !919)
!919 = !{!920}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !918, file: !103, line: 183, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 186, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !922, file: !103, line: 187, baseType: !921, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !922, file: !103, line: 187, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !910, file: !911, line: 66, baseType: !918, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !910, file: !911, line: 68, baseType: !929, size: 128, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !930, line: 40, baseType: !931)
!930 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !930, line: 36, size: 128, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !931, file: !930, line: 37, baseType: !357)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !931, file: !930, line: 38, baseType: !344, size: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !910, file: !911, line: 69, baseType: !936, size: 128, align: 64, offset: 512)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 216, size: 128, align: 64, elements: !937)
!937 = !{!938, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !103, line: 217, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !936, file: !103, line: 218, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !939}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !910, file: !911, line: 70, baseType: !945, size: 128, offset: 640)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 128, elements: !809)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !911, line: 54, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !946, file: !911, line: 55, baseType: !147, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !946, file: !911, line: 56, baseType: !950, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !911, line: 56, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !648, file: !649, line: 872, baseType: !953, size: 512, offset: 6016)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 512, elements: !584)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !648, file: !649, line: 873, baseType: !344, size: 128, offset: 6528)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !648, file: !649, line: 874, baseType: !344, size: 128, offset: 6656)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !648, file: !649, line: 876, baseType: !957, size: 64, offset: 6784)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !959, line: 26, size: 192, elements: !960)
!959 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !958, file: !959, line: 27, baseType: !7, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !958, file: !959, line: 28, baseType: !963, size: 128, offset: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !964, line: 43, size: 128, elements: !965)
!964 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !963, file: !964, line: 44, baseType: !550)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !963, file: !964, line: 45, baseType: !344, size: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !648, file: !649, line: 879, baseType: !969, size: 64, offset: 6848)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !648, file: !649, line: 882, baseType: !969, size: 64, offset: 6912)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !648, file: !649, line: 884, baseType: !129, size: 64, offset: 6976)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !648, file: !649, line: 885, baseType: !129, size: 64, offset: 7040)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !648, file: !649, line: 890, baseType: !129, size: 64, offset: 7104)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !648, file: !649, line: 891, baseType: !975, size: 128, offset: 7168)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !649, line: 242, size: 128, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !975, file: !649, line: 244, baseType: !129, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !975, file: !649, line: 245, baseType: !129, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !975, file: !649, line: 246, baseType: !550, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !648, file: !649, line: 900, baseType: !105, size: 64, offset: 7296)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !648, file: !649, line: 901, baseType: !105, size: 64, offset: 7360)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !648, file: !649, line: 904, baseType: !129, size: 64, offset: 7424)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !648, file: !649, line: 907, baseType: !129, size: 64, offset: 7488)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !648, file: !649, line: 910, baseType: !105, size: 64, offset: 7552)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !648, file: !649, line: 911, baseType: !105, size: 64, offset: 7616)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !648, file: !649, line: 914, baseType: !987, size: 640, offset: 7680)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !988, line: 123, size: 640, elements: !989)
!988 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!989 = !{!990, !996, !997}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !987, file: !988, line: 124, baseType: !991, size: 576)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 576, elements: !399)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !988, line: 108, size: 192, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !992, file: !988, line: 109, baseType: !129, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !992, file: !988, line: 110, baseType: !779, size: 128, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !987, file: !988, line: 125, baseType: !7, size: 32, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !987, file: !988, line: 126, baseType: !7, size: 32, offset: 608)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !648, file: !649, line: 917, baseType: !999, size: 192, offset: 8320)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !988, line: 134, size: 192, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !999, file: !988, line: 135, baseType: !936, size: 128, align: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !999, file: !988, line: 136, baseType: !7, size: 32, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !648, file: !649, line: 923, baseType: !1004, size: 64, offset: 8512)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1007, line: 11, flags: DIFlagFwdDecl)
!1007 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !648, file: !649, line: 926, baseType: !1004, size: 64, offset: 8576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !648, file: !649, line: 929, baseType: !1004, size: 64, offset: 8640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !648, file: !649, line: 933, baseType: !1011, size: 64, offset: 8704)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !649, line: 933, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !648, file: !649, line: 943, baseType: !1014, size: 128, offset: 8768)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 16)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !648, file: !649, line: 945, baseType: !1018, size: 64, offset: 8896)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !649, line: 49, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !648, file: !649, line: 956, baseType: !1021, size: 64, offset: 8960)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !649, line: 45, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !648, file: !649, line: 959, baseType: !1024, size: 64, offset: 9024)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !649, line: 959, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !648, file: !649, line: 962, baseType: !1027, size: 64, offset: 9088)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !649, line: 66, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !648, file: !649, line: 966, baseType: !1030, size: 64, offset: 9152)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1032, line: 35, flags: DIFlagFwdDecl)
!1032 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !648, file: !649, line: 969, baseType: !1034, size: 64, offset: 9216)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !988, line: 223, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !648, file: !649, line: 970, baseType: !1037, size: 64, offset: 9280)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !649, line: 62, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !648, file: !649, line: 971, baseType: !1040, size: 64, offset: 9344)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1041, line: 25, baseType: !1042)
!1041 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1041, line: 23, size: 64, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1042, file: !1041, line: 24, baseType: !808, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !648, file: !649, line: 972, baseType: !1040, size: 64, offset: 9408)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !648, file: !649, line: 974, baseType: !1040, size: 64, offset: 9472)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !648, file: !649, line: 975, baseType: !1048, size: 192, offset: 9536)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1049, line: 30, size: 192, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1048, file: !1049, line: 31, baseType: !344, size: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1048, file: !1049, line: 32, baseType: !1040, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !648, file: !649, line: 976, baseType: !105, size: 64, offset: 9728)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !648, file: !649, line: 977, baseType: !214, size: 64, offset: 9792)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !648, file: !649, line: 978, baseType: !7, size: 32, offset: 9856)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !648, file: !649, line: 980, baseType: !939, size: 64, offset: 9920)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !648, file: !649, line: 989, baseType: !1058, size: 128, offset: 9984)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1059, line: 35, size: 128, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1058, file: !1059, line: 36, baseType: !147, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1058, file: !1059, line: 37, baseType: !525, size: 32, offset: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1058, file: !1059, line: 38, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1059, line: 23, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !648, file: !649, line: 992, baseType: !129, size: 64, offset: 10112)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !648, file: !649, line: 993, baseType: !129, size: 64, offset: 10176)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !648, file: !649, line: 996, baseType: !357, offset: 10240)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !648, file: !649, line: 999, baseType: !550, offset: 10240)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !648, file: !649, line: 1001, baseType: !1071, size: 64, offset: 10240)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !649, line: 636, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1071, file: !649, line: 637, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !648, file: !649, line: 1005, baseType: !782, size: 128, offset: 10304)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !648, file: !649, line: 1007, baseType: !647, size: 64, offset: 10432)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !648, file: !649, line: 1009, baseType: !1078, size: 64, offset: 10496)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !649, line: 1009, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !648, file: !649, line: 1043, baseType: !104, size: 64, offset: 10560)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !648, file: !649, line: 1046, baseType: !1082, size: 64, offset: 10624)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !649, line: 41, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !648, file: !649, line: 1050, baseType: !1085, size: 64, offset: 10688)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !649, line: 42, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !648, file: !649, line: 1054, baseType: !1088, size: 64, offset: 10752)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !649, line: 55, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !648, file: !649, line: 1056, baseType: !1091, size: 64, offset: 10816)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !649, line: 40, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !648, file: !649, line: 1058, baseType: !1094, size: 64, offset: 10880)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !649, line: 47, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !648, file: !649, line: 1061, baseType: !1097, size: 64, offset: 10944)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !649, line: 43, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !648, file: !649, line: 1064, baseType: !105, size: 64, offset: 11008)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !648, file: !649, line: 1065, baseType: !1101, size: 64, offset: 11072)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1049, line: 14, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1049, line: 12, size: 384, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !1049, line: 13, baseType: !1106, size: 384)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1103, file: !1049, line: 13, size: 384, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1106, file: !1049, line: 13, baseType: !147, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1106, file: !1049, line: 13, baseType: !147, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1106, file: !1049, line: 13, baseType: !147, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1106, file: !1049, line: 13, baseType: !1112, size: 256, offset: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1113, line: 32, size: 256, elements: !1114)
!1113 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !{!1115, !1121, !1134, !1140, !1149, !1169, !1174}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1112, file: !1113, line: 37, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !1113, line: 34, size: 64, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1116, file: !1113, line: 35, baseType: !898, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1116, file: !1113, line: 36, baseType: !1120, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !212, line: 49, baseType: !7)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1112, file: !1113, line: 45, baseType: !1122, size: 192)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !1113, line: 40, size: 192, elements: !1123)
!1123 = !{!1124, !1126, !1127, !1133}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1122, file: !1113, line: 41, baseType: !1125, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !212, line: 95, baseType: !147)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1122, file: !1113, line: 42, baseType: !147, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1122, file: !1113, line: 43, baseType: !1128, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1113, line: 11, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1113, line: 8, size: 64, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1129, file: !1113, line: 9, baseType: !147, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1129, file: !1113, line: 10, baseType: !104, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1122, file: !1113, line: 44, baseType: !147, size: 32, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1112, file: !1113, line: 52, baseType: !1135, size: 128)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !1113, line: 48, size: 128, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1135, file: !1113, line: 49, baseType: !898, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1135, file: !1113, line: 50, baseType: !1120, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1135, file: !1113, line: 51, baseType: !1128, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1112, file: !1113, line: 61, baseType: !1141, size: 256)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !1113, line: 55, size: 256, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1148}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1141, file: !1113, line: 56, baseType: !898, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1141, file: !1113, line: 57, baseType: !1120, size: 32, offset: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1141, file: !1113, line: 58, baseType: !147, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1141, file: !1113, line: 59, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !212, line: 94, baseType: !431)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1141, file: !1113, line: 60, baseType: !1147, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1112, file: !1113, line: 95, baseType: !1150, size: 256)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !1113, line: 64, size: 256, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1150, file: !1113, line: 65, baseType: !104, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1113, line: 77, baseType: !1154, size: 192, offset: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1113, line: 77, size: 192, elements: !1155)
!1155 = !{!1156, !1157, !1164}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1154, file: !1113, line: 82, baseType: !636, size: 16)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1154, file: !1113, line: 88, baseType: !1158, size: 192)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !1113, line: 84, size: 192, elements: !1159)
!1159 = !{!1160, !1162, !1163}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1158, file: !1113, line: 85, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !761)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1158, file: !1113, line: 86, baseType: !104, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1158, file: !1113, line: 87, baseType: !104, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1154, file: !1113, line: 93, baseType: !1165, size: 96)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !1113, line: 90, size: 96, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1165, file: !1113, line: 91, baseType: !1161, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1165, file: !1113, line: 92, baseType: !125, size: 32, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1112, file: !1113, line: 101, baseType: !1170, size: 128)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !1113, line: 98, size: 128, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1170, file: !1113, line: 99, baseType: !106, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1170, file: !1113, line: 100, baseType: !147, size: 32, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1112, file: !1113, line: 108, baseType: !1175, size: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !1113, line: 104, size: 128, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1175, file: !1113, line: 105, baseType: !104, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1175, file: !1113, line: 106, baseType: !147, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1175, file: !1113, line: 107, baseType: !7, size: 32, offset: 96)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !648, file: !649, line: 1067, baseType: !1181, offset: 11136)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1182, line: 12, elements: !371)
!1182 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !648, file: !649, line: 1099, baseType: !1184, size: 64, offset: 11136)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !649, line: 56, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !648, file: !649, line: 1103, baseType: !344, size: 128, offset: 11200)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !648, file: !649, line: 1104, baseType: !1188, size: 64, offset: 11328)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !649, line: 46, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !648, file: !649, line: 1105, baseType: !602, size: 192, offset: 11392)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !648, file: !649, line: 1106, baseType: !7, size: 32, offset: 11584)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !648, file: !649, line: 1109, baseType: !1193, size: 128, offset: 11648)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 128, elements: !1196)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !649, line: 51, flags: DIFlagFwdDecl)
!1196 = !{!1197}
!1197 = !DISubrange(count: 2)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !648, file: !649, line: 1110, baseType: !602, size: 192, offset: 11776)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !648, file: !649, line: 1111, baseType: !344, size: 128, offset: 11968)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !648, file: !649, line: 1173, baseType: !1201, size: 64, offset: 12096)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1203, line: 62, size: 256, align: 256, elements: !1204)
!1203 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1204 = !{!1205, !1206, !1207, !1212}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1202, file: !1203, line: 75, baseType: !125, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1202, file: !1203, line: 90, baseType: !125, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1202, file: !1203, line: 124, baseType: !1208, size: 64, offset: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1202, file: !1203, line: 109, size: 64, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1208, file: !1203, line: 110, baseType: !130, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1208, file: !1203, line: 112, baseType: !130, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1202, file: !1203, line: 144, baseType: !125, size: 32, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !648, file: !649, line: 1174, baseType: !123, size: 32, offset: 12160)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !648, file: !649, line: 1179, baseType: !105, size: 64, offset: 12224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !648, file: !649, line: 1182, baseType: !1216, size: 128, offset: 12288)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !580, line: 76, size: 128, elements: !1217)
!1217 = !{!1218, !1223, !1224}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1216, file: !580, line: 85, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1220, line: 7, size: 64, elements: !1221)
!1220 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1219, file: !1220, line: 12, baseType: !805, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1216, file: !580, line: 88, baseType: !311, size: 8, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1216, file: !580, line: 95, baseType: !311, size: 8, offset: 72)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !649, line: 1184, baseType: !1226, size: 128, offset: 12416)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !649, line: 1184, size: 128, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1226, file: !649, line: 1185, baseType: !661, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1226, file: !649, line: 1186, baseType: !936, size: 128, align: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !648, file: !649, line: 1190, baseType: !1231, size: 64, offset: 12544)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !281, line: 13, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !648, file: !649, line: 1192, baseType: !1234, size: 128, offset: 12608)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !580, line: 64, size: 128, elements: !1235)
!1235 = !{!1236, !1329, !1330}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1234, file: !580, line: 65, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !480, line: 68, size: 512, align: 128, elements: !1239)
!1239 = !{!1240, !1241, !1321, !1328}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !480, line: 69, baseType: !105, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !480, line: 77, baseType: !1242, size: 320, offset: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !480, line: 77, size: 320, elements: !1243)
!1243 = !{!1244, !1253, !1258, !1286, !1294, !1300, !1313, !1320}
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !480, line: 78, baseType: !1245, size: 320)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !480, line: 78, size: 320, elements: !1246)
!1246 = !{!1247, !1248, !1251, !1252}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1245, file: !480, line: 84, baseType: !344, size: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1245, file: !480, line: 86, baseType: !1249, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !480, line: 26, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1245, file: !480, line: 87, baseType: !105, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1245, file: !480, line: 94, baseType: !105, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !480, line: 96, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !480, line: 96, size: 64, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1254, file: !480, line: 101, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !103, line: 143, baseType: !129)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !480, line: 103, baseType: !1259, size: 320)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !480, line: 103, size: 320, elements: !1260)
!1260 = !{!1261, !1271, !1274, !1275}
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !480, line: 104, baseType: !1262, size: 128)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !480, line: 104, size: 128, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1262, file: !480, line: 105, baseType: !344, size: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !480, line: 106, baseType: !1266, size: 128)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1262, file: !480, line: 106, size: 128, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1266, file: !480, line: 107, baseType: !1237, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1266, file: !480, line: 109, baseType: !147, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1266, file: !480, line: 110, baseType: !147, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1259, file: !480, line: 117, baseType: !1272, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !480, line: 117, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1259, file: !480, line: 119, baseType: !104, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !480, line: 120, baseType: !1276, size: 64, offset: 256)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !480, line: 120, size: 64, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1276, file: !480, line: 121, baseType: !104, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1276, file: !480, line: 122, baseType: !105, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !480, line: 123, baseType: !1281, size: 32)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1276, file: !480, line: 123, size: 32, elements: !1282)
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1281, file: !480, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1281, file: !480, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1281, file: !480, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !480, line: 130, baseType: !1287, size: 192)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !480, line: 130, size: 192, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1287, file: !480, line: 131, baseType: !105, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1287, file: !480, line: 134, baseType: !120, size: 8, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1287, file: !480, line: 135, baseType: !120, size: 8, offset: 72)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1287, file: !480, line: 136, baseType: !525, size: 32, offset: 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1287, file: !480, line: 137, baseType: !7, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !480, line: 139, baseType: !1295, size: 256)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !480, line: 139, size: 256, elements: !1296)
!1296 = !{!1297, !1298, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1295, file: !480, line: 140, baseType: !105, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1295, file: !480, line: 141, baseType: !525, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1295, file: !480, line: 143, baseType: !344, size: 128, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !480, line: 145, baseType: !1301, size: 256)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !480, line: 145, size: 256, elements: !1302)
!1302 = !{!1303, !1304, !1306, !1307, !1312}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1301, file: !480, line: 146, baseType: !105, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1301, file: !480, line: 147, baseType: !1305, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !472, line: 509, baseType: !1237)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1301, file: !480, line: 148, baseType: !105, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !480, line: 149, baseType: !1308, size: 64, offset: 192)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !480, line: 149, size: 64, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1308, file: !480, line: 150, baseType: !496, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1308, file: !480, line: 151, baseType: !525, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1301, file: !480, line: 156, baseType: !357, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !480, line: 159, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !480, line: 159, size: 128, elements: !1315)
!1315 = !{!1316, !1319}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1314, file: !480, line: 161, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !480, line: 161, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1314, file: !480, line: 162, baseType: !104, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1242, file: !480, line: 176, baseType: !936, size: 128, align: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !480, line: 179, baseType: !1322, size: 32, offset: 384)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !480, line: 179, size: 32, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1322, file: !480, line: 184, baseType: !525, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1322, file: !480, line: 192, baseType: !7, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1322, file: !480, line: 194, baseType: !7, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1322, file: !480, line: 195, baseType: !147, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1238, file: !480, line: 199, baseType: !525, size: 32, offset: 416)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1234, file: !580, line: 67, baseType: !125, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1234, file: !580, line: 68, baseType: !125, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !648, file: !649, line: 1206, baseType: !147, size: 32, offset: 12736)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !648, file: !649, line: 1207, baseType: !147, size: 32, offset: 12768)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !648, file: !649, line: 1209, baseType: !105, size: 64, offset: 12800)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !648, file: !649, line: 1219, baseType: !129, size: 64, offset: 12864)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !648, file: !649, line: 1220, baseType: !129, size: 64, offset: 12928)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !648, file: !649, line: 1317, baseType: !147, size: 32, offset: 12992)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !648, file: !649, line: 1319, baseType: !647, size: 64, offset: 13056)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !648, file: !649, line: 1322, baseType: !1339, size: 64, offset: 13120)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1341, line: 9, flags: DIFlagFwdDecl)
!1341 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !648, file: !649, line: 1326, baseType: !661, size: 32, offset: 13184)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !648, file: !649, line: 1342, baseType: !104, size: 64, offset: 13248)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !648, file: !649, line: 1343, baseType: !130, size: 64, offset: 13312)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !648, file: !649, line: 1344, baseType: !129, size: 64, offset: 13376)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !648, file: !649, line: 1345, baseType: !130, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !648, file: !649, line: 1346, baseType: !130, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !648, file: !649, line: 1347, baseType: !130, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !648, file: !649, line: 1348, baseType: !936, size: 128, align: 64, offset: 13504)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !648, file: !649, line: 1358, baseType: !1351, size: 34816, offset: 13824)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1352, line: 485, size: 34816, elements: !1353)
!1352 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !{!1354, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1383, !1384, !1385, !1386, !1387, !1388, !1391, !1392, !1393}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1351, file: !1352, line: 487, baseType: !1355, size: 192)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 192, elements: !399)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1357, line: 16, size: 64, elements: !1358)
!1357 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1356, file: !1357, line: 17, baseType: !631, size: 16)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1356, file: !1357, line: 18, baseType: !631, size: 16, offset: 16)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1356, file: !1357, line: 19, baseType: !631, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1356, file: !1357, line: 19, baseType: !631, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1356, file: !1357, line: 19, baseType: !631, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1356, file: !1357, line: 19, baseType: !631, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1356, file: !1357, line: 19, baseType: !631, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1356, file: !1357, line: 20, baseType: !631, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1356, file: !1357, line: 20, baseType: !631, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1356, file: !1357, line: 20, baseType: !631, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1356, file: !1357, line: 20, baseType: !631, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1356, file: !1357, line: 20, baseType: !631, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1356, file: !1357, line: 20, baseType: !631, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1351, file: !1352, line: 491, baseType: !105, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1351, file: !1352, line: 495, baseType: !438, size: 16, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1351, file: !1352, line: 496, baseType: !438, size: 16, offset: 272)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1351, file: !1352, line: 497, baseType: !438, size: 16, offset: 288)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1351, file: !1352, line: 498, baseType: !438, size: 16, offset: 304)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1351, file: !1352, line: 502, baseType: !105, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1351, file: !1352, line: 503, baseType: !105, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1351, file: !1352, line: 514, baseType: !1380, size: 256, offset: 448)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1381, size: 256, elements: !584)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1352, line: 483, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1351, file: !1352, line: 516, baseType: !105, size: 64, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1351, file: !1352, line: 518, baseType: !105, size: 64, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1351, file: !1352, line: 520, baseType: !105, size: 64, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1351, file: !1352, line: 521, baseType: !105, size: 64, offset: 896)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1351, file: !1352, line: 522, baseType: !105, size: 64, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1351, file: !1352, line: 528, baseType: !1389, size: 64, offset: 1024)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1352, line: 10, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1351, file: !1352, line: 535, baseType: !105, size: 64, offset: 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1351, file: !1352, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1351, file: !1352, line: 540, baseType: !1394, size: 33280, offset: 1536)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1395, line: 317, size: 33280, elements: !1396)
!1395 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1394, file: !1395, line: 330, baseType: !7, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1394, file: !1395, line: 337, baseType: !105, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1394, file: !1395, line: 348, baseType: !1400, size: 32768, offset: 512)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1395, line: 304, size: 32768, elements: !1401)
!1401 = !{!1402, !1417, !1456, !1506, !1523}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1400, file: !1395, line: 305, baseType: !1403, size: 896)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1395, line: 12, size: 896, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1416}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1403, file: !1395, line: 13, baseType: !123, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1403, file: !1395, line: 14, baseType: !123, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1403, file: !1395, line: 15, baseType: !123, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1403, file: !1395, line: 16, baseType: !123, size: 32, offset: 96)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1403, file: !1395, line: 17, baseType: !123, size: 32, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1403, file: !1395, line: 18, baseType: !123, size: 32, offset: 160)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1403, file: !1395, line: 19, baseType: !123, size: 32, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1403, file: !1395, line: 22, baseType: !1413, size: 640, offset: 224)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 640, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 20)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1403, file: !1395, line: 25, baseType: !123, size: 32, offset: 864)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1400, file: !1395, line: 306, baseType: !1418, size: 4096, align: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1395, line: 34, size: 4096, align: 128, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1439, !1440, !1441, !1445, !1447, !1451}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1418, file: !1395, line: 35, baseType: !631, size: 16)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1418, file: !1395, line: 36, baseType: !631, size: 16, offset: 16)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1418, file: !1395, line: 37, baseType: !631, size: 16, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1418, file: !1395, line: 38, baseType: !631, size: 16, offset: 48)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !1395, line: 39, baseType: !1425, size: 128, offset: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !1395, line: 39, size: 128, elements: !1426)
!1426 = !{!1427, !1432}
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !1395, line: 40, baseType: !1428, size: 128)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !1395, line: 40, size: 128, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1428, file: !1395, line: 41, baseType: !129, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1428, file: !1395, line: 42, baseType: !129, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !1395, line: 44, baseType: !1433, size: 128)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !1395, line: 44, size: 128, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1433, file: !1395, line: 45, baseType: !123, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1433, file: !1395, line: 46, baseType: !123, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1433, file: !1395, line: 47, baseType: !123, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1433, file: !1395, line: 48, baseType: !123, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1418, file: !1395, line: 51, baseType: !123, size: 32, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1418, file: !1395, line: 52, baseType: !123, size: 32, offset: 224)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1418, file: !1395, line: 55, baseType: !1442, size: 1024, offset: 256)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1024, elements: !1443)
!1443 = !{!1444}
!1444 = !DISubrange(count: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1418, file: !1395, line: 58, baseType: !1446, size: 2048, offset: 1280)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2048, elements: !403)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1418, file: !1395, line: 60, baseType: !1448, size: 384, offset: 3328)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 384, elements: !1449)
!1449 = !{!1450}
!1450 = !DISubrange(count: 12)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !1395, line: 62, baseType: !1452, size: 384, offset: 3712)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !1395, line: 62, size: 384, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1452, file: !1395, line: 63, baseType: !1448, size: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1452, file: !1395, line: 64, baseType: !1448, size: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1400, file: !1395, line: 307, baseType: !1457, size: 1088)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1395, line: 79, size: 1088, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1505}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1457, file: !1395, line: 80, baseType: !123, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1457, file: !1395, line: 81, baseType: !123, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1457, file: !1395, line: 82, baseType: !123, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1457, file: !1395, line: 83, baseType: !123, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1457, file: !1395, line: 84, baseType: !123, size: 32, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1457, file: !1395, line: 85, baseType: !123, size: 32, offset: 160)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1457, file: !1395, line: 86, baseType: !123, size: 32, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1457, file: !1395, line: 88, baseType: !1413, size: 640, offset: 224)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1457, file: !1395, line: 89, baseType: !254, size: 8, offset: 864)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1457, file: !1395, line: 90, baseType: !254, size: 8, offset: 872)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1457, file: !1395, line: 91, baseType: !254, size: 8, offset: 880)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1457, file: !1395, line: 92, baseType: !254, size: 8, offset: 888)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1457, file: !1395, line: 93, baseType: !254, size: 8, offset: 896)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1457, file: !1395, line: 94, baseType: !254, size: 8, offset: 904)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1457, file: !1395, line: 95, baseType: !1474, size: 64, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1476, line: 11, size: 128, elements: !1477)
!1476 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1475, file: !1476, line: 12, baseType: !106, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1475, file: !1476, line: 13, baseType: !1480, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1482, line: 56, size: 1344, elements: !1483)
!1482 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1481, file: !1482, line: 61, baseType: !105, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1481, file: !1482, line: 62, baseType: !105, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1481, file: !1482, line: 63, baseType: !105, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1481, file: !1482, line: 64, baseType: !105, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1481, file: !1482, line: 65, baseType: !105, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1481, file: !1482, line: 66, baseType: !105, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1481, file: !1482, line: 68, baseType: !105, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1481, file: !1482, line: 69, baseType: !105, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1481, file: !1482, line: 70, baseType: !105, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1481, file: !1482, line: 71, baseType: !105, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1481, file: !1482, line: 72, baseType: !105, size: 64, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1481, file: !1482, line: 73, baseType: !105, size: 64, offset: 704)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1481, file: !1482, line: 74, baseType: !105, size: 64, offset: 768)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1481, file: !1482, line: 75, baseType: !105, size: 64, offset: 832)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1481, file: !1482, line: 76, baseType: !105, size: 64, offset: 896)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1481, file: !1482, line: 81, baseType: !105, size: 64, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1481, file: !1482, line: 83, baseType: !105, size: 64, offset: 1024)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1481, file: !1482, line: 84, baseType: !105, size: 64, offset: 1088)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1481, file: !1482, line: 85, baseType: !105, size: 64, offset: 1152)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1481, file: !1482, line: 86, baseType: !105, size: 64, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1481, file: !1482, line: 87, baseType: !105, size: 64, offset: 1280)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1457, file: !1395, line: 96, baseType: !123, size: 32, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1400, file: !1395, line: 308, baseType: !1507, size: 4608, align: 512)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1395, line: 289, size: 4608, align: 512, elements: !1508)
!1508 = !{!1509, !1510, !1519}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1507, file: !1395, line: 290, baseType: !1418, size: 4096, align: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1507, file: !1395, line: 291, baseType: !1511, size: 512, offset: 4096)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1395, line: 268, size: 512, elements: !1512)
!1512 = !{!1513, !1514, !1515}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1511, file: !1395, line: 269, baseType: !129, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1511, file: !1395, line: 270, baseType: !129, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1511, file: !1395, line: 271, baseType: !1516, size: 384, offset: 128)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !1517)
!1517 = !{!1518}
!1518 = !DISubrange(count: 6)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1507, file: !1395, line: 292, baseType: !1520, offset: 4608)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !1521)
!1521 = !{!1522}
!1522 = !DISubrange(count: 0)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1400, file: !1395, line: 309, baseType: !1524, size: 32768)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 32768, elements: !1525)
!1525 = !{!1526}
!1526 = !DISubrange(count: 4096)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !480, line: 378, baseType: !1528, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !640, file: !480, line: 384, baseType: !958, size: 192, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !500, file: !480, line: 500, baseType: !357, offset: 6656)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !500, file: !480, line: 501, baseType: !1532, size: 64, offset: 6656)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !480, line: 387, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !500, file: !480, line: 516, baseType: !1535, size: 64, offset: 6720)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !480, line: 516, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !500, file: !480, line: 519, baseType: !470, size: 64, offset: 6784)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !500, file: !480, line: 521, baseType: !1539, size: 64, offset: 6848)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !480, line: 521, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !500, file: !480, line: 545, baseType: !525, size: 32, offset: 6912)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !500, file: !480, line: 548, baseType: !311, size: 8, offset: 6944)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !500, file: !480, line: 550, baseType: !1544, offset: 6952)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1545, line: 142, elements: !371)
!1545 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !500, file: !480, line: 554, baseType: !1547, size: 256, offset: 6976)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1548, line: 102, size: 256, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1551, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1547, file: !1548, line: 103, baseType: !533, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1547, file: !1548, line: 104, baseType: !344, size: 128, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1547, file: !1548, line: 105, baseType: !1553, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1548, line: 21, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1557}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !500, file: !480, line: 557, baseType: !123, size: 32, offset: 7232)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !497, file: !480, line: 565, baseType: !1560, offset: 7296)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, elements: !1561)
!1561 = !{!1562}
!1562 = !DISubrange(count: -1)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !479, file: !480, line: 333, baseType: !1564, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !472, line: 284, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !472, line: 284, size: 64, elements: !1566)
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1565, file: !472, line: 284, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !523, line: 19, baseType: !105)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !479, file: !480, line: 334, baseType: !105, size: 64, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !479, file: !480, line: 343, baseType: !1571, size: 256, offset: 704)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !480, line: 340, size: 256, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1571, file: !480, line: 341, baseType: !487, size: 192, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1571, file: !480, line: 342, baseType: !105, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !479, file: !480, line: 351, baseType: !344, size: 128, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !479, file: !480, line: 353, baseType: !1577, size: 64, offset: 1088)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !480, line: 353, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !479, file: !480, line: 356, baseType: !1580, size: 64, offset: 1152)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !480, line: 356, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !479, file: !480, line: 359, baseType: !105, size: 64, offset: 1216)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !479, file: !480, line: 361, baseType: !470, size: 64, offset: 1280)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !479, file: !480, line: 362, baseType: !104, size: 64, offset: 1344)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !479, file: !480, line: 365, baseType: !533, size: 64, offset: 1408)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !479, file: !480, line: 373, baseType: !1588, offset: 1472)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !480, line: 296, elements: !371)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !449, file: !423, line: 90, baseType: !444, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !449, file: !423, line: 91, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !413, file: !340, line: 143, baseType: !1593, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1596, !350}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1599)
!1599 = !{!1600, !1601, !1605, !1609, !1617, !1621}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1598, file: !18, line: 40, baseType: !17, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1598, file: !18, line: 41, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!311}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1598, file: !18, line: 42, baseType: !1606, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!104}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1598, file: !18, line: 43, baseType: !1610, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1613, !1615}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1598, file: !18, line: 44, baseType: !1618, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!1613}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1598, file: !18, line: 45, baseType: !1622, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !104}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !413, file: !340, line: 144, baseType: !1626, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1613, !350}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !413, file: !340, line: 145, baseType: !1630, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !350, !1633, !1640}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1635, line: 23, baseType: !1636)
!1635 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1635, line: 21, size: 32, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1636, file: !1635, line: 22, baseType: !1639, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 32, baseType: !1120)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1635, line: 28, baseType: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1635, line: 26, size: 32, elements: !1643)
!1643 = !{!1644}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1642, file: !1635, line: 27, baseType: !1645, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 33, baseType: !1646)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !212, line: 50, baseType: !7)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !339, file: !340, line: 70, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1650, line: 123, size: 1024, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1793, !1794, !1795, !1796, !1797}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1649, file: !1650, line: 124, baseType: !525, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1649, file: !1650, line: 125, baseType: !525, size: 32, offset: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1649, file: !1650, line: 135, baseType: !1648, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1649, file: !1650, line: 136, baseType: !143, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1649, file: !1650, line: 138, baseType: !487, size: 192, align: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1649, file: !1650, line: 140, baseType: !1613, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1649, file: !1650, line: 141, baseType: !7, size: 32, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1649, file: !1650, line: 142, baseType: !1660, size: 256, offset: 512)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1649, file: !1650, line: 142, size: 256, elements: !1661)
!1661 = !{!1662, !1716, !1720}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1660, file: !1650, line: 143, baseType: !1663, size: 192)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1650, line: 91, size: 192, elements: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1663, file: !1650, line: 92, baseType: !105, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1663, file: !1650, line: 94, baseType: !504, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1663, file: !1650, line: 100, baseType: !1668, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1650, line: 180, size: 704, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1686, !1687, !1688, !1714, !1715}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1669, file: !1650, line: 182, baseType: !1648, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1669, file: !1650, line: 183, baseType: !7, size: 32, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1669, file: !1650, line: 186, baseType: !1674, size: 192, offset: 128)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1675, line: 19, size: 192, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1676 = !{!1677, !1684, !1685}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1674, file: !1675, line: 20, baseType: !1678, size: 128)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1679, line: 292, size: 128, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1678, file: !1679, line: 293, baseType: !357)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1678, file: !1679, line: 295, baseType: !102, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1678, file: !1679, line: 296, baseType: !104, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1674, file: !1675, line: 21, baseType: !7, size: 32, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1674, file: !1675, line: 22, baseType: !7, size: 32, offset: 160)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1669, file: !1650, line: 187, baseType: !123, size: 32, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1669, file: !1650, line: 188, baseType: !123, size: 32, offset: 352)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1669, file: !1650, line: 189, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1650, line: 168, size: 320, elements: !1691)
!1691 = !{!1692, !1698, !1702, !1706, !1710}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1690, file: !1650, line: 169, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!147, !1696, !1668}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !472, line: 539, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1690, file: !1650, line: 171, baseType: !1699, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!147, !1648, !143, !437}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1690, file: !1650, line: 173, baseType: !1703, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!147, !1648}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1690, file: !1650, line: 174, baseType: !1707, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!147, !1648, !1648, !143}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1690, file: !1650, line: 176, baseType: !1711, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!147, !1696, !1648, !1668}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1669, file: !1650, line: 192, baseType: !344, size: 128, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1669, file: !1650, line: 194, baseType: !929, size: 128, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1660, file: !1650, line: 144, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1650, line: 103, size: 64, elements: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1717, file: !1650, line: 104, baseType: !1648, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1660, file: !1650, line: 145, baseType: !1721, size: 256)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1650, line: 107, size: 256, elements: !1722)
!1722 = !{!1723, !1788, !1791, !1792}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1721, file: !1650, line: 108, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1650, line: 217, size: 768, elements: !1727)
!1727 = !{!1728, !1748, !1752, !1756, !1761, !1765, !1769, !1773, !1774, !1775, !1776, !1784}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1726, file: !1650, line: 222, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!147, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1650, line: 197, size: 1088, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1733, file: !1650, line: 199, baseType: !1648, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1733, file: !1650, line: 200, baseType: !470, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1733, file: !1650, line: 201, baseType: !1696, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1733, file: !1650, line: 202, baseType: !104, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1733, file: !1650, line: 205, baseType: !602, size: 192, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1733, file: !1650, line: 206, baseType: !602, size: 192, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1733, file: !1650, line: 207, baseType: !147, size: 32, offset: 640)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1733, file: !1650, line: 208, baseType: !344, size: 128, offset: 704)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1733, file: !1650, line: 209, baseType: !398, size: 64, offset: 832)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1733, file: !1650, line: 211, baseType: !214, size: 64, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1733, file: !1650, line: 212, baseType: !311, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1733, file: !1650, line: 213, baseType: !311, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1733, file: !1650, line: 214, baseType: !1580, size: 64, offset: 1024)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1726, file: !1650, line: 223, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !1732}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1726, file: !1650, line: 236, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!147, !1696, !104}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1726, file: !1650, line: 238, baseType: !1757, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!104, !1696, !1760}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1726, file: !1650, line: 239, baseType: !1762, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!104, !1696, !104, !1760}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1726, file: !1650, line: 240, baseType: !1766, size: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1696, !104}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1726, file: !1650, line: 242, baseType: !1770, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!429, !1732, !398, !214, !210}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1726, file: !1650, line: 252, baseType: !214, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1726, file: !1650, line: 259, baseType: !311, size: 8, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1726, file: !1650, line: 260, baseType: !1770, size: 64, offset: 576)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1726, file: !1650, line: 263, baseType: !1777, size: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1780, !1732, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1781, line: 52, baseType: !7)
!1781 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1650, line: 27, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1726, file: !1650, line: 266, baseType: !1785, size: 64, offset: 704)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!147, !1732, !478}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1721, file: !1650, line: 109, baseType: !1789, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1650, line: 31, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1721, file: !1650, line: 110, baseType: !210, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1721, file: !1650, line: 111, baseType: !1648, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1649, file: !1650, line: 148, baseType: !104, size: 64, offset: 768)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1649, file: !1650, line: 154, baseType: !129, size: 64, offset: 832)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1649, file: !1650, line: 156, baseType: !438, size: 16, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1649, file: !1650, line: 157, baseType: !437, size: 16, offset: 912)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1649, file: !1650, line: 158, baseType: !1798, size: 64, offset: 960)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1650, line: 32, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !339, file: !340, line: 71, baseType: !1801, size: 32, offset: 448)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1802, line: 19, size: 32, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1801, file: !1802, line: 20, baseType: !661, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !339, file: !340, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !339, file: !340, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !339, file: !340, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !339, file: !340, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !339, file: !340, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !336, file: !30, line: 463, baseType: !1811, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !336, file: !30, line: 465, baseType: !1813, size: 64, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !336, file: !30, line: 467, baseType: !143, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !336, file: !30, line: 468, baseType: !1817, size: 64, offset: 704)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1827, !1832, !1836}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1819, file: !30, line: 88, baseType: !143, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1819, file: !30, line: 89, baseType: !446, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1819, file: !30, line: 90, baseType: !1824, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!147, !1811, !393}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1819, file: !30, line: 91, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!398, !1811, !1831, !1633, !1640}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1819, file: !30, line: 93, baseType: !1833, size: 64, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1811}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1819, file: !30, line: 95, baseType: !1837, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1840)
!1840 = !{!1841, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1839, file: !37, line: 279, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!147, !1811}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1839, file: !37, line: 280, baseType: !1833, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1839, file: !37, line: 281, baseType: !1842, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1839, file: !37, line: 282, baseType: !1842, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1839, file: !37, line: 283, baseType: !1842, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1839, file: !37, line: 284, baseType: !1842, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1839, file: !37, line: 285, baseType: !1842, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1839, file: !37, line: 286, baseType: !1842, size: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1839, file: !37, line: 287, baseType: !1842, size: 64, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1839, file: !37, line: 288, baseType: !1842, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1839, file: !37, line: 289, baseType: !1842, size: 64, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1839, file: !37, line: 290, baseType: !1842, size: 64, offset: 704)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1839, file: !37, line: 291, baseType: !1842, size: 64, offset: 768)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1839, file: !37, line: 292, baseType: !1842, size: 64, offset: 832)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1839, file: !37, line: 293, baseType: !1842, size: 64, offset: 896)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1839, file: !37, line: 294, baseType: !1842, size: 64, offset: 960)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1839, file: !37, line: 295, baseType: !1842, size: 64, offset: 1024)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1839, file: !37, line: 296, baseType: !1842, size: 64, offset: 1088)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1839, file: !37, line: 297, baseType: !1842, size: 64, offset: 1152)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1839, file: !37, line: 298, baseType: !1842, size: 64, offset: 1216)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1839, file: !37, line: 299, baseType: !1842, size: 64, offset: 1280)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1839, file: !37, line: 300, baseType: !1842, size: 64, offset: 1344)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1839, file: !37, line: 301, baseType: !1842, size: 64, offset: 1408)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !336, file: !30, line: 470, baseType: !1868, size: 64, offset: 768)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1870, line: 82, size: 1408, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1954, !1957, !1960}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1869, file: !1870, line: 83, baseType: !143, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1869, file: !1870, line: 84, baseType: !143, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1869, file: !1870, line: 85, baseType: !1811, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1869, file: !1870, line: 86, baseType: !446, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1869, file: !1870, line: 87, baseType: !446, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1869, file: !1870, line: 88, baseType: !446, size: 64, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1869, file: !1870, line: 90, baseType: !1879, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!147, !1811, !1882}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1905, !1918, !1919, !1920, !1921, !1922, !1930, !1931, !1932, !1933, !1934, !1935}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1883, file: !24, line: 96, baseType: !143, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1883, file: !24, line: 97, baseType: !1868, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1883, file: !24, line: 99, baseType: !99, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1883, file: !24, line: 100, baseType: !143, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1883, file: !24, line: 102, baseType: !311, size: 8, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1883, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1883, file: !24, line: 105, baseType: !1892, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1895, line: 262, size: 1600, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1899, !1900, !1904}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1894, file: !1895, line: 263, baseType: !1898, size: 256)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !1443)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1894, file: !1895, line: 264, baseType: !1898, size: 256, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1894, file: !1895, line: 265, baseType: !1901, size: 1024, offset: 512)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1024, elements: !1902)
!1902 = !{!1903}
!1903 = !DISubrange(count: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1894, file: !1895, line: 266, baseType: !1613, size: 64, offset: 1536)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1883, file: !24, line: 106, baseType: !1906, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1895, line: 210, size: 256, elements: !1909)
!1909 = !{!1910, !1914, !1916, !1917}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1908, file: !1895, line: 211, baseType: !1911, size: 72)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 72, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 9)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1908, file: !1895, line: 212, baseType: !1915, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1895, line: 14, baseType: !105)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1908, file: !1895, line: 213, baseType: !125, size: 32, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1908, file: !1895, line: 214, baseType: !125, size: 32, offset: 224)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1883, file: !24, line: 108, baseType: !1842, size: 64, offset: 448)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1883, file: !24, line: 109, baseType: !1833, size: 64, offset: 512)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1883, file: !24, line: 110, baseType: !1842, size: 64, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1883, file: !24, line: 111, baseType: !1833, size: 64, offset: 640)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1883, file: !24, line: 112, baseType: !1923, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!147, !1811, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1927, file: !37, line: 51, baseType: !147, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1883, file: !24, line: 113, baseType: !1842, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1883, file: !24, line: 114, baseType: !446, size: 64, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1883, file: !24, line: 115, baseType: !446, size: 64, offset: 896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1883, file: !24, line: 117, baseType: !1837, size: 64, offset: 960)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1883, file: !24, line: 118, baseType: !1833, size: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1883, file: !24, line: 120, baseType: !1936, size: 64, offset: 1088)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1869, file: !1870, line: 91, baseType: !1824, size: 64, offset: 448)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1869, file: !1870, line: 92, baseType: !1842, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1869, file: !1870, line: 93, baseType: !1833, size: 64, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1869, file: !1870, line: 94, baseType: !1842, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1869, file: !1870, line: 95, baseType: !1833, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1869, file: !1870, line: 97, baseType: !1842, size: 64, offset: 768)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1869, file: !1870, line: 98, baseType: !1842, size: 64, offset: 832)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1869, file: !1870, line: 100, baseType: !1923, size: 64, offset: 896)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1869, file: !1870, line: 101, baseType: !1842, size: 64, offset: 960)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1869, file: !1870, line: 103, baseType: !1842, size: 64, offset: 1024)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1869, file: !1870, line: 105, baseType: !1842, size: 64, offset: 1088)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1869, file: !1870, line: 107, baseType: !1837, size: 64, offset: 1152)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1869, file: !1870, line: 109, baseType: !1951, size: 64, offset: 1216)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1870, line: 109, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1869, file: !1870, line: 111, baseType: !1955, size: 64, offset: 1280)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1870, line: 111, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1869, file: !1870, line: 112, baseType: !1958, offset: 1344)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1959, line: 187, elements: !371)
!1959 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1869, file: !1870, line: 114, baseType: !311, size: 8, offset: 1344)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !336, file: !30, line: 471, baseType: !1882, size: 64, offset: 832)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !336, file: !30, line: 473, baseType: !104, size: 64, offset: 896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !336, file: !30, line: 475, baseType: !104, size: 64, offset: 960)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !336, file: !30, line: 480, baseType: !602, size: 192, offset: 1024)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !336, file: !30, line: 484, baseType: !1966, size: 576, offset: 1216)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1966, file: !30, line: 362, baseType: !344, size: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1966, file: !30, line: 363, baseType: !344, size: 128, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1966, file: !30, line: 364, baseType: !344, size: 128, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1966, file: !30, line: 365, baseType: !344, size: 128, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1966, file: !30, line: 366, baseType: !311, size: 8, offset: 512)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1966, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !336, file: !30, line: 485, baseType: !1975, size: 2304, offset: 1792)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2072, !2076}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1975, file: !37, line: 566, baseType: !1926, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1975, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1975, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1975, file: !37, line: 569, baseType: !311, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1975, file: !37, line: 570, baseType: !311, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1975, file: !37, line: 571, baseType: !311, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1975, file: !37, line: 572, baseType: !311, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1975, file: !37, line: 573, baseType: !311, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1975, file: !37, line: 574, baseType: !311, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1975, file: !37, line: 575, baseType: !311, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1975, file: !37, line: 576, baseType: !311, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1975, file: !37, line: 577, baseType: !123, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1975, file: !37, line: 578, baseType: !357, offset: 96)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1975, file: !37, line: 580, baseType: !344, size: 128, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1975, file: !37, line: 581, baseType: !958, size: 192, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1975, file: !37, line: 582, baseType: !1993, size: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1995, line: 43, size: 1472, elements: !1996)
!1995 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2004, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1994, file: !1995, line: 44, baseType: !143, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1994, file: !1995, line: 45, baseType: !147, size: 32, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1994, file: !1995, line: 46, baseType: !344, size: 128, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1994, file: !1995, line: 47, baseType: !357, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1994, file: !1995, line: 48, baseType: !2002, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1994, file: !1995, line: 49, baseType: !2005, size: 320, offset: 320)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2006, line: 11, size: 320, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2009, !2010, !2015}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2005, file: !2006, line: 16, baseType: !922, size: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2005, file: !2006, line: 17, baseType: !105, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2005, file: !2006, line: 18, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2005, file: !2006, line: 19, baseType: !123, size: 32, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1994, file: !1995, line: 50, baseType: !105, size: 64, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1994, file: !1995, line: 51, baseType: !731, size: 64, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1994, file: !1995, line: 52, baseType: !731, size: 64, offset: 768)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1994, file: !1995, line: 53, baseType: !731, size: 64, offset: 832)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1994, file: !1995, line: 54, baseType: !731, size: 64, offset: 896)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1994, file: !1995, line: 55, baseType: !731, size: 64, offset: 960)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1994, file: !1995, line: 56, baseType: !105, size: 64, offset: 1024)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1994, file: !1995, line: 57, baseType: !105, size: 64, offset: 1088)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1994, file: !1995, line: 58, baseType: !105, size: 64, offset: 1152)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1994, file: !1995, line: 59, baseType: !105, size: 64, offset: 1216)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1994, file: !1995, line: 60, baseType: !105, size: 64, offset: 1280)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1994, file: !1995, line: 61, baseType: !1811, size: 64, offset: 1344)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1994, file: !1995, line: 62, baseType: !311, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1994, file: !1995, line: 63, baseType: !311, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1975, file: !37, line: 583, baseType: !311, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1975, file: !37, line: 584, baseType: !311, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1975, file: !37, line: 585, baseType: !311, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1975, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1975, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1975, file: !37, line: 592, baseType: !723, size: 512, offset: 576)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1975, file: !37, line: 593, baseType: !129, size: 64, offset: 1088)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1975, file: !37, line: 594, baseType: !1547, size: 256, offset: 1152)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1975, file: !37, line: 595, baseType: !929, size: 128, offset: 1408)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1975, file: !37, line: 596, baseType: !2002, size: 64, offset: 1536)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1975, file: !37, line: 597, baseType: !525, size: 32, offset: 1600)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1975, file: !37, line: 598, baseType: !525, size: 32, offset: 1632)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1975, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1975, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1975, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1975, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1975, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1975, file: !37, line: 604, baseType: !311, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1975, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1975, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1975, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1975, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1975, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1975, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1975, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1975, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1975, file: !37, line: 613, baseType: !147, size: 32, offset: 1792)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1975, file: !37, line: 614, baseType: !147, size: 32, offset: 1824)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1975, file: !37, line: 615, baseType: !129, size: 64, offset: 1856)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1975, file: !37, line: 616, baseType: !129, size: 64, offset: 1920)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1975, file: !37, line: 617, baseType: !129, size: 64, offset: 1984)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1975, file: !37, line: 618, baseType: !129, size: 64, offset: 2048)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1975, file: !37, line: 620, baseType: !2063, size: 64, offset: 2112)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2064, file: !37, line: 537, baseType: !357)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2064, file: !37, line: 538, baseType: !7, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2064, file: !37, line: 540, baseType: !344, size: 128, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2064, file: !37, line: 543, baseType: !2070, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1975, file: !37, line: 621, baseType: !2073, size: 64, offset: 2176)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !1811, !882}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1975, file: !37, line: 622, baseType: !2077, size: 64, offset: 2240)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !336, file: !30, line: 486, baseType: !2080, size: 64, offset: 4096)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2082)
!2082 = !{!2083, !2084, !2085, !2089, !2090, !2091}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2081, file: !37, line: 643, baseType: !1839, size: 1472)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2081, file: !37, line: 644, baseType: !1842, size: 64, offset: 1472)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2081, file: !37, line: 645, baseType: !2086, size: 64, offset: 1536)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !1811, !311}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2081, file: !37, line: 646, baseType: !1842, size: 64, offset: 1600)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2081, file: !37, line: 647, baseType: !1833, size: 64, offset: 1664)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2081, file: !37, line: 648, baseType: !1833, size: 64, offset: 1728)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !336, file: !30, line: 493, baseType: !2093, size: 64, offset: 4160)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !336, file: !30, line: 499, baseType: !344, size: 128, offset: 4224)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !336, file: !30, line: 502, baseType: !2097, size: 64, offset: 4352)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !336, file: !30, line: 504, baseType: !2101, size: 64, offset: 4416)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !336, file: !30, line: 505, baseType: !129, size: 64, offset: 4480)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !336, file: !30, line: 510, baseType: !129, size: 64, offset: 4544)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !336, file: !30, line: 511, baseType: !2105, size: 64, offset: 4608)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2107)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !336, file: !30, line: 513, baseType: !2109, size: 64, offset: 4672)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2110, file: !30, line: 293, baseType: !7, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2110, file: !30, line: 294, baseType: !105, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !336, file: !30, line: 515, baseType: !344, size: 128, offset: 4736)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !336, file: !30, line: 526, baseType: !2116, offset: 4864)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2117, line: 5, elements: !371)
!2117 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !336, file: !30, line: 528, baseType: !2119, size: 64, offset: 4864)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2121, line: 51, size: 1344, elements: !2122)
!2121 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !{!2123, !2124, !2126, !2127, !2217, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2120, file: !2121, line: 52, baseType: !143, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2120, file: !2121, line: 53, baseType: !2125, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2121, line: 28, baseType: !123)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2120, file: !2121, line: 54, baseType: !143, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2120, file: !2121, line: 55, baseType: !2128, size: 192, offset: 192)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2129, line: 17, size: 192, elements: !2130)
!2129 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2130 = !{!2131, !2133, !2216}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2128, file: !2129, line: 18, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2128, file: !2129, line: 19, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2129, line: 110, size: 1152, elements: !2137)
!2137 = !{!2138, !2142, !2146, !2152, !2158, !2162, !2166, !2171, !2175, !2176, !2180, !2184, !2188, !2199, !2200, !2201, !2202, !2212}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2136, file: !2129, line: 111, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!2132, !2132}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2136, file: !2129, line: 112, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2132}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2136, file: !2129, line: 113, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!311, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2136, file: !2129, line: 114, baseType: !2153, size: 64, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!1613, !2150, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2136, file: !2129, line: 116, baseType: !2159, size: 64, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!311, !2150, !143}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2136, file: !2129, line: 118, baseType: !2163, size: 64, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!147, !2150, !143, !7, !104, !214}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2136, file: !2129, line: 123, baseType: !2167, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!147, !2150, !143, !2170, !214}
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2136, file: !2129, line: 126, baseType: !2172, size: 64, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!143, !2150}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2136, file: !2129, line: 127, baseType: !2172, size: 64, offset: 512)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2136, file: !2129, line: 128, baseType: !2177, size: 64, offset: 576)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!2132, !2150}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2136, file: !2129, line: 130, baseType: !2181, size: 64, offset: 640)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!2132, !2150, !2132}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2136, file: !2129, line: 133, baseType: !2185, size: 64, offset: 704)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!2132, !2150, !143}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2136, file: !2129, line: 135, baseType: !2189, size: 64, offset: 768)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!147, !2150, !143, !143, !7, !7, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2129, line: 43, size: 640, elements: !2194)
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2193, file: !2129, line: 44, baseType: !2132, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2193, file: !2129, line: 45, baseType: !7, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2193, file: !2129, line: 46, baseType: !2198, size: 512, offset: 128)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 512, elements: !761)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2136, file: !2129, line: 140, baseType: !2181, size: 64, offset: 832)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2136, file: !2129, line: 143, baseType: !2177, size: 64, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2136, file: !2129, line: 145, baseType: !2139, size: 64, offset: 960)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2136, file: !2129, line: 146, baseType: !2203, size: 64, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!147, !2150, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2129, line: 29, size: 128, elements: !2208)
!2208 = !{!2209, !2210, !2211}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2207, file: !2129, line: 30, baseType: !7, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2207, file: !2129, line: 31, baseType: !7, size: 32, offset: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2207, file: !2129, line: 32, baseType: !2150, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2136, file: !2129, line: 148, baseType: !2213, size: 64, offset: 1088)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!147, !2150, !1811}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2128, file: !2129, line: 20, baseType: !1811, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2120, file: !2121, line: 57, baseType: !2218, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2121, line: 31, size: 704, elements: !2220)
!2220 = !{!2221, !2222, !2223, !2224, !2225}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2219, file: !2121, line: 32, baseType: !398, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2219, file: !2121, line: 33, baseType: !147, size: 32, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2219, file: !2121, line: 34, baseType: !104, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2219, file: !2121, line: 35, baseType: !2218, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2219, file: !2121, line: 43, baseType: !461, size: 448, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2120, file: !2121, line: 58, baseType: !2218, size: 64, offset: 448)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2120, file: !2121, line: 59, baseType: !2119, size: 64, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2120, file: !2121, line: 60, baseType: !2119, size: 64, offset: 576)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2120, file: !2121, line: 61, baseType: !2119, size: 64, offset: 640)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2120, file: !2121, line: 63, baseType: !339, size: 512, offset: 704)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2120, file: !2121, line: 65, baseType: !105, size: 64, offset: 1216)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2120, file: !2121, line: 66, baseType: !104, size: 64, offset: 1280)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !336, file: !30, line: 529, baseType: !2132, size: 64, offset: 4928)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !336, file: !30, line: 534, baseType: !2235, size: 32, offset: 4992)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 16, baseType: !2236)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 13, baseType: !123)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !336, file: !30, line: 535, baseType: !123, size: 32, offset: 5024)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !336, file: !30, line: 537, baseType: !357, offset: 5056)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !336, file: !30, line: 538, baseType: !344, size: 128, offset: 5056)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !336, file: !30, line: 540, baseType: !2241, size: 64, offset: 5184)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2243, line: 54, size: 960, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2255, !2259, !2260, !2261, !2262, !2266, !2270, !2271}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2242, file: !2243, line: 55, baseType: !143, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2242, file: !2243, line: 56, baseType: !99, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2242, file: !2243, line: 58, baseType: !446, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2242, file: !2243, line: 59, baseType: !446, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2242, file: !2243, line: 60, baseType: !350, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2242, file: !2243, line: 62, baseType: !1824, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2242, file: !2243, line: 63, baseType: !2252, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!398, !1811, !1831}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2242, file: !2243, line: 65, baseType: !2256, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2241}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2242, file: !2243, line: 66, baseType: !1833, size: 64, offset: 512)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2242, file: !2243, line: 68, baseType: !1842, size: 64, offset: 576)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2242, file: !2243, line: 70, baseType: !1596, size: 64, offset: 640)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2242, file: !2243, line: 71, baseType: !2263, size: 64, offset: 704)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!1613, !1811}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2242, file: !2243, line: 73, baseType: !2267, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !1811, !1633, !1640}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2242, file: !2243, line: 75, baseType: !1837, size: 64, offset: 832)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2242, file: !2243, line: 77, baseType: !1955, size: 64, offset: 896)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !336, file: !30, line: 541, baseType: !446, size: 64, offset: 5248)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !336, file: !30, line: 543, baseType: !1833, size: 64, offset: 5312)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !336, file: !30, line: 544, baseType: !2275, size: 64, offset: 5376)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !336, file: !30, line: 545, baseType: !2278, size: 64, offset: 5440)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !336, file: !30, line: 547, baseType: !311, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !336, file: !30, line: 548, baseType: !311, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !336, file: !30, line: 549, baseType: !311, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !336, file: !30, line: 550, baseType: !311, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !115, file: !116, line: 376, baseType: !147, size: 32, offset: 8832)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !115, file: !116, line: 377, baseType: !2286, size: 192, offset: 8896)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !116, line: 191, size: 192, elements: !2287)
!2287 = !{!2288, !2291, !2292}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2286, file: !116, line: 192, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1650, line: 21, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2286, file: !116, line: 194, baseType: !143, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2286, file: !116, line: 195, baseType: !143, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !115, file: !116, line: 378, baseType: !2294, size: 64, offset: 9088)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2296, line: 16, flags: DIFlagFwdDecl)
!2296 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !116, line: 386, baseType: !157, size: 64, offset: 9152)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !115, file: !116, line: 389, baseType: !344, size: 128, offset: 9216)
!2299 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !116, line: 391, baseType: !2300, size: 320, offset: 9344)
!2300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !116, line: 391, size: 320, elements: !2301)
!2301 = !{!2302, !2309}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2300, file: !116, line: 392, baseType: !2303, size: 320)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !116, line: 211, size: 320, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2303, file: !116, line: 212, baseType: !344, size: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2303, file: !116, line: 213, baseType: !129, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2303, file: !116, line: 214, baseType: !129, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2303, file: !116, line: 215, baseType: !123, size: 32, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2300, file: !116, line: 393, baseType: !2310, size: 256)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !116, line: 230, size: 256, elements: !2311)
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2310, file: !116, line: 231, baseType: !602, size: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2310, file: !116, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !112, file: !51, line: 321, baseType: !2315, size: 288, offset: 9664)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !51, line: 29, size: 288, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2315, file: !51, line: 30, baseType: !7, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2315, file: !51, line: 31, baseType: !7, size: 32, offset: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2315, file: !51, line: 32, baseType: !7, size: 32, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2315, file: !51, line: 33, baseType: !7, size: 32, offset: 96)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2315, file: !51, line: 34, baseType: !7, size: 32, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2315, file: !51, line: 35, baseType: !7, size: 32, offset: 160)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2315, file: !51, line: 36, baseType: !7, size: 32, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2315, file: !51, line: 37, baseType: !7, size: 32, offset: 224)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2315, file: !51, line: 38, baseType: !7, size: 32, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !112, file: !51, line: 322, baseType: !2327, size: 1024, offset: 9984)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !51, line: 291, size: 1024, elements: !2328)
!2328 = !{!2329, !2338, !2339, !2340, !2346, !2395}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2327, file: !51, line: 292, baseType: !2330, size: 192)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !51, line: 187, size: 192, elements: !2331)
!2331 = !{!2332, !2333, !2334, !2335, !2336, !2337}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2330, file: !51, line: 188, baseType: !50, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2330, file: !51, line: 189, baseType: !58, size: 32, offset: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2330, file: !51, line: 190, baseType: !63, size: 32, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2330, file: !51, line: 191, baseType: !7, size: 32, offset: 96)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2330, file: !51, line: 192, baseType: !7, size: 32, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2330, file: !51, line: 193, baseType: !7, size: 32, offset: 160)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2327, file: !51, line: 293, baseType: !2330, size: 192, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2327, file: !51, line: 294, baseType: !2330, size: 192, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2327, file: !51, line: 295, baseType: !2341, size: 320, offset: 576)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !51, line: 238, size: 320, elements: !2342)
!2342 = !{!2343, !2344, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2341, file: !51, line: 239, baseType: !2330, size: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2341, file: !51, line: 240, baseType: !7, size: 32, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2341, file: !51, line: 241, baseType: !104, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2327, file: !51, line: 296, baseType: !2347, size: 64, offset: 896)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !51, line: 268, size: 64, elements: !2349)
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2348, file: !51, line: 269, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !51, line: 255, size: 256, elements: !2353)
!2353 = !{!2354, !2359, !2363, !2394}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2352, file: !51, line: 256, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!147, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2352, file: !51, line: 257, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !2358}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2352, file: !51, line: 258, baseType: !2364, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!147, !2358, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !51, line: 112, size: 512, elements: !2369)
!2369 = !{!2370, !2371, !2379, !2380, !2381, !2386, !2387, !2388, !2393}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2368, file: !51, line: 113, baseType: !69, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2368, file: !51, line: 114, baseType: !2372, size: 160, offset: 32)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !51, line: 77, size: 160, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2372, file: !51, line: 78, baseType: !7, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2372, file: !51, line: 79, baseType: !7, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2372, file: !51, line: 80, baseType: !7, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2372, file: !51, line: 81, baseType: !7, size: 32, offset: 96)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2372, file: !51, line: 82, baseType: !7, size: 32, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2368, file: !51, line: 115, baseType: !7, size: 32, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2368, file: !51, line: 116, baseType: !7, size: 32, offset: 224)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2368, file: !51, line: 120, baseType: !2382, size: 64, offset: 256)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2368, file: !51, line: 117, size: 64, elements: !2383)
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2382, file: !51, line: 118, baseType: !1613, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2382, file: !51, line: 119, baseType: !104, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2368, file: !51, line: 121, baseType: !7, size: 32, offset: 320)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2368, file: !51, line: 122, baseType: !7, size: 32, offset: 352)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2368, file: !51, line: 126, baseType: !2389, size: 64, offset: 384)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2368, file: !51, line: 123, size: 64, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2389, file: !51, line: 124, baseType: !1613, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2389, file: !51, line: 125, baseType: !104, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2368, file: !51, line: 127, baseType: !147, size: 32, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2352, file: !51, line: 260, baseType: !2364, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2327, file: !51, line: 297, baseType: !2347, size: 64, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !112, file: !51, line: 323, baseType: !2397, size: 64, offset: 11008)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !51, line: 61, size: 64, elements: !2398)
!2398 = !{!2399, !2400}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2397, file: !51, line: 62, baseType: !7, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2397, file: !51, line: 63, baseType: !7, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !112, file: !51, line: 324, baseType: !2402, size: 64, offset: 11072)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !51, line: 205, size: 64, elements: !2403)
!2403 = !{!2404}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2402, file: !51, line: 206, baseType: !107, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !112, file: !51, line: 325, baseType: !2406, size: 64, offset: 11136)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2408)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !51, line: 225, size: 192, elements: !2409)
!2409 = !{!2410, !2416, !2417}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2408, file: !51, line: 226, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!147, !2358, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2372)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2408, file: !51, line: 227, baseType: !2411, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2408, file: !51, line: 228, baseType: !2418, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!311, !2358, !2414}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !109, file: !74, line: 1098, baseType: !2422, size: 96, offset: 11200)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !74, line: 249, size: 96, elements: !2423)
!2423 = !{!2424, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2422, file: !74, line: 250, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !761)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2422, file: !74, line: 251, baseType: !147, size: 32, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !109, file: !74, line: 1099, baseType: !2428, size: 704, offset: 11328)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !74, line: 230, size: 704, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2434, !2435}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2428, file: !74, line: 232, baseType: !143, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2428, file: !74, line: 233, baseType: !311, size: 8, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2428, file: !74, line: 234, baseType: !2433, size: 256, offset: 128)
!2433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !584)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2428, file: !74, line: 235, baseType: !2433, size: 256, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2428, file: !74, line: 238, baseType: !2436, size: 64, offset: 640)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !2438, line: 167, size: 832, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2437, file: !2438, line: 168, baseType: !147, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2437, file: !2438, line: 169, baseType: !631, size: 16, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2437, file: !2438, line: 170, baseType: !631, size: 16, offset: 48)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2437, file: !2438, line: 171, baseType: !631, size: 16, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2437, file: !2438, line: 172, baseType: !631, size: 16, offset: 80)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2437, file: !2438, line: 173, baseType: !631, size: 16, offset: 96)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2437, file: !2438, line: 174, baseType: !631, size: 16, offset: 112)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2437, file: !2438, line: 175, baseType: !2448, size: 704, offset: 128)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 704, elements: !2449)
!2449 = !{!2450}
!2450 = !DISubrange(count: 88)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !109, file: !74, line: 1100, baseType: !2452, size: 128, offset: 12032)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !74, line: 1036, size: 128, elements: !2453)
!2453 = !{!2454, !2458}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2452, file: !74, line: 1037, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !74, line: 1037, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2452, file: !74, line: 1038, baseType: !104, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !109, file: !74, line: 1101, baseType: !2460, size: 384, offset: 12160)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !74, line: 1021, size: 384, elements: !2461)
!2461 = !{!2462, !2466, !2470, !2474, !2475, !2479}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2460, file: !74, line: 1022, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!147, !108}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2460, file: !74, line: 1023, baseType: !2467, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !108}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2460, file: !74, line: 1024, baseType: !2471, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!147, !108, !210, !128}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2460, file: !74, line: 1025, baseType: !2471, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2460, file: !74, line: 1026, baseType: !2476, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!147, !108, !147}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2460, file: !74, line: 1027, baseType: !2480, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!147, !108, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !74, line: 492, size: 1536, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2484, file: !74, line: 493, baseType: !73, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2484, file: !74, line: 499, baseType: !2488, size: 1472, offset: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !74, line: 494, size: 1472, elements: !2489)
!2489 = !{!2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2488, file: !74, line: 495, baseType: !7, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !74, line: 496, baseType: !2492, size: 1408, offset: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !74, line: 496, size: 1408, elements: !2493)
!2493 = !{!2494}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2492, file: !74, line: 497, baseType: !2495, size: 1408)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !74, line: 436, size: 1408, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2495, file: !74, line: 437, baseType: !129, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2495, file: !74, line: 438, baseType: !123, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2495, file: !74, line: 439, baseType: !129, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2495, file: !74, line: 440, baseType: !129, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2495, file: !74, line: 441, baseType: !123, size: 32, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2495, file: !74, line: 442, baseType: !123, size: 32, offset: 288)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2495, file: !74, line: 443, baseType: !123, size: 32, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2495, file: !74, line: 444, baseType: !123, size: 32, offset: 352)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2495, file: !74, line: 445, baseType: !123, size: 32, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2495, file: !74, line: 446, baseType: !123, size: 32, offset: 416)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2495, file: !74, line: 447, baseType: !123, size: 32, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2495, file: !74, line: 448, baseType: !123, size: 32, offset: 480)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2495, file: !74, line: 449, baseType: !123, size: 32, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2495, file: !74, line: 450, baseType: !123, size: 32, offset: 544)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2495, file: !74, line: 451, baseType: !123, size: 32, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2495, file: !74, line: 452, baseType: !123, size: 32, offset: 608)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2495, file: !74, line: 453, baseType: !123, size: 32, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2495, file: !74, line: 454, baseType: !123, size: 32, offset: 672)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2495, file: !74, line: 455, baseType: !123, size: 32, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2495, file: !74, line: 456, baseType: !123, size: 32, offset: 736)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2495, file: !74, line: 457, baseType: !123, size: 32, offset: 768)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2495, file: !74, line: 458, baseType: !123, size: 32, offset: 800)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2495, file: !74, line: 459, baseType: !123, size: 32, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2495, file: !74, line: 460, baseType: !123, size: 32, offset: 864)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2495, file: !74, line: 461, baseType: !123, size: 32, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2495, file: !74, line: 462, baseType: !123, size: 32, offset: 928)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2495, file: !74, line: 463, baseType: !123, size: 32, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2495, file: !74, line: 464, baseType: !123, size: 32, offset: 992)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2495, file: !74, line: 465, baseType: !123, size: 32, offset: 1024)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2495, file: !74, line: 466, baseType: !123, size: 32, offset: 1056)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2495, file: !74, line: 467, baseType: !123, size: 32, offset: 1088)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2495, file: !74, line: 468, baseType: !129, size: 64, offset: 1152)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2495, file: !74, line: 469, baseType: !123, size: 32, offset: 1216)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2495, file: !74, line: 470, baseType: !123, size: 32, offset: 1248)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2495, file: !74, line: 471, baseType: !123, size: 32, offset: 1280)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2495, file: !74, line: 472, baseType: !123, size: 32, offset: 1312)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2495, file: !74, line: 473, baseType: !123, size: 32, offset: 1344)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2495, file: !74, line: 474, baseType: !123, size: 32, offset: 1376)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !109, file: !74, line: 1102, baseType: !2536, size: 1280, offset: 12544)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !74, line: 989, size: 1280, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2544, !2548, !2552, !2558, !2563, !2567, !2571, !2572, !2573, !2577, !2578, !2582, !2583, !2584}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2536, file: !74, line: 990, baseType: !104, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2536, file: !74, line: 991, baseType: !104, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2536, file: !74, line: 992, baseType: !2541, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !108, !147}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2536, file: !74, line: 993, baseType: !2545, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!254, !108}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2536, file: !74, line: 994, baseType: !2549, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !108, !254}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2536, file: !74, line: 995, baseType: !2553, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !108, !2556, !147}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2536, file: !74, line: 996, baseType: !2559, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !108, !2562, !147}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2536, file: !74, line: 997, baseType: !2564, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !108, !147, !7}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2536, file: !74, line: 998, baseType: !2568, size: 64, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !108, !7, !147, !147}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2536, file: !74, line: 1000, baseType: !2463, size: 64, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2536, file: !74, line: 1001, baseType: !2463, size: 64, offset: 640)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2536, file: !74, line: 1002, baseType: !2574, size: 64, offset: 704)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!147, !108, !210}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2536, file: !74, line: 1003, baseType: !2574, size: 64, offset: 768)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2536, file: !74, line: 1004, baseType: !2579, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!147, !108, !147, !2562}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2536, file: !74, line: 1006, baseType: !2579, size: 64, offset: 896)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2536, file: !74, line: 1008, baseType: !147, size: 32, offset: 960)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2536, file: !74, line: 1009, baseType: !2585, size: 256, offset: 1024)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !74, line: 951, size: 256, elements: !2586)
!2586 = !{!2587, !2588}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2585, file: !74, line: 952, baseType: !602, size: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2585, file: !74, line: 953, baseType: !2589, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2591)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !74, line: 935, size: 256, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2638}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2591, file: !74, line: 936, baseType: !2463, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2591, file: !74, line: 937, baseType: !2467, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2591, file: !74, line: 938, baseType: !2596, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!147, !108, !2599, !311}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !74, line: 860, size: 192, elements: !2602)
!2602 = !{!2603, !2604, !2637}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2601, file: !74, line: 861, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2601, file: !74, line: 862, baseType: !2605, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !74, line: 593, size: 320, elements: !2608)
!2608 = !{!2609, !2610, !2636}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2607, file: !74, line: 594, baseType: !77, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2607, file: !74, line: 600, baseType: !2611, size: 192, offset: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2607, file: !74, line: 595, size: 192, elements: !2612)
!2612 = !{!2613, !2617, !2622, !2632}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2611, file: !74, line: 596, baseType: !2614, size: 8)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !74, line: 519, size: 8, elements: !2615)
!2615 = !{!2616}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2614, file: !74, line: 520, baseType: !254, size: 8)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2611, file: !74, line: 597, baseType: !2618, size: 128)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !74, line: 528, size: 128, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2618, file: !74, line: 529, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2618, file: !74, line: 530, baseType: !2556, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2611, file: !74, line: 598, baseType: !2623, size: 192)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !74, line: 545, size: 192, elements: !2624)
!2624 = !{!2625, !2626, !2631}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2623, file: !74, line: 546, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2623, file: !74, line: 550, baseType: !2627, size: 64, offset: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2623, file: !74, line: 547, size: 64, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2627, file: !74, line: 548, baseType: !104, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2627, file: !74, line: 549, baseType: !1613, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2623, file: !74, line: 551, baseType: !311, size: 8, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2611, file: !74, line: 599, baseType: !2633, size: 32)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !74, line: 558, size: 32, elements: !2634)
!2634 = !{!2635}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2633, file: !74, line: 559, baseType: !7, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2607, file: !74, line: 601, baseType: !7, size: 32, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2601, file: !74, line: 863, baseType: !7, size: 32, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2591, file: !74, line: 941, baseType: !2639, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!147, !108, !147, !2642}
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !109, file: !74, line: 1103, baseType: !7, size: 32, offset: 13824)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !109, file: !74, line: 1106, baseType: !2642, size: 64, offset: 13888)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !109, file: !74, line: 1107, baseType: !2483, size: 64, offset: 13952)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !109, file: !74, line: 1110, baseType: !7, size: 32, offset: 14016)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !109, file: !74, line: 1111, baseType: !7, size: 32, offset: 14048)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !109, file: !74, line: 1112, baseType: !7, size: 32, offset: 14080)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !109, file: !74, line: 1113, baseType: !7, size: 32, offset: 14112)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !109, file: !74, line: 1114, baseType: !2652, size: 64, offset: 14144)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !2654, line: 41, size: 576, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!2655 = !{!2656, !2657, !2659, !2660, !2661, !2663, !2664, !2665, !2666}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2653, file: !2654, line: 42, baseType: !147, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2653, file: !2654, line: 43, baseType: !2658, size: 256, offset: 32)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !761)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2653, file: !2654, line: 44, baseType: !147, size: 32, offset: 288)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !2653, file: !2654, line: 45, baseType: !147, size: 32, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2653, file: !2654, line: 46, baseType: !2662, size: 64, offset: 352)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 64, elements: !761)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2653, file: !2654, line: 47, baseType: !147, size: 32, offset: 416)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !2653, file: !2654, line: 48, baseType: !147, size: 32, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !2653, file: !2654, line: 49, baseType: !147, size: 32, offset: 480)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !2653, file: !2654, line: 50, baseType: !252, size: 64, offset: 512)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !109, file: !74, line: 1115, baseType: !2652, size: 64, offset: 14208)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !109, file: !74, line: 1116, baseType: !2652, size: 64, offset: 14272)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !109, file: !74, line: 1117, baseType: !2562, size: 64, offset: 14336)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !109, file: !74, line: 1120, baseType: !7, size: 32, offset: 14400)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !109, file: !74, line: 1121, baseType: !7, size: 32, offset: 14432)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !109, file: !74, line: 1122, baseType: !7, size: 32, offset: 14464)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !109, file: !74, line: 1123, baseType: !7, size: 32, offset: 14496)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !109, file: !74, line: 1124, baseType: !7, size: 32, offset: 14528)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !109, file: !74, line: 1127, baseType: !2562, size: 64, offset: 14592)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !109, file: !74, line: 1128, baseType: !2562, size: 64, offset: 14656)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !109, file: !74, line: 1132, baseType: !2678, size: 64, offset: 14720)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !109, file: !74, line: 1129, size: 64, elements: !2679)
!2679 = !{!2680, !2681}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2678, file: !74, line: 1130, baseType: !7, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2678, file: !74, line: 1131, baseType: !147, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !109, file: !74, line: 1133, baseType: !105, size: 64, offset: 14784)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !109, file: !74, line: 1136, baseType: !602, size: 192, offset: 14848)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !109, file: !74, line: 1137, baseType: !7, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !109, file: !74, line: 1138, baseType: !147, size: 32, offset: 15072)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !109, file: !74, line: 1139, baseType: !147, size: 32, offset: 15104)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !109, file: !74, line: 1142, baseType: !2688, size: 64, offset: 15168)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !109, file: !74, line: 1143, baseType: !2690, size: 1408, offset: 15232)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !74, line: 346, size: 1408, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2713, !2717, !2721, !2725, !2726, !2730, !2734, !2735, !2736, !2737, !2738}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2690, file: !74, line: 347, baseType: !50, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2690, file: !74, line: 348, baseType: !58, size: 32, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2690, file: !74, line: 349, baseType: !63, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2690, file: !74, line: 350, baseType: !147, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2690, file: !74, line: 351, baseType: !147, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2690, file: !74, line: 352, baseType: !147, size: 32, offset: 160)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2690, file: !74, line: 353, baseType: !147, size: 32, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2690, file: !74, line: 354, baseType: !147, size: 32, offset: 224)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2690, file: !74, line: 355, baseType: !147, size: 32, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2690, file: !74, line: 356, baseType: !147, size: 32, offset: 288)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2690, file: !74, line: 357, baseType: !7, size: 32, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2690, file: !74, line: 358, baseType: !104, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2690, file: !74, line: 359, baseType: !2562, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2690, file: !74, line: 360, baseType: !2562, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2690, file: !74, line: 361, baseType: !2541, size: 64, offset: 576)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2690, file: !74, line: 362, baseType: !2708, size: 64, offset: 640)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!147, !108, !2711, !252}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2690, file: !74, line: 364, baseType: !2714, size: 64, offset: 704)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!147, !108, !252, !252, !252}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2690, file: !74, line: 366, baseType: !2718, size: 64, offset: 768)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!147, !108, !252, !147, !147}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2690, file: !74, line: 368, baseType: !2722, size: 64, offset: 832)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!147, !108, !2711, !147, !147}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2690, file: !74, line: 370, baseType: !2718, size: 64, offset: 896)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2690, file: !74, line: 372, baseType: !2727, size: 64, offset: 960)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!147, !108, !122, !122, !252, !147}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2690, file: !74, line: 374, baseType: !2731, size: 64, offset: 1024)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!147, !108, !122, !122, !2711, !147, !147}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2690, file: !74, line: 377, baseType: !2722, size: 64, offset: 1088)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2690, file: !74, line: 379, baseType: !2476, size: 64, offset: 1152)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2690, file: !74, line: 380, baseType: !2476, size: 64, offset: 1216)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2690, file: !74, line: 381, baseType: !2476, size: 64, offset: 1280)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2690, file: !74, line: 382, baseType: !2476, size: 64, offset: 1344)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !109, file: !74, line: 1144, baseType: !104, size: 64, offset: 16640)
!2740 = !{!0, !2741, !2748, !2753, !2758, !2763, !2768, !2827, !2829, !2834, !2837}
!2741 = !DIGlobalVariableExpression(var: !2742, expr: !DIExpression())
!2742 = distinct !DIGlobalVariable(name: "__exitcall_gpio_nand_driver_exit", scope: !2, file: !3, line: 439, type: !2743, isLocal: true, isDefinition: true)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2744, line: 117, baseType: !2745)
!2744 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null}
!2748 = !DIGlobalVariableExpression(var: !2749, expr: !DIExpression())
!2749 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file177", scope: !2, file: !3, line: 441, type: !2750, isLocal: true, isDefinition: true, align: 8)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 368, elements: !2751)
!2751 = !{!2752}
!2752 = !DISubrange(count: 46)
!2753 = !DIGlobalVariableExpression(var: !2754, expr: !DIExpression())
!2754 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license178", scope: !2, file: !3, line: 441, type: !2755, isLocal: true, isDefinition: true, align: 8)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 200, elements: !2756)
!2756 = !{!2757}
!2757 = !DISubrange(count: 25)
!2758 = !DIGlobalVariableExpression(var: !2759, expr: !DIExpression())
!2759 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author179", scope: !2, file: !3, line: 442, type: !2760, isLocal: true, isDefinition: true, align: 8)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 432, elements: !2761)
!2761 = !{!2762}
!2762 = !DISubrange(count: 54)
!2763 = !DIGlobalVariableExpression(var: !2764, expr: !DIExpression())
!2764 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description180", scope: !2, file: !3, line: 443, type: !2765, isLocal: true, isDefinition: true, align: 8)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 560, elements: !2766)
!2766 = !{!2767}
!2767 = !DISubrange(count: 70)
!2768 = !DIGlobalVariableExpression(var: !2769, expr: !DIExpression())
!2769 = distinct !DIGlobalVariable(name: "gpio_nand_driver", scope: !2, file: !3, line: 429, type: !2770, isLocal: true, isDefinition: true)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2771, line: 200, size: 1600, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2772 = !{!2773, !2814, !2815, !2819, !2823, !2824, !2825, !2826}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2770, file: !2771, line: 201, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!147, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2771, line: 22, size: 6208, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2800, !2808, !2809, !2812}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2778, file: !2771, line: 23, baseType: !143, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2778, file: !2771, line: 24, baseType: !147, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2778, file: !2771, line: 25, baseType: !311, size: 8, offset: 96)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2778, file: !2771, line: 26, baseType: !336, size: 5568, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2778, file: !2771, line: 27, baseType: !129, size: 64, offset: 5696)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2778, file: !2771, line: 28, baseType: !2110, size: 128, offset: 5760)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2778, file: !2771, line: 29, baseType: !123, size: 32, offset: 5888)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2778, file: !2771, line: 30, baseType: !2788, size: 64, offset: 5952)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2790, line: 20, size: 512, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2789, file: !2790, line: 21, baseType: !220, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2789, file: !2790, line: 22, baseType: !220, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2789, file: !2790, line: 23, baseType: !143, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2789, file: !2790, line: 24, baseType: !105, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2789, file: !2790, line: 25, baseType: !105, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2789, file: !2790, line: 26, baseType: !2788, size: 64, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2789, file: !2790, line: 26, baseType: !2788, size: 64, offset: 384)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2789, file: !2790, line: 26, baseType: !2788, size: 64, offset: 448)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2778, file: !2771, line: 32, baseType: !2801, size: 64, offset: 6016)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1895, line: 586, size: 256, elements: !2804)
!2804 = !{!2805, !2807}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2803, file: !1895, line: 587, baseType: !2806, size: 160)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 160, elements: !1414)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2803, file: !1895, line: 588, baseType: !1915, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2778, file: !2771, line: 33, baseType: !398, size: 64, offset: 6080)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2778, file: !2771, line: 36, baseType: !2810, size: 64, offset: 6144)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2771, line: 18, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2778, file: !2771, line: 39, baseType: !2813, offset: 6208)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2117, line: 8, elements: !371)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2770, file: !2771, line: 202, baseType: !2774, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2770, file: !2771, line: 203, baseType: !2816, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !2777}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2770, file: !2771, line: 204, baseType: !2820, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!147, !2777, !1926}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2770, file: !2771, line: 205, baseType: !2774, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2770, file: !2771, line: 206, baseType: !1883, size: 1152, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2770, file: !2771, line: 207, baseType: !2801, size: 64, offset: 1472)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2770, file: !2771, line: 208, baseType: !311, size: 8, offset: 1536)
!2827 = !DIGlobalVariableExpression(var: !2828, expr: !DIExpression())
!2828 = distinct !DIGlobalVariable(name: "gpio_nand_ops", scope: !2, file: !3, line: 228, type: !2590, isLocal: true, isDefinition: true)
!2829 = !DIGlobalVariableExpression(var: !2830, expr: !DIExpression())
!2830 = distinct !DIGlobalVariable(name: "__key", scope: !2831, file: !74, line: 958, type: !1958, isLocal: true, isDefinition: true)
!2831 = distinct !DISubprogram(name: "nand_controller_init", scope: !74, file: !74, line: 956, type: !2832, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2688}
!2834 = !DIGlobalVariableExpression(var: !2835, expr: !DIExpression())
!2835 = distinct !DIGlobalVariable(name: "gpio_nand_of_id_table", scope: !2, file: !3, line: 412, type: !2836, isLocal: true, isDefinition: true)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1893, size: 1600, elements: !809)
!2837 = !DIGlobalVariableExpression(var: !2838, expr: !DIExpression())
!2838 = distinct !DIGlobalVariable(name: "gpio_nand_plat_id_table", scope: !2, file: !3, line: 420, type: !2839, isLocal: true, isDefinition: true)
!2839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2802, size: 512, elements: !1196)
!2840 = !{i32 7, !"Dwarf Version", i32 4}
!2841 = !{i32 2, !"Debug Info Version", i32 3}
!2842 = !{i32 1, !"wchar_size", i32 2}
!2843 = !{i32 1, !"Code Model", i32 2}
!2844 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2845 = distinct !DISubprogram(name: "gpio_nand_driver_init", scope: !3, file: !3, line: 439, type: !2846, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!147}
!2848 = !DILocation(line: 439, column: 1, scope: !2845)
!2849 = distinct !DISubprogram(name: "gpio_nand_driver_exit", scope: !3, file: !3, line: 439, type: !2746, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!2850 = !DILocation(line: 439, column: 1, scope: !2849)
!2851 = distinct !DISubprogram(name: "gpio_nand_probe", scope: !3, file: !3, line: 237, type: !2775, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!2852 = !DILocalVariable(name: "pdev", arg: 1, scope: !2851, file: !3, line: 237, type: !2777)
!2853 = !DILocation(line: 237, column: 52, scope: !2851)
!2854 = !DILocalVariable(name: "pdata", scope: !2851, file: !3, line: 239, type: !2855)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_nand_platdata", file: !2857, line: 7, size: 256, elements: !2858)
!2857 = !DIFile(filename: "./include/linux/mtd/nand-gpio.h", directory: "/home/lizy2001/genbc/linux")
!2858 = !{!2859, !2863, !2877, !2878, !2879}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_parts", scope: !2856, file: !2857, line: 8, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !2855, !214}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !2856, file: !2857, line: 9, baseType: !2864, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_partition", file: !2866, line: 46, size: 384, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/mtd/partitions.h", directory: "/home/lizy2001/genbc/linux")
!2867 = !{!2868, !2869, !2872, !2873, !2874, !2875, !2876}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2865, file: !2866, line: 47, baseType: !143, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2865, file: !2866, line: 48, baseType: !2870, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2865, file: !2866, line: 49, baseType: !128, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2865, file: !2866, line: 50, baseType: !128, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "mask_flags", scope: !2865, file: !2866, line: 51, baseType: !122, size: 32, offset: 256)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "add_flags", scope: !2865, file: !2866, line: 52, baseType: !122, size: 32, offset: 288)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2865, file: !2866, line: 53, baseType: !2119, size: 64, offset: 320)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "num_parts", scope: !2856, file: !2857, line: 10, baseType: !7, size: 32, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2856, file: !2857, line: 11, baseType: !7, size: 32, offset: 160)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2856, file: !2857, line: 12, baseType: !147, size: 32, offset: 192)
!2880 = !DILocation(line: 239, column: 29, scope: !2851)
!2881 = !DILocation(line: 239, column: 55, scope: !2851)
!2882 = !DILocation(line: 239, column: 61, scope: !2851)
!2883 = !DILocation(line: 239, column: 37, scope: !2851)
!2884 = !DILocalVariable(name: "partitions", scope: !2851, file: !3, line: 240, type: !2885)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2887 = !DILocation(line: 240, column: 30, scope: !2851)
!2888 = !DILocalVariable(name: "num_partitions", scope: !2851, file: !3, line: 241, type: !147)
!2889 = !DILocation(line: 241, column: 6, scope: !2851)
!2890 = !DILocalVariable(name: "priv", scope: !2851, file: !3, line: 242, type: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_nand", file: !3, line: 32, size: 17728, elements: !2893)
!2893 = !{!2894, !2895, !2896, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2915, !2916, !2917, !2918, !2922}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2892, file: !3, line: 33, baseType: !2585, size: 256)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nand_chip", scope: !2892, file: !3, line: 34, baseType: !109, size: 16704, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "gpiod_rdy", scope: !2892, file: !3, line: 35, baseType: !2897, size: 64, offset: 16960)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !85, line: 19, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "gpiod_nce", scope: !2892, file: !3, line: 36, baseType: !2897, size: 64, offset: 17024)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "gpiod_nre", scope: !2892, file: !3, line: 37, baseType: !2897, size: 64, offset: 17088)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "gpiod_nwp", scope: !2892, file: !3, line: 38, baseType: !2897, size: 64, offset: 17152)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "gpiod_nwe", scope: !2892, file: !3, line: 39, baseType: !2897, size: 64, offset: 17216)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "gpiod_ale", scope: !2892, file: !3, line: 40, baseType: !2897, size: 64, offset: 17280)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "gpiod_cle", scope: !2892, file: !3, line: 41, baseType: !2897, size: 64, offset: 17344)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "data_gpiods", scope: !2892, file: !3, line: 42, baseType: !2906, size: 64, offset: 17408)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_descs", file: !85, line: 33, size: 128, elements: !2908)
!2908 = !{!2909, !2912, !2913}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2907, file: !85, line: 34, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_array", file: !85, line: 27, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ndescs", scope: !2907, file: !85, line: 35, baseType: !7, size: 32, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2907, file: !85, line: 36, baseType: !2914, offset: 128)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, elements: !1561)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "data_in", scope: !2892, file: !3, line: 43, baseType: !311, size: 8, offset: 17472)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "tRP", scope: !2892, file: !3, line: 44, baseType: !7, size: 32, offset: 17504)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "tWP", scope: !2892, file: !3, line: 45, baseType: !7, size: 32, offset: 17536)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !2892, file: !3, line: 46, baseType: !2919, size: 64, offset: 17600)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!254, !2891}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !2892, file: !3, line: 47, baseType: !2923, size: 64, offset: 17664)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2891, !254}
!2926 = !DILocation(line: 242, column: 20, scope: !2851)
!2927 = !DILocalVariable(name: "this", scope: !2851, file: !3, line: 243, type: !108)
!2928 = !DILocation(line: 243, column: 20, scope: !2851)
!2929 = !DILocalVariable(name: "mtd", scope: !2851, file: !3, line: 244, type: !157)
!2930 = !DILocation(line: 244, column: 19, scope: !2851)
!2931 = !DILocalVariable(name: "probe", scope: !2851, file: !3, line: 245, type: !2932)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!147, !2777, !2891}
!2935 = !DILocation(line: 245, column: 8, scope: !2851)
!2936 = !DILocalVariable(name: "err", scope: !2851, file: !3, line: 246, type: !147)
!2937 = !DILocation(line: 246, column: 6, scope: !2851)
!2938 = !DILocation(line: 248, column: 6, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 248, column: 6)
!2940 = !DILocation(line: 248, column: 6, scope: !2851)
!2941 = !DILocation(line: 249, column: 16, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 248, column: 13)
!2943 = !DILocation(line: 249, column: 23, scope: !2942)
!2944 = !DILocation(line: 249, column: 14, scope: !2942)
!2945 = !DILocation(line: 250, column: 20, scope: !2942)
!2946 = !DILocation(line: 250, column: 27, scope: !2942)
!2947 = !DILocation(line: 250, column: 18, scope: !2942)
!2948 = !DILocation(line: 251, column: 2, scope: !2942)
!2949 = !DILocation(line: 254, column: 23, scope: !2851)
!2950 = !DILocation(line: 254, column: 29, scope: !2851)
!2951 = !DILocation(line: 254, column: 9, scope: !2851)
!2952 = !DILocation(line: 254, column: 7, scope: !2851)
!2953 = !DILocation(line: 256, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 256, column: 6)
!2955 = !DILocation(line: 256, column: 6, scope: !2851)
!2956 = !DILocation(line: 257, column: 3, scope: !2954)
!2957 = !DILocation(line: 259, column: 10, scope: !2851)
!2958 = !DILocation(line: 259, column: 16, scope: !2851)
!2959 = !DILocation(line: 259, column: 7, scope: !2851)
!2960 = !DILocation(line: 261, column: 20, scope: !2851)
!2961 = !DILocation(line: 261, column: 8, scope: !2851)
!2962 = !DILocation(line: 261, column: 6, scope: !2851)
!2963 = !DILocation(line: 262, column: 21, scope: !2851)
!2964 = !DILocation(line: 262, column: 27, scope: !2851)
!2965 = !DILocation(line: 262, column: 2, scope: !2851)
!2966 = !DILocation(line: 262, column: 7, scope: !2851)
!2967 = !DILocation(line: 262, column: 11, scope: !2851)
!2968 = !DILocation(line: 262, column: 18, scope: !2851)
!2969 = !DILocation(line: 264, column: 27, scope: !2851)
!2970 = !DILocation(line: 264, column: 33, scope: !2851)
!2971 = !DILocation(line: 264, column: 2, scope: !2851)
!2972 = !DILocation(line: 265, column: 22, scope: !2851)
!2973 = !DILocation(line: 265, column: 28, scope: !2851)
!2974 = !DILocation(line: 265, column: 34, scope: !2851)
!2975 = !DILocation(line: 265, column: 38, scope: !2851)
!2976 = !DILocation(line: 265, column: 2, scope: !2851)
!2977 = !DILocation(line: 267, column: 45, scope: !2851)
!2978 = !DILocation(line: 267, column: 51, scope: !2851)
!2979 = !DILocation(line: 267, column: 20, scope: !2851)
!2980 = !DILocation(line: 267, column: 2, scope: !2851)
!2981 = !DILocation(line: 267, column: 8, scope: !2851)
!2982 = !DILocation(line: 267, column: 18, scope: !2851)
!2983 = !DILocation(line: 268, column: 13, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 268, column: 6)
!2985 = !DILocation(line: 268, column: 19, scope: !2984)
!2986 = !DILocation(line: 268, column: 6, scope: !2984)
!2987 = !DILocation(line: 268, column: 6, scope: !2851)
!2988 = !DILocation(line: 269, column: 17, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 268, column: 31)
!2990 = !DILocation(line: 269, column: 23, scope: !2989)
!2991 = !DILocation(line: 269, column: 9, scope: !2989)
!2992 = !DILocation(line: 269, column: 7, scope: !2989)
!2993 = !DILocation(line: 270, column: 3, scope: !2989)
!2994 = !DILocation(line: 271, column: 10, scope: !2989)
!2995 = !DILocation(line: 271, column: 3, scope: !2989)
!2996 = !DILocation(line: 274, column: 23, scope: !2851)
!2997 = !DILocation(line: 274, column: 29, scope: !2851)
!2998 = !DILocation(line: 274, column: 2, scope: !2851)
!2999 = !DILocation(line: 277, column: 45, scope: !2851)
!3000 = !DILocation(line: 277, column: 51, scope: !2851)
!3001 = !DILocation(line: 277, column: 20, scope: !2851)
!3002 = !DILocation(line: 277, column: 2, scope: !2851)
!3003 = !DILocation(line: 277, column: 8, scope: !2851)
!3004 = !DILocation(line: 277, column: 18, scope: !2851)
!3005 = !DILocation(line: 279, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 279, column: 6)
!3007 = !DILocation(line: 279, column: 19, scope: !3006)
!3008 = !DILocation(line: 279, column: 6, scope: !3006)
!3009 = !DILocation(line: 279, column: 6, scope: !2851)
!3010 = !DILocation(line: 280, column: 17, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 279, column: 31)
!3012 = !DILocation(line: 280, column: 23, scope: !3011)
!3013 = !DILocation(line: 280, column: 9, scope: !3011)
!3014 = !DILocation(line: 280, column: 7, scope: !3011)
!3015 = !DILocation(line: 281, column: 3, scope: !3011)
!3016 = !DILocation(line: 282, column: 10, scope: !3011)
!3017 = !DILocation(line: 282, column: 3, scope: !3011)
!3018 = !DILocation(line: 285, column: 45, scope: !2851)
!3019 = !DILocation(line: 285, column: 51, scope: !2851)
!3020 = !DILocation(line: 285, column: 20, scope: !2851)
!3021 = !DILocation(line: 285, column: 2, scope: !2851)
!3022 = !DILocation(line: 285, column: 8, scope: !2851)
!3023 = !DILocation(line: 285, column: 18, scope: !2851)
!3024 = !DILocation(line: 287, column: 13, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 287, column: 6)
!3026 = !DILocation(line: 287, column: 19, scope: !3025)
!3027 = !DILocation(line: 287, column: 6, scope: !3025)
!3028 = !DILocation(line: 287, column: 6, scope: !2851)
!3029 = !DILocation(line: 288, column: 17, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 287, column: 31)
!3031 = !DILocation(line: 288, column: 23, scope: !3030)
!3032 = !DILocation(line: 288, column: 9, scope: !3030)
!3033 = !DILocation(line: 288, column: 7, scope: !3030)
!3034 = !DILocation(line: 289, column: 3, scope: !3030)
!3035 = !DILocation(line: 290, column: 10, scope: !3030)
!3036 = !DILocation(line: 290, column: 3, scope: !3030)
!3037 = !DILocation(line: 293, column: 45, scope: !2851)
!3038 = !DILocation(line: 293, column: 51, scope: !2851)
!3039 = !DILocation(line: 293, column: 20, scope: !2851)
!3040 = !DILocation(line: 293, column: 2, scope: !2851)
!3041 = !DILocation(line: 293, column: 8, scope: !2851)
!3042 = !DILocation(line: 293, column: 18, scope: !2851)
!3043 = !DILocation(line: 295, column: 13, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 295, column: 6)
!3045 = !DILocation(line: 295, column: 19, scope: !3044)
!3046 = !DILocation(line: 295, column: 6, scope: !3044)
!3047 = !DILocation(line: 295, column: 6, scope: !2851)
!3048 = !DILocation(line: 296, column: 17, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 295, column: 31)
!3050 = !DILocation(line: 296, column: 23, scope: !3049)
!3051 = !DILocation(line: 296, column: 9, scope: !3049)
!3052 = !DILocation(line: 296, column: 7, scope: !3049)
!3053 = !DILocation(line: 297, column: 3, scope: !3049)
!3054 = !DILocation(line: 298, column: 10, scope: !3049)
!3055 = !DILocation(line: 298, column: 3, scope: !3049)
!3056 = !DILocation(line: 301, column: 45, scope: !2851)
!3057 = !DILocation(line: 301, column: 51, scope: !2851)
!3058 = !DILocation(line: 301, column: 20, scope: !2851)
!3059 = !DILocation(line: 301, column: 2, scope: !2851)
!3060 = !DILocation(line: 301, column: 8, scope: !2851)
!3061 = !DILocation(line: 301, column: 18, scope: !2851)
!3062 = !DILocation(line: 303, column: 13, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 303, column: 6)
!3064 = !DILocation(line: 303, column: 19, scope: !3063)
!3065 = !DILocation(line: 303, column: 6, scope: !3063)
!3066 = !DILocation(line: 303, column: 6, scope: !2851)
!3067 = !DILocation(line: 304, column: 17, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 303, column: 31)
!3069 = !DILocation(line: 304, column: 23, scope: !3068)
!3070 = !DILocation(line: 304, column: 9, scope: !3068)
!3071 = !DILocation(line: 304, column: 7, scope: !3068)
!3072 = !DILocation(line: 305, column: 3, scope: !3068)
!3073 = !DILocation(line: 306, column: 10, scope: !3068)
!3074 = !DILocation(line: 306, column: 3, scope: !3068)
!3075 = !DILocation(line: 309, column: 36, scope: !2851)
!3076 = !DILocation(line: 309, column: 42, scope: !2851)
!3077 = !DILocation(line: 309, column: 20, scope: !2851)
!3078 = !DILocation(line: 309, column: 2, scope: !2851)
!3079 = !DILocation(line: 309, column: 8, scope: !2851)
!3080 = !DILocation(line: 309, column: 18, scope: !2851)
!3081 = !DILocation(line: 310, column: 13, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 310, column: 6)
!3083 = !DILocation(line: 310, column: 19, scope: !3082)
!3084 = !DILocation(line: 310, column: 6, scope: !3082)
!3085 = !DILocation(line: 310, column: 6, scope: !2851)
!3086 = !DILocation(line: 311, column: 17, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 310, column: 31)
!3088 = !DILocation(line: 311, column: 23, scope: !3087)
!3089 = !DILocation(line: 311, column: 9, scope: !3087)
!3090 = !DILocation(line: 311, column: 7, scope: !3087)
!3091 = !DILocation(line: 312, column: 3, scope: !3087)
!3092 = !DILocation(line: 313, column: 10, scope: !3087)
!3093 = !DILocation(line: 313, column: 3, scope: !3087)
!3094 = !DILocation(line: 316, column: 36, scope: !2851)
!3095 = !DILocation(line: 316, column: 42, scope: !2851)
!3096 = !DILocation(line: 316, column: 20, scope: !2851)
!3097 = !DILocation(line: 316, column: 2, scope: !2851)
!3098 = !DILocation(line: 316, column: 8, scope: !2851)
!3099 = !DILocation(line: 316, column: 18, scope: !2851)
!3100 = !DILocation(line: 317, column: 13, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 317, column: 6)
!3102 = !DILocation(line: 317, column: 19, scope: !3101)
!3103 = !DILocation(line: 317, column: 6, scope: !3101)
!3104 = !DILocation(line: 317, column: 6, scope: !2851)
!3105 = !DILocation(line: 318, column: 17, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 317, column: 31)
!3107 = !DILocation(line: 318, column: 23, scope: !3106)
!3108 = !DILocation(line: 318, column: 9, scope: !3106)
!3109 = !DILocation(line: 318, column: 7, scope: !3106)
!3110 = !DILocation(line: 319, column: 3, scope: !3106)
!3111 = !DILocation(line: 320, column: 10, scope: !3106)
!3112 = !DILocation(line: 320, column: 3, scope: !3106)
!3113 = !DILocation(line: 324, column: 53, scope: !2851)
!3114 = !DILocation(line: 324, column: 59, scope: !2851)
!3115 = !DILocation(line: 324, column: 22, scope: !2851)
!3116 = !DILocation(line: 324, column: 2, scope: !2851)
!3117 = !DILocation(line: 324, column: 8, scope: !2851)
!3118 = !DILocation(line: 324, column: 20, scope: !2851)
!3119 = !DILocation(line: 326, column: 13, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 326, column: 6)
!3121 = !DILocation(line: 326, column: 19, scope: !3120)
!3122 = !DILocation(line: 326, column: 6, scope: !3120)
!3123 = !DILocation(line: 326, column: 6, scope: !2851)
!3124 = !DILocation(line: 327, column: 17, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 326, column: 33)
!3126 = !DILocation(line: 327, column: 23, scope: !3125)
!3127 = !DILocation(line: 327, column: 9, scope: !3125)
!3128 = !DILocation(line: 327, column: 7, scope: !3125)
!3129 = !DILocation(line: 328, column: 3, scope: !3125)
!3130 = !DILocation(line: 329, column: 10, scope: !3125)
!3131 = !DILocation(line: 329, column: 3, scope: !3125)
!3132 = !DILocation(line: 331, column: 6, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 331, column: 6)
!3134 = !DILocation(line: 331, column: 12, scope: !3133)
!3135 = !DILocation(line: 331, column: 6, scope: !2851)
!3136 = !DILocation(line: 332, column: 8, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 332, column: 7)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 331, column: 25)
!3139 = !DILocation(line: 332, column: 14, scope: !3137)
!3140 = !DILocation(line: 332, column: 7, scope: !3138)
!3141 = !DILocation(line: 333, column: 4, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 332, column: 25)
!3143 = !DILocation(line: 335, column: 4, scope: !3142)
!3144 = !DILocation(line: 338, column: 3, scope: !3138)
!3145 = !DILocation(line: 338, column: 9, scope: !3138)
!3146 = !DILocation(line: 338, column: 17, scope: !3138)
!3147 = !DILocation(line: 339, column: 3, scope: !3138)
!3148 = !DILocation(line: 339, column: 9, scope: !3138)
!3149 = !DILocation(line: 339, column: 18, scope: !3138)
!3150 = !DILocation(line: 340, column: 3, scope: !3138)
!3151 = !DILocation(line: 340, column: 9, scope: !3138)
!3152 = !DILocation(line: 340, column: 17, scope: !3138)
!3153 = !DILocation(line: 341, column: 2, scope: !3138)
!3154 = !DILocation(line: 343, column: 6, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 343, column: 6)
!3156 = !DILocation(line: 343, column: 12, scope: !3155)
!3157 = !DILocation(line: 343, column: 6, scope: !2851)
!3158 = !DILocation(line: 344, column: 20, scope: !3155)
!3159 = !DILocation(line: 344, column: 26, scope: !3155)
!3160 = !DILocation(line: 344, column: 36, scope: !3155)
!3161 = !DILocation(line: 344, column: 11, scope: !3155)
!3162 = !DILocation(line: 344, column: 9, scope: !3155)
!3163 = !DILocation(line: 344, column: 3, scope: !3155)
!3164 = !DILocation(line: 346, column: 37, scope: !3155)
!3165 = !DILocation(line: 346, column: 43, scope: !3155)
!3166 = !DILocation(line: 346, column: 11, scope: !3155)
!3167 = !DILocation(line: 346, column: 9, scope: !3155)
!3168 = !DILocation(line: 347, column: 6, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 347, column: 6)
!3170 = !DILocation(line: 347, column: 6, scope: !2851)
!3171 = !DILocation(line: 348, column: 9, scope: !3169)
!3172 = !DILocation(line: 348, column: 15, scope: !3169)
!3173 = !DILocation(line: 348, column: 21, scope: !3169)
!3174 = !DILocation(line: 348, column: 7, scope: !3169)
!3175 = !DILocation(line: 348, column: 3, scope: !3169)
!3176 = !DILocation(line: 349, column: 6, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 349, column: 6)
!3178 = !DILocation(line: 349, column: 6, scope: !2851)
!3179 = !DILocation(line: 350, column: 10, scope: !3177)
!3180 = !DILocation(line: 350, column: 3, scope: !3177)
!3181 = !DILocation(line: 352, column: 7, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 352, column: 6)
!3183 = !DILocation(line: 352, column: 13, scope: !3182)
!3184 = !DILocation(line: 352, column: 21, scope: !3182)
!3185 = !DILocation(line: 352, column: 25, scope: !3182)
!3186 = !DILocation(line: 352, column: 31, scope: !3182)
!3187 = !DILocation(line: 352, column: 6, scope: !2851)
!3188 = !DILocation(line: 353, column: 3, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 352, column: 41)
!3190 = !DILocation(line: 354, column: 3, scope: !3189)
!3191 = !DILocation(line: 358, column: 2, scope: !2851)
!3192 = !DILocation(line: 358, column: 8, scope: !2851)
!3193 = !DILocation(line: 358, column: 13, scope: !2851)
!3194 = !DILocation(line: 358, column: 17, scope: !2851)
!3195 = !DILocation(line: 359, column: 24, scope: !2851)
!3196 = !DILocation(line: 359, column: 30, scope: !2851)
!3197 = !DILocation(line: 359, column: 2, scope: !2851)
!3198 = !DILocation(line: 360, column: 22, scope: !2851)
!3199 = !DILocation(line: 360, column: 28, scope: !2851)
!3200 = !DILocation(line: 360, column: 2, scope: !2851)
!3201 = !DILocation(line: 360, column: 8, scope: !2851)
!3202 = !DILocation(line: 360, column: 19, scope: !2851)
!3203 = !DILocation(line: 371, column: 18, scope: !2851)
!3204 = !DILocation(line: 371, column: 24, scope: !2851)
!3205 = !DILocation(line: 371, column: 2, scope: !2851)
!3206 = !DILocation(line: 374, column: 18, scope: !2851)
!3207 = !DILocation(line: 374, column: 8, scope: !2851)
!3208 = !DILocation(line: 374, column: 6, scope: !2851)
!3209 = !DILocation(line: 375, column: 6, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 375, column: 6)
!3211 = !DILocation(line: 375, column: 6, scope: !2851)
!3212 = !DILocation(line: 376, column: 10, scope: !3210)
!3213 = !DILocation(line: 376, column: 3, scope: !3210)
!3214 = !DILocation(line: 379, column: 8, scope: !2851)
!3215 = !DILocation(line: 379, column: 6, scope: !2851)
!3216 = !DILocation(line: 380, column: 6, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 380, column: 6)
!3218 = !DILocation(line: 380, column: 6, scope: !2851)
!3219 = !DILocation(line: 381, column: 3, scope: !3217)
!3220 = !DILocation(line: 383, column: 2, scope: !2851)
!3221 = !DILabel(scope: !2851, name: "err_nand_cleanup", file: !3, line: 385)
!3222 = !DILocation(line: 385, column: 1, scope: !2851)
!3223 = !DILocation(line: 386, column: 15, scope: !2851)
!3224 = !DILocation(line: 386, column: 2, scope: !2851)
!3225 = !DILocation(line: 388, column: 9, scope: !2851)
!3226 = !DILocation(line: 388, column: 2, scope: !2851)
!3227 = !DILocation(line: 389, column: 1, scope: !2851)
!3228 = distinct !DISubprogram(name: "gpio_nand_remove", scope: !3, file: !3, line: 394, type: !2775, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3229 = !DILocalVariable(name: "pdev", arg: 1, scope: !3228, file: !3, line: 394, type: !2777)
!3230 = !DILocation(line: 394, column: 53, scope: !3228)
!3231 = !DILocalVariable(name: "priv", scope: !3228, file: !3, line: 396, type: !2891)
!3232 = !DILocation(line: 396, column: 20, scope: !3228)
!3233 = !DILocation(line: 396, column: 48, scope: !3228)
!3234 = !DILocation(line: 396, column: 27, scope: !3228)
!3235 = !DILocalVariable(name: "mtd", scope: !3228, file: !3, line: 397, type: !157)
!3236 = !DILocation(line: 397, column: 19, scope: !3228)
!3237 = !DILocation(line: 397, column: 38, scope: !3228)
!3238 = !DILocation(line: 397, column: 44, scope: !3228)
!3239 = !DILocation(line: 397, column: 25, scope: !3228)
!3240 = !DILocalVariable(name: "ret", scope: !3228, file: !3, line: 398, type: !147)
!3241 = !DILocation(line: 398, column: 6, scope: !3228)
!3242 = !DILocation(line: 401, column: 18, scope: !3228)
!3243 = !DILocation(line: 401, column: 24, scope: !3228)
!3244 = !DILocation(line: 401, column: 2, scope: !3228)
!3245 = !DILocation(line: 404, column: 30, scope: !3228)
!3246 = !DILocation(line: 404, column: 8, scope: !3228)
!3247 = !DILocation(line: 404, column: 6, scope: !3228)
!3248 = !DILocalVariable(name: "__ret_warn_on", scope: !3249, file: !3, line: 405, type: !147)
!3249 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 405, column: 2)
!3250 = !DILocation(line: 405, column: 2, scope: !3249)
!3251 = !DILocation(line: 405, column: 2, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 405, column: 2)
!3253 = !DILocation(line: 405, column: 2, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 405, column: 2)
!3255 = !DILocation(line: 405, column: 2, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 405, column: 2)
!3257 = !DILocation(line: 405, column: 2, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 405, column: 2)
!3259 = !{i32 -2143169079, i32 -2143169050, i32 -2143169004, i32 -2143168946, i32 -2143168892, i32 -2143168838, i32 -2143168783, i32 -2143168752}
!3260 = !DILocation(line: 405, column: 2, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 405, column: 2)
!3262 = !{i32 -2143168338, i32 -2143168331, i32 -2143168279, i32 -2143168248, i32 -2143168218}
!3263 = !DILocation(line: 405, column: 2, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 405, column: 2)
!3265 = !DILocation(line: 406, column: 27, scope: !3228)
!3266 = !DILocation(line: 406, column: 15, scope: !3228)
!3267 = !DILocation(line: 406, column: 2, scope: !3228)
!3268 = !DILocation(line: 408, column: 2, scope: !3228)
!3269 = distinct !DISubprogram(name: "dev_get_platdata", scope: !30, file: !30, line: 828, type: !3270, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!104, !2156}
!3272 = !DILocalVariable(name: "dev", arg: 1, scope: !3269, file: !30, line: 828, type: !2156)
!3273 = !DILocation(line: 828, column: 59, scope: !3269)
!3274 = !DILocation(line: 830, column: 9, scope: !3269)
!3275 = !DILocation(line: 830, column: 14, scope: !3269)
!3276 = !DILocation(line: 830, column: 2, scope: !3269)
!3277 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !3278, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!104, !1811, !214, !102}
!3280 = !DILocalVariable(name: "dev", arg: 1, scope: !3277, file: !30, line: 215, type: !1811)
!3281 = !DILocation(line: 215, column: 49, scope: !3277)
!3282 = !DILocalVariable(name: "size", arg: 2, scope: !3277, file: !30, line: 215, type: !214)
!3283 = !DILocation(line: 215, column: 61, scope: !3277)
!3284 = !DILocalVariable(name: "gfp", arg: 3, scope: !3277, file: !30, line: 215, type: !102)
!3285 = !DILocation(line: 215, column: 73, scope: !3277)
!3286 = !DILocation(line: 217, column: 22, scope: !3277)
!3287 = !DILocation(line: 217, column: 27, scope: !3277)
!3288 = !DILocation(line: 217, column: 33, scope: !3277)
!3289 = !DILocation(line: 217, column: 37, scope: !3277)
!3290 = !DILocation(line: 217, column: 9, scope: !3277)
!3291 = !DILocation(line: 217, column: 2, scope: !3277)
!3292 = distinct !DISubprogram(name: "nand_to_mtd", scope: !74, file: !74, line: 1152, type: !3293, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!157, !108}
!3295 = !DILocalVariable(name: "chip", arg: 1, scope: !3292, file: !74, line: 1152, type: !108)
!3296 = !DILocation(line: 1152, column: 62, scope: !3292)
!3297 = !DILocation(line: 1154, column: 10, scope: !3292)
!3298 = !DILocation(line: 1154, column: 16, scope: !3292)
!3299 = !DILocation(line: 1154, column: 21, scope: !3292)
!3300 = !DILocation(line: 1154, column: 2, scope: !3292)
!3301 = distinct !DISubprogram(name: "nand_set_controller_data", scope: !74, file: !74, line: 1162, type: !3302, scopeLine: 1163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{null, !108, !104}
!3304 = !DILocalVariable(name: "chip", arg: 1, scope: !3301, file: !74, line: 1162, type: !108)
!3305 = !DILocation(line: 1162, column: 63, scope: !3301)
!3306 = !DILocalVariable(name: "priv", arg: 2, scope: !3301, file: !74, line: 1162, type: !104)
!3307 = !DILocation(line: 1162, column: 75, scope: !3301)
!3308 = !DILocation(line: 1164, column: 15, scope: !3301)
!3309 = !DILocation(line: 1164, column: 2, scope: !3301)
!3310 = !DILocation(line: 1164, column: 8, scope: !3301)
!3311 = !DILocation(line: 1164, column: 13, scope: !3301)
!3312 = !DILocation(line: 1165, column: 1, scope: !3301)
!3313 = distinct !DISubprogram(name: "nand_set_flash_node", scope: !74, file: !74, line: 1178, type: !3314, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !108, !2119}
!3316 = !DILocalVariable(name: "chip", arg: 1, scope: !3313, file: !74, line: 1178, type: !108)
!3317 = !DILocation(line: 1178, column: 58, scope: !3313)
!3318 = !DILocalVariable(name: "np", arg: 2, scope: !3313, file: !74, line: 1179, type: !2119)
!3319 = !DILocation(line: 1179, column: 32, scope: !3313)
!3320 = !DILocation(line: 1181, column: 30, scope: !3313)
!3321 = !DILocation(line: 1181, column: 18, scope: !3313)
!3322 = !DILocation(line: 1181, column: 37, scope: !3313)
!3323 = !DILocation(line: 1181, column: 2, scope: !3313)
!3324 = !DILocation(line: 1182, column: 1, scope: !3313)
!3325 = distinct !DISubprogram(name: "IS_ERR", scope: !3326, file: !3326, line: 34, type: !3327, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3326 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!311, !1613}
!3329 = !DILocalVariable(name: "ptr", arg: 1, scope: !3325, file: !3326, line: 34, type: !1613)
!3330 = !DILocation(line: 34, column: 60, scope: !3325)
!3331 = !DILocation(line: 36, column: 9, scope: !3325)
!3332 = !DILocation(line: 36, column: 2, scope: !3325)
!3333 = distinct !DISubprogram(name: "PTR_ERR", scope: !3326, file: !3326, line: 29, type: !3334, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!106, !1613}
!3336 = !DILocalVariable(name: "ptr", arg: 1, scope: !3333, file: !3326, line: 29, type: !1613)
!3337 = !DILocation(line: 29, column: 61, scope: !3333)
!3338 = !DILocation(line: 31, column: 16, scope: !3333)
!3339 = !DILocation(line: 31, column: 9, scope: !3333)
!3340 = !DILocation(line: 31, column: 2, scope: !3333)
!3341 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2771, file: !2771, line: 236, type: !3342, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{null, !2777, !104}
!3344 = !DILocalVariable(name: "pdev", arg: 1, scope: !3341, file: !2771, line: 236, type: !2777)
!3345 = !DILocation(line: 236, column: 65, scope: !3341)
!3346 = !DILocalVariable(name: "data", arg: 2, scope: !3341, file: !2771, line: 237, type: !104)
!3347 = !DILocation(line: 237, column: 12, scope: !3341)
!3348 = !DILocation(line: 239, column: 19, scope: !3341)
!3349 = !DILocation(line: 239, column: 25, scope: !3341)
!3350 = !DILocation(line: 239, column: 30, scope: !3341)
!3351 = !DILocation(line: 239, column: 2, scope: !3341)
!3352 = !DILocation(line: 240, column: 1, scope: !3341)
!3353 = distinct !DISubprogram(name: "gpio_nand_io_read", scope: !3, file: !3, line: 83, type: !2920, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3354 = !DILocalVariable(name: "priv", arg: 1, scope: !3353, file: !3, line: 83, type: !2891)
!3355 = !DILocation(line: 83, column: 47, scope: !3353)
!3356 = !DILocalVariable(name: "res", scope: !3353, file: !3, line: 85, type: !254)
!3357 = !DILocation(line: 85, column: 5, scope: !3353)
!3358 = !DILocalVariable(name: "data_gpiods", scope: !3353, file: !3, line: 86, type: !2906)
!3359 = !DILocation(line: 86, column: 21, scope: !3353)
!3360 = !DILocation(line: 86, column: 35, scope: !3353)
!3361 = !DILocation(line: 86, column: 41, scope: !3353)
!3362 = !DILocalVariable(name: "values", scope: !3353, file: !3, line: 87, type: !808)
!3363 = !DILocation(line: 87, column: 2, scope: !3353)
!3364 = !DILocation(line: 89, column: 18, scope: !3353)
!3365 = !DILocation(line: 89, column: 24, scope: !3353)
!3366 = !DILocation(line: 89, column: 2, scope: !3353)
!3367 = !DILocation(line: 90, column: 2, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 90, column: 2)
!3369 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 90, column: 2)
!3370 = !DILocation(line: 90, column: 2, scope: !3369)
!3371 = !DILocation(line: 90, column: 2, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 90, column: 2)
!3373 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 90, column: 2)
!3374 = !DILocation(line: 90, column: 2, scope: !3373)
!3375 = !DILocation(line: 90, column: 2, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 90, column: 2)
!3377 = !DILocation(line: 92, column: 28, scope: !3353)
!3378 = !DILocation(line: 92, column: 41, scope: !3353)
!3379 = !DILocation(line: 92, column: 49, scope: !3353)
!3380 = !DILocation(line: 92, column: 62, scope: !3353)
!3381 = !DILocation(line: 93, column: 7, scope: !3353)
!3382 = !DILocation(line: 93, column: 20, scope: !3353)
!3383 = !DILocation(line: 93, column: 26, scope: !3353)
!3384 = !DILocation(line: 92, column: 2, scope: !3353)
!3385 = !DILocation(line: 95, column: 18, scope: !3353)
!3386 = !DILocation(line: 95, column: 24, scope: !3353)
!3387 = !DILocation(line: 95, column: 2, scope: !3353)
!3388 = !DILocation(line: 97, column: 8, scope: !3353)
!3389 = !DILocation(line: 97, column: 6, scope: !3353)
!3390 = !DILocation(line: 98, column: 9, scope: !3353)
!3391 = !DILocation(line: 98, column: 2, scope: !3353)
!3392 = distinct !DISubprogram(name: "gpio_nand_io_write", scope: !3, file: !3, line: 57, type: !2924, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3393 = !DILocalVariable(name: "priv", arg: 1, scope: !3392, file: !3, line: 57, type: !2891)
!3394 = !DILocation(line: 57, column: 50, scope: !3392)
!3395 = !DILocalVariable(name: "byte", arg: 2, scope: !3392, file: !3, line: 57, type: !254)
!3396 = !DILocation(line: 57, column: 59, scope: !3392)
!3397 = !DILocalVariable(name: "data_gpiods", scope: !3392, file: !3, line: 59, type: !2906)
!3398 = !DILocation(line: 59, column: 21, scope: !3392)
!3399 = !DILocation(line: 59, column: 35, scope: !3392)
!3400 = !DILocation(line: 59, column: 41, scope: !3392)
!3401 = !DILocalVariable(name: "values", scope: !3392, file: !3, line: 60, type: !808)
!3402 = !DILocation(line: 60, column: 2, scope: !3392)
!3403 = !DILocation(line: 60, column: 48, scope: !3392)
!3404 = !DILocation(line: 60, column: 50, scope: !3392)
!3405 = !DILocation(line: 62, column: 28, scope: !3392)
!3406 = !DILocation(line: 62, column: 41, scope: !3392)
!3407 = !DILocation(line: 62, column: 49, scope: !3392)
!3408 = !DILocation(line: 62, column: 62, scope: !3392)
!3409 = !DILocation(line: 63, column: 7, scope: !3392)
!3410 = !DILocation(line: 63, column: 20, scope: !3392)
!3411 = !DILocation(line: 63, column: 26, scope: !3392)
!3412 = !DILocation(line: 62, column: 2, scope: !3392)
!3413 = !DILocation(line: 65, column: 25, scope: !3392)
!3414 = !DILocation(line: 65, column: 2, scope: !3392)
!3415 = !DILocation(line: 66, column: 1, scope: !3392)
!3416 = !DILocalVariable(name: "nfc", arg: 1, scope: !2831, file: !74, line: 956, type: !2688)
!3417 = !DILocation(line: 956, column: 65, scope: !2831)
!3418 = !DILocation(line: 958, column: 2, scope: !2831)
!3419 = !DILocation(line: 958, column: 2, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !2831, file: !74, line: 958, column: 2)
!3421 = !DILocation(line: 959, column: 1, scope: !2831)
!3422 = distinct !DISubprogram(name: "nand_scan", scope: !74, file: !74, line: 1371, type: !3423, scopeLine: 1372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!147, !108, !7}
!3425 = !DILocalVariable(name: "chip", arg: 1, scope: !3422, file: !74, line: 1371, type: !108)
!3426 = !DILocation(line: 1371, column: 47, scope: !3422)
!3427 = !DILocalVariable(name: "max_chips", arg: 2, scope: !3422, file: !74, line: 1371, type: !7)
!3428 = !DILocation(line: 1371, column: 66, scope: !3422)
!3429 = !DILocation(line: 1373, column: 28, scope: !3422)
!3430 = !DILocation(line: 1373, column: 34, scope: !3422)
!3431 = !DILocation(line: 1373, column: 9, scope: !3422)
!3432 = !DILocation(line: 1373, column: 2, scope: !3422)
!3433 = distinct !DISubprogram(name: "mtd_set_of_node", scope: !116, file: !116, line: 455, type: !3434, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !157, !2119}
!3436 = !DILocalVariable(name: "mtd", arg: 1, scope: !3433, file: !116, line: 455, type: !157)
!3437 = !DILocation(line: 455, column: 53, scope: !3433)
!3438 = !DILocalVariable(name: "np", arg: 2, scope: !3433, file: !116, line: 456, type: !2119)
!3439 = !DILocation(line: 456, column: 28, scope: !3433)
!3440 = !DILocation(line: 458, column: 21, scope: !3433)
!3441 = !DILocation(line: 458, column: 2, scope: !3433)
!3442 = !DILocation(line: 458, column: 7, scope: !3433)
!3443 = !DILocation(line: 458, column: 11, scope: !3433)
!3444 = !DILocation(line: 458, column: 19, scope: !3433)
!3445 = !DILocation(line: 459, column: 7, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3433, file: !116, line: 459, column: 6)
!3447 = !DILocation(line: 459, column: 12, scope: !3446)
!3448 = !DILocation(line: 459, column: 6, scope: !3433)
!3449 = !DILocation(line: 460, column: 27, scope: !3446)
!3450 = !DILocation(line: 460, column: 41, scope: !3446)
!3451 = !DILocation(line: 460, column: 46, scope: !3446)
!3452 = !DILocation(line: 460, column: 3, scope: !3446)
!3453 = !DILocation(line: 461, column: 1, scope: !3433)
!3454 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3455, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !1811, !104}
!3457 = !DILocalVariable(name: "dev", arg: 1, scope: !3454, file: !30, line: 660, type: !1811)
!3458 = !DILocation(line: 660, column: 51, scope: !3454)
!3459 = !DILocalVariable(name: "data", arg: 2, scope: !3454, file: !30, line: 660, type: !104)
!3460 = !DILocation(line: 660, column: 62, scope: !3454)
!3461 = !DILocation(line: 662, column: 21, scope: !3454)
!3462 = !DILocation(line: 662, column: 2, scope: !3454)
!3463 = !DILocation(line: 662, column: 7, scope: !3454)
!3464 = !DILocation(line: 662, column: 19, scope: !3454)
!3465 = !DILocation(line: 663, column: 1, scope: !3454)
!3466 = distinct !DISubprogram(name: "gpio_nand_write_commit", scope: !3, file: !3, line: 50, type: !3467, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !2891}
!3469 = !DILocalVariable(name: "priv", arg: 1, scope: !3466, file: !3, line: 50, type: !2891)
!3470 = !DILocation(line: 50, column: 54, scope: !3466)
!3471 = !DILocation(line: 52, column: 18, scope: !3466)
!3472 = !DILocation(line: 52, column: 24, scope: !3466)
!3473 = !DILocation(line: 52, column: 2, scope: !3466)
!3474 = !DILocation(line: 53, column: 2, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 53, column: 2)
!3476 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 53, column: 2)
!3477 = !DILocation(line: 53, column: 2, scope: !3476)
!3478 = !DILocation(line: 53, column: 2, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 53, column: 2)
!3480 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 53, column: 2)
!3481 = !DILocation(line: 53, column: 2, scope: !3480)
!3482 = !DILocation(line: 53, column: 2, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 53, column: 2)
!3484 = !DILocation(line: 54, column: 18, scope: !3466)
!3485 = !DILocation(line: 54, column: 24, scope: !3466)
!3486 = !DILocation(line: 54, column: 2, scope: !3466)
!3487 = !DILocation(line: 55, column: 1, scope: !3466)
!3488 = distinct !DISubprogram(name: "gpio_nand_attach_chip", scope: !3, file: !3, line: 218, type: !2464, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3489 = !DILocalVariable(name: "chip", arg: 1, scope: !3488, file: !3, line: 218, type: !108)
!3490 = !DILocation(line: 218, column: 52, scope: !3488)
!3491 = !DILocation(line: 220, column: 2, scope: !3488)
!3492 = !DILocation(line: 220, column: 8, scope: !3488)
!3493 = !DILocation(line: 220, column: 12, scope: !3488)
!3494 = !DILocation(line: 220, column: 24, scope: !3488)
!3495 = !DILocation(line: 222, column: 6, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 222, column: 6)
!3497 = !DILocation(line: 222, column: 12, scope: !3496)
!3498 = !DILocation(line: 222, column: 16, scope: !3496)
!3499 = !DILocation(line: 222, column: 21, scope: !3496)
!3500 = !DILocation(line: 222, column: 6, scope: !3488)
!3501 = !DILocation(line: 223, column: 3, scope: !3496)
!3502 = !DILocation(line: 223, column: 9, scope: !3496)
!3503 = !DILocation(line: 223, column: 13, scope: !3496)
!3504 = !DILocation(line: 223, column: 18, scope: !3496)
!3505 = !DILocation(line: 225, column: 2, scope: !3488)
!3506 = distinct !DISubprogram(name: "gpio_nand_exec_op", scope: !3, file: !3, line: 139, type: !2597, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3507 = !DILocalVariable(name: "this", arg: 1, scope: !3506, file: !3, line: 139, type: !108)
!3508 = !DILocation(line: 139, column: 48, scope: !3506)
!3509 = !DILocalVariable(name: "op", arg: 2, scope: !3506, file: !3, line: 140, type: !2599)
!3510 = !DILocation(line: 140, column: 38, scope: !3506)
!3511 = !DILocalVariable(name: "check_only", arg: 3, scope: !3506, file: !3, line: 140, type: !311)
!3512 = !DILocation(line: 140, column: 47, scope: !3506)
!3513 = !DILocalVariable(name: "priv", scope: !3506, file: !3, line: 142, type: !2891)
!3514 = !DILocation(line: 142, column: 20, scope: !3506)
!3515 = !DILocation(line: 142, column: 52, scope: !3506)
!3516 = !DILocation(line: 142, column: 27, scope: !3506)
!3517 = !DILocalVariable(name: "instr", scope: !3506, file: !3, line: 143, type: !2605)
!3518 = !DILocation(line: 143, column: 30, scope: !3506)
!3519 = !DILocalVariable(name: "ret", scope: !3506, file: !3, line: 144, type: !147)
!3520 = !DILocation(line: 144, column: 6, scope: !3506)
!3521 = !DILocation(line: 146, column: 6, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 146, column: 6)
!3523 = !DILocation(line: 146, column: 6, scope: !3506)
!3524 = !DILocation(line: 147, column: 3, scope: !3522)
!3525 = !DILocation(line: 149, column: 20, scope: !3506)
!3526 = !DILocation(line: 149, column: 2, scope: !3506)
!3527 = !DILocation(line: 151, column: 15, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 151, column: 2)
!3529 = !DILocation(line: 151, column: 19, scope: !3528)
!3530 = !DILocation(line: 151, column: 13, scope: !3528)
!3531 = !DILocation(line: 151, column: 7, scope: !3528)
!3532 = !DILocation(line: 151, column: 27, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 151, column: 2)
!3534 = !DILocation(line: 151, column: 35, scope: !3533)
!3535 = !DILocation(line: 151, column: 39, scope: !3533)
!3536 = !DILocation(line: 151, column: 48, scope: !3533)
!3537 = !DILocation(line: 151, column: 52, scope: !3533)
!3538 = !DILocation(line: 151, column: 46, scope: !3533)
!3539 = !DILocation(line: 151, column: 33, scope: !3533)
!3540 = !DILocation(line: 151, column: 2, scope: !3528)
!3541 = !DILocation(line: 152, column: 11, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 151, column: 70)
!3543 = !DILocation(line: 152, column: 18, scope: !3542)
!3544 = !DILocation(line: 152, column: 3, scope: !3542)
!3545 = !DILocation(line: 154, column: 20, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 152, column: 24)
!3547 = !DILocation(line: 154, column: 26, scope: !3546)
!3548 = !DILocation(line: 154, column: 4, scope: !3546)
!3549 = !DILocation(line: 155, column: 24, scope: !3546)
!3550 = !DILocation(line: 155, column: 31, scope: !3546)
!3551 = !DILocation(line: 155, column: 38, scope: !3546)
!3552 = !DILocation(line: 155, column: 42, scope: !3546)
!3553 = !DILocation(line: 155, column: 46, scope: !3546)
!3554 = !DILocation(line: 155, column: 4, scope: !3546)
!3555 = !DILocation(line: 156, column: 20, scope: !3546)
!3556 = !DILocation(line: 156, column: 26, scope: !3546)
!3557 = !DILocation(line: 156, column: 4, scope: !3546)
!3558 = !DILocation(line: 157, column: 4, scope: !3546)
!3559 = !DILocation(line: 160, column: 20, scope: !3546)
!3560 = !DILocation(line: 160, column: 26, scope: !3546)
!3561 = !DILocation(line: 160, column: 4, scope: !3546)
!3562 = !DILocation(line: 161, column: 24, scope: !3546)
!3563 = !DILocation(line: 161, column: 30, scope: !3546)
!3564 = !DILocation(line: 161, column: 37, scope: !3546)
!3565 = !DILocation(line: 161, column: 41, scope: !3546)
!3566 = !DILocation(line: 161, column: 46, scope: !3546)
!3567 = !DILocation(line: 162, column: 10, scope: !3546)
!3568 = !DILocation(line: 162, column: 17, scope: !3546)
!3569 = !DILocation(line: 162, column: 21, scope: !3546)
!3570 = !DILocation(line: 162, column: 26, scope: !3546)
!3571 = !DILocation(line: 161, column: 4, scope: !3546)
!3572 = !DILocation(line: 163, column: 20, scope: !3546)
!3573 = !DILocation(line: 163, column: 26, scope: !3546)
!3574 = !DILocation(line: 163, column: 4, scope: !3546)
!3575 = !DILocation(line: 164, column: 4, scope: !3546)
!3576 = !DILocation(line: 167, column: 23, scope: !3546)
!3577 = !DILocation(line: 167, column: 29, scope: !3546)
!3578 = !DILocation(line: 167, column: 36, scope: !3546)
!3579 = !DILocation(line: 167, column: 40, scope: !3546)
!3580 = !DILocation(line: 167, column: 45, scope: !3546)
!3581 = !DILocation(line: 167, column: 49, scope: !3546)
!3582 = !DILocation(line: 168, column: 9, scope: !3546)
!3583 = !DILocation(line: 168, column: 16, scope: !3546)
!3584 = !DILocation(line: 168, column: 20, scope: !3546)
!3585 = !DILocation(line: 168, column: 25, scope: !3546)
!3586 = !DILocation(line: 167, column: 4, scope: !3546)
!3587 = !DILocation(line: 169, column: 4, scope: !3546)
!3588 = !DILocation(line: 172, column: 24, scope: !3546)
!3589 = !DILocation(line: 172, column: 30, scope: !3546)
!3590 = !DILocation(line: 172, column: 37, scope: !3546)
!3591 = !DILocation(line: 172, column: 41, scope: !3546)
!3592 = !DILocation(line: 172, column: 46, scope: !3546)
!3593 = !DILocation(line: 172, column: 50, scope: !3546)
!3594 = !DILocation(line: 173, column: 10, scope: !3546)
!3595 = !DILocation(line: 173, column: 17, scope: !3546)
!3596 = !DILocation(line: 173, column: 21, scope: !3546)
!3597 = !DILocation(line: 173, column: 26, scope: !3546)
!3598 = !DILocation(line: 172, column: 4, scope: !3546)
!3599 = !DILocation(line: 174, column: 4, scope: !3546)
!3600 = !DILocation(line: 177, column: 10, scope: !3546)
!3601 = !DILocation(line: 177, column: 16, scope: !3546)
!3602 = !DILocation(line: 178, column: 28, scope: !3546)
!3603 = !DILocation(line: 178, column: 34, scope: !3546)
!3604 = !DILocation(line: 178, column: 40, scope: !3546)
!3605 = !DILocation(line: 179, column: 7, scope: !3546)
!3606 = !DILocation(line: 179, column: 14, scope: !3546)
!3607 = !DILocation(line: 179, column: 18, scope: !3546)
!3608 = !DILocation(line: 179, column: 26, scope: !3546)
!3609 = !DILocation(line: 178, column: 10, scope: !3546)
!3610 = !DILocation(line: 180, column: 28, scope: !3546)
!3611 = !DILocation(line: 181, column: 7, scope: !3546)
!3612 = !DILocation(line: 181, column: 14, scope: !3546)
!3613 = !DILocation(line: 181, column: 18, scope: !3546)
!3614 = !DILocation(line: 181, column: 26, scope: !3546)
!3615 = !DILocation(line: 180, column: 10, scope: !3546)
!3616 = !DILocation(line: 177, column: 8, scope: !3546)
!3617 = !DILocation(line: 182, column: 4, scope: !3546)
!3618 = !DILocation(line: 185, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 185, column: 7)
!3620 = !DILocation(line: 185, column: 7, scope: !3542)
!3621 = !DILocation(line: 186, column: 4, scope: !3619)
!3622 = !DILocation(line: 187, column: 2, scope: !3542)
!3623 = !DILocation(line: 151, column: 66, scope: !3533)
!3624 = !DILocation(line: 151, column: 2, scope: !3533)
!3625 = distinct !{!3625, !3540, !3626}
!3626 = !DILocation(line: 187, column: 2, scope: !3528)
!3627 = !DILocation(line: 189, column: 20, scope: !3506)
!3628 = !DILocation(line: 189, column: 2, scope: !3506)
!3629 = !DILocation(line: 191, column: 9, scope: !3506)
!3630 = !DILocation(line: 191, column: 2, scope: !3506)
!3631 = !DILocation(line: 192, column: 1, scope: !3506)
!3632 = distinct !DISubprogram(name: "gpio_nand_setup_interface", scope: !3, file: !3, line: 194, type: !2640, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3633 = !DILocalVariable(name: "this", arg: 1, scope: !3632, file: !3, line: 194, type: !108)
!3634 = !DILocation(line: 194, column: 56, scope: !3632)
!3635 = !DILocalVariable(name: "csline", arg: 2, scope: !3632, file: !3, line: 194, type: !147)
!3636 = !DILocation(line: 194, column: 66, scope: !3632)
!3637 = !DILocalVariable(name: "cf", arg: 3, scope: !3632, file: !3, line: 195, type: !2642)
!3638 = !DILocation(line: 195, column: 46, scope: !3632)
!3639 = !DILocalVariable(name: "priv", scope: !3632, file: !3, line: 197, type: !2891)
!3640 = !DILocation(line: 197, column: 20, scope: !3632)
!3641 = !DILocation(line: 197, column: 52, scope: !3632)
!3642 = !DILocation(line: 197, column: 27, scope: !3632)
!3643 = !DILocalVariable(name: "sdr", scope: !3632, file: !3, line: 198, type: !3644)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2495)
!3646 = !DILocation(line: 198, column: 33, scope: !3632)
!3647 = !DILocation(line: 198, column: 60, scope: !3632)
!3648 = !DILocation(line: 198, column: 39, scope: !3632)
!3649 = !DILocalVariable(name: "dev", scope: !3632, file: !3, line: 199, type: !1811)
!3650 = !DILocation(line: 199, column: 17, scope: !3632)
!3651 = !DILocation(line: 199, column: 36, scope: !3632)
!3652 = !DILocation(line: 199, column: 24, scope: !3632)
!3653 = !DILocation(line: 199, column: 43, scope: !3632)
!3654 = !DILocation(line: 201, column: 13, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 201, column: 6)
!3656 = !DILocation(line: 201, column: 6, scope: !3655)
!3657 = !DILocation(line: 201, column: 6, scope: !3632)
!3658 = !DILocation(line: 202, column: 18, scope: !3655)
!3659 = !DILocation(line: 202, column: 10, scope: !3655)
!3660 = !DILocation(line: 202, column: 3, scope: !3655)
!3661 = !DILocation(line: 204, column: 6, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 204, column: 6)
!3663 = !DILocation(line: 204, column: 13, scope: !3662)
!3664 = !DILocation(line: 204, column: 6, scope: !3632)
!3665 = !DILocation(line: 205, column: 3, scope: !3662)
!3666 = !DILocation(line: 207, column: 6, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 207, column: 6)
!3668 = !DILocation(line: 207, column: 12, scope: !3667)
!3669 = !DILocation(line: 207, column: 6, scope: !3632)
!3670 = !DILocation(line: 208, column: 15, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 207, column: 23)
!3672 = !DILocation(line: 208, column: 3, scope: !3671)
!3673 = !DILocation(line: 208, column: 9, scope: !3671)
!3674 = !DILocation(line: 208, column: 13, scope: !3671)
!3675 = !DILocation(line: 210, column: 2, scope: !3671)
!3676 = !DILocation(line: 212, column: 14, scope: !3632)
!3677 = !DILocation(line: 212, column: 2, scope: !3632)
!3678 = !DILocation(line: 212, column: 8, scope: !3632)
!3679 = !DILocation(line: 212, column: 12, scope: !3632)
!3680 = !DILocation(line: 215, column: 2, scope: !3632)
!3681 = !DILocation(line: 216, column: 1, scope: !3632)
!3682 = distinct !DISubprogram(name: "nand_get_controller_data", scope: !74, file: !74, line: 1157, type: !3683, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!104, !108}
!3685 = !DILocalVariable(name: "chip", arg: 1, scope: !3682, file: !74, line: 1157, type: !108)
!3686 = !DILocation(line: 1157, column: 64, scope: !3682)
!3687 = !DILocation(line: 1159, column: 9, scope: !3682)
!3688 = !DILocation(line: 1159, column: 15, scope: !3682)
!3689 = !DILocation(line: 1159, column: 2, scope: !3682)
!3690 = distinct !DISubprogram(name: "gpio_nand_ctrl_cs", scope: !3, file: !3, line: 134, type: !3691, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !2891, !311}
!3693 = !DILocalVariable(name: "priv", arg: 1, scope: !3690, file: !3, line: 134, type: !2891)
!3694 = !DILocation(line: 134, column: 49, scope: !3690)
!3695 = !DILocalVariable(name: "assert", arg: 2, scope: !3690, file: !3, line: 134, type: !311)
!3696 = !DILocation(line: 134, column: 60, scope: !3690)
!3697 = !DILocation(line: 136, column: 18, scope: !3690)
!3698 = !DILocation(line: 136, column: 24, scope: !3690)
!3699 = !DILocation(line: 136, column: 35, scope: !3690)
!3700 = !DILocation(line: 136, column: 2, scope: !3690)
!3701 = !DILocation(line: 137, column: 1, scope: !3690)
!3702 = distinct !DISubprogram(name: "gpio_nand_write_buf", scope: !3, file: !3, line: 112, type: !3703, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !2891, !2556, !147}
!3705 = !DILocalVariable(name: "priv", arg: 1, scope: !3702, file: !3, line: 112, type: !2891)
!3706 = !DILocation(line: 112, column: 51, scope: !3702)
!3707 = !DILocalVariable(name: "buf", arg: 2, scope: !3702, file: !3, line: 112, type: !2556)
!3708 = !DILocation(line: 112, column: 67, scope: !3702)
!3709 = !DILocalVariable(name: "len", arg: 3, scope: !3702, file: !3, line: 112, type: !147)
!3710 = !DILocation(line: 112, column: 76, scope: !3702)
!3711 = !DILocalVariable(name: "i", scope: !3702, file: !3, line: 114, type: !147)
!3712 = !DILocation(line: 114, column: 6, scope: !3702)
!3713 = !DILocation(line: 116, column: 6, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3702, file: !3, line: 116, column: 6)
!3715 = !DILocation(line: 116, column: 10, scope: !3714)
!3716 = !DILocation(line: 116, column: 14, scope: !3714)
!3717 = !DILocation(line: 116, column: 17, scope: !3714)
!3718 = !DILocation(line: 116, column: 23, scope: !3714)
!3719 = !DILocation(line: 116, column: 6, scope: !3702)
!3720 = !DILocation(line: 117, column: 24, scope: !3714)
!3721 = !DILocation(line: 117, column: 30, scope: !3714)
!3722 = !DILocation(line: 117, column: 35, scope: !3714)
!3723 = !DILocation(line: 117, column: 3, scope: !3714)
!3724 = !DILocation(line: 119, column: 2, scope: !3702)
!3725 = !DILocation(line: 119, column: 9, scope: !3702)
!3726 = !DILocation(line: 119, column: 13, scope: !3702)
!3727 = !DILocation(line: 119, column: 11, scope: !3702)
!3728 = !DILocation(line: 120, column: 3, scope: !3702)
!3729 = !DILocation(line: 120, column: 9, scope: !3702)
!3730 = !DILocation(line: 120, column: 18, scope: !3702)
!3731 = !DILocation(line: 120, column: 24, scope: !3702)
!3732 = !DILocation(line: 120, column: 29, scope: !3702)
!3733 = distinct !{!3733, !3724, !3734}
!3734 = !DILocation(line: 120, column: 32, scope: !3702)
!3735 = !DILocation(line: 121, column: 1, scope: !3702)
!3736 = distinct !DISubprogram(name: "gpio_nand_read_buf", scope: !3, file: !3, line: 123, type: !3737, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{null, !2891, !2562, !147}
!3739 = !DILocalVariable(name: "priv", arg: 1, scope: !3736, file: !3, line: 123, type: !2891)
!3740 = !DILocation(line: 123, column: 50, scope: !3736)
!3741 = !DILocalVariable(name: "buf", arg: 2, scope: !3736, file: !3, line: 123, type: !2562)
!3742 = !DILocation(line: 123, column: 60, scope: !3736)
!3743 = !DILocalVariable(name: "len", arg: 3, scope: !3736, file: !3, line: 123, type: !147)
!3744 = !DILocation(line: 123, column: 69, scope: !3736)
!3745 = !DILocalVariable(name: "i", scope: !3736, file: !3, line: 125, type: !147)
!3746 = !DILocation(line: 125, column: 6, scope: !3736)
!3747 = !DILocation(line: 127, column: 6, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 127, column: 6)
!3749 = !DILocation(line: 127, column: 12, scope: !3748)
!3750 = !DILocation(line: 127, column: 24, scope: !3748)
!3751 = !DILocation(line: 127, column: 28, scope: !3748)
!3752 = !DILocation(line: 127, column: 34, scope: !3748)
!3753 = !DILocation(line: 127, column: 6, scope: !3736)
!3754 = !DILocation(line: 128, column: 23, scope: !3748)
!3755 = !DILocation(line: 128, column: 3, scope: !3748)
!3756 = !DILocation(line: 130, column: 9, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 130, column: 2)
!3758 = !DILocation(line: 130, column: 7, scope: !3757)
!3759 = !DILocation(line: 130, column: 14, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 130, column: 2)
!3761 = !DILocation(line: 130, column: 18, scope: !3760)
!3762 = !DILocation(line: 130, column: 16, scope: !3760)
!3763 = !DILocation(line: 130, column: 2, scope: !3757)
!3764 = !DILocation(line: 131, column: 12, scope: !3760)
!3765 = !DILocation(line: 131, column: 18, scope: !3760)
!3766 = !DILocation(line: 131, column: 26, scope: !3760)
!3767 = !DILocation(line: 131, column: 3, scope: !3760)
!3768 = !DILocation(line: 131, column: 7, scope: !3760)
!3769 = !DILocation(line: 131, column: 10, scope: !3760)
!3770 = !DILocation(line: 130, column: 24, scope: !3760)
!3771 = !DILocation(line: 130, column: 2, scope: !3760)
!3772 = distinct !{!3772, !3763, !3773}
!3773 = !DILocation(line: 131, column: 30, scope: !3757)
!3774 = !DILocation(line: 132, column: 1, scope: !3736)
!3775 = distinct !DISubprogram(name: "gpio_nand_dir_output", scope: !3, file: !3, line: 68, type: !2924, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3776 = !DILocalVariable(name: "priv", arg: 1, scope: !3775, file: !3, line: 68, type: !2891)
!3777 = !DILocation(line: 68, column: 52, scope: !3775)
!3778 = !DILocalVariable(name: "byte", arg: 2, scope: !3775, file: !3, line: 68, type: !254)
!3779 = !DILocation(line: 68, column: 61, scope: !3775)
!3780 = !DILocalVariable(name: "data_gpiods", scope: !3775, file: !3, line: 70, type: !2906)
!3781 = !DILocation(line: 70, column: 21, scope: !3775)
!3782 = !DILocation(line: 70, column: 35, scope: !3775)
!3783 = !DILocation(line: 70, column: 41, scope: !3775)
!3784 = !DILocalVariable(name: "values", scope: !3775, file: !3, line: 71, type: !808)
!3785 = !DILocation(line: 71, column: 2, scope: !3775)
!3786 = !DILocation(line: 71, column: 48, scope: !3775)
!3787 = !DILocation(line: 71, column: 50, scope: !3775)
!3788 = !DILocalVariable(name: "i", scope: !3775, file: !3, line: 72, type: !147)
!3789 = !DILocation(line: 72, column: 6, scope: !3775)
!3790 = !DILocation(line: 74, column: 9, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 74, column: 2)
!3792 = !DILocation(line: 74, column: 7, scope: !3791)
!3793 = !DILocation(line: 74, column: 14, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 74, column: 2)
!3795 = !DILocation(line: 74, column: 18, scope: !3794)
!3796 = !DILocation(line: 74, column: 31, scope: !3794)
!3797 = !DILocation(line: 74, column: 16, scope: !3794)
!3798 = !DILocation(line: 74, column: 2, scope: !3791)
!3799 = !DILocation(line: 75, column: 30, scope: !3794)
!3800 = !DILocation(line: 75, column: 43, scope: !3794)
!3801 = !DILocation(line: 75, column: 48, scope: !3794)
!3802 = !DILocation(line: 76, column: 18, scope: !3794)
!3803 = !DILocation(line: 76, column: 21, scope: !3794)
!3804 = !DILocation(line: 76, column: 9, scope: !3794)
!3805 = !DILocation(line: 75, column: 3, scope: !3794)
!3806 = !DILocation(line: 74, column: 40, scope: !3794)
!3807 = !DILocation(line: 74, column: 2, scope: !3794)
!3808 = distinct !{!3808, !3798, !3809}
!3809 = !DILocation(line: 76, column: 28, scope: !3791)
!3810 = !DILocation(line: 78, column: 25, scope: !3775)
!3811 = !DILocation(line: 78, column: 2, scope: !3775)
!3812 = !DILocation(line: 80, column: 2, scope: !3775)
!3813 = !DILocation(line: 80, column: 8, scope: !3775)
!3814 = !DILocation(line: 80, column: 16, scope: !3775)
!3815 = !DILocation(line: 81, column: 1, scope: !3775)
!3816 = distinct !DISubprogram(name: "test_bit", scope: !3817, file: !3817, line: 132, type: !3818, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3817 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!311, !106, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3822)
!3822 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!3823 = !DILocalVariable(name: "nr", arg: 1, scope: !3824, file: !3825, line: 210, type: !106)
!3824 = distinct !DISubprogram(name: "variable_test_bit", scope: !3825, file: !3825, line: 210, type: !3818, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3825 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3826 = !DILocation(line: 210, column: 52, scope: !3824, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 135, column: 9, scope: !3816)
!3828 = !DILocalVariable(name: "addr", arg: 2, scope: !3824, file: !3825, line: 210, type: !3820)
!3829 = !DILocation(line: 210, column: 86, scope: !3824, inlinedAt: !3827)
!3830 = !DILocalVariable(name: "oldbit", scope: !3824, file: !3825, line: 212, type: !311)
!3831 = !DILocation(line: 212, column: 7, scope: !3824, inlinedAt: !3827)
!3832 = !DILocalVariable(name: "nr", arg: 1, scope: !3833, file: !3825, line: 204, type: !106)
!3833 = distinct !DISubprogram(name: "constant_test_bit", scope: !3825, file: !3825, line: 204, type: !3818, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3834 = !DILocation(line: 204, column: 52, scope: !3833, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 135, column: 9, scope: !3816)
!3836 = !DILocalVariable(name: "addr", arg: 2, scope: !3833, file: !3825, line: 204, type: !3820)
!3837 = !DILocation(line: 204, column: 86, scope: !3833, inlinedAt: !3835)
!3838 = !DILocalVariable(name: "v", arg: 1, scope: !3839, file: !3840, line: 69, type: !3843)
!3839 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3840, file: !3840, line: 69, type: !3841, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3840 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !3843, !214}
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3845)
!3845 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3846 = !DILocation(line: 69, column: 73, scope: !3839, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 134, column: 2, scope: !3816)
!3848 = !DILocalVariable(name: "size", arg: 2, scope: !3839, file: !3840, line: 69, type: !214)
!3849 = !DILocation(line: 69, column: 83, scope: !3839, inlinedAt: !3847)
!3850 = !DILocalVariable(name: "nr", arg: 1, scope: !3816, file: !3817, line: 132, type: !106)
!3851 = !DILocation(line: 132, column: 34, scope: !3816)
!3852 = !DILocalVariable(name: "addr", arg: 2, scope: !3816, file: !3817, line: 132, type: !3820)
!3853 = !DILocation(line: 132, column: 68, scope: !3816)
!3854 = !DILocation(line: 134, column: 25, scope: !3816)
!3855 = !DILocation(line: 134, column: 32, scope: !3816)
!3856 = !DILocation(line: 134, column: 30, scope: !3816)
!3857 = !DILocation(line: 71, column: 19, scope: !3839, inlinedAt: !3847)
!3858 = !DILocation(line: 71, column: 22, scope: !3839, inlinedAt: !3847)
!3859 = !DILocation(line: 71, column: 2, scope: !3839, inlinedAt: !3847)
!3860 = !DILocation(line: 72, column: 2, scope: !3839, inlinedAt: !3847)
!3861 = !DILocation(line: 135, column: 9, scope: !3816)
!3862 = !DILocation(line: 206, column: 19, scope: !3833, inlinedAt: !3835)
!3863 = !DILocation(line: 206, column: 22, scope: !3833, inlinedAt: !3835)
!3864 = !DILocation(line: 206, column: 15, scope: !3833, inlinedAt: !3835)
!3865 = !DILocation(line: 207, column: 4, scope: !3833, inlinedAt: !3835)
!3866 = !DILocation(line: 207, column: 9, scope: !3833, inlinedAt: !3835)
!3867 = !DILocation(line: 207, column: 12, scope: !3833, inlinedAt: !3835)
!3868 = !DILocation(line: 206, column: 44, scope: !3833, inlinedAt: !3835)
!3869 = !DILocation(line: 207, column: 37, scope: !3833, inlinedAt: !3835)
!3870 = !DILocation(line: 217, column: 33, scope: !3824, inlinedAt: !3827)
!3871 = !DILocation(line: 217, column: 46, scope: !3824, inlinedAt: !3827)
!3872 = !DILocation(line: 214, column: 2, scope: !3824, inlinedAt: !3827)
!3873 = !{i32 -2147131685, i32 -2147131625}
!3874 = !DILocation(line: 219, column: 9, scope: !3824, inlinedAt: !3827)
!3875 = !DILocation(line: 135, column: 2, scope: !3816)
!3876 = distinct !DISubprogram(name: "kasan_check_read", scope: !3877, file: !3877, line: 34, type: !3878, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3877 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!311, !3843, !7}
!3880 = !DILocalVariable(name: "p", arg: 1, scope: !3876, file: !3877, line: 34, type: !3843)
!3881 = !DILocation(line: 34, column: 58, scope: !3876)
!3882 = !DILocalVariable(name: "size", arg: 2, scope: !3876, file: !3877, line: 34, type: !7)
!3883 = !DILocation(line: 34, column: 74, scope: !3876)
!3884 = !DILocation(line: 36, column: 2, scope: !3876)
!3885 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3886, file: !3886, line: 178, type: !3887, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3886 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3843, !214, !147}
!3889 = !DILocalVariable(name: "ptr", arg: 1, scope: !3885, file: !3886, line: 178, type: !3843)
!3890 = !DILocation(line: 178, column: 60, scope: !3885)
!3891 = !DILocalVariable(name: "size", arg: 2, scope: !3885, file: !3886, line: 178, type: !214)
!3892 = !DILocation(line: 178, column: 72, scope: !3885)
!3893 = !DILocalVariable(name: "type", arg: 3, scope: !3885, file: !3886, line: 179, type: !147)
!3894 = !DILocation(line: 179, column: 15, scope: !3885)
!3895 = !DILocation(line: 179, column: 23, scope: !3885)
!3896 = distinct !DISubprogram(name: "gpio_nand_dir_input", scope: !3, file: !3, line: 101, type: !3467, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3897 = !DILocalVariable(name: "priv", arg: 1, scope: !3896, file: !3, line: 101, type: !2891)
!3898 = !DILocation(line: 101, column: 51, scope: !3896)
!3899 = !DILocalVariable(name: "data_gpiods", scope: !3896, file: !3, line: 103, type: !2906)
!3900 = !DILocation(line: 103, column: 21, scope: !3896)
!3901 = !DILocation(line: 103, column: 35, scope: !3896)
!3902 = !DILocation(line: 103, column: 41, scope: !3896)
!3903 = !DILocalVariable(name: "i", scope: !3896, file: !3, line: 104, type: !147)
!3904 = !DILocation(line: 104, column: 6, scope: !3896)
!3905 = !DILocation(line: 106, column: 9, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 106, column: 2)
!3907 = !DILocation(line: 106, column: 7, scope: !3906)
!3908 = !DILocation(line: 106, column: 14, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 106, column: 2)
!3910 = !DILocation(line: 106, column: 18, scope: !3909)
!3911 = !DILocation(line: 106, column: 31, scope: !3909)
!3912 = !DILocation(line: 106, column: 16, scope: !3909)
!3913 = !DILocation(line: 106, column: 2, scope: !3906)
!3914 = !DILocation(line: 107, column: 25, scope: !3909)
!3915 = !DILocation(line: 107, column: 38, scope: !3909)
!3916 = !DILocation(line: 107, column: 43, scope: !3909)
!3917 = !DILocation(line: 107, column: 3, scope: !3909)
!3918 = !DILocation(line: 106, column: 40, scope: !3909)
!3919 = !DILocation(line: 106, column: 2, scope: !3909)
!3920 = distinct !{!3920, !3913, !3921}
!3921 = !DILocation(line: 107, column: 45, scope: !3906)
!3922 = !DILocation(line: 109, column: 2, scope: !3896)
!3923 = !DILocation(line: 109, column: 8, scope: !3896)
!3924 = !DILocation(line: 109, column: 16, scope: !3896)
!3925 = !DILocation(line: 110, column: 1, scope: !3896)
!3926 = distinct !DISubprogram(name: "nand_get_sdr_timings", scope: !74, file: !74, line: 507, type: !3927, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!3644, !2642}
!3929 = !DILocalVariable(name: "conf", arg: 1, scope: !3926, file: !74, line: 507, type: !2642)
!3930 = !DILocation(line: 507, column: 58, scope: !3926)
!3931 = !DILocation(line: 509, column: 6, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3926, file: !74, line: 509, column: 6)
!3933 = !DILocation(line: 509, column: 12, scope: !3932)
!3934 = !DILocation(line: 509, column: 17, scope: !3932)
!3935 = !DILocation(line: 509, column: 6, scope: !3926)
!3936 = !DILocation(line: 510, column: 10, scope: !3932)
!3937 = !DILocation(line: 510, column: 3, scope: !3932)
!3938 = !DILocation(line: 512, column: 10, scope: !3926)
!3939 = !DILocation(line: 512, column: 16, scope: !3926)
!3940 = !DILocation(line: 512, column: 24, scope: !3926)
!3941 = !DILocation(line: 512, column: 2, scope: !3926)
!3942 = !DILocation(line: 513, column: 1, scope: !3926)
!3943 = distinct !DISubprogram(name: "ERR_PTR", scope: !3326, file: !3326, line: 24, type: !3944, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!104, !106}
!3946 = !DILocalVariable(name: "error", arg: 1, scope: !3943, file: !3326, line: 24, type: !106)
!3947 = !DILocation(line: 24, column: 48, scope: !3943)
!3948 = !DILocation(line: 26, column: 18, scope: !3943)
!3949 = !DILocation(line: 26, column: 9, scope: !3943)
!3950 = !DILocation(line: 26, column: 2, scope: !3943)
!3951 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2771, file: !2771, line: 231, type: !3952, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!104, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!3956 = !DILocalVariable(name: "pdev", arg: 1, scope: !3951, file: !2771, line: 231, type: !3954)
!3957 = !DILocation(line: 231, column: 72, scope: !3951)
!3958 = !DILocation(line: 233, column: 26, scope: !3951)
!3959 = !DILocation(line: 233, column: 32, scope: !3951)
!3960 = !DILocation(line: 233, column: 9, scope: !3951)
!3961 = !DILocation(line: 233, column: 2, scope: !3951)
!3962 = distinct !DISubprogram(name: "mtd_to_nand", scope: !74, file: !74, line: 1147, type: !3963, scopeLine: 1148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!108, !157}
!3965 = !DILocalVariable(name: "mtd", arg: 1, scope: !3962, file: !74, line: 1147, type: !157)
!3966 = !DILocation(line: 1147, column: 62, scope: !3962)
!3967 = !DILocalVariable(name: "__mptr", scope: !3968, file: !74, line: 1149, type: !104)
!3968 = distinct !DILexicalBlock(scope: !3962, file: !74, line: 1149, column: 9)
!3969 = !DILocation(line: 1149, column: 9, scope: !3968)
!3970 = !DILocation(line: 1149, column: 9, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3968, file: !74, line: 1149, column: 9)
!3972 = !DILocation(line: 1149, column: 2, scope: !3962)
!3973 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3270, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !371)
!3974 = !DILocalVariable(name: "dev", arg: 1, scope: !3973, file: !30, line: 655, type: !2156)
!3975 = !DILocation(line: 655, column: 58, scope: !3973)
!3976 = !DILocation(line: 657, column: 9, scope: !3973)
!3977 = !DILocation(line: 657, column: 14, scope: !3973)
!3978 = !DILocation(line: 657, column: 2, scope: !3973)
